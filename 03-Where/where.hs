main :: IO()
main = do    
    print(calcChange 200 100)
    print(lambdaCalChange 100 200)

calcChange owed given = if change  > 0
                        then change 
                        else 0
    where change = given - owed

lambdaCalChange = (\owed given ->
                    if given - owed > 0
                    then given - owed
                    else 0)