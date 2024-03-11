-- # :: ListofT -> Nat 
-- !!:: listofT -> Nat -> T
-- take :: listOfT -> Nat  -> ListOfT
-- drop :: listOfT -> Nat  -> ListOfT
-- ++ :: listOfT -> ListOfT -> ListOfT
-- < :: listOfT -> T -> ListOfT
-- tail :: listofT -> ListofT

-- Ejercicio 3



-- filter

solopares ::  [Int] -> [Int]
solopares [] = [] 
solopares (x:xs) | mod x  2  == 0 = x : solopares xs
               | otherwise = solopares xs



mayorque :: Int -> [Int] -> [Int]
mayorque n [] = []
mayorque n (x:xs) | n < x  = x : mayorque n xs
                  | otherwise = mayorque n xs

mayorque10 :: [Int] -> [Int]
mayorque10 [] = [] 
mayorque10 (x:xs) | x > 10 = x : mayorque10 xs
                  | otherwise = mayorque10 xs

-- map

duplica :: [Int] -> [Int]
duplica [] = []
duplica (x:xs) = x * 2 : duplica xs


multiplican :: Int -> [Int] -> [Int]
multiplican n [] = []
multiplican n (x:xs) = (n * x) : multiplican n xs 

suman1 :: [Int] -> [Int]
suman1 [] = []
suman1 (x:xs) = (x + 1) : suman1 xs

--fold

productoria :: [Int] -> Int
productoria [] = 1
productoria (x:xs) = x * productoria xs


todosMenores10 :: [Int] -> Bool
todosMenores10 [] = True
todosMenores10 (x:xs) | x >= 10 = False
todosMenores10 (x:xs) | x < 10 = True && todosMenores10 xs

hay0 :: [Int] -> Bool
hay0 [] = False
hay0 (x:xs) | (x == 0) = True
hay0 (x:xs) | (x /= 0) = hay0 xs

hayun0 :: [Int] -> Bool
hayun0 [] = False
hayun0 (x:xs) | (mod x 10 == 0) = True
              | (mod x 10 /= 0) = hayun0 xs



cardinal :: [a] -> Int
cardinal [] = 0 
cardinal (y:xs) = 1 + cardinal xs

queNhay :: Int -> [y] -> y
queNhay 0 (x:xs) = x 
queNhay n (x:xs) = queNhay (n-1) xs 


tiraList :: Int -> [a] -> [a]
tiraList 0 xs = []
tiraList n (x:xs) = x : tiraList (n-1) xs


arroja :: Int -> [a] -> [a]
arroja 0 xs = xs
arroja n (x:xs) = arroja (n-1) xs



sumaListas :: [a] -> [a] -> [a]
sumaListas [] ys = ys
sumaListas xs [] = xs
sumaListas (x:xs) ys =  x : sumaListas xs (ys)


teLoHagoLista :: a -> [a] -> [a]
teLoHagoLista a [] = a : []
teLoHagoLista a (x:xs) = x : teLoHagoLista a xs 


head :: [x] -> x
head (x:xs) = x

--filter
maximo :: [Int] -> Int
maximo (x : y : xs) | (x > y) =  maximo (x:xs)
                    | (y > x) =  maximo (y:xs)
maximo (x:xs) = x

-- Unzip 

sumapares :: [(Int, Int)] -> Int
sumapares [] = 0
sumapares ((x, y):xs) = x + y + sumapares xs


todos0y1 :: [Int] -> Bool
todos0y1 [] = True
todos0y1 (x:xs) | (0 == x )  = True && todos0y1 xs
                | (x == 1)  = True && todos0y1 xs
                | otherwise = False 
              




quitar0s :: [Int] -> [Int]
quitar0s [] = []
quitar0s (x:xs) | (x  /= 0) = x : quitar0s xs
                | (x == 0) = quitar0s xs

tail :: [Int] -> [Int]
tail (x:xs) = xs



ultimo :: [Int] -> Int
ultimo (x:y:xs) = ultimo (y:xs)
ultimo (x:xs) = x

repetir :: Int -> Int -> [Int]
repetir 0 k = []
repetir n k = k : repetir (n-1) k 



concatenando :: [[a]] -> [a]
concatenando  ((xs):ys) =  sumaListas (xs) (concatenando (ys)) 
concatenando [] = [] 

rev :: [Int] -> [Int]
rev [] = []
rev (x:xs) = teLoHagoLista (x) (rev xs)
