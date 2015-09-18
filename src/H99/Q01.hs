module H99.Q01 (
  lastElementOf,
  lastElementOfUsingFold
) where

-- Problem 1
-- (*) Find the last element of a list.

-- (Note that the Lisp transcription of this problem is incorrect.)

-- Example in Haskell:

-- Prelude> myLast [1,2,3,4]
-- 4
-- Prelude> myLast ['x','y','z']
-- 'z'

lastElementOf :: [a] -> a
lastElementOf [] = error "Out of bounds"
lastElementOf [oneElement] = oneElement
lastElementOf (_:restOfList) = lastElementOf restOfList

lastElementOfUsingFold :: [a] -> a
lastElementOfUsingFold [] = error "Out of bounds"
lastElementOfUsingFold list = foldl1 (\_ x -> x) list
