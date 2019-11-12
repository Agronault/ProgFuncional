perfeito:: Int -> Bool
perfeito a = (testaPerfeito a 1 == a)

testaPerfeito:: Int -> Int -> Int
testaPerfeito a b
  | (a == b) = 0
  |((a `mod` b) == 0 ) = b + testaPerfeito a (b + 1)
  |otherwise = testaPerfeito a (b + 1)

main = print $ perfeito 496
