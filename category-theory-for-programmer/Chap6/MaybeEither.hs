module Chap6.MaybeEither where

newtype Identity a = Identity a deriving (Eq, Show, Read)

instance Functor Identity where
    fmap f (Identity a) = Identity (f a)

-- | Identity
-- >>> a = Identity 4
-- >>> fmap (*3) a
-- Identity 12
-- >>> fmap (+6) a
-- Identity 10

newtype Const c a = Const c deriving (Eq, Show, Read)

instance Functor (Const c) where
    fmap f (Const c) = Const c

-- | Const
-- >>> b = Const 3
-- >>> fmap (*3) b
-- Const 3
-- >>> fmap (+6) b
-- Const 3

type Maybe' a = Either (Const () a) (Identity a)

-- | Maybe'
-- >>> a = Identity (3 :: Integer)
-- >>> a
-- Identity 3
-- >>> b = Right a :: Maybe' Integer
-- >>> b
-- Right (Identity 3)
-- >>> c = Const () :: Const () Integer
-- >>> c
-- Const ()
-- >>> d = Left c :: Maybe' Integer
-- >>> d
-- Left (Const ())
