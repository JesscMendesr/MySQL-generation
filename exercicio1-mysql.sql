CREATE DATABASE db_rh;

CREATE TABLE tb_colaboradores(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    idade INT(2),
    salario DECIMAL(10,2),
    cargo VARCHAR(100),
    
    PRIMARY KEY(id)
);

INSERT INTO tb_colaboradores(nome,idade,salario,cargo)
VALUES("Antonella Lopes",25,3800.00,"Desenvolvedora fullstack");


SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

ALTER TABLE tb_colaboradores
MODIFY COLUMN salario DECIMAL(10,2);

UPDATE tb_colaboradores
SET salario = 4000.99
WHERE id=5



