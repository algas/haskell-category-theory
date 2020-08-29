module HomFunctors where

{-
class Functor f where
    fmap :: (a -> b) -> f a -> f b

instance Functor ((->) r) where
    fmap = (.)

instance Functor ((,) a) where
    fmap f (x,y) = (x, f y)
-}

class Contra f where
    pamf :: (a -> b) -> f b -> f a

newtype Moh b a = Moh { getHom :: a -> b }

instance Contra (Moh b) where
    pamf f (Moh g) = Moh (g . f)

newtype Riap b a = Riap { getPair :: (a,b) }

instance Functor (Riap b) where
    fmap f (Riap (x,y)) = Riap (f x,y)
