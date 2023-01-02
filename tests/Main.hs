--module Main (tests) where

import Tasks
import Test.Tasty
import Test.Tasty.Hspec

import Control.Monad
import Data.Semigroup 

import Data.Text (Text)
import qualified Data.Text as Text
import qualified Data.Text.IO as Text

main :: IO()
main = defaultMain tests

tests :: TestTree
tests = testGroup "Tests" [unitTests, specCase]

unitTests :: TestTree
unitTests = testGroup "Unit tests"
  [ testCase "List comparison (different length)" $
      [1, 2, 3] `compare` [1,2] @?= GT

  -- the following test does not hold
  , testCase "List comparison (same length)" $
      [1, 2, 3] `compare` [1,2,2] @?= LT
  ]

specCase :: Spec
specCase = do
  dt1 <- runIO readFile "data-1"
  task1 dt1 `shouldBe` 12345
