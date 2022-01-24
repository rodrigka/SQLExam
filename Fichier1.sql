--Ordre chronologique : ACTEUR, FILM, ROLE   ou (film, acteur)
-- Comme ACTEUR et FILM n'ont pas de clés étrangères, on peut les créer avant ROLE.


/*CREATE TABLE ACTEUR (
 acteurID INT AUTO_INCREMENT PRIMARY KEY,
 nom TEXT NOT NULL,
 prenom TEXT NOT NULL,
 naissance TEXT
);*/

/*CREATE TABLE FILM (
filmID INT AUTO_INCREMENT PRIMARY KEY,
titre TEXT NOT NULL,
 annee INT NOT NULL
 );*/
 
/*CREATE TABLE ROLE (
filmID INT,
acteurID INT,
personnage TEXT,
PRIMARY KEY (filmID,acteurID),
FOREIGN KEY ("filmID") REFERENCES FILM("filmID"),
FOREIGN KEY ("acteurID") REFERENCES ACTEUR("acteurID")
);*/

/*INSERT INTO ACTEUR (acteurID,nom,prenom,naissance)
VALUES
(1, "Messier", "Marc", "1947-08-16"),
(2, "Kelly", "Gene", NULL),
(3, "Perkins", "Anthony", 1932-04-04),
(4, "Kidman", "Nicole", "1967-06-20"),
(5, "Huard", "Patrick", "1969-01-02");*/

/*INSERT INTO FILM(filmID,titre,annee)
VALUES
(1, "Les Boys", 1997),
(2, "Cyrano de Bergerac", 1990),
(3, "Psycho", 1960),
(4, "Singing in the Rain", 1952);*/

/*INSERT INTO ROLE(filmID,acteurID,personnage)
VALUES
(1, 1, "Bob"),
(3, 3, "Norman Bates"),
(4, 2, "Don Lockwood"),
(1, 5, "Ti-Guy");*/

