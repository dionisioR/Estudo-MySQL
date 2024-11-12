-- select * from tabela where campo like <condicao>
-- <condicao> - texto a ser usado.
-- O símbolo % é usado para representar qualquer registro genérico.
-- Equivale ao * quando manipulado em arquivos.
-- LIKE '%soares%' - todo texto que possui soares
-- LIKE '%soares' - todo texto que termina em soares

select * from tabela_de_produtos where SABOR like '%maça%';
select * from tabela_de_produtos where SABOR like '%maça%' and embalagem = 'pet';



