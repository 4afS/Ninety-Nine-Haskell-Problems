import Data.List
import Data.Ord

goldbach :: Int -> (Int, Int)
goldbach = goldbach' 0 
    where 
        goldbach' x 0 = (0, 0)
        goldbach' x n 
          | isPrime x && isPrime n = (x, n)
          | otherwise = goldbach' (x+1) (n-1)
        isPrime n = all (not . isDividible n) [2..(n-1)]
        isDividible a b = a `mod` b == 0
        primes = filter isPrime [2..]

main = 
    print . sortOn (Down . fst) $ map goldbach [2,4..1000]
