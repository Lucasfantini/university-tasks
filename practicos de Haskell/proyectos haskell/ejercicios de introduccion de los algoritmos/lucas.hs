type X = Int
f :: Int -> Bool
f x = 2 == x


valor:: Bool
valor = 1 + 1 == 2 

entre0Y9 :: Int -> Bool
entre0Y9 x | x >= 0 && x <= 9 = True
           | x < 0  || x > 9 = False

valorAbsoluto:: Int -> Int
valorAbsoluto x | x < 0 = (-x) 
                | x >= 0 = x


esMultiploDeDos :: Int -> Bool
esMultiploDeDos x |  div x 2 * 2 /= x  = False
                  | otherwise = True


esMultiploDe :: Int -> Int -> Bool  
esMultiploDe x y   | y == 0 = True
                   | mod x y == 0  = True
                   | otherwise = False


esBisiesto :: Int -> Bool
esBisiesto x | (mod x 4 == 0 || mod x 400 == 0) && mod x 100 /= 0 = True
             | otherwise = False 

maxx :: Int -> Int -> Int -> Int
maxx x y z | x > z && x > y = x
           | y > x && y > z = y
           | z > y && z > x = z


minn :: Int -> Int -> Int -> Int
minn x y z | x < z && x < y = x
           | y < x && y < z = y
           | z < y && z < x = z


dispersion :: Int -> Int -> Int -> Int
dispersion x y z = maxx x y z - minn x y z 

deFaC :: Float -> Float
deFaC x = 1.8 * x + 32


segundotres :: (Int, Int, Int) -> Int
segundotres (x, y, z) = y


ordena :: Int -> Int -> (Int, Int)
ordena x y |x >= y = (x , y)
              |x < y = (y, x)


iguales :: (Int, Int, Int) -> Bool
iguales (a, b, c) | a == b && b == c = True
                  | otherwise = False


todosiguales :: [Int] -> Bool
todosiguales (x:y:xs) = (x == y) == todosiguales(x:xs)                   
todosiguales (x:xs) = True




contarLetras :: String -> Int
contarLetras  []  = 0
contarLetras (x: xs) = 1 + contarLetras xs   
compact :: [Int] -> [Int]
compact [] = []
compact (x:y:xs) |(x==y) = compact (y:xs)
                  |(x/=y) =x : compact xs
compact (x:xs) = [x]