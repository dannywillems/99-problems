-- Eliminate consecutive duplicates of list elements.

-- If a list contains repeated elements they should be replaced with a single
-- copy of the element. The order of the elements should not be changed.

compress :: (Eq a) => [a] -> [a]

compress_aux :: (Eq a) => [a] -> [a] -> [a]
compress_aux [] buf = buf
compress_aux (x : xs) buf = if elem x buf
                            then compress_aux xs buf
                            else compress_aux xs (x : buf)

compress xs = reverse (compress_aux xs [])
