CREATE PROCEDURE sp_cliente_update
@id_cli INT
AS
BEGIN
    DECLARE @qtd INT;
    DECLARE @total DECIMAL(19,2);

    SELECT @qtd = COUNT(*), @total = SUM(total_ped) FROM tb_pedidos WHERE tb_pedidos.id_cli = @id_cli;

    UPDATE tb_cliente SET qtd_ped = @qtd, total_ped = @total WHERE id = @id_cli;
END

CREATE TRIGGER tr_pedido_cliente_insert ON tb_pedidos AFTER INSERT
AS
BEGIN
    DECLARE @id INT;

    SELECT @id = id_cli FROM inserted; -- inserted: dados inseridos no insert que puxou a trigger

    EXECUTE sp_cliente_update @id;

END