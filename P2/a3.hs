data Account = Account String [Mutation] deriving Show
data Mutation = Deposit Int -- Betrag einbezahlen
              | Withdraw Int -- Betrag abheben
              deriving Show

newAccount :: String -> Account
newAccount s = Account s []

deposit :: Int -> Account -> Account
deposit n (Account an am) = Account (an+n) ((Deposit n):am)
