answer = sum $ takeWhile ( < 4000000 ) (evenList fibs)
fib 0 = 1
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

--fibs = [(fib n) | n <- [0..]]
fibs = 0 : 1 : zipWith (+) (fibs) (tail fibs)

evenList numbers = filter (\a -> (a `mod` 2) == 0) numbers

main = do
  putStrLn $ show $ answer



