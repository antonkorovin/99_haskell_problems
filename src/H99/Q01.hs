module H99.Q01 (
  lastElementOf
) where

lastElementOf :: [a] -> a
lastElementOf [] = error "'last' of empty list"
lastElementOf [oneElement] = oneElement
lastElementOf (_:restOfList) = lastElementOf restOfList