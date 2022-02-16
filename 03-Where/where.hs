main :: IO()
main = do    
    print(calcChange 100 200)
    print(calcChange 200 100)

calcChange owed given = if change  > 0
                        then change 
                        else 0
    where change = given - owed