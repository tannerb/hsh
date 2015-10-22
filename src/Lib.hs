module Lib
    ( joinStr,
      printName
    ) where


joinStr :: [[a]] -> [a]
joinStr xs = concat xs

printName :: String ->  IO ()
printName xs = putStrLn $ "Name: " ++ xs ++ "."
