SELECT SUM(total_ped) AS total FROM tb_pedidos WHERE data_ped BETWEEN 2023-02-02 AND 2023-12-31;

SELECT dbo.fn_total_ped(2023-02-02,2023-12-31) AS total

CREATE FUNCTION dbo.fn_total_ped
(
	@inicio DATETIME,
	@termino DATETIME
)
RETURNS DECIMAL(19,2)
AS
BEGIN
	DECLARE @total DECIMAL(19,2)
	SELECT @total = SUM(total_ped)
	FROM tb_pedidos 
	WHERE data_ped BETWEEN @inicio AND @termino;
	RETURN @total;
END
GO


EXEC sp_help tb_pedidos