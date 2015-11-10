-- Klammerung:
-- $ > :info ((f a) b) infixl
-- $ > :info ^
-- $  infixr 8 ^

-- 1 + 2 ^ 3 == 6 && 3 / 4 < 12 || snd (1,True)
-- ((1+(2^3)) == 6) && (3/4 < 12) || snd(1, True)

-- (3:) [] == map (*5) [2 ^ 4 ^ 6]
-- ((3:) []) == ((map (*5)) [(2 ^ (4 ^ 6))])
-- ((3:) []) == ((map (*5)) [(2 ^ (4 ^ 6))])


-- wechseln der Parameter eine Method
-- replicateHatschi = flip' replicate "hatschi"

flip' :: (a -> b -> c) -> b -> a -> c
flip' f x y = f y x

-- implementierung mit lamdas
flip2' :: (a -> b -> c) -> b -> a -> c
flip2' \f -> \x y -> f y x

--------
-- Gegeben sind nun folgende Funktionen:
-- f :: Int -> Int
-- g :: Int -> Bool
-- h :: a -> Int
-- i :: Bool -> (Int,Int)

-- a) Gesucht sind alle zulässigen zweier Kombinationen und deren Typ.
-- f.f.f...

-- g.f     // := g(f)
-- h.f

-- i.g
-- h.g

-- g.h
-- f.h
-- h.h

-- h.i

  
-- b) Wie kann man die Funktionen f mit der Funktion i verknüpfen, wenn zusätzlich noch fst und snd zur Verfügung stehen?
-- g.fst.i
-- h.fst.i
