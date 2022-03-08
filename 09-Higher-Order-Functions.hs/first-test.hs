{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Eta reduce" #-}
import Distribution.Simple.Utils (xargs)
{-# HLINT ignore "Use map" #-}
main::IO()
main = do
    print(add3ToAll [1,2,3])
    print(add3ToAllV2 [1,2,3])
    print(add3ToAllV3 [1,2,3])
    print(mul3ByAll [1,2,3])
    print(mul3ByAllV2 [1,2,3])
    print(mul3ByAllV3 [1,2,3])

-- Examples with recursion
add3ToAll [] = []
add3ToAll (x:xs) = (3 + x):add3ToAll xs
mul3ByAll [] = []
mul3ByAll (x:xs) = (3 * x):mul3ByAll xs

-- Now I am trying to use higher-order function map
-- First I create the arithmetic functions
add3 n = n + 3
mul3 n = n * 3
-- Second I create the new function versions
add3ToAllV2 myList= map add3 myList
-- I can omit myList parameter
mul3ByAllV2 = map mul3

-- I can use directly the mathematic operations
add3ToAllV3 = map (+3)
mul3ByAllV3 = map (*3)


