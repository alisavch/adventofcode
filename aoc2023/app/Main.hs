module Main (main) where

import Day

main :: IO ()
main = do 
  input <- readFile "input/input.txt"
  (print . solve)input
