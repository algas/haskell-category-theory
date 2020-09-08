module Chap2.MorphingA where

morphism_ :: [a] -> [b] -> [[b]]
morphism_ _ [] = []
morphism_ [] ys = [ys]
morphism_ [x] (y:ys) = [y] : morphism_ [x] ys
morphism_ (x:xs) ys = addRep_ ys $ morphism_ xs ys

addRep_ :: [b] -> [[b]] -> [[b]]
addRep_ [] _ = []
addRep_ _ [] = []
addRep_ (y:ys) (l:ls) = (y:l) : addRep_ [y] ls ++ addRep_ ys (l:ls)

morphism :: (Num b, Num a, Enum b, Enum a) => a -> b -> [[b]]
morphism m n = morphism_ [1..m] [1..n]

morphism0 :: (Num a, Enum a) => a -> [[a]]
morphism0 = morphism 0

-- | morphism0
-- >>> morphism0 1
-- [[1]]
-- >>> morphism0 2
-- [[1,2]]

morphism1 :: (Num a, Enum a) => a -> [a]
morphism1 = toPair1 . morphism 1
    where
        toPair1 = map head

-- | morphism1
-- >>> morphism1 1
-- [1]
-- >>> morphism1 2
-- [1,2]

morphism2 :: (Num a, Enum a) => a -> [(a,a)]
morphism2 = toPair2 . morphism 2
    where
        toPair2 = map (\f -> (head f, f !! 1))

-- | morphism2
-- >>> morphism2 1
-- [(1,1)]
-- >>> morphism2 2
-- [(1,1),(1,2),(2,1),(2,2)]
-- >>> morphism2 2
-- [(1,1),(1,2),(2,1),(2,2)]
