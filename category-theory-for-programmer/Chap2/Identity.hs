module Chap2.Identity where

identity :: [a] -> [(a,a)]
identity = map (\x -> (x, x))

-- | identity
-- >>> identity [1,2]
-- [(1,1),(2,2)]
