module H99.Q05 (
  reverseList,
  reverseListUsingFold
) where


-- Problem 5
-- (*) Reverse a list.

-- Example in Haskell:

-- Prelude> myReverse "A man, a plan, a canal, panama!"
-- "!amanap ,lanac a ,nalp a ,nam A"
-- Prelude> myReverse [1,2,3,4]
-- [4,3,2,1]

reverseList :: [a] -> [a]
reverseList xs = reverseListImpl [] xs where
    reverseListImpl :: [a] -> [a] -> [a]
    reverseListImpl reversedList [] = reversedList
    reverseListImpl reversedList (x:restOfList) = reverseListImpl (x : reversedList) restOfList


reverseListUsingFold :: [a] -> [a]
reverseListUsingFold list = foldl (\reversed x -> x : reversed) [] list
