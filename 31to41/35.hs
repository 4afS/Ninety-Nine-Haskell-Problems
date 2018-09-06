primeFactors :: Int -> [Int]
primeFactors 1 = []
primeFactors n 
  | isPrime n = return n
  | otherwise = let x = head $ filter ((==0) . mod n) primes
                  in x : primeFactors (n `div` x)
    where 
        isPrime n = all (not . isDividible n) [2..(n-1)]
        isDividible a b = a `mod` b == 0
        primes = filter isPrime [2..]


main = 
    print $ primeFactors 315
