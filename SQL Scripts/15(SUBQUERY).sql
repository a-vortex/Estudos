select id_cli from tb_pedidos
-- mostra todos os ids associados a pedidos

select * from tb_cliente WHERE id NOT IN(select id_cli from tb_pedidos)
-- seleciona todos os ids da tabela tb_cliente que nao retornam em (select id_cli from tb_pedidos),
-- ou seja, quem nao tem pedidos associados.
-- NAO PODE RETORNAR MAIS DO QUE DOIS DADOS DENTRO DO ().

Select *, (select count(*) from tb_pedidos where id_cli = tb_cliente.id) AS total_de_pedidos
from tb_cliente