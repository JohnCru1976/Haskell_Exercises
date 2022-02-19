-- This code is an example of use SORT and SORTBY functions
-- Special values GT (Greater Than), LT (Less Than), EQ (Equal)
import Data.List
main :: IO()

main = do
    print(sort names) -- We use SORT to sort by the first element of each tuple
    -- Output: [("Bernard","Sumner"),("Ian","Curtis"),("Peter","Hook"),("Stephen","Morris")]
    print(sortBy compareLastNames names) -- We use SORTBY to sort according to a passed function
    -- Output: [("Ian","Curtis"),("Peter","Hook"),("Stephen","Morris"),("Bernard","Sumner")]


-- This is an array of tuples we are sorting
names = [("Ian","Curtis"),("Bernard","Sumner"),("Peter","Hook"),("Stephen","Morris")]

-- This is a function to sort by last names
compareLastNames name1 name2 = if lastName1 > lastName2
                              then GT      -- Greater Than
                              else if lastName1 < lastName2 -- else if
                                  then LT  -- Less Than
                                  else EQ  -- Equal
  where lastName1 = snd name1
        lastName2 = snd name2
                                      