module Main where

import Config
import qualified Data.ByteString.Lazy as B

main :: IO ()
main = do
   file <- B.readFile "trinkets.json"
   case parseConfig file of
      Left error -> putStrLn error
      Right config -> print config
