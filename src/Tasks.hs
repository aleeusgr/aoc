module Tasks where

import Data.List.Split

task1 :: String -> Int
task1 contents = 
  let  
      hay = map (map (read::String->Int)) (splitOn [""] . lines $ contents)
      needle = maximum $ map sum hay

  in needle


