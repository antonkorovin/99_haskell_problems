module H99.Q04 (
  listLength,
  listLengthUsingFold
) where

-- Problem 4
-- (*) Find the number of elements of a list.

-- Example in Haskell:

-- Prelude> myLength [123, 456, 789]
-- 3
-- Prelude> myLength "Hello, world!"
-- 13

listLength :: [a] -> Integer
listLength [] = 0
listLength (_ : xs) = 1 + listLength xs

listLengthUsingFold :: [a] -> Integer
listLengthUsingFold list = foldl (\acc _ -> acc + 1) 0 list
