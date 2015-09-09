module H99.Q04 (
  listLength
) where

listLength :: [a] -> Integer
listLength [] = 0
listLength (_ : xs) = 1 + listLength xs
