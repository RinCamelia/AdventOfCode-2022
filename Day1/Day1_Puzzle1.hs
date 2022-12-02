module Main where

import Prelude
import Data.List
import Data.Char
import Data.List.Split

main = do
    let file = "Day1\\input.txt"
    contents <- readFile file
    putStrLn (show (getMostLoadedElf contents))

getMostLoadedElf :: String -> Int
getMostLoadedElf input = maximum (map countElfSnacks (splitOn [""] (lines input)))

countElfSnacks :: [String] -> Int
countElfSnacks input = foldl (+) 0 (map (read::String->Int) input)