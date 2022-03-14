{-# OPTIONS_GHC -Wno-incomplete-patterns #-}
main::IO()
main = do
    print ()

-- FOLDR it to the same that foldl, but sum the init value at the end
-- DEFINITION of foldr
myFoldr f init [] = init
myFolfr f init (x:xs) = f x rightResult
    where rightResult = myFoldr f init xs