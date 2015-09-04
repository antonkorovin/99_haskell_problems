module H99.Q01 (
  lastElementOf
) where

lastElementOf :: (Ord a) => [a] -> a
lastElementOf [] = error "'last' of empty list"
lastElementOf [x] = x
lastElementOf (head:tail) = lastElementOf tail
