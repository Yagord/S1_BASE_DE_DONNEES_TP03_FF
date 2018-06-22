SHOW TABLE STATUS FROM bibliotheque ;
DESCRIBE abonne ;
SHOW COLUMNS FROM abonne ;
SELECT * FROM abonne;


SET SQL SAFE UPDATES = 0 ;




SELECT *
FROM Auteur;

SELECT DISTINCT *
FROM Auteur;

SELECT *
FROM Editeur;

SELECT DISTINCT *
FROM Editeur;

SELECT idEditeur
FROM Editeur
WHERE nom = 'Poche';

SELECT idAb, idEx
FROM Abonne NATURAL JOIN Emprunt
WHERE nom = 'Roux';

SELECT idlivre
FROM Livre NATURAL JOIN AuteurDe NATURAL JOIN Auteur
WHERE nom = 'Nietzsche';

SELECT dateRetour
FROM Emprunt;

SELECT idExemplaire
FROM Exemplaire
WHERE idLivre = 3 OR idLivre = 5;

SELECT idAb, LENGTH(nom) AS longueurDuNom
FROM Abonne
GROUP BY idAb;

SELECT prenom
FROM Abonne
WHERE prenom like '%a%';

SELECT idLivre
FROM Emprunt INNER JOIN Exemplaire ON (idEx = idExemplaire)
WHERE YEAR(dateEmprunt) < 2009;




SELECT *
FROM Auteur
ORDER BY nom ASC, prenom DESC;

SELECT *
FROM AuteurDe
ORDER BY idAuteur DESC;

SELECT *
FROM Emprunt
ORDER BY idAB, idEX;

SELECT *
FROM Emprunt
ORDER BY idEX, idAb;




SELECT nom
FROM Auteur
WHERE UPPER(nom) like 'N%' OR LOWER(nom) like 'n%';

SELECT titre
FROM Livre
WHERE titre like '%e';

SELECT titre
FROM Livre
WHERE titre like '%re%';

SELECT DATEDIFF(dateRetour, dateEmprunt)
FROM Emprunt;

SELECT DATEDIFF(month, dateRetour, dateEmprunt)
FROM Emprunt;

SELECT DATEDIFF(NOW(), MAX(dateEmprunt))
FROM Emprunt;





CREATE TABLE Telephone(
numeroSerie int,
typeTel varchar(45),
marque int,
prix int,
couleur varchar(45),
CONSTRAINT pk_telephone PRIMARY KEY (numeroSerie)
);

SELECT DISTINCT typeTel
FROM Telephone;

SELECT typeTel, prix, couleur
FROM Telephone;

SELECT *
FROM Telephone
ORDER BY prix DESC;

SELECT numeroSerie AS No
FROM Telephone;

SELECT prix
FROM Telephone
ORDER BY typeTel ASC, prix DESC;

SELECT typeTel
FROM Telephone
WHERE couleur IS NULL;