module H99.Q02 (
  lastButOneOf
) where

lastButOneOf :: [a] -> a
lastButOneOf [] = error "Out of bounds"
lastButOneOf (lastButOneElement : _ : []) = lastButOneElement
lastButOneOf (_:restOfList) = lastButOneOf restOfList
