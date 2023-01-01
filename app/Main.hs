module Main where

import Data.List.Split

task1 :: IO String -> IO()
task1 contents = 

  let  
      hay = map (map (read::String->Int)) (splitOn [""] . lines $ contents)
      needle = maximum $ map sum hay

  in print needle

main :: IO()
main = do  
      task1 $ readFile "data-1"
