isCoprime :: Int -> Int -> Bool
isCoprime a b = myGcd a b == 1
    where
        myGcd a b
          | b == 0 = abs a
          | otherwise = myGcd b (a `mod` b)

totient :: Int -> Int
totient a
  | a == 1 = 1
  | otherwise = length $ filter (a `isCoprime`) [1..(a-1)]

main = 
    print $ totient 10
