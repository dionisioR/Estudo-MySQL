-- select * from tabela where campo like <condicao>
-- <condicao> - texto a ser usado.
-- O símbolo % é usado para representar qualquer registro genérico.
-- Equivale ao * quando manipulado em arquivos.
-- LIKE '%soares%' - todo texto que possui soares
-- LIKE '%soares' - todo texto que termina em soares

select * from tabela_de_produtos where SABOR like '%maça%';
select * from tabela_de_produtos where SABOR like '%maça%' and embalagem = 'pet';

-- quantas encomendas tenho na loja
select count(*) as 'total encomendas' from encomendas;

-- 	quantas destas encomendas estão registradas como pagas
select count(*) as 'total' from encomendas where paga = 1;

-- melhorar a informação indicando quantas estão pagas e quantas não estão pagas na mesma query
select 'encomendas pagas' as 'estado', count(*) as 'total' from encomendas where paga = 1
union
select 'encomendas não pagas' as 'estado', count(*) as 'total' from encomendas where paga = 0;

-- quantas encomendas no total foram efetuads no ano de 2031
select count(*) as 'total_encomendas'
from encomendas
where data_hora between '2031-01-01 00:00:00' and '2031-12-31 23:59:59';

-- da query anterior eu quero todas as datas das primeiras 20 encomendas
select data_hora from encomendas
where data_hora between '2031-01-01 00:00:00' and '2031-12:31 23:59:59' limit 20;

-- ainda sobre o ano de 2031, quero o total de encomendas de cada um dos dias do mes de agosto
select date(data_hora) as dia, count(*) as 'total de encomendas' from encomendas
where data_hora between '2031-08-01 00:00:00' and '2031-08-31 23:59:59'
group by dia;

-- quero todos os detalhes da tabela das encomendas de todas as encomendas registradas no dia 15 de agosto de 2031
select * from encomendas where date(data_hora) = '2031-08-15';

-- quero saber quantas encomendas foram feitas pela cliente 'Rosa Laura Araújo Matos'
select clientes.nome,
count(*) as 'total_encomendas'
from clientes
left join encomendas 
on clientes.id = encomendas.id_cliente
where clientes.nome = 'rosa laura araújo matos';