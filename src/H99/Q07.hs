module H99.Q07 (
    NestedList(Elem, List),
    flatten
) where


data NestedList a = Elem a | List [NestedList a]


flatten :: Ord a => NestedList a -> [a]
flatten _ = []
