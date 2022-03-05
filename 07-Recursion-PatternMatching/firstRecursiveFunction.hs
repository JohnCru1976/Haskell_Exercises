main::IO()
main = do
    print(myGCD 20 16)

-- Example of a recursion function
-- Euclid's algorithm - Greatest Common Divisor

myGCD a b = if remainder == 0 -- 1) Goal condition
            then b            -- 2) Goal state
            else myGCD b remainder -- 4) Rinse and repeat
    where remainder = a `mod` b
