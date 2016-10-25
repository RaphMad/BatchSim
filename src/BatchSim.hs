module BatchSim where

primes :: [Integer]
primes = 2 : [n | n <- 2 : [3..], not $ any (`divides` n) [2..sqrtInteger n]]

sqrtInteger :: Integer -> Integer
sqrtInteger = ceiling . (sqrt :: Double -> Double) . fromIntegral

divides :: Integer -> Integer -> Bool
divides d n = n `rem` d == 0
