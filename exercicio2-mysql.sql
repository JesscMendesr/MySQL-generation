CREATE DATABASE db_ecommerce;

CREATE TABLE tb_jogos(
	id BIGINT auto_increment,
    titulo VARCHAR(255) NOT NULL,
    plataforma VARCHAR(20) NOT NULL,
    estoque INT, 
    preco DECIMAL NOT NULL,
    
    PRIMARY KEY (id)
);

INSERT INTO tb_jogos(titulo,plataforma,estoque,preco)
VALUES("Grand Theft Auto V","PlayStation 4",10,100.99);

INSERT INTO tb_jogos(titulo,plataforma,estoque,preco)
VALUES("Crash Bandicoot N'sane Trilogy","PlayStation 4",22,199.99);

INSERT INTO tb_jogos(titulo,plataforma,estoque,preco)
VALUES("The Last of Us Part II","PlayStation 4",18,190.99);

INSERT INTO tb_jogos(titulo,plataforma,estoque,preco)
VALUES("FIFA 23","Xbox One",31,270.99);

INSERT INTO tb_jogos(titulo,plataforma,estoque,preco)
VALUES("Red Dead Redemption 2 ","Xbox One",24,145.99);

INSERT INTO tb_jogos(titulo,plataforma,estoque,preco)
VALUES("The Witcher 3 - Complete Edition","Xbox One",5,299.99);

SELECT * FROM tb_jogos;

ALTER TABLE tb_jogos MODIFY preco DECIMAL(6,2);

SELECT * FROM tb_jogos WHERE preco > 200;

SELECT * FROM tb_jogos WHERE preco < 200;

UPDATE tb_jogos SET estoque=8 WHERE id=1;

SELECT * FROM tb_jogos WHERE preco > 200 AND estoque > 10;

ALTER TABLE tb_jogos ADD ano INT;

ALTER TABLE tb_jogos DROP ano;