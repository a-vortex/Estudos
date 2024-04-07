EXEC sp_help tb_cliente;

SET IDENTITY_INSERT tb_cliente ON;

INSERT INTO tb_cliente (id, nome_cli, renda_cli, email_cli, data_cli) 
VALUES(10, 'Ronaldo', 50, 'ronaldo@code.com', '1990-01-01');

SET IDENTITY_INSERT tb_cliente OFF;

INSERT INTO tb_cliente
VALUES('Ronaldo', 50, 'ronaldo@code.com', '1990-01-01');