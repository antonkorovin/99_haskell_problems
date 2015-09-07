module Q02.LastButOneOfListSpec (spec, main) where

import H99.Q02 (lastButOneOf)


import Test.Hspec

import Control.Exception (evaluate)


-- `main` is here so that this module can be run from GHCi on its own.  It is
-- not needed for automatic spec discovery.
main :: IO ()
main = hspec spec


spec :: Spec
spec = do
  describe "lastButOneOf" $ do
    it "returns the last but one element of a list" $ do
      lastButOneOf ['a'..'z'] `shouldBe` ('y' :: Char)

    it "throws an exception if used with a list with one element" $ do
      evaluate (lastButOneOf [1:: Int]) `shouldThrow` anyException

    it "throws an exception if used with an empty list" $ do
      evaluate (lastButOneOf []) `shouldThrow` anyException
