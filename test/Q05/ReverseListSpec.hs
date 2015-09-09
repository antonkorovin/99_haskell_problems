module Q05.ReverseListSpec (spec, main) where

import Test.Hspec


import H99.Q05 (reverseList)

-- `main` is here so that this module can be run from GHCi on its own.  It is
-- not needed for automatic spec discovery.
main :: IO ()
main = hspec spec

anEmptyList :: [()]
anEmptyList = ([] :: [()])

spec :: Spec
spec = do
  describe "reverseList" $ do
    it "returns [] for an empty list" $ do
        reverseList anEmptyList `shouldBe` anEmptyList

    it "returns same list for a list with one element" $ do
        reverseList [1::Int] `shouldBe` [1::Int]

    it "returns reversed list for a particular list" $ do
        reverseList [1::Int,2..10] `shouldBe` [10::Int,9..1]
