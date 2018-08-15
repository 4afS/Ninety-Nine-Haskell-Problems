main = print $ myLength [1..5]

myLength :: [a] -> Int
myLength [_] = 1
myLength (_:xs) = 1 + myLength xs
