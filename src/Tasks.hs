module Tasks where

import Data.List.Split

task1 :: String -> Int
task1 contents = 
  let  
      hay = map (map (read::String->Int)) (splitOn [""] . lines $ contents)
      needle = maximum $ map sum hay

  in needle

-- https://wiki.haskell.org/99_questions/Solutions/5
reverse          :: [a] -> [a]
reverse          =  foldl (flip (:)) []
