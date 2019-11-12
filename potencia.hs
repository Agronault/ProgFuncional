potencia :: Int -> Int -> Int
potencia a b
  |b == 1 = a
  |otherwise = a * potencia a (b-1)


main = print $ potencia 2 10
