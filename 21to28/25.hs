-- ?

import System.Random

main = rndPermu "abcdef" >>= print

rndPermu :: [a] -> IO [a]
rndPermu xs = rndSelect xs (length xs)

rndSelect :: [a] -> Int -> IO [a]
rndSelect xs n = do
    gen <- getStdGen
    return $ take n [ xs !! x | x <- randomRs (0, length xs - 1) gen]
