import Data.Numbers.Primes
-- Super cheating but SO MUCH faster

sieve list = 
  head list : (sieve (filter (\x -> x `mod` (head list) /= 0) list))

--primes = sieve [2..]
primesTo m = 2 : eratos [3,5..m]  where
   eratos []     = []
   eratos (p:xs) = p : eratos (xs `minus` [p, p+2*p..m])
--primes = primesTo 200000

-- ordered lists, difference and union
minus (x:xs) (y:ys) = case (compare x y) of 
           LT -> x : minus  xs  (y:ys)
           EQ ->     minus  xs     ys 
           GT ->     minus (x:xs)  ys
minus  xs     _     = xs
union (x:xs) (y:ys) = case (compare x y) of 
           LT -> x : union  xs  (y:ys)
           EQ -> x : union  xs     ys 
           GT -> y : union (x:xs)  ys
union  xs     []    = xs
union  []     ys    = ys

main = 
  putStrLn $ show $ sum $ takeWhile (< 2000000) primes
