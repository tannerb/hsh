module Lib
    ( printName
    ) where

printName :: String ->  IO ()
printName xs = putStrLn $ "Name: " ++ xs ++ "."
