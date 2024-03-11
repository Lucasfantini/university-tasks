-- EJERCICIO 1 
-- a
esCero :: Int -> Bool 
esCero x = x == 0

-- b
esPositivo :: Int -> Bool 
esPositivo x = x > 0

-- c 
esVocal :: Char -> Bool 
esVocal c = c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u'

-- EJERCICIO 2  
-- a
paratodo''' :: [Bool] -> Bool 
paratodo''' [] = True
paratodo''' (x:xs) = x && (paratodo''' xs)

-- b
sumatoria :: [Int] -> Int 
sumatoria [] = 0
sumatoria (x:xs) = x + (sumatoria xs)

-- c
productoria :: [Int] -> Int
productoria [] = 1
productoria (x:xs) = x * (productoria xs)

-- d
factorial :: Int -> Int 
factorial 0 = 1
factorial n = n * (factorial (n-1))

-- e
promedio :: [Int] -> Int
promedio [] = 0
promedio xs = (sumatoria xs) `div` (length xs)

-- EJERCICIO 3
pertenece :: Int -> [Int] -> Bool
pertenece _ [] = False
pertenece e (x:xs) = e == x || pertenece e xs

-- EJERCICIO 4
-- a
paratodo' :: [a] -> (a -> Bool) -> Bool
paratodo' [] _ = True
paratodo' (x:xs) f = (f x) && (paratodo' xs f)

-- b
existe' :: [a] -> (a -> Bool) -> Bool 
existe' xs f = not (paratodo' xs (not . f))

-- c 
sumatoria' :: [a] -> (a -> Int) -> Int
sumatoria' [] _ = 0
sumatoria' (x:xs) f = (f x) + (sumatoria' xs f)

-- d 
productoria' :: [a] -> (a -> Int) -> Int 
productoria' xs f = productoria (map f xs)

-- EJERCICIO 5
paratodo :: [Bool] -> Bool 
paratodo xs = paratodo' xs id

-- EJERCICIO 6
-- a
todosPares :: [Int] -> Bool
todosPares xs = paratodo' xs even

-- b
hayMultiplo :: Int -> [Int] -> Bool
hayMultiplo n xs = existe' xs (esCero . (`mod` n))

-- c
sumaCuadrados :: Int -> Int
sumaCuadrados n = sumatoria' [0..(n-1)] (^ 2)

-- d
-- sin recursión
factorial' :: Int -> Int
factorial' n = productoria [1..n]

-- e
-- usando productoria':
multiplicaPares xs = productoria' xs desecharImpares
  where desecharImpares n = if odd n then 1 else n

-- EJERCICIO 8
duplicarTodos :: [Int] -> [Int]
duplicarTodos [] = []
duplicarTodos (x:xs) = 2*x : duplicarTodos xs

duplicarTodos' :: [Int] -> [Int]
duplicarTodos' xs = map (*2) xs

-- EJERCICIO 9
-- a
soloPares :: [Int] -> [Int]
soloPares [] = []
soloPares (x:xs)
  | even x = x : soloPares xs
  | otherwise = soloPares xs

-- b
soloPares' :: [Int] -> [Int]
soloPares' xs = filter even xs

-- c
-- sin usar productoria':
multiplicaPares' :: [Int] -> Int
multiplicaPares' xs = productoria $ filter even xs

-- EJERCICIO 10
primIgualesA :: Eq a => a -> [a] -> [a]
primIgualesA _ [] = []
primIgualesA v (x:xs)
  | v == x = v : (primIgualesA v xs)
  | otherwise = []

primIgualesA' :: Eq a => a -> [a] -> [a]
primIgualesA' v xs = takeWhile (== v) xs

-- EJERCICIO 11
primIguales :: Eq a => [a] -> [a]
primIguales [] = []
primIguales [x] = [x]
primIguales (x:xs)
  | x == (head xs) = x : (primIguales xs)
  | otherwise = [x]

primIguales' :: Eq a => [a] -> [a]
primIguales' xs = primIgualesA' (head xs) xs

-- EJERCICIO 12
cuantGen :: (b -> b -> b) -> b -> [a] -> (a -> b) -> b
cuantGen _ z [] _ = z
cuantGen op z (x:xs) t = (t x) `op` (cuantGen op z xs t)

paratodo'' :: [a] -> (a -> Bool) -> Bool
paratodo'' xs f = cuantGen (&&) True xs f

existe'' :: [a] -> (a -> Bool) -> Bool
existe'' xs f = cuantGen (||) False xs f

sumatoria'' :: [a] -> (a -> Int) -> Int
sumatoria'' xs f = cuantGen (+) 0 xs f

productoria'' :: [a] -> (a -> Int) -> Int 
productoria'' xs f = cuantGen (*) 1 xs f

{-- EJERCICIO 13
a)
f :: (a, b) -> ...
f (x , y) = ...

Está bien tipado y el patrón cubre todos los casos.
No puedo decir el tipo concreto de las variables x e y, ya que es una expresión polimórfica.


b)
f :: [(a, b)] -> ...
f (a , b) = ...

No está bien tipado, porque f toma una lista de duplas, no una sola dupla.


c)
f :: [(a, b)] -> ...
f (x:xs) = ...

Está bien tipado, pero no cubre el caso de una lista vacía.
x :: (a, b)
xs :: [(a, b)]


d)
f :: [(a, b)] -> ...
f ((x, y) : ((a, b) : xs)) = ...

Está bien tipado, pero solo cubre los casos en que pasamos una lista con al menos dos elementos.
xs :: [(a, b)]
Las variables x y a b tienen tipo polimórfico.


e)
f :: [(Int, a)] -> ...
f [(0, a)] = ...

Está bien tipado, pero solo cubre el caso en que pasamos una lista con un elemento, y donde el primer elemento de la dupla es un 0.
a es una variable con tipo polimórfico.


f)
f :: [(Int, a)] -> ...
f ((x, 1) : xs) = ...

Está bien tipado.
x :: Int
xs :: [(Int, Int)]
Pero solo cubre los casos en que le pasamos una lista del tipo [(Int, Int)], donde el segundo elemento de la primer dupla es un 1.
Tampoco cubre la lista vacía.


g)
f :: (Int -> Int) -> Int -> ...
f a b = ...

Está bien tipado y cubre todos los casos.
a :: Int -> Int
b :: Int


h)
f :: (Int -> Int) -> Int -> ...
f a 3 = ...

Está bien tipado, pero solo cubre los casos en que el segundo argumento es 3
a :: Int -> Int


i)
f :: (Int -> Int) -> Int -> ...
f 0 1 2 = ...

No está bien tipado, ya que f toma una función Int -> Int como primer argumento y un Int como segundo,
pero se está usando como si tomase tres Int como argumentos.
--}

{-- EJERCICIO 14
a)
f :: (a, b) -> b

f (x, y) = y
No puedo dar otra definición, porque no sé el tipo concreto de las variables, entonces no sé qué operaciones puedo hacerles.


b)
f :: (a, b) -> c

No existe implementación de esta función.


c)
f :: (a -> b) -> a -> b

f funcion x = funcion x


d)
f :: (a -> b) -> [a] -> [b]

f funcion (x:xs) = (funcion x) : f xs

Esta es la función map.


e)
f :: (a -> b) -> (b -> c) -> a -> c

f g h x = h (g x)

Esta es parecida a la composición de funciones (.), solo que el resultado de la primer función se pasa a la segunda.
g . h == h `f` g


((-) 3) `f` esCero
esCero . ((-) 3)
estas dos funciones son iguales: toman un número, le restan tres, y devuelven True si el resultado es 0, False si no lo es.
--}
