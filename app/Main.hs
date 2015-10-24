module Main where

import Graphics.Rendering.OpenGL as OpenGL
import Graphics.UI.GLFW as GLFW
import Control.Monad
import System.Exit (exitWith, ExitCode(..))

import Prelude hiding (putStr)

import Data.Array
import Data.ByteString.Char8 (putStr)
import Data.ByteString.UTF8 (fromString)

createMapping :: [Int]-> [Int]
createMapping [] = []
createMapping xs = 
  (div (head xs) (maximum xs)) : 
  (createMapping' 
    (maximum xs) (tail xs))

-- | algorithm
-- sort xs
-- shrink or expand xs to length of bars
-- 

createMapping':: Int -> [Int] -> [Int]
createMapping' _ [] = []
createMapping' mx [x] = [div x mx]
createMapping' mx (x:xs) = 
  (div ((head xs) - x) mx) : (createMapping' mx xs)

bars = "▁▂▃▄▅▆▇"

barsArray = listArray (1, length bars) bars

makeGraph :: [Int] -> IO ()
makeGraph xs = do
  putStrLn $ show $ createMapping [13,27,29,31,49,61,83,102]


main :: IO ()
main = makeGraph [1,2,3,3,2,3,4,2,3,2,1,1,2]
