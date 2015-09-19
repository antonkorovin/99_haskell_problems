module H99.Q06 (
  isPalindrome
) where

import H99.Q05 (reverseList)

-- Problem 6
-- (*) Find out whether a list is a palindrome. A palindrome can be read forward or backward; e.g. (x a m a x).

-- Example in Haskell:

-- *Main> isPalindrome [1,2,3]
-- False
-- *Main> isPalindrome "madamimadam"
-- True
-- *Main> isPalindrome [1,2,4,8,16,8,4,2,1]
-- True

isPalindrome :: Ord a => [a] -> Bool
isPalindrome x = (reverseList x == x)
