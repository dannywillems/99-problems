-- Without using the standard library. Only pattern matching.

myButLast :: [a] -> a
myButLast [] = error "Empty list"
myButLast [x] = error "Need at least two elements"
myButLast [x, y] = x
myButLast (x : xs) = myButLast xs

-- Using standard library about lists.
myButLast2 :: [a] -> a
myButLast2 xs = head (tail reversed_list)
                where reversed_list = reverse xs
