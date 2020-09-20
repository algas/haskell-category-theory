module Chap6.FunctorProof where

-- | fmap proof
-- >>> fmap id Nothing
-- Nothing
-- >>> id Nothing
-- Nothing
-- >>> fmap id (Just "a")
-- Just "a"
-- >>> id (Just "a")
-- Just "a"
-- >>> let f x = x + 1
-- >>> let g x = x * 2
-- >>> fmap (g . f) Nothing
-- Nothing
-- >>> (fmap g . fmap f) Nothing
-- Nothing
-- >>> fmap (g . f) (Just 3)
-- Just 8
-- >>> (fmap g . fmap f) (Just 3)
-- Just 8

data List a = Nil | Cons a (List a) deriving (Eq, Show, Read)

instance Functor List where
    fmap _ Nil = Nil
    fmap f (Cons h t) = Cons (f h) (fmap f t)

-- | fmap List
-- >>> fmap (+3) (Cons 3 (Cons 4 (Cons 5 Nil)))
-- Cons 6 (Cons 7 (Cons 8 Nil))
