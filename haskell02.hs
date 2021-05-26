-- Prática 02 de Haskell
-- Nome: Natã Schmitt

tempFebre :: Float -> Bool
tempFebre = (> 37.8)

comFebre :: [Float] -> [Float]
comFebre = filter tempFebre

comFebre' :: [Float] -> [Float]
comFebre' = filter (> 37.8)

itemize :: [String] -> [String]
itemize = map (\s -> "<li>"++ s ++"</li>")

bigCircles :: Float -> [Float] -> [Float]
bigCircles area = filter (\r -> r^2*pi > area)

quarentena :: [(String,Float)] -> [(String,Float)]
quarentena = filter (tempFebre . snd)

idadesEm :: [Int] -> Int -> [Int]
idadesEm l a = map (a+) l

upperOrNot :: String -> String
upperOrNot s = if 'A'==head s then "Super " else ""

changeNames :: [String] -> [String]
changeNames = map (\r -> upperOrNot r ++ r)

onlyShorts :: [String] -> [String]
onlyShorts = filter (\s -> length s < 5)