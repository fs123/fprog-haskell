import Data.Char

lowerWord :: String -> String
lowerWord a = map toLower a

firstUpper :: [Char] -> [Char]
firstUpper (a:x) = (toUpper a) : x

normalize :: [String] -> [String]
normalize a = filter (\x -> (length x) > 0) (map lowerWord a)

camelCase :: [String] -> String
camelCase [] = error "Illegal argument: empty wordlists is not supported."
camelCase a  = concat (map (\x -> firstUpper(lowerWord x)) a)
