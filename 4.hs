import Control.Applicative

digitNumbers = [100..1000] :: [Int]
possible = (*) <$> digitNumbers <*> digitNumbers

isPalindrome a = 
  string == reverse string
  where
    string = show a

answer = maximum $ filter isPalindrome possible

main = do
  putStrLn $ show $ answer
