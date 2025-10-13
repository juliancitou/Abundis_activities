-- Conversor de Monedas Simple
-- Tasas de cambio base (relativas al dólar USD)
tasaDolar = 1.0
tasaPeso = 20.0      -- 1 USD = 20 MXN
tasaEuro = 0.92      -- 1 USD = 0.92 EUR
tasaYen = 149.0      -- 1 USD = 149 JPY
tasaLibra = 0.79     -- 1 USD = 0.79 GBP

-- Funciones de conversión desde cada moneda a USD
dolarAUsd x = x
pesoAUsd x = x / tasaPeso
euroAUsd x = x / tasaEuro
yenAUsd x = x / tasaYen
libraAUsd x = x / tasaLibra

-- Funciones de conversión desde USD a cada moneda
usdADolar x = x
usdAPeso x = x * tasaPeso
usdAEuro x = x * tasaEuro
usdAYen x = x * tasaYen
usdALibra x = x * tasaLibra

-- Conversiones Dólar a otras monedas
dolarAPeso x = usdAPeso (dolarAUsd x)
dolarAEuro x = usdAEuro (dolarAUsd x)
dolarAYen x = usdAYen (dolarAUsd x)
dolarALibra x = usdALibra (dolarAUsd x)

-- Conversiones Peso a otras monedas
pesoADolar x = usdADolar (pesoAUsd x)
pesoAEuro x = usdAEuro (pesoAUsd x)
pesoAYen x = usdAYen (pesoAUsd x)
pesoALibra x = usdALibra (pesoAUsd x)

-- Conversiones Euro a otras monedas
euroADolar x = usdADolar (euroAUsd x)
euroAPeso x = usdAPeso (euroAUsd x)
euroAYen x = usdAYen (euroAUsd x)
euroALibra x = usdALibra (euroAUsd x)

-- Conversiones Yen a otras monedas
yenADolar x = usdADolar (yenAUsd x)
yenAPeso x = usdAPeso (yenAUsd x)
yenAEuro x = usdAEuro (yenAUsd x)
yenALibra x = usdALibra (yenAUsd x)

-- Conversiones Libra a otras monedas
libraADolar x = usdADolar (libraAUsd x)
libraAPeso x = usdAPeso (libraAUsd x)
libraAEuro x = usdAEuro (libraAUsd x)
libraAYen x = usdAYen (libraAUsd x)

-- Función helper para mostrar resultados
mostrar nombre valor = putStrLn (nombre ++ ": " ++ show valor)

-- Ejemplos de uso:
-- dolarAPeso 100
-- pesoAEuro 500
-- euroAYen 50
-- yenALibra 1000
-- libraADolar 25