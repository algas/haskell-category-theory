{-# LANGUAGE InstanceSigs #-}
module Chap6.FunctorReader where

newtype Reader r a = Reader { getName :: r -> a }

instance Functor (Reader r) where
    fmap :: (a -> b) -> Reader r a -> Reader r b
    fmap f (Reader g) = Reader (f . g)

first :: (a, a, a) -> a
first (x, _, _) = x

count :: Reader (String, String, String) Int
count = fmap (length :: String -> Int) (Reader first)

smap =[("Takuya","Omi","Kimura"),("Goro","Muraji","Inagaki"),("Hiroaki"," Tomonomiyakko","Nakai"),("Singo","Agatanusi","Katori")]

-- | Identity
-- >>> getName count ("Mike","Omuraji","Brooks")
-- 4
-- >>> getName count <$> smap
-- [6,4,7,5]
