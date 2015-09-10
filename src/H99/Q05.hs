module H99.Q05 (
  reverseList
) where

reverseList :: [a] -> [a]
reverseList xs = reverseListImpl [] xs where
    reverseListImpl :: [a] -> [a] -> [a]
    reverseListImpl reversedList [] = reversedList
    reverseListImpl reversedList (x:restOfList) = reverseListImpl (x : reversedList) restOfList
