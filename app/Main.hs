module Main where

import Tasks

main :: IO()
main = do  
      dt <- readFile "data-1"
      print $ task1 dt
