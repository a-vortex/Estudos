EXEC sp_help tb_cliente

ALTER PROCEDURE dbo.sp_add_cli
@nome VARCHAR(100),
@renda DECIMAL(19,2),
@email VARCHAR(255),
@nascimento DATETIME
AS
BeGIN
	INSeRT INTO tb_cliente VALUES(@nome,@renda,@email,@nascimento);
	SELECT * FROM tb_cliente WHERE id=@@IDENTITY
END

EXEC sp_add_cli 'geisa', 5000,'geisa@code.com', '1999-01-01'

SELECT * FROM tb_cliente