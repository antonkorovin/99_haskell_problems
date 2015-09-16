module Q04.ListLengthSpec (spec, main) where

import Test.Hspec


import H99.Q04 (listLength, listLengthUsingFold)

-- `main` is here so that this module can be run from GHCi on its own.  It is
-- not needed for automatic spec discovery.
main :: IO ()
main = hspec spec


spec :: Spec
spec = do
  describe "listLength" $ do
    it "returns 0 for an empty list" $ do
        listLength [] `shouldBe` 0

    it "returns 100 for [1..100] list" $ do
        listLength [1::Int,2..100] `shouldBe` 100

    it "counts count of letters in aphabet" $ do
     listLength ['a'..'z'] `shouldBe` 26

  describe "listLengthUsingFold" $ do
    it "returns 0 for an empty list" $ do
        listLengthUsingFold [] `shouldBe` 0

    it "returns 100 for [1..100] list" $ do
        listLengthUsingFold [1::Int,2..100] `shouldBe` 100

    it "counts count of letters in aphabet" $ do
     listLengthUsingFold ['a'..'z'] `shouldBe` 26
