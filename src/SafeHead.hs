module SafeHead where

import Data.Functor.Const

safehead :: [a] -> Maybe a
safehead []     = Nothing
safehead (x:xs) = Just x

mylength :: [b] -> Const Int b
mylength []     = Const 0
mylength (x:xs) = Const (1 + getConst (mylength xs))

-- | mylength
-- >>> mylength []
-- Const 0
--
-- >>> mylength [1,2,3]
-- Const 3

-- | vertical composition
-- >>> safehead . concat . (map . map) length $ [["hello", "Bon jour"], ["Guten Tag"], ["abc", "def", "gh"]]
-- Just 5
--
-- >>> fmap length . safehead . concat $ [["hello", "Bon jour"], ["Guten Tag"], ["abc", "def", "gh"]]
-- Just 5
