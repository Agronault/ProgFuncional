distintos:: [Int] -> Bool
distintos (a:x)
  |(x == []) = True
  |(a `elem` x) = False
  |otherwise = distintos x

main = print $ distintos [1, 2, 2, 4, 10]
