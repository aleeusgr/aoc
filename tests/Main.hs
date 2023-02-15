
import Tasks
-- import Test.Tasty
-- --import Test.Tasty.Hspec
-- import Test.Tasty.HUnit
-- 
-- import Control.Monad
-- import Data.Semigroup 
-- 
-- import Data.Text (Text)
-- import qualified Data.Text as Text
-- import qualified Data.Text.IO as Text
import Test.Hspec
-- import Control.Exception (evaluate)

main :: IO()
main = hspec $ do
  describe "Prelude.head" $ do
    it "returns the best goblin" $ do
      dt1 <- readFile "data-1"
      task1 dt1 `shouldBe` (74394 :: Int)
    it "tests myReverse" $ do
      myReverse (myReverse [1..5] :: [Int] ) `shouldBe` [1..5]

