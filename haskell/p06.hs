-- Find out whether a list is a palindrome. A palindrome can be read forward or backward; e.g. (x a m a x). 

n_equal :: (Eq a) => [a] -> [a] -> Int -> Bool
n_equal [] [] _ = True
n_equal [] l n = if n == 0 then True else False
n_equal l [] n = n_equal [] l n
n_equal (x : xs) (y : ys) n = if n <= 0
                              then True
                              else x == y && (n_equal xs ys (n - 1))

myPalindrome :: (Eq a) => [a] -> Bool
myPalindrome l = n_equal l (reverse l) ((length l) `div` 2)
