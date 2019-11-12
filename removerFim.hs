removerFim:: Int -> [Int] -> [Int]
removerFim a x = propagaRemover a (getTamanho x) 0 x []

propagaRemover:: Int -> Int -> Int -> [Int] -> [Int] -> [Int]
propagaRemover a s i (b:x) res
  |(i==s-a) = res
  |otherwise = propagaRemover a s (i+1) x (res ++ [b])

getTamanho::[Int] -> Int
getTamanho [] = 0
getTamanho (a:x)= 1 + getTamanho x

main = print $ removerFim 2 [1,2,3,4,5,6]
