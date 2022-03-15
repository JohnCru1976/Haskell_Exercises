{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
import           Data.Char
{-# HLINT ignore "Use null" #-}
{-# HLINT ignore "Use any" #-}
main::IO()
main = do
    print (myElem 4 [1,2,3,4])
    print (isPalindrome "A man a plan a canal Panama")

-- Q9.1 Use filter and length to re-create the elem function
myElem a xs = not (length xs == 0 || filter (== a) xs /= [])

-- Q9.2 Your isPalindrome function from lesson 6  doesn't handle sentences with spaces or capitals.
--      Use 'map' and 'filter' to make sure the phrase "A man a plan a canal Panama" is recognized as
--      a palindrome.
isPalindrome text = lowerText == reverse lowerText
   where noSpacesText = filter (/=' ') text
         lowerText = map toLower noSpacesText

