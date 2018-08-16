main = do
    print $ dropEvery "abcdefghik" 3
    print $ dropEvery' "abcdefghik" 3

dropEvery :: [a] -> Int -> [a]
dropEvery = dropEvery' 1
    where 
        dropEvery' _ [] _ = []
        dropEvery' i (x:xs) n
          | i `mod` n == 0 = dropEvery' (i+1) xs n
          | otherwise = x : dropEvery' (i+1) xs n


dropEvery' :: [a] -> Int -> [a]
dropEvery' xs n = helper xs n
    where helper [] _ = []
          helper (x:xs) 1 = helper xs n
          helper (x:xs) k = x : helper xs (k-1)
