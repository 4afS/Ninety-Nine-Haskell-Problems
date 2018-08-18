import System.Random

main = diffselect 6 49 >>= print 

diffselect :: Int -> Int -> IO [Int]
diffselect n range = take n . randomRs(1, range) <$> getStdGen
