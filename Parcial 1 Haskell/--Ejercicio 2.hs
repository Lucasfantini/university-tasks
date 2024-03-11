type Titulo = String
type Artista = String
type Duracion = Int

data Genero = Rock | Blues | Pop | Jazz deriving Show

data Cancion = Tema Titulo Artista Genero Duracion | Publicidad Duracion

mismo_genero :: Genero -> Genero -> Bool
mismo_genero Rock Rock = True
mismo_genero Pop Pop = True
mismo_genero Blues Blues = True
mismo_genero Jazz Jazz = True
mismo_genero _ _ = False


solo_genero :: [Cancion] -> Genero -> [Titulo]
solo_genero [] _ = []
-- Caso para temas musicales
solo_genero ((Tema t a g d):xs) gi | mismo_genero g gi = t : solo_genero xs gi
                                   | otherwise = solo_genero xs gi
-- Caso para publicidades
solo_genero (x:xs) gi = solo_genero xs gi
