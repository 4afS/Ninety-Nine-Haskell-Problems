main = print $ myLast [1..4]

myLast :: [a] -> a
myLast [x, _] = x
myLast (_:xs) = myLast xs
