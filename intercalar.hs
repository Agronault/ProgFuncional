intercalar:: [Int] -> [Int] -> [Int]
intercalar [] w = w
intercalar w [] = w
intercalar (a:x) (b:y)
  |(a >= b) = [b] ++ intercalar (a:x) y
  |(a < b) = [a] ++ intercalar x (b:y)

main = print $ intercalar [1,5,10] [2,7,9,20,25]
