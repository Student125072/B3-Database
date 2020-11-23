-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2020 at 04:12 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `b3_eindopdracht`
--

-- --------------------------------------------------------

--
-- Table structure for table `bestemming`
--

CREATE TABLE `bestemming` (
  `Bestemmingcode` varchar(10) NOT NULL,
  `Plaats` varchar(40) NOT NULL,
  `Land` varchar(40) NOT NULL,
  `Werelddeel` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Steden waar klanten naartoe kunnen reizen';

--
-- Dumping data for table `bestemming`
--

INSERT INTO `bestemming` (`Bestemmingcode`, `Plaats`, `Land`, `Werelddeel`) VALUES
('ALANY', 'Alanya', 'Turkije', 'West-Europa'),
('ALEXA', 'Alexandrie', 'Egypte', 'Afrika'),
('ANTAL', 'Antalya', 'Turkije', 'West-Europa'),
('BAGHD', 'Baghdad', 'Irak', 'Azie'),
('BALI', 'Bali', 'Indonesie', 'Azie'),
('BANGK', 'Bangkok', 'Thailand', 'Azie'),
('BARCE', 'Barcelona', 'Spagne', 'West-Europa'),
('BASRA', 'Basra', 'Irak', 'Azie'),
('BENID', 'Benidorm', 'Spagne', 'West-Europa'),
('BOGOT', 'Bogota', 'Colombia', 'Zuid-Amerika'),
('BUENO', 'Buenos Aires', 'Argentinie', 'Zuid-Amerika'),
('CAIRO', 'Cairo', 'Egypte', 'Afrika'),
('CALGA', 'Calgary', 'Canada', 'Noord-Amerika'),
('CARAC', 'Caracas', 'Venezuela', 'Zuid-Amerika'),
('CARTA', 'Cartagena', 'Colombia', 'Zuid-Amerika'),
('CASSA', 'Cassablanca', 'Marokko', 'Afrika'),
('CHIAN', 'Chianmai', 'Thailand', 'Azie'),
('CORDO', 'Cordoba', 'Argentinie', 'Zuid-Amerika'),
('CORSI', 'Corsica', 'Frankrijk', 'West-Europa'),
('DALLA', 'Dallas', 'Verenigde Staten', 'Noord-Amerika'),
('DROME', 'Drome', 'Frankrijk', 'West-Europa'),
('DUSSD', 'Dusseldorf', 'Duitsland', 'West-Europa'),
('ELALA', 'El\'Alamein', 'Egypte', 'Afrika'),
('GERON', 'Gerona', 'Spagne', 'West-Europa'),
('GITES', 'Gites', 'Frankrijk', 'West-Europa'),
('GRANC', 'Gran Canaria', 'Spagne', 'West-Europa'),
('HELSI', 'Helsinki', 'Finland', 'West-Europa'),
('ISTAN', 'Istanbul', 'Turkije', 'West-Europa'),
('JAKAR', 'Jakarta', 'Indonesie', 'Azie'),
('KIRKU', 'Kirkuk', 'Irak', 'Azie'),
('LIMA', 'Lima', 'Peru', 'Zuid-Amerika'),
('MADRI', 'Madrid', 'Spagne', 'West-Europa'),
('MANIL', 'Manila', 'Filippijnen', 'Azie'),
('MARDE', 'Mar del Plata', 'Argentinie', 'Zuid-Amerika'),
('MEDAN', 'Medan', 'Indonesie', 'Azie'),
('MEXIC', 'Mexico', 'Mexico', 'Noord-Amerika'),
('MIAMI', 'Miami', 'Verenigde Staten', 'Noord-Amerika'),
('MOIRA', 'Moirara', 'Spagne', 'West-Europa'),
('MONTE', 'Montevideo', 'Uruguay', 'Zuid-Amerika'),
('MONTR', 'Montreal', 'Canada', 'Noord-Amerika'),
('MOSUL', 'Mosul', 'Irak', 'Azie'),
('NEWOR', 'New Orleans', 'Verenigde Staten', 'Noord-Amerika'),
('NYC', 'New York City', 'United States', 'Noord-Amerika'),
('OTTAW', 'Ottawa', 'Canada', 'Noord-Amerika'),
('PARIJ', 'Parijs', 'Frankrijk', 'West-Europa'),
('PARIS', 'Parijs', 'Frankrijk', 'Europa'),
('PATTA', 'Pattaya', 'Thailand', 'Azie'),
('RABAT', 'Rabat', 'Marokko', 'Afrika'),
('RECIF', 'Recife', 'Brazilie', 'Zuid-Amerika'),
('RIO', 'Rio de Janeiro', 'Brazilie', 'Zuid-Amerika'),
('SALOU', 'Salou', 'Spagne', 'West-Europa'),
('SANFR', 'San Francisco', 'Verenigde Staten', 'Noord-Amerika'),
('SANPA', 'San Pablo', 'Filippijnen', 'Azie'),
('SAOPA', 'Sao Paulo', 'Brazilie', 'Zuid-Amerika'),
('SURUB', 'Surubaya', 'Indonesie', 'Azie'),
('TANGE', 'Tanger', 'Marokko', 'Afrika'),
('THEBE', 'Thebes', 'Egypte', 'Afrika'),
('VERAC', 'Veracruz', 'Mexico', 'Noord-Amerika'),
('WASHI', 'Washington', 'Verenigde Staten', 'Noord-Amerika');

-- --------------------------------------------------------

--
-- Table structure for table `boeking`
--

CREATE TABLE `boeking` (
  `Boekingnr` int(4) NOT NULL,
  `Klantnr` int(4) NOT NULL,
  `Reisnr` int(4) NOT NULL,
  `Boekdatum` date NOT NULL,
  `Aantal_volwassenen` int(4) NOT NULL,
  `Aantal_kids` int(4) NOT NULL,
  `Betaald_bedrag` decimal(7,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='De boekingen die klanten doen voor reizen die ze (gaan maken';

--
-- Dumping data for table `boeking`
--

INSERT INTO `boeking` (`Boekingnr`, `Klantnr`, `Reisnr`, `Boekdatum`, `Aantal_volwassenen`, `Aantal_kids`, `Betaald_bedrag`) VALUES
(1, 15, 7, '2018-11-11', 2, 0, '650.00'),
(2, 11, 19, '2018-11-12', 1, 0, '0.00'),
(3, 22, 17, '2018-11-15', 2, 1, '1150.00'),
(4, 5, 9, '2018-11-17', 2, 0, '0.00'),
(5, 11, 2, '2018-11-17', 1, 0, '1000.00'),
(6, 10, 16, '2018-11-18', 2, 0, '2250.00'),
(7, 8, 14, '2018-11-19', 2, 2, '550.50'),
(8, 5, 21, '2018-11-16', 1, 0, '1250.00'),
(9, 9, 22, '2018-11-19', 2, 0, '1500.00'),
(10, 10, 17, '2018-11-20', 5, 3, '2250.00'),
(11, 14, 15, '2018-11-24', 4, 5, '0.00'),
(12, 1, 10, '2018-11-30', 2, 0, '1600.00'),
(13, 2, 10, '2018-12-01', 4, 1, '2250.00'),
(14, 13, 20, '2018-12-01', 2, 0, '0.00'),
(15, 3, 8, '2018-12-03', 3, 1, '2100.00'),
(16, 7, 19, '2018-12-04', 2, 0, '0.00'),
(17, 21, 24, '2018-12-05', 2, 1, '500.00'),
(18, 18, 11, '2018-12-05', 4, 0, '0.00'),
(19, 4, 26, '2018-12-05', 2, 3, '1150.00'),
(20, 16, 28, '2018-12-08', 2, 1, '0.00'),
(21, 19, 13, '2018-12-09', 3, 1, '0.00'),
(22, 20, 21, '2018-12-11', 2, 0, '1250.00'),
(23, 17, 21, '2018-12-12', 1, 0, '1250.00'),
(24, 25, 29, '2020-05-09', 1, 2, '2100.00'),
(25, 27, 14, '2020-05-15', 1, 0, '350.00'),
(26, 25, 27, '2020-05-04', 1, 0, '650.00');

-- --------------------------------------------------------

--
-- Table structure for table `klant`
--

CREATE TABLE `klant` (
  `Klantnr` int(4) NOT NULL,
  `Naam` varchar(50) NOT NULL,
  `Adres` varchar(40) NOT NULL,
  `Postcode` varchar(8) NOT NULL,
  `Woonplaats` varchar(50) NOT NULL,
  `Telefoonnr` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Stamgegevens klanten';

--
-- Dumping data for table `klant`
--

INSERT INTO `klant` (`Klantnr`, `Naam`, `Adres`, `Postcode`, `Woonplaats`, `Telefoonnr`) VALUES
(1, 'Vuuren J. van', 'Bastion 5', '3221 LE', 'Hellevoetsluis', '0181317346'),
(2, 'Baggerman A.', 'Nassaustraat 141', '2983 RD', 'Ridderkerk', '0180417567'),
(3, 'Wubben P.F', 'Evenaar 68', '3067 DA', 'Rotterdam', '0104205259'),
(4, 'Baggerman A.', 'Maisdreef 8', '3204 GM', 'Spijkenisse', '0181638923'),
(5, 'Pieterman K.', 'De wouden 93', '9405 HC', 'Assen', '0592358938'),
(6, 'Taks F.', 'De koppele 777', '5632 LV', 'Eindhoven', '0402420368'),
(7, 'Ruigrok W.', 'Pompstraat 47', '3082 RR', 'Rotterdam', '0104553694'),
(8, 'Waardenburg P.', 'Koenraadlaan 50', '5651 EW', 'Eindhoven', '0402518367'),
(9, 'Ramaker J.M.', 'Heideanjer 44', '7721 HE', 'Dalfsen', '0529438493'),
(10, 'Jansen W.A.J.', 'Delkant 4', '5311 CJ', 'Gameren', '0418563829'),
(11, 'Galen P. van', 'Nassaulaan 4', '3116 EV', 'Schiedam', '0104265028'),
(12, 'Brigman R.', 'Bolderwerk 5', '3134 MA', 'Vlaardingen', '0104354223'),
(13, 'Pedersen J.', 'Drinkwaterweg 404', '3063 JC', 'Rotterdam', '0104182219'),
(14, 'Slootweg A.', 'Platanendreef 6', '3137 CN', 'Vlaardingen', '0104730435'),
(15, 'Brugman D.', 'Edisonstraat 34 a', '3112 LW', 'Schiedam', '0104704951'),
(16, 'Jansen J.', 'Prinsenlaan 393', '3067 TX', 'Rotterdam', '0104804674'),
(17, 'Diepenhorst K.C.', 'Gemeenlandsedijk 4', '3216 AG', 'Abbenbroek', '0181669241'),
(18, 'Antes A.J.J.', 'Merelstraat 4', '4793 HA', 'Fijnaart', '0168462236'),
(19, 'Jansen H.T.', 'Ankerstraat 16', '7071 WH', 'Ulft', '0315681206'),
(20, 'Jansen J.', 'Buitenbrinkweg 54', '3853 LX', 'Ermelo', '0341553246'),
(21, 'Stienstra W.', 'Juckemastraat 23', '8801 GL', 'Franeker', '0517395068'),
(22, 'Jaggers S.', 'Schorpioenstraat 282', '3067 KW', 'Rotterdam', '0104565551'),
(23, 'Kevin Koster', 'Delbar 16', '9408JK', 'Assen', '0612124326'),
(24, 'Owen Kamphuis', 'Delbar 16', '9408JK', 'Assen', '0612345678'),
(25, 'Harry Koster', 'Delbar 16', '9408JK', 'Assen', '0644876733'),
(26, 'Peter Broek', 'Broeklaan 12', '9281AB', 'Coevorden', '0671828391'),
(27, 'Pieter Tafel', 'Tafellaan 10', '938SJ', 'Den Haag', '0617283712'),
(28, 'Handige Henk', 'Handiglaan 20', '9381QJ', 'Den Haag', '0627183612'),
(29, 'Jan Tafelpoot', 'Tafelpotenstraat 12', '9381JK', 'Rotterdam', '0617281632'),
(30, 'Grietje Tafelpoot', 'Tafelpotenstraat 12', '9381JK', 'Rotterdam', '0617281633'),
(31, 'Chris Tafelpoot', 'Tafelpotenstraat 12', '9381JK', 'Rotterdam', '0691829346'),
(32, 'Henk Brillenman', 'Brillenmannenweg 12', '2931US', 'Amsterdam', '0672746251');

-- --------------------------------------------------------

--
-- Table structure for table `reis`
--

CREATE TABLE `reis` (
  `Reisnr` int(4) NOT NULL,
  `Bestemmingcode` varchar(10) NOT NULL,
  `Vertrekdatum` date NOT NULL,
  `Aantal_dagen` int(4) NOT NULL,
  `Prijs_per_persoon` decimal(7,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='De reis die de klant gaat maken';

--
-- Dumping data for table `reis`
--

INSERT INTO `reis` (`Reisnr`, `Bestemmingcode`, `Vertrekdatum`, `Aantal_dagen`, `Prijs_per_persoon`) VALUES
(1, 'SANPA', '2019-04-05', 14, '1150.00'),
(2, 'SANFR', '2019-05-17', 14, '1600.00'),
(3, 'BALI', '2019-05-18', 21, '2150.00'),
(4, 'CORSI', '2019-05-19', 7, '800.00'),
(5, 'CORDO', '2019-05-20', 21, '2650.00'),
(6, 'MADRI', '2019-05-20', 10, '700.00'),
(7, 'SANPA', '2019-05-22', 23, '2450.00'),
(8, 'RABAT', '2019-05-24', 12, '1385.00'),
(9, 'TANGE', '2019-05-24', 23, '1825.00'),
(10, 'VERAC', '2019-05-24', 14, '2450.00'),
(11, 'MEDAN', '2019-05-27', 19, '2660.00'),
(12, 'TANGE', '2019-05-30', 14, '1397.00'),
(13, 'GRANC', '2019-05-03', 10, '650.00'),
(14, 'ISTAN', '2019-05-04', 14, '1386.00'),
(15, 'HELSI', '2019-05-04', 12, '1199.00'),
(16, 'MIAMI', '2019-05-05', 23, '2945.00'),
(17, 'RABAT', '2019-05-05', 14, '1475.00'),
(18, 'RABAT', '2019-05-05', 21, '1795.00'),
(19, 'GITES', '2019-05-10', 14, '1600.00'),
(20, 'LIMA', '2019-05-10', 28, '3395.00'),
(21, 'BANGK', '2019-05-10', 22, '2697.00'),
(22, 'SURUB', '2019-05-12', 28, '3333.00'),
(23, 'CAIRO', '2019-05-12', 8, '734.00'),
(24, 'BARCE', '2019-05-12', 9, '620.00'),
(25, 'DUSSD', '2019-05-03', 4, '420.00'),
(26, 'MOIRA', '2019-05-03', 10, '815.00'),
(27, 'MIAMI', '2019-05-05', 21, '2650.00'),
(28, 'CORSI', '2019-05-05', 10, '1200.00'),
(29, 'NYC', '2020-05-15', 14, '700.00'),
(30, 'PARIS', '2020-05-21', 6, '400.00'),
(31, 'BALI', '2020-07-08', 12, '749.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bestemming`
--
ALTER TABLE `bestemming`
  ADD PRIMARY KEY (`Bestemmingcode`);

--
-- Indexes for table `boeking`
--
ALTER TABLE `boeking`
  ADD PRIMARY KEY (`Boekingnr`),
  ADD KEY `Klantnr` (`Klantnr`),
  ADD KEY `Reisnr` (`Reisnr`);

--
-- Indexes for table `klant`
--
ALTER TABLE `klant`
  ADD PRIMARY KEY (`Klantnr`);

--
-- Indexes for table `reis`
--
ALTER TABLE `reis`
  ADD PRIMARY KEY (`Reisnr`),
  ADD KEY `Bestemmingcode` (`Bestemmingcode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `boeking`
--
ALTER TABLE `boeking`
  MODIFY `Boekingnr` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `klant`
--
ALTER TABLE `klant`
  MODIFY `Klantnr` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `reis`
--
ALTER TABLE `reis`
  MODIFY `Reisnr` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `boeking`
--
ALTER TABLE `boeking`
  ADD CONSTRAINT `boeking_ibfk_1` FOREIGN KEY (`Klantnr`) REFERENCES `klant` (`Klantnr`),
  ADD CONSTRAINT `boeking_ibfk_2` FOREIGN KEY (`Reisnr`) REFERENCES `reis` (`Reisnr`),
  ADD CONSTRAINT `reisnr_reisnr` FOREIGN KEY (`Reisnr`) REFERENCES `reis` (`Reisnr`);

--
-- Constraints for table `reis`
--
ALTER TABLE `reis`
  ADD CONSTRAINT `bestemming_bestemming` FOREIGN KEY (`Bestemmingcode`) REFERENCES `bestemming` (`Bestemmingcode`),
  ADD CONSTRAINT `reis_ibfk_1` FOREIGN KEY (`Bestemmingcode`) REFERENCES `bestemming` (`Bestemmingcode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
