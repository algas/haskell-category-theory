module MaybeEither where

alpha :: Maybe a -> Either () a
alpha Nothing  = Left ()
alpha (Just x) = Right x

beta :: Either () a -> Maybe a
beta (Left ()) = Nothing
beta (Right x) = Just x

-- | natural isomorphism
-- >>> beta . alpha $ Just 100
-- Just 100
--
-- >>> beta . alpha $ Nothing
-- Nothing
--
-- >>> alpha . beta $ Right 100
-- Right 100
--
-- >>> alpha . beta $ Left ()
-- Left ()
--
