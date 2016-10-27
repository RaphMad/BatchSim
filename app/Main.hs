module Main where

import Config
import qualified Data.ByteString.Lazy as B

main :: IO ()
main = do
   file <- B.readFile "trinkets.json"
   case parseTrinketConfig file of
      Left error -> putStrLn error
      Right config -> print config
