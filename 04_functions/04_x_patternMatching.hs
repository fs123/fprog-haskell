switchFirstTwo :: [a] -> [a]
switchFirstTwo (a:b:c) = (b:a:c)
switchFirstTwo xs = xs -- if length < 2


type Vec = (Int, Int)
-- addVec :: (Vec a) => a -> a -> a -- why does this not work?
addVec :: Vec -> Vec -> Vec
addVec (ax, ay) (bx, by) = (ax + bx, ay + by)

addVecOpt :: Vec -> Vec -> Vec
addVecOpt (ax, ay) (bx, by) = (addOpt ax bx, addOpt ay by)

addOpt :: Int -> Int -> Int
addOpt a 0 = a
addOpt 0 b = b
addOpt a b = a + b
