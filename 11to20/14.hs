main = do
    print $ dupli [1, 2, 3]
    print $ dupli' [1, 2, 3]

dupli :: [a] -> [a]
dupli [] = []
dupli (x:xs) = x : x : dupli xs

dupli' :: [a] -> [a]
dupli' = concatMap (replicate 2)
