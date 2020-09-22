{-# LANGUAGE InstanceSigs #-}
module Chap6.Profunctor where

import Data.Bifunctor
-- class Bifunctor (p :: * -> * -> *) where
--     bimap :: (a -> b) -> (c -> d) -> p a c -> p b d
--     first :: (a -> b) -> p a c -> p b c
--     second :: (b -> c) -> p a b -> p a c

-- instance Bifunctor (,) where
--     bimap f g (a, b) = (f a, g b)

-- instance Bifunctor Either where
--     bimap f _ (Left a) = Left (f a)
--     bimap _ g (Right b) = Right (g b)

-- | Bifunctor
-- >>> a = bimap (*3) length
-- >>> a (5, "Bifunctor")
-- (15,9)
-- >>> a (Left 5)
-- Left 15
-- >>> a (Right "FooBar")
-- Right 6

class Profunctor f where
    dimap :: (a -> b) -> (c -> d) -> f b c -> f a d

instance Profunctor (->) where
    dimap :: (a -> b) -> (c -> d) -> (b -> c) -> (a -> d)
    dimap f g h = g . h . f

-- | Profunctor
-- >>> p = dimap length odd (`div` 2)
-- >>> p "XXX"
-- True
