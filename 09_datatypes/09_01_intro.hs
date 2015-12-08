
-- BookInfo is a new type describing a book
data BookInfo = Book Int String
                deriving (Show)
--   |- Type Constructor
--              |- Value Constructor
--                   |-  |- Components
--                              |- Deriving Clause
-- The Type Constructor defines the name of the new type
-- The Value Constructor is used to create a value of this type
-- The Components define the fields' types
-- The Deriving Clause automatically derives instances
--   for the named classes (here only Show)



-- The Book VALUE CONSTRUCTOR is just a function which takes
-- the components as arguments and creates a value of type BookInfo

-- *> :t Book
-- Book :: Int -> String -> BookInfo

-- *> :t Book 123 "Real World Haskell"
-- Book 123 "Real World Haskell" :: BookInfo
-- - Note: The nice string representation is due to "deriving (Show)"


-- Pattern Matching:
isbn :: BookInfo -> Int
isbn (Book isbnnr _) = isbnnr



-- A type can have multiple value constructors
data BillingInfo = CreditCard Float String String
                 | Invoice Float Int
                   deriving (Show)

-- Pattern matching is used to distinguish the representations and introspect values
amount :: BillingInfo -> Float
amount (CreditCard a _ _) = a
amount (Invoice a _)      = a


-- ***** type vs. data
--  Pro: Functions which are defined for the existing type can be reused
--  Cons: No protection from mixing up "incompatible" data

-- Record Syntax
data PersonType = Person {
  firstName :: String,
  lastName :: String,
  email :: String,
  job :: Int }
  deriving (Show)

-- Haskell automatically generates all the accessor functions for us:
-- *> firstName (Person "Haskell" "Curry" "unknown" 1900)
-- "Haskell"

-- Allows value creation in which the components are specified by name
-- Person { lastName = "Curry", firstName = "Haskell", ... } -- ALL FIELDS have to be declared!



-- ***** Polymorphic Data Types
-- data Either a b = Left a | Right b

-- Either a value of type a wrapped in Left
--     Or a value of type b wrapped in Right
-- Convention, When used for validation:
--   Right contains the valid value and
--   Left contains an error description.
safeHead :: [a] -> Either String a
safeHead []     = Left "Emtpy list, sorry no Head available!"
safeHead (x:xs) = Right x
