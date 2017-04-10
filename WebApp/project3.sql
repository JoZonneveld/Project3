-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Gegenereerd op: 10 apr 2017 om 15:39
-- Serverversie: 10.1.8-MariaDB
-- PHP-versie: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project3`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `paal`
--

CREATE TABLE `paal` (
  `id` int(11) NOT NULL,
  `Longitude` varchar(50) NOT NULL,
  `Latitude` varchar(50) NOT NULL,
  `Adres` varchar(200) NOT NULL,
  `Type` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `paal`
--

INSERT INTO `paal` (`id`, `Longitude`, `Latitude`, `Adres`, `Type`) VALUES
(4892, '4.44077', '51.92884', 'Abraham van Stolkweg 3 Rotterdam', 'Snellader NewMotion NL-TNM-FC08 chademo'),
(4893, '4.428783', '51.936354', 'Jan Steenstraat 31 Rotterdam', 'Krachtstroom E-laad REE017 mennekes'),
(4895, '4.499062', '51.900435', 'Paul Krugerstraat 113b Rotterdam', 'Krachtstroom E-laad REE062 mennekes'),
(4896, '4.49896', '51.960954', 'Breitnersingel 1 Rotterdam', 'Krachtstroom E-laad REE070 mennekes'),
(4898, '4.415504', '51.926176', 'Thurledeweg 100 Rotterdam', 'Stopcontact McDonalds Spaanse polder schuko'),
(4899, '4.428008', '51.934884', 'Burgemeester Baumannlaan 178 Rotterdam', 'Stopcontact Rotterdam Elektrisch schuko'),
(4901, '4.426326', '51.937984', 'Burgemeester Baumannlaan 95-97 Rotterdam', 'Stopcontact Koevermans Tweewielers schuko'),
(4906, '4.539119', '51.88065', 'Hordijk 22 Rotterdam', 'Stopcontact Kleingeld Tweewielers schuko'),
(4908, '4.551597', '51.963192', 'Pearl Buckplaats 27 Rotterdam', 'Stopcontact Profile Roerade schuko'),
(4909, '4.46815', '51.92971', 'Walenburgerweg 36 Rotterdam', 'Stopcontact Fa H.T. Frensch schuko'),
(4910, '4.446894', '51.916363', 'Vierambachtsstraat 118 Rotterdam', 'Stopcontact C. Van De Berg schuko'),
(4911, '4.49142', '51.96312', 'Apollostraat 139 Rotterdam', 'Stopcontact C. van der Welle schuko'),
(4912, '4.555934', '51.9468', 'Kreeftstraat 4 Rotterdam', 'Stopcontact Van Dijk Tweewielers schuko'),
(4915, '4.510556', '51.920903', 'Voorschoterlaan 186 Rotterdam', 'Krachtstroom E-laad REE083 mennekes'),
(4918, '4.512897', '51.948588', 'Meerum Terwogtlaan 253 Rotterdam', 'Krachtstroom E-laad REE096 mennekes'),
(4920, '4.455522681', '51.912168919', 'Heemraadssingel 267 Rotterdam', 'Krachtstroom E-laad AL707 mennekes'),
(4924, '4.54867', '51.88689', 'Herenwaard 23 Rotterdam', 'Stopcontact NRGSPOT IJsselmonde schuko'),
(4927, '4.490613', '51.922441', 'Mariniershof 10 Rotterdam', 'Krachtstroom E-laad AL716 mennekes'),
(4929, '4.458676364418', '51.901220441934', 'Schiehavenkade 120 Rotterdam', 'Krachtstroom Q-Park Schiecentrale mennekes'),
(4931, '4.452647353', '51.911525286', 'Korenaarstraat 71 Rotterdam', 'Krachtstroom E-laad AL815 mennekes'),
(4932, '4.440735', '51.938253', 'Oudedijkse Schiekade 14 Rotterdam', 'Krachtstroom E-laad AL804 mennekes'),
(4934, '4.584097052', '51.985183598', 'Kretalaan 12 Rotterdam', 'Krachtstroom E-laad AL805 mennekes'),
(4935, '4.4780913944775', '51.921045601044', 'Aert van Nesstraat 16 Rotterdam', 'Krachtstroom Q-Park De Bijenkorf mennekes'),
(4936, '4.4815552803566', '51.919200607591', 'Bulgersteyn 5 Rotterdam', 'Krachtstroom Q-Park Beursplein mennekes'),
(4937, '4.444098', '51.875643', 'Geyssendorfferweg 27 Rotterdam', 'Krachtstroom E-laad AL771 mennekes'),
(4940, '4.4915288662704', '51.887139224694', 'Twentestraat 10 Rotterdam', 'Krachtstroom Q-Park Zuidplein mennekes'),
(4942, '4.464191581', '51.936760687', 'Talmastraat 29d Rotterdam', 'Krachtstroom E-laad REE241 mennekes'),
(4943, '4.555820272', '51.964176753', 'Mosweg 63 Rotterdam', 'Krachtstroom E-laad REE243 mennekes'),
(4944, '4.539821492', '51.945248495', 'Jacob van Akenstraat 2 Rotterdam', 'Krachtstroom E-laad REE244 mennekes'),
(4949, '4.48162746429443', '51.9192276000977', 'Bulgersteyn 7349 Rotterdam', 'Stopcontact NewMotion 01000544 mennekes'),
(4951, '4.47809982299805', '51.9210014343262', 'Aert van Neshof 12 Rotterdam', 'Stopcontact NewMotion 01000546 mennekes'),
(4955, '4.56131310000001', '51.9514974', 'Watermanweg 45 Rotterdam', 'Stopcontact NewMotion 01000560 mennekes'),
(4956, '4.4252049922943', '51.897484346682', 'Directiekade 2 Rotterdam', 'Stopcontact ICDuBo schuko'),
(4957, '4.4848090410233', '51.904695090349', 'Wilhelminakade 981 Rotterdam', 'Krachtstroom Parkeergarage P1 World Port Center mennekes'),
(4960, '4.4757702', '51.9177788', 'Oude Binnenweg 59 Rotterdam', 'Stopcontact NewMotion 02000763 mennekes'),
(4965, '4.48823118209839', '51.9063491821289', 'Wilhelminakade 54 Rotterdam', 'Stopcontact NewMotion 02001637 mennekes'),
(4968, '4.474064', '51.91509', 'Westersingel 76 Rotterdam', 'Krachtstroom Essent EM-NL-00000599-01-00003 mennekes'),
(4979, '4.44785', '51.92826', 'Stadhoudersweg 215 Rotterdam', 'Krachtstroom EV-Box EVB-P1317032 mennekes'),
(4987, '4.48592', '51.91408', 'Terwenakker 18 Rotterdam', 'Krachtstroom EV-Box EVB-P1228037 mennekes'),
(4993, '4.52568', '51.91815', 'Burgemeester Oudlaan 50 Rotterdam', 'Krachtstroom EV-Box EVB-P1228053 mennekes'),
(5000, '4.42354202270508', '51.944640196538', 'Sidelingeplein 190 Rotterdam', 'Krachtstroom EV-Box EVB-P1239031 mennekes'),
(5004, '4.47743', '51.9079', 'Veerhaven 2 Rotterdam', 'Krachtstroom EV-Box EVB-P1239092 mennekes'),
(5017, '4.50295457672121', '51.9217105975453', 'Admiraliteitskade 62 Rotterdam', 'Krachtstroom EV-Box EVB-P1243123 mennekes'),
(5018, '4.43175423322282', '51.940992689168', 'Zestienhovensekade 174 Rotterdam', 'Krachtstroom EV-Box EVB-P1243139 mennekes'),
(5023, '4.48486', '51.9204', 'Zijl 7 Rotterdam', 'Krachtstroom EV-Box EVB-P1247003 mennekes'),
(5025, '4.47067', '51.92629', 'Proveniersplein 4 Rotterdam', 'Krachtstroom EV-Box EVB-P1247009 mennekes'),
(5026, '4.47326', '51.90723', 'Kievitslaan 31 Rotterdam', 'Krachtstroom EV-Box EVB-P1247010 mennekes'),
(5029, '4.53296', '51.87315', 'Ridderkerkstraat 27 Rotterdam', 'Krachtstroom EV-Box EVB-P1247011 mennekes'),
(5034, '4.54369', '51.9344', 'Marie van Eijsden-Vinkstraat 82 Rotterdam', 'Krachtstroom EV-Box EVB-P1247014 mennekes'),
(5037, '4.56846', '51.96653', 'Arthur van Schendeldreef 177 Rotterdam', 'Krachtstroom EV-Box EVB-P1247015 mennekes'),
(5046, '4.47704', '51.90644', 'Zeemansstraat 13 Rotterdam', 'Krachtstroom EV-Box EVB-P1247084 mennekes'),
(5063, '4.49453', '51.8752', 'Langenhorst 241 Rotterdam', 'Krachtstroom EV-Box EVB-P1250024 mennekes'),
(5065, '4.47048', '51.93274', 'Bergweg 304 Rotterdam', 'Krachtstroom EV-Box EVB-P1250078 mennekes'),
(5069, '4.45907', '51.92103', 'Beatrijsstraat 8 Rotterdam', 'Krachtstroom EV-Box EVB-P1250084 mennekes'),
(5072, '4.44061', '51.89907', 'Willem Egmondstraat 2 Rotterdam', 'Krachtstroom EV-Box EVB-P1250089 mennekes'),
(5073, '4.46725', '51.91475', 'Breitnerstraat 65 Rotterdam', 'Krachtstroom EV-Box EVB-P1250091 mennekes'),
(5078, '4.47396', '51.86363', 'Driemanssteeweg 638 Rotterdam', 'Krachtstroom EV-Box EVB-P1250101 mennekes'),
(5079, '4.47561', '51.86349', 'Zuiderparkweg 606 Rotterdam', 'Krachtstroom EV-Box EVB-P1250103 mennekes'),
(5086, '4.50398', '51.92217', 'Oostzeedijk Beneden 161 Rotterdam', 'Krachtstroom EV-Box EVB-P1250126 mennekes'),
(5089, '5.45567', '52.16885', 'Zuiderparkplein 40 Rotterdam', 'Stopcontact EV-Box EVB-P1305074 mennekes'),
(5092, '4.54124', '51.89391', 'Lampsinsstraat 19 Rotterdam', 'Krachtstroom EV-Box EVB-P1305094 mennekes'),
(5093, '4.45191', '51.9076', 'Willem Buytewechstraat 212 Rotterdam', 'Krachtstroom EV-Box EVB-P1305095 mennekes'),
(5095, '4.474', '51.96359', 'Kastanjesingel 24 Rotterdam', 'Krachtstroom EV-Box EVB-P1309006 mennekes'),
(5105, '4.44344', '51.87217', 'Albert Plesmanplein 18 Rotterdam', 'Krachtstroom EV-Box EVB-P1309113 mennekes'),
(5114, '4.49018', '51.91108', 'Prins Hendriklaan 9 Rotterdam', 'Krachtstroom EV-Box EVB-P1247083 mennekes'),
(5116, '4.5379', '51.9162', 'Fascinatio Boulevard 350 Rotterdam', 'Krachtstroom EV-Box EVB-P1313018 mennekes'),
(5125, '4.50587', '51.92992', 'Jericholaan 70- Rotterdam', 'Krachtstroom EV-Box EVB-P1250094 mennekes'),
(5129, '4.47592', '51.9001', 'Kabelhof 99 Rotterdam', 'Stopcontact EV-Box EVB-P1247008 mennekes'),
(5130, '4.55282', '51.96331', 'Pearl Buckplaats 21 Rotterdam', 'Stopcontact EV-Box EVB-P1247097 mennekes'),
(5133, '4.37725', '51.86692', 'Mandenmakerstraat 84 Hoogvliet Rotterdam', 'Krachtstroom EV-Box EVB-P1309027 mennekes'),
(5136, '4.5627', '51.92679', 'François Nivardstraat 18 Rotterdam', 'Krachtstroom EV-Box EVB-P1306049 mennekes'),
(5137, '4.48126', '51.91642', 'Schilderstraat 57 Rotterdam', 'Krachtstroom EV-Box EVB-P1247004 mennekes'),
(5141, '4.46602', '51.90542', 'Parkhaven 9 Rotterdam', 'Krachtstroom EV-Box EVB-P1247093 mennekes'),
(5144, '4.51756', '51.92787', 'Kralingse Plaslaan 1 Rotterdam', 'Krachtstroom EV-Box EVB-P1250003 mennekes'),
(5146, '4.47523', '51.95057', 'Ringdijk 92 Rotterdam', 'Krachtstroom EV-Box EVB-P1250023 mennekes'),
(5152, '4.49731', '51.92129', 'Haringvliet 25 Rotterdam', 'Krachtstroom EV-Box EVB-P1309023 mennekes'),
(5155, '4.4149', '52.1647', 'Zalmstraat 1 Rotterdam', 'Krachtstroom EV-Box EVB-P1335097 mennekes'),
(5167, '4.4863', '51.94428', 'Bergse Rechter Rottekade 13 Rotterdam', 'Krachtstroom EV-Box EVB-P1309024 mennekes'),
(5171, '4.48823118209839', '51.9063491821289', 'Holland Amerikakade 900 Rotterdam', 'Stopcontact NewMotion 02001619 mennekes'),
(5173, '4.48329', '51.92291', 'Delftsevaart 24 Rotterdam', 'Krachtstroom EV-Box EVB-P1247082 mennekes'),
(5174, '4.4634', '51.92018', 'Henegouwerlaan 63- Rotterdam', 'Krachtstroom EV-Box EVB-P1306040 mennekes'),
(5177, '4.46317', '51.92751', 'Lumeystraat 18 Rotterdam', 'Krachtstroom EV-Box EVB-P1309012 mennekes'),
(5180, '4.54451', '51.95937', 'Marshallweg 45 Rotterdam', 'Krachtstroom EV-Box EVB-P1309117 mennekes'),
(5181, '4.43237', '51.92565', 'Van Nelleweg 8079 Rotterdam', 'Krachtstroom EV-Box EVB-P1335134 mennekes'),
(5185, '4.52072', '51.90724', 'Buitenbassinweg 675 Rotterdam', 'Krachtstroom EV-Box EVB-P1309014 mennekes'),
(5187, '4.36847', '51.86625', 'Noordzijdsedijk 143157 Hoogvliet Rotterdam', 'Krachtstroom EV-Box EVB-P1309013 mennekes'),
(5192, '4.46842', '51.91811', 'Josephstraat 60 Rotterdam', 'Krachtstroom EV-Box EVB-P1309127 mennekes'),
(5193, '4.35327', '51.86611', 'Overhage 3 Hoogvliet Rotterdam', 'Krachtstroom EV-Box EVB-P1306025 mennekes'),
(5201, '4.47549', '51.91857', 'Karel Doormanhof 2 Rotterdam', 'Krachtstroom EV-Box EVB-P1317037 mennekes'),
(5203, '4.45571', '51.91603', 'Heemraadssingel 170 Rotterdam', 'Krachtstroom EV-Box EVB-P1306026 mennekes'),
(5217, '4.54307', '51.94825', 'Metaalstraat 5 Rotterdam', 'Snellader NewMotion NL-TNM-FC09 chademo'),
(5220, '4.472954', '51.924628', 'Delftseplein 31 Rotterdam', 'Krachtstroom E-laad REE050 mennekes'),
(5223, '4.483082', '51.923044', 'Lombardkade 86d Rotterdam', 'Krachtstroom E-laad REE012 mennekes'),
(5226, '4.569981', '51.965103', 'Ambachtsplein 209 Rotterdam', 'Stopcontact Frensch Zevenkamp schuko'),
(5228, '4.524842', '51.874828', 'Dantestraat 470 Rotterdam', 'Stopcontact Jim Pierot schuko'),
(5229, '4.496833', '51.922371', 'Burgemeester van Walsumweg 2 Rotterdam', 'Stopcontact Mega Bike Megastore schuko'),
(5230, '4.504407', '51.881886', 'Dordtsestraatweg 641 Rotterdam', 'Stopcontact Ronald Berkenpeis Tweewielers schuko'),
(5231, '4.559481', '51.929977', 'Jacques Dutilhweg 201 Rotterdam', 'Stopcontact Biketotaal Boom Tweewielers schuko'),
(5233, '4.475038', '51.945438', 'Kleiweg 167 Rotterdam', 'Stopcontact Tweewielercentrum Kleiweg schuko'),
(5239, '4.500666', '51.915578', 'Prins Hendrikkade 10 Rotterdam', 'Krachtstroom E-laad REE033 mennekes'),
(5242, '4.51334', '51.924954', 'Voorschoterlaan 15 Rotterdam', 'Krachtstroom E-laad AL663 mennekes'),
(5243, '4.513409', '51.924923', 'Voorschoterlaan 8 Rotterdam', 'Krachtstroom E-laad AL666 mennekes'),
(5245, '4.440038', '51.927579', 'Blijdorplaan 8 Rotterdam', 'Krachtstroom E-laad REE095 mennekes'),
(5247, '4.472025263', '51.917889062', 'Westersingel 41 Rotterdam', 'Krachtstroom E-laad AL718 mennekes'),
(5248, '4.555925', '51.881828', 'Brittenoord 63 Rotterdam', 'Krachtstroom E-laad AL699 mennekes'),
(5249, '4.52541', '51.89361', 'Van Zandvlietplein 3 Rotterdam', 'Krachtstroom NRGSPOT Feyenoord mennekes'),
(5251, '4.444852', '51.910835', 'Gijsingstraat 28 Rotterdam', 'Krachtstroom E-laad AL747 mennekes'),
(5252, '4.487223', '51.922661', 'Botersloot 141 Rotterdam', 'Krachtstroom E-laad AL758 mennekes'),
(5254, '4.460234', '51.90319', 'Lloydstraat 13 Rotterdam', 'Krachtstroom E-laad AL748 mennekes'),
(5256, '4.524922157', '51.882888365', 'Aristotelesstraat 34 Rotterdam', 'Krachtstroom E-laad AL706 mennekes'),
(5259, '4.584209492', '51.982478511', 'Menorcalaan 30 Rotterdam', 'Krachtstroom E-laad REE209 mennekes'),
(5264, '4.558208371', '51.903129088', 'Regenboogkade 45 Rotterdam', 'Krachtstroom E-laad AL807 mennekes'),
(5265, '4.4736611318772', '51.92282212925', 'Karel Doormanstraat 10 Rotterdam', 'Krachtstroom Q-Park Weena mennekes'),
(5267, '4.475483681', '51.914698686', 'Eendrachtsweg 38 Rotterdam', 'Krachtstroom E-laad AL762 mennekes'),
(5271, '4.5604360176521', '51.951244141167', 'Watermanweg 231 Rotterdam', 'Krachtstroom Q-Park Alexandrium Woonmall mennekes'),
(5273, '4.49354982376099', '51.8852996826172', 'Casimirstraat 1-6 Rotterdam', 'Stopcontact NewMotion 01000549 mennekes'),
(5276, '4.45867013931274', '51.9029998779297', 'Schiehavenkade Rotterdam', 'Stopcontact NewMotion 01000337 mennekes'),
(5280, '4.4770909845829', '51.918505967961', 'Crispijnstraat 6 Rotterdam', 'Krachtstroom Interparking Lijnbaan mennekes'),
(5285, '4.4768188', '51.9185379', 'Crispijnstraat 8 Rotterdam', 'Stopcontact NewMotion 02000849 mennekes'),
(5290, '4.49144983291626', '51.8866996765137', 'Twentestraat 26 Rotterdam', 'Stopcontact NewMotion 01000593 mennekes'),
(5293, '4.479021', '51.91368', 'Schiedamsesingel 132 Rotterdam', 'Krachtstroom Essent EM-NL-00000599-01-00002 mennekes'),
(5297, '4.47128', '51.9244', 'Delftseplein 54 Rotterdam', 'Krachtstroom Essent EM-NL-00000599-01-00004 mennekes'),
(5298, '4.460975', '51.910864', 'Rochussenstraat 230-398 Rotterdam', 'Krachtstroom Essent EM-NL-00000599-01-00005 mennekes'),
(5300, '4.510043', '51.926841', 'Willem Ruyslaan 5b Rotterdam', 'Krachtstroom Essent EM-NL-00000599-02-00001 mennekes'),
(5302, '4.51313', '51.92392', 'Lusthofstraat 30 Rotterdam', 'Krachtstroom EV-Box EVB-P1309120 mennekes'),
(5306, '4.50229', '51.92541', 'Vredenoordlaan 44 Rotterdam', 'Krachtstroom EV-Box EVB-P1309015 mennekes'),
(5307, '4.47358', '51.92075', 'Schouwburgplein 911 Rotterdam', 'Krachtstroom EV-Box 11072617 mennekes'),
(5309, '4.47241960067754', '51.9170905919178', 'Westersingel 51 Rotterdam', 'Stopcontact EV-Box 11082866 mennekes'),
(5327, '4.45831510185235', '51.9140686626788', 'Mathenesserlaan 306 Rotterdam', 'Krachtstroom EV-Box EVB-P1239043 mennekes'),
(5329, '4.53454', '51.87449', 'Bolnesstraat 16 Rotterdam', 'Stopcontact EV-Box EVB-P1239055 mennekes'),
(5334, '4.42534', '51.92794', 'Breevaartstraat 12 Rotterdam', 'Krachtstroom EV-Box EVB-P1243071 mennekes'),
(5339, '4.45617', '51.89723', 'Willingestraat 4 Rotterdam', 'Stopcontact EV-Box EVB-P1243089 mennekes'),
(5346, '4.56138', '51.92743', 'Jan van Tilburgstraat  Rotterdam', 'Krachtstroom EV-Box EVB-P1247002 mennekes'),
(5357, '4.46889', '51.93662', 'Bergsingel 95 Rotterdam', 'Krachtstroom EV-Box EVB-P1247012 mennekes'),
(5359, '4.49097', '51.96527', 'Athenastraat 9 Rotterdam', 'Krachtstroom EV-Box EVB-P1247013 mennekes'),
(5365, '4.55135', '51.97011', 'Elsbes 4 Rotterdam', 'Krachtstroom EV-Box EVB-P1247016 mennekes'),
(5368, '4.46868667724607', '51.9233770669797', 'Stationsplein 45 Rotterdam', 'Krachtstroom EV-Box EVB-P1247055 mennekes'),
(5370, '4.53429', '51.87056', 'Kinderdijkstraat 49 Rotterdam', 'Krachtstroom EV-Box EVB-P1247073 mennekes'),
(5375, '4.48193', '51.93144', 'Tollensstraat 41 Rotterdam', 'Krachtstroom EV-Box EVB-P1247090 mennekes'),
(5377, '4.47412', '51.95483', 'Wilgenlei 61 Rotterdam', 'Krachtstroom EV-Box EVB-P1247091 mennekes'),
(5380, '4.45333', '51.91551', 'Heemraadssingel 221 Rotterdam', 'Krachtstroom EV-Box EVB-P1250002 mennekes'),
(5383, '4.46527', '51.89414', 'Grondherenstraat 19 Rotterdam', 'Krachtstroom EV-Box EVB-P1250004 mennekes'),
(5385, '4.49479', '51.92403', 'Herman Robbersstraat  Rotterdam', 'Krachtstroom EV-Box EVB-P1250021 mennekes'),
(5386, '4.42884', '51.92018', 'Spaanseweg 1 Rotterdam', 'Krachtstroom EV-Box EVB-P1250022 mennekes'),
(5390, '4.43596', '51.85965', 'Rhoonse Baan  Rotterdam', 'Stopcontact EV-Box EVB-P1250074 mennekes'),
(5394, '4.46041', '51.88547', 'Schulpplein 36 Rotterdam', 'Krachtstroom EV-Box EVB-P1250079 mennekes'),
(5401, '4.51284', '51.92012', 'Oostzeedijk 32 Rotterdam', 'Krachtstroom EV-Box EVB-P1250093 mennekes'),
(5410, '4.45008', '51.9146', 'Mathenesserlaan 407 Rotterdam', 'Krachtstroom EV-Box EVB-P1250124 mennekes'),
(5414, '4.49218', '51.95617', 'Hilleniussingel 9 Rotterdam', 'Krachtstroom EV-Box EVB-P1250127 mennekes'),
(5424, '4.49997', '51.96211', 'Molenlaan 61 Rotterdam', 'Krachtstroom EV-Box EVB-P1309007 mennekes'),
(5425, '4.53626', '51.92815', 'Kralingseweg 224 Rotterdam', 'Krachtstroom EV-Box EVB-P1309025 mennekes'),
(5430, '4.41567', '52.16482', 'Willemsplein 490 Rotterdam', 'Krachtstroom EV-Box EVB-P1309053 mennekes'),
(5434, '4.47627', '51.89913', 'Staalstraat 91 Rotterdam', 'Krachtstroom EV-Box EVB-P1309118 mennekes'),
(5435, '4.54275', '51.93658', 'Hermine Moquettestraat 40 Rotterdam', 'Krachtstroom EV-Box EVB-P1309123 mennekes'),
(5437, '4.45916', '51.9302', 'Stadhoudersweg 103 Rotterdam', 'Krachtstroom EV-Box EVB-P1309126 mennekes'),
(5448, '4.40097188949585', '51.9443817138672', 'Vareseweg 125 Rotterdam', 'Stopcontact NewMotion 02004117 mennekes'),
(5450, '4.4532', '51.91353', 'Heemraadssingel 259 Rotterdam', 'Krachtstroom EV-Box EVB-P1309091 mennekes'),
(5453, '4.54868', '51.94689', 'Wormserstraat 12 Rotterdam', 'Krachtstroom EV-Box EVB-P1305039 mennekes'),
(5457, '4.24407', '51.87607', 'Shannonweg 82 Botlek Rotterdam', 'Stopcontact EV-Box EVB-P1306034 mennekes'),
(5460, '4.49526', '51.91927', 'Haringvliet 90 Rotterdam', 'Krachtstroom EV-Box EVB-P1309028 mennekes'),
(5465, '4.47138', '51.94282', 'Lathyrusplein 1 Rotterdam', 'Krachtstroom EV-Box EVB-P1247065 mennekes'),
(5474, '4.45241', '51.87903', 'Waalhaven Zuidzijde 2 Rotterdam', 'Krachtstroom EV-Box EVB-P1305040 mennekes'),
(5476, '4.45026', '51.91947', 'Virulyplein 5 Rotterdam', 'Krachtstroom EV-Box EVB-P1309005 mennekes'),
(5479, '4.48113', '51.90942', 'Willemsplein 492 Rotterdam', 'Stopcontact EV-Box EVB-P1328136 mennekes'),
(5482, '4.50740003585815', '51.9308471679688', '2e Jerichostraat 13 Rotterdam', 'Stopcontact NewMotion 02003928 mennekes'),
(5483, '4.50022', '51.9598', 'Breitnersingel 25 Rotterdam', 'Stopcontact EV-Box EVB-P1317050 mennekes'),
(5484, '4.45748', '51.88652', 'Waalstraat 32 Rotterdam', 'Krachtstroom EV-Box EVB-P1335187 mennekes'),
(5486, '4.49395', '51.91433', 'Maaskade 89 Rotterdam', 'Krachtstroom EV-Box EVB-P1306041 mennekes'),
(5488, '4.48693', '51.88401', 'Zuiderparkplein 20 Rotterdam', 'Stopcontact EV-Box EVB-P1321010 mennekes'),
(5491, '4.56994', '51.97017', 'Paul Whitemansingel 116 Rotterdam', 'Krachtstroom EV-Box EVB-P1309122 mennekes'),
(5508, '4.48071', '51.94538', 'Kleiweg 45 Rotterdam', 'Krachtstroom EV-Box EVB-P1338032 mennekes'),
(5510, '4.43977', '51.90994', 'Schippersstraat 20 Rotterdam', 'Krachtstroom EV-Box EVB-P1309116 mennekes'),
(5516, '4.4835', '51.91955', 'Blaak 333 Rotterdam', 'Krachtstroom EV-Box EVB-P1317002 mennekes'),
(5522, '4.55386', '51.94995', 'Pegasusweg 130 Rotterdam', 'Krachtstroom EV-Box EVB-P1306024 mennekes'),
(5524, '4.50205', '51.95766', 'Burgemeester Le Fèvre de Montignyplein 4 Rotterdam', 'Krachtstroom EV-Box EVB-P1306023 mennekes'),
(5533, '4.48287', '51.89907', 'Wodanstraat 1121 Rotterdam', 'Krachtstroom EV-Box EVB-P1309129 mennekes'),
(5534, '4.5624', '51.96412', 'Zevenkampse Ring 728 Rotterdam', 'Krachtstroom EV-Box EVB-P1309115 mennekes'),
(5536, '4.56013', '51.92964', 'Pieter Klapwijkstraat 19 Rotterdam', 'Krachtstroom EV-Box EVB-P1309018 mennekes'),
(5541, '4.51371', '51.92167', 'Hoflaan 7173 Rotterdam', 'Krachtstroom EV-Box EVB-P1309119 mennekes');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `park`
--

CREATE TABLE `park` (
  `id` int(11) NOT NULL,
  `AreaManagerId` varchar(200) NOT NULL,
  `AreaId` varchar(200) NOT NULL,
  `AreaDesc` varchar(200) NOT NULL,
  `StartDateArea` varchar(200) NOT NULL,
  `EndDateArea` varchar(200) NOT NULL,
  `UsageId` varchar(200) NOT NULL,
  `Longitude` varchar(50) NOT NULL,
  `Latitude` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `park`
--

INSERT INTO `park` (`id`, `AreaManagerId`, `AreaId`, `AreaDesc`, `StartDateArea`, `EndDateArea`, `UsageId`, `Longitude`, `Latitude`) VALUES
(1, '599', '599_BOUZ', 'Garage Boulevard Zuid (Rotterdam)', '20131011', '29991231', 'GARAGEP', '4.5094768', '51.8969409'),
(2, '599', '599_ZMST', 'Garage Zoomstraat (Rotterdam)', '20131011', '29991231', 'GARAGEP', '4.4837392', '51.9365139'),
(3, '599', '599_VERA', 'Garage Veranda (Rotterdam)', '20131011', '29991231', 'GARAGEP', '4.4901431', '51.9217401'),
(4, '599', '599_KIPH', 'Garage Kiphof (Rotterdam)', '20131011', '29991231', 'GARAGEP', '4.4921953', '51.921749'),
(5, '599', '599_NWBW', 'Garage Nieuwe Binnenweg (Rotterdam)', '20131011', '29991231', 'GARAGEP', '4.4526541', '51.9112257'),
(6, '2062', '599_WPC', 'Garage World Port Center (Rotterdam)', '20131105', '29991231', 'GARAGEP', '4.4845157', '51.904836'),
(7, '2459', '599_WEST', 'Garage Westblaak (Rotterdam)', '20131112', '29991231', 'GARAGEP', '4.4778138', '51.9164114'),
(8, '599', '599_BHST', 'Garage Benthuizerstraat (Rotterdam)', '20131011', '29991231', 'GARAGEP', '4.4800188', '51.9365618'),
(9, '599', '599_MATP', 'Garage Mathenesserplein (Rotterdam)', '20131011', '29991231', 'GARAGEP', '4.4446929', '51.9181431'),
(10, '599', '599_OUHA', 'Garage Oude Haven (Rotterdam)', '20131011', '29991231', 'GARAGEP', '4.4928623', '51.9208461'),
(11, '599', '599_MUPL', 'Garage Museumpark (Rotterdam)', '20131011', '29991231', 'GARAGEP', '4.470417', '51.9136738'),
(12, '2459', '599_HART', 'Garage Hart van IJsselmonde (Rotterdam)', '20131112', '29991231', 'GARAGEP', '4.5488099', '51.888376'),
(13, '599', '599_COLW', 'Garage Colosseumweg (Rotterdam)', '20131011', '29991231', 'GARAGEP', '4.5121988', '51.899183'),
(14, '2449', '599_KRUI', 'Garage Kruiskade (Rotterdam)', '20131108', '29991231', 'GARAGEP', '4.4760649', '51.9232024'),
(15, '2449', '599_RED', 'Garage The Red Apple Parkeerkelder (Rotterdam)', '20131108', '29991231', 'GARAGEP', '4.4881825', '51.9172225'),
(16, '599', '599_BOOM', 'Garage De Boompjes (Rotterdam)', '20131011', '29991231', 'GARAGEP', '4.4854515', '51.9140123'),
(17, '2449', '599_LIJN', 'Garage Lijnbaan (Rotterdam)', '20131108', '29991231', 'GARAGEP', '4.4766967', '51.9187175'),
(18, '2448', '599_HART', 'Garage Hart van Zuid (Rotterdam)', '20141118', '29991231', 'GARAGEP', '4.4878878', '51.8868563'),
(19, '2448', '599_BIJE', 'Garage De Bijenkorf (Rotterdam)', '20141118', '29991231', 'GARAGEP', '4.4778271', '51.9208468'),
(20, '2448', '599_KOOP', 'Garage Koopgoot (Rotterdam)', '20141118', '29991231', 'GARAGEP', '4.4813854', '51.9192184'),
(21, '2448', '599_ALE3', 'Garage Alexandrium III Woonmall (Rotterdam)', '20141118', '29991231', 'GARAGEP', '4.5562138', '51.950623'),
(60, '2449', '599_ARPA', 'Garage Arrivals Parking (Rotterdam)', '20160101', '29991231', 'GARAGEP', '4.4702883', '51.9221279'),
(61, '2460', '599_EUKO', 'Garage Eudokiaplein (Rotterdam)', '20131113', '29991231', 'GARAGEP', '4.4700274', '51.9328636'),
(63, '2449', '599_WEST', 'Garage Westerpark (Rotterdam)', '20131108', '20160812', 'GARAGEP', '4.4745724', '51.9053992'),
(64, '2459', '599_BIG', 'Garage Bigshops Parkboulevard (Rotterdam)', '20131112', '20160101', 'GARAGEP', '4.4363625', '51.9093485'),
(65, '2449', '599_MAR', 'Garage Markthal (Rotterdam)', '20140901', '29991231', 'GARAGEP', '4.4868675', '51.9198814'),
(66, '2449', '599_VLAG', 'Garage De Vlaggeman (Rotterdam)', '20131108', '20160812', 'GARAGEP', '4.4361008', '51.926894'),
(67, '2462', '599_JUM', 'Garage Jumbo Hillelaan (Rotterdam)', '20141020', '29991231', 'GARAGEP', '4.4955618', '51.9027087'),
(68, '599', '599_SCHBP', 'Garage Schouwburgplein 1 (Rotterdam)', '20131011', '29991231', 'GARAGEP', '4.4737794', '51.9202689'),
(70, '599', '599_KRPL', 'Garage Schouwburgplein 2 (Rotterdam)', '20131011', '29991231', 'GARAGEP', '4.4705797', '51.9227362'),
(71, '599', '599_LUST', 'Garage Lusthofstraat (Rotterdam)', '20141209', '29991231', 'GARAGEP', '4.5098906', '51.9256607'),
(72, '599', '599_STJP', 'Garage Meent (Rotterdam)', '20131011', '29991231', 'GARAGEP', '4.4824028', '51.9240501'),
(73, '599', '599_ERMB', 'Garage Erasmusbrug (Rotterdam)', '20131011', '29991231', 'GARAGEP', '4.4821579', '51.9113734'),
(74, '599', '599_HOOG', 'Garage Hoogvliet Centrum (Rotterdam)', '20131011', '29991231', 'GARAGEP', '4.3666748', '51.8614058'),
(75, '2448', '599_ZORG', 'Garage Zorgboulevard (Rotterdam)', '20150730', '29991231', 'GARAGEP', '4.5334744', '51.8788673'),
(76, '2459', '599_BLAA', 'Garage Blaak 16 (Rotterdam)', '20131112', '20150801', 'GARAGEP', '4.4780617', '51.9163339');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `paal`
--
ALTER TABLE `paal`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `park`
--
ALTER TABLE `park`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `paal`
--
ALTER TABLE `paal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5543;
--
-- AUTO_INCREMENT voor een tabel `park`
--
ALTER TABLE `park`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
