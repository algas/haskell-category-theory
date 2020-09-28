module Chap7.TypeTheory where

-- Object A, B, C
-- A: {A, B}
-- B: {1, 2, 3}
-- C: {True, False}
-- A^{B*C} = A^B * A^C
-- Either b c -> a ~ (b -> a, c -> a)

f1 a
    | a == Left 'A' = True
    | a == Left 'B' = True
    | a == Right 1 = True
    | a == Right 2 = True
    | a == Right 3 = True
    | otherwise = error "not assigned"

f2 a
    | a == Left 'A' = True
    | a == Left 'B' = True
    | a == Right 1 = True
    | a == Right 2 = True
    | a == Right 3 = False
    | otherwise = error "not assigned"

f3 a
    | a == Left 'A' = True
    | a == Left 'B' = True
    | a == Right 1 = True
    | a == Right 2 = False
    | a == Right 3 = True
    | otherwise = error "not assigned"

f4 a
    | a == Left 'A' = True
    | a == Left 'B' = True
    | a == Right 1 = True
    | a == Right 2 = False
    | a == Right 3 = False
    | otherwise = error "not assigned"

f5 a
    | a == Left 'A' = True
    | a == Left 'B' = True
    | a == Right 1 = False
    | a == Right 2 = True
    | a == Right 3 = True
    | otherwise = error "not assigned"

f6 a
    | a == Left 'A' = True
    | a == Left 'B' = True
    | a == Right 1 = False
    | a == Right 2 = True
    | a == Right 3 = False
    | otherwise = error "not assigned"

f7 a
    | a == Left 'A' = True
    | a == Left 'B' = True
    | a == Right 1 = False
    | a == Right 2 = False
    | a == Right 3 = True
    | otherwise = error "not assigned"

f8 a
    | a == Left 'A' = True
    | a == Left 'B' = True
    | a == Right 1 = False
    | a == Right 2 = False
    | a == Right 3 = False
    | otherwise = error "not assigned"

f9 a
    | a == Left 'A' = True
    | a == Left 'B' = False
    | a == Right 1 = True
    | a == Right 2 = True
    | a == Right 3 = True
    | otherwise = error "not assigned"

f10 a
    | a == Left 'A' = True
    | a == Left 'B' = False
    | a == Right 1 = True
    | a == Right 2 = True
    | a == Right 3 = False
    | otherwise = error "not assigned"

f11 a
    | a == Left 'A' = True
    | a == Left 'B' = False
    | a == Right 1 = True
    | a == Right 2 = False
    | a == Right 3 = True
    | otherwise = error "not assigned"

f12 a
    | a == Left 'A' = True
    | a == Left 'B' = False
    | a == Right 1 = True
    | a == Right 2 = False
    | a == Right 3 = False
    | otherwise = error "not assigned"

f13 a
    | a == Left 'A' = True
    | a == Left 'B' = False
    | a == Right 1 = False
    | a == Right 2 = True
    | a == Right 3 = True
    | otherwise = error "not assigned"

f14 a
    | a == Left 'A' = True
    | a == Left 'B' = False
    | a == Right 1 = False
    | a == Right 2 = True
    | a == Right 3 = False
    | otherwise = error "not assigned"

f15 a
    | a == Left 'A' = True
    | a == Left 'B' = False
    | a == Right 1 = False
    | a == Right 2 = False
    | a == Right 3 = True
    | otherwise = error "not assigned"

f16 a
    | a == Left 'A' = True
    | a == Left 'B' = False
    | a == Right 1 = False
    | a == Right 2 = False
    | a == Right 3 = False
    | otherwise = error "not assigned"

f17 a
    | a == Left 'A' = False
    | a == Left 'B' = True
    | a == Right 1 = True
    | a == Right 2 = True
    | a == Right 3 = True
    | otherwise = error "not assigned"

f18 a
    | a == Left 'A' = False
    | a == Left 'B' = True
    | a == Right 1 = True
    | a == Right 2 = True
    | a == Right 3 = False
    | otherwise = error "not assigned"

f19 a
    | a == Left 'A' = False
    | a == Left 'B' = True
    | a == Right 1 = True
    | a == Right 2 = False
    | a == Right 3 = True
    | otherwise = error "not assigned"

f20 a
    | a == Left 'A' = False
    | a == Left 'B' = True
    | a == Right 1 = True
    | a == Right 2 = False
    | a == Right 3 = False
    | otherwise = error "not assigned"

f21 a
    | a == Left 'A' = False
    | a == Left 'B' = True
    | a == Right 1 = False
    | a == Right 2 = True
    | a == Right 3 = True
    | otherwise = error "not assigned"

f22 a
    | a == Left 'A' = False
    | a == Left 'B' = True
    | a == Right 1 = False
    | a == Right 2 = True
    | a == Right 3 = False
    | otherwise = error "not assigned"

f23 a
    | a == Left 'A' = False
    | a == Left 'B' = True
    | a == Right 1 = False
    | a == Right 2 = False
    | a == Right 3 = True
    | otherwise = error "not assigned"

f24 a
    | a == Left 'A' = False
    | a == Left 'B' = True
    | a == Right 1 = False
    | a == Right 2 = False
    | a == Right 3 = False
    | otherwise = error "not assigned"

f25 a
    | a == Left 'A' = False
    | a == Left 'B' = False
    | a == Right 1 = True
    | a == Right 2 = True
    | a == Right 3 = True
    | otherwise = error "not assigned"

f26 a
    | a == Left 'A' = False
    | a == Left 'B' = False
    | a == Right 1 = True
    | a == Right 2 = True
    | a == Right 3 = False
    | otherwise = error "not assigned"

f27 a
    | a == Left 'A' = False
    | a == Left 'B' = False
    | a == Right 1 = True
    | a == Right 2 = False
    | a == Right 3 = True
    | otherwise = error "not assigned"

f28 a
    | a == Left 'A' = False
    | a == Left 'B' = False
    | a == Right 1 = True
    | a == Right 2 = False
    | a == Right 3 = False
    | otherwise = error "not assigned"

f29 a
    | a == Left 'A' = False
    | a == Left 'B' = False
    | a == Right 1 = False
    | a == Right 2 = True
    | a == Right 3 = True
    | otherwise = error "not assigned"

f30 a
    | a == Left 'A' = False
    | a == Left 'B' = False
    | a == Right 1 = False
    | a == Right 2 = True
    | a == Right 3 = False
    | otherwise = error "not assigned"

f31 a
    | a == Left 'A' = False
    | a == Left 'B' = False
    | a == Right 1 = False
    | a == Right 2 = False
    | a == Right 3 = True
    | otherwise = error "not assigned"

f32 a
    | a == Left 'A' = False
    | a == Left 'B' = False
    | a == Right 1 = False
    | a == Right 2 = False
    | a == Right 3 = False
    | otherwise = error "not assigned"

g1 a
    | a == 'A' = True
    | a == 'B' = True
    | otherwise = error "not assigned"

g2 a
    | a == 'A' = True
    | a == 'B' = False
    | otherwise = error "not assigned"

g3 a
    | a == 'A' = False
    | a == 'B' = True
    | otherwise = error "not assigned"

g4 a
    | a == 'A' = False
    | a == 'B' = False
    | otherwise = error "not assigned"

h1 a
    | a == 1 = True
    | a == 2 = True
    | a == 3 = True
    | otherwise = error "not assigned"

h2 a
    | a == 1 = True
    | a == 2 = True
    | a == 3 = False
    | otherwise = error "not assigned"

h3 a
    | a == 1 = True
    | a == 2 = False
    | a == 3 = True
    | otherwise = error "not assigned"

h4 a
    | a == 1 = True
    | a == 2 = False
    | a == 3 = False
    | otherwise = error "not assigned"

h5 a
    | a == 1 = False
    | a == 2 = True
    | a == 3 = True
    | otherwise = error "not assigned"

h6 a
    | a == 1 = False
    | a == 2 = True
    | a == 3 = False
    | otherwise = error "not assigned"

h7 a
    | a == 1 = False
    | a == 2 = False
    | a == 3 = True
    | otherwise = error "not assigned"

h8 a
    | a == 1 = False
    | a == 2 = False
    | a == 3 = False
    | otherwise = error "not assigned"

p1 a b = (g1 a, h1 b)
p2 a b = (g1 a, h2 b)
p3 a b = (g1 a, h3 b)
p4 a b = (g1 a, h4 b)
p5 a b = (g1 a, h5 b)
p6 a b = (g1 a, h6 b)
p7 a b = (g1 a, h7 b)
p8 a b = (g1 a, h8 b)
p9 a b = (g2 a, h1 b)
p10 a b = (g2 a, h2 b)
p11 a b = (g2 a, h3 b)
p12 a b = (g2 a, h4 b)
p13 a b = (g2 a, h5 b)
p14 a b = (g2 a, h6 b)
p15 a b = (g2 a, h7 b)
p16 a b = (g2 a, h8 b)
p17 a b = (g3 a, h1 b)
p18 a b = (g3 a, h2 b)
p19 a b = (g3 a, h3 b)
p20 a b = (g3 a, h4 b)
p21 a b = (g3 a, h5 b)
p22 a b = (g3 a, h6 b)
p23 a b = (g3 a, h7 b)
p24 a b = (g3 a, h8 b)
p25 a b = (g4 a, h1 b)
p26 a b = (g4 a, h2 b)
p27 a b = (g4 a, h3 b)
p28 a b = (g4 a, h4 b)
p29 a b = (g4 a, h5 b)
p30 a b = (g4 a, h6 b)
p31 a b = (g4 a, h7 b)
p32 a b = (g4 a, h8 b)

-- | f, g, h
-- >>> f27 (Left 'A')
-- False
-- >>> f27 (Right 1)
-- True
-- >>> p27 'A' 1
-- (False,True)

