data NestedList a = Elem a | List [NestedList a]

main = do
    print $ flatten $ Elem 5
    print $ flatten $ List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]]
    print $ flatten' $ Elem 5
    print $ flatten' $ List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]]

flatten :: NestedList a -> [a]
flatten (Elem a) = [a]
flatten (List (x:xs)) = flatten x ++ flatten (List xs)
flatten (List []) = []

flatten' :: NestedList a -> [a]
flatten' (Elem a) = return a
flatten' (List a) = flatten =<< a 
