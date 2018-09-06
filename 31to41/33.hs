isCoprime :: Int -> Int -> Bool 
isCoprime a b = myGcd a b == 1
    where 
        myGcd a b
          | b == 0 = abs a
          | otherwise = myGcd b (a `mod` b)

main = print $ isCoprime 35 64
