import Data.Char
answer2 = foldl (\a x -> digitToInt(x)+a) 0 (show ((2^1000)))
answer = sum $ map digitToInt $ show (2^1000)
