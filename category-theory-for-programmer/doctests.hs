import Test.DocTest

main = doctest
    [ "-isrc"
    , "category-theory-for-programmer/Chap2/Times2.hs"
    , "category-theory-for-programmer/Chap2/Mod3.hs"
    , "category-theory-for-programmer/Chap2/Morphism.hs"
    , "category-theory-for-programmer/Chap2/MorphingA.hs"
    , "category-theory-for-programmer/Chap2/Identity.hs"
    , "category-theory-for-programmer/Chap6/FunctorProof.hs"
    , "category-theory-for-programmer/Chap6/FunctorCompose.hs"
    ]
