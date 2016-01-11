*** Type Classes and Instances

A type class defines an interface or signature
which has to be implemented for a type to belong to the class.

> class  Compare a where
>   same :: a -> a -> Bool


A type is made a member of a type class
by providing an instance definition for that type class.

> instance Compare Bool where
>  same True True   = True
>  same False False = True
>  same _ _         = False


*** Class Assertions

Type variables can be restricted to only be instantiable with types which are members of a required class
– Only types which provide an instance for the class Compare can be used
– Bool for example is accepted, because Bool is an instance of Compare

> contains :: Compare a => a -> [a] -> Bool
> contains _ []     = False
> contains x (y:ys) = same x y || contains x ys

– 'Compare a' ensures, that the corresponding 'same' operation is available
– Overloading: We use the same name for a function (same) but its behavior
  is different depending on the particular type (sameBool, sameColor)

USAGE: contains True [False, False] ~> False


*** The Eq Type Class

Class definition

  class Eq a where
    (==) :: a -> a -> Bool

Instance definition

  instance Eq Bool where
    True == True   = True
    False == False = True
    _ == _         = False

Type class usage

> elem :: Eq a => a -> [a] -> Bool
> elem _ []     = False
> elem x (y:ys) = (x == y) || elem x ys



*** Class Assertions and Context
- A context can consist of multiple class assertions

> showIfSame :: (Eq a, Show a) => a -> a -> String
> showIfSame a1 a2 | a1 == a2  = show a1        -- a1==a2 requires a to be in the class Eq
>                  | otherwise = "Not the same" -- show a1 requires a to be in the class Show

- A context can be used in instance definitions

> instance (Eq a) => Eq [a] where
>    as == bs  = (length as == length bs)
>                && (and (zipWith (==) as bs))

  - Lists with elements of type a can be compared for equality only if a can be compared for equality


*** Haskell Type Classes vs. Java Interfaces

Java:
  interface Hashable {
    int compHash();
  }

  class P implements Hashable {
    int i = 12;
    int compHash() {
      return i;
    }
  }

Haskell:
- Interface

> class Hashable a where
>   compHash :: a -> Int

- Type:

> data P = P Int

+ Instance:

> instance Hashable P where
>   compHash (P i) = i
