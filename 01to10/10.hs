main = do
    print $ encode "aaaabccaadeeee"
    print $ encode' "aaaabccaadeeee"

encode :: Eq a => [a] -> [(Int, a)]
encode xs = zip (lengthList xs) (compress xs)
    where 
        lengthList [] = []
        lengthList (x:xs) = length (takeWhile (x==) xs) : lengthList (dropWhile (x==) xs)
        compress [] = []
        compress (x:xs) = x : compress (dropWhile (x==) xs)

encode' :: Eq a => [a] -> [(Int, a)]
encode' [] = []
encode' (x:xs) = (length (takeWhile (x==) xs), x) : encode' (dropWhile (x==) xs)
