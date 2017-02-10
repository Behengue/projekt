-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Erstellungszeit: 03. Feb 2017 um 12:01
-- Server-Version: 10.1.19-MariaDB
-- PHP-Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `taschen`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `design`
--

CREATE TABLE `design` (
  `IDDesign` int(11) NOT NULL,
  `NameDesign` varchar(50) DEFAULT NULL,
  `BezeichnungDesign` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `design`
--

INSERT INTO `design` (`IDDesign`, `NameDesign`, `BezeichnungDesign`) VALUES
(1, 'Handtasche', 'Das ist eine Handtasche'),
(2, 'Kleine Tasche', 'Das ist eine kleine Tasche');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `hatkategorie`
--

CREATE TABLE `hatkategorie` (
  `IDTasche` int(11) NOT NULL,
  `IDKategorie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `hatkategorie`
--

INSERT INTO `hatkategorie` (`IDTasche`, `IDKategorie`) VALUES
(2, 1),
(3, 2),
(5, 2),
(7, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `hattype`
--

CREATE TABLE `hattype` (
  `IDTasche` int(11) NOT NULL,
  `IDType` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `hattype`
--

INSERT INTO `hattype` (`IDTasche`, `IDType`) VALUES
(2, 1),
(3, 2);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `kategorie`
--

CREATE TABLE `kategorie` (
  `IDKategorie` int(11) NOT NULL,
  `NameKategorie` varchar(50) DEFAULT NULL,
  `BezeichnungKategorie` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `kategorie`
--

INSERT INTO `kategorie` (`IDKategorie`, `NameKategorie`, `BezeichnungKategorie`) VALUES
(1, 'Frauen', 'Tasche für Frauen'),
(2, 'Männer', 'Tasche für Männer'),
(3, 'Kinder', 'Tasche für Kinder');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `kauft`
--

CREATE TABLE `kauft` (
  `Datum` datetime DEFAULT NULL,
  `IBANKauft` varchar(22) DEFAULT NULL,
  `IDKunde` int(11) NOT NULL,
  `IDTasche` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `kunde`
--

CREATE TABLE `kunde` (
  `IDKunde` int(11) NOT NULL,
  `Namekunde` varchar(50) DEFAULT NULL,
  `Stadt` varchar(100) DEFAULT NULL,
  `PLZ` int(11) DEFAULT NULL,
  `Strasse` varchar(100) DEFAULT NULL,
  `Vorname` varchar(255) DEFAULT NULL,
  `Username` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `IBANKunde` varchar(22) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `kunde`
--

INSERT INTO `kunde` (`IDKunde`, `Namekunde`, `Stadt`, `PLZ`, `Strasse`, `Vorname`, `Username`, `Email`, `Password`, `IBANKunde`) VALUES
(7, 'Nganya Nana', 'Brandenburg', 14770, 'Zanderstr. 10A', 'Herval', 'herval', 'hervalnganya@yahoo.fr', '11111111', ''),
(8, 'Behengue', 'Brandenburg', 14770, 'Zanderstr. 10D', 'Ines', 'inesbeh', 'inesbehengue@yahoo.fr', '11111111', ''),
(9, 'Behengue', 'Brandenburg', 14770, 'Zanderstr. 10D', 'Ines', 'inesbehw', 'inesbeheng4ue@yahoo.fr', '11111111', ''),
(10, 'Behengue', 'Brandenburg', 14770, 'Zanderstr. 10D', 'Ines', 'inesbehwd', 'inesbehedng4ue@yahoo.fr', '11111111', ''),
(11, 'Behengue', 'Brandenburg', 14770, 'Zanderstr. 10D', 'Ines', 'inesbehwde', 'inesbehedng4tue@yahoo.fr', 'a642a77abd7d4f51bf9226ceaf891fcbb5b299b8', ''),
(12, 'Evina', 'berlin', 10627, 'Kantstrasse 102', 'Giselle Prudence', 'Prudence', 'prudence@gmail.com', '82dcc67b5c0f0d363a2da84613613bf94de1f014', ''),
(13, 'Marie', 'berlin', 10627, 'Kantstrasse 104', 'Crescence', 'Marie', 'marie@gmail.com', '790c8625cae5371b6221381b41550671605ca9f2', ''),
(14, 'forlondon', 'London', 12789, 'londonerstr. 13', 'londonfor', 'forlon', 'for@london.com', 'a2d3cc283e233f50b45383fd8c09c2e7a54ea6d3', ''),
(15, 'Usertest', 'stadttest', 12345, 'strassetest 10', 'Usertest', 'usertest', 'testemail@test.de', '7c222fb2927d828af22f592134e8932480637c0d', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `marke`
--

CREATE TABLE `marke` (
  `IDMarke` int(11) NOT NULL,
  `NameMarke` varchar(50) DEFAULT NULL,
  `BezeichnungMarke` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `marke`
--

INSERT INTO `marke` (`IDMarke`, `NameMarke`, `BezeichnungMarke`) VALUES
(1, 'Gucci', 'Das ist eine Marke'),
(4, 'Louis Vuitton', 'Das ist noch eine Marke'),
(5, 'Samsung', 'Computer Tasche'),
(6, 'Cucci', 'Abend Tasche'),
(7, 'Nike', 'Schule Tasche');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tasche`
--

CREATE TABLE `tasche` (
  `IDTasche` int(11) NOT NULL,
  `NameTasche` varchar(100) DEFAULT NULL,
  `Menge` int(11) DEFAULT NULL,
  `Preis` int(11) DEFAULT NULL,
  `PATH` varchar(255) DEFAULT NULL,
  `IDDesign` int(11) DEFAULT NULL,
  `IDMarke` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `tasche`
--

INSERT INTO `tasche` (`IDTasche`, `NameTasche`, `Menge`, `Preis`, `PATH`, `IDDesign`, `IDMarke`) VALUES
(1, 'Handtasche', 51, 500, '../media/shopping-cart-169267_1920.jpg', 1, 4),
(2, 'Hand Tasche', 50, 150, '../media/shop-1032676_1920.jpg', 1, 4),
(3, 'TascheC2', 70, 65, '../media/Screenshot_from_2016-11-23_17-41-32.png', 2, 1),
(4, 'tascheb1', 60, 20, '../media/Screenshot_from_2016-11-23_17-40-15.png', 1, 4),
(5, 'tascheb2', 20, 100, '../media/Screenshot_from_2016-11-23_17-40-04.png', 1, 1),
(6, 'Ipad Tasche', 49, 150, '../media/photo-bag-499020_1920.jpg ', 1, 4),
(7, 'taschea3', 700, 100, '../media/hat_190273.jpg', 2, 4),
(8, '', 20, 90, '../media/girl_shopping_186940.jpg', 2, 1),
(9, 'tascheb4', 10, 50, '../media/Free-HD-Light-Blue-Wallpaper-Images.jpg', 2, 1),
(10, 'TascheC3', 15, 90, '../media/carrying_a_heavy_shopping_197695.jpg', 2, 4),
(11, 'TascheC4', 45, 215, '../media/bag-1194459_1920.jpg', 1, 1),
(12, 'taschea4', 50, 99, '../media/bag-1050608_1920.jpg', 2, 4),
(13, 'taschea5', 300, 300, '../media/bag-1050607_1920.jpg', 1, 1),
(14, 'tascheb5', 5, 60, '../media/bag-1050595_1920.jpg', 2, 4),
(15, 'taschea6', 64, 150, '../media/backpack-499000_1920.jpg', 2, 1),
(16, 'TascheC5', 17, 125, '../media/500_F_43284985_CDLQaeuPVUe2j10Zlw8gMfoDH64dpEis.jpg', 1, 4);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `valeur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `test`
--

INSERT INTO `test` (`id`, `valeur`) VALUES
(1, 5),
(2, 5);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `type`
--

CREATE TABLE `type` (
  `IDType` int(11) NOT NULL,
  `NameType` varchar(50) DEFAULT NULL,
  `BezeichnungType` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `type`
--

INSERT INTO `type` (`IDType`, `NameType`, `BezeichnungType`) VALUES
(1, 'Leder', 'Leder mit Blumen'),
(2, 'Stoffe', 'für einkauft');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `design`
--
ALTER TABLE `design`
  ADD PRIMARY KEY (`IDDesign`);

--
-- Indizes für die Tabelle `hatkategorie`
--
ALTER TABLE `hatkategorie`
  ADD PRIMARY KEY (`IDTasche`,`IDKategorie`),
  ADD KEY `FK_hatkategorie_IDKategorie` (`IDKategorie`);

--
-- Indizes für die Tabelle `hattype`
--
ALTER TABLE `hattype`
  ADD PRIMARY KEY (`IDTasche`,`IDType`),
  ADD KEY `FK_hattype_IDType` (`IDType`);

--
-- Indizes für die Tabelle `kategorie`
--
ALTER TABLE `kategorie`
  ADD PRIMARY KEY (`IDKategorie`);

--
-- Indizes für die Tabelle `kauft`
--
ALTER TABLE `kauft`
  ADD PRIMARY KEY (`IDKunde`,`IDTasche`),
  ADD KEY `FK_kauft_IDTasche` (`IDTasche`);

--
-- Indizes für die Tabelle `kunde`
--
ALTER TABLE `kunde`
  ADD PRIMARY KEY (`IDKunde`);

--
-- Indizes für die Tabelle `marke`
--
ALTER TABLE `marke`
  ADD PRIMARY KEY (`IDMarke`);

--
-- Indizes für die Tabelle `tasche`
--
ALTER TABLE `tasche`
  ADD PRIMARY KEY (`IDTasche`),
  ADD KEY `FK_Tasche_IDDesign` (`IDDesign`),
  ADD KEY `FK_Tasche_IDMarke` (`IDMarke`);

--
-- Indizes für die Tabelle `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`IDType`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `design`
--
ALTER TABLE `design`
  MODIFY `IDDesign` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT für Tabelle `kategorie`
--
ALTER TABLE `kategorie`
  MODIFY `IDKategorie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT für Tabelle `kunde`
--
ALTER TABLE `kunde`
  MODIFY `IDKunde` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT für Tabelle `marke`
--
ALTER TABLE `marke`
  MODIFY `IDMarke` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT für Tabelle `tasche`
--
ALTER TABLE `tasche`
  MODIFY `IDTasche` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT für Tabelle `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT für Tabelle `type`
--
ALTER TABLE `type`
  MODIFY `IDType` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `hatkategorie`
--
ALTER TABLE `hatkategorie`
  ADD CONSTRAINT `FK_hatkategorie_IDKategorie` FOREIGN KEY (`IDKategorie`) REFERENCES `kategorie` (`IDKategorie`),
  ADD CONSTRAINT `FK_hatkategorie_IDTasche` FOREIGN KEY (`IDTasche`) REFERENCES `tasche` (`IDTasche`);

--
-- Constraints der Tabelle `hattype`
--
ALTER TABLE `hattype`
  ADD CONSTRAINT `FK_hattype_IDTasche` FOREIGN KEY (`IDTasche`) REFERENCES `tasche` (`IDTasche`),
  ADD CONSTRAINT `FK_hattype_IDType` FOREIGN KEY (`IDType`) REFERENCES `type` (`IDType`);

--
-- Constraints der Tabelle `kauft`
--
ALTER TABLE `kauft`
  ADD CONSTRAINT `FK_kauft_IDKunde` FOREIGN KEY (`IDKunde`) REFERENCES `kunde` (`IDKunde`),
  ADD CONSTRAINT `FK_kauft_IDTasche` FOREIGN KEY (`IDTasche`) REFERENCES `tasche` (`IDTasche`);

--
-- Constraints der Tabelle `tasche`
--
ALTER TABLE `tasche`
  ADD CONSTRAINT `FK_Tasche_IDDesign` FOREIGN KEY (`IDDesign`) REFERENCES `design` (`IDDesign`),
  ADD CONSTRAINT `FK_Tasche_IDMarke` FOREIGN KEY (`IDMarke`) REFERENCES `marke` (`IDMarke`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
