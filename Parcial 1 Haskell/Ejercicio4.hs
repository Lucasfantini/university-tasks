data Arbol a = Hoja | Rama (Arbol a) a (Arbol a) deriving (Show)

a_listar :: Arbol a -> [a]
a_listar Hoja = []
a_listar (Rama l e r) = [e] ++ a_listar l ++ a_listar r