module Main where

import Data.List.Split

main :: IO()
main = do  
        contents <- readFile "data-1"

        print . splitOn [""] . lines $ contents
        -- map (read::String->Int) ((splitOn [""] . lines $ contents) !! 1)
        -- map (map (read::String->Int)) (splitOn [""] . lines $ contents)

-- alternately, main = print . map readInt . words =<< readFile "test.txt"

readInt :: String -> Int
readInt = read

