--Ejercicio 3
data ListaAsoc a b = Vacia | Nodo a b ( ListaAsoc a b ) deriving (Eq, Show)

la_suma_mayores ::  Num b => Ord b => ListaAsoc a b -> b -> b
la_suma_mayores Vacia x = 0
la_suma_mayores (Nodo a b c) x | (b > x)  = b + (la_suma_mayores c x)
                               | otherwise =  (la_suma_mayores c x)