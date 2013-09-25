toString 0 = ""
toString 1 = "one"
toString 2 = "two"
toString 3 = "three"
toString 4 = "four"
toString 5 = "five"
toString 6 = "six"
toString 7 = "seven"
toString 8 = "eight"
toString 9 = "nine"
toString 10 = "ten"
toString 11 = "eleven"
toString 12 = "twelve"
toString 13 = "thirteen"
toString 15 = "fifteen"
toString 18 = "eighteen"
toString x | x > 12 &&  x < 20 = (toString (x `mod` 10) ++"teen")
toString 20 = "twenty"
toString 30 = "thirty"
toString 40 = "forty"
toString 50 = "fifty"
toString 60 = "sixty"
toString 70 = "seventy"
toString 80 = "eighty"
toString 90 = "ninety"
toString 1000 = "onethousand"
toString x | x `mod` 100 == 0 = toString (x `div` 100) ++ "hundred"
toString x | x > 20 && x < 100 = (toString ((x `div` 10) * 10)) ++ (toString (x `mod` 10))
toString x | x > 99 && x < 1000 = (toString (x `div` 100)) ++ "hundredand" ++ (toString (x `mod` 100))

numbers = map toString [1..1000]
answer = sum $ map length $ map toString [1..1000]
main = print answer




