linearizar:: [[Int]] -> [Int]
linearizar (l:[]) = l
linearizar (l:x) = l ++ linearizar x

main = print $ linearizar [ [1,2], [5], [0,4,2] ]
