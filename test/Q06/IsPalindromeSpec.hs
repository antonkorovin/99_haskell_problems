module Q06.IsPalindromeSpec (spec, main) where

import Test.Hspec


import H99.Q06 (isPalindrome)

-- `main` is here so that this module can be run from GHCi on its own.  It is
-- not needed for automatic spec discovery.
main :: IO ()
main = hspec spec


anEmptyList :: [()]
anEmptyList = ([] :: [()])



spec :: Spec
spec = do
  describe "isPalindrome" $ do
    describe "work with lists" $ do
      describe "detecting palindrome" $ do
        it "returns True for an empty list" $ do
            isPalindrome anEmptyList `shouldBe` True

        it "returns True for an one element list" $ do
            isPalindrome ['a'] `shouldBe` True


        it "returns True for a 2 element palindrome list" $ do
            isPalindrome ['a', 'a'] `shouldBe` True

        it "returns True for a 3 element palindrome list" $ do
            isPalindrome ['a', 'b', 'a'] `shouldBe` True

      describe "detecting non-palindrome" $ do
        it "returns False for an interval" $ do
          isPalindrome [1::Int,2..10] `shouldBe` False


    describe "work with strings" $ do
      describe "detecting palindrome" $ do
        it "returns True for an empty string" $ do
            isPalindrome "" `shouldBe` True

        it "returns True for an one character string" $ do
            isPalindrome "a" `shouldBe` True

        it "returns True for a 2 characters palindrome string" $ do
            isPalindrome "aa" `shouldBe` True

        it "returns True for a 3 characters palindrome string" $ do
            isPalindrome "aba" `shouldBe` True

      describe "detecting non-palindrome" $ do
        it "returns False for 'palindrome' " $ do
          isPalindrome "palindrome" `shouldBe` False
