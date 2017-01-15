elementAt :: [a] -> Int -> a

elementAt [] n = error "Empty list or n greater than the size of the list"
elementAt (x : xs) n = if n < 0
                       then error "The second argument must be positive or equal to zero"
                       else if n == 0 then x else elementAt xs (n - 1)
