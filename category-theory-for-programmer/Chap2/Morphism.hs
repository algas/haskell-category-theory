module Chap2.Morphism where

data Domain = D1 | D2 | D3
    deriving (Read, Show)
data Codomain = CA | CB
    deriving (Read, Show)

type ArrowType = (Domain, Codomain)

codomains = [CA, CB]

morphism :: [(ArrowType, ArrowType, ArrowType)]
morphism = [((D1,d1), (D2,d2), (D3,d3)) | d1 <- codomains, d2 <- codomains, d3 <- codomains]

-- | morphism
-- >>> morphism
-- [((D1,CA),(D2,CA),(D3,CA)),((D1,CA),(D2,CA),(D3,CB)),((D1,CA),(D2,CB),(D3,CA)),((D1,CA),(D2,CB),(D3,CB)),((D1,CB),(D2,CA),(D3,CA)),((D1,CB),(D2,CA),(D3,CB)),((D1,CB),(D2,CB),(D3,CA)),((D1,CB),(D2,CB),(D3,CB))]
