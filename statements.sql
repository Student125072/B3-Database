-- Oefening 1 het maken van de database voetbal
CREATE DATABASE voetbal;

-- Oefening 1 het maken van de tabellen in de database
CREATE TABLE voetballers(
    id int NOT NULL AUTO_INCREMENT,
    voornaam varchar(30) NOT NULL,
    achternaam varchar(40) NOT NULL,
    contributie boolean,
    elftal_id int,
    PRIMARY KEY(id)
  );

  CREATE TABLE elftallen(
    elftal_id int NOT NULL AUTO_INCREMENT,
    elftalomschrijving varchar(30) NOT NULL,
    speeldag varchar(2) NOT NULL,
    klasse varchar(30) NOT NULL,
    PRIMARY KEY (elftal_id)
    );

-- Oefening 1: de inner join van de tabellen
ALTER TABLE voetballers
ADD INDEX `elftal_id` (`elftal_id`);

ALTER TABLE `voetballers`
  ADD CONSTRAINT `voetballers_ibfk_1` FOREIGN KEY (`elftal_id`) REFERENCES `elftallen` (`elftal_id`);
COMMIT;

-- Beantwoording van de vragen..
-- a. een primary key moet unique zijn, zo kun je alle data uit elkaar houden.
-- b. zodat er bij elk nieuw record dit automatisch herkenbaar gemaakt kan worden.
-- c & d.
SELECT COUNT(id)
FROM voetballers
WHERE elftal_id=1;

-- oefening 2: tabel vullen met gegevens
INSERT INTO `elftallen` (`elftal_id`, `elftalomschrijving`, `speeldag`, `klasse`)
VALUES (NULL, 'mannen 1', 'zo', '1'), (NULL, 'mannen 1', 'zo', '1'),
(NULL, 'jeugd 1', 'za', '1'), (NULL, 'jeugd 1', 'za', '1'), (NULL, 'jeugd 1', 'za', '1');

INSERT INTO `voetballers` (`id`, `voornaam`, `achternaam`, `contributie`, `elftal_id`)
VALUES (NULL, 'Hendrik', 'Broekstra', NULL, '1'), (NULL, 'Herman', 'Bal', NULL, '1'),
(NULL, 'Henk', 'Bal', NULL, '1'), (NULL, 'Chris', 'Scheids', '', '1'), (NULL, 'Christiaan', 'Rechter', '', '1'),
(NULL, 'Man', 'Menneke', NULL, '1'), (NULL, 'Mohammed', 'Akkabi', NULL, '3'), (NULL, 'Jan', 'Voet', NULL, '3'),
(NULL, 'Jani', 'Baller', NULL, '3'), (NULL, 'Louis', 'Hendriks', NULL, '3'), (NULL, 'Meneer', 'De Uil', NULL, '1');

-- e.

-- 3 elftallen op zaterdag
SELECT COUNT(speeldag)
FROM elftallen
WHERE speeldag='za';
-- 3 elftallen op zondag
SELECT COUNT(speeldag)
FROM elftallen
WHERE speeldag='zo';

-- oefening 4: het antwoord is 4.
SELECT COUNT(id)
FROM `voetballers`
INNER JOIN elftallen ON voetballers.elftal_id=elftallen.elftal_id
WHERE elftallen.speeldag='za';

--oefening 5: het antwoord is 7.
SELECT COUNT(id)
FROM `voetballers`
INNER JOIN elftallen ON voetballers.elftal_id=elftallen.elftal_id
WHERE elftallen.speeldag='zo';


-- eindopdracht:
-- maak queries voor de volgende vragen:
-- a. Overzicht van alle reizen die een klant gemaakt hebt
SELECT klant.Klantnr, klant.Naam, reis.Bestemmingcode
FROM reis
INNER JOIN boeking ON boeking.Reisnr=reis.Reisnr
INNER JOIN klant ON boeking.Klantnr=klant.Klantnr
WHERE klant.Naam='Harry Koster';

-- b. Wie is allemaal op een bepaalde bestemming geweest?
SELECT   bestemming.Bestemmingcode, bestemming.Land, bestemming.Plaats, klant.Naam
FROM bestemming
INNER JOIN reis ON reis.Bestemmingcode=bestemming.Bestemmingcode
INNER JOIN boeking ON boeking.Reisnr=reis.Reisnr
INNER JOIN klant ON klant.Klantnr=boeking.Klantnr
WHERE bestemming.Bestemmingcode='BANGK';

-- c. Wie gaat er met een bepaalde reis mee?
SELECT reis.Reisnr, reis.Bestemmingcode, reis.Vertrekdatum, reis.Aantal_dagen, klant.Naam
FROM reis
INNER JOIN boeking ON boeking.Reisnr=reis.Reisnr
INNER JOIN klant ON klant.Klantnr=boeking.Klantnr
WHERE reis.Reisnr=10;
