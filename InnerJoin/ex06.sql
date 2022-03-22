CREATE DATABASE db_cursoDaMinhaVida;
USE db_cursoDaMinhaVida;

CREATE TABLE tb_categoria(

	id bigint auto_increment,
	categoria varchar(255),
    tipo varchar(255),
	idioma varchar (255),
    
    primary key (id)
);

CREATE TABLE tb_curso(
	id bigint auto_increment,
    nome varchar(255),
	duracao varchar(255),
    preco decimal(10,2),
    nomeProfessor varchar(255),
    promocao boolean,
    categoria_id bigint, 
    
    primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
);

SELECT * FROM tb_categoria;
SELECT * FROM tb_curso;

INSERT INTO tb_categoria (categoria, tipo, idioma) VALUES ("Tecnologia",  "Programação", "Português");
INSERT INTO tb_categoria (categoria, tipo, idioma) VALUES ("Tecnologia", "Redes", "Português");
INSERT INTO tb_categoria (categoria, tipo, idioma) VALUES ("Idioma", "Inglês", "Inglês");
INSERT INTO tb_categoria (categoria, tipo, idioma) VALUES ("Idioma", "Alemão", "Alemão");
INSERT INTO tb_categoria (categoria, tipo, idioma) VALUES ("Exatas", "Matemática", "Português");

INSERT INTO tb_curso (nome, duracao, preco, nomeProfessor, promocao, categoria_id) 
VALUES ("Java introdução", "200 Horas", 200.00, "Gustavo Guanabara", true, 1);

INSERT INTO tb_curso (nome, duracao, preco, nomeProfessor, promocao, categoria_id) 
VALUES ("Construção de Algoritmos", "100 Horas",100.00,"Paulo Silveira", true, 2);

INSERT INTO tb_curso (nome, duracao, preco, nomeProfessor, promocao, categoria_id) 
VALUES ("Learning the basics", "200 Horas", 29.90, "Alexandre Ottoni", false, 3);

INSERT INTO tb_curso (nome, duracao, preco, nomeProfessor, promocao, categoria_id) 
VALUES ("Grundlagen lernen", "200 Horas", 79.90, "Leonel Caldela", false, 4);

INSERT INTO tb_curso (nome, duracao, preco, nomeProfessor, promocao, categoria_id) 
VALUES ("Álgebra Linear", "50 Horas", 30.90, "Deive Pazos", false, 5);

INSERT INTO tb_curso (nome, duracao, preco, nomeProfessor, promocao, categoria_id) 
VALUES ("Intrudoção ao C#", "200 Horas", 150.00, "Fábio Akita", true, 1);

INSERT INTO tb_curso (nome, duracao, preco, nomeProfessor, promocao, categoria_id) 
VALUES ("Gestão de Redes", "50 Horas", 25.00, "Pedro Nauck", false, 2);

INSERT INTO tb_curso (nome, duracao, preco, nomeProfessor, promocao, categoria_id) 
VALUES ("Deutsch Mittelstufe", "300 Horas", 299.00, "Leonel Caldela", true, 4);

SELECT * FROM tb_curso WHERE preco > 50;
SELECT * FROM tb_curso WHERE preco >= 3 AND preco <= 60;
SELECT * FROM tb_curso WHERE nome LIKE "%J%";
SELECT * FROM tb_curso WHERE promocao LIKE true; 

SELECT * FROM tb_curso INNER JOIN tb_categoria ON tb_categoria.id = tb_curso.id;
SELECT * FROM tb_categoria INNER JOIN tb_curso ON tb_curso.categoria_id = tb_categoria.id WHERE categoria_id = 1;