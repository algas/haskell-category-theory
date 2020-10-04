module Chap10.Kleisli where

import Chap10.Program as P
import Chap10.AltProgram as AP

f a = a + 2
g a = a * 3
h = g P.. f

-- | function combination
-- >>> h 5
-- 21
-- >>> h (-3)
-- -3

f' a = [a + 2]
g' a = [a * 3]
h' = f' P.>=> g'

-- | monad combination
-- >>> h' 5
-- [21]
-- >>> h' (-3)
-- [-3]

f'' a = [a + 2]
g'' a = [a * 3]
h'' = f'' AP.>=> g''

-- | monad combination
-- >>> h'' 5
-- [21]
-- >>> h'' (-3)
-- [-3]
