module API where

import qualified AbsGF as GF
import qualified AbsGFC as A
import qualified Rename as R
import GetTree
import GFC
import Values

-----import GetGrammar
-----import Compile
import IOGrammar
import Linear
import Parsing
import Morphology
import PPrCF
import CFIdent
import PGrammar
import Randomized (mkRandomTree)
import Zipper

import MMacros
import qualified Macros as M
import TypeCheck
import CMacros

import Option
import Custom
import ShellState
import Linear
import GFC
import qualified Grammar as G
import PrGrammar
import qualified Compute as Co
import qualified Ident as I
import qualified GrammarToCanon as GC
import qualified CanonToGrammar as CG

import Editing

----import GrammarToXML 

----import GrammarToMGrammar as M

import Arch (myStdGen)

import UTF8
import Operations
import UseIO

import List (nub)
import Monad (liftM)
import System (system)

-- Application Programmer's Interface to GF; also used by Shell. AR 10/11/2001

type GFGrammar = StateGrammar
type GFCat     = CFCat
type Ident     = I.Ident

-- these are enough for many simple applications

{- -----
file2grammar :: FilePath -> IO GFGrammar
file2grammar = do
  egr <- appIOE $ optFile2grammar (iOpts [beSilent])
  err putStrLn return egr
-}

linearize :: GFGrammar -> Tree -> String
linearize sgr = err id id . optLinearizeTree opts sgr where
  opts = addOption firstLin $ stateOptions sgr

linearizeToAll :: [GFGrammar] -> Tree -> [String]
linearizeToAll grs t = [linearize gr t | gr <- grs]

parse :: GFGrammar -> CFCat -> String -> [Tree]
parse sgr cat = errVal [] . parseString noOptions sgr cat

parseAny :: [GFGrammar] -> CFCat -> String -> [Tree]
parseAny grs cat s = concat [parse gr cat s | gr <- grs]

translate :: GFGrammar -> GFGrammar -> CFCat -> String -> [String]
translate ig og cat = map (linearize og) . parse ig cat

translateToAll :: GFGrammar -> [GFGrammar] -> CFCat -> String -> [String]
translateToAll ig ogs cat = concat . map (linearizeToAll ogs) . parse ig cat

translateFromAny :: [GFGrammar] -> GFGrammar -> CFCat -> String -> [String]
translateFromAny igs og cat s = concat [translate ig og cat s | ig <- igs]

translateBetweenAll :: [GFGrammar] -> CFCat -> String -> [String]
translateBetweenAll grs cat = concat . map (linearizeToAll grs) . parseAny grs cat

homonyms :: GFGrammar -> CFCat -> Tree -> [Tree]
homonyms gr cat = nub . parse gr cat . linearize gr

hasAmbiguousLin :: GFGrammar -> CFCat -> Tree -> Bool
hasAmbiguousLin gr cat t = case (homonyms gr cat t) of
  _:_:_ -> True
  _ -> False

{- ----
-- returns printname if one exists; othewrise linearizes with metas
printOrLin :: GFGrammar -> Fun -> String
printOrLin gr = printOrLinearize (stateGrammarST gr)

-- reads a syntax file and writes it in a format wanted
transformGrammarFile :: Options -> FilePath -> IO String
transformGrammarFile opts file = do
  sy <- useIOE GF.emptySyntax $ getSyntax opts file
  return $ optPrintSyntax opts sy
-}

-- then stg for customizable and internal use

{- -----
optFile2grammar :: Options -> FilePath -> IOE GFGrammar
optFile2grammar os f = do
  gr <- ioeErr $ compileModule os f
  return $ grammar2stateGrammar gr

optFile2grammarE :: Options -> FilePath -> IOE GFGrammar
optFile2grammarE = optFile2grammar
-}

string2treeInState :: GFGrammar -> String -> State -> Err Tree
string2treeInState gr s st = do
  let metas = allMetas st
      xs    = map fst $ actBinds st
  t0 <- pTerm s
  let t = qualifTerm (absId gr) $ M.mkAbs xs $ refreshMetas metas $ t0
  annotateExpInState (grammar gr) t st 

string2srcTerm :: G.SourceGrammar -> I.Ident -> String -> Err G.Term
string2srcTerm gr m s = do
  t <- pTerm s
  R.renameSourceTerm gr m t

randomTreesIO :: Options -> GFGrammar -> Int -> IO [Tree]
randomTreesIO opts gr n = do
  gen <- myStdGen mx
  t   <- err (\s -> putStrLnFlush s >> return []) (return . singleton) $ 
                                                       mkRandomTree gen mx g catfun
  ts  <- if n==1 then return [] else randomTreesIO opts gr (n-1)
  return $ t ++ ts
 where
   catfun = case getOptVal opts withFun of
     Just fun -> Right $ (absId gr, I.identC fun)
     _ -> Left $ firstAbsCat opts gr
   g   = grammar gr
   mx  = optIntOrN opts flagDepth 41

speechGenerate :: Options -> String -> IO ()
speechGenerate opts str = do
  let lan = maybe "" (" --language" +++) $ getOptVal opts speechLanguage
  system ("echo" +++ "\"" ++ str ++ "\" | festival --tts" ++ lan)
  return ()

optLinearizeTreeVal :: Options -> GFGrammar -> Tree -> String
optLinearizeTreeVal opts gr = err id id . optLinearizeTree opts gr

optLinearizeTree :: Options -> GFGrammar -> Tree -> Err String
optLinearizeTree opts gr t = case getOptVal opts markLin of
  Just mk
    | mk == markOptXML    -> lin markXML t
    | mk == markOptJava   -> lin markXMLjgf t
    | mk == markOptStruct -> lin markBracket t
    | mk == markOptFocus  -> lin markFocus t
    | otherwise           -> lin noMark t 
  _ -> lin noMark t
 where
   lin mk
    | oElem showRecord opts = liftM prt . linearizeNoMark g c
    | otherwise             = return . linTree2string mk g c
   g = grammar gr
   c = cncId gr

{- ----
        untoksl . lin where
  gr = concreteOf (stateGrammarST sgr)
  lin -- options mutually exclusive, with priority: struct, rec, table, one
   | oElem showStruct opts = markedLinString True gr . tree2loc
   | oElem showRecord opts = err id prt                  . linTerm gr
   | oElem tableLin opts   = err id (concatMap prLinTable)  . allLinsAsStrs gr
   | oElem firstLin opts   = unlines . map sstr . take 1 . allLinStrings gr
   | otherwise = unlines . map sstr . optIntOrAll opts flagNumber . allLinStrings gr
  untoks = customOrDefault opts' useUntokenizer customUntokenizer sgr
  opts' = addOptions opts $ stateOptions sgr
  untoksl = unlines . map untoks . lines
-}

{-
optLinearizeArgForm :: Options -> StateGrammar -> [Term] -> Term -> String
optLinearizeArgForm opts sgr fs ts0 = untoksl $ lin ts where
  gr = concreteOf (stateGrammarST sgr) 
  ts = annotateTrm sgr ts0
  ms = map (renameTrm (lookupConcrete gr)) fs
  lin -- options mutually exclusive, with priority: struct, rec, table
   | oElem tableLin opts = err id (concatMap prLinTable) . allLinsForForms gr ms
   | otherwise = err id (unlines . map sstr . tkStrs . concat) . allLinsForForms gr ms
  tkStrs = concat . map snd . concat . map snd
  untoks = customOrDefault opts' useUntokenizer customUntokenizer sgr
  opts' = addOptions opts $ stateOptions sgr
  untoksl = unlines . map untoks . lines
-}

optParseArg :: Options -> GFGrammar -> String -> [Tree]
optParseArg opts gr =  err (const []) id . optParseArgErr opts gr

optParseArgErr :: Options -> GFGrammar -> String -> Err [Tree]
optParseArgErr opts gr = liftM fst . optParseArgErrMsg opts gr

optParseArgErrMsg :: Options -> GFGrammar -> String -> Err ([Tree],String)
optParseArgErrMsg opts gr s = 
  let cat = firstCatOpts opts gr
  in parseStringMsg opts gr cat s

-- analyses word by word
morphoAnalyse :: Options -> GFGrammar -> String -> String
morphoAnalyse opts gr 
  | oElem beShort opts = morphoTextShort mo 
  | otherwise = morphoText mo 
 where
  mo = morpho gr

{-
prExpXML :: StateGrammar -> Term -> [String]
prExpXML gr = prElementX . term2elemx (stateAbstract gr) 

prMultiGrammar :: Options -> ShellState -> String
prMultiGrammar opts = M.showMGrammar (oElem optimizeCanon opts)
-}
-- access to customizable commands

optPrintGrammar :: Options -> StateGrammar -> String
optPrintGrammar opts = customOrDefault opts grammarPrinter customGrammarPrinter

optPrintSyntax :: Options -> GF.Grammar -> String
optPrintSyntax opts = customOrDefault opts grammarPrinter customSyntaxPrinter

{- ----
optPrintTree :: Options -> GFGrammar -> Tree -> String
optPrintTree opts = customOrDefault opts grammarPrinter customTermPrinter

-- look for string command (-filter=x)
optStringCommand :: Options -> GFGrammar -> String -> String
optStringCommand opts g = 
  optIntOrAll opts flagLength .  
  customOrDefault opts filterString customStringCommand g

optTreeCommand :: Options -> GFGrammar -> Tree -> [Tree]
optTreeCommand opts st = 
  optIntOrAll opts flagNumber .  
  customOrDefault opts termCommand customTermCommand st
-}

{-
-- wraps term in a function and optionally computes the result

wrapByFun :: Options -> StateGrammar -> Ident -> Term -> Term
wrapByFun opts g f t = 
  if oElem doCompute opts 
  then err (const t) id $ computeAbsTerm (stateAbstract g) (appCons f [t])
  else appCons f [t]

optTransfer :: Options -> StateGrammar -> Term -> Term
optTransfer opts g = case getOptVal opts transferFun of
  Just f -> wrapByFun (addOption doCompute opts) g (string2id f)
  _ -> id
-}
optTokenizer :: Options -> GFGrammar -> String -> String
optTokenizer opts gr = show . customOrDefault opts useTokenizer customTokenizer gr

-- performs UTF8 if the language name is not *U.gf ; should be by gr option ---
optEncodeUTF8 :: Language -> GFGrammar -> String -> String
optEncodeUTF8 lang gr = case reverse (prLanguage lang) of
  'U':_ -> id
  _ -> encodeUTF8

