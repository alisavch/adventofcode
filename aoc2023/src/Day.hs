module Day
    ( solve
    ) where

import Data.List.Split (splitOn)
import Data.Char

solve :: String -> Int
solve = foldl1 (+) . (map (read . firstLast . filter isDigit)) . splitOn "\n"
  where
    firstLast l = [head l, last l]
