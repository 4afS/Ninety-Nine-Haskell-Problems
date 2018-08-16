main = print $ encodeModified "aaaabccaadeeee"

data Element a = Multiple Int a | Single a deriving Show

encodeModified :: Eq a => [a] -> [Element a]
encodeModified [] = []
encodeModified (x:xs) = case len of
                          0 -> Single x : encodeModified (dropWhile (x==) xs)
                          _ -> Multiple (len+1) x : encodeModified (dropWhile (x==) xs)
                          where len = length $ takeWhile (x==) xs
