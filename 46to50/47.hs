import Data.List

main = table (\a b -> (a `and'` (a `or'` not' b)))

and' :: Bool -> Bool -> Bool
and' True True = True
and' _ _ = False

or' :: Bool -> Bool -> Bool
or' False False = False
or' _ _ = True

not' :: Bool -> Bool
not' = not

table :: (Bool -> Bool -> Bool) -> IO ()
table f = mapM_ (putStrLn . unwords . map show) [[a, b, f a b] | a <- bools, b <- bools]
    where
        bools = [True, False] 

