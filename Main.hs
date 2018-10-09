module Main where

import Text.ParserCombinators.Parsec hiding (spaces)
import System.Environment

main :: IO ()
main = do
  putStrLn "Hello, world!"

symbol :: Parser Char
symbol = oneOf "!#$%&|*+-/:<=>?@^_~"
