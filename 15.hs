factorial x = product [1..x]
choose n k = (factorial n ) `div` ((factorial k) * (factorial (n - k)))
main = print $ 40 `choose` 20
