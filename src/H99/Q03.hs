module H99.Q03 (
  elementAt
) where

-- Problem 3
-- (*) Find the K'th element of a list. The first element in the list is number 1.

-- Example:

-- * (element-at '(a b c d e) 3)
-- c
-- Example in Haskell:

-- Prelude> elementAt [1,2,3] 2
-- 2
-- Prelude> elementAt "haskell" 5
-- 'e'


elementAt :: [a] -> Int -> a
elementAt _ 0 = error "Out of bounds"
elementAt ([]) _ = error "Out of bounds"
elementAt (oneElement : restOfList) n
    | n == 1 = oneElement
    | n > 1  = elementAt restOfList (n-1)
elementAt _ _  = error "Illegal argument"
