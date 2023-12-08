module Day
    ( solve
    ) where

import Data.List.Split (splitOn)
import Data.Char

solve :: String -> Int
solve input = foldl (+) 0 (map read (map c (map (nums) (ls))))
  where
    ls = splitOn "\n" input
    nums :: String -> String
    nums l = (filter isDigit l)
    c :: String -> String
    c l = [head l, last l]
