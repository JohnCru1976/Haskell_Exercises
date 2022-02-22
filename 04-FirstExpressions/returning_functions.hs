import Distribution.TestSuite (TestInstance(name))
main::IO()
main = do
    -- First solution (incomplete)
    print (addressLetter_v1 sfOffice member);
    print (addressLetter_v1 nyOffice member);
    print (addressLetter_v1 renoOffice member);
    -- Second solution (final version)
    print (addressLetter_v2 member "sf");
    print (addressLetter_v2 member "ny");
    print (addressLetter_v2 member "reno");
    print (addressLetter_v2 member "dc");

member = ("Vicente","Morales")
-- The next functions receive a tuple as parametrer (name,lastname)
-- Fisrt function returns member + address depending the last name starting with L or later
sfOffice name = if lastName < "L" -- The last name starts with letter lower than L
                then nameText
                     ++ " - PO Box 1234 - San Francisco, CA, 94111"
                else nameText
                     ++ " - PO Box 1010 - San Francisco, CA, 94109"
    where lastName = snd name
          nameText = fst name ++ " " ++ lastName
-- Second function returns the name followed by a colon rather than a hyphen + address
nyOffice name = nameText ++ " : PO Box 789 - New York, NY, 10013"
    where nameText = fst name ++ " " ++ snd name
-- Third function returns only last names + address
renoOffice name = nameText ++ " - PO Box 456 - Reno, NV 89523"
    where nameText = snd name
-- Exercise Q4.2 Fourth function returns everyone's name followed by Esq
dcOffice name = nameText ++ "- PO Box 234 - Washington, DC 42356"
    where nameText = fst name ++ " " ++ snd name ++ ", Esq."

-- This would be a first solution. The problem is the function is going
-- to be a part of a larger web application
addressLetter_v1 location = location
-- We build a function that return the proper functions according a little string
-- "ny" for New York
-- "sf" for San Francisco
-- "reno" for Reno
getLocationFunction location = case location of -- Estructura CASE ... OF -> _ ->
    "ny" -> nyOffice
    "sf" -> sfOffice
    "reno" -> renoOffice
    "dc" -> dcOffice -- Exercise Q4.2
    _ -> (\name -> fst name ++ " " ++ snd name) -- _ wildcard (similar to default)
-- Now we can rebuild the function addressLetter_v1 to v2
addressLetter_v2 name location = let locationFunction = getLocationFunction location
                                 in locationFunction name
     
    
