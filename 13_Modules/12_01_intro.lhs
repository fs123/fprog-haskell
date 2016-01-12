
-- this files must be in folder 'Geometry'
module Geometry.Xyz (
  circleArea ,
  circlePerimeter ,
  squareArea ,
  squarePerimeter
  )
  where

import Data.List       -- import all function of module
import Data.List (nub) -- import only of function nub

circleArea :: Float -> Float
circleArea radius = 2 * radius * pi

rectArea a b = a * b
...
