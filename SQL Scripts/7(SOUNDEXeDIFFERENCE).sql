SELECT SOUNDEX('michael'), SOUNDEX('maicol');
-- primeira letra do nome precisa ser igual

SELECT * FROM tb_cliente WHERE SOUNDEX(nome_cli) = SOUNDEX('Juan');
SELECT * FROM tb_cliente WHERE SOUNDEX(nome_cli) = SOUNDEX('Dijalma');

SELECT DIFFERENCE('Michael', 'Michael') -- 4 = muito semelhante
SELECT DIFFERENCE('Michael', 'Mikael') -- 4 = muito semelhante
SELECT DIFFERENCE('Michael', 'Maicou') -- 3 = Bem parecido
SELECT DIFFERENCE('Michael', 'glaucio') -- 2
-- menor do que 3 = mais ou menos, 0= completamente diferente