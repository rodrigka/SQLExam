--Requettes :
--1
/*INSERT INTO ACTEUR (acteurID,nom,prenom,naissance)
VALUES
(6,"Clint","Eastwood","31-05-1930");*/
/*INSERT INTO FILM(filmID,titre,annee)
VALUES
(5,"Million Dollar Baby",2004);*/
/*INSERT INTO ROLE(filmID,acteurID,personnage)
VALUES
(5,6,"Frankie Dunn");*/

--2
/*UPDATE ACTEUR SET prenom ="Clinton"
WHERE acteurID=6;*/

--3 
/*SELECT titre
FROM FILM
ORDER BY titre ASC
LIMIT 3;*/

--4
/*CREATE VIEW "sans_date_naissance" as
SELECT nom, prenom
FROM ACTEUR
WHERE naissance is NULL;*/

--5
/*SELECT a.nom,a.prenom,f.filmID,r.personnage
FROM ACTEUR a, FILM f, ROLE r
WHERE a.acteurID=r.acteurID AND f.filmID=r.filmID;*/

--6
/*SELECT a.*, f.titre, f.annee
FROM ACTEUR a , FILM f, Role r
WHERE a.acteurID=r.acteurID AND f.filmID=r.filmID
AND f.annee > 1990;*/

--7
/*SELECT a.*
FROM ACTEUR a, Role r
WHERE a.acteurID=r.acteurID
AND r.personnage = "Ti-Guy";*/

--8
/*SELECT f.titre
FROM FILM f, ACTEUR a, Role r
WHERE f.filmID=r.filmID AND a.acteurID=r.acteurID
AND a.prenom = "Gene" AND a.nom="Kelly"
UNION
SELECT f.titre
FROM FILM f, ACTEUR a, Role r
WHERE f.filmID=r.filmID AND a.acteurID=r.acteurID
GROUP BY f.titre
HAVING Count(a.acteurID)>=2;*/

--9
/*SELECT a.*
FROM ACTEUR a LEFT JOIN ROLE r ON a.acteurID=r.acteurID
GROUP BY a.acteurID
HAVING count(r.filmID) =0;*/

--10
/*SELECT a.nom, a.prenom, count(f.filmID) as nb_films
FROM ACTEUR a, ROLE r, FILM f
WHERE f.filmID=r.filmID AND a.acteurID=r.acteurID
AND f.annee > 1980 AND r.filmID = (
		SELECT r.filmID
		FROM ROLE r
		GROUP BY r.filmID
		HAVING count(r.acteurID)>=2);*/

--11
-- nous ne pouvons pas executer cette requette sur la table FILM, 
--car ces données sont aussi dans la table ROLE
--qui elle meme à une clé étrangère venant de FILM,
--Si on supprime ces données, la table ROLE aurait 
--des problèmes de reference.








