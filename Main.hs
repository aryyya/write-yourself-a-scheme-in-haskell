module Main where

import System.Environment

main :: IO ()
main = do
  args <- getArgs
  let xAndY = getXAndY args
  let sum = sumXAndY xAndY
  putStrLn $ show $ sum

getXAndY :: [String] -> (Integer, Integer)
getXAndY args = (read $ args !! 0, read $ args !! 1)

sumXAndY :: (Integer, Integer) -> Integer
sumXAndY xAndY = x + y
  where x = fst xAndY
        y = snd xAndY
