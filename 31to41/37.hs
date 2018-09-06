import Data.List

primeFactorsMult :: Int -> [(Int, Int)]
primeFactorsMult = map (\x -> (head x, length x)) . group . primeFactors
    where
        primeFactors 1 = []
        primeFactors n
          | isPrime n = return n
          | otherwise = let x = head $ filter ((==0) . mod n) primes in x : primeFactors (n `div` x)
        isPrime n = all (not . isDividible n) [2..(n-1)]
        isDividible a b = a `mod` b == 0
        primes = filter isPrime [2..]

totient m = product [(p - 1) * p ^ (c - 1) | (p, c) <- primeFactorsMult m]

main = 
    print $ totient 315
