answer = sum $ takeWhile (< 1000) d1
  where
    tryMod a b = (a `mod` b) == 0
    isGood a = or [(tryMod a 3), (tryMod a 5)]
    d1 = filter isGood [0..]

main = do
 putStrLn $ show $ answer

