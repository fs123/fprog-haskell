
-- https://wiki.haskell.org/How_to_work_on_lists

-- At the end of a finite list is always the empty list [].
-- The empty list is called nil and is written as []

-- In Haskell the type String is simply an alias for [Char]
-- Which means that the following expressions are all equal (the last empty entry is important!)
-- "abc" == ['a','b','c'] == 'a':'b':'c':[]

-- type: [] :: [a]


-- type: head :: [a] -> a
-- $ > head [1,2,3]
-- $ 1
-- $ > head "Hello"
-- $ 'H'

-- type: tail :: [a] -> [a]
-- $ > tail [1,2,3]
-- $ [2,3]
-- $ > tail "Hello"
-- $ "ello"

-- head and tail fails called with an empty list!


-- cons (:) takes an element and a list and returns a new list with the element as its new head
-- type: (:) :: a -> [a] -> [a]
-- $ > 1 : [2,3]
-- $ [1,2,3]


-- type: null :: [a] -> Bool
-- $ > null : []
-- $ true

-- type: length :: [a] -> Int
-- $ > length []
-- $ 0
-- $ > length "Hello"
-- $ 5

-- Before accessing elements of list always check that it is: NOT NULL and LENGTH > 0


--
