SELECT * FROM tb_pedidos;
SELECT * FROM tb_cliente;

CREATE TABLE tb_pedidos (
	id INT NOT NULL IDENTITY PRIMARY KEY,
	data_ped DATETIME NOT NULL,
	id_cli INT NOT NULL REFERENCES tb_cliente(id),
	total_ped DECIMAL(19,2) NOT NULL,
	status_ped TINYINT DEFAULT 0
)

INSERT INTO tb_pedidos VALUES('2023-03-01',4,5000,1);
INSERT INTO tb_pedidos VALUES('2023-04-01', 4, 2000,1);
INSERT INTO tb_pedidos VALUES('2023-06-02', 6, 1000,1);

SELECT b.nome_cli AS nome, a.data_ped AS data, a.total_ped AS total
FROM tb_pedidos AS a
INNER JOIN tb_cliente AS b ON a.id_cli = b.id;
-- INNER JOIN retorna as partes pertencentes a A e a B ao mesmo tempo.

SELECT * FROM tb_cliente
LEFT JOIN tb_pedidos ON tb_cliente.id = tb_pedidos.id_cli;
-- LEFT/RIGHT JOIN retorna a tabela A e as partes de B que a interceptam (vice e versa).

SELECT * FROM tb_cliente
FULL JOIN tb_pedidos ON tb_cliente.id = tb_pedidos.id_cli
WHERE tb_cliente.id IS NULL OR tb_pedidos.id_cli IS NULL;
-- FULL JOIN retorna dados da tabela A e dados da tabela B que nao se relacionam.

