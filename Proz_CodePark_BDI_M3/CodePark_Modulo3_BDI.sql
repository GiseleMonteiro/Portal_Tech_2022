CREATE DATABASE ESCOLA

USE ESCOLA

/* Instruções do projeto:
De acordo com os comandos aprendidos, programe códigos SQL para criar um 
banco de dados chamado ESCOLA e deixe-o pronto para o uso. Depois, pesquise 
qual é o comando utilizado para inserir uma tabela no banco de dados e siga 
as instruções: */
/* 1. crie uma tabela chamada ALUNO; */  
/* 2. defina os atributos da tabela; */
/* 3. adicione a chave primária de nome ID (identificador); */
/* 4. adicione um atributo nome do tipo varchar; */
/* 5. adicione um atributo e-mail do tipo varchar; */
/* 6. adicione um atributo endereço do tipo varchar. */

CREATE TABLE aluno(
    id_aluno SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    matric_aluno FLOAT NOT NULL,
    email VARCHAR(50) NOT NULL,
    endereco VARCHAR(100) NOT NULL,
    telefone FLOAT NOT NULL
)

INSERT INTO aluno(nome, matric_aluno, email, endereco, telefone) VALUES
('João Carlos', '1234', 'Jcarlos@gmail.com', 'Rua 13 de maio', '1178254489'),
('José Victor', '2345', 'Jvictor@gmail.com', 'Rua da Saudade', '1178256589'),
('Paulo André', '3456', 'Pandr@gmail.com', 'Rua do Sol', '1178254495')


CREATE TABLE emprestimo(
    cod_emprestimo SERIAL PRIMARY KEY,
    data_hora DATETIME NOT NULL,
    matric_aluno FLOAT NOT NULL,
    data_devolucao DATE NOT NULL
)

INSERT INTO emprestimo(data_hora, matric_aluno, data_devolucao) VALUES
    ('12032022 15:25', '1234', '15032022'),
    ('15032022 14:32', '3456', '18032022'),
    ('20032022 03:51', '2345','23032022')

CREATE TABLE livro(
    cod_livro SERIAL PRIMARY KEY,
    titulo VARCHAR (100) NOT NULL,
    autor VARCHAR (100) NOT NULL,
    cod_sessao FLOAT NOT NULL
)

INSERT INTO livro(titulo, autor, cod_sessao) VALUES
    ('Modelo Conceitual e Diagramas ER','Pressman, Roger S.', '03'),
    ('Livro 2: Modelo Relacional e Álgebra Relacional', 'Heuser, Carlos Alberto', '01'),
    ('Livro 3: Linguagem SQL', 'Beighley, Lynn', '02')

CREATE TABLE sessao(
    cod_sessao SERIAL PRIMARY KEY,
    descricao VARCHAR (100),
    localizacao VARCHAR (100)
)

INSERT INTO sessao(descricao, localizacao) VALUES
    ('Sessao1', 'Partilheira1'),
    ('Sessao2', 'Partilheira2'),
    ('Sessao3', 'Partilheira3')

CREATE TABLE livro_emprestimo(
    cod_livro FLOAT NOT NULL,
    cod_emprestimo FLOAT NOT NULL
)

INSERT INTO livro_emprestimo(cod_livro, cod_emprestimo) VALUES
    ('03', '01'),
    ('01', '03'),
    ('02', '02')