module Q07.FlattenSpec (spec, main) where

import Test.Hspec


import H99.Q07
--(flatten, NestedList(List))

-- `main` is here so that this module can be run from GHCi on its own.  It is
-- not needed for automatic spec discovery.
main :: IO ()
main = hspec spec


spec :: Spec
spec = do
  describe "flatten" $ do
    it "returns the same for an empty list" $ do
        flatten (Elem 'a') `shouldBe` ['a']
