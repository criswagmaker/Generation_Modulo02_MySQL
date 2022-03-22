CREATE DATABASE db_construindo_a_nossa_vida;
USE db_construindo_a_nossa_vida;

CREATE TABLE tb_categoria(
	id bigint auto_increment,
    departamento varchar(255),
    categoria varchar(255),
    tipo varchar(255),
    
	primary key (id)
);

CREATE TABLE tb_produto(
	id bigint auto_increment,
    nome varchar(255),
    preco decimal(10,2),
    material varchar(255),
    tamanho varchar(255),
    quantidade int,
    categoria varchar(255),
    categoria_id bigint,
    
	primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
);

SELECT * FROM tb_categoria;
SELECT * FROM tb_produto;

INSERT INTO tb_categoria (departamento, categoria, tipo) VALUES ("Banheiro","Acessórios para banheiros","Parede");
INSERT INTO tb_categoria (departamento, categoria, tipo) VALUES ("Madeira", "Escadas", "Colunas");
INSERT INTO tb_categoria (departamento, categoria, tipo) VALUES ("Materiais de Construção","Equipamentos para Construção","Betoneiras");
INSERT INTO tb_categoria (departamento, categoria, tipo) VALUES ("Banheiro","Banheiras, SPAs","Banheiras");
INSERT INTO tb_categoria (departamento, categoria, tipo) VALUES ("Cozinha e Áreas de Serviço","Cozinha Industrial","Forno Industrial");

INSERT INTO tb_produto (nome, preco, material, tamanho, quantidade,categoria_id, categoria) 
VALUES ("Prateleira", 0.00, "Vidro", "40x10 cm", 30, 1, "Banheiro");

INSERT INTO tb_produto (nome, preco, material, tamanho, quantidade,categoria_id, categoria) 
VALUES ("Ponteira de Madeira Imbuia", 299.90, "Madeira", "20x6 cm", 13, 2,"Escada");

INSERT INTO tb_produto (nome, preco, material, tamanho, quantidade,categoria_id, categoria) 
VALUES ("Betoneira CS 120L", 1799.90, "Plástico", "300L", 15, 3,"Equipamento");

INSERT INTO tb_produto (nome, preco, material, tamanho, quantidade,categoria_id, categoria) 
VALUES ("Banheira Hidro", 4249.0, "Plástico", "45x170x110 cm", 20, 4,"Banheiro");

INSERT INTO tb_produto (nome, preco, material, tamanho, quantidade,categoria_id, categoria) 
VALUES ("Forno Elétrico de Pizza", 529.90, "Aço", "24x37 cm", 10, 5, "Cozinha");

INSERT INTO tb_produto (nome, preco, material, tamanho, quantidade,categoria_id, categoria) 
VALUES ("Prateleira de Canto", 41.90, "Vidro", "20x20", 40, 1, "Vidro");

INSERT INTO tb_produto (nome, preco, material, tamanho, quantidade,categoria_id, categoria) 
VALUES ("Escada p/ Sótão", 133.90, "Madeira", "100x50cm", 2, 2, "Escada");

INSERT INTO tb_produto (nome, preco, material, tamanho, quantidade,categoria_id, categoria) 
VALUES ("Misturador Forçado", 6199.90, "Plástico", "120L", 10, 3, "Equipamento");

SELECT * FROM tb_produto WHERE preco > 50;
SELECT * FROM tb_produto WHERE preco >= 3 AND preco <= 60;
SELECT * FROM tb_produto WHERE nome LIKE "%C%";
SELECT * FROM tb_produto WHERE categoria LIKE "Equipamento";

SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.id;
SELECT * FROM tb_categoria INNER JOIN tb_produto ON tb_produto.categoria_id = tb_categoria.id WHERE categoria_id = 4;