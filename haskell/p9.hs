-- Pack consecutive duplicates of list elements into sublists. If a list
-- contains repeated elements they should be placed in separate sublists.

pack :: (Eq a) => [a] -> [[a]]

computeTail :: (Eq a) => a -> [a] -> Int -> (Int, [a])
computeTail a [] n = (n, [])
computeTail a (x : xs) n = if a == x
                           then computeTail a xs (n + 1)
                           else (n, (x : xs))

pack [] = []
pack (x : xs) = (replicate n x) : (pack tailNoDup)
                where (n, tailNoDup) = computeTail x xs 1

-- pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e']
