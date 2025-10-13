main :: IO ()
main = do
    putStrLn "Ingresa tu edad:"
    entrada <- getLine
    let edad = (read entrada :: Int)
    if edad >= 18
        then putStrLn "Eres mayor de edad"
        else putStrLn "Eres menor de edad"