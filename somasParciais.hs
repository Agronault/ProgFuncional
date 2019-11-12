somasParciais:: [Int] -> [Int]
somasParciais (a:x)
  |(x == []) = [a]
  |otherwise = verificaSomasParciais a [a] x

verificaSomasParciais:: Int -> [Int] -> [Int] -> [Int]
verificaSomasParciais a x (b:y)
  |(y == []) = x ++ [(a+b)]
  |otherwise = verificaSomasParciais (a+b) (x++[(a+b)]) y

main = print $ somasParciais [1,2,3,4]
