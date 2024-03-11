type Artista = String
type Titulo = String
type Duracion = Int
data Genero = Rock | Blues | Pop | Jazz deriving  (Show)
data Cancion = Tema Titulo Artista Genero Duracion | Publicidad Duracion  
instance Eq Cancion where
     (f2) == (f1)  =  ((duracion_De f2) == (duracion_De f1)) 
instance Ord Cancion where
    (f2) <= (f1)  =  ((duracion_De f2) <= (duracion_De f1))
    (f2) >= (f1)  =  ((duracion_De f2) >= (duracion_De f1))
mismo_Genero :: Genero -> Genero -> Bool
mismo_Genero Rock Rock = True
mismo_Genero Blues Blues = True
mismo_Genero Pop Pop = True
mismo_Genero Jazz Jazz = True 
mismo_Genero _ _ = False


duracion_De :: Cancion -> Duracion
duracion_De (Tema t a g d) = d
duracion_De (Publicidad d) = d