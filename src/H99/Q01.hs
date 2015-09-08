module H99.Q01 (
  lastElementOf
) where

lastElementOf :: [a] -> a
lastElementOf [] = error "Out of bounds"
lastElementOf [oneElement] = oneElement
lastElementOf (_:restOfList) = lastElementOf restOfList
