shift:: Int -> [Int] -> [Int]
shift k y = propagaShift 0 k [] y

propagaShift:: Int -> Int -> [Int] -> [Int] -> [Int]
propagaShift i k x (a:y)
  |(i < k) = propagaShift (i+1) k (x++[a]) y
  |otherwise = (a:y) ++ x

main = print $ shift  3 [1,5,6,7,3,4,1]
