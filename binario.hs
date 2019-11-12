binario:: Int -> [Int]
binario a
  |(a >= 2) = binario ( div a 2 ) ++ [a`mod`2]
  |otherwise = [a`mod`2]

main = print $ binario 235
