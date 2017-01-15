-- Check whether a given term represents a binary tree 

-- Typechecker does it.

data Tree a = Empty | Node a (Tree a) (Tree a)
istree :: Tree a -> Bool
istree x = True
