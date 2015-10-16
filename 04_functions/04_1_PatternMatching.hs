-- remarks:
-- a function with TWO arguments
-- $ >  f a b
-- a function with ONE argument, a tuple
-- $ >  f (a b)


-- DEFINITION
-- name :: type
-- name = expression

-- The name is needed to associate the expression in the second line with the type in the first line.
-- The type determines what inputs a function expects, and what it will return as a result
-- The expression defines what the function does

sayNumber :: Int -> String -> String
sayNumber 0 s = "null as value: " ++ s
sayNumber 1 s = "One as value: " ++ s
sayNumber 2 s = "Two as value: " ++ s
sayNumber n s = n ++ " as value: " ++ sEx
