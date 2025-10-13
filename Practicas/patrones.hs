lucky 6 = "El six de los viernes!"
lucky 7 = "El siete de la suerte!"
lucky 8 = "El ocho del chavo!" 
lucky x = "Lo siento, este valor no existe"

basta 'a'= "ant"
basta 'm'= "moka"
basta 'f'= "Ford"
basta 'r'= "Russian"
basta 'x'= "no existe"

calificacion :: Float -> String
calificacion nota
    | nota < 0 || nota > 10 = "Calificación no válida. Ya no lo intentes :)"  -- Primero verifica si está fuera de rango
    | nota >= 0 && nota <= 6 = "Reprobado"          -- Si nota está entre 0 y 6
    | nota == 7 = "Pasaste por un pelito"           -- Si nota es exactamente 7
    | nota == 8 = "Bien"                            -- Si nota es exactamente 8
    | nota == 9 = "Muy bien"                        -- Si nota es exactamente 9
    | nota == 10 = "Excelente"                      -- Si nota es exactamente 10
    | otherwise = "Calificación no válida. Ya no lo intentes :)"  -- Cualquier otro caso

perimetro :: (Int, Int) -> Int
perimetro (largo, ancho) = 2 * largo + 2 * ancho