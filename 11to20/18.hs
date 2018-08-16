main = print $ slice ['a','b','c','d','e','f','g','h','i','k'] 3 7

slice :: [a] -> Int -> Int -> [a]
slice xs a b = take (b - a + 1) $ drop (a - 1) xs
