-- # :: ListofT -> Nat 
-- !!:: listofT -> Nat -> T
-- take :: listOfT -> Nat  -> ListOfT
-- drop :: listOfT -> Nat  -> ListOfT
-- ++ :: listOfT -> ListOfT -> ListOfT
-- < :: listOfT -> T -> ListOfT
-- tail :: listofT -> ListofT

-- Ejercicio 3




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


duplica :: [Int] -> [Int]
duplica [] = []
duplica (x:xs) = x * 2 : duplica xs


multiplican :: Int -> [Int] -> [Int]
multiplican n [] = []
multiplican n (x:xs) = (n * x) : multiplican n xs 

productoria :: [Int] -> Int
productoria [] = 1
productoria (x:xs) = x * productoria xs


todosMenores10 :: [Int] -> Bool
todosMenores10 [] = True
todosMenores10 (x:xs) | x >= 10 = False
todosMenores10 (x:xs) | x < 10 = True && todosMenores10 xs



cardinal :: [y] -> Int
cardinal [] = 0
cardinal (x:xs) = 1 + cardinal xs


queElementoHay :: [y] -> Int -> y
queElementoHay (x:xs) 0 = x
queElementoHay (x:xs) n = queElementoHay xs (n - 1) 

tomaUnaLista :: Int -> [y] -> [y]
tomaUnaLista 0 xs = []
tomaUnaLista n (x:xs) = x : tomaUnaLista (n - 1) xs 

tirar :: Int -> [a] -> [a]
tirar 0 xs = xs
tirar n (x:xs) = tirar (n - 1) xs 