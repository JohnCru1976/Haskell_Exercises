{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Redundant bracket" #-}
{-# HLINT ignore "Use map" #-}
main::IO()
main = do
    -- First example using the addAnA function
    print(myMap addAnA ["dog", "banana", "car"])
    -- In this exaple I'm passing the function directly
    print(myMap ("a " ++) ["dog", "banana", "car"])
-- This is the definition of map function
-- Map higher-order function is an abstraction of this pattern
-- f is a first-class function - a callback
myMap f [] = []
myMap f (x:xs) = (f x):myMap f xs
-- Here I'm making an example of a function that I'll use after, on the main section
addAnA = (++) "a "