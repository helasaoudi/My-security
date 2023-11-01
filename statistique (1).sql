-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 08 fév. 2023 à 10:25
-- Version du serveur : 10.4.25-MariaDB
-- Version de PHP : 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `statistique`
--

-- --------------------------------------------------------

--
-- Structure de la table `avis`
--

CREATE TABLE `avis` (
  `avis` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `cordonneé`
--

CREATE TABLE `cordonneé` (
  `codepostal` int(11) NOT NULL,
  `ville` varchar(100) NOT NULL,
  `info` varchar(1000) NOT NULL,
  `statistique` float NOT NULL,
  `lat` decimal(10,6) NOT NULL,
  `lang` decimal(10,6) NOT NULL,
  `Nometprenom` varchar(20) NOT NULL,
  `datee` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `cordonneé`
--

INSERT INTO `cordonneé` (`codepostal`, `ville`, `info`, `statistique`, `lat`, `lang`, `Nometprenom`, `datee`) VALUES
(1082, 'CITE CARAVALLES', 'Aucune information n\'est disponible pour le moment', 10, '36.847666', '10.184952', '', ''),
(1082, 'CITE EL MAHRAJENE', 'Aucune information n\'est disponible pour le moment', 10, '36.830447', '10.177932', '', ''),
(1082, 'CITE SNIT', 'Aucune information n\'est disponible pour le moment', 10, '36.704212', '10.172613', '', ''),
(1013, 'EL MANZAH 9', 'Aucune information n\'est disponible pour le moment', 10, '36.848418', '10.149329', '', ''),
(1002, 'BELVEDERE', 'Aucune information n\'est disponible pour le moment', 10, '36.823408', '10.171129', '', ''),
(1004, 'EL MANZAH 1', 'Aucune information n\'est disponible pour le moment', 30, '36.838982', '10.185131', '', ''),
(1082, 'EL MANZAH 2', 'Aucune information n\'est disponible pour le moment', 20, '36.860497', '10.132034', '', ''),
(1082, 'EL MANZAH 3', 'Aucune information n\'est disponible pour le moment', 30, '36.854585', '10.173961', '', ''),
(1082, 'EL MANZAH 4', 'Aucune information n\'est disponible pour le moment', 20, '36.840214', '10.177256', '', ''),
(1082, 'MUTUELLE VILLE', 'Aucune information n\'est disponible pour le moment', 10, '36.834472', '10.171186', '', ''),
(2092, 'CITE DES MEDCINS', 'Aucune information n\'est disponible pour le moment', 40, '36.790291', '10.106203', '', ''),
(2092, 'CITE DE PARADISE ', 'Aucune information n\'est disponible pour le moment', 10, '36.845362', '10.165593', '', ''),
(2092, 'CITE FAIZA', 'Aucune information n\'est disponible pour le moment', 20, '36.835722', '10.157718', '', ''),
(2092, 'CITE SABA', 'Aucune information n\'est disponible pour le moment', 35, '14.743888', '-17.311953', '', ''),
(2092, 'EL MANAR 2', 'Aucune information n\'est disponible pour le moment', 30, '36.840253', '10.156646', '', ''),
(2052, 'EZZOHOUR 5', 'Aucune information n\'est disponible pour le moment', 10, '0.000000', '0.000000', '', ''),
(1087, 'CITE EL MECHTEL', 'Aucune information n\'est disponible pour le moment', 35, '36.788374', '10.089977', '', ''),
(2087, 'CITE HWAS', 'Aucune information n\'est disponible pour le moment', 20, '36.794937', '10.110469', '', ''),
(2087, 'EL HRAIRIA', 'Aucune information n\'est disponible pour le moment', 30, '36.789848', '10.093817', '', ''),
(2051, 'EZZAHROUNI', 'Aucune information n\'est disponible pour le moment', 75, '36.790876', '10.103860', '', ''),
(2051, 'CITE JLAS', 'Aucune information n\'est disponible pour le moment', 20, '36.729255', '10.307811', '', ''),
(2051, 'CITE MEDJERDA', 'Aucune information n\'est disponible pour le moment', 10, '0.000000', '0.000000', '', ''),
(2052, 'CITE BOUZAIENE', 'Aucune information n\'est disponible pour le moment', 85, '36.789916', '10.094856', '', ''),
(2051, 'CITE BOUGATFA1', 'Aucune information n\'est disponible pour le moment', 20, '36.778742', '10.108972', '', ''),
(2051, 'CITE EL RACHIDA', 'Aucune information n\'est disponible pour le moment', 35, '36.789848', '10.093817', '', ''),
(2051, 'CITE EL SOLTANI', 'Aucune information n\'est disponible pour le moment', 30, '36.788316', '10.093432', '', ''),
(1074, 'EL MOUROUJ 2', 'Aucune information n\'est disponible pour le moment', 70, '36.741936', '10.198920', '', ''),
(2053, 'CITE BOU HJAR', 'Aucune information n\'est disponible pour le moment', 75, '36.756940', '10.176237', '', ''),
(2053, 'CITE EL NOUR ', 'Aucune information n\'est disponible pour le moment', 70, '36.750992', '10.202573', '', ''),
(2053, 'EL KABARIA 1', 'Aucune information n\'est disponible pour le moment', 80, '36.748669', '10.189364', '', ''),
(2053, 'EL KABARIA 2', 'Aucune information n\'est disponible pour le moment', 80, '36.748807', '10.187648', '', ''),
(2053, 'EL KABARIA 3', 'Aucune information n\'est disponible pour le moment', 75, '36.759112', '10.189879', '', ''),
(2053, 'EL KABARIA 4', 'Aucune information n\'est disponible pour le moment', 75, '36.759112', '10.189879', '', ''),
(2053, 'EL WARDEYA', 'Aucune information n\'est disponible pour le moment', 50, '36.772432', '10.194949', '', ''),
(2066, 'IBN SINA', 'Aucune information n\'est disponible pour le moment', 85, '36.753739', '10.190506', '', ''),
(2015, 'EL RIADH', 'Aucune information n\'est disponible pour le moment', 50, '36.776429', '10.188082', '', ''),
(2015, 'LE KRAM', 'Aucune information n\'est disponible pour le moment', 60, '36.833177', '10.317017', '', ''),
(2015, 'EL KRAM EST', 'Aucune information n\'est disponible pour le moment', 50, '36.835031', '10.316845', '', ''),
(2089, 'BIR EL HLOU', 'Aucune information n\'est disponible pour le moment', 70, '36.835031', '10.316845', '', ''),
(2089, 'EL KRAM OUEST', 'Aucune information n\'est disponible pour le moment', 65, '36.835031', '10.316845', '', ''),
(2089, 'SIDI AMOR', 'Aucune information n\'est disponible pour le moment', 40, '36.932716', '10.172844', '', ''),
(1006, 'HAMMEM EL REMIMI', 'Aucune information n\'est disponible pour le moment', 40, '36.807443', '10.171138', '', ''),
(1006, 'SIDI DJEBLI', 'Aucune information n\'est disponible pour le moment', 10, '34.739064', '10.760100', '', ''),
(1006, 'TRONJA', 'Aucune information n\'est disponible pour le moment', 10, '36.803752', '10.174187', '', ''),
(1006, 'ZAOUIET EL BAKRIA', 'Aucune information n\'est disponible pour le moment', 15, '36.805136', '10.169593', '', ''),
(1029, 'BAB SADOUN', 'Aucune information n\'est disponible pour le moment', 50, '36.808712', '10.159056', '', ''),
(1075, 'BAB EL KHADRA', 'Aucune information n\'est disponible pour le moment', 10, '36.809108', '10.165950', '', ''),
(1006, 'EL HALFAOUINE', 'Aucune information n\'est disponible pour le moment', 10, '36.807143', '10.171638', '', ''),
(1006, 'BAB SAOUIKA', 'Aucune information n\'est disponible pour le moment', 10, '36.804568', '10.165185', '', ''),
(1006, 'BOUREJ ZOUARA', 'Aucune information n\'est disponible pour le moment', 10, '36.806763', '10.153355', '', ''),
(1006, 'BAB EL AKOUES', 'Aucune information n\'est disponible pour le moment', 10, '36.808636', '10.158881', '', ''),
(1006, 'BAB EL ALOUJ', 'Aucune information n\'est disponible pour le moment', 10, '36.803043', '10.164823', '', ''),
(1006, 'BAB EL ASSEL', 'Aucune information n\'est disponible pour le moment', 54, '36.812284', '10.167137', '', ''),
(1006, 'BAB SIDIABEDESSLAM', 'Aucune information n\'est disponible pour le moment', 50, '36.810097', '10.164128', '', ''),
(1054, 'AMILCAR', 'Aucune information n\'est disponible pour le moment', 15, '36.843863', '10.321526', '', ''),
(2016, 'CARTAGE BYRSA', 'Aucune information n\'est disponible pour le moment', 10, '36.852088', '10.322445', '', ''),
(2016, 'CARTAGE PLAGE ', 'Aucune information n\'est disponible pour le moment', 10, '336.855309', '10.342358', '', ''),
(2016, 'CARTHAGE', 'Aucune information n\'est disponible pour le moment', 10, '36.851406', '10.315830', '', ''),
(2016, 'CARTAGE PLAGE ', 'Aucune information n\'est disponible pour le moment', 10, '336.855309', '10.342358', '', ''),
(2016, 'CARTHAGE', 'Aucune information n\'est disponible pour le moment', 10, '36.851406', '10.315830', '', ''),
(2016, 'CITE DE LA STEG', 'Aucune information n\'est disponible pour le moment', 50, '36.838802', '10.083649', '', ''),
(2016, 'CITE MOHAMED ALI ', 'Aucune information n\'est disponible pour le moment', 40, '36.766128', '10.188748', '', ''),
(2025, 'SALAMBO', 'Aucune information n\'est disponible pour le moment', 10, '36.837958', '10.322855', '', ''),
(2026, 'SIDI BOUSAIID', 'Aucune information n\'est disponible pour le moment', 10, '36.874340', '10.341740', '', ''),
(2085, 'EL YASMINA', 'Aucune information n\'est disponible pour le moment', 10, '36.844276', '10.188277', '', ''),
(1002, 'CITE JARDINS', 'Aucune information n\'est disponible pour le moment', 10, '36.824003', '10.187660', '', ''),
(1002, 'MHAIREDDINE EL PACHA', 'Aucune information n\'est disponible pour le moment', 15, '36.821205', '10.189904', '', ''),
(1003, 'CITE EL KHADRA', 'Aucune information n\'est disponible pour le moment', 10, '0.000000', '0.000000', '', ''),
(1003, 'CITE EL WAFA', 'Aucune information n\'est disponible pour le moment', 50, '36.821205', '10.189904', '', ''),
(1003, 'CITE OLYMPEADE', 'Aucune information n\'est disponible pour le moment', 10, '36.838202', '10.192571', '', ''),
(1003, 'CITE OLYMPIQUE', 'Aucune information n\'est disponible pour le moment', 10, '36.839078', '10.185295', '', ''),
(1003, 'CITE STAR', 'Aucune information n\'est disponible pour le moment', 70, '36.798407', '10.123674', '', ''),
(2035, 'EL CHARGUIA', 'Aucune information n\'est disponible pour le moment', 10, '36.855472', '10.211124', '', ''),
(1000, 'BAB BHAR', 'Aucune information n\'est disponible pour le moment', 10, '36.799188', '10.175596', '', ''),
(1000, 'BAB EL JAZIRA', 'Aucune information n\'est disponible pour le moment', 50, '36.789984', '10.176622', '', ''),
(1000, 'SIDI BAHRI', 'Aucune information n\'est disponible pour le moment', 10, '36.806727', '10.175246', '', ''),
(1001, 'REPUBLIQUE', 'Aucune information n\'est disponible pour le moment', 10, '36.806503', '10.180814', '', ''),
(1002, 'HEDI CHAKER', 'Aucune information n\'est disponible pour le moment', 10, '36.813694', '10.177659', '', ''),
(1002, 'TAIEB EL MHIRI', 'Aucune information n\'est disponible pour le moment', 10, '36.848809', '10.262877', '', ''),
(1069, 'HABIB THAMER', 'Aucune information n\'est disponible pour le moment', 10, '36.786060', '10.176574', '', ''),
(1073, 'MONTPLAISIR', 'Aucune information n\'est disponible pour le moment', 10, '36.817877', '10.187689', '', ''),
(2076, 'CITE EL FATAH ', 'Aucune information n\'est disponible pour le moment', 10, '36.761576', '10.112020', '', ''),
(2076, 'CITE EL KHALIL', 'Aucune information n\'est disponible pour le moment', 10, '36.889975', '10.303145', '', ''),
(2076, 'CITE EL OUNS', 'Aucune information n\'est disponible pour le moment', 10, '34.831874', '10.753040', '', ''),
(2076, 'CITE ERRIADH', 'Aucune information n\'est disponible pour le moment', 10, '36.887953', '10.311318', '', ''),
(2076, 'CITE ESSALMA', 'Aucune information n\'est disponible pour le moment', 50, '36.887953', '10.311318', '', ''),
(2076, 'CITE ESSIRINE', 'Aucune information n\'est disponible pour le moment', 50, '36.798258', '10.142860', '', ''),
(2078, 'CITE AFH', 'Aucune information n\'est disponible pour le moment', 50, '36.902171', '10.048617', '', ''),
(2078, 'CITE BEN CHAABANE', 'Aucune information n\'est disponible pour le moment', 10, '36.814851', '10.141346', '', ''),
(2087, 'CITE DES VERGERS', 'Aucune information n\'est disponible pour le moment', 70, '36.745954', '10.235335', '', ''),
(2087, 'CITE DU STADE', 'Aucune information n\'est disponible pour le moment', 10, '36.743391', '10.231945', '', ''),
(2078, 'CITE EL AHMADI', 'Aucune information n\'est disponible pour le moment', 10, '0.000000', '0.000000', '', ''),
(2078, 'CITE EL HANA', 'Aucune information n\'est disponible pour le moment', 50, '36.743391', '10.231945', '', ''),
(2078, 'CITE EL MOEZ', 'Aucune information n\'est disponible pour le moment', 10, '34.683599', '10.705630', '', ''),
(2078, 'CITE MALHATLI', 'Aucune information n\'est disponible pour le moment', 10, '36.855734', '10.269561', '', ''),
(2078, 'CITE RIMLA 1', 'Aucune information n\'est disponible pour le moment', 10, '36.731744', '5.061321', '', ''),
(2078, 'CITE MALHATLI', 'Aucune information n\'est disponible pour le moment', 10, '36.855734', '10.269561', '', ''),
(2078, 'CITE RIMLA 1', 'Aucune information n\'est disponible pour le moment', 10, '36.731744', '5.061321', '', ''),
(1053, 'BERGE DU LAC', 'Aucune information n\'est disponible pour le moment', 10, '36.834977', '10.240419', '', ''),
(1057, 'GAMMART', 'Aucune information n\'est disponible pour le moment', 10, '36.918803', '10.288766', '', ''),
(2045, 'CITE EL MHIRI', 'Aucune information n\'est disponible pour le moment', 10, '36.844419', '10.267281', '', ''),
(2045, 'CITE SPROLS', 'Aucune information n\'est disponible pour le moment', 10, '36.852228', '10.256877', '', ''),
(2046, 'CITE AZIZA', 'Aucune information n\'est disponible pour le moment', 10, '36.858933', '10.265847', '', ''),
(2046, 'CITE BHAR LAZREG', 'Aucune information n\'est disponible pour le moment', 50, '36.875632', '10.290678', '', ''),
(2046, 'CITE AZIZA', 'Aucune information n\'est disponible pour le moment', 10, '36.858933', '10.265847', '', ''),
(2046, 'CITE BHAR LAZREG', 'Aucune information n\'est disponible pour le moment', 50, '36.875632', '10.290678', '', ''),
(2076, 'CITE DES MIMOSAS', 'Aucune information n\'est disponible pour le moment', 10, '0.000000', '0.000000', '', ''),
(2046, 'CITE MONGI SLIM ', 'Aucune information n\'est disponible pour le moment', 10, '36.836041', '10.196212', '', ''),
(2046, 'SIDI DAOUD', 'Aucune information n\'est disponible pour le moment', 10, '37.024161', '10.912336', '', ''),
(2076, 'SIDI BOUREJ EL KOUKI', 'Aucune information n\'est disponible pour le moment', 10, '36.848262', '10.271890', '', ''),
(2076, 'CITE EL TELEDIFFUSION 1', 'Aucune information n\'est disponible pour le moment', 50, '36.882759', '10.315692', '', ''),
(2076, 'CITE DES JUGES', 'Aucune information n\'est disponible pour le moment', 10, '36.882759', '10.315681', '', ''),
(2078, 'MARSA SAFSAF', 'Aucune information n\'est disponible pour le moment', 10, '36.882647', '10.330528', '', ''),
(2052, 'EZZOUHOUR 4', 'Aucune information n\'est disponible pour le moment', 10, '36.787664', '10.120483', '', ''),
(2052, 'CITE DES OFFICIERS', 'Aucune information n\'est disponible pour le moment', 60, '36.731744', '5.061321', '', ''),
(2052, 'CITE EL SAAADA', 'Aucune information n\'est disponible pour le moment', 20, '36.798228', '10.132505', '', ''),
(1046, 'EL BACH-HAMBA', 'Aucune information n\'est disponible pour le moment', 35, '36.792747', '10.170437', '', ''),
(1046, 'EL GARJOUMA', 'Aucune information n\'est disponible pour le moment', 10, '35.829202', '8.819971', '', ''),
(1046, 'EL SABKHA', 'Aucune information n\'est disponible pour le moment', 35, '25.271321', '55.299618', '', ''),
(1046, 'JBAL EL JLOUD', 'Aucune information n\'est disponible pour le moment', 10, '25.270758', '55.299854', '', ''),
(2023, 'CITE THAMEUR', 'Aucune information n\'est disponible pour le moment', 10, '36.759751', '10.211677', '', ''),
(2023, 'EL AFRANE', 'Aucune information n\'est disponible pour le moment', 50, '36.777218', '10.197916', '', ''),
(2023, 'SIDI FATHALLAH', 'Aucune information n\'est disponible pour le moment', 50, '36.766984', '10.209807', '', ''),
(1089, 'SIDI EL BECHIR', 'Aucune information n\'est disponible pour le moment', 60, '36.790932', '10.174793', '', ''),
(1089, 'SIDI MANSOUR', 'Aucune information n\'est disponible pour le moment', 70, '36.789700', '10.175520', '', ''),
(1027, 'BAB EL FALLA', 'Aucune information n\'est disponible pour le moment', 50, '36.790058', '10.177167', '', ''),
(1089, 'ABOU EL KACEM EL CHEBBI', 'Aucune information n\'est disponible pour le moment', 80, '36.805426', '10.101800', '', ''),
(1089, 'BAB ALIOUA', 'Aucune information n\'est disponible pour le moment', 10, '36.788783', '10.175421', '', ''),
(1089, 'EL GOURJANI', 'Aucune information n\'est disponible pour le moment', 10, '36.789853', '10.167950', '', ''),
(1089, 'ESSAIDA MANOUBIA', 'Aucune information n\'est disponible pour le moment', 10, '0.000000', '0.000000', '', ''),
(1008, 'MAAKEL EZAAIM', 'Aucune information n\'est disponible pour le moment', 11.02, '36.793782', '10.165738', '', ''),
(1089, 'MONTFLEURI', 'Aucune information n\'est disponible pour le moment', 25, '48.874771', '2.290673', '', ''),
(1067, 'LA GOULETTE PORT', 'Aucune information n\'est disponible pour le moment', 10, '36.810542', '10.303487', '', ''),
(2060, 'CASINO LA GOULETTE', 'Aucune information n\'est disponible pour le moment', 10, '36.822054', '10.311146', '', ''),
(2060, 'CITE ENNACIM LA BRISE', 'Aucune information n\'est disponible pour le moment', 50, '36.815671', '10.304300', '', ''),
(2060, 'EL BATTAH', 'Aucune information n\'est disponible pour le moment', 10, '36.658451', '8.493806', '', ''),
(2060, 'KHEIRDDINE', 'Aucune information n\'est disponible pour le moment', 50, '36.801498', '10.168588', '', ''),
(2060, 'LA GOULETTE', 'Aucune information n\'est disponible pour le moment', 10, '36.818351', '10.299398', '', ''),
(2060, 'LA GOULETTE NOUVELLE', 'Aucune information n\'est disponible pour le moment', 10, '36.820066', '10.308668', '', ''),
(2089, 'CITE EL MECHTEL', 'Aucune information n\'est disponible pour le moment', 35, '36.788374', '10.089977', '', ''),
(2000, 'LE BARDO', 'Aucune information n\'est disponible pour le moment', 40, '36.814968', '10.139751', '', ''),
(2009, 'BORTAL HAIDER', 'Aucune information n\'est disponible pour le moment', 10, '36.816718', '10.121911', '', ''),
(2009, 'KSAAR ESAID', 'Aucune information n\'est disponible pour le moment', 10, '36.820957', '10.120758', '', ''),
(2017, 'CITE DES ENSIGNANTS', 'Aucune information n\'est disponible pour le moment', 20, '14.777162', '-17.405995', '', ''),
(2017, 'CITE STAR', 'Aucune information n\'est disponible pour le moment', 70, '36.798407', '10.123674', '', ''),
(2017, 'CITE KHAZNADAR', 'Aucune information n\'est disponible pour le moment', 10, '0.000000', '0.000000', '', ''),
(2000, 'BOUCOUCHA', 'Aucune information n\'est disponible pour le moment', 10, '36.808991', '10.148124', '', ''),
(2000, 'CITE ATLEN ', 'Aucune information n\'est disponible pour le moment', 50, '34.008775', '-4.960202', '', ''),
(2000, 'CITE DE SATDE ', 'Aucune information n\'est disponible pour le moment', 10, '36.743466', '10.231911', '', ''),
(1064, 'CITE EL  INTILAKA', 'Aucune information n\'est disponible pour le moment', 40, '36.839558', '10.116941', '', ''),
(1064, 'EL NASSIM', 'Aucune information n\'est disponible pour le moment', 10, '36.831074', '10.091586', '', ''),
(1068, 'ROMMANA', 'Aucune information n\'est disponible pour le moment', 50, '36.821449', '10.141034', '', ''),
(1091, 'EL OMRANE SUPPERIEUR', 'Aucune information n\'est disponible pour le moment', 70, '36.833113', '10.139791', '', ''),
(2062, 'CITE BEN KHALDOUN', 'Aucune information n\'est disponible pour le moment', 90, '36.826546', '10.142324', '', ''),
(1009, 'BELLEVUE', 'Aucune information n\'est disponible pour le moment', 50, '36.777512', '10.189534', '', ''),
(1009, 'BOREJ EL RAYES', 'Aucune information n\'est disponible pour le moment', 10.01, '36.857952', '10.266183', '', ''),
(1009, 'CITE EL IZDIHAR', 'Aucune information n\'est disponible pour le moment', 10, '36.775172', '10.181169', '', ''),
(1009, 'CITE MOHAMED ALI ', 'Aucune information n\'est disponible pour le moment', 40, '36.766128', '10.188748', '', ''),
(1009, 'DIBOUZVILLE', 'Aucune information n\'est disponible pour le moment', 20, '36.779973', '10.196126', '', ''),
(1009, 'EL OURDIA ', 'Aucune information n\'est disponible pour le moment', 30, '36.768857', '10.190315', '', ''),
(1009, 'LAKAGNIA', 'Aucune information n\'est disponible pour le moment', 10, '36.773551', '10.185834', '', ''),
(1009, 'LES MARTYRS', 'Aucune information n\'est disponible pour le moment', 10, '36.700345', '10.199283', '', ''),
(1009, 'MATHUL DE VILLE', 'Aucune information n\'est disponible pour le moment', 50, '36.765640', '10.184881', '', ''),
(1009, 'MONHOMME', 'Aucune information n\'est disponible pour le moment', 10, '36.780404', '10.173492', '', ''),
(2042, 'CITE EL FERDAOUAS ', 'Aucune information n\'est disponible pour le moment', 10, '33.850254', '10.113291', '', ''),
(2042, 'CITE EL SADIIK', 'Aucune information n\'est disponible pour le moment', 40, '36.815003', '10.132679', '', ''),
(2042, 'CITE EL TAHRIR SUP', 'Aucune information n\'est disponible pour le moment', 10, '36.820287', '10.130698', '', ''),
(2042, 'ETTAHRIR 1', 'Aucune information n\'est disponible pour le moment', 20, '36.824448', '10.128265', '', ''),
(2042, 'ETTAHRIR 2', 'Aucune information n\'est disponible pour le moment', 20, '36.835818', '10.124469', '', ''),
(2042, 'ETTAHRIR 3', 'Aucune information n\'est disponible pour le moment', 20, '36.835818', '10.124469', '', ''),
(2042, 'CITE DU JARDIN', 'Aucune information n\'est disponible pour le moment', 70, '36.793512', '10.136207', '', ''),
(1095, 'JAYARA', 'Aucune information n\'est disponible pour le moment', 80, '36.767856', '10.088624', '', ''),
(1095, 'SIDI HASSIN', 'Aucune information n\'est disponible pour le moment', 70, '0.000000', '0.000000', '', ''),
(1095, 'CITE 25 JUILLET', 'Aucune information n\'est disponible pour le moment', 60, '36.745422', '10.116138', '', ''),
(1095, 'CITE MRAD', 'Aucune information n\'est disponible pour le moment', 20, '36.830606', '10.123624', '', ''),
(1095, 'CITE 7 NOVEMBRE', 'Aucune information n\'est disponible pour le moment', 50, '36.850265', '9.838214', '', ''),
(1095, 'CITE EL BETOUMI', 'Aucune information n\'est disponible pour le moment', 70, '36.796235', '10.021548', '', ''),
(1095, 'CITE EL GAAFOURI', 'Aucune information n\'est disponible pour le moment', 10, '36.807609', '10.183521', '', ''),
(1095, 'BIRIN', 'Aucune information n\'est disponible pour le moment', 90, '36.771441', '10.112046', '', ''),
(1095, 'CITE EL MESTIRI', 'Aucune information n\'est disponible pour le moment', 20, '36.773800', '10.099000', '', ''),
(1095, 'BOREJ CHEKER', 'Aucune information n\'est disponible pour le moment', 10, '36.820935', '10.151474', '', ''),
(1095, 'CITE MOHAMED ALI', 'Aucune information n\'est disponible pour le moment', 40, '36.766128', '10.188748', '', ''),
(1095, 'CITE MRAD 1', 'Aucune information n\'est disponible pour le moment', 10, '36.703027', '10.419456', '', ''),
(1007, 'EL MELLASSINE', 'Aucune information n\'est disponible pour le moment', 70, '36.797504', '10.160028', '', ''),
(2072, 'CITE HELAL', 'Aucune information n\'est disponible pour le moment', 80, '36.779732', '10.167721', '', ''),
(1000, 'LA MADINA', 'Aucune information n\'est disponible pour le moment', 10, '36.798746', '10.170960', '', ''),
(1000, 'EL SABAGHINE', 'Aucune information n\'est disponible pour le moment', 40, '36.792644', '10.173350', '', ''),
(1000, 'SIDI BOUMANDIL', 'Aucune information n\'est disponible pour le moment', 40, '36.794323', '10.175805', '', ''),
(1006, 'EL TAWFIIK', 'Aucune information n\'est disponible pour le moment', 40, '29.974060', '31.273374', '', ''),
(1006, 'SOUK EL NHAS', 'Aucune information n\'est disponible pour le moment', 40, '29.974060', '31.273374', '', ''),
(1008, 'BAB JDID', 'Aucune information n\'est disponible pour le moment', 51.04, '36.792392', '10.171169', '', ''),
(1008, 'BAB MNARA', 'Aucune information n\'est disponible pour le moment', 61.02, '36.794061', '10.166564', '', ''),
(1008, 'EL ZRARIA', 'Aucune information n\'est disponible pour le moment', 61.02, '36.799647', '10.175532', '', ''),
(1008, 'SIDI ALIAZOUZ', 'Aucune information n\'est disponible pour le moment', 41.02, '36.797244', '10.173315', '', ''),
(1008, 'TOURBET EL BEY ', 'Aucune information n\'est disponible pour le moment', 71.02, '36.793644', '10.173007', '', ''),
(1019, 'BAB BNET', 'Aucune information n\'est disponible pour le moment', 40, '36.800695', '10.166306', '', ''),
(1059, 'EL HAFSIA', 'Aucune information n\'est disponible pour le moment', 10, '36.802217', '10.168856', '', ''),
(2081, 'ROUAD', 'Aucune information n\'est disponible pour le moment', 70, '36.867327', '10.182202', '', ''),
(2034, 'EL ZAZAHRA', 'Aucune information n\'est disponible pour le moment', 40, '36.858221', '10.183919', '', ''),
(1145, 'MOHAMDIA', 'Aucune information n\'est disponible pour le moment', 10, '33.676233', '-7.406233', '', ''),
(2040, 'RADES', 'Aucune information n\'est disponible pour le moment', 10, '36.768824', '10.277511', '', ''),
(2074, 'EL MOUROUJ', 'Aucune information n\'est disponible pour le moment', 70, '36.726449', '10.217561', '', ''),
(2082, 'FOUCHENA', 'Aucune information n\'est disponible pour le moment', 60, '36.699576', '10.160399', '', ''),
(2055, 'BIR EL BEY', 'Aucune information n\'est disponible pour le moment', 70, '36.712019', '10.379095', '', ''),
(2084, 'BOREJ CEDREIA', 'Aucune information n\'est disponible pour le moment', 10, '36.679042', '10.378045', '', ''),
(1164, 'HAMME CHATT', 'Aucune information n\'est disponible pour le moment', 10, '36.718366', '10.362790', '', ''),
(2050, 'HAMMAM LIF', 'Aucune information n\'est disponible pour le moment', 10, '36.723793', '10.340502', '', ''),
(2033, 'MEGRINE', 'Aucune information n\'est disponible pour le moment', 10, '36.777878', '10.219701', '', ''),
(2096, 'EL YASMINETTE', 'Aucune information n\'est disponible pour le moment', 10, '36.739915', '10.232252', '', ''),
(2063, 'NOUVELLE MEDINA', 'Aucune information n\'est disponible pour le moment', 10, '36.742824', '10.246985', '', ''),
(2090, 'MORNEG', 'Aucune information n\'est disponible pour le moment', 60, '36.684263', '10.288006', '', ''),
(2097, 'BOU MHEL EL BASSATINE', 'Aucune information n\'est disponible pour le moment', 70, '36.723975', '10.299651', '', ''),
(2013, 'BEN AROUS', 'Aucune information n\'est disponible pour le moment', 10, '36.754322', '10.226750', '', ''),
(2036, 'LA SOUKRA ', 'Aucune information n\'est disponible pour le moment', 10, '36.877305', '10.261769', '', ''),
(2035, 'CHARGUIA ', 'Aucune information n\'est disponible pour le moment', 10, '36.846750', '10.205354', '', ''),
(2021, 'OUED ELLIL', 'Aucune information n\'est disponible pour le moment', 70, '36.842083', '10.038732', '', ''),
(2010, 'LA MANOUBA', 'Aucune information n\'est disponible pour le moment', 70, '36.811326', '10.071909', '', ''),
(2011, 'DENDEN', 'Aucune information n\'est disponible pour le moment', 50, '36.811876', '10.108945', '', ''),
(1110, 'MORNAGUIA', 'Aucune information n\'est disponible pour le moment', 50, '36.752069', '10.011411', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `vectime`
--

CREATE TABLE `vectime` (
  `code` int(11) NOT NULL,
  `Nom_prenom` varchar(100) NOT NULL,
  `datee` varchar(100) NOT NULL,
  `reclamation` varchar(500) NOT NULL,
  `ville` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
