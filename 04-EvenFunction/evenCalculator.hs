main :: IO()
main = do  
  print(isEven 4)
  print(isEven 4)

isEven n = if (n `mod` 2) == 0
           then n - 2
           else 3*n + 1

isEven2 n = if even n
            then n - 2
            else 3*n + 1