CREATE DATABASE db_farmacia_do_bem;
USE db_farmacia_do_bem;

CREATE TABLE tb_categoria(
	id bigint auto_increment,
    categoria varchar(255),
    tipo varchar(255),
    
    primary key (id)
);

CREATE TABLE tb_produto(
	id bigint auto_increment,
    nome varchar(255),
    marca varchar(255),
    
    quantidade int,
    categoria_id bigint,
    
    primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
);