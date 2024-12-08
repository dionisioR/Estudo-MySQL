select * from proprietarios;
select * from clientes;
select * from enderecos;
select * from hospedagens;
select * from alugueis;
select * from avaliacoes;

select * from avaliacoes where nota >= 4;
select * from hospedagens where tipo = 'hotel' and ativo = 1;
select cliente_id, avg(preco_total) as 'ticket médio' from alugueis; -- não trará as informaçõe corretamente
select * from alugueis where cliente_id = 1;
select cliente_id, avg(preco_total) as 'ticket médio' from alugueis group by cliente_id;

select cliente_id, avg(datediff(data_fim, data_inicio)) as 'média dias estadia'
from alugueis
group by cliente_id
order by cliente_id desc;

select cliente_id, avg(datediff(data_fim, data_inicio)) as media_dias_estadia
from alugueis
group by cliente_id
order by media_dias_estadia desc;

select p.nome as nome_proprietario, count(h.hospedagem_id)
as total_hospedagens_ativas
from proprietarios p 
join hospedagens h on p.proprietario_id = h.proprietario_id
where h.ativo = 1
group by p.nome
order by total_hospedagens_ativas desc limit 10;

select year(data_inicio) as ano,
month(data_inicio) as mes,
count(*) as total_alugueis
from alugueis
group by ano, mes
order by total_alugueis desc;