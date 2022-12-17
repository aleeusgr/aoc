module Main where

main :: IO()
main = do  
        contents <- readFile "data-1"
        print . lines $ contents
-- alternately, main = print . map readInt . words =<< readFile "test.txt"

readInt :: String -> Int
readInt = read
