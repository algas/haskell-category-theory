module Chap10.Program where

import Prelude hiding (Monad, (>>=), (.), return, (>=>))

(.) :: (b -> c) -> (a -> b) -> (a -> c)
g . f = \a -> let b = f a
              in g b

(>=>) :: (Monad m) => (a -> m b) -> (b -> m c) -> (a -> m c)
f >=> g = \a -> let mb = f a
                in mb >>= g

class Monad m where
    (>>=) :: m a -> (a -> m b) -> m b
    return :: a -> m a

instance Monad [] where
    [a] >>= g = g a
    return a = [a]
