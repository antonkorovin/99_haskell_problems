module H99.Q01 (
  lastElementOf,
  lastElementOfUsingFold
) where

lastElementOf :: [a] -> a
lastElementOf [] = error "Out of bounds"
lastElementOf [oneElement] = oneElement
lastElementOf (_:restOfList) = lastElementOf restOfList

lastElementOfUsingFold :: [a] -> a
lastElementOfUsingFold [] = error "Out of bounds"
lastElementOfUsingFold list = foldl1 (\_ x -> x) list
