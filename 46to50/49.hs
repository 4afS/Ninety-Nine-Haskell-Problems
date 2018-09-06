import Control.Monad

main = print $ gray 5

gray :: Int -> [String]
gray 0 = [""]
gray n = ['0' : x | x <- gray (n-1)] ++ ['1' : x | x <- gray (n-1)] 
