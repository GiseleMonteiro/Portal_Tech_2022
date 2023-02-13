/*-- Atividade da aula de 07/02/2023 --*/

CREATE TABLE artista (
  ID SERIAL PRIMARY KEY,
  nome VARCHAR(20) UNIQUE
)

INSERT INTO artista (nome)
VALUES
('Chico BUarque'),
('Renato Russo'),
('Anitta')

CREATE TABLE musica (
  id SERIAL PRIMARY KEY,
  nome VARCHAR NOT NULL,
  duracao_seg INT NOT NULL
)

INSERT INTO musica
(nome, duracao_seg)
VALUES
('Apesar de você', 150),
('Tempo Perdido', 160),
('Envolver', 180);

CREATE TABLE artista_musica (
  fk_id_artista INT,
  fk_id_musica INT,
  CONSTRAINT artista_musica_pk PRIMARY KEY(fk_id_artista, fk_id_musica),
  CONSTRAINT fk_id_artista FOREIGN KEY (fk_id_artista) REFERENCES artista(ID),
  CONSTRAINT fk_id_musica FOREIGN KEY (fk_id_musica) REFERENCES musica(ID)
);

INSERT INTO artista_musica VALUES
(3,3);

INSERT INTO artista (nome) VALUES ('Lulu Santos');
INSERT INTO musica (nome, duracao_seg) VALUES ('Tempos Modernos', 130);

INSERT INTO artista_musica VALUES
(1,1),
(2,2),
(4,4);

SELECT * FROM artista

SELECT * FROM musica

SELECT * FROM artista_musica