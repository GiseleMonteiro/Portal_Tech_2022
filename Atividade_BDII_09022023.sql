/*-- Atividade da aula de 09/02/2023 --*/

CREATE DATABASE AULA_09022023

USE AULA_09022023

CREATE TABLE cliente (
  id SERIAL PRIMARY KEY,
  nome VARCHAR NOT NULL,
  sobrenome VARCHAR NOT NULL,
  idade INT NOT NULL
);

CREATE TABLE pedido (
  id SERIAL PRIMARY KEY,
  item VARCHAR NOT NULL,
  quantidade INT NOT NULL,
  fk_id_cliente INT NOT NULL,
  CONSTRAINT fk_id_cliente FOREIGN KEY(fk_id_cliente) REFERENCES cliente(ID)
);

INSERT INTO cliente
(nome, sobrenome, idade)
VALUES
('Rodolfo', 'Jeremias', 78),
('Clovis', 'Thomaz', 56),
('Thilara', 'Silva', 24),
('Thais', 'Pereira', 14);

INSERT INTO pedido
(item, quantidade, fk_id_cliente)
VALUES
('roda', 3, 1),
('guitarra', 2, 2),
('palmito', 5, 3),
('teclado', 10, 4);

SELECT * FROM pedido
INNER JOIN cliente
ON pedido.fk_id_cliente = cliente.id;

INSERT INTO cliente
(nome, sobrenome, idade)
VALUES
('Renato', 'Calcares', 85),
('Regina', 'Soares', 29);

SELECT * FROM pedido
RIGHT JOIN cliente
ON pedido.fk_id_cliente = cliente.id;

SELECT * FROM pedido
RIGHT JOIN cliente
ON pedido.fk_id_cliente = cliente.id
WHERE pedido.id IS NULL;

SELECT pedido.id, cliente.id
FROM pedido
JOIN cliente
ON pedido.id = cliente.id;

SELECT pedido.id, pedido.item, cliente.id
FROM pedido
JOIN cliente
ON pedido.id = cliente.id;

SELECT pedido.id, pedido.item, cliente.id, cliente.nome
FROM pedido
JOIN cliente
ON pedido.id = cliente.id;

SELECT cliente.id, cliente.nome, cliente.sobrenome, pedido.id, pedido.item
FROM cliente
JOIN pedido
ON pedido.id = cliente.id;

DROP TABLE pedido;

CREATE TABLE produto (
  id SERIAL PRIMARY KEY,
  item VARCHAR NOT NULL,
  marca VARCHAR NOT NULL
  );

CREATE TABLE pedido (
  id SERIAL PRIMARY KEY,
  fk_id_cliente INT NOT NULL,
  fk_id_produto INT NOT NULL,
  quantidade INT NOT NULL,
  CONSTRAINT fk_id_cliente FOREIGN KEY(fk_id_cliente) REFERENCES cliente(ID),
  CONSTRAINT fk_id_produto FOREIGN KEY(fk_id_produto) REFERENCES produto(ID)
 );

INSERT INTO produto
(item, marca)
VALUES
('chocolate', 'nestlé'),
('bala', 'fini'),
('agua', 'agua da pedra');

INSERT INTO pedido
(fk_id_cliente, fk_id_produto, quantidade)
VALUES
(1, 3, 5),
(6, 1, 2),
(3, 2, 20);

SELECT * FROM pedido
RIGHT JOIN cliente
on fk_id_cliente = cliente.id;

SELECT * FROM pedido
RIGHT JOIN cliente
on fk_id_cliente = cliente.id
left join produto
on fk_id_produto = produto.id;

SELECT cliente.id AS cliente_id from pedido
RIGHT JOIN cliente
on fk_id_cliente = cliente.id
left join produto
on fk_id_produto = produto.id;

SELECT *, cliente.id AS cliente_id from pedido
RIGHT JOIN cliente
on fk_id_cliente = cliente.id
left join produto
on fk_id_produto = produto.id;

SELECT cliente.id AS cliente_id, nome, sobrenome, pedido.id AS pedido_id, quantidade, item from pedido
RIGHT JOIN cliente
on fk_id_cliente = cliente.id
left join produto
on fk_id_produto = produto.id;
