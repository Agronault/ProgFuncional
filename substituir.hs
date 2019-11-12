substituir:: Int -> Int -> [Int] -> [Int]
substituir a b [] = []
substituir a b (i:x)
  |(i == a) = (b: substituir a b x)
  |otherwise = (i: substituir a b x)

main = print $ substituir 1 0 [1, 2, 3, 4, 2, 1, 1, 9, 1]
