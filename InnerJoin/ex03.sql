CREATE DATABASE db_farmacia_do_bem;
USE db_farmacia_do_bem;

CREATE TABLE tb_categoria(
	id bigint auto_increment,
	categoria varchar(255),
    tipo varchar(255),
    tamanho varchar(255),
    
    primary key (id)
);

CREATE TABLE tb_produto(
	id bigint auto_increment,
	nome varchar(255),
    preco decimal(10,2),
    quantidade int,
    composicao varchar(255),
    marca varchar(255),
    categoria_id bigint,
    
    primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
);

SELECT * FROM tb_categoria;
SELECT * FROM tb_produto;

INSERT INTO tb_categoria (categoria, tipo, tamanho) VALUES ("Medicamento", "Antibiótico", "Médio");
INSERT INTO tb_categoria (categoria, tipo, tamanho) VALUES ("Cosmético", "Perfume", "Grande");
INSERT INTO tb_categoria (categoria, tipo, tamanho) VALUES ("Higiene", "Lenço Umedecido", "Grande");
INSERT INTO tb_categoria (categoria, tipo, tamanho) VALUES ("Medicamento", "Anti-inflamatório", "Grande");
INSERT INTO tb_categoria (categoria, tipo, tamanho) VALUES ("Cosmético", "Esmalte", "Pequeno");
INSERT INTO tb_categoria (categoria, tipo, tamanho) VALUES ("Higiene", "Bucal", "Pequeno");

INSERT INTO tb_produto (nome, marca, preco, quantidade, composicao, categoria_id) 
VALUES ("Toalhinhas Umedecidas", "Pampers", 50.99, 1, "Papel TNT e Componentes químicos",3);

INSERT INTO tb_produto (nome, marca, preco, quantidade, composicao, categoria_id) 
VALUES ("Ferrari Black", "Ferrari", 200.00, 2, "Mistura de fragrâncias, solventes e fixadores",2);

INSERT INTO tb_produto (nome, marca, preco, quantidade, composicao, categoria_id) 
VALUES ("Esmalte", "Risqué", 10.99, 2, "Solventes, Resinas, Plastificantes, Corantes e pigmentos",5);

INSERT INTO tb_produto (nome, marca, preco, quantidade, composicao, categoria_id) 
VALUES ("Invictus", "Paco Rabanne", 500.00, 1, "Mistura de fragrâncias, solventes e fixadores", 2);

INSERT INTO tb_produto (nome, marca, preco, quantidade, composicao, categoria_id) 
VALUES ("Escova Dental", "Colgate", 15.00, 1, "Abrasivo, solvente, umectantes, espumantes", 6);

INSERT INTO tb_produto (nome, preco, quantidade, composicao, categoria_id) 
VALUES ("Amoxicilina", 20.00, 1, "Laurilsulfato de sódio, talco, estearato de magnésio e dióxido de silício coloidal", 1);

INSERT INTO tb_produto (nome, preco, quantidade, composicao, categoria_id) 
VALUES ("Ampicilina", 30.00, 5, "Ácido Penicilânico", 1);

INSERT INTO tb_produto (nome, preco, quantidade, composicao, categoria_id) 
VALUES ("Ibuprofeno", 25.50, 10, "Ibuprofeno, povidona e amido pré-gelatinizado", 4);

SELECT * FROM tb_produto WHERE preco > 50;
SELECT * FROM tb_produto WHERE preco >= 3 AND preco <= 60;
SELECT * FROM tb_produto WHERE nome LIKE "%b%";

SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.id;
SELECT * FROM tb_categoria INNER JOIN tb_produto ON tb_produto.categoria_id = tb_categoria.id WHERE categoria_id = 1;
