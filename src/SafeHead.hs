module SafeHead where

import Data.Functor.Const

mylength :: [b] -> Const Int b
mylength []     = Const 0
mylength (x:xs) = Const (1 + getConst (mylength xs))

-- | mylength
-- >>> mylength []
-- Const 0
--
-- >>> mylength [1,2,3]
-- Const 3
