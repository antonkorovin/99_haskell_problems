module Q09.PackListSpec (spec, main) where

import Test.Hspec


import H99.Q09

-- `main` is here so that this module can be run from GHCi on its own.  It is
-- not needed for automatic spec discovery.
main :: IO ()
main = hspec spec

anEmptyList :: [()]
anEmptyList = ([] :: [()])

anEmptySubList :: [[()]]
anEmptySubList = ([[]] :: [[()]])

spec :: Spec
spec = do
  describe "pack" $ do
    it "returns [] for an empty list" $ do
        pack anEmptyList `shouldBe` anEmptySubList

    it "returns same list for a list with one element" $ do
        pack ['1'] `shouldBe` [['1']]

    it "returns same list (with nested one-element lists) for a list without duplicates" $ do
        pack ['0'..'3'] `shouldBe` [['0'], ['1'], ['2'], ['3']]

    it "returns list without duplicates (with nested lists) for a list with ones" $ do
        let srcList = ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e']
        pack srcList `shouldBe` ["aaaa","b","cc","aa","d","eeee"]
