answer = maxFactor 600851475143 2

removeFactors val factor = 
  if (val `mod` factor) == 0
    then (removeFactors (val `quot` factor) factor)
    else val

maxFactor value onVal = 
  if result == 1
    then onVal
    else maxFactor result (onVal+1)
  where
    result = (removeFactors value onVal) 

main = do
  putStrLn $ show $ answer

