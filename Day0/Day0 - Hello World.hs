module Main where

import Lib

main = do
    let file = "hello.txt"
    contents <- readFile file 
    putStrLn contents