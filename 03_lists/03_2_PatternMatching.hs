stdMatch :: Show a => [a] -> String
stdMatch []     = "Match emtpy list"
stdMatch (x:xs) = "Match list with a head " ++ show x

-- $ > stdMatch []
-- $ "Match emtpy list"

-- $ > stdMatch [1,2,3]
-- $ "Match list with a head 1"


-- The following two functions are equivalent
ml1 :: Show a => [a] -> String
ml1 [x] = "Matched list with one element" ++ show x
ml1 [x,y] = "Matched List with two elements"

ml2 :: Show a => [a] -> String
ml2 (x:[]) = "Matched list with one element" ++ show x
ml2 (x:y:[]) = "Matched List with two elements"

-- $ > ml1 [1]
-- $ "Matched list with one element1"
-- $ > ml1 [1,2]
-- $ "Matched List with two elements"
-- $ > ml1 [1,2,3]
-- $ "*** Exception: 03_2_PatternMatching.hs:(14,1)-(15,44): Non-exhaustive patterns in function ml1
