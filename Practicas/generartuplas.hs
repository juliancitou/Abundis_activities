cuadrilateros = [(a,b,c,d) | a <- [1..5], b <- [1..5], c <- [1..5], d <- [1..5]]
rectangulos = [(a,b,c,d) | (a,b,c,d) <- cuadrilateros, a == c, b == d, a + b + c + d == 16]


