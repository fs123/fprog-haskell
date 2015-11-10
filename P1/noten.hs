type Student = (String, Int)
type GradeEntry = (Int, String, Float)

studentsDB :: [Student]
studentsDB = [("markus.meier@students.fhnw.ch", 12345)]

gradesDB :: [GradeEntry]
gradesDB = [(12345, "FProg", 5.6), (12345, "FProg", 5.1) ]

findMartikelNr :: [Student] -> String -> Int
findMartikelNr [] m   = -1
findMartikelNr ((a, b) : x) m
                | (a == m)  = b
                | otherwise = findMartikelNr x m


getGrates :: [GradeEntry] -> Int -> String -> [Float]
getGrates [] x y = []
getGrates ((a, b, c) : z) x y
      | (a == x && b == y)    = c : getGrates z x y
      | otherwise             = getGrates z x y

gradeCheck :: String -> String -> Bool
gradeCheck mail modul = length (getGrates gradesDB (findMartikelNr studentsDB mail) modul) > 1
