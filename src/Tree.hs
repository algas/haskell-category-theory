module Tree where
import Data.Char

data Tree a = Empty | Node a (Tree a) (Tree a)

instance (Show a) => Show (Tree a) where
    show = show1 0

show1 :: Show a => Int -> Tree a -> String
show1 _ Empty = ""
show1 n (Node x t1 t2) =
    show1 (n+1) t2
    ++ indent n ++ show x ++ "\n"
    ++ show1 (n+1) t1

indent :: Int -> String
indent n = replicate (n*4) ' '

instance Functor Tree where
    fmap f Empty = Empty
    fmap f (Node x t1 t2) =
        Node (f x) (fmap f t1) (fmap f t2)
