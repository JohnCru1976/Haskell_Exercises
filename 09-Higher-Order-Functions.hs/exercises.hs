{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use any" #-}
{-# HLINT ignore "Use null" #-}
main::IO()
main = do
    print ()

-- Q9.1 Use filter and length to re-create the elem function
myElem x xs = not (length xs == 0 || filter x xs /= [])
              