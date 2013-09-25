import Debug.Trace
nextCollatz x | (even x) = x `div` 2
nextCollatz x =  x * 3 + 1 

collatz x = iterate nextCollatz x

big = 999999
collatzSeq x = 1 : (takeWhile (1 /=) (collatz x))
collatzLength x = length $ (collatzSeq x)
collatzLengths = map collatzLength [1..big]

allCollatz = zip [1..big] collatzLengths

maxCol = foldl (\(prevIndx, prevM) (indx, x) -> if (x) > prevM then (indx, x) else (prevIndx, prevM)) (0, 0) allCollatz

answer = maxCol
main = print answer
