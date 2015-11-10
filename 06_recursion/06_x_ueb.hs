--maxl :: (Ord a) => [a] -> a
bigger :: Ord a => a -> a -> a
bigger a b
    | a < b = b
    | otherwise = a

maxl :: (Ord a) => [a] -> a
maxl list = maxl' list start
              where start = head list

maxl' :: (Ord a) => [a] -> a -> a
maxl' [] m = m
maxl' (a:b) m
        | a < m     = maxl' b m
        | otherwise = maxl' b a


reverse' :: [a] -> [a]
reverse' (a:b) = reverseI' b [a]

reverseI' :: [a] -> [a] -> [a]
reverseI' [] c = c
reverseI' (a:b) c = reverseI' b newlist
          where newlist = a : c
