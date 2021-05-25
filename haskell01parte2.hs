-- Prática 01 de Haskell - Parte 2
-- Nome: Thiago Rodrigues Silva
module Main where
import haskell01parte1.hs

-- que receba uma lista de nomes e aplique a função htmlItem em cada nome.
itemize :: [String] -> [String]
itemize listString = map htmlItem listString