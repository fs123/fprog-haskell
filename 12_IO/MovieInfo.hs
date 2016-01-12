import Network.HTTP

main :: IO ()
main = do putStrLn "Welcome to movieinfo!"
          putStr "Enter Movie Name: "
          name <- getLine
          response <- getResponseBody <- simpleHTTP $ getRequest "http://www.omdbapi.com/?t=" ++ name
          let msg = "result: " ++  response
          putStrLn msg
