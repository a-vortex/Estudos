CREATE TABLE tb_cliente (
	id INT NOT NULL PRIMARY KEY IDENTITY, --auto incremento
	nome_cli VARCHAR(100) NOT NULL,
	renda_cli DECIMAL(19,2) DEFAULT 0,
	email_cli VARCHAR(255) NOT NULL,
	data_cli DATETIME NOT NULL,
	CHECK (renda_cli >= 0)
)

INSERT INTO tb_cliente VALUES
('Djalma Sindeaux', 19500,  'djalma@code.com', '1990-01-01'),
('Joao Rangel', 19600, 'joao@code.com', '1990-01-01'),
('glaucio daniel', 0, 'glaucio@code.com', '1990-01-01');

EXEC sp_help tb_cliente;

SELECT COUNT(*) FROM tb_cliente;

SELECT * FROM tb_cliente

SELECT TOP 1 * FROM tb_cliente;
SELECT TOP 1 id, nome_cli AS nome FROM tb_cliente;