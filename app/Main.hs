module Main where

import Data.List.Split

task1 :: String -> Int
task1 contents = 
  let  
      hay = map (map (read::String->Int)) (splitOn [""] . lines $ contents)
      needle = maximum $ map sum hay

  in needle

main :: IO()
main = do  
      dt <- readFile "data-1"
      print $ task1 dt
