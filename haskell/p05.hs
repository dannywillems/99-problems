myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x : xs) = myReverse xs ++ [x]

myReverse2 :: [a] -> [a]
myReverse2 xs = reverse xs
