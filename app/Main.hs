module Main where

import Data.List.Split

main :: IO()
main = do  
        contents <- readFile "data-1"

        print (splitOn "" (words contents))
-- alternately, main = print . map readInt . words =<< readFile "test.txt"

readInt :: String -> Int
readInt = read
