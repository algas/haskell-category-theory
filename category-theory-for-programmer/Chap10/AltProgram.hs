module Chap10.AltProgram where

import Prelude hiding (Monad, (>>=), (.), (>=>), join, return)

(>=>) :: (Monad m) => (a -> m b) -> (b -> m c) -> (a -> m c)
f >=> g = \a -> let mb = f a
                in mb >>= g

(>>=) :: (Monad m) => m a -> (a -> m b) -> m b
ma >>= f = join (fmap f ma)

class Functor m => Monad m where
    join :: m (m a) -> m a
    return :: a -> m a

instance Monad [] where
    join [[a]] = [a]
    return a = [a]
