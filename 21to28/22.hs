main = print $ range 4 9

range :: Enum a => a -> a -> [a]
range a b = [a..b]
