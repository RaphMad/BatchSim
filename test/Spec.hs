module Main where

import Test.Hspec
import BatchSim

main :: IO ()
main = hspec $ describe "primes" $ do

   it "should return the correct primes" $
      take 5 primes `shouldBe` [2, 3, 5, 7, 11]

   it "should fail with incorrect primes" $
      take 5 primes `shouldBe` [1, 1, 1, 1, 1]
