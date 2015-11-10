
a)
filter (\w -> (length w) > 3) (words (Map toLower "Select * From WhatEver"))

b)
rateWord :: String -> Int
rateWord w
         | (elem w sqlKeyWords) = 5
         | otherwise            = -2

c)
rateWords :: [String] -> Int
rateWords list = sum ( map rateWord list )

d)
isSQL :: String -> Bool
isSQL s = (rateWords (normalize s)) > 0
