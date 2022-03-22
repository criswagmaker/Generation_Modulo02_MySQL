CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
	id bigint auto_increment,
	categoria varchar(255),
    tamanho varchar(255),
    massa varchar(255),
    
	primary key (id)
);

CREATE TABLE tb_pizza(
	id bigint auto_increment,
	nome varchar(255),
    borda varchar(255),
    ingredientes varchar(255),
    preco decimal(10,2),
    quantidade int,
    categoria_id bigint,
    
    primary key (id),
    foreign key (categoria_id) references tb_categoria(id)
);

select * from tb_categoria;
select * from tb_pizza;

INSERT INTO tb_categoria(categoria, tamanho, massa) VALUES ("Salgada", "Grande", "Fina");
INSERT INTO tb_categoria(categoria, tamanho, massa) VALUES ("Doce", "Pequena", "Fina");
INSERT INTO tb_categoria(categoria, tamanho, massa) VALUES ("Salgada", "Média", "Grossa");
INSERT INTO tb_categoria(categoria, tamanho, massa) VALUES ("Doce", "Grande", "Grossa");
INSERT INTO tb_categoria(categoria, tamanho, massa) VALUES ("Salgada", "Pequena", "Fina");

INSERT INTO tb_pizza(nome, borda, ingredientes, preco, quantidade, categoria_id) 
VALUES ("Calabresa","Catupiry","Calabresa e Cêbola", 20.00, 1, 1);

INSERT INTO tb_pizza(nome, borda, ingredientes, preco, quantidade, categoria_id) 
VALUES ("Lombo","Cheedar","Lombo c/ Catupiry", 30.00, 1, 3);

INSERT INTO tb_pizza(nome, borda, ingredientes, preco, quantidade, categoria_id) 
VALUES ("Romeu e Julieta","Chocolate","Queijo e Goiabada", 60.50, 1, 6);

INSERT INTO tb_pizza(nome, borda, ingredientes, preco, quantidade, categoria_id) 
VALUES ("Camarão Especial","Cheedar","Camarão c/ Catupiry", 30.50, 1, 5);

INSERT INTO tb_pizza(nome, borda, ingredientes, preco, quantidade, categoria_id) 
VALUES ("Estrogonofe","Catupiry","Estrogonofe c/ Mussarela", 57.00, 1, 1);

INSERT INTO tb_pizza(nome, borda, ingredientes, preco, quantidade, categoria_id) 
VALUES ("Prestígio","Morango","Chocolate c/ Coco", 59.99, 1, 6);

INSERT INTO tb_pizza(nome, borda, ingredientes, preco, quantidade, categoria_id) 
VALUES ("Chocolate e Morango","Chocolate","Chocolate c/ Morango", 50.00, 1, 4);

INSERT INTO tb_pizza(nome, borda, ingredientes, preco, quantidade, categoria_id) 
VALUES ("Banana","Chocolate","Banana c/ Canela e Leite Condensado", 70.00, 1, 4);

SELECT * FROM tb_pizza WHERE preco > 45;
SELECT * FROM tb_pizza WHERE preco >= 29 AND preco <= 60;
SELECT * FROM tb_pizza WHERE nome LIKE "%C%";

SELECT * FROM tb_pizza INNER JOIN tb_categoria ON tb_categoria.id = tb_pizza.id;
SELECT * FROM tb_categoria INNER JOIN tb_pizza ON tb_pizza.categoria_id = tb_categoria.id WHERE categoria_id = 3;
