xxx :: (Int, Int) -> Int
xxx (x, y)
      | (x == 0 && y >= 0)  = y+1
      | (y == 0 && x >  0)  = xxx ((x -1), 1)
      | otherwise           = xxx ((x -1), (xxx (x,(y-1))))
