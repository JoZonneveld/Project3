-- phpMyAdmin SQL Dump
-- version 4.2.12
-- http://www.phpmyadmin.net
--
-- Machine: rdbms
-- Gegenereerd op: 07 apr 2017 om 17:30
-- Serverversie: 5.6.35-log
-- PHP-versie: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databank: `DB2796862`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `park`
--

CREATE TABLE IF NOT EXISTS `park` (
`id` int(11) NOT NULL,
  `AreaManagerId` varchar(200) NOT NULL,
  `AreaId` varchar(200) NOT NULL,
  `AreaDesc` varchar(200) NOT NULL,
  `StartDateArea` varchar(200) NOT NULL,
  `EndDateArea` varchar(200) NOT NULL,
  `UsageId` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `park`
--

INSERT INTO `park` (`id`, `AreaManagerId`, `AreaId`, `AreaDesc`, `StartDateArea`, `EndDateArea`, `UsageId`) VALUES
(1, '599', '599_BOUZ', 'Garage Boulevard Zuid (Rotterdam)', '20131011', '29991231', 'GARAGEP'),
(2, '599', '599_ZMST', 'Garage Zoomstraat (Rotterdam)', '20131011', '29991231', 'GARAGEP'),
(3, '599', '599_VERA', 'Garage Veranda (Rotterdam)', '20131011', '29991231', 'GARAGEP'),
(4, '599', '599_KIPH', 'Garage Kiphof (Rotterdam)', '20131011', '29991231', 'GARAGEP'),
(5, '599', '599_NWBW', 'Garage Nieuwe Binnenweg (Rotterdam)', '20131011', '29991231', 'GARAGEP'),
(6, '2062', '599_WPC', 'Garage World Port Center (Rotterdam)', '20131105', '29991231', 'GARAGEP'),
(7, '2459', '599_WEST', 'Garage Westblaak (Rotterdam)', '20131112', '29991231', 'GARAGEP'),
(8, '599', '599_BHST', 'Garage Benthuizerstraat (Rotterdam)', '20131011', '29991231', 'GARAGEP'),
(9, '599', '599_MATP', 'Garage Mathenesserplein (Rotterdam)', '20131011', '29991231', 'GARAGEP'),
(10, '599', '599_OUHA', 'Garage Oude Haven (Rotterdam)', '20131011', '29991231', 'GARAGEP'),
(11, '599', '599_MUPL', 'Garage Museumpark (Rotterdam)', '20131011', '29991231', 'GARAGEP'),
(12, '2459', '599_HART', 'Garage Hart van IJsselmonde (Rotterdam)', '20131112', '29991231', 'GARAGEP'),
(13, '599', '599_COLW', 'Garage Colosseumweg (Rotterdam)', '20131011', '29991231', 'GARAGEP'),
(14, '2449', '599_KRUI', 'Garage Kruiskade (Rotterdam)', '20131108', '29991231', 'GARAGEP'),
(15, '2449', '599_RED', 'Garage The Red Apple Parkeerkelder (Rotterdam)', '20131108', '29991231', 'GARAGEP'),
(16, '599', '599_BOOM', 'Garage De Boompjes (Rotterdam)', '20131011', '29991231', 'GARAGEP'),
(17, '2449', '599_LIJN', 'Garage Lijnbaan (Rotterdam)', '20131108', '29991231', 'GARAGEP'),
(18, '2448', '599_HART', 'Garage Hart van Zuid (Rotterdam)', '20141118', '29991231', 'GARAGEP'),
(19, '2448', '599_BIJE', 'Garage De Bijenkorf (Rotterdam)', '20141118', '29991231', 'GARAGEP'),
(20, '2448', '599_KOOP', 'Garage Koopgoot (Rotterdam)', '20141118', '29991231', 'GARAGEP'),
(21, '2448', '599_ALE3', 'Garage Alexandrium III Woonmall (Rotterdam)', '20141118', '29991231', 'GARAGEP'),
(22, '2449', '599_ARPA', 'Garage Arrivals Parking (Rotterdam)', '20160101', '29991231', 'GARAGEP'),
(23, '2460', '599_EUKO', 'Garage Eudokiaplein (Rotterdam)', '20131113', '29991231', 'GARAGEP'),
(24, '2449', '599_BIG', 'Garage Bigshops (Rotterdam)', '20160101', '29991231', 'GARAGEP'),
(25, '2449', '599_WEST', 'Garage Westerpark (Rotterdam)', '20131108', '20160812', 'GARAGEP'),
(26, '2459', '599_BIG', 'Garage Bigshops Parkboulevard (Rotterdam)', '20131112', '20160101', 'GARAGEP'),
(27, '2449', '599_MAR', 'Garage Markthal (Rotterdam)', '20140901', '29991231', 'GARAGEP'),
(28, '2449', '599_VLAG', 'Garage De Vlaggeman (Rotterdam)', '20131108', '20160812', 'GARAGEP'),
(29, '2462', '599_JUM', 'Garage Jumbo Hillelaan (Rotterdam)', '20141020', '29991231', 'GARAGEP'),
(30, '599', '599_SCHBP', 'Garage Schouwburgplein 1 (Rotterdam)', '20131011', '29991231', 'GARAGEP'),
(31, '599', '599_PL53', 'Garage Plein 1953 (Rotterdam)', '20131011', '20161031', 'GARAGEP'),
(32, '599', '599_KRPL', 'Garage Schouwburgplein 2 (Rotterdam)', '20131011', '29991231', 'GARAGEP'),
(33, '599', '599_LUST', 'Garage Lusthofstraat (Rotterdam)', '20141209', '29991231', 'GARAGEP'),
(34, '599', '599_STJP', 'Garage Meent (Rotterdam)', '20131011', '29991231', 'GARAGEP'),
(35, '599', '599_ERMB', 'Garage Erasmusbrug (Rotterdam)', '20131011', '29991231', 'GARAGEP'),
(36, '599', '599_HOOG', 'Garage Hoogvliet Centrum (Rotterdam)', '20131011', '29991231', 'GARAGEP'),
(37, '2448', '599_ZORG', 'Garage Zorgboulevard (Rotterdam)', '20150730', '29991231', 'GARAGEP'),
(38, '2459', '599_BLAA', 'Garage Blaak 16 (Rotterdam)', '20131112', '20150801', 'GARAGEP'),
(39, '599', '599_BOUZ', 'Garage Boulevard Zuid (Rotterdam)', '20131011', '29991231', 'GARAGEP'),
(40, '599', '599_ZMST', 'Garage Zoomstraat (Rotterdam)', '20131011', '29991231', 'GARAGEP'),
(41, '599', '599_VERA', 'Garage Veranda (Rotterdam)', '20131011', '29991231', 'GARAGEP'),
(42, '599', '599_KIPH', 'Garage Kiphof (Rotterdam)', '20131011', '29991231', 'GARAGEP'),
(43, '599', '599_NWBW', 'Garage Nieuwe Binnenweg (Rotterdam)', '20131011', '29991231', 'GARAGEP'),
(44, '2062', '599_WPC', 'Garage World Port Center (Rotterdam)', '20131105', '29991231', 'GARAGEP'),
(45, '2459', '599_WEST', 'Garage Westblaak (Rotterdam)', '20131112', '29991231', 'GARAGEP'),
(46, '599', '599_BHST', 'Garage Benthuizerstraat (Rotterdam)', '20131011', '29991231', 'GARAGEP'),
(47, '599', '599_MATP', 'Garage Mathenesserplein (Rotterdam)', '20131011', '29991231', 'GARAGEP'),
(48, '599', '599_OUHA', 'Garage Oude Haven (Rotterdam)', '20131011', '29991231', 'GARAGEP'),
(49, '599', '599_MUPL', 'Garage Museumpark (Rotterdam)', '20131011', '29991231', 'GARAGEP'),
(50, '2459', '599_HART', 'Garage Hart van IJsselmonde (Rotterdam)', '20131112', '29991231', 'GARAGEP'),
(51, '599', '599_COLW', 'Garage Colosseumweg (Rotterdam)', '20131011', '29991231', 'GARAGEP'),
(52, '2449', '599_KRUI', 'Garage Kruiskade (Rotterdam)', '20131108', '29991231', 'GARAGEP'),
(53, '2449', '599_RED', 'Garage The Red Apple Parkeerkelder (Rotterdam)', '20131108', '29991231', 'GARAGEP'),
(54, '599', '599_BOOM', 'Garage De Boompjes (Rotterdam)', '20131011', '29991231', 'GARAGEP'),
(55, '2449', '599_LIJN', 'Garage Lijnbaan (Rotterdam)', '20131108', '29991231', 'GARAGEP'),
(56, '2448', '599_HART', 'Garage Hart van Zuid (Rotterdam)', '20141118', '29991231', 'GARAGEP'),
(57, '2448', '599_BIJE', 'Garage De Bijenkorf (Rotterdam)', '20141118', '29991231', 'GARAGEP'),
(58, '2448', '599_KOOP', 'Garage Koopgoot (Rotterdam)', '20141118', '29991231', 'GARAGEP'),
(59, '2448', '599_ALE3', 'Garage Alexandrium III Woonmall (Rotterdam)', '20141118', '29991231', 'GARAGEP'),
(60, '2449', '599_ARPA', 'Garage Arrivals Parking (Rotterdam)', '20160101', '29991231', 'GARAGEP'),
(61, '2460', '599_EUKO', 'Garage Eudokiaplein (Rotterdam)', '20131113', '29991231', 'GARAGEP'),
(62, '2449', '599_BIG', 'Garage Bigshops (Rotterdam)', '20160101', '29991231', 'GARAGEP'),
(63, '2449', '599_WEST', 'Garage Westerpark (Rotterdam)', '20131108', '20160812', 'GARAGEP'),
(64, '2459', '599_BIG', 'Garage Bigshops Parkboulevard (Rotterdam)', '20131112', '20160101', 'GARAGEP'),
(65, '2449', '599_MAR', 'Garage Markthal (Rotterdam)', '20140901', '29991231', 'GARAGEP'),
(66, '2449', '599_VLAG', 'Garage De Vlaggeman (Rotterdam)', '20131108', '20160812', 'GARAGEP'),
(67, '2462', '599_JUM', 'Garage Jumbo Hillelaan (Rotterdam)', '20141020', '29991231', 'GARAGEP'),
(68, '599', '599_SCHBP', 'Garage Schouwburgplein 1 (Rotterdam)', '20131011', '29991231', 'GARAGEP'),
(69, '599', '599_PL53', 'Garage Plein 1953 (Rotterdam)', '20131011', '20161031', 'GARAGEP'),
(70, '599', '599_KRPL', 'Garage Schouwburgplein 2 (Rotterdam)', '20131011', '29991231', 'GARAGEP'),
(71, '599', '599_LUST', 'Garage Lusthofstraat (Rotterdam)', '20141209', '29991231', 'GARAGEP'),
(72, '599', '599_STJP', 'Garage Meent (Rotterdam)', '20131011', '29991231', 'GARAGEP'),
(73, '599', '599_ERMB', 'Garage Erasmusbrug (Rotterdam)', '20131011', '29991231', 'GARAGEP'),
(74, '599', '599_HOOG', 'Garage Hoogvliet Centrum (Rotterdam)', '20131011', '29991231', 'GARAGEP'),
(75, '2448', '599_ZORG', 'Garage Zorgboulevard (Rotterdam)', '20150730', '29991231', 'GARAGEP'),
(76, '2459', '599_BLAA', 'Garage Blaak 16 (Rotterdam)', '20131112', '20150801', 'GARAGEP');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `park`
--
ALTER TABLE `park`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `park`
--
ALTER TABLE `park`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=77;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
