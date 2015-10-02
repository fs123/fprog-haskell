type Street = (String, Int)
type Strasse = (String, Int)

getStreetName :: (String, Int) -> String
getStreetName (sn, nr) = sn

// types are no types they just add a new sysonym for the construct (String, Int)
// call getStreetName myStreet
// call getStreetName myStrasse


// or fst mySteet // returns the first value of the Pair
// or snd mySteet // returns the second value of the Pair
// test ':t fst'
