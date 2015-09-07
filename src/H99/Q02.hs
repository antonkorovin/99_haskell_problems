module H99.Q02 (
  lastButOneOf
) where

lastButOneOf :: [a] -> a
lastButOneOf [] = error "'lastButOne' of empty list"
lastButOneOf (lastButOneElement : _ : []) = lastButOneElement
lastButOneOf (_:restOfList) = lastButOneOf restOfList
