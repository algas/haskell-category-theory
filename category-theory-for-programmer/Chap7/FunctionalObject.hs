module Chap7.FunctionalObject where

dbl :: (Num b) => (a -> b) -> a -> b
dbl f a = f a * 2

-- | dbl
-- >>> dbl length "abc"
-- 6
-- >>> dbl sqrt 4
-- 4.0

f :: Floating a => a -> a
f x = x ** 2

-- | f
-- >>> f 2
-- 4.0
-- >>> f 5
-- 25.0

ff :: Num a => (a, a) -> a
ff (x, y) = x * y

-- | ff
-- >>> ff (3, 4)
-- 12

f0 a = case a of
    1 -> True
    2 -> True
    3 -> True
    _ -> error "Not Assigned"

f1 a = case a of
    1 -> True
    2 -> True
    3 -> False
    _ -> error "Not Assigned"

f2 a = case a of
    1 -> True
    2 -> False
    3 -> True
    _ -> error "Not Assigned"

f3 a = case a of
    1 -> True
    2 -> False
    3 -> False
    _ -> error "Not Assigned"

f4 a = case a of
    1 -> False
    2 -> True
    3 -> True
    _ -> error "Not Assigned"

f5 a = case a of
    1 -> False
    2 -> True
    3 -> False
    _ -> error "Not Assigned"

f6 a = case a of
    1 -> False
    2 -> False
    3 -> True
    _ -> error "Not Assigned"

f7 a = case a of
    1 -> False
    2 -> False
    3 -> False
    _ -> error "Not Assigned"

-- h :: z -> a -> b
h z = case z of
    "f'0" -> f0
    "f'1" -> f1
    "f'2" -> f2
    "f'3" -> f3
    "f'4" -> f4
    "f'5" -> f5
    "f'6" -> f6
    "f'7" -> f7
    _ -> error "Not Assigned."

-- g :: (z, a) -> b
g (z, a) = eval (h z, a)

eval (f, a) = f a

-- | g
-- >>> g ("f'1", 1)
-- True
-- >>> g ("f'1", 2)
-- True
-- >>> g ("f'1", 3)
-- False
