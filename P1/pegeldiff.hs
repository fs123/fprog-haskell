
type Messwert = (Int, Double)
type PegelDiff = ((Int, Int), Double)

--- VERISON 1
pegelDiff :: [Messwert] -> [PegelDiff]
pegelDiff (a:b) = pegelDiff' a b []

pegelDiff' :: Messwert -> [Messwert] -> [PegelDiff] -> [PegelDiff]
pegelDiff' n [] x = x
pegelDiff' n (a:[]) x = (x ++ [((fst n, fst a), ((snd n) - (snd a)))])
pegelDiff' n (a:b) x = pegelDiff' a b (x ++ [((w1, w2), diff)])
    where
      w1 = fst n
      w2 = fst a
      diff = ((snd n) - (snd a))

--- VERISON 2
pegelDiff2 :: [Messwert] -> [PegelDiff]
pegelDiff2 ((w1, m1):(w2, m2):x) = [((w1,w2), m1-m2)] ++ (pegelDiff2 ((w2, m2):x))
pegelDiff2 _ = []



findDiff :: Int -> [PegelDiff] -> [Double]
findDiff s (((ws,we),m):x)
          | (ws <= s && s < we) = [m] ++ findDiff s x
          | otherwise           = findDiff s x
findDiff s _ = []


diffSumme :: Int -> Int -> [PegelDiff] -> [Double]
diffSumme w1 w2 diff = diffSumme' (findDiff w1 diff) (findDiff w2 diff)

diffSumme' :: [Double] -> [Double] -> [Double]
diffSumme' _ [] = []
diffSumme' [] _ = []
diffSumme' (m1:[]) (m2:[]) = [(m2 - m1)]
diffSumme' _ _ = []
