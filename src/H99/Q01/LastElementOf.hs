module H99.Q01 where

lastElementOf :: (Ord a) => [a] -> a
lastElementOf [] = error "'last' of empty list"
lastElementOf [x] = x
lastElementOf (head:tail) = lastElementOf tail
