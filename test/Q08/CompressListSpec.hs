module Q08.CompressListSpec (spec, main) where

import Test.Hspec


import H99.Q08

-- `main` is here so that this module can be run from GHCi on its own.  It is
-- not needed for automatic spec discovery.
main :: IO ()
main = hspec spec

anEmptyList :: [()]
anEmptyList = ([] :: [()])

spec :: Spec
spec = do
  describe "compress" $ do
    it "returns [] for an empty list" $ do
        compress anEmptyList `shouldBe` anEmptyList

    it "returns same list for a list with one element" $ do
        compress ['1'] `shouldBe` ['1']

    it "returns same list for a list without duplicates" $ do
        compress ['0'..'9'] `shouldBe` ['0'..'9']

    it "returns list without duplicates for a list with ones" $ do
        compress "aaaabccaadeeee" `shouldBe` "abcade"
