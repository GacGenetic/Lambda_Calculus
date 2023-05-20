module Funcions_BOOL where

-- Funció suma definidida clàssicament - Dues entrades, una sortida
suma_00 :: (Int ,Int) -> Int
suma_00 (x,y) = x + y

-- Funció suma que agafa una entrada, i despreś l'altra
suma_01 :: Int -> Int -> Int
suma_01 x y = x + y

-- Definida amb la sintàxi pròpia del lambda càlcul
suma_03 = \x -> ( \y -> x + y )


--Amb aquesta sintaxi anem a definir els valors lògics TRUE i FALSE 
--No es poden posar majúscules utilitzarem _cert i _fals
_cert = (\x -> ( \y -> x ))
_fals = (\x -> ( \y -> y ))

--A partir d'aquesta definició de CERT I FALS, definirem l'operador NOT
_not = (\b ->  b _fals _cert)

-- Comprovem les funcions _cert, tornarà el primer paràmetre, i _fals, tornarà el segón paràmetre. 
-- ghci> _cert 1 2
-- 1
-- ghci> _fals 1 2
-- 2
-- Comprovem ara la funció not
-- ghci> _not _cert 1 2
-- 2
-- ghci> _not _fals 1 2
-- 1
