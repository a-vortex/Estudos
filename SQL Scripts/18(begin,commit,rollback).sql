begin transaction 
-- A instru��o DELETE conflitou com a restri��o do REFERENCE "FK__tb_pedido__id_cl__29221CFB". O conflito ocorreu no banco de dados "estudos", tabela "dbo.tb_pedidos", column 'id_cli'.
delete from tb_cliente where id < 5 

delete from tb_cliente where id < 5 AND id not in(select id_cli from tb_pedidos)

SELECT @@TRANCOUNT;

commit transaction

ROLLBACK TRANSACTION
