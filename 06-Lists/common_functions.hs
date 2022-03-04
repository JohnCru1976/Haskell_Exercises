{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Redundant bracket" #-}
{-# HLINT ignore "Use infix" #-}
main::IO()
main = do
    -- !! operator: access a particular element of a list by its index
    print([1,2,3]!!1) -- Returns 2
    print("puppies" !! 3) -- Returns 'p'
    print((!!) [1,2,3] 1) -- Returns '2' (use as infix function)
    print(infixExample1 3) -- Partial application, returns 'l'
    print(infixExample2 3) -- Partial application, returns 'l'
    print(infixExample3 "hello") -- Partial application, returns 'l'
    -- LENGTH
    print(length[1..20]) -- Returns 20
    print(length "hello") -- Returns 5
    -- REVERSE
    print(reverse [1,2,3])  -- Returns [3,2,1]
    print(reverse "cheese") -- Returns "eseehc"
    print(isPalindrome "cheese") -- Returns false
    print(isPalindrome "racecar") -- Returns true
    print(isPalindrome  [1,2,1]) -- Returns true
    -- ELEM Takes a value and a a list and checks whether the value is in the list
    print(13 `elem` [0,13..100]) -- Returns true
    print('p' `elem` "cheese") -- Returns false
    print((elem) 'p' "cheese") -- Use of infix - Not recommended
    -- TAKES returns the n first elements of a list
    print(take 5 "wonderful") -- Returns "wonde"
    print(take 3 [1,5..100]) -- Returns [1,5,10]
    print(take 8 "hello") -- Returns "hello"  - Parameter is bigger than the length
    print(reverse(take 3 (reverse "hello"))) -- Returns "llo" - Take Reverse combination
    -- DROP Removes the first n elements of a list
    print(drop 5 "wonderful") -- Returns "rful"
    print(drop 3 [1,2..10]) -- Returns [6,8,10]
    print(drop 8 "hello") -- Returns ""  - Parameter is bigger than the length


-- Use of PARTIAL APPLICATION with INFIX OPERATORS
infixExample1 = (!!) "hello" -- Partial application
infixExample2 = ("hello" !!) -- This is called section
infixExample3 = (!! 3) -- This is called a section

-- PALINDROME FUNCTION EXAMPLE (REVERSE)
isPalindrome word = word == reverse word
