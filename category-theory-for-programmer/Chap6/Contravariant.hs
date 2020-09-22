{-# LANGUAGE InstanceSigs #-}
module Chap6.Contravariant where

class Contravariant f where
    contramap :: (a -> b) -> f b -> f a

newtype Writer c a = Writer { getWriter :: a -> c }

instance Contravariant (Writer c) where
    contramap :: (a -> b) -> Writer c b -> Writer c a
    contramap f (Writer g) = Writer (g . f)

even' = contramap (length :: String -> Int) (Writer even)

smap' = ["Takuya", "Goro", "Hiroaki", "Singo"]

-- | Identity
-- >>> getWriter even' "Taro"
-- True
-- >>> getWriter even' <$> smap'
-- [True,True,False,False]
