-- defining Enumeration Types
data Color = Red | Yellow | Green
  deriving (Show)
data ToDo = Stop | Run | Go
  deriving (Show)

atTrafficLight :: Color -> ToDo
atTrafficLight Red = Stop
atTrafficLight Yellow = Run
atTrafficLight Green = Go

-- $ > atTrafficLight Yellow
-- $ Run
-- $ > :t Red
-- $ Red :: Color

-- Aggregated Types - Tuples
-- * Pairs are tuples with only two components (of arity 2). Eg.
--   (False, 'c')
firstInt :: (Int,Int) -> Int
firstInt (x, y) = x

-- or 'Polymorphic Functions''
fst :: (a, b) -> a -- note: a and b is NOT start with capital letter, therefore NOT TYPE
fst (x, y) = x
-- $ > fst (("Hallo", 'c'), 1)
-- $ ("Hallo", 'c')


-- Type Synonyms: The keyword type can be used to introduce a new name (a synonym) for an existing type
type Coord = (Int, Int) -- This does not create a new type, only a new name!

xCoord :: Coord -> Int
xCoord (x, y) = x

time :: (Int, Int)
time = (23, 59)

-- $ > xCoord time
-- $ 23


-- ******
-- Functions with multiple parameters
add :: Int -> Int -> Int
add     x      y  =  x+y

-- $ > :t add
-- $ add :: Int -> Int -> Int

-- Type Inference:
--  The type of a function needs not to be specified.
--  In most cases it can be automatically inferred
abbreviate Red = 'r'
abbreviate Green = 'g'

-- $ > :t abbreviate
-- $ abbreviate :: Color -> Char


-- Typeclasses
--  * Everything before the => symbol is called a class constraint.
-- $ > :t abs
-- $ abs :: Num a => a -> a

-- $ > :t (==)
-- $ (==) :: (Eq a) => a -> a -> Bool
-- We can read the previous type declaration like this: the equality function
-- takes any two values that are of the same type and returns a Bool.
-- The type of those two values must be a member of the Eq class
-- (this was the class constraint).


-- Computing with Numbers: Haskell does not automatically convert numeric types!
--  * Integral (Int, Integer) extends from Num
--  * Fractional (Double) extends from Num
