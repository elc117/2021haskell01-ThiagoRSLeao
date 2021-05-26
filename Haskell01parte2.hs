-- Prática 01 de Haskell - Parte 2
-- Nome: Thiago Rodrigues Silva
module Haskell01parte2 where
import Haskell01parte1
import Haskell01quickstart

--funçõe auxiliares
--Considerando o intervalo aberto de 60 a 80, ou seja, excludente as extremidades 60 e 80, temos que 60 > x < 80
between60and80 :: Int -> Bool
between60and80 a = a > 60 && a < 80

--funções comuns
itemize :: [String] -> [String]
itemize strList = map htmlItem strList

onlyVowels :: String -> String
onlyVowels str = filter isVowel2 str

onlyElderly :: [Int] -> [Int]
onlyElderly ageList = filter isElderly ageList

onlyLongWords :: [String] -> [String]
onlyLongWords strList = filter isLongWord strList

onlyEven :: [Int] -> [Int]
onlyEven intList = filter isEven intList

onlyBetween60and80 :: [Int] -> [Int]
onlyBetween60and80 intList = filter between60and80 intList

countSpaces :: String -> Int
countSpaces str = length (filter (\c -> c == ' ') str)

calcAreas :: [Float] -> [Float]
calcAreas intList = map circleArea intList

charFound :: Char -> String -> Bool
charFound c str = null (filter (== True) (map (\char -> char == c) str)) == False

--charFound :: Char -> String -> Bool
--charFound = elem