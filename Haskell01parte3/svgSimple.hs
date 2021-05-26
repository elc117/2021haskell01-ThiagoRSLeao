import Text.Printf

-- String inicial do SVG
svgBegin :: Float -> Float -> String
svgBegin w h = printf "<svg width='%.2f' height='%.2f' xmlns='http://www.w3.org/2000/svg'>\n" w h 

-- String final do SVG
svgEnd :: String
svgEnd = "</svg>"

svgCircle :: Int -> Int -> Int -> String -> String 
svgCircle x y r style = 
  printf "<circle cx='%d' cy='%d' r='%d'  style='%s' />\n" x y r style

-- onde x é a posição x, y é a posição y, l é a largura e h é a altura
svgRectangle :: Int -> Int -> Int -> Int -> String -> String 
svgRectangle x y l h style = 
  printf "<rect  x='%d' y='%d' width='%d' height='%d' style='%s' />\n" x y l h style

svgPath :: String -> String -> String 
svgPath d style = 
  printf "<path d='%s' style='%s' />\n" d style

-- Gera SVG com 2 círculos, um verde e um vermelho, com 0.4 de opacidade.
-- A opacidade pode não ser suportada em alguns visualizadores de SVG.
-- svgCircle x y r
-- x = posição x, y = posição y e r = r, style é a estilização

svgAll :: String
svgAll = 
  svgBegin 500 500 ++ 
  -- Emoji padrão :|
  (svgCircle 120 120 100 "stroke: #ccc500;stroke-width: 3;fill: rgb(255, 244, 84);") ++ 
  (svgCircle 80 80 20 "stroke: #ccc500;stroke-width: 1;fill: rgb(255, 255, 255);") ++ 
  (svgCircle 160 80 20 "stroke: #ccc500;stroke-width: 1;fill: rgb(255, 255, 255);") ++ 
  (svgRectangle 70 140 100 20 "stroke: #ccc500;stroke-width: 1;fill: rgb(255, 255, 255);") ++
  -- Emoji Feliz C:
  (svgCircle 380 120 100 "stroke: #29cc00;stroke-width: 3; fill: rgb(130, 255, 102);") ++ 
  (svgCircle 420 80 20 "stroke: #29cc00;stroke-width: 1;fill: rgb(255, 255, 255);") ++ 
  (svgCircle 340 80 20 "stroke: #29cc00;stroke-width: 1;fill: rgb(255, 255, 255);") ++ 
  (svgPath "M 430 130 C 420 190 340 190 330 130" "stroke: #29cc00; stroke-width: 4; fill: none;") ++
  -- Emoji Bravo >:C
  (svgCircle 120 380 100 "stroke: #bd0000;stroke-width: 3;fill: rgb(255, 99, 99);") ++ 
  (svgCircle 80 340 20 "stroke: #bd0000;stroke-width: 1;fill: rgb(255, 255, 255);") ++
  (svgPath "M 70 310 L 110 340"  "stroke: #bd0000; stroke-width: 4; fill: none;") ++  
  (svgCircle 160 340 20 "stroke: #bd0000;stroke-width: 1;fill: rgb(255, 255, 255);") ++ 
  (svgPath "M 170 310 L 130 340"  "stroke: #bd0000; stroke-width: 4; fill: none;") ++ 
  (svgPath "M 70 430 C 80 370 160 370 170 430"  "stroke: #bd0000; stroke-width: 4; fill: none;") ++  
  -- Emoji Triste :C
  (svgCircle 380 380 100 "stroke: #001cbd;stroke-width: 3;fill: rgb(99, 146, 255);") ++ 
  (svgCircle 420 340 20 "stroke: #001cbd;stroke-width: 1;fill: rgb(255, 255, 255);") ++ 
  (svgCircle 340 340 20 "stroke: #001cbd;stroke-width: 1;fill: rgb(255, 255, 255);") ++ 
  (svgPath "M 430 430 C 420 370 340 370 330 430"  "stroke: #001cbd; stroke-width: 4; fill: none;") ++
  svgEnd

main :: IO ()
main = do
  writeFile "./Haskell01parte3/circles.svg" svgAll
  
