-- a function with pattern matching
describeList1 :: [a] -> String
describeList1 [] = "Empty List"
describeList1 (x:[]) = "List with one entry" -- same as: describeList1 [a] = "List with one entry"
describeList1 ls = "A longer list"

-- Case Expression (Could NOT be used for complex expressions)
describeList2 :: [a] -> String
describeList2 ls = "The List is " ++
  case ls of
    [] -> "empty."
    [a] -> "a one entry list"
    xs -> "a longer list"


-- Guards (could be used for complex expressions)
abs1 :: (Num a, Ord a) => a -> a -- Note: Num = nueric, Ord defines '<', therefore we need both constraints
abs1 n
     | n < 0     = -n
     | otherwise = n

abs2 :: (Num a, Ord a) => a -> a
abs2 n = case n of
            m | m < 0     -> -m2
              | otherwise -> m

-- Conditional Expressions
-- - The else branch must be present
-- - both type must be of the same type
abs3 :: (Num a, Ord a) => a -> a
abs3 n = if n < 0
          then -n
          else n



-- end
