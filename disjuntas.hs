disjuntas:: [Int] -> [Int] -> Bool
disjuntas (a:x) y
  |(a`elem`y) = False
  |(x == []) = True
  |otherwise = disjuntas x y

main = print $ disjuntas [1,2,3] [5,4,6,0] 
