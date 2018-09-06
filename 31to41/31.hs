isPrime n = all (not . isDividible n) [2..(n-1)]
    where isDividible a b = a `mod` b == 0

main = do
    print $ isPrime 3
    print $ isPrime 1481
