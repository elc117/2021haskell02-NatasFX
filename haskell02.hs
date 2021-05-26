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

--tempFebre1 :: (String,Float) -> Bool 
--tempFebre1 s = ((last s) > 37.8)

quarentena :: [(String,Float)] -> [(String,Float)]
quarentena = filter (tempFebre . snd)

idadesEm :: [Int] -> Int -> [Int]
idadesEm l a = map (a+) l

isUpper :: Char -> Bool
isUpper s = elem s ['A'..'Z']

changeNames :: [String] -> [String]
changeNames s = (map ("Super "++)) (filter (isUpper . head) s)

onlyShorts :: [String] -> [String]
onlyShorts = filter (\s -> length s < 5)