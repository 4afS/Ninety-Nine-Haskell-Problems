main = print $ myLast [1..4]

myLast :: [a] -> a
myLast [x] = x
myLast (_:xs) = myLast xs
