-- Construct completely balanced binary trees 

data Tree a = Empty | Node a (Tree a) (Tree a)

cbaltree :: Int -> [Tree Char]
cbaltree 0 = [Empty]
cbaltree 1 = [Node 'x' Empty Empty]
cbaltree 2 = [Node 'x' (Node 'x' Empty Empty) Empty, Node 'x' Empty (Node 'x' Empty Empty)]
