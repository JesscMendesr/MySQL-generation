CREATE DATABASE db_escola;

CREATE TABLE tb_alunos(
	id BIGINT auto_increment,
    nome VARCHAR(255) NOT NULL,
    idade INT NOT NULL,
    turma INT,
    turno VARCHAR(15),
    
    PRIMARY KEY(id)
);

INSERT INTO tb_alunos(nome,idade,turma,turno)
VALUES("Enzo da Silva",15,3,"Manhã");

INSERT INTO tb_alunos(nome,idade,turma,turno)
VALUES("Isabela Costa Fernandes",14,8,"Tarde");

INSERT INTO tb_alunos(nome,idade,turma,turno)
VALUES("João Paulo Ferreira",16,2,"noite");

INSERT INTO tb_alunos(nome,idade,turma,turno)
VALUES("Henrique vanucchi",13,4,"Manhã");

INSERT INTO tb_alunos(nome,idade,turma,turno)
VALUES("Larissa Lima",14,4,"Manhã");

INSERT INTO tb_alunos(nome,idade,turma,turno)
VALUES("Juliana Fragoso",15,5,"Manhã");

INSERT INTO tb_alunos(nome,idade,turma,turno)
VALUES("Maria Joaquina",14,4,"Manhã");

INSERT INTO tb_alunos(nome,idade,turma,turno)
VALUES("Felipe Leite",18,2,"Noite");

SELECT * FROM tb_alunos;

SELECT * FROM tb_alunos WHERE idade > 14;

SELECT * FROM tb_alunos WHERE idade < 14;

UPDATE tb_alunos SET turno="Tarde" WHERE id=4;