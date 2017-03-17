CREATE TABLE reclamacao
(
id INTEGER NOT NULL PRIMARY KEY GENERATED ALWAYS AS
IDENTITY,
nome VARCHAR(50) NOT NULL,
email VARCHAR(90) NOT NULL,
descricao VARCHAR(90) NOT NULL,
status INTEGER NOT NULL DEFAULT 0
);

UPDATE reclamacao SET nome='Josueee', email='jose@jose',descricao='bla', status=1 WHERE id=1;
