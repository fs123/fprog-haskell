> drop' :: Int -> [a] -> [a]
> drop' 0 l     = l
> drop' n (_:l) = drop' (n-1) l

> take' :: Int -> [a] -> [a]
> take' 0 _       = []
> take' n (x:xs) = x : (take' (n-1) xs)

> zip' :: [a] -> [b] -> [(a,b)]
> zip' (x:[]) (i:[]) = [(x,i)]
> zip' (x:xs) (i:is) = (x,i) : zip' xs is

> elem' :: Eq a => a -> [a] -> Bool
> elem' e []     = False
> elem' e (x:xs) = (e==x) || elem' e xs

> eqList :: Eq a => [a] -> [a] -> Bool -- Vergleicht zwei Listen words' :: String -> [String]
> eqList [] []         = True
> eqList (x:xs) (i:is) = x == i && eqList xs is
> eqList _ _ = error "illegal arguments"


- >$ (fst |> (*2) |> even) (3,"Three")
- > True

> (|>) :: (a -> b) -> (b -> c) -> (a -> c)
> (|>) a b = b.a
