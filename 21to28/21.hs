main = do
    print $ insertAt 'X' "abcd" 2
    print $ insertAt' 'X' "abcd" 2

insertAt :: a -> [a] -> Int -> [a]
insertAt a xs n = insertTo a $ splitAt (n-1) xs
    where insertTo a (x, y) = x ++ [a] ++ y

insertAt' :: a -> [a] -> Int -> [a]
insertAt' a xs 1 = a : xs
insertAt' a (x:xs) n = x : insertAt' a xs (n-1)
