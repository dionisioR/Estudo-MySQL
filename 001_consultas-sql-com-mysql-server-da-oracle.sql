-- DROP DATABASE sucos_vendas;
 CREATE DATABASE SUCOS_VENDAS;
 USE SUCOS_VENDAS;
 
 -- revisão 
 
 SELECT * FROM TABELA_DE_CLIENTES;
 
 select cpf, nome, endereco_1, endereco_2, bairro, cidade, estado, cep, data_de_nascimento, idade, sexo, limite_de_credito, 
 volume_de_compra, primeira_compra from tabela_de_clientes;
 
 -- apelido - alias
 select cpf as identificador, nome as cliente from tabela_de_clientes;
 
 -- where
 select * from tabela_de_produtos where CODIGO_DO_PRODUTO = '1000889';
 select * from tabela_de_produtos where sabor = 'uva';
 select * from tabela_de_produtos where sabor = 'laranja';
 select * from tabela_de_produtos where sabor = 'limão';
 -- MySql não é case sensitive
 select * from tabela_de_produtos where embalagem = 'PET';
 select * from tabela_de_produtos where embalagem = 'pet';
 
 -- consultas do tipo float geralmente darão problema quando a consulta envolve o valor exato
 select * from tabela_de_produtos where PRECO_DE_LISTA = 19.51; -- na verdade na base de dados teremos 19.500000...
 select * from tabela_de_produtos where PRECO_DE_LISTA > 19.50;
 select * from tabela_de_produtos where PRECO_DE_LISTA between 19.50 and 19.52; 
 
 30min30