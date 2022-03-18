CREATE database db_infoprodutos;
use db_infoprodutos;

CREATE table tb_produtos(
	id bigint auto_increment,
    nome varchar(30),
    preco decimal(10,2),
    tipo varchar(20),
    quantidade int,
    marca varchar(20),
    
    primary key (id)
);