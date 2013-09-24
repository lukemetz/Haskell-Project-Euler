sieve :: [Integer] -> [Integer]
sieve list = 
  head list : (sieve (filter (\x -> x `mod` (head list) /= 0) list))

primes = sieve [2..]

main =
  putStrLn $ show $ primes !! 10000
