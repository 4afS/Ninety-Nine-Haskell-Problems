import Data.List
import Data.Ord

goldbach' :: Int -> (Int, Int)
goldbach' n = goldbach'' 2 (n-2) 
    where 
        goldbach'' x 0 = (0, 0)
        goldbach'' x n 
          | isPrime x && isPrime n = (x, n)
          | otherwise = goldbach'' (x+1) (n-1)

isPrime n = all (not . isDividible n) [2..(n-1)]
isDividible a b = a `mod` b == 0
primes = 2 : filter isPrime [3,5..]

goldbachList :: Int -> Int -> [(Int, Int)]
goldbachList a b = map goldbach' $ filter even [a..b]

goldbachList' :: Int -> Int -> Int -> [(Int, Int)]
goldbachList' a b c = filter (\(d, e) -> d > c && e > c) . map goldbach' $ filter even [a..b]

main = 
    print $ take 100000 primes
    -- print $ goldbachList 9 20
    -- print . last . sortOn fst $ goldbachList' 2 100000 100
