module Main where

import Test.Hspec
import Config

main :: IO ()
main = hspec $ describe "Config" $ do

   it "dummyTest" $
      take 5 [2, 3, 5, 7, 11] `shouldBe` [2, 3, 5, 7, 11]
