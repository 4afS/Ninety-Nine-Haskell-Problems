primesR :: Int -> Int -> [Int]
primesR a b = filter isPrime [a..b]
    where
        isPrime n = all (not . isDividible n) [2..(n-1)]
        isDividible a b = a `mod` b == 0
        primes = filter isPrime [2..]

main =
    print $ primesR 10 20
