CREATE TABLE tb_cliente2 (
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome_cli] [varchar](100) NOT NULL,
	[email_cli] [varchar](255) NOT NULL,
)

INSERT INTO tb_cliente2
SELECT nome_cli, email_cli 
FROM tb_cliente 
WHERE renda_cli > 10000;

SELECT * FROM tb_cliente2;