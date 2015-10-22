module Main where

import Lib

--line :: Int -> [a]
--line n = replicate n n


makeGraph :: [[a]] -> IO ()
makeGraph xs = do
  putStrLn $ "hello"


main :: IO ()
main = do
  putStrLn "Enter your name"
  xs <- getLine
  putStrLn $ "hello, " ++ xs ++ "!"
  --ticks="▁ ▂ ▃ ▄ ▅ ▆ ▇ █"
