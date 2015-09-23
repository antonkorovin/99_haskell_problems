module Q07.FlattenSpec (spec, main) where

import Test.Hspec


import H99.Q07

-- `main` is here so that this module can be run from GHCi on its own.  It is
-- not needed for automatic spec discovery.
main :: IO ()
main = hspec spec


anEmptyList :: [()]
anEmptyList = ([] :: [()])

anEmptyNestedList :: NestedList ()
anEmptyNestedList = List [] :: NestedList ()

spec :: Spec
spec = do
  describe "flatten" $ do
    it "returns the same for an empty list" $ do
        flatten anEmptyNestedList `shouldBe` anEmptyList

    it "returns list with one element for 'Elem'" $ do
        flatten (Elem 'a') `shouldBe` ['a']

    it "returns flatten list for multy-level list" $ do
        flatten (List [Elem '1', List [Elem '2', List [Elem '3', Elem '4'], Elem '5']]) `shouldBe` ['1', '2', '3', '4', '5']

  describe "flattenUsingFoldl" $ do
    it "returns the same for an empty list" $ do
        flattenUsingFoldl anEmptyNestedList `shouldBe` anEmptyList

    it "returns list with one element for 'Elem'" $ do
        flattenUsingFoldl (Elem 'a') `shouldBe` ['a']

    it "returns flatten list for multy-level list" $ do
        flattenUsingFoldl (List [Elem '1', List [Elem '2', List [Elem '3', Elem '4'], Elem '5']]) `shouldBe` ['1', '2', '3', '4', '5']

  describe "flattenUsingFoldr" $ do
    it "returns the same for an empty list" $ do
        flattenUsingFoldr anEmptyNestedList `shouldBe` anEmptyList

    it "returns list with one element for 'Elem'" $ do
        flattenUsingFoldr (Elem 'a') `shouldBe` ['a']

    it "returns flatten list for multy-level list" $ do
        flattenUsingFoldr (List [Elem '1', List [Elem '2', List [Elem '3', Elem '4'], Elem '5']]) `shouldBe` ['1', '2', '3', '4', '5']

  describe "flattenUsingConcatMap" $ do
    it "returns the same for an empty list" $ do
        flattenUsingConcatMap anEmptyNestedList `shouldBe` anEmptyList

    it "returns list with one element for 'Elem'" $ do
        flattenUsingConcatMap (Elem 'a') `shouldBe` ['a']

    it "returns flatten list for multy-level list" $ do
        flattenUsingConcatMap (List [Elem '1', List [Elem '2', List [Elem '3', Elem '4'], Elem '5']]) `shouldBe` ['1', '2', '3', '4', '5']
