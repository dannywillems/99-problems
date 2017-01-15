myLast :: [a] -> a
myLast [] = error "Empty list"
myLast [x] = x
mylast (x : xs) = myLast xs

myLast2 :: [a] -> a
myLast2 xs = head (reverse xs)

