import Control.Applicative

maxNumber = 1000

trials = [(a, b) | a <- [1..1000], b <- [a..1000]]

integralRoot :: Int -> Int
integralRoot k = floor (sqrt $ fromIntegral k)
isTriplet :: (Int, Int) -> Bool
isTriplet (x, y) = 
  isSquare
  where
    isSquare = (rootA * rootA) == csquared
    csquared = (x*x) + (y*y)
    rootA = integralRoot csquared

triplets = filter isTriplet trials

triplet1000 = head $ filter (\(a, b) -> a + b + (integralRoot (a*a + b*b)) == 1000) triplets

a = (fst triplet1000)
b = (snd triplet1000)
c = (integralRoot (a*a + b*b)) 
answer = a * b * c

main = do
  putStrLn $ show $ answer

