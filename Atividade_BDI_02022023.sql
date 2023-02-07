/*-- Atividade da aula de 02/02/2023 --*/

CREATE TABLE artista (
	ID SERIAL PRIMARY KEY,
	nome VARCHAR(20) UNIQUE
)

CREATE TABLE musica (
	ID SERIAL PRIMARY KEY,
	nome VARCHAR(30) UNIQUE
)

CREATE TABLE gravacao (
	ID SERIAL PRIMARY KEY,
	duracao_seg INT NOT NULL
)

DROP TABLE gravacao

ALTER TABLE musica ADD COLUMN
duracao_seg INT NOT NULL

INSERT INTO artista
(nome)
VALUES
('Djavan'),
('Cazuza'),
('Anitta')

SELECT * FROM artista

INSERT INTO musica
(nome, duracao_seg)
VALUES
('Oceano', 120),
('Exagerado', 150),
('Show das Poderosas', 140)

ALTER TABLE musica 
ADD COLUMN fk_id_artista INT,
ADD CONSTRAINT fk_id_artista FOREIGN KEY(fk_id_artista) REFERENCES artista(ID);

SELECT * FROM musica

UPDATE musica
SET fk_id_artista = 1
WHERE nome = 'Oceano'

UPDATE musica
SET fk_id_artista = 2
WHERE nome = 'Exagerado'

UPDATE musica
SET fk_id_artista = 3
WHERE nome = 'Show das Poderosas'

DELETE FROM artista
WHERE nome = 'Djavan'

ALTER TABLE musica
DROP CONSTRAINT fk_id_artista

ALTER TABLE musica
ADD CONSTRAINT fk_id_artista
FOREIGN KEY(fk_id_artista)
REFERENCES artista(ID)
ON DELETE CASCADE

SELECT * FROM musica

DELETE FROM artista
WHERE nome = 'Djavan'

SELECT * FROM artista

SELECT * FROM musica