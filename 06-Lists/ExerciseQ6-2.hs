main::IO()
main = do
    print(subseq 2 5 [1 .. 10]) -- Returns [3,4,5]
    print(subseq 2 7 "a puppy") -- Returns "puppy"

-- EXERCISE Q6.2 Write a function subseq that takes three arguments: a start position,
-- an end position, and a list. The function should return the subsequence 
-- between the start and end

subseq a b seq = drop a (take b seq)
