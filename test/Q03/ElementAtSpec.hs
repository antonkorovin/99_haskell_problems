module Q03.ElementAtSpec (spec, main) where

import H99.Q03 (elementAt)


import Test.Hspec

import Control.Exception (evaluate)


-- `main` is here so that this module can be run from GHCi on its own.  It is
-- not needed for automatic spec discovery.
main :: IO ()
main = hspec spec


spec :: Spec
spec = do
  describe "elementAt" $ do
    it "returns k-th element of a list" $ do
      elementAt ['a'..'z'] 3 `shouldBe` ('c' :: Char)

    it "throws an exception if used index outs of list bounds (from rigth)" $ do
      evaluate (elementAt [1..10] 11::Int) `shouldThrow` errorCall "Out of bounds"

    it "throws an exception if used index outs of list bounds (from left)" $ do
      evaluate (elementAt [1..10] 0::Int) `shouldThrow` errorCall "Out of bounds"

    it "throws an exception if used with an empty list" $ do
      evaluate (elementAt [] 1) `shouldThrow` errorCall "Out of bounds"

    it "throws an exception if used with negative index" $ do
      evaluate (elementAt ['a'..'z'] (-1)) `shouldThrow` errorCall "Illegal argument"
