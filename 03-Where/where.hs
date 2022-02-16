main :: IO()
main = do    
    print(calcChange 100 200)

calcChange owed given = if change  > 0
                        then change 
                        else 0
    where change = given - owed