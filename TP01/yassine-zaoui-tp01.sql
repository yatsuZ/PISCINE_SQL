--1)
CREATE TABLE IF NOT EXISTS 'FILM'
(
	idFilm	INTEGER PRIMARY KEY NOT NULL,
	titre	VARCHAR(80) NOT NULL
);
CREATE TABLE IF NOT EXISTS 'Filmographie'	--suprimer le IF not exist
(
	idFilmographie	INTEGER PRIMARY KEY NOT NULL,
	idActeur		INT	REFERENCES ACTEUR(idActeur),
	idFilm			INT	REFERENCES FILM(idFilm)
);
--2)
INSERT OR IGNORE INTO  'FILM' ('idFilm', 'titre') VALUES (1,'Les évadés'), (2,'Le parrain'), (3,'La vie de Pi');
--3)
SELECT * FROM FILM;
--4)
INSERT OR IGNORE INTO FILM ('titre') VALUES ('Chocolat'), ('Scarface'), ('Rango');
--5)
SELECT * FROM FILM;
--6)
SELECT titre FROM FILM;
--7)
CREATE TABLE IF NOT EXISTS 'ACTEUR'			--suprimer le IF not exist
(
	idActeur	INTEGER PRIMARY KEY NOT NULL,
	nom			VARCHAR(80) NOT NULL,
	prenom		VARCHAR(80) NOT NULL
);
--8)
INSERT OR IGNORE INTO ACTEUR ('nom','prenom') VALUES ('Johnny','Deep'), ('Al' ,'Pacino'), ('Suraj','Sharma');
--9)
