
-- Our Image is a List of Strings
type Image = [String]

rabbit :: Image
rabit = [
"        ___                   ",
"      ,'_  `-.      ,-`-.     ",
"     ('/-.   \    /  ,-,.  \  ",
"      `'    \  ,-'-/    /  `-'",
"            ,-'-.      /      ",
"         __ (0|0)     f       ",
"        (_)`-/---.    |       ",
"         l   ---.     j       ",
"          `---'     ,'        ",
"              \    f          ",
"              )   l           ",
"            __f _   Y         ",
"         ,' ,-' _   l         ",
"        (,,(,,,' `   Y        ",
"             |       l        ",
"             |        \,';,   ",
"             l    ,    Y, ;   ",
"             (`._(     ),'    ",
"              `.  `.  (       ",
"            ,--',--'   )      ",
"           (,,,(,,,---'       "]


main :: IO ()
main = do printPicture rabit

printPicture :: Image -> IO ()
printPicture p = putStr (unlines p)
