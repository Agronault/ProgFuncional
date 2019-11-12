primo:: Int -> Bool
primo 0 = False
primo 1 = False
primo 2 = True
primo a
  |(a `mod` 2) == 0 = False
  |otherwise = testaPrimo a 3

testaPrimo:: Int -> Int -> Bool
testaPrimo a b
  |(a == b) = True
  |(a `mod` b) == 0 = False
  |otherwise = testaPrimo a (b+1)

main = print $ primo 0
