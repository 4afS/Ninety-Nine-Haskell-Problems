data Element a = Multiple Int a
               | Single a

main = print $ decodeModified [Multiple 4 'a', Single 'b', Multiple 2 'c', Multiple 2 'a', Single 'd', Multiple 4 'e']

decodeModified :: [Element a] -> [a] 
decodeModified =  concatMap decoder
    where decoder (Multiple n a) = replicate n a
          decoder (Single a) = [a]
