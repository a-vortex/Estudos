create view v_cli_ped
as
SELECT b.id, b.nome_cli, sum(a.total_ped) as soma, avg(a.total_ped) as media
from tb_pedidos as a
inner join tb_cliente as b on a.id_cli=b.id
group by b.id, b.nome_cli

select * from v_cli_ped where soma > 6000 order by media
