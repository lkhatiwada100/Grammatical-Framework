module MMacros where

import Operations
import Zipper

import Grammar
import PrGrammar
import Ident
import Refresh
import Values
----import GrammarST
import Macros

import Monad

-- some more abstractions on grammars, esp. for Edit

nodeTree (Tr (n,_)) = n
argsTree (Tr (_,ts)) = ts

isFocusNode (N (_,_,_,_,b)) = b
bindsNode   (N (b,_,_,_,_)) = b
atomNode    (N (_,a,_,_,_)) = a
valNode     (N (_,_,v,_,_)) = v
constrsNode (N (_,_,_,(c,_),_)) = c
metaSubstsNode (N (_,_,_,(_,m),_)) = m

atomTree = atomNode . nodeTree 
valTree  = valNode  . nodeTree

mkNode binds atom vtyp cs = N (binds,atom,vtyp,cs,False)

type Var = Ident
type Meta = MetaSymb

metasTree :: Tree ->  [Meta]
metasTree = concatMap metasNode . scanTree where
  metasNode n = [m | AtM m <- [atomNode n]] ++ map fst (metaSubstsNode n)

varsTree :: Tree ->  [(Var,Val)]
varsTree t = [(x,v) | N (_,AtV x,v,_,_) <- scanTree t]

constrsTree :: Tree -> Constraints
constrsTree = constrsNode . nodeTree

allConstrsTree :: Tree -> Constraints
allConstrsTree = concatMap constrsNode . scanTree

changeConstrs :: (Constraints -> Constraints) -> TrNode -> TrNode
changeConstrs f (N (b,a,v,(c,m),x)) = N (b,a,v,(f c, m),x)

changeMetaSubst :: (MetaSubst -> MetaSubst) -> TrNode -> TrNode
changeMetaSubst f (N (b,a,v,(c,m),x)) = N (b,a,v,(c, f m),x)

changeAtom :: (Atom -> Atom) -> TrNode -> TrNode
changeAtom f (N (b,a,v,(c,m),x)) = N (b,f a,v,(c, m),x)

------ on the way to Edit

uTree :: Tree
uTree = Tr (uNode, []) -- unknown tree

uNode :: TrNode
uNode = mkNode [] uAtom uVal ([],[])


uAtom :: Atom
uAtom = AtM meta0

mAtom :: Atom
mAtom = AtM meta0

uVal :: Val
uVal = vClos uExp

vClos :: Exp -> Val
vClos = VClos []

uExp :: Exp
uExp = Meta meta0

mExp :: Exp
mExp = Meta meta0

mExp0 = mExp

meta2exp :: MetaSymb -> Exp
meta2exp = Meta

atomC = AtC

funAtom :: Atom -> Err Fun
funAtom a = case a of
  AtC f -> return f
  _ -> prtBad "not function head" a

uBoundVar :: Ident
uBoundVar = zIdent "#h" -- used for suppressed bindings

atomIsMeta :: Atom -> Bool
atomIsMeta atom = case atom of
  AtM _ -> True
  _   -> False

getMetaAtom a = case a of
  AtM m -> return m
  _ -> Bad "the active node is not meta"

cat2val :: Context -> Cat -> Val
cat2val cont cat = vClos $ mkApp (qq cat) [mkMeta i | i <- [1..length cont]]

val2cat :: Val -> Err Cat
val2cat v = val2exp v >>= valCat

substTerm  :: [Ident] -> Substitution -> Term -> Term
substTerm ss g c = case c of
  Vr x        -> maybe c id $ lookup x g
  App f a     -> App (substTerm ss g f) (substTerm ss g a)
  Abs x b     -> let y = mkFreshVarX ss x in 
                   Abs y (substTerm (y:ss) ((x, Vr y):g) b)
  Prod x a b  -> let y = mkFreshVarX ss x in 
                   Prod y (substTerm ss g a) (substTerm (y:ss) ((x,Vr y):g) b)
  _           -> c

metaSubstExp :: MetaSubst -> [(Meta,Exp)]
metaSubstExp msubst = [(m, errVal (meta2exp m) (val2expSafe v)) | (m,v) <- msubst]

-- belong here rather than to computation

substitute :: [Var] -> Substitution -> Exp -> Err Exp
substitute v s = return . substTerm v s

alphaConv :: [Var] -> (Var,Var) -> Exp -> Err Exp ---
alphaConv oldvars (x,x') = substitute (x:x':oldvars) [(x,Vr x')]

alphaFresh :: [Var] -> Exp -> Err Exp
alphaFresh vs = refreshTermN $ maxVarIndex vs

alphaFreshAll :: [Var] -> [Exp] -> Err [Exp]
alphaFreshAll vs = mapM $ alphaFresh vs -- done in a state monad


val2exp = val2expP False     -- for display
val2expSafe = val2expP True  -- for type checking

val2expP :: Bool -> Val -> Err Exp
val2expP safe v = case v of

  VClos g@(_:_) e@(Meta _) -> if safe 
                              then prtBad "unsafe value substitution" v
                              else substVal g e
  VClos g e -> substVal g e
  VApp f c  -> liftM2 App (val2expP safe f) (val2expP safe c)
  VCn c     -> return $ qq c
  VGen i x  -> if safe 
               then prtBad "unsafe val2exp" v
               else return $ vr $ x  --- in editing, no alpha conversions presentv
 where 
   substVal g e = mapPairsM (val2expP safe) g >>= return . (\s -> substTerm [] s e)

isConstVal :: Val -> Bool
isConstVal v = case v of
  VApp f c   -> isConstVal f && isConstVal c
  VCn _      -> True
  VClos [] e -> null $ freeVarsExp e  
  _          -> False --- could be more liberal

mkProdVal :: Binds -> Val -> Err Val ---
mkProdVal bs v = do 
  bs' <- mapPairsM val2exp bs
  v'  <- val2exp v
  return $ vClos $ foldr (uncurry Prod) v' bs'

freeVarsExp :: Exp -> [Ident]
freeVarsExp e = case e of
  Vr x -> [x]
  App f c -> freeVarsExp f ++ freeVarsExp c
  Abs x b -> filter (/=x) (freeVarsExp b)
  Prod x a b -> freeVarsExp a ++ filter (/=x) (freeVarsExp b)
  _ -> [] --- thus applies to abstract syntax only

ident2string = prIdent

tree :: (TrNode,[Tree]) -> Tree
tree = Tr

eqCat :: Cat -> Cat -> Bool
eqCat = (==)

addBinds :: Binds -> Tree -> Tree
addBinds b (Tr (N (b0,at,t,c,x),ts)) = Tr (N (b ++ b0,at,t,c,x),ts)

bodyTree :: Tree -> Tree
bodyTree (Tr (N (_,a,t,c,x),ts)) = Tr (N ([],a,t,c,x),ts)

refreshMetas :: [Meta] -> Exp -> Exp
refreshMetas metas = fst . rms minMeta where
  rms meta trm = case trm of
    Meta m  -> (Meta meta, nextMeta meta)
    App f a -> let (f',msf) = rms meta f 
                   (a',msa) = rms msf a
               in (App f' a', msa)
    Prod x a b -> 
               let (a',msa) = rms meta a 
                   (b',msb) = rms msa b
               in (Prod x a' b', msb)
    Abs x b -> let (b',msb) = rms meta b in (Abs x b', msb)
    _       -> (trm,meta)
  minMeta = int2meta $ 
              if null metas then 0 else (maximum (map metaSymbInt metas) + 1)

ref2exp :: [Var] -> Type -> Ref -> Err Exp
ref2exp bounds typ ref = do
  cont <- contextOfType typ
  xx0  <- mapM (typeSkeleton . snd) cont
  let (xxs,cs) = unzip [(length hs, c) | (hs,c) <- xx0]
      args     = [mkAbs xs mExp | i <- xxs, let xs = mkFreshVars i bounds]
  return $ mkApp ref args
  -- no refreshment of metas
  
type Ref = Exp -- invariant: only Con or Var

fun2wrap :: [Var] -> ((Fun,Int),Type) -> Exp -> Err Exp
fun2wrap oldvars ((fun,i),typ) exp = do
  cont <- contextOfType typ
  args <- mapM mkArg (zip [0..] (map snd cont))
  return $ mkApp (qq fun) args
 where
  mkArg (n,c) = do
    cont <- contextOfType c
    let vars = mkFreshVars (length cont) oldvars
    return $ mkAbs vars $ if n==i then exp else mExp

-- weak heuristics: sameness of value category
compatType :: Val -> Type -> Bool
compatType v t = errVal True $ do
  cat1 <- val2cat v
  cat2 <- valCat t
  return $ cat1 == cat2

---

mkJustProd cont typ = mkProd (cont,typ,[])

int2var :: Int -> Ident
int2var = zIdent . ('$':) . show

meta0 :: Meta
meta0 = int2meta 0

termMeta0 :: Term
termMeta0 = Meta meta0

identVar (Vr x) = return x
identVar _ = Bad "not a variable"


-- light-weight rename for user interaction; also change names of internal vars

qualifTerm :: Ident -> Term -> Term
qualifTerm m  = qualif [] where
  qualif xs t = case t of
    Abs x b -> let x' = chV x in Abs x' $ qualif (x':xs) b
    Prod x a b -> Prod x (qualif xs a) $ qualif (x:xs) b
    Vr x -> let x' = chV x in if (elem x' xs) then (Vr x') else (Q m x) 
    Cn c  -> Q m c
    Con c -> QC m c
    _ -> composSafeOp (qualif xs) t
  chV x = string2var $ prIdent x
    
string2var :: String -> Ident
string2var s = case s of
  c:'_':i -> identV (readIntArg i,[c]) ---
  _ -> zIdent s
