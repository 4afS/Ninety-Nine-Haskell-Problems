-- ?
import Data.List (tails)

main = print $ combinations 3 "abcdef"

combinations :: Int -> String -> [String]
combinations 0 _  = return []
combinations n xs = do
    y:xs' <- tails xs
    ys <- combinations (n-1) xs'
    return (y:' ':ys)
