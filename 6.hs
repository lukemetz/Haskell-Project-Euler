sumOfSquares = foldl (\y x-> y + x*x) 0 [0..100]
squareOfSums = (sum [0..100]) ** 2
answer = floor $ squareOfSums - sumOfSquares
main = do
  putStrLn $ show $ answer
