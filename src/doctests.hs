import Test.DocTest

main = doctest
    [ "-isrc"
    , "src/SafeHead.hs"
    , "src/MaybeEither.hs"
    , "src/Product.hs"
    , "src/Coproduct.hs"
    ]
