-- ??
import Data.List

main = table (\a b c -> a `and'` (b `or'` c) `eq'` a `and'` b `or'` a `and'` c )

and' :: Bool -> Bool -> Bool
and' True True = True
and' _ _ = False

or' :: Bool -> Bool -> Bool
or' False False = False
or' _ _ = True

eq' :: Bool -> Bool -> Bool
eq' a b = a == b

not' :: Bool -> Bool
not' = not

table :: (Bool -> Bool -> Bool -> Bool) -> IO ()
table f = mapM_ (putStrLn . unwords . map show) [[a, b, c, f a b c] | a <- bools, b <- bools, c <- bools]
    where
        bools = [True, False] 
