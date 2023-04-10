CREATE DATABASE db_generation_game_online;

CREATE TABLE tb_classes(
	id BIGINT AUTO_INCREMENT,
    nomeClasse VARCHAR(255) NOT NULL,
    descricao VARCHAR(255),
    PRIMARY KEY(id)
);

-- dados da tabela tb_clases
INSERT INTO tb_classes(nomeClasse,descricao)
VALUES("Guerreiro","Causa alto dano");

INSERT INTO tb_classes (nomeClasse,descricao)
VALUES("Mago","Melhora atributo de jogadores");

INSERT INTO tb_classes (nomeClasse,descricao)
VALUES("Curandeiro","Alta defesa contra danos");

INSERT INTO tb_classes (nomeClasse,descricao)
VALUES("Gatuno","Encontra mais itens e ouro");

INSERT INTO tb_classes (nomeClasse,descricao)
VALUES("Paladino","Alta resistência");


CREATE TABLE tb_personagens(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    ataque INT,
    defesa INT,
    constituicao INT,
    inteligencia INT,
    percepcao INT,
    classe_id BIGINT,
    
    PRIMARY KEY(id),
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

ALTER TABLE tb_personagens DROP COLUMN inteligencia;

-- dados da tabela tb_personagens
INSERT INTO tb_personagens (nome,ataque,defesa,constituicao,percepcao,classe_id)
VALUES("Tirillia","1400","1500","60","40",2);

INSERT INTO tb_personagens (nome,ataque,defesa,constituicao,percepcao,classe_id)
VALUES("Anubis","2000","1000","40","50",1);

INSERT INTO tb_personagens (nome,ataque,defesa,constituicao,percepcao,classe_id)
VALUES("Garner","1500","2000","60","40",5);

INSERT INTO tb_personagens (nome,ataque,defesa,constituicao,percepcao,classe_id)
VALUES("Thrael","2200","1200","40","30",1);

INSERT INTO tb_personagens (nome,ataque,defesa,constituicao,percepcao,classe_id)
VALUES("Rhypesia","1200","1900","100","40",3);

INSERT INTO tb_personagens (nome,ataque,defesa,constituicao,percepcao,classe_id)
VALUES("Rurik","1600","1500","60","100",6);

INSERT INTO tb_personagens (nome,ataque,defesa,constituicao,percepcao,classe_id)
VALUES("Gregory","1800","1900","60","30",5);

INSERT INTO tb_personagens (nome,ataque,defesa,constituicao,percepcao,classe_id)
VALUES("Zogh","1400","1800","80","40",2);


SELECT * FROM tb_personagens;

SELECT * FROM tb_classes;

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa > 1000 AND defesa < 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%c%"; 

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id;

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id
WHERE  tb_classes.id=2;