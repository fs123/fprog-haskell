
-- compare function with if-then-else
compareA :: (Ord a) => a -> a -> Ordering
compareA x y = if x == y then
                 EQ
               else
                 if x > y then
                   GT
                 else
                   LT
-- compare with Guards
compareB :: (Ord a) => a -> a -> Ordering
compareB x y
         | x == y  = EQ
         | x > y   = GT
         | x < y   = LT

-- compare with Case
compareC :: (Ord a) => a -> a -> Ordering
compareC x y = case x == y of
                 True -> EQ
                 False -> case x > y of
                   True -> GT
                   False -> LT

-- another case example: Using | in the case statement serves a different function in Haskell. The statement after the | acts as a guard.
-- http://stackoverflow.com/questions/7603509/haskell-syntax-for-or-in-case-expressions
checkName :: String -> String
checkName name = case name of
       x | elem x ["Bob","John","Joe"] -> "ok!"
       "Frank"                         -> "not ok!"
       _                               -> "bad input!"
