SELECT COUNT(*) AS total FROM tb_cliente

SELECT
	COUNT(*) AS total,
	SUM(renda_cli) AS salario_total,
	CONVERT(DECIMAL(19,2), AVG(renda_cli)) AS media_salarial,
	MAX(renda_cli) AS maior_salario,
	MIN(renda_cli) AS menor_salario
FROM tb_cliente;