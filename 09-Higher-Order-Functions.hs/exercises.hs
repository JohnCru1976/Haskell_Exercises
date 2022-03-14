{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use null" #-}
{-# HLINT ignore "Use any" #-}
main::IO()
main = do
    print (myElem 4 [1,2,3,4])

-- Q9.1 Use filter and length to re-create the elem function
myElem a xs = not (length xs == 0 || filter (== a) xs /= [])
              