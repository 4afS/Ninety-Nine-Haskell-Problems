myGcd :: Integer -> Integer -> Integer
myGcd a b
  | b == 0 = abs a
  | otherwise = myGcd b (a `mod` b)

main = 
    print $ map (uncurry myGcd) [(204875236, 27583), (-3, -6), (-3, 6)]
