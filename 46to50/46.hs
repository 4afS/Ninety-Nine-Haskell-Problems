import Data.List

main = table (\a b -> (and' a (or' a b)))

and' :: Bool -> Bool -> Bool
and' True True = True
and' _ _ = False

or' :: Bool -> Bool -> Bool
or' False False = False
or' _ _ = True

table :: (Bool -> Bool -> Bool) -> IO ()
table f = mapM_ (putStrLn . unwords . map show) [[a, b, f a b] | a <- bools, b <- bools]
    where
        bools = [True, False] 

