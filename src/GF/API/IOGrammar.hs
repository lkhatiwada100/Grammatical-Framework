module IOGrammar where

import Abstract
import qualified GFC
import PGrammar
import TypeCheck
import Compile
import ShellState

import Modules
import Option
import Operations
import UseIO
import Arch

import Monad (liftM)

-- for reading grammars and terms from strings and files

--- a heuristic way of renaming constants is used
string2absTerm :: String -> String -> Term 
string2absTerm m = renameTermIn m . pTrm

renameTermIn :: String -> Term -> Term
renameTermIn m = refreshMetas [] . rename [] where
  rename vs t = case t of
    Abs x b -> Abs x (rename (x:vs) b)
    Vr c    -> if elem c vs then t else Q (zIdent m) c
    App f a -> App (rename vs f) (rename vs a)
    _ -> t

string2annotTree :: GFC.CanonGrammar -> Ident -> String -> Err Tree
string2annotTree gr m = annotate gr . string2absTerm (prt m) ---- prt

----string2paramList :: ConcreteST -> String -> [Term]
---string2paramList st = map (renameTrm (lookupConcrete st) . patt2term) . pPattList

shellStateFromFiles :: Options -> ShellState -> FilePath -> IOE ShellState
shellStateFromFiles opts st file | fileSuffix file == "gfcm" = do
  (_,_,cgr) <- compileOne opts (compileEnvShSt st []) file
  ioeErr $ updateShellState opts st (cgr,(emptyMGrammar,[]))  
shellStateFromFiles opts st file = do
  let osb = if oElem showOld opts 
               then addOptions (options [beVerbose]) opts -- for old, no emit
               else addOptions (options [beVerbose, emitCode]) opts -- for new, do
  grts <- compileModule osb st file
  ioeErr $ updateShellState opts st grts
  --- liftM (changeModTimes rts) $ grammar2shellState opts gr
