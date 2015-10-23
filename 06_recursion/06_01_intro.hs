
-- rules to create a recursion
factorial :: Integer -> Integer
factorial 0 = 1                   -- 1. abort condition
factorial n = n * factorial (n-1) -- 2. Interator to the abort condition


countDown :: Int -> [Int]
countDown start = countDown' start []

countDown' :: Int -> [Int] -> [Int]
countDown' 0   list = list ++ [0]
countDown' new list = countDown' (new-1) (list ++ [new])


countUp :: Int -> [Int]
countUp end = countUp' end []

countUp' :: Int -> [Int] -> [Int]
countUp' 0   list = 0 : list
countUp' new list = countUp' (new-1) (new : list)


countDownUp :: Int -> [Int]
countDownUp x = (countDownUp' True x []) ++ [0] ++ (countDownUp' False x [])

countDownUp' :: Bool -> Int -> [Int] -> [Int]
countDownUp' _     0   list = list
countDownUp' True  new list = countDownUp' True  (new-1) (list ++ [new])
countDownUp' False new list = countDownUp' False (new-1) (new : list)



countDownUp2 :: Int -> [Int]
countDownUp2 x = (countDownUp2' x (x-1) (-1) [x])

countDownUp2' :: Int -> Int -> Int -> [Int] -> [Int]
countDownUp2' mx new counter list
              | new == 0   = countDownUp2' mx (new+newCounter) (newCounter) (new : list)
              | mx < new   = list
              | otherwise  = countDownUp2' mx (new+counter) counter (new : list)
              where newCounter = counter * (-1)
