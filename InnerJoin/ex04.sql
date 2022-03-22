CREATE DATABASE db_cidade_das_carnes;
USE db_cidade_das_carnes;

CREATE TABLE tb_categoria(

	id bigint auto_increment,
	categoria varchar(255),
    animal varchar(255),
    tamanho varchar(255),
    
	
    primary key (id)
);

CREATE TABLE tb_produto(
	id bigint auto_increment,
    nome varchar(255),
	peso varchar(255),
    preco decimal(10,2),
    teorGordura varchar(255),
    quantidade int,
    animal varchar(255),
    categoria_id bigint, 
    
    primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
);

SELECT * FROM tb_categoria;
SELECT * FROM tb_produto;

INSERT INTO tb_categoria (categoria, animal, tamanho) VALUES ("Carne Vermelha","Boi","Grande");
INSERT INTO tb_categoria (categoria, animal, tamanho) VALUES ("Carne Vermelha","Boi","Médio");
INSERT INTO tb_categoria (categoria, animal, tamanho) VALUES ("Carne Vermelha","Porco","Médio");
INSERT INTO tb_categoria (categoria, animal, tamanho) VALUES ("Carne Branca","Peixe","Grande");
INSERT INTO tb_categoria (categoria, animal, tamanho) VALUES ("Carne Branca","Ave","Pequeno");

INSERT INTO tb_produto (nome, peso, teorGordura, quantidade, preco, animal,categoria_id) 
VALUES ("Picanha", "1.5kg", "19.5 p/cada 100g", 1, 89.00, "Boi", 1);

INSERT INTO tb_produto (nome, peso, teorGordura, quantidade, preco, animal,categoria_id) 
VALUES ("Alcatra", "600g", "12.0 p/cada 100g", 3, 40.00, "Boi", 2);

INSERT INTO tb_produto (nome, peso, teorGordura, quantidade, preco, animal,categoria_id) 
VALUES ("Picanha de Porco", "700g", "14.0 p/cada100g", 5 ,50.80, "Porco", 3);

INSERT INTO tb_produto (nome, peso, teorGordura, quantidade, preco, animal,categoria_id) 
VALUES ("Salmão", "1kg", "14.55 p/cada 100g", 10, 90.80, "Peixe", 4);

INSERT INTO tb_produto (nome, peso, teorGordura, quantidade, preco, animal,categoria_id) 
VALUES ("Peito de Frango", "200g", "3.6 p/cada 100g", 1, 20.99, "Ave", 5);

INSERT INTO tb_produto (nome, peso, teorGordura, quantidade, preco, animal,categoria_id) 
VALUES ("Acém", "1kg", "10.9 p/cada 100g", 20, 35.80, "Boi", 1);

INSERT INTO tb_produto (nome, peso, teorGordura, quantidade, preco, animal, categoria_id) 
VALUES ("Fraldinha", "700g", "26.0 p/cada 100g", 30, 50.80, "Boi", 2);

INSERT INTO tb_produto (nome, peso, teorGordura, quantidade, preco, animal,categoria_id) 
VALUES ("Wagyu", "1kg", "38.3 p/cada 100g", 3, 5000.00, "Boi", 1);

SELECT * FROM tb_produto WHERE preco > 50;
SELECT * FROM tb_produto WHERE preco >= 3 AND preco <= 60;
SELECT * FROM tb_produto WHERE nome LIKE "%C%";
SELECT * FROM tb_produto WHERE animal LIKE "Boi";

SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.id;
SELECT * FROM tb_categoria INNER JOIN tb_produto ON tb_produto.categoria_id = tb_categoria.id WHERE categoria_id = 1;