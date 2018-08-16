main = print $ removeAt 2 "abcd"

removeAt :: Int -> [a] -> (Maybe a, [a])
removeAt n xs 
  | n > 0 && n <= length xs = (Just (xs!!(n-1)), take (n-1) xs ++ drop n xs)
  | otherwise = (Nothing, xs)
