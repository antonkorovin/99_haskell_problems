module H99.Q05 (
  reverseList,
  reverseListUsingFold
) where

reverseList :: [a] -> [a]
reverseList xs = reverseListImpl [] xs where
    reverseListImpl :: [a] -> [a] -> [a]
    reverseListImpl reversedList [] = reversedList
    reverseListImpl reversedList (x:restOfList) = reverseListImpl (x : reversedList) restOfList


reverseListUsingFold :: [a] -> [a]
reverseListUsingFold list = foldl (\reversed x -> x : reversed) [] list
