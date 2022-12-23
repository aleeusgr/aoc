module Main where

import Data.List.Split

main :: IO()
main = do  
        contents <- readFile "data-1"

        let hay = map (map (read::String->Int)) (splitOn [""] . lines $ contents)
        let needle =maximum $ map sum hay
        print needle

