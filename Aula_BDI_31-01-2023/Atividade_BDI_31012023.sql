CREATE DATABASE ATIVIDADE_AULA_BDI

USE ATIVIDADE_AULA_BDI


CREATE TABLE instrumento (
    id_instrumento SERIAL PRIMARY KEY,
    nome VARCHAR(24) NOT NULL,
    preco FLOAT NOT NULL,
    em_promocao BOOLEAN
)

INSERT INTO instrumento (nome, preco, em_promocao) VALUES ('violão', 199.90, FALSE)
INSERT INTO instrumento (nome, preco, em_promocao) VALUES ('bateria', 399.90, TRUE)
INSERT INTO instrumento (nome, preco, em_promocao) VALUES ('flauta', 65.90, FALSE)
INSERT INTO instrumento (nome, preco, em_promocao) VALUES ('piano', 1699.90, TRUE)
INSERT INTO instrumento (nome, preco, em_promocao) VALUES ('violino', 699.90, TRUE)
INSERT INTO instrumento (nome, preco, em_promocao) VALUES ('guitarra', 459.90, FALSE)

SELECT * FROM instrumento

SELECT nome, id_instrumento, preco FROM instrumento WHERE (preco < 250)

CREATE TABLE vendedor (
    id_vendedor SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    salario FLOAT NOT NULL
)

INSERT INTO vendedor (nome, telefone, admissao, salario) VALUES ('Adalberto Souza', '1125478965', 2100.00)
INSERT INTO vendedor (nome, telefone, admissao, salario) VALUES ('Fernanda Rodrigues', '11947856325', 2600.00)
INSERT INTO vendedor (nome, telefone, admissao, salario) VALUES ('Marcela Guedes', '1143658745', 2400.00)
INSERT INTO vendedor (nome, telefone, admissao, salario) VALUES ('Ronaldo Farias', '11947853399', 2800.00)


/* ATIVIDADE */

/* 1- Atributos em_promoção e preço - condição preço > 400: */
SELECT em_promocao, preco FROM instrumento WHERE (preco > 400)

/* 2- Trazer todos atributos dos registros em que em_promocao seja TRUE: */
SELECT * FROM instrumento WHERE (em_promocao = TRUE)

/* 3- Trazer atributos nome e preço em que id-instrumento seja igual a 6: */
SELECT * FROM instrumento WHERE (id_instrumento = 6) 

/* 4- Trazer atributos id_instrumento, preço e em_promoção dos registros em que nome seja igual a violão: */
SELECT * FROM instrumento WHERE (nome ='violão') 
