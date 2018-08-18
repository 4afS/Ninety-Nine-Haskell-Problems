import Data.List

main = print $ lsort ["abc","de","fgh","de","ijkl","mn","o"]

lsort :: [[a]] -> [[a]]
lsort = sortOn length
