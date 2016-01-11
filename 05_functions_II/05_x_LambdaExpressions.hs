incrementAll :: [Int] -> [Int]
incrementAll list = map (\x -> x+1) list

addToAll :: Int -> [Int] -> [Int]
addToAll nr list = map (\entry -> entry + nr) list

keepOld :: [Int] -> [Int]
keepOld list = filter (\entry -> entry < 90) list

dropString :: [String] -> [String]
dropString list = filter (\entry -> not (length entry == 1) ) list

-- Bestimmen Sie die Typen der folgenden Ausdrücke:
-- (\x -> x > 9) 6      :: Bool *UND NICHT* (Int -> Bool) -> Int
-- (\x -> tail x)       :: ([a] -> [a])
-- (\(a,b) -> b ++ a)   :: ((String, String) -> String) *ODER* ([a], [a]) -> [a] * ++ kann auf Listen angewendet werden
-- (\t -> fst)          ::  ((a, b) -> a)
-- (\(x:xs) -> x)       :: [a] -> a
-- (\x y -> head y) 2   :: [a] -> a
-- \(a,b) -> fst a ++ b :: (([a], b), [a]) -> [a]
