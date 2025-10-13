bmiTell bmi
    | bmi <= 18.5 = "tienes infrapeso"
    | bmi <= 25.0 = "supuestamente eres normal"
    | bmi <= 30.0 = "Estas pasado de peso"
    | otherwise   = "tienes obesidad"

imc p a = p / a^2

bmiMsg p a = bmiTell (imc p a)

prom x y z = (x + y + z) / 3
evalProm p
    | p < 70    = "REPROBADO"
    | p < 90    = "ACEPTABLE"
    | p <= 100  = "EXCELENTE"
    | otherwise = "CALIFICACIÓN INVÁLIDA"
promMsg x y z = evalProm (prom x y z)