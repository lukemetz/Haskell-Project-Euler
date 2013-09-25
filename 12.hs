--triangles = [(sum [0..y]) | y <- [0..]]
triangles = 1 : zipWith (+) triangles [2..]

doesDevide x y = x `rem` y == 0
boolSum :: [Bool] -> Int
boolSum list = foldl (\y x-> y + (if x==True then 1 else 0)) 0 list
countFactors a = 2 *  (boolSum $ map (doesDevide a) [1..(floor (sqrt (fromIntegral a)))])

locationOfFirst = (+) 0 $ length $ takeWhile (\x -> (countFactors x) < 500) triangles
answer = triangles !! locationOfFirst

main = print answer
