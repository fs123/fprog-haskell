-- Every function in Haskell takes only one parameter
-- add 1 2 == ((add 1) 2)

add :: Int -> Int -> Int
add x y = x + y

-- Main> :t add
-- add :: Int -> Int -> Int
-- *Main> :t add 1
-- add 1 :: Int -> Int
-- *Main> :t add 1 2
-- add 1 2 :: Int


-- All four functions have the same type
-- prod1, prod2, prod3, prod4 :: Int -> Int -> Int -> Int
-- prod1 x y z = x*y*z
-- prod2 x y   = \z -> x*y*z
-- prod3 x     = \y -> \z -> x*y*z
-- prod4       = \x -> \y -> \z -> x*y*z


-- $ map (\xs -> negate (sum (tail xs))) [[1,2,3],[4,5,6],[7,8]]
-- $ map (negate . sum . tail) [[1,2,3],[4,5,6],[7,8]]
-- $ [-5,-11,-8]


-- $ :t (+)
-- $ (+) :: Num a => a -> a -> a
-- $ (+) 1 2
-- $ 3


-- $ :t div
-- $ div :: Integral a => a -> a -> a
-- $ 9 `div` 2
-- $ 4


-- (2+) is interpreted as \y -> 2+y
-- (+3) is interpreted as \x -> x+3
