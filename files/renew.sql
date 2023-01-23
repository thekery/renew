-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2023 at 02:46 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `renew`
--

-- --------------------------------------------------------

--
-- Table structure for table `felhasznalok`
--

CREATE TABLE `felhasznalok` (
  `id` int(10) UNSIGNED NOT NULL,
  `csaladi_nev` varchar(45) NOT NULL DEFAULT '',
  `utonev` varchar(45) NOT NULL DEFAULT '',
  `bejelentkezes` varchar(12) NOT NULL DEFAULT '',
  `jelszo` varchar(40) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `jogosultsag` varchar(3) NOT NULL DEFAULT '_1_'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `felhasznalok`
--

INSERT INTO `felhasznalok` (`id`, `csaladi_nev`, `utonev`, `bejelentkezes`, `jelszo`, `email`, `jogosultsag`) VALUES
(1, 'Rendszer', 'Admin', 'Admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'admin@admin.hu', '__1'),
(2, 'Családi_2', 'Utónév_2', 'Login2', '6cf8efacae19431476020c1e2ebd2d8acca8f5c0', 'login2@test.hu', '_1_'),
(3, 'Családi_3', 'Utónév_3', 'Login3', 'df4d8ad070f0d1585e172a2150038df5cc6c891a', 'login3@test.hu', '_1_'),
(4, 'Családi_4', 'Utónév_4', 'Login4', 'b020c308c155d6bbd7eb7d27bd30c0573acbba5b', 'login4@test.hu', '_1_'),
(5, 'Családi_5', 'Utónév_5', 'Login5', '9ab1a4743b30b5e9c037e6a645f0cfee80fb41d4', 'login5@test.hu', '_1_'),
(6, 'Családi_6', 'Utónév_6', 'Login6', '7ca01f28594b1a06239b1d96fc716477d198470b', 'login6@test.hu', '_1_'),
(7, 'Családi_7', 'Utónév_7', 'Login7', '41ad7e5406d8f1af2deef2ade4753009976328f8', 'login7@test.hu', '_1_'),
(8, 'Családi_8', 'Utónév_8', 'Login8', '3a340fe3599746234ef89591e372d4dd8b590053', 'login8@test.hu', '_1_'),
(9, 'Családi_9', 'Utónév_9', 'Login9', 'c0298f7d314ecbc5651da5679a0a240833a88238', 'login9@test.hu', '_1_'),
(10, 'Családi_10', 'Utónév_10', 'Login10', 'a477427c183664b57f977661ac3167b64823f366', 'login10@test.hu', '_1_'),
(12, 'mester', 'teszt', 'mester', 'dda105fb3bbf774016f602803f996b6e893d8fa2', 'tesztmester@mail.hu', '_1_'),
(17, 'Gipsz', 'Jakab', 'jagszi', 'c8499454bada15f6d76bbf8cf133960f93f9b4eb', 'jagszi@gmail.com', '_1_');

-- --------------------------------------------------------

--
-- Table structure for table `gep`
--

CREATE TABLE `gep` (
  `id` int(10) UNSIGNED NOT NULL,
  `gyarto` varchar(20) NOT NULL,
  `tipus` varchar(40) NOT NULL,
  `kijelzo` float NOT NULL,
  `memoria` int(5) NOT NULL,
  `merevlemez` int(5) NOT NULL,
  `videovezerlo` varchar(60) NOT NULL,
  `ar` int(6) NOT NULL,
  `processzorid` varchar(3) NOT NULL,
  `oprendszerid` int(3) NOT NULL,
  `db` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gep`
--

INSERT INTO `gep` (`id`, `gyarto`, `tipus`, `kijelzo`, `memoria`, `merevlemez`, `videovezerlo`, `ar`, `processzorid`, `oprendszerid`, `db`) VALUES
(11, 'HP', 'COMPAQ 615 NX556EA', 15, 1024, 160, 'ATi Mobility Radeon HD3200 256MB', 95120, '1', 1, 0),
(12, 'ASUS', 'K51AC-SX001D', 15, 2048, 250, 'ATi Mobility Radeon HD3200 256MB', 101200, '1', 8, 0),
(13, 'HP', 'COMPAQ 615 NX560EA', 15, 2048, 320, 'ATi Mobility Radeon HD3200 256MB', 114800, '1', 4, 0),
(14, 'HP', 'Pavilion DV6-1110EH NL956EA', 15, 3072, 250, 'ATi Mobility Radeon HD4530 512MB', 167920, '1', 6, 3),
(15, 'ACER', 'Aspire 5536G-642G25MN', 15, 2048, 250, 'ATi Mobility Radeon HD4570 512MB', 111920, '1', 2, 3),
(16, 'ACER', 'Aspire 5536G-643G32MN', 15, 3072, 320, 'ATi Mobility Radeon HD4570 512MB', 117520, '1', 2, 2),
(17, 'MSI', 'X410-019HU', 14, 2048, 320, 'ATI Radeon Xpress 1250', 111920, '4', 6, 4),
(18, 'ASUS', 'F83T-VX005X', 14, 4096, 500, 'ATi Mobility Radeon HD4570 512MB', 115920, '4', 8, 1),
(19, 'MSI', 'VR630XL-004HU', 16, 2048, 320, 'NVIDIA GeForce Go 9100M-GS', 90800, '5', 1, 1),
(20, 'ASUS', 'N60DP-JX012V', 16, 4096, 500, 'ATi Mobility Radeon HD4670 512MB', 183920, '6', 10, 4),
(21, 'ASUS', 'K50AB-SX045D', 15, 4096, 500, 'ATi Mobility Radeon HD4570 512MB', 134320, '7', 8, 5),
(22, 'FUJITSU', 'Amilo Sa3650', 13, 2048, 250, 'ATi Mobility Radeon HD3200 256MB', 223920, '8', 6, 4),
(23, 'MSI', 'WIND U200-064HU', 12, 2048, 320, 'Intel Graphics X4500M / 256MB', 112400, '51', 6, 3),
(24, 'ACER', 'eMachine E525-901G16Mi', 15, 1024, 160, 'Intel Graphics 4500MHD ', 82800, '10', 2, 0),
(25, 'DELL', 'Inspiron 1545-106208 RED', 15, 1024, 160, 'Intel Graphics 4500MHD ', 103120, '10', 2, 3),
(26, 'TOSHIBA', 'Satellite L500-1EN', 15, 2048, 320, 'Intel Graphics X4500M / 256MB', 118800, '10', 1, 1),
(27, 'MSI', 'CR500X-012HU', 15, 2048, 320, 'NVIDIA GeForce Go 8200M 128MB', 94800, '10', 1, 1),
(28, 'MSI', 'CR500X-008HU', 15, 4096, 320, 'NVIDIA GeForce Go 8200M 128MB', 95920, '10', 1, 3),
(29, 'LENOVO', 'SL500 2746P5G', 15, 1024, 160, 'NVIDIA GeForce Go 9300M 256MB', 139920, '12', 4, 0),
(30, 'TOSHIBA', 'Satellite L300-24P', 15, 2048, 160, 'Intel Graphics 4500MHD', 98000, '12', 1, 0),
(31, 'MSI', 'VR603X-094HU', 15, 4096, 320, 'Intel Graphics 4500MHD', 99600, '12', 1, 5),
(32, 'HP', 'ProBook 4510s NX435EA', 15, 2048, 250, 'Intel Graphics 4500MHD', 111920, '12', 1, 1),
(33, 'FUJITSU', 'Esprimo V6535', 15, 1024, 160, 'Intel Graphics 4500MHD ', 95920, '13', 2, 4),
(34, 'LENOVO', 'IdeaPad G550L 59-026377', 15, 1024, 160, 'Intel Graphics 4500MHD', 94320, '14', 4, 5),
(35, 'HP', 'Presario CQ61-200SH NZ890EA', 15, 3072, 320, 'Intel Graphics 4500MHD', 127120, '14', 4, 3),
(36, 'ACER', 'eMachine E525-302G25Mi', 15, 2048, 250, 'Intel Graphics 4500MHD ', 89200, '14', 2, 0),
(37, 'HP', 'ProBook 4510s NX668EA', 15, 2048, 250, 'Intel Graphics 4500MHD ', 113520, '14', 2, 3),
(38, 'HP', 'ProBook 4310s NX580EA', 13, 1024, 160, 'Intel Graphics 4500MHD ', 119920, '14', 2, 3),
(39, 'ASUS', 'K50IJ-SX036L', 15, 2048, 250, 'Intel Graphics X4500M', 94320, '14', 8, 2),
(40, 'ASUS', 'K50IJ-SX153L', 15, 4096, 320, 'Intel Graphics X4500M / 256MB', 100720, '14', 8, 0),
(41, 'MSI', 'CR700X-023HU', 17, 3072, 320, 'NVIDIA GeForce Go 8200M 128MB', 108400, '14', 1, 0),
(42, 'DELL', 'Vostro V860-111696', 15, 1024, 250, 'Intel Graphics x3100', 79920, '17', 2, 3),
(43, 'HP', 'Mini 1199 NS528EA', 10, 1024, 80, 'Intel Graphics 950', 114000, '18', 12, 3),
(44, 'Asus', 'EEE PC 1001HA-BLK012X BLACK', 10, 1024, 160, 'Intel Graphics 4500MHD', 59920, '19', 12, 4),
(45, 'Asus', 'EEE PC 1001HA-WHI009X XP WHITE', 10, 1024, 160, 'Intel Graphics 4500MHD', 59920, '19', 12, 4),
(46, 'DELL', 'Inspiron 1011 104442 BLUE', 10, 1024, 160, 'Intel Graphics 500', 55920, '19', 2, 3),
(47, 'DELL', 'Inspiron 1011 104437 BLUE', 10, 1024, 160, 'Intel Graphics 500', 63992, '19', 12, 1),
(48, 'DELL', 'Inspiron 1011 104435 BLACK', 10, 1024, 160, 'Intel Graphics 500', 63992, '19', 12, 4),
(49, 'DELL', 'Inspiron 1011 105566 RED', 10, 1024, 160, 'Intel Graphics 500', 63992, '19', 12, 1),
(50, 'DELL', 'Inspiron 1011 104434 WHITE', 10, 1024, 160, 'Intel Graphics 500', 63992, '19', 12, 5),
(51, 'DELL', 'Inspiron 1011 104436 PINK', 10, 1024, 160, 'Intel Graphics 500', 63992, '19', 12, 0),
(52, 'DELL', 'Inspiron 1011 110960 GREEN', 10, 1024, 160, 'Intel Graphics 500', 63992, '19', 12, 5),
(53, 'DELL', 'Inspiron 1011 106751 BLACK', 10, 1024, 160, 'Intel Graphics 500', 87920, '19', 12, 3),
(54, 'ACER', 'ASPIRE ONE A150-A BLUE', 8, 1024, 120, 'Intel Graphics 950', 58320, '19', 2, 1),
(55, 'ACER', 'ASPIRE ONE D250-0Bw', 10, 1024, 160, 'Intel Graphics 950', 68720, '19', 12, 5),
(56, 'ACER', 'ASPIRE ONE D250-0Br', 10, 1024, 160, 'Intel Graphics 950', 68720, '19', 12, 3),
(57, 'MSI', 'WIND U100-1033HU', 10, 1024, 160, 'Intel Graphics 950', 71920, '19', 12, 2),
(58, 'HP', 'Mini 110c-1010SH NW642EA', 10, 1024, 160, 'Intel Graphics 950', 78320, '19', 12, 2),
(59, 'Asus', 'Eee PC 1005HA-WHI059X XP WHITE', 10, 1024, 160, 'Intel Graphics 950', 78320, '19', 12, 3),
(60, 'HP', 'Mini 731 NG660EA', 10, 1024, 80, 'Intel Graphics 950', 78320, '19', 12, 3),
(61, 'Asus', 'Eee PC 1005HA-BLK076X XP', 10, 1024, 160, 'Intel Graphics 950', 78400, '19', 12, 3),
(62, 'LENOVO', 'IdeaPad S10e NS9RLHL R', 10, 1024, 160, 'Intel Graphics 950', 79920, '19', 12, 3),
(63, 'LENOVO', 'IdeaPad S10e NS9RJHL', 10, 1024, 160, 'Intel Graphics 950', 79920, '19', 12, 5),
(64, 'Asus', 'Eee PC 1002HA-BLK022X XP B', 10, 1024, 160, 'Intel Graphics 950', 91999, '19', 12, 5),
(65, 'Asus', 'Eee PC 1004DN-BLK003X GR', 10, 1024, 120, 'Intel Graphics 4500MHD', 106700, '20', 12, 4),
(66, 'ACER', 'ASPIRE ONE D250-1Bw', 10, 1024, 160, 'Intel Graphics 950', 71120, '20', 12, 5),
(67, 'ACER', 'ASPIRE ONE D250-1B Blue', 10, 1024, 160, 'Intel Graphics 950', 71120, '20', 12, 3),
(68, 'MSI', 'WIND U123-013HU BLUE', 10, 1024, 160, 'Intel Graphics 950', 72400, '20', 12, 5),
(69, 'MSI', 'WIND U123-012HU RED', 10, 1024, 160, 'Intel Graphics 950', 72400, '20', 12, 1),
(70, 'LENOVO', 'IdeaPad S10-2 59-027093 POP ART', 10, 1024, 160, 'Intel Graphics 950', 73520, '20', 12, 3),
(71, 'LENOVO', 'IdeaPad S10-2 59-027094 FLOWER SEA', 10, 1024, 160, 'Intel Graphics 950', 73520, '20', 12, 5),
(72, 'LENOVO', 'IdeaPad S10-2 59-027108 SAILING', 10, 1024, 160, 'Intel Graphics 950', 73520, '20', 12, 0),
(73, 'MSI', 'WIND U123-014HU WHITE', 10, 1024, 160, 'Intel Graphics 950', 75600, '20', 12, 3),
(74, 'MSI', 'WIND U123-018HU GRAY', 10, 1024, 160, 'Intel Graphics 950', 75600, '20', 12, 4),
(75, 'LENOVO', 'IdeaPad S10-2 59-027036 WHITE', 10, 1024, 160, 'Intel Graphics 950', 77520, '20', 12, 3),
(76, 'Asus', 'Eee PC 1005HA-WHI058X XP W', 10, 1024, 160, 'Intel Graphics 950', 82320, '20', 12, 2),
(77, 'Asus', 'Eee PC 1005HA-BLK075X XP B', 10, 1024, 160, 'Intel Graphics 950', 82400, '20', 12, 3),
(78, 'Asus', 'Eee S101H-BRN073X XP BR', 10, 1024, 160, 'Intel Graphics 950', 87120, '20', 12, 4),
(79, 'Asus', 'Eee PC 1008HA-PIK012X XP P', 10, 1024, 160, 'Intel Graphics 950', 95920, '20', 12, 5),
(80, 'Asus', 'Eee PC 1008HA-RED008X XP R', 10, 1024, 160, 'Intel Graphics 950', 95920, '20', 12, 1),
(81, 'Asus', 'Eee PC 1008HA-BLU021X XP BL', 10, 1024, 160, 'Intel Graphics 950', 95920, '20', 12, 0),
(82, 'Asus', 'Eee PC 1008HA-WHI024X XP', 10, 1024, 160, 'Intel Graphics 950', 95920, '20', 12, 3),
(83, 'Asus', 'Eee PC 1008HA-BLU036X XP BL', 10, 1024, 160, 'Intel Graphics 950', 95920, '20', 12, 5),
(84, 'TOSHIBA', 'NB200-136', 10, 1024, 160, 'Intel GMA 950 / 256MB', 95920, '20', 11, 5),
(85, 'Asus', 'Eee PC 1101HA-BLK041X B', 11, 1024, 160, 'Intel Graphics 500', 96720, '21', 12, 4),
(86, 'Asus', 'Eee PC 1101HA-BLK028M B', 11, 2048, 250, 'Intel Graphics 500', 98000, '21', 11, 5),
(87, 'ACER', 'ASPIRE ONE 751h 52Bb BLACK', 11, 1024, 160, 'Intel Graphics 950', 81200, '21', 12, 2),
(88, 'ACER', 'ASPIRE ONE 751h 52Bb WHITE', 11, 1024, 160, 'Intel Graphics 950', 81200, '21', 12, 4),
(89, 'ACER', 'ASPIRE ONE 751h 52Bb RED', 11, 1024, 160, 'Intel Graphics 950', 81200, '21', 12, 5),
(90, 'ACER', 'ASPIRE ONE 751H PINK', 11, 1024, 160, 'Intel Graphics 950', 81200, '21', 12, 3),
(91, 'ACER', 'ASPIRE ONE 751h 52Bb BLUE', 11, 1024, 160, 'Intel Graphics 950', 81200, '21', 12, 3),
(92, 'Asus', 'Eee PC 1101HA-BLU018X BLUE', 11, 1024, 160, 'Intel Graphics 950', 96720, '21', 12, 1),
(93, 'Asus', 'Eee PC 1101HA-WHI040X W', 11, 1024, 160, 'Intel Graphics 950', 96720, '21', 12, 0),
(94, 'Asus', 'Eee PC 1101HA-WHI022M W', 11, 2048, 250, 'Intel Graphics 950', 98000, '21', 11, 4),
(95, 'DELL', 'Inspiron 1010 106752 BLACK', 10, 1024, 160, 'Intel Graphics 500', 87920, '22', 12, 0),
(96, 'ASUS', 'M51VR-AP184C', 15, 2048, 250, 'ATi Mobility Radeon HD3470 256MB', 140720, '23', 6, 4),
(97, 'FUJITSU', 'Esprimo V6535-104060', 15, 2048, 250, 'Intel Graphics 4500MHD', 110320, '23', 8, 5),
(98, 'ACER', 'Extensa 5630G-732G16N', 15, 2048, 160, 'NVIDIA GeForce Go 9300M 256MB', 127920, '24', 6, 0),
(99, 'DELL', 'Studio XPS 13-711 BLACK', 13, 4096, 320, 'NVIDIA GeForce Go 9500M-GS 256MB', 241520, '24', 6, 0),
(100, 'MSI', 'GX723X-271HU', 17, 4096, 500, 'NVIDIA GeForce GT130M 512B DDR3', 216720, '24', 1, 1),
(101, 'TOSHIBA', 'Satellite A300-1GN', 15, 3072, 320, 'ATi Mobility Radeon HD3650 512MB', 226800, '25', 6, 0),
(102, 'LENOVO', 'ThinkPad T500 NL34EHV', 15, 2048, 160, 'Intel Graphics 4500MHD', 241520, '25', 3, 1),
(103, 'LENOVO', 'ThinkPad T400 NM81UHV', 14, 2048, 160, 'Intel Graphics 4500MHD', 244720, '25', 3, 5),
(104, 'FUJITSU', 'Lifebook E8420', 15, 4096, 160, 'Intel Graphics 4500MHD', 268720, '25', 3, 5),
(105, 'FUJITSU', 'Lifebook S7220', 14, 4096, 320, 'Intel Graphics 4500MHD', 268720, '25', 3, 1),
(106, 'FUJITSU', 'Lifebook S6420', 13, 4096, 160, 'Intel Graphics 4500MHD', 279920, '25', 3, 3),
(107, 'LENOVO', 'ThinkPad T500 NL346HV', 15, 2048, 320, 'Intel Graphics 4500MHD', 279920, '25', 3, 3),
(108, 'LENOVO', 'ThinkPad T500 NJ253HV', 15, 2048, 160, 'ATi Mobility Radeon HD3650', 279920, '26', 3, 3),
(109, 'DELL', 'Studio XPS 16-713 BLACK', 16, 4096, 500, 'ATi Mobility Radeon HD3670 512MB', 266320, '26', 6, 5),
(110, 'DELL', 'Inspiron 1545-106226 Red', 15, 2048, 320, 'ATi Mobility Radeon HD4330 256MB', 169200, '26', 6, 0),
(111, 'DELL', 'Inspiron 1545-106227 Blue', 15, 2048, 320, 'ATi Mobility Radeon HD4330 256MB', 169200, '26', 6, 5),
(112, 'DELL', 'Studio 1555-110573 RED', 15, 2048, 500, 'ATi Mobility Radeon HD4570 512MB', 192720, '26', 6, 2),
(113, 'DELL', 'Studio 1555-110574 BLACK', 15, 2048, 500, 'ATi Mobility Radeon HD4570 512MB', 192720, '26', 6, 1),
(114, 'DELL', 'Studio 1555-110575 BLUE', 15, 2048, 500, 'ATi Mobility Radeon HD4570 512MB', 192720, '26', 6, 3),
(115, 'TOSHIBA', 'Satellite P300-225', 17, 4096, 500, 'ATi Mobility Radeon HD4650 1024MB', 234800, '26', 6, 3),
(116, 'DELL', 'Studio XPS M1640-106257 B', 15, 4096, 500, 'ATi Mobility Radeon HD4670 512MB', 268720, '26', 6, 2),
(117, 'DELL', 'Studio XPS M1640-106259 R', 15, 4096, 500, 'ATi Mobility Radeon HD4670 512MB', 268720, '26', 6, 5),
(118, 'LENOVO', 'ThinkPad T500 NJ42RHV', 15, 2048, 160, 'Intel Graphics 4500MHD', 255920, '26', 3, 1),
(119, 'FUJITSU', 'Lifebook S7220-1', 14, 4096, 320, 'Intel Graphics 4500MHD', 279920, '26', 3, 3),
(120, 'TOSHIBA', 'Tecra M10-14Z', 14, 3072, 250, 'NVIDIA Quadro NVS 150M 256MB', 271920, '26', 3, 3),
(121, 'DELL', 'Studio XPS M1340-106255 B', 13, 4096, 500, 'NVIDIA GeForce Go 9400M-GS 256MB', 251920, '26', 6, 5),
(122, 'DELL', 'Studio XPS M1340-106256 R', 13, 4096, 500, 'NVIDIA GeForce Go 9400M-GS 256MB', 251920, '26', 6, 4),
(123, 'ASUS', 'N80VN-GP023C', 14, 4096, 320, 'NVIDIA GeForce 9650M GT 1GB', 215920, '26', 6, 4),
(124, 'ASUS', 'U50VG-XX162V', 15, 4096, 500, 'NVIDIA GeForce G105/512MB', 219120, '27', 10, 0),
(125, 'TOSHIBA', 'Qosmio X300-14V', 17, 4096, 320, 'NVIDIA GeForce Go 9700M-GT 512MB', 399920, '27', 6, 4),
(126, 'ASUS', 'N71VG-TY046V', 17, 4096, 640, 'NVIDIA GeForce GT220M 1GB', 243920, '27', 10, 2),
(127, 'ASUS', 'N61VN-JX069V', 16, 4096, 500, 'NVIDIA GeForce GT240M 1GB', 247920, '27', 10, 4),
(128, 'MSI', 'GT628X-447HU', 15, 4096, 500, 'NVIDIA GeForce GTS 160M', 258000, '27', 1, 3),
(129, 'HP', 'EliteBook 2530p FU431EA', 12, 2048, 120, 'Intel Graphics 4500MHD', 379920, '28', 3, 0),
(130, 'ThinkPad', 'X200 NRRFWHV', 12, 2048, 250, 'Intel Graphics 4500MHD', 387120, '28', 3, 2),
(131, 'ACER', 'Timeline 3810TG-734G50N', 13, 4096, 500, 'ATi Mobility Radeon HD4330 256MB', 174320, '29', 6, 5),
(132, 'ACER', 'Aspire Timeline 4810TG-733G25MN', 14, 3072, 250, 'ATi Mobility Radeon HD4330 512MB', 164720, '29', 10, 3),
(133, 'ACER', 'TravelMate 8471-733G25MN', 14, 3072, 250, 'Intel Graphics 4500MHD', 167920, '29', 3, 2),
(134, 'ASUS', 'UL20A-2X022V', 12, 3072, 320, 'Intel Graphics X4500M / 256MB', 146800, '29', 10, 3),
(135, 'ASUS', 'UL30A-QX164V', 13, 3072, 320, 'Intel Graphics X4500M / 256MB', 148720, '29', 10, 3),
(136, 'ASUS', 'UL50AG-XX007V', 15, 4096, 500, 'Intel Graphics X4500M / 256MB', 174320, '29', 10, 3),
(137, 'ASUS', 'UX30-QX096V', 13, 3072, 320, 'Intel Graphics X4500M / 256MB', 177520, '29', 10, 1),
(138, 'ASUS', 'UX30-QX085V', 13, 4096, 500, 'Intel Graphics X4500M / 256MB', 184720, '29', 10, 0),
(139, 'ASUS', 'UL80AG-WX011V', 14, 3072, 320, 'Intel GMA 950 / 256MB', 162320, '29', 10, 5),
(140, 'ASUS', 'UX50V-XX042V', 15, 4096, 500, 'NVIDIA GeForce G105/512MB', 203920, '29', 10, 2),
(141, 'ASUS', 'UL50VT-XX021V', 15, 4096, 500, 'NVIDIA GeForce GT210M 512GB', 191120, '29', 10, 2),
(142, 'TOSHIBA', 'Portégé A600-139', 12, 2048, 250, 'Intel Graphics 4500MHD', 271920, '30', 3, 5),
(143, 'ACER', 'Timeline 3810TG-944G50N', 13, 4096, 500, 'ATi Mobility Radeon HD4330 256MB', 194800, '31', 6, 0),
(144, 'ACER', 'Timeline 3810T-944G32N', 13, 4096, 320, 'Intel Graphics 4500MHD', 168720, '31', 6, 2),
(145, 'ACER', 'Aspire Timeline 4810T-943G32MN', 14, 3072, 320, 'Intel Graphics 4500MHD', 189200, '31', 6, 3),
(146, 'ThinkPad', 'X301 NRFC1HV', 13, 2048, 120, 'Intel Graphics 4500MHD', 366000, '31', 3, 0),
(147, 'FUJITSU', 'Esprimo V6515-104062', 15, 2048, 250, 'NVIDIA GeForce Go 8200M 128MB', 123920, '32', 8, 1),
(148, 'FUJITSU', 'Esprimo V5535 02', 15, 2048, 160, 'SiS Mirage 3+ 256M', 103920, '34', 1, 2),
(149, 'HP', 'ProBook 4510s NX621EA', 15, 3072, 320, 'ATi Mobility Radeon HD4330 256MB', 146320, '34', 1, 0),
(150, 'HP', 'ProBook 4510s NX624EA', 15, 3072, 320, 'ATi Mobility Radeon HD4330 256MB', 157520, '34', 4, 1),
(151, 'HP', 'ProBook 4710s NX628EA', 17, 3072, 320, 'ATi Mobility Radeon HD4330 512MB', 159920, '34', 1, 4),
(152, 'HP', 'COMPAQ 610 NX549EA', 15, 1024, 160, 'Intel Graphics x3100', 104990, '34', 1, 1),
(153, 'HP', 'COMPAQ 610 NX550EA', 15, 2048, 320, 'Intel Graphics x3100', 121520, '34', 1, 3),
(154, 'HP', 'COMPAQ 610 NX552EA', 15, 2048, 320, 'Intel Graphics x3100', 125200, '34', 4, 0),
(155, 'DELL', 'Vostro A860-111877', 15, 2048, 250, 'Intel Graphics x3100 ', 94320, '34', 2, 0),
(156, 'FUJITSU', 'Esprimo V6555 MPWE5HU', 15, 2048, 250, 'NVIDIA GeForce Go 8200M 128MB', 108000, '34', 2, 2),
(157, 'MSI', 'VX600X-053HU', 15, 4096, 500, 'ATi Mobility Radeon HD3410 256MB', 136400, '35', 1, 0),
(158, 'FUJITSU', 'Esprimo V6545-104064', 15, 2048, 250, 'ATi Mobility Radeon HD3450 256MB', 143920, '35', 2, 4),
(159, 'FUJITSU', 'Amilo PI 3525', 15, 2048, 320, 'Intel Graphics 4500MHD', 111111, '35', 8, 3),
(160, 'FUJITSU', 'Esprimo V6505-104063', 15, 2048, 250, 'Intel Graphics 4500MHD ', 135920, '35', 2, 0),
(161, 'MSI', 'CX600X-042HU', 16, 4096, 500, 'ATi Mobility Radeon HD4330 256MB', 149600, '36', 8, 1),
(162, 'DELL', 'Inspiron 1545-699 BLUE', 15, 4096, 320, 'ATi Mobility Radeon HD4330 256MB', 159920, '36', 6, 2),
(163, 'DELL', 'Studio 1555-635 RED', 15, 4096, 500, 'ATi Mobility Radeon HD4570 512MB', 176720, '36', 1, 5),
(164, 'DELL', 'Studio 1555-106249 BLUE', 15, 4096, 500, 'ATi Mobility Radeon HD4570 512MB', 190320, '36', 6, 3),
(165, 'ASUS', 'F6A-3P193X', 13, 3072, 250, 'Intel Graphics X4500M / 256MB', 159920, '36', 8, 2),
(166, 'ASUS', 'K50IN-SX024L', 15, 4096, 250, 'NVIDIA GeForce G102M/512MB', 135920, '36', 8, 1),
(167, 'DELL', 'Studio XPS M1340-110934 B', 13, 2048, 320, 'NVIDIA GeForce Go 9400M-GS 256MB', 201520, '36', 6, 5),
(168, 'HP', 'ProBook 4510s VC191EA', 15, 3072, 500, 'ATi Mobility Radeon HD4330 256MB', 187600, '37', 6, 5),
(169, 'HP', 'ProBook 4510s NA921EA', 15, 2048, 250, 'Intel Graphics 4500MHD', 203920, '37', 3, 2),
(170, 'DELL', 'Inspiron 1545-111827 Red', 15, 4096, 320, 'ATi Mobility Radeon HD4330 512MB', 139120, '38', 2, 2),
(171, 'DELL', 'Inspiron 1545-111826 Black', 15, 4096, 320, 'ATi Mobility Radeon HD4330 512MB', 139120, '38', 2, 0),
(172, 'DELL', 'Inspiron 1545-111828 Blue', 15, 4096, 320, 'ATi Mobility Radeon HD4330 512MB', 139120, '38', 2, 5),
(173, 'DELL', 'Inspiron 1545-111829 White', 15, 4096, 320, 'ATi Mobility Radeon HD4330 512MB', 139120, '38', 2, 0),
(174, 'DELL', 'Inspiron 1545-111831 Purple', 15, 4096, 320, 'ATi Mobility Radeon HD4330 512MB', 139120, '38', 2, 0),
(175, 'MSI', 'EX627X-400HU', 16, 4096, 500, 'ATi Mobility Radeon HD4570 512MB', 164720, '38', 1, 5),
(176, 'ASUS', 'U80V-WX101V', 14, 4096, 500, 'ATi Mobility Radeon HD4570 512MB', 199120, '38', 10, 3),
(177, 'LENOVO', 'IdeaPad G550A 59-026421', 15, 3072, 320, 'Intel Graphics 4500MHD', 135920, '38', 1, 5),
(178, 'ACER', 'Aspire 5738-663G32MN Linux', 15, 3072, 320, 'Intel Graphics 4500MHD ', 123920, '38', 2, 2),
(179, 'ASUS', 'K50IJ-SX152L', 15, 4096, 320, 'Intel Graphics X4500M / 256MB', 119920, '38', 8, 0),
(180, 'ASUS', 'K50IN-SX155L', 15, 3072, 250, 'NVIDIA GeForce G102M/512MB', 126320, '38', 2, 4),
(181, 'ASUS', 'K50IN-SX157L', 15, 4096, 500, 'NVIDIA GeForce G102M/512MB', 131920, '38', 2, 2),
(182, 'ASUS', 'U50VG-XX156V', 15, 4096, 500, 'NVIDIA GeForce G105/512MB', 195120, '38', 10, 1),
(183, 'MSI', 'EX723X-079HU', 17, 4096, 500, 'NVIDIA GeForce Go 9300M 256MB', 173520, '38', 1, 0),
(184, 'TOSHIBA', 'Satellite U500-17E', 13, 2048, 320, 'NVIDIA GeForce GT210M 512GB', 166320, '38', 10, 2),
(185, 'ASUS', 'F50SF-JX061X', 16, 4096, 500, 'NVIDIA GeForce GT220M 1GB', 167680, '38', 8, 2),
(186, 'ASUS', 'N61VG-JX070V', 16, 4096, 500, 'NVIDIA GeForce GT220M 1GB', 207920, '38', 10, 3),
(187, 'TOSHIBA', 'Satellite A500-1DN', 16, 4096, 320, 'NVIDIA GeForce GT230M 1GB', 185520, '38', 10, 2),
(188, 'LENOVO', 'SL500 NRJEBHV', 15, 2048, 320, 'Intel Graphics 4500MHD', 169520, '39', 4, 3),
(189, 'FUJITSU', 'Esprimo V5505 02', 15, 2048, 250, 'Intel Graphics x3100', 135555, '40', 4, 4),
(190, 'TOSHIBA', 'Satellite A200-23W', 15, 2048, 400, 'ATi Mobility Radeon HD2600 512MB', 175920, '41', 6, 0),
(191, 'FUJITSU', 'Esprimo D9500-101571', 15, 2048, 160, 'Intel Graphics x3100', 155920, '42', 3, 2),
(192, 'FUJITSU', 'Esprimo D9500-101570', 15, 4096, 160, 'Intel Graphics x3100', 179120, '43', 3, 3),
(193, 'Lenovo', 'ThinkPad W500 NRA3KHV', 15, 4096, 200, 'Intel Graphics 4500MHD', 380720, '44', 3, 0),
(194, 'ACER', 'Timeline 3810T-352G25N', 13, 2048, 250, 'Intel Graphics 4500MHD', 130320, '45', 6, 1),
(195, 'MSI', 'X400-048HU', 14, 2048, 500, 'Intel Graphics 4500MHD', 143920, '45', 6, 4),
(196, 'ASUS', 'UX30-QX032C', 13, 3072, 500, 'Intel Graphics X4500M / 256MB', 198800, '45', 6, 5),
(197, 'ASUS', 'U20A-2P027C', 12, 4096, 500, 'Intel Graphics X4500M / 256MB', 207920, '45', 6, 0),
(198, 'ASUS', 'UX50V-XX007C', 15, 4096, 500, 'NVIDIA GeForce G105/512MB', 244720, '45', 6, 2),
(199, 'ACER', 'Timeline 3810TZ-414G32N', 13, 4096, 320, 'Intel Graphics 4500MHD', 138320, '46', 9, 3),
(200, 'ACER', 'Timeline 5810TZ-414G32MN Vista', 15, 4096, 320, 'Intel Graphics 4500MHD', 142320, '46', 7, 3),
(201, 'ACER', 'Timeline 5810TZ-414G32MN Win7', 15, 4096, 320, 'Intel Graphics 4500MHD', 146320, '46', 9, 3),
(202, 'ACER', 'Aspire Timeline 4810TZ-413G25MN', 14, 3072, 250, 'Intel Graphics 4500MHD', 150000, '46', 10, 5),
(203, 'TOSHIBA', 'Satellite T130-10G', 13, 4096, 320, 'Intel Graphics X4500M / 256MB', 151920, '46', 10, 5),
(204, 'FUJITSU', 'Esprimo V6545', 15, 2048, 250, 'ATi Mobility Radeon HD3450 256MB', 110320, '23', 2, 1),
(205, 'TOSHIBA', 'Satellite A300-22Z', 15, 2048, 320, 'ATi Mobility Radeon HD3470 256MB', 126000, '23', 8, 5),
(206, 'FUJITSU', 'Esprimo V6505', 15, 2048, 250, 'Intel Graphics 4500MHD ', 111111, '23', 2, 2),
(207, 'FUJITSU', 'Amilo PI 3540-104877', 15, 3072, 250, 'NVIDIA GeForce Go 9300M 256MB', 115920, '23', 8, 5),
(208, 'MSI', 'VX600X-206HU', 15, 4096, 320, 'ATi Mobility Radeon HD3410 256MB', 121520, '48', 1, 4),
(209, 'TOSHIBA', 'Satellite A300-29K', 15, 2048, 320, 'ATi Mobility Radeon HD3470 256MB', 125520, '48', 8, 3),
(210, 'TOSHIBA', 'Satellite A300-22W', 15, 3072, 320, 'ATi Mobility Radeon HD3470 256MB', 131920, '48', 6, 5),
(211, 'TOSHIBA', 'Satellite A300-29J', 15, 4096, 320, 'ATi Mobility Radeon HD3470 256MB', 135120, '48', 6, 3),
(212, 'MSI', 'CX600X-018HU', 16, 4096, 320, 'ATi Mobility Radeon HD4330 256MB', 114800, '48', 8, 0),
(213, 'MSI', 'CX700X-013HU', 17, 4096, 320, 'ATi Mobility Radeon HD4330 256MB', 133520, '48', 8, 1),
(214, 'HP', 'Pavilion DV6-1120EH NM629EA', 15, 3072, 250, 'ATi Mobility Radeon HD4530 512MB', 183992, '48', 6, 3),
(215, 'ASUS', 'F83SE-VX039', 14, 4096, 500, 'ATi Mobility Radeon HD4570 512MB', 138320, '48', 8, 5),
(216, 'TOSHIBA', 'Satellite L300-2CE', 15, 2048, 250, 'Intel Graphics 4500MHD', 103600, '48', 8, 1),
(217, 'FUJITSU', 'Esprimo V6535-104061', 15, 4096, 320, 'Intel Graphics 4500MHD', 118320, '48', 8, 3),
(218, 'FUJITSU', 'Amilo Li 3910-UW5HU', 18, 4096, 320, 'Intel Graphics 4500MHD', 123920, '48', 8, 3),
(219, 'ASUS', 'K50IJ-SX025L', 15, 4096, 320, 'Intel Graphics 4500MHD', 125520, '48', 8, 3),
(220, 'HP', 'Presario CQ61-110eh NT353EA', 15, 2048, 250, 'Intel Graphics 4500MHD', 131920, '48', 4, 4),
(221, 'HP', 'ProBook 4510s VC179ES', 15, 3072, 320, 'Intel Graphics 4500MHD', 134320, '48', 1, 3),
(222, 'ASUS', 'F6A-3P154X', 13, 3072, 250, 'Intel Graphics X4500M / 256MB', 143120, '48', 8, 4),
(223, 'ASUS', 'K50IN-SX011L', 15, 4096, 320, 'NVIDIA GeForce G102M/512MB', 129520, '48', 8, 5),
(224, 'HP', 'Presario CQ61-120eh NL930EA', 15, 3072, 250, 'NVIDIA GeForce G103/512MB', 148720, '48', 4, 0),
(225, 'ACER', 'Aspire 5738ZG-422G25MN', 15, 2048, 250, 'NVIDIA GeForce G105/512MB', 123120, '48', 4, 4),
(226, 'MSI', 'EX720X-058HU', 17, 4096, 500, 'NVIDIA GeForce Go 9300M 256MB', 150320, '48', 1, 0),
(227, 'MSI', 'CX600X-072HU', 16, 4096, 500, 'ATi Mobility Radeon HD4330 256MB', 119120, '49', 8, 4),
(228, 'DELL', 'Inspiron 1545-110961 Red', 15, 2048, 320, 'ATi Mobility Radeon HD4330 512MB', 134320, '49', 6, 3),
(229, 'DELL', 'Inspiron 1545-110963 Blue', 15, 2048, 320, 'ATi Mobility Radeon HD4330 512MB', 134320, '49', 6, 0),
(230, 'DELL', 'Inspiron 1545-110964 White', 15, 2048, 320, 'ATi Mobility Radeon HD4330 512MB', 134320, '49', 6, 4),
(231, 'DELL', 'Inspiron 1545-110962 Black', 15, 2048, 320, 'ATi Mobility Radeon HD4330 512MB', 134320, '49', 6, 3),
(232, 'ASUS', 'F83SE-VX057D', 14, 4096, 500, 'ATi Mobility Radeon HD4570 512MB', 124720, '49', 8, 2),
(233, 'ACER', 'Aspire 5738ZG-432G25MN', 15, 2048, 250, 'ATi Mobility Radeon HD4570 512MB', 126320, '49', 5, 5),
(234, 'LENOVO', 'IdeaPad G550L 59-026359', 15, 3072, 320, 'Intel Graphics 4500MHD', 103920, '49', 1, 0),
(235, 'TOSHIBA', 'Satellite L300-2C5', 15, 2048, 250, 'Intel Graphics 4500MHD', 110320, '49', 6, 3),
(236, 'ACER', 'Aspire 5738Z-434G32MN', 15, 4096, 320, 'Intel Graphics 4500MHD', 126320, '49', 6, 3),
(237, 'ACER', 'Extensa 5635Z-431G16MN', 15, 1024, 160, 'Intel Graphics 4500MHD ', 94320, '49', 2, 1),
(238, 'TOSHIBA', 'Satellite L500-1EQ', 15, 2048, 320, 'Intel Graphics X4500M / 256MB', 103920, '49', 1, 1),
(239, 'ASUS', 'K50IJ-SX148L', 15, 2048, 250, 'Intel Graphics X4500M / 256MB', 103920, '49', 8, 1),
(240, 'TOSHIBA', 'Satellite L500-1GE', 15, 4096, 320, 'Intel Graphics X4500M / 256MB', 103920, '49', 1, 4),
(241, 'ASUS', 'K50IJ-SX151L', 15, 3072, 250, 'Intel Graphics X4500M / 256MB', 110320, '49', 8, 5),
(242, 'ASUS', 'K50IJ-SX151V', 15, 3072, 250, 'Intel Graphics X4500M / 256MB', 119920, '49', 9, 0),
(243, 'ASUS', 'K50IJ-SX124L', 15, 4096, 320, 'Intel Graphics X4500M / 256MB', 120400, '49', 8, 1),
(244, 'ASUS', 'K70IJ-TY042L', 17, 4096, 320, 'Intel Graphics X4500M / 256MB', 131920, '49', 8, 1),
(245, 'ASUS', 'K50IN-SX153L', 15, 3072, 250, 'NVIDIA GeForce G102M/512MB', 111920, '49', 2, 2),
(246, 'ASUS', 'K50IN-SX154L', 15, 4096, 320, 'NVIDIA GeForce G102M/512MB', 115920, '49', 2, 5),
(247, 'ASUS', 'K50IN-SX153V', 15, 3072, 250, 'NVIDIA GeForce G102M/512MB', 127920, '49', 9, 4),
(248, 'ASUS', 'K70IO-TY073L', 17, 4096, 320, 'NVIDIA GeForce GT120M 1GB', 138320, '49', 8, 2),
(249, 'ASUS', 'K70IO-TY068V', 17, 4096, 250, 'NVIDIA GeForce GT120M 1GB', 156720, '49', 9, 0),
(250, 'ASUS', 'K61IC-JX018D', 15, 4096, 500, 'NVIDIA GeForce GT220M 1GB', 143920, '49', 8, 1),
(251, 'LENOVO', 'U350 BLACK', 13, 2048, 250, 'Intel Graphics 4500MHD', 111920, '51', 4, 0),
(252, 'MSI', 'X340-037HU', 13, 2048, 320, 'Intel Graphics 4500MHD', 135920, '51', 6, 5),
(253, 'LENOVO', 'IdeaPad S12 Black', 12, 1024, 160, 'VIA S3 Chrome 9', 97520, '52', 12, 4),
(254, 'LENOVO', 'IdeaPad S12 White', 12, 1024, 160, 'VIA S3 Chrome 9', 97520, '52', 12, 4),
(255, 'ASUS', 'K51AC-SX037D', 15, 2048, 250, 'ATi Mobility Radeon HD3200 256MB', 98320, '53', 8, 1),
(256, 'ASUS', 'K50AB-SX073D', 15, 3072, 250, 'ATi Mobility Radeon HD4570 512MB', 107120, '53', 8, 5);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `url` varchar(30) NOT NULL,
  `nev` varchar(30) NOT NULL,
  `szulo` varchar(30) NOT NULL,
  `jogosultsag` varchar(3) NOT NULL,
  `sorrend` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`url`, `nev`, `szulo`, `jogosultsag`, `sorrend`) VALUES
('nyitolap', 'Nyitólap', '', '111', 10),
('rolunk', 'Rólunk', '', '111', 20),
('felhasznalok', 'Felhasználók', 'admin', '001', 85),
('alapinfok', 'Alapinfók', 'rolunk', '111', 40),
('belepes', 'Belépés', '', '100', 60),
('regisztracio', 'Regisztráció', '', '100', 65),
('kilepes', 'Kilépés', '', '011', 70),
('admin', 'Admin', '', '001', 80),
('kereses', 'Keresés', '', '011', 35),
('raktar', 'Raktár', 'admin', '001', 90);

-- --------------------------------------------------------

--
-- Table structure for table `oprendszer`
--

CREATE TABLE `oprendszer` (
  `id` int(10) UNSIGNED NOT NULL,
  `nev` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oprendszer`
--

INSERT INTO `oprendszer` (`id`, `nev`) VALUES
(5, 'Microsoft Vista Home Premium\r\n'),
(4, 'Microsoft Vista Home Basic HU\r\n'),
(3, 'Microsoft Vista Business\r\n'),
(2, 'Linux\r\n'),
(1, 'FreeDOS\r\n'),
(6, 'Microsoft Vista Home Premium HU\r\n'),
(7, 'Microsoft Vista Home Premium HU notebook'),
(8, 'nincs\r\n'),
(9, 'Windows 7 Home Premium HU 32Bit\r\n'),
(10, 'Windows 7 Home Premium HU 64Bit\r\n'),
(11, 'Windows 7 Starter Edition HU\r\n'),
(12, 'Windows XP Home Magyar\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `processzor`
--

CREATE TABLE `processzor` (
  `id` int(10) UNSIGNED NOT NULL,
  `proci_gyarto` varchar(12) NOT NULL,
  `proci_tipus` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `processzor`
--

INSERT INTO `processzor` (`id`, `proci_gyarto`, `proci_tipus`) VALUES
(1, 'AMD', 'Athlon 64 X2 QL64\r\n'),
(4, 'AMD', 'Athlon TM Neo MV-40\r\n'),
(5, 'AMD', 'Mobil Sempron SI-40\r\n'),
(6, 'AMD', 'Turion64 X2 TL60\r\n'),
(7, 'AMD', 'Turion64 X2 TL64\r\n'),
(8, 'AMD', 'Turion64 X2 TL62\r\n'),
(10, 'Intel', 'Celeron 900\r\n'),
(12, 'Intel', 'Celeron Dual-Core T1600\r\n'),
(13, 'Intel', 'Celeron Dual-Core T1700\r\n'),
(14, 'Intel', 'Celeron Dual-Core T3000\r\n'),
(17, 'Intel', 'Celeron M 560\r\n'),
(18, 'Intel', 'Centrino Atom 1600\r\n'),
(19, 'Intel', 'Centrino Atom N270\r\n'),
(20, 'Intel', 'Centrino Atom N280\r\n'),
(21, 'Intel', 'Centrino Atom Z520\r\n'),
(22, 'Intel', 'Centrino Atom Z530\r\n'),
(23, 'Intel', 'Core Duo T3400\r\n'),
(24, 'Intel', 'Core2 Duo P7350\r\n'),
(25, 'Intel', 'Core2 Duo P8400\r\n'),
(26, 'Intel', 'Core2 Duo P8600\r\n'),
(27, 'Intel', 'Core2 Duo P8700\r\n'),
(28, 'Intel', 'Core2 Duo SL9400\r\n'),
(29, 'Intel', 'Core2 Duo SU7300\r\n'),
(30, 'Intel', 'Core2 Duo SU9300\r\n'),
(31, 'Intel', 'Core2 Duo SU9400\r\n'),
(32, 'Intel', 'Core2 Duo T5670\r\n'),
(34, 'Intel', 'Core2 Duo T5870\r\n'),
(35, 'Intel', 'Core2 Duo T6400\r\n'),
(36, 'Intel', 'Core2 Duo T6500\r\n'),
(37, 'Intel', 'Core2 Duo T6570\r\n'),
(38, 'Intel', 'Core2 Duo T6600\r\n'),
(39, 'Intel', 'Core2 Duo T6670\r\n'),
(40, 'Intel', 'Core2 Duo T7300\r\n'),
(41, 'Intel', 'Core2 Duo T7500\r\n'),
(42, 'Intel', 'Core2 Duo T8300\r\n'),
(43, 'Intel', 'Core2 Duo T9300\r\n'),
(44, 'Intel', 'Core2 Duo T9400\r\n'),
(45, 'Intel', 'Core2 Solo SU3500 ULV\r\n'),
(46, 'Intel', 'Pentium Dual Core SU4100\r\n'),
(48, 'Intel', 'Pentium dual-core T4200\r\n'),
(49, 'Intel', 'Pentium dual-core T4300\r\n'),
(51, 'Intel', 'Celeron M ULV723\r\n'),
(52, 'VIA', 'Via Nano ULV 2250\r\n'),
(53, 'AMD', 'Athlon 64 X2 QL65\r\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `felhasznalok`
--
ALTER TABLE `felhasznalok`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gep`
--
ALTER TABLE `gep`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`url`);

--
-- Indexes for table `oprendszer`
--
ALTER TABLE `oprendszer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `processzor`
--
ALTER TABLE `processzor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `felhasznalok`
--
ALTER TABLE `felhasznalok`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `gep`
--
ALTER TABLE `gep`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;

--
-- AUTO_INCREMENT for table `oprendszer`
--
ALTER TABLE `oprendszer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
