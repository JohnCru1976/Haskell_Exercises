main::IO()
main = do
    print(myGCD 20 16)
    print(multiply 5 25)
    print(factorial 5)
    print(fibonacci 1) -- 1 
    print(fibonacci 2) -- 1 
    print(fibonacci 3) -- 2
    print(fibonacci 4) -- 3
    print(fibonacci 5) -- 5
    print(fibonacci 6) -- 8
    print(fibonacci 7) -- 13

-- Example of a recursion function
-- Euclid's algorithm - Greatest Common Divisor

myGCD a b = if remainder == 0 -- 1) Goal condition
            then b            -- 2) Goal state
            else myGCD b remainder -- 4) Rinse and repeat
    where remainder = a `mod` b

-- Personal example: multiply two numbers
multiply a b = if b == 0
               then 0
               else a + multiply a (b-1)

-- Personal example: factorial
factorial a = if a <= 0
              then 1
              else a * factorial (a-1)

-- Personal example: fibonacci
fibonacci a
  | a <= 2 = 1
  | a == 1 = 0
  | otherwise = fibonacci (a-1) + fibonacci (a-2)
