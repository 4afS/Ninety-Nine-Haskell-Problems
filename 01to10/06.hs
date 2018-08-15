main = do
    print $ isPalindrome "HellolleH"
    print $ isPalindrome "Hello"
    print $ isPalindrome' "HellolleH"
    print $ isPalindrome' "Hello"

isPalindrome :: Eq a => [a] -> Bool
isPalindrome xs = xs == reverse xs

isPalindrome' :: Eq a => [a] -> Bool
isPalindrome' [_] = True
isPalindrome' (x:xs) = x == last xs && isPalindrome' (init xs)
