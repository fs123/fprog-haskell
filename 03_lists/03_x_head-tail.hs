
-- $ > head (tail (tail [1,2,3]))
-- $ > tail (tail [1,2,3])
-- $ > tail (tail (tail [1,2,3]))
-- $ > tail (tail (tail (tail [1,2,3])))
-- $ > length (tail (tail (tail [1,2,3])))


-- scroll down ...


























-- $ > head (tail (tail [1,2,3]))
-- $ 3

-- $ > tail (tail [1,2,3])
-- $ [3]

-- $ > tail (tail (tail [1,2,3]))
-- $ [3]

-- $ > tail (tail (tail (tail [1,2,3])))
-- $ []

-- $ > length (tail (tail (tail [1,2,3])))
-- $ 0
