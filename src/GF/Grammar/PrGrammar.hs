module PrGrammar where

import Operations
import Zipper
import Grammar
import Modules
import qualified PrintGF as P
import qualified PrintGFC as C
import qualified AbsGFC as A
import Values
import GrammarToSource

import Option
import Ident
import Str

import List (intersperse)

-- AR 7/12/1999 - 1/4/2000 - 10/5/2003

-- printing and prettyprinting class

class Print a where
  prt  :: a -> String
  prt2 :: a -> String   -- printing with parentheses, if needed
  prpr :: a -> [String] -- pretty printing
  prt_ :: a -> String   -- printing without ident qualifications
  prt2 = prt
  prt_ = prt
  prpr = return . prt

-- to show terms etc in error messages
prtBad :: Print a => String -> a -> Err b
prtBad s a = Bad (s +++ prt a)

prGrammar = P.printTree . trGrammar
prModule  = P.printTree . trModule

instance Print Term where
  prt = P.printTree . trt
  prt_ = prExp

instance Print Ident where
  prt = P.printTree . tri

instance Print Patt where
  prt = P.printTree . trp

instance Print Label where
  prt = P.printTree . trLabel

instance Print MetaSymb where
  prt (MetaSymb i) = "?" ++ show i

prParam :: Param -> String
prParam (c,co) = prt c +++ prContext co

prContext :: Context -> String
prContext co = unwords $ map prParenth [prt x +++ ":" +++ prt t | (x,t) <- co]

-- some GFC notions

instance Print A.Exp where prt = C.printTree
instance Print A.Term where prt = C.printTree
instance Print A.Case where prt = C.printTree
instance Print A.Atom where prt = C.printTree
instance Print A.CType where prt = C.printTree
instance Print A.Label where prt = C.printTree
instance Print A.Module where prt = C.printTree
instance Print A.Sort where prt = C.printTree

instance Print A.Patt where 
  prt = C.printTree
  prt_ = prPatt

instance Print A.CIdent where 
  prt = C.printTree
  prt_ (A.CIQ _ c) = prt c

-- printing values and trees in editing

instance Print a => Print (Tr a) where
  prt (Tr (n, trees)) = prt n +++ unwords (map prt2 trees)
  prt2 t@(Tr (_,args)) = if null args then prt t else prParenth (prt t)

-- we cannot define the method prt_ in this way 
prt_Tree :: Tree -> String
prt_Tree = prt_ . tree2exp

instance Print TrNode where
  prt (N (bi,at,vt,(cs,ms),_)) = 
    prBinds bi ++ 
    prt at +++ ":" +++ prt vt 
    +++ prConstraints cs +++ prMetaSubst ms

prMarkedTree :: Tr (TrNode,Bool) -> [String]
prMarkedTree = prf 1 where
  prf ind t@(Tr (node, trees)) = 
    prNode ind node : concatMap (prf (ind + 2)) trees
  prNode ind node = case node of
    (n, False) -> indent ind (prt n)
    (n, _)     -> '*' : indent (ind - 1) (prt n)

prTree :: Tree -> [String]
prTree = prMarkedTree . mapTr (\n -> (n,False))

-- a pretty-printer for parsable output
tree2string = unlines . prprTree

prprTree :: Tree -> [String]
prprTree = prf False where
  prf par t@(Tr (node, trees)) = 
    parIf par (prn node : concat [prf (ifPar t) t | t <- trees])
  prn (N (bi,at,_,_,_)) = prb bi ++ prt at
  prb [] = ""
  prb bi = "\\" ++ concat (intersperse "," (map (prt . fst) bi)) ++ " -> "
  parIf par (s:ss) = map (indent 2) $
                         if par 
                            then ('(':s) : ss ++ [")"] 
                            else s:ss
  ifPar (Tr (N ([],_,_,_,_), [])) = False
  ifPar _ = True


-- auxiliaries

prConstraints :: Constraints -> String
prConstraints = concat . prConstrs

prMetaSubst :: MetaSubst -> String
prMetaSubst = concat . prMSubst
  
prEnv :: Env -> String
---- prEnv [] = prCurly "" ---- for debugging
prEnv e = concatMap (\ (x,t) -> prCurly (prt x ++ ":=" ++ prt t)) e

prConstrs :: Constraints -> [String]
prConstrs = map (\ (v,w) -> prCurly (prt v ++ "<>" ++ prt w))

prMSubst :: MetaSubst -> [String]
prMSubst = map (\ (m,e) -> prCurly ("?" ++ show m ++ "=" ++ prt e))

prBinds bi = if null bi 
                then [] 
                else "\\" ++ concat (intersperse "," (map prValDecl bi)) +++ "-> "
 where
   prValDecl (x,t) = prParenth (prt x +++ ":" +++ prt t)

instance Print Val where
  prt (VGen i x) = prt x ---- ++ "-$" ++ show i ---- latter part for debugging
  prt (VApp u v) = prt u +++ prv1 v
  prt (VCn mc) = prQIdent mc
  prt (VClos env e) = case e of
    Meta _ -> prt e ++ prEnv env
    _      -> prt e ---- ++ prEnv env ---- for debugging
 
prv1 v = case v of
  VApp _ _  -> prParenth $ prt v
  VClos _ _ -> prParenth $ prt v
  _ -> prt v

instance Print Atom where
  prt (AtC f) = prQIdent f
  prt (AtM i) = prt i
  prt (AtV i) = prt i
  prt (AtL s) = s
  prt (AtI i) = show i

prQIdent :: QIdent -> String
prQIdent (m,f) = prt m ++ "." ++ prt f

-- print terms without qualifications

prExp :: Term -> String
prExp e = case e of
  App f a    -> pr1 f +++ pr2 a
  Abs x b    -> "\\" ++ prt x +++ "->" +++ prExp b
  Prod x a b -> "(\\" ++ prt x +++ ":" +++ prExp a ++ ")" +++ "->" +++ prExp b
  Q _ c      -> prt c
  QC _ c     -> prt c  
  _ -> prt e
 where
   pr1 e = case e of
     Abs _ _    -> prParenth $ prExp e
     Prod _ _ _ -> prParenth $ prExp e
     _ -> prExp e
   pr2 e = case e of
     App _ _ -> prParenth $ prExp e
     _ -> pr1 e

prPatt :: A.Patt -> String
prPatt p = case p of
  A.PC c ps -> prt_ c +++ unwords (map pr1 ps)
  _ -> prt p --- PR
 where
   pr1 p = case p of
     A.PC _ (_:_) -> prParenth $ prPatt p
     _ -> prPatt p

-- option -strip strips qualifications
prTermOpt opts = if oElem nostripQualif opts then prt else prExp

--- to get rid of brackets in the editor
prRefinement t = case t of
    Q m c  -> prQIdent (m,c)
    QC m c -> prQIdent (m,c)
    _ -> prt t
