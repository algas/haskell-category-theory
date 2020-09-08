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
