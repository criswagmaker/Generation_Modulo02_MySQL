CREATE database db_registroescola;
use db_registroescola;

CREATE table tb_estudantes(
	id bigint auto_increment,
	nome varchar(30),
    numeroPais int,
    idade int,
    turma int,
    nota decimal(10,2),
    
	primary key (id)
);
