create database estudo_01;
use estudo_01;
create table proprietarios(
proprietario_id varchar(255) primary key,
nome varchar(255),
cpf_cnpj varchar(20),
contato varchar(255)
);

create table clientes(
cliente_id varchar(255) primary key,
nome varchar(255),
cpf varchar(14),
contato varchar(255)
);

create table enderecos(
endereco_id varchar(255) primary key,
rua varchar(255),
numero int,
bairro varchar(255),
cidade varchar(255),
estado varchar(2),
cep varchar(10)
);

create table hospedagens(
hospedagem_id varchar(255) primary key,
tipo varchar(50),
endereco_id varchar(255),
proprietario_id varchar(255),
ativo bool,
foreign key(endereco_id) references enderecos(endereco_id),
foreign key(proprietario_id) references proprietarios(proprietario_id)
);

create table alugueis(
aluguel_id varchar(255) primary key,
cliente_id varchar(255),
hospedagem_id varchar(255),
data_inicio date,
data_fim date,
preco_total decimal(10,2),
foreign key(cliente_id) references clientes(cliente_id),
foreign key(hospedagem_id) references hospedagens(hospedagem_id)
); 

create table avaliacoes(
avaliacao_id varchar(255) primary key,
cliente_id varchar(255),
hospedagem_id varchar(255),
nota int,
comentario text,
foreign key(cliente_id) references clientes(cliente_id),
foreign key(hospedagem_id) references hospedagens(hospedagem_id)
);