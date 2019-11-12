palindromo:: [Int] -> Bool
palindromo [] = True
palindromo (a:[]) = True
palindromo x = verificaPalindromo [] x

verificaPalindromo:: [Int] -> [Int] -> Bool
verificaPalindromo x (a:y)
  |((x) == y) = True
  |((a:x) == y) = True
  |(y == []) = False
  |otherwise = verificaPalindromo (a:x) y

main = print $ palindromo [1,2,3,4,3,2,1]
