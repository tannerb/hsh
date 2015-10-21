module Main where

import Lib

main :: IO ()
main = do
  putStrLn "Enter your name"
  xs <- getLine
  putStrLn $ "hello, " ++ xs ++ "!"

