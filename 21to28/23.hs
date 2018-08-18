import System.Random

main = rndSelect "abcdefgh" 3 >>= putStrLn

rndSelect xs n = do
    gen <- getStdGen
    return $ take n [ xs !! x | x <- randomRs (0, length xs - 1) gen]
