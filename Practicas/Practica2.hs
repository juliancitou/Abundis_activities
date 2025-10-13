main :: IO ()
main = do
    putStrLn "=== Calculadora en Haskell ==="
    putStrLn "Ingresa el primer número:"
    n1 <- readLn :: IO Double
    putStrLn "Ingresa el operador (+, -, *, /):"
    op <- getLine
    putStrLn "Ingresa el segundo número:"
    n2 <- readLn :: IO Double

    let resultado = case op of
            "+" -> n1 + n2
            "-" -> n1 - n2
            "*" -> n1 * n2
            "/" -> if n2 /= 0 then n1 / n2 else error "Error: división entre 0"
            _   -> error "Operador no válido"

    putStrLn ("Resultado: " ++ show resultado)