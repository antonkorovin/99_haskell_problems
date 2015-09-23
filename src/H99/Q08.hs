module H99.Q08 (compress) where


-- Problem 8
-- (**) Eliminate consecutive duplicates of list elements.

-- If a list contains repeated elements they should be replaced with a single copy of the element. The order of the elements should not be changed.

-- Example:

-- * (compress '(a a a a b c c a a d e e e e))
-- (A B C A D E)
-- Example in Haskell:

-- > compress "aaaabccaadeeee"
-- "abcade"

compress :: Ord a => [a] -> [a]
compress [] = []
compress (x : []) = [x]
compress  list = reverse $ foldl compressFunc [head list] (tail list) where
    compressFunc :: Ord b => [b] -> b -> [b]
    compressFunc xs h
        | h == head xs = xs
        | otherwise = h : xs
