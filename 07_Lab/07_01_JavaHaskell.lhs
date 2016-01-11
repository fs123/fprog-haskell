

> grades :: [(a, b)] -> [b]
> grades [] = []
> grades ((a, b) : xs) = b : grades xs

> grades' :: (Num a, Ord a) => [(a, b)] -> [b]
> grades' = map (\(a,b) -> b)

grades' list = map (\x -> snd x) list

> m2 :: [Int] -> [Int]
> m2 []     = []
> m2 (x:xs) = (x^2) : m2 xs

> m2' :: [Int] -> [Int]
> m2' = map (\x -> x^2)

> adultNames :: (Ord b, Num b) => [(a, b)] -> [a]
> adultNames list = map (\(a, b) -> a) (filter (\(a, b) -> b >= 18) list)

> adultNames' :: (Ord b, Num b) => [(a, b)] -> [a]
> adultNames' = onlyNames.onlyAdults
>     where
>       onlyAdults = filter (\(a, b) -> b >= 18)
>       onlyNames = map (\(a, b) -> a)
