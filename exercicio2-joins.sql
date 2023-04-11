CREATE DATABASE db_pizzaria;

-- Crie a tabela tb_categorias e determine pelo menos 2 atributos
CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT PRIMARY KEY, -- Chave Primária
    catergoria VARCHAR(100) NOT NULL,
    dia_promocao VARCHAR(100)
);

SELECT * FROM tb_categorias;


-- Crie a tabela tb_pizzas e determine 4 atributos, além da Chave Primária
CREATE TABLE tb_pizzas(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    categoria_id BIGINT,
    sabor VARCHAR(255) NOT NULL,
    tamanho VARCHAR(100) NULL,
	preco DECIMAL(5,2) NULL,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id) -- Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_pizzas.
);

SELECT * FROM tb_pizzas;

-- Insira 5 registros na tabela tb_categorias.
INSERT INTO tb_categorias(categoria,dia_promocao) VALUES("Moda da casa","Quarta-feira");
INSERT INTO tb_categorias(categoria,dia_promocao) VALUES("Tradicional","Quinta-feira");
INSERT INTO tb_categorias(categoria,dia_promocao) VALUES("Especial","Sexta-feira");
INSERT INTO tb_categorias(categoria,dia_promocao) VALUES("Premium","Sábado");
INSERT INTO tb_categorias(categoria,dia_promocao) VALUES("Doce","Domingo");

-- Insira 8 registros na tabela tb_pizzas
INSERT INTO tb_pizzas(categoria_id,sabor,tamanho,preco) VALUES(2,"Portuguesa","Média",45.99);
INSERT INTO tb_pizzas(categoria_id,sabor,tamanho,preco) VALUES(4,"Ricota com Salmão","Média",66.99);
INSERT INTO tb_pizzas(categoria_id,sabor,tamanho,preco) VALUES(3,"Vegetariana","Pequena",35.99);
INSERT INTO tb_pizzas(categoria_id,sabor,tamanho,preco) VALUES(1,"Brócolis c/ bacon","Grande",55.99);
INSERT INTO tb_pizzas(categoria_id,sabor,tamanho,preco) VALUES(5,"Nutella com Morango","Pequena",40.99);
INSERT INTO tb_pizzas(categoria_id,sabor,tamanho,preco) VALUES(2,"Baiana","Grande",49.99);
INSERT INTO tb_pizzas(categoria_id,sabor,tamanho,preco) VALUES(3,"Lombo com catupiry","Grande",54.99);
INSERT INTO tb_pizzas(categoria_id,sabor,tamanho,preco) VALUES(2,"Mussarela","Média",25.99);

-- Faça um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00.
SELECT * FROM tb_pizzas WHERE preco > 45;

-- Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;

-- Faça um SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra M no atributo nome.
SELECT * FROM tb_pizzas WHERE sabor LIKE "%m%";

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias.
SELECT *
FROM tb_pizzas p 
INNER JOIN tb_categorias c ON p.categoria_id = c.id;

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias, onde traga apenas as pizzas que pertençam a uma categoria específica
SELECT * FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.categoria_id = c.id
WHERE c.id = 2;