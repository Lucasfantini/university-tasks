data Carrera = Matematica | Fisica | Computacion | Astronomia deriving (Eq,Show)

titulo :: Carrera -> String
titulo Matematica = "Licenciatura en Matemática"
titulo Fisica = "Licenciatura en Física"
titulo Computacion = "Licenciatura en Ciencias de la Computación"
titulo Astronomia = "Licenciatura en Astronomía"

data NotaBasica = Do | Re | Mi | Fa | Sol | La | Si deriving (Eq, Ord, Show)


cifradoAmericano :: NotaBasica -> Char
cifradoAmericano Do = 'C'
cifradoAmericano Re = 'D'
cifradoAmericano Mi = 'E'
cifradoAmericano Fa = 'F'
cifradoAmericano Sol = 'G'
cifradoAmericano La = 'A'
cifradoAmericano Si = 'B'

-- Ejercicio 3A
-- a

minElemento :: Ord a => [a] -> a
minElemento [x] = x
minElemento (x:xs) = min x (minElemento xs)


--b
minElemento' :: (Bounded a, Ord a)=> [a] -> a
minElemento' [] = minBound 
minElemento' xs = minElemento xs


-- Ejercicio 4
--Cargo y Area son tipos enumerados

data Cargo = Titular | Asociado | Adjunto | Asistente | Auxiliar deriving (Eq,Show)

data Area = Administrativa | Ensenanza | Economica | Postgrado deriving (Eq,Show)

type Ingreso = Int

data Persona = Decane  | Docente Cargo | NoDocente Area | Estudiante Carrera Ingreso deriving (Eq,Show)


--c 
cuantos_doc :: [Persona] -> Cargo -> Int
cuantos_doc [] _ = 0
cuantos_doc ((Docente cargo):xs) c | cargo == c = 1 + cuantos_doc xs c
                                   | otherwise = cuantos_doc xs c
cuantos_doc (x:xs) c = cuantos_doc xs c


-- d
filtraDoc :: Cargo -> Persona -> Bool
filtraDoc c (Docente cargo) = cargo == c
filtraDoc _ _ = False

cuantos_doc' :: [Persona] -> Cargo -> Int
cuantos_doc' xs c = length (filter (filtraDoc c) xs)


--Ejercicio 5
data Alteracion = Bemol | Sostenido | Natural deriving (Eq,Show)
data NotaMusical = Nota NotaBasica Alteracion  deriving (Show) 

sonido :: NotaBasica -> Int
sonido Do = 1
sonido Re = 3
sonido Mi = 5
sonido Fa = 6
sonido Sol = 8
sonido La = 10
sonido Si = 12


--b
sonidoCromatico :: NotaMusical -> Int
sonidoCromatico (Nota Do Bemol) = 12 
sonidoCromatico (Nota Si Sostenido) = 1
sonidoCromatico (Nota n a) | a == Bemol = sonido n + 1
                           | a == Sostenido = sonido n - 1
                           | otherwise = sonido n


--c
instance Eq NotaMusical where 
  (Nota n a) == (Nota b c) = (sonidoCromatico (Nota n a)) == (sonidoCromatico (Nota b c)) 
--d
instance Ord NotaMusical where
   f1 <= f2 = sonidoCromatico f1 <= sonidoCromatico f2


--Ejercicio 6
primerElemento :: [a] -> Maybe a
primerElemento [] = Nothing
primerElemento (x:xs) = Just x

--Ejercicio 7


data Cola = VaciaC | Encolada Persona Cola deriving (Eq,Show)

atender :: Cola -> Maybe Cola
atender VaciaC = Nothing
atender (Encolada _ c) = Just c


encolar :: Persona -> Cola -> Cola 
encolar p VaciaC = Encolada p VaciaC
encolar p (Encolada p2 c) = Encolada p2 (encolar p c)


busca :: Cola -> Cargo -> Maybe Persona
busca VaciaC c = Nothing
busca (Encolada (Docente c1) col) c | (c1 == c) = Just (Docente c1) 
busca (Encolada p col)c = busca col c 

type GuiaTelefonica = ListaAsoc String Int
data ListaAsoc a b = Vacia | Nodo a b ( ListaAsoc a b ) deriving (Eq, Show)


-- ejercicio 8



la_long :: ListaAsoc a b -> Int
la_long Vacia  = 0
la_long (Nodo a1 b1 z) = 1 + (la_long z)


la_concat :: ListaAsoc a b -> ListaAsoc a b -> ListaAsoc a b
la_concat Vacia r = r
la_concat (Nodo a b z) r = la_concat z (Nodo a b r )

la_agregar :: ListaAsoc a b -> a -> b -> ListaAsoc a b
la_agregar Vacia a1 b1 = (Nodo a1 b1 Vacia)
la_agregar (Nodo a b z) a1 b1 = Nodo a b (la_agregar z a1 b1)

la_pares :: ListaAsoc a b -> [(a, b)] 
la_pares Vacia = []
la_pares (Nodo a b z) = la_pares z ++ [(a,b)]

la_busca :: Eq a => ListaAsoc a b -> a -> Maybe b
la_busca Vacia a = Nothing
la_busca (Nodo a1 b z) a | a1 == a = Just b
                         | otherwise = la_busca z a

la_borrar :: Eq a => a -> ListaAsoc a b -> ListaAsoc a b
la_borrar a Vacia  = Vacia
la_borrar a (Nodo a1 b z) | (a1 == a) = z
                          | otherwise = (Nodo a1 b (la_borrar a z))
