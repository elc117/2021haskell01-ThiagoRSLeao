-- Prática 01 de Haskell - Parte 1
-- Nome: Thiago Rodrigues Silva
module Haskell01parte1 where
-- a = primeiro valor, b = segundo valor
sumSquares :: Int -> Int -> Int
sumSquares a b = a^2 + b^2

-- r = raio
circleArea :: Float -> Float
circleArea r = r^2*(pi)

-- a = idade, b = dano
age :: Int -> Int -> Int
age a b = b - a

-- a = idade
isElderly :: Int -> Bool
isElderly a = a > 65

-- a = innerHTML do <li>
htmlItem :: String -> String
htmlItem a = "<li>"++a++"<li>"

-- s = string
startsWithA :: String -> Bool
startsWithA s = (take 1 s) == "A" || (take 1 s) == "a"

-- s = string
isVerb :: String -> Bool
isVerb s = (take 1 (reverse s)) == "r"

-- c = caractere 
isVowel :: Char -> Bool
isVowel c = c == 'a' ||
  c == 'e' ||
  c == 'i' ||
  c == 'o' ||  
  c == 'u' 

--a e b são listas de inteiros
hasEqHeads :: [Int] -> [Int] -> Bool
hasEqHeads a b = head(a) == head(b)

-- c é um caractere
isVowel2 :: Char -> Bool 
isVowel2 c = elem c ['a','e','i','o','u','A','E','I','O','U']
