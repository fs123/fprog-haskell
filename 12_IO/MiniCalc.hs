

main :: IO ()
main = do putStrLn "Welcome to MiniCalc!"
          putStr "Please enter a first number: "
          in1 <- getLine
          putStr "Please enter a second number: "
          in2 <- getLine
          let nr1 = read in1 :: Int
          let nr2 = read in2 :: Int
          let msg = "result: " ++  show (nr1 + nr2)
          putStrLn msg
