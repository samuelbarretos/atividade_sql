CREATE DATABASE soundwave;
USE soundwave;
CREATE TABLE artistas (id_artista INT PRIMARY KEY,
nome_artista VARCHAR(100));
CREATE TABLE albuns (id_album INT PRIMARY KEY,
titulo_album VARCHAR(100),
id_artista INT,
FOREIGN KEY (id_artista) REFERENCES artistas (id_artista));
INSERT INTO artistas (id_artista, nome_artista) VALUES
(1, 'The Beatles'), (2, 'Pink Floyd'), (3, 'Queen');
INSERT INTO albuns (id_album, titulo_album, id_artista) VALUES
(1, 'Abbey Road', 1), (2, 'The Wall', 2), (3, 'A Night at the Opera', 3), (4, 'Álbum Sem Artista', NULL);
SELECT artistas.nome_artista, albuns.titulo_album
FROM artistas
LEFT JOIN albuns
ON artistas.id_artista = albuns.id_artista;
