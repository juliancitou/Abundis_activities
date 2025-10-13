import System.IO (hFlush, stdout)

-- Tipo de cambio: 1 dólar = 18 pesos
tipoCambio :: Float
tipoCambio = 18.0

main :: IO ()
main = do
    putStrLn "Conversor de monedas"
    putStrLn "1. Dólares a Pesos"
    putStrLn "2. Pesos a Dólares"
    putStr "Elige una opción (1 o 2): "
    hFlush stdout
    opcion <- getLine
    case opcion of
        "1" -> do
            putStr "Ingresa la cantidad en dólares: "
            hFlush stdout
            entrada <- getLine
            let dolares = read entrada :: Float
            let pesos = dolares * tipoCambio
            putStrLn ("Equivale a " ++ show pesos ++ " pesos.")
        "2" -> do
            putStr "Ingresa la cantidad en pesos: "
            hFlush stdout
            entrada <- getLine
            let pesos = read entrada :: Float
            let dolares = pesos / tipoCambio
            putStrLn ("Equivale a " ++ show dolares ++ " dólares.")
        _ -> putStrLn "Opción inválida."