
promedio :: Float  -> Float  -> Float
promedio x y = (x+y) / 2

multiplicar :: Int -> Int -> Int
multiplicar g h = g * h

f :: Int -> Int
f z = 5 * z

duplica2 :: Int -> Int
duplica2 a = a + a


por2 :: Int -> Int
por2 x = 2 * x


esMultiploDe2 :: Int -> Bool
esMultiploDe2 x | (mod x 2 == 0) = True
                | otherwise = False



esBisiesto :: Int -> Bool
esBisiesto x | ((mod x 4 == 0) || (mod x 400 == 0))  && (mod x 100 /= 0) = True
             | otherwise = False

dispersion :: Int -> Int -> Int -> Int
dispersion x y z | (x >= z) && (x >= y) && (y >= z) = x - z
                 |  (y >= z) && (y >= x) && (x >= z) = y - z
                 |  (z >= x) && (z >= y) && (y >= x) = z - x
                 |  (x >= z) && (x >= y) && (z >= y) = x - y
                 |  (y >= z) && (y >= x) && (z >= x) = y - x
                 |  (z >= x) && (z >= x) && (x >= y) = z - y

type TernaDeNumeros = (Int , Int , Int )

segundoNum :: (TernaDeNumeros) -> Int
segundoNum (a, b , c) = b


ordenaTuplas2 :: (Int, Int) -> (Int, Int)
ordenaTuplas2 (a, b) | a >= b = (a, b)
                     | b >= a = (b , a)


rangoDePrecio :: Int -> (Int , Int) -> String
rangoDePrecio x (a, b) | (x >= b) && (x > a) = "Muy caro!!!"
                       | (x <= a) && (x < b)  = "Muy Barato:D"
                       | (b > x) && (x > a) = "raro"
                       | x < 0 = "wtf"
                       | a > b = "el rango va al reves rey"

maxTri :: (Int,Int,Int) -> Int
maxTri (x ,y ,z) |  (x >= z) && (x >= y)  = x
                       |  (y >= z) && (y >= x)   = y
                       |  (z >= x) && (z >= y)   = z

minTri :: (Int,Int,Int) -> Int
minTri (x ,y ,z) |  (x <= z) && (x <= y)  = x
                       |  (y <= z) && (y <= x)  = y
                       |  (z <= x) && (z <= y)  = z

medTri :: (Int,Int,Int) -> Int
medTri (x ,y ,z)       |  (x <= z) && (x >= y)  = x
                       |  (y <= z) && (y >= x)  = y
                       |  (z <= x) && (z >= y)  = z
                       |  (x >= z) && (x <= y)  = x
                       |  (y >= z) && (y <= x)  = y
                       |  (z >= x) && (z <= y)  = z







mayorQue3 :: (Int, Int, Int) -> (Bool, Bool, Bool)
mayorQue3 (a ,b ,c) = (a > 3, b > 3, c > 3)



todosIguales :: (Int,Int,Int) -> Bool
todosIguales (a,b,c) = (a == b) && (c == a)



sumar1 :: [Int] -> [Int]
sumar1[] = []
sumar1(x:xs) = x + 1 : sumar1(xs)


solopares :: [Int] -> [Int]
solopares [] = []
solopares (x:xs) | (mod x 2 == 0) = x : solopares (xs)
                 | otherwise = solopares (xs)


acumula :: Int -> Int
acumula 0 = 1
acumula x = x * acumula (x-1)

potencia :: Int -> Int -> Int
potencia x 0 = 1
potencia x y = x * potencia x (y-1)

type Alumnos =  (String,String,Int)

apellidos :: [(Alumnos)] -> [String]

apellidos [] = []
apellidos ((nom,ap,ed):xs) = ap : apellidos xs