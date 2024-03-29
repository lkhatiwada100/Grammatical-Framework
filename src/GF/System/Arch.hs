module Arch (
 myStdGen, prCPU, selectLater, modifiedFiles, ModTime, getModTime,getNowTime,
 welcomeArch, fetchCommand) where

import Time
import Random
import CPUTime
import Monad (filterM)
import Directory
import Readline

---- import qualified UnicodeF as U --(fudlogueWrite)

-- architecture/compiler dependent definitions for unix/hbc

myStdGen :: Int -> IO StdGen ---
--- myStdGen _ = newStdGen --- gives always the same result
myStdGen int0 = do
  t0  <- getClockTime 
  cal <- toCalendarTime t0 
  let int = int0 + ctSec cal + fromInteger (div (ctPicosec cal) 10000000)
  return $ mkStdGen int

prCPU cpu = do 
  cpu' <- getCPUTime
  putStrLn (show ((cpu' - cpu) `div` 1000000000) ++ " msec")
  return cpu'

welcomeArch = "This is the system compiled with ghc."

fetchCommand :: String -> IO (String)
fetchCommand s = do
  res <- readline s
  case res of
   Nothing -> return "q"
   Just s -> do addHistory s
                return s

-- selects the one with the later modification time of two

selectLater :: FilePath -> FilePath -> IO FilePath
selectLater x y = do
  ex <- doesFileExist x
  if not ex 
    then return y --- which may not exist
    else do
      ey <- doesFileExist y
      if not ey 
        then return x
        else do 
          tx <- getModificationTime x
          ty <- getModificationTime y
          return $ if tx < ty then y else x

-- a file is considered as modified also if it has not been read yet

modifiedFiles :: [(FilePath,ModTime)] -> [FilePath] -> IO [FilePath]
modifiedFiles ofs fs = print (map fst ofs) >> filterM isModified fs where
  isModified file = case lookup file ofs of
    Just to -> do
      t <- getModTime file
      return $ to < t
    _ -> return True

type ModTime = ClockTime

getModTime :: FilePath -> IO ModTime
getModTime = getModificationTime

getNowTime :: IO ModTime
getNowTime = getClockTime
