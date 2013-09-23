import Data.Numbers.Primes

primesUnder20 = takeWhile ( < 20) primes

expandTo20 a = (b ** (fromIntegral (floor $ logBase b 20)))
  where
    b = fromIntegral a

answer = product $ map expandTo20 primesUnder20
main = do
  putStrLn $ show $ floor answer
