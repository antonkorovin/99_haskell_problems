module H99.Q03 (
  elementAt
) where

elementAt :: [a] -> Int -> a
elementAt _ 0 = error "Out of bounds"
elementAt ([]) _ = error "Out of bounds"
elementAt (oneElement : restOfList) n
    | n == 1 = oneElement
    | n > 1  = elementAt restOfList (n-1)
elementAt _ _  = error "Illegal argument"
