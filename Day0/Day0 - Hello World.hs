module Main where

import Lib

main = do
    let file = "Day1\\input_test.txt"
    contents <- readFile file 
    putStrLn contents