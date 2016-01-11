maxl :: (Ord a) => [a] -> a
maxl []     = error "empty list is not allowed."
maxl (x:[]) = x
maxl (x:xs) | m > x     = m
            | otherwise = x
            where m = maxl xs

reverse' :: [a] -> [a]
reverse' []     = []
reverse' (x:xs) = (reverse' xs) ++ [x]

-- Evaluieren Sie schrittweise reverse' [1,2,3]
-- reverse' [1,2,3]
-- (reverse' [2,3]) ++ [1]
-- ((reverse' [3]) ++ [2]) ++ [1]
-- (((reverse' []) ++ [3]) ++ [2]) ++ [1]
-- ((([]) ++ [3]) ++ [2]) ++ [1]
-- (([3]) ++ [2]) ++ [1]
-- ([3, 2]) ++ [1]
-- [3, 2, 1]

alternate :: [a] -> [a] -> [a]
alternate [] [] = []
alternate (x:xs) (i:ix) = x : i : alternate xs ix
alternate _ _ = error "illegal argument"

alternate' :: [a] -> [a] -> [a]
alternate' [] sl = sl
alternate' (x:fl) sl = x : alternate' sl fl
