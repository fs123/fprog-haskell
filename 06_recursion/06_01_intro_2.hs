-- Value -2 is NOT an Integer.
factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n-1)

countDown :: Int -> [Int]
countDown 0 = [0]
countDown n = n : (countDown (n-1))

countUp :: Int -> [Int]
countUp 0 = [0]
countUp n = (countUp (n-1)) ++ [n]

countDownUp :: Int -> [Int]
countDownUp 0 = [0]
countDownUp n = n : (countDownUp (n-1)) ++ [n]

-- PART II

len :: [a] -> Int
len [] = 0
len (_:l) = 1+ len l

-- len with tail recursion
len' :: [a] -> Int
len' list = lenRec list 0
  where lenRec []     n = n
        lenRec (i:is) n = lenRec  is (n+1)

allTrue :: [Bool] -> Bool
allTrue [] = True
allTrue (a:l) = a == True && allTrue l

-- equal to: sublist beg len xs = take len (drop beg xs)
sublist :: Int -> Int -> [a] -> [a]
sublist 0 0 _     = []
sublist _ _ []    = error "need more chars from empty list"
sublist 0 e (i:l) = i : sublist 0 (e-1) l
sublist s e (_:l) = sublist (s-1) e l


(+++) :: [a] -> [a] -> [a]
(+++) a b = a ++ b
-- or, valid too:
-- [] +++ ys     = ys
-- (x:xs) +++ ys = x : (xs +++ ys)

-- Tail Recursion
-- - A function is tail recursive, if the recursive call is done at the very end of the function
-- - Tail recursion can be optimized by compilers
sum1 :: Num a => [a] -> a -- not tail recursive
sum1 []     = 0
sum1 (i:is) = i + sum is

sum2 :: Num a => [a] -> a -- tail recursive
sum2 l = sum' 0 l
  where sum' acc []     = acc
        sum' acc (i:is) = sum' (i+acc) is -- tail call
