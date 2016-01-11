{-# LANGUAGE NoMonomorphismRestriction #-}
import System.Environment (withArgs)
import Diagrams.Prelude
import Diagrams.Backend.SVG.CmdLine

-- Don't forget to add a type signature (:: Diagram B) to your creation
main = withArgs (words "-o diagram.svg -w 400") (defaultMain diag)
  where diag = circle 1 :: Diagram B

atopExample, besideExample, aboveExample :: Diagram B
atopExample   = fc black (square 1) `atop` circle 1
besideExample = fc black (square 1) ||| circle 1
aboveExample  = fc black (square 1) === circle 1

-- Implementieren Sie eine rekursive Funktion, die n verschachtelte, gleichseitige Dreiecke zeichnet.
a :: Double -> Diagram B
a 0 = mempty
a n = eqTriangle n `atop` a (n-1)

-- Erweitern Sie die Funktion aus Aufgabe a) und malen Sie die Kreise abwechslungsweise schwarz (black) und weiss (white).
b :: Double -> Diagram B
b n = cir n True
      where cir :: Double -> Bool -> Diagram B
            cir 0 _ = mempty
            cir n c = (cir (n-1) (not c)) `atop` fc (color c)  (eqTriangle n)

-- 10 konzentrische Quadrate. Jedes Quadrat ist um 60o gedreht.
c :: Double -> Diagram B
c n = cir n True
      where cir :: Double -> Bool -> Diagram B
            cir 0 _  = mempty
            cir n c  = (rotateBy (1/6) (cir (n-1) (not c))) `atop` fc (color c) (square n)

color True  = black
color False = white
