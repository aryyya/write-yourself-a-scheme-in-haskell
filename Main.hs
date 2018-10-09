module Main where

import System.IO (hFlush, stdout)

main :: IO ()
main = do
  putStrFlush "Enter your name: "
  name <- getLine
  putStrLn $ "Hello, " ++ name ++ "!"

putFlush :: (String -> IO ()) -> String -> IO ()
putFlush putFn string = do
  putFn string
  hFlush stdout

putStrLnFlush :: String -> IO ()
putStrLnFlush = putFlush putStrLn

putStrFlush :: String -> IO ()
putStrFlush = putFlush putStr
