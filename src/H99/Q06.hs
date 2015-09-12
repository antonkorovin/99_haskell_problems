module H99.Q06 (
  isPalindrome
) where

import H99.Q05 (reverseList)

isPalindrome :: Ord a => [a] -> Bool
isPalindrome x = (reverseList x == x)
