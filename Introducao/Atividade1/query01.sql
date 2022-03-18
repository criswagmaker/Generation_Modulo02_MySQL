create database db_informacoes;
use db_informacoes;

create table  tb_funcionarios(
	id bigint auto_increment,
    nome varchar(30) not null,
    cargo varchar(30),
    salario decimal(10,2),
    cpf varchar(12),
    endereço varchar(100),
    
    primary key (id)
);