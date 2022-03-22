CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe(
	id bigint auto_increment,
    
    nivel int,
    classe varchar(255),
    habilidade varchar(255),
    arma varchar(255),

    primary key(id)
);

CREATE TABLE tb_personagem(
	id bigint auto_increment,
    nome varchar(255),
    raca varchar(255),
    idade int,
    ataque int,
    defesa int,
    vida int,
    classe_id bigint,
    
    primary key (id),
    foreign key (classe_id) references tb_classe (id)
);


select * from tb_personagem;

INSERT INTO tb_classe(nivel, classe, habilidade, arma)
values (99 , "Guerreiro", "Retomar fôlego", "Espada Longa");

INSERT INTO tb_classe(nivel, classe, habilidade, arma)
values (200, "Mago", "Bola de Fogo", "Cajado");

INSERT INTO tb_classe(nivel, classe, habilidade, arma)
values (100, "Ladino", "Furtividade", "Adaga");

INSERT INTO tb_classe(nivel, classe, habilidade, arma)
values (149, "Arqueiro", "Inimigo Favorito", "Arco Longo");

INSERT INTO tb_classe(nivel, classe, habilidade, arma)
values (50, "Bardo", "Inspiração de Bardo", "Alaude");

INSERT INTO tb_personagem(nome, raca, vida, defesa, ataque,classe_id)
VALUES ("Cleison","Anão",1500 ,3000, 1200, 1);

INSERT INTO tb_personagem(nome, raca, vida, defesa, ataque,classe_id)
VALUES ("Josias","Drow (Elfo Negro)", 1000, 1200, 3000, 5);

INSERT INTO tb_personagem(nome, raca, vida, defesa, ataque,classe_id)
VALUES ("Vanuza","Centauro", 5000,700, 7500, 2);

INSERT INTO tb_personagem(nome, raca, vida, defesa, ataque,classe_id)
VALUES ("Cleide","Humano",500 ,6000, 2000, 3);

INSERT INTO tb_personagem(nome, raca, vida, defesa, ataque,classe_id)
VALUES ("Ariel","Constructo", 2000, 8800, 4000, 4);

SELECT * FROM tb_personagem WHERE ataque > 2000;

SELECT * FROM tb_personagem WHERE defesa >= 1000 AND defesa <= 2000;

SELECT * FROM tb_personagem WHERE defesa BETWEEN 1000 and 2000;

SELECT * FROM tb_personagem WHERE nome LIKE "%c%";

SELECT * FROM tb_personagem INNER JOIN tb_classe on tb_classe.id = tb_personagem.id;

SELECT * FROM tb_classe
INNER JOIN tb_personagem on tb_personagem.classe_id = tb_classe.id
WHERE classe_id = 3;
