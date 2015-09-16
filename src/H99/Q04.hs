module H99.Q04 (
  listLength,
  listLengthUsingFold
) where

listLength :: [a] -> Integer
listLength [] = 0
listLength (_ : xs) = 1 + listLength xs

listLengthUsingFold :: [a] -> Integer
listLengthUsingFold list = foldl (\acc _ -> acc + 1) 0 list
