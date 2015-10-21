module Paths_hsh (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/tanner/.cabal/bin"
libdir     = "/home/tanner/.cabal/lib/x86_64-linux-ghc-7.10.2/hsh-0.1.0.0-AT9n0Kh95P92LOLnTmvh8D"
datadir    = "/home/tanner/.cabal/share/x86_64-linux-ghc-7.10.2/hsh-0.1.0.0"
libexecdir = "/home/tanner/.cabal/libexec"
sysconfdir = "/home/tanner/.cabal/etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "hsh_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "hsh_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "hsh_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "hsh_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "hsh_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
