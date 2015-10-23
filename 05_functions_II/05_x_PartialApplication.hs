-- Aufgabe: Typen
-- Gegeben ist die Funktion old:
old :: Int -> Bool
old age = age > 90
--
-- Gesucht sind die Typsignaturen der folgenden Ausdrücke:
-- drop 3 :: [a] -> [a]
-- map snd :: [(a, b)] -> [b]
-- filter old :: [Int] -> [Int]
-- map head ::  [a] -> a
-- map (wrap "/*" "*/") :: [a] -> [a]
