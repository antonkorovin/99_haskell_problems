module Q01.LastOfListSpec (spec, main) where

import H99.Q01 (lastElementOf, lastElementOfUsingFold)


import Test.Hspec

import Control.Exception (evaluate)


-- `main` is here so that this module can be run from GHCi on its own.  It is
-- not needed for automatic spec discovery.
main :: IO ()
main = hspec spec


spec :: Spec
spec = do
  describe "lastElementOf" $ do
    it "returns the last element of a list" $ do
      lastElementOf [1..42] `shouldBe` (42 :: Int)

    it "throws an exception if used with an empty list" $ do
      evaluate (lastElementOf []) `shouldThrow` errorCall "Out of bounds"

  describe "lastElementOfUsingFold" $ do
    it "returns the last element of a list" $ do
      lastElementOfUsingFold [1..42] `shouldBe` (42 :: Int)

    it "throws an exception if used with an empty list" $ do
      evaluate (lastElementOfUsingFold []) `shouldThrow` errorCall "Out of bounds"
