module PictureASCII where
import Data.Char

--------------------------------------------------------------------------------
-- 1) ASCII Pictures
--------------------------------------------------------------------------------

-- A Picture is a list of strings.
type Picture = [String]

names :: Picture
names = ["Flavio", "Marco", "Bubu"]

-- An example picture. Design a nicer one.
lambda :: Picture
lambda = [
 "                   ",
 "     ####          ",
 "       ###         ",
 "        ###        ",
 "        ####       ",
 "       ## ###      ",
 "      ##   ###     ",
 "    ###     ###    ",
 "                   "]

-- Run 'main' to see an example.
main :: IO ()
main = do printPicture lambda

-- Prints the given picture to stdout.
printPicture :: Picture -> IO ()
printPicture p = putStr (unlines p)

-- a) Mirrors the given picture horizontally.
flipH :: Picture -> Picture
flipH p = map reverse p

-- b) Mirrors the given picture vertically.
-- hint = "Wrqr Mrvyr zhff frcneng hztrxrueg jreqra."
flipV :: Picture -> Picture
flipV p = reverse p

-- c) Takes two pictures and puts the first above the second.
-- hint = "Qnf fbyygra Fvr nhpu buar Uvysr uvaxevrtra."
above :: Picture -> Picture -> Picture
above a b = a ++ b

-- d) Takes two pictures and puts the first left of the second.
-- hint = "Irejraqra Fvr qvr Shaxgvba mvcJvgu hz wr mjrv Mrvyra mh xbaxngravrera."
beside :: Picture -> Picture -> Picture
beside a b = zipWith (++) a b
-- beside (a:as) (b:bs) = (a ++ b) : beside as bs

--------------------------------------------------------------------------------
-- 2) Functions on Lists
-- hint = "\65533oreyrtra Fvr fvpu mhrefg qvr Fvtanghe"
--------------------------------------------------------------------------------
-- a) Append an element at the end.
addOnEnd :: Picture -> String -> Picture
addOnEnd p c = map (\a -> a ++ c) p


-- b) Reverse all but the first and the last element.
specialX :: Picture -> Picture
specialX p = map(\ x -> (head x) : reverse (init (tail x)) ++ [(last x)]) p


-- c) Insert an element at a given position.
-- insertAt :: Picture -> Char -> Int -> Int -> Picture
-- insertAt n val (x:xs) = ...


-- Functions to decode hints.
-- Usage: decodeHint "Mhrefg anpuqraxra, qnaa Gvccf nafpunhra =)"
decodeHint :: String -> String
decodeHint = map rot13
  where rot13 c
         | toLower c >= 'a' && toLower c <= 'm' = chr (ord c + 13)
         | toLower c >= 'n' && toLower c <= 'z' = chr (ord c - 13)
         | otherwise = c
