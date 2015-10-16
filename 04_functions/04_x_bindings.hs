-- where usage
cuboid1 :: Float -> Float -> Float -> Float
cuboid1 l w h = baseArea * 2 + sideArea * 2 + frontArea * 2
                where
                  baseArea = l * w
                  sideArea = w * h
                  frontArea = l * h

-- let usage
cuboid2 :: Float -> Float -> Float -> Float
cuboid2 l w h = let baseArea = l * w
                    sideArea = w * h
                    frontArea = l * h
                in baseArea * 2 + sideArea * 2 + frontArea * 2


-- Expected result ?! (solution, e.g. input = 5, result = ((5 + 6) + 4) )
letsNest :: Int -> Int
letsNest x = let
               c = let b = 6
                   in x + b
             in
                let d = 4
                in c + d

-- Expected result ?! (solution, e.g. input = 1, result = (1 + 6) )
letsShadow :: Int -> Int
letsShadow x = let a = 5
               in
                 let a = 6
                 in a + x
