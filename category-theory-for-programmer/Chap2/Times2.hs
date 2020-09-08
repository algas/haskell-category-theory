module Chap2.Times2 where

data Nat1 = One | Succ Nat1
    deriving (Read, Eq, Ord, Show)

toNat1 :: Int -> Nat1
toNat1 m
    | m == 1 = One
    | m > 0  = Succ $ toNat1 (m - 1)
    | otherwise = error "Not Natural Number"

fromNat1 :: Nat1 -> Int
fromNat1 One      = 1
fromNat1 (Succ n) = 1 + fromNat1 n

-- | nat1
-- >>> toNat1 1
-- One
-- >>> toNat1 2
-- Succ One
-- >>> toNat1 3
-- Succ (Succ One)
--
-- >>> fromNat1 $ toNat1 1
-- 1
-- >>> fromNat1 $ toNat1 2
-- 2
-- >>> fromNat1 $ toNat1 5
-- 5
--

plus :: Nat1 -> Nat1 -> Nat1
m `plus` One = Succ m
m `plus` Succ n = Succ (m `plus` n)

times2 :: Nat1 -> Nat1
times2 m = m `plus` m

-- | nat1 times2
-- >>> fromNat1 . times2 $ toNat1 1
-- 2
-- >>> fromNat1 . times2 $ toNat1 2
-- 4
-- >>> fromNat1 . times2 $ toNat1 4
-- 8
--
