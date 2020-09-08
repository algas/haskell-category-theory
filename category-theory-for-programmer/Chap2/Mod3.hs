module Chap2.Mod3 where

data Nat0 = Zero | Succ Nat0
    deriving (Read, Eq, Ord, Show)

toNat0 :: Int -> Nat0
toNat0 m
    | m == 0 = Zero
    | m > 0  = Succ $ toNat0 (m - 1)
    | otherwise = error "Not Natural Number"

fromNat0 :: Nat0 -> Int
fromNat0 Zero = 0
fromNat0 (Succ n) = 1 + fromNat0 n

mod3 :: Nat0 -> Nat0
mod3 Zero = Zero
mod3 (Succ Zero) = Succ Zero
mod3 (Succ (Succ Zero)) = Succ (Succ Zero)
mod3 (Succ (Succ (Succ m))) = mod3 m

-- | nat0 mod3
-- >>> fromNat0 . mod3 $ toNat0 0
-- 0
-- >>> fromNat0 . mod3 $ toNat0 1
-- 1
-- >>> fromNat0 . mod3 $ toNat0 2
-- 2
-- >>> fromNat0 . mod3 $ toNat0 3
-- 0
-- >>> fromNat0 . mod3 $ toNat0 4
-- 1
-- >>> fromNat0 . mod3 $ toNat0 5
-- 2
-- >>> fromNat0 . mod3 $ toNat0 6
-- 0

round' :: Double -> Int
round' m
    | m > 0 && m - fromIntegral (floor m) >= 0.5 = 1 + floor m
    | m >= 0 = floor m
    | m - fromIntegral (floor m) > 0.5 = 1 + floor m
    | otherwise = floor m

-- | round'
-- >>> round' (-3.6)
-- -4
-- >>> round' (-3.5)
-- -4
-- >>> round' (-3.4)
-- -3
-- >>> round' 3.6
-- 4
-- >>> round' 3.5
-- 4
-- >>> round' 3.4
-- 3

abs' :: Int -> Nat0
abs' m
    | m > 0 = toNat0 m
    | otherwise = toNat0 (-m)

-- | abs'
-- >>> abs' 2
-- Succ (Succ Zero)
-- >>> abs' (-2)
-- Succ (Succ Zero)

distance = abs' . round'

-- | distance
-- >>> distance (-3.4)
-- Succ (Succ (Succ Zero))
-- >>> distance (-3.5)
-- Succ (Succ (Succ (Succ Zero)))
