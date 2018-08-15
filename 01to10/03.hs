main = print $ elementAt "haskell" 5 

elementAt :: [a] -> Int -> a
elementAt (x:_) 1 = x
elementAt (_:xs) n = elementAt xs $ n - 1
