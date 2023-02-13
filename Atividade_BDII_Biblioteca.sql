/*-- Atividade aula 07/02/2023 - Cenário 01: Biblioteca --*/

CREATE DATABASE BIBLIOTECA

USE BIBLIOTECA

CREATE TABLE livro (
  id_livro SERIAL PRIMARY KEY,
  titulo VARCHAR(50) NOT NULL,
  autor VARCHAR(50) NOT NULL
);

CREATE TABLE leitor (
  id_leitor SERIAL PRIMARY KEY,
  nome_leitor VARCHAR(30) NOT NULL,
  RG_leitor VARCHAR NOT NULL,
  telefone_leitor VARCHAR(20) NOT NULL
);

INSERT INTO livro (titulo, autor) VALUES
('Feliz Ano Velho', 'Marcelo Rubens Paiva'),
('Feliz Ano Velho', 'Marcelo Rubens Paiva'),
('Feliz Ano Velho', 'Marcelo Rubens Paiva'),
('O Escaravelho do Diabo', 'Lucia Machado de Almeida'),
('O Escaravelho do Diabo', 'Lucia Machado de Almeida'),
('Éramos Seis', 'Maria José Dupré'),
('Éramos Seis', 'Maria José Dupré'),
('Garota Exemplar', 'Gillian Flynn'),
('Garota Exemplar', 'Gillian Flynn'),
('Garota Exemplar', 'Gillian Flynn');

INSERT INTO leitor (nome_leitor, rg_leitor, telefone_leitor) VALUES
('Valeria Vergueiro', '36547896-2', '11-4587-9875'),
('Dalva Francis', '35874658-5', '11-4578-5245'),
('Marcos Oliveira', '45876987-x', '11-98754-5862');

CREATE TABLE controle_emprestimo (
  id_emprestimo SERIAL PRIMARY KEY,
  livro_id INT,
  leitor_id VARCHAR,
  data_emprestimo DATE,
  data_devolucao DATE,
  atraso_prazo INT,
  multa DECIMAL(5,2),
  FOREIGN KEY (livro_id) REFERENCES livro(id_livro),
  FOREIGN KEY (leitor_id) REFERENCES leitor(id_leitor)
);

INSERT INTO controle_emprestimo
(livro_id, leitor_id, data_emprestimo, data_devolucao, atraso_prazo, multa)
VALUES
(2, 1, '2023-01-10', '2023-01-15', 0, 0.0),
(5, 1, '2023-01-11', '2023-01-16', 0, 0.0),
(8, 2, '2023-01-11', '2023-01-20', 4, 8.0),
(1, 3, '2023-01-12', '2023-01-16', 0, 0.0),
(4, 3, '2023-01-13', '2023-01-23', 5, 10.0),
(3, 2, '2023-01-15', '2023-01-19', 0, 0.0);

SELECT * FROM controle_emprestimo
RIGHT JOIN leitor
ON controle_emprestimo.leitor_id = leitor.id_leitor
LEFT join livro
on controle_emprestimo.livro_id = livro.id_livro;

SELECT *
from livro
left outer join controle_emprestimo
on controle_emprestimo.livro_id = livro.id_livro
left outer join leitor
on controle_emprestimo.leitor_id = leitor.id_leitor;