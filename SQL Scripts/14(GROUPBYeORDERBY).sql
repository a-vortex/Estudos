-- VAI DAR ERRO!
SELECT b.nome_cli AS nome, a.total_ped AS total
FROM tb_pedidos AS a
INNER JOIN tb_cliente AS b ON a.id_cli = b.id
GROUP BY b.id
-- A coluna 'tb_cliente.nome_cli' é inválida na lista de seleção 
-- porque não está contida em uma função de agregação nem na cláusula GROUP BY. (está b.nome_cli, que nao foi agrupado)

-- VAI DAR ERRO!
SELECT b.id AS ide_cliente, a.total_ped AS total
FROM tb_pedidos AS a
INNER JOIN tb_cliente AS b ON a.id_cli = b.id
GROUP BY b.id
-- A coluna 'tb_pedidos.total_ped' é inválida na lista de seleção 
-- porque não está contida em uma função de agregação nem na cláusula GROUP BY.
-- a funcao precisa retornar apenas uma linha, o que nao acontece se pedir para retornar total_ped, sem estar aggrupada

SELECT b.id AS ide_cliente, SUM(a.total_ped) AS total
FROM tb_pedidos AS a
INNER JOIN tb_cliente AS b ON a.id_cli = b.id
GROUP BY b.id
-- Neste caso, esta sendo agrupado apenas pelo ID, mas queremos o nome
-- POREM se trocarmos b.id por b.nome_cli, se houver duas pessoas com nome identico elas seriam agrupadas JUNTAS!!!
-- SOLUCAO: agrupar POR id E pelo nome

SELECT b.id AS ide_cliente, b.nome_cli AS Nome, SUM(a.total_ped) AS soma
FROM tb_pedidos AS a
INNER JOIN tb_cliente AS b ON a.id_cli = b.id
GROUP BY b.id, b.nome_cli;

SELECT b.id AS ide_cliente, b.nome_cli AS Nome, MIN(a.total_ped) AS minimo
FROM tb_pedidos AS a
INNER JOIN tb_cliente AS b ON a.id_cli = b.id
GROUP BY b.id, b.nome_cli;

SELECT b.id AS ide_cliente, b.nome_cli AS Nome, MAX(a.total_ped) AS maximo
FROM tb_pedidos AS a
INNER JOIN tb_cliente AS b ON a.id_cli = b.id
GROUP BY b.id, b.nome_cli;

SELECT b.id AS ide_cliente, b.nome_cli AS Nome, AVG(a.total_ped) AS media
FROM tb_pedidos AS a
INNER JOIN tb_cliente AS b ON a.id_cli = b.id
GROUP BY b.id, b.nome_cli;

SELECT b.id AS ide_cliente, b.nome_cli AS Nome, SUM(a.total_ped) AS soma
FROM tb_pedidos AS a
INNER JOIN tb_cliente AS b ON a.id_cli = b.id
WHERE a.data_ped BETWEEN '2023-04-01' AND '2023-05-31'
GROUP BY b.id, b.nome_cli;

SELECT b.id AS ide_cliente, b.nome_cli AS Nome, SUM(a.total_ped) AS soma
FROM tb_pedidos AS a
INNER JOIN tb_cliente AS b ON a.id_cli = b.id
GROUP BY b.id, b.nome_cli HAVING SUM(a.total_ped) >1000;
 
 SELECT b.id AS ide_cliente, b.nome_cli AS Nome, SUM(a.total_ped) AS soma
FROM tb_pedidos AS a
INNER JOIN tb_cliente AS b ON a.id_cli = b.id
GROUP BY b.id, b.nome_cli 
ORDER BY soma asc, b.nome_cli DESC -- ORDER BY SEMPRE POR ULTIMO