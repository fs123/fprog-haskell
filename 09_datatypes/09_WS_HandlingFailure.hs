safeHead :: [a] -> Maybe a
safeHead []     = Nothing
safeHead (x:xs) = Just x

safeTail :: [a] -> Maybe [a]
safeTail []     = Nothing
safeTail (x:xs) = Just xs

safeMax :: (Ord a) => [a] -> Maybe a
safeMax []     = Nothing
safeMax (x:xs) = Just (max x xs)
  where max currentMax []     = currentMax
        max currentMax (y:ys) | currentMax >= y = max currentMax ys
                              | otherwise       = max y ys

safeMax':: (Ord a) => [a] -> Maybe a
safeMax' [] = Nothing
safeMax' (x:[]) = Just x
safeMax' (a:b:as) | a > b = safeMax' (a:as)
                  | otherwise = safeMax' (b:as)
