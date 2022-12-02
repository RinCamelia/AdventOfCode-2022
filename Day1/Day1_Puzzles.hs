module Main where

import Prelude
import Data.List
import Data.Char
import Data.List.Split

main = do
    let file = "Day1\\input.txt"
    contents <- readFile file
    let loads = getElfLoads contents
        sortedLoads = reverse(sort(loads))
        topElf = head sortedLoads
        topThreeSum = sum (take 3 sortedLoads)
    putStrLn (show topElf)
    putStrLn (show topThreeSum)


getElfLoads :: String -> [Int]
getElfLoads input = map countElfSnacks (splitOn [""] (lines input))
 

countElfSnacks :: [String] -> Int
countElfSnacks input = foldl (+) 0 (map (read::String->Int) input)