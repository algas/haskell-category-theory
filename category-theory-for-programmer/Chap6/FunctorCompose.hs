module Chap6.FunctorCompose where

-- data [ ] a = [ ] | a : [a]
-- instance Functor [ ] where
--     fmap :: (a -> b) -> [a] -> [b]

safeTail :: [a] -> Maybe [a]
safeTail [] = Nothing
safeTail (x:xs) = Just xs

safeHead :: [a] -> Maybe a
safeHead [] = Nothing
safeHead (x:xs) = Just x

f :: Int -> Int
f x = x * x

g :: [Int] -> [Int]
g = fmap f

h :: Maybe [Int] -> Maybe [Int]
h = fmap g

-- | Functor composition
-- >>> h Nothing
-- Nothing
-- >>> h (Just [1,2,3])
-- Just [1,4,9]


