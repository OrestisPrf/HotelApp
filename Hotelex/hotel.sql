-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2024 at 03:12 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE `administrator` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `book_id` int(8) DEFAULT NULL,
  `check_in` varchar(30) DEFAULT NULL,
  `check_out` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`book_id`, `check_in`, `check_out`) VALUES
(1, '2/8/2023', '2/22/2024'),
(2, '3/4/2023', '2/5/2024'),
(3, '2/26/2023', NULL),
(4, '3/3/2023', NULL),
(5, '2/7/2023', NULL),
(6, '2/23/2023', '2/28/2024'),
(7, '2/9/2023', NULL),
(8, '3/11/2023', '2/6/2024'),
(9, '2/14/2023', '2/26/2024'),
(10, '2/25/2023', '2/10/2024'),
(11, '3/4/2023', '2/17/2024'),
(12, '3/2/2023', '2/11/2024'),
(13, '3/1/2023', '2/26/2024'),
(14, '2/11/2023', NULL),
(15, '2/5/2023', '2/7/2024'),
(16, '3/13/2023', '2/23/2024'),
(17, '2/28/2023', '2/18/2024'),
(18, '2/17/2023', '2/24/2024'),
(19, '2/20/2023', NULL),
(20, '2/8/2023', '2/16/2024'),
(21, '2/27/2023', NULL),
(22, '3/11/2023', NULL),
(23, '3/14/2023', '2/15/2024'),
(24, '2/24/2023', '2/5/2024'),
(25, '2/21/2023', NULL),
(26, '2/28/2023', '2/15/2024'),
(27, '2/16/2023', '2/14/2024'),
(28, '3/8/2023', '2/10/2024'),
(29, '2/11/2023', NULL),
(30, '2/5/2023', '2/22/2024'),
(31, '2/20/2023', NULL),
(32, '2/21/2023', '2/16/2024'),
(33, '3/11/2023', '2/23/2024'),
(34, '2/21/2023', NULL),
(35, '2/5/2023', '2/7/2024'),
(36, '3/4/2023', '2/20/2024'),
(37, '2/14/2023', '2/28/2024'),
(38, '2/26/2023', NULL),
(39, '2/28/2023', '2/21/2024'),
(40, '3/9/2023', '2/5/2024'),
(41, '2/12/2023', '2/28/2024'),
(42, '2/8/2023', '2/20/2024'),
(43, '2/7/2023', NULL),
(44, '2/5/2023', '2/10/2024'),
(45, '3/14/2023', '2/10/2024'),
(46, '3/4/2023', NULL),
(47, '3/4/2023', '2/9/2024'),
(48, '3/9/2023', '2/13/2024'),
(49, '3/8/2023', '2/6/2024'),
(50, '2/12/2023', '2/23/2024'),
(51, '2/11/2023', NULL),
(52, '3/3/2023', NULL),
(53, '2/12/2023', '2/15/2024'),
(54, '2/24/2023', NULL),
(55, '2/10/2023', '2/7/2024'),
(56, '3/7/2023', NULL),
(57, '2/18/2023', '2/17/2024'),
(58, '3/8/2023', NULL),
(59, '2/21/2023', '2/12/2024'),
(60, '3/11/2023', '2/15/2024'),
(61, '2/23/2023', '2/23/2024'),
(62, '2/19/2023', '2/23/2024'),
(63, '3/14/2023', NULL),
(64, '2/25/2023', NULL),
(65, '3/14/2023', NULL),
(66, '3/14/2023', NULL),
(67, '3/7/2023', '2/14/2024'),
(68, '2/22/2023', NULL),
(69, '2/15/2023', '2/17/2024'),
(70, '2/27/2023', '2/18/2024'),
(71, '2/26/2023', '2/6/2024'),
(72, '2/13/2023', '2/9/2024'),
(73, '3/1/2023', NULL),
(74, '2/10/2023', '2/13/2024'),
(75, '3/12/2023', '2/18/2024'),
(76, '2/9/2023', NULL),
(77, '2/5/2023', NULL),
(78, '2/28/2023', NULL),
(79, '3/13/2023', NULL),
(80, '2/24/2023', '2/13/2024'),
(81, '2/6/2023', '2/28/2024'),
(82, '2/19/2023', '2/12/2024'),
(83, '2/22/2023', NULL),
(84, '2/28/2023', NULL),
(85, '3/4/2023', '2/18/2024'),
(86, '3/12/2023', '2/28/2024'),
(87, '2/24/2023', '2/23/2024'),
(88, '2/27/2023', NULL),
(89, '2/18/2023', '2/18/2024'),
(90, '3/8/2023', '2/27/2024'),
(91, '2/26/2023', '2/14/2024'),
(92, '3/13/2023', '2/27/2024'),
(93, '2/24/2023', NULL),
(94, '2/25/2023', '2/27/2024'),
(95, '2/7/2023', NULL),
(96, '2/12/2023', NULL),
(97, '2/23/2023', NULL),
(98, '3/10/2023', '2/20/2024'),
(99, '3/14/2023', '2/10/2024'),
(100, '3/7/2023', '2/28/2024');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `cus_id` int(8) DEFAULT NULL,
  `cus_name` varchar(30) DEFAULT NULL,
  `cus_lname` varchar(30) DEFAULT NULL,
  `cus_gender` varchar(30) DEFAULT NULL,
  `cus_phone` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`cus_id`, `cus_name`, `cus_lname`, `cus_gender`, `cus_phone`) VALUES
(3, 'Zuzana', 'Cant', 'Female', '8176679069'),
(4, 'Yuma', 'Woodman', 'Male', '4722135026'),
(5, 'Marrilee', 'Staton', 'Female', '9027001492'),
(6, 'Ephrem', 'Drover', 'Male', '6392179139'),
(7, 'Darb', 'Cressingham', 'Male', '8055885957'),
(8, 'Darcie', 'De Benedetti', 'Female', '3255564973'),
(9, 'Hewe', 'O\'Hannay', 'Male', '2568412580'),
(10, 'Lawrence', 'Whatley', 'Male', '4097878856'),
(11, 'Domeniga', 'Wedgwood', 'Female', '8062113656'),
(12, 'Anderea', 'Dmych', 'Female', '2317752348'),
(13, 'Linnet', 'Sawers', 'Female', '9146745436'),
(14, 'Nelia', 'Tessington', 'Polygender', '3966506768'),
(15, 'Concordia', 'Littlecote', 'Female', '7093012307'),
(16, 'Elie', 'Dudenie', 'Female', '4715216396'),
(17, 'Justinn', 'Finlason', 'Female', '9942665706'),
(18, 'Lesley', 'Huffey', 'Female', '4948322190'),
(19, 'Yelena', 'McLugish', 'Female', '1208770483'),
(20, 'Solomon', 'Premble', 'Male', '2963868962'),
(21, 'Farris', 'Shaylor', 'Male', '5371751941'),
(22, 'Aldous', 'Flute', 'Male', '7139425077'),
(23, 'Kathryn', 'Southern', 'Female', '6002272839'),
(24, 'Ragnar', 'Jurries', 'Male', '5567638667'),
(25, 'Fran', 'Joyes', 'Female', '4637175513'),
(26, 'Norry', 'Brigg', 'Female', '1951625661'),
(27, 'Rodolphe', 'Meigh', 'Male', '7781157355'),
(28, 'Horatio', 'Sowerbutts', 'Male', '7143656931'),
(29, 'Jane', 'Goodred', 'Female', '3911114231'),
(30, 'Maryrose', 'Jenton', 'Genderfluid', '4264796740'),
(31, 'Aliza', 'Sweetmore', 'Female', '8909592648'),
(32, 'Deane', 'Bodycote', 'Female', '4087946358'),
(33, 'Laurence', 'Jorger', 'Male', '7461742804'),
(34, 'Emmett', 'Waleworke', 'Male', '4152883686'),
(35, 'Carmel', 'Miners', 'Female', '3053493950'),
(36, 'Bobbye', 'Tilt', 'Female', '5917090883'),
(37, 'Stesha', 'Osgerby', 'Female', '2617293035'),
(38, 'Morse', 'Mathey', 'Male', '3568446397'),
(39, 'Dorry', 'Dommett', 'Female', '3888282054'),
(40, 'Doralynn', 'Freen', 'Female', '9292834546'),
(41, 'Giffie', 'Cookney', 'Male', '1787014213'),
(42, 'Nealon', 'Maplesden', 'Genderqueer', '4036580177'),
(43, 'Laurie', 'Oxshott', 'Female', '1011318298'),
(44, 'Berkly', 'Moggie', 'Male', '2047933932'),
(45, 'Patricio', 'Byrcher', 'Male', '2529511067'),
(46, 'Bevon', 'Josland', 'Male', '6341647757'),
(47, 'Hedwiga', 'Threadgold', 'Female', '1329775453'),
(48, 'Ronnie', 'Willshee', 'Female', '9781556248'),
(49, 'Jaquith', 'Hasluck', 'Female', '3925136701'),
(50, 'Antonella', 'Ossulton', 'Female', '1751138524'),
(51, 'Missie', 'Vila', 'Female', '3176043285'),
(52, 'Lawry', 'Corley', 'Male', '1275100795'),
(53, 'Mikol', 'Edinboro', 'Male', '2664679018'),
(54, 'Shelden', 'O\'Crevy', 'Male', '2736317777'),
(55, 'Blaine', 'McKelloch', 'Male', '5818747133'),
(56, 'Sergei', 'Bevans', 'Male', '9354208836'),
(57, 'Bancroft', 'Sillito', 'Male', '6086961166'),
(58, 'Ron', 'Bewick', 'Male', '6672935955'),
(59, 'Benito', 'McIlveen', 'Male', '3589655206'),
(60, 'Rusty', 'Castro', 'Male', '3212355265'),
(61, 'Gwenni', 'Woffenden', 'Female', '7018495593'),
(62, 'Matthew', 'Polotti', 'Male', '4819463979'),
(63, 'Armand', 'Hutten', 'Male', '2658143919'),
(64, 'Marthena', 'Carreyette', 'Female', '5047914530'),
(65, 'Jacqui', 'Bradneck', 'Female', '2216777304'),
(66, 'Stirling', 'Davson', 'Male', '4123535265'),
(67, 'Kaile', 'Ballay', 'Female', '9076711544'),
(68, 'Charity', 'Carwithan', 'Female', '9522173987'),
(69, 'Erminia', 'Haacker', 'Female', '7877466453'),
(70, 'Fay', 'Alexis', 'Female', '1652543489'),
(71, 'Harlen', 'Cruden', 'Male', '8029628147'),
(72, 'Hagan', 'Tumility', 'Genderfluid', '9241185051'),
(73, 'Susan', 'Posner', 'Female', '7652664225'),
(74, 'Marice', 'Gunner', 'Female', '3054723409'),
(75, 'Town', 'Hyndman', 'Male', '6641868980'),
(76, 'Mickey', 'Hornbuckle', 'Male', '8448365780'),
(77, 'Ella', 'Ganniclifft', 'Female', '1909247325'),
(78, 'Persis', 'Ashmore', 'Female', '2947794518'),
(79, 'Curcio', 'Pynner', 'Male', '9101589063'),
(80, 'Rora', 'Ludwikiewicz', 'Female', '7464371159'),
(81, 'Thekla', 'Butterley', 'Female', '6819998325'),
(82, 'Rafaelita', 'Sandcraft', 'Female', '8455881738'),
(83, 'Hugibert', 'Camillo', 'Male', '6853166958'),
(84, 'Kirby', 'Philippsohn', 'Male', '5961419916'),
(85, 'Fred', 'Boodle', 'Male', '5864607045'),
(86, 'Jemie', 'Osborn', 'Female', '9939025495'),
(87, 'Georgi', 'Jeannon', 'Male', '1746874173'),
(88, 'Melicent', 'McClintock', 'Female', '4131984255'),
(89, 'Mar', 'Gibke', 'Male', '5832751736'),
(90, 'Terry', 'Flobert', 'Female', '1295252910'),
(91, 'Dalia', 'Rogliero', 'Female', '3845230811'),
(92, 'Natty', 'Foux', 'Male', '4194252736'),
(93, 'Dominica', 'Le Blanc', 'Female', '4135577277'),
(94, 'Sheela', 'Verma', 'Female', '5743088767'),
(95, 'Derry', 'Penzer', 'Male', '4717157122'),
(96, 'Foss', 'Jedrysik', 'Genderqueer', '8721262399'),
(97, 'Christalle', 'Bernardet', 'Female', '3967519465'),
(98, 'Rozelle', 'Minchenton', 'Bigender', '6204979459'),
(99, 'Jaimie', 'MacGorman', 'Male', '7889195493'),
(100, 'Karleen', 'Plet', 'Female', '9456797046'),
(101, 'Lutero', 'Charman', 'Male', '4661552596'),
(102, 'Stormy', 'Cumpsty', 'Female', '9632660012'),
(103, 'Der', 'Harpur', 'Male', '6736115896'),
(104, 'Carroll', 'Carruthers', 'Male', '1168041018'),
(105, 'Opal', 'Doggett', 'Non-binary', '3976739101'),
(106, 'Ileana', 'Bampkin', 'Female', '9973661489'),
(107, 'Agnese', 'Dewick', 'Female', '1962102515'),
(108, 'Mylo', 'Shalcros', 'Male', '9986224995'),
(109, 'Joelly', 'Swinfen', 'Agender', '7069044008'),
(110, 'Trevar', 'Delong', 'Male', '6346955862'),
(111, 'Cherin', 'Bleything', 'Female', '8999121886'),
(112, 'Nikolos', 'Dobrovsky', 'Male', '7819481516'),
(113, 'Rica', 'Busswell', 'Female', '6837343413'),
(114, 'Alma', 'Triggle', 'Polygender', '6834500570'),
(115, 'Jeannine', 'Dionisetto', 'Female', '1509555146'),
(116, 'Had', 'Oakes', 'Male', '9701478668'),
(117, 'Margette', 'Larwood', 'Female', '9286962105'),
(118, 'Caron', 'Breydin', 'Female', '5484428378'),
(119, 'Euphemia', 'Airs', 'Female', '2838584136'),
(120, 'Wood', 'Molloy', 'Male', '7169062124'),
(121, 'Sylvan', 'Ruter', 'Male', '8634689734'),
(122, 'Andrea', 'Monget', 'Female', '7752964894'),
(123, 'Roanna', 'Posselwhite', 'Female', '3839099601'),
(124, 'Hans', 'Muncer', 'Male', '4449369887'),
(125, 'Lucine', 'Bourget', 'Female', '4156407072'),
(126, 'Guendolen', 'Kille', 'Female', '2144290977'),
(127, 'Marla', 'Hamon', 'Female', '9099454345'),
(128, 'Adriano', 'Bowra', 'Male', '9944983020'),
(129, 'Luelle', 'Sitwell', 'Female', '1545378848'),
(130, 'Sacha', 'Karpeev', 'Genderfluid', '4737942170'),
(131, 'Jaime', 'Grout', 'Male', '1286899488'),
(132, 'Lilian', 'Blaskett', 'Agender', '3536916719'),
(133, 'Sonni', 'Mieville', 'Female', '4086112071'),
(134, 'Yuri', 'MacDermand', 'Male', '8958012931'),
(135, 'Willdon', 'Gerardin', 'Male', '4186241304'),
(136, 'Allegra', 'Eagell', 'Female', '4058118091'),
(137, 'Felicle', 'Gilroy', 'Female', '4481737892'),
(138, 'Keelby', 'Rex', 'Male', '7353093556'),
(139, 'Bat', 'Matiasek', 'Genderfluid', '1761143701'),
(140, 'Carol', 'Pfaffel', 'Female', '6527335778'),
(141, 'Henri', 'Karby', 'Male', '4212021873'),
(142, 'Erich', 'Mazella', 'Male', '8706092941'),
(143, 'Peria', 'Gurnell', 'Female', '2014527708'),
(144, 'See', 'Sandford', 'Male', '2656318240'),
(145, 'Katti', 'Allred', 'Female', '3476627147'),
(146, 'Tandi', 'Nacci', 'Female', '3092183580'),
(147, 'Amory', 'Maund', 'Male', '7978904558'),
(148, 'Tiena', 'Berrisford', 'Female', '5568667342'),
(149, 'Manda', 'Sawkins', 'Female', '7076260091'),
(150, 'Hardy', 'Riches', 'Male', '2465435508'),
(151, 'Erskine', 'Josum', 'Male', '9177474925'),
(152, 'Ursola', 'Eard', 'Female', '9732001616'),
(153, 'Marion', 'Amber', 'Female', '1462732863'),
(154, 'Christoph', 'Vickery', 'Male', '5116099566'),
(155, 'Barby', 'Pinks', 'Female', '1875504351'),
(156, 'Kylynn', 'Sikorsky', 'Female', '6076601116'),
(157, 'Torrin', 'Fosberry', 'Male', '7903434822'),
(158, 'Anitra', 'Buchan', 'Female', '4845365267'),
(159, 'Herve', 'Gwillim', 'Male', '1719285967'),
(160, 'Annalee', 'Bruneton', 'Female', '8562465324'),
(161, 'Briggs', 'Ollcott', 'Male', '2752448683'),
(162, 'Guglielma', 'Fransoni', 'Female', '2872594304'),
(163, 'Deane', 'Adnet', 'Male', '5756564273'),
(164, 'Duky', 'Murcutt', 'Male', '9973527123'),
(165, 'Ximenes', 'MacWhirter', 'Male', '2777266769'),
(166, 'Lorelle', 'O\'Flannery', 'Female', '1453464614'),
(167, 'Nicko', 'Moroney', 'Male', '9938317570'),
(168, 'Herbie', 'Flawn', 'Male', '1098089947'),
(169, 'Barr', 'Berick', 'Male', '9964908278'),
(170, 'Jimmie', 'Gilders', 'Male', '7684776811'),
(171, 'Haskell', 'Peacop', 'Male', '6401258352'),
(172, 'Lance', 'McJerrow', 'Male', '3624054107'),
(173, 'Benjamen', 'Durnill', 'Male', '2802696289'),
(174, 'Giuseppe', 'Esseby', 'Male', '7429444778'),
(175, 'Lesli', 'Cappel', 'Female', '8607032756'),
(176, 'Nollie', 'Sinton', 'Male', '1906545339'),
(177, 'Powell', 'Chasles', 'Male', '8395652440'),
(178, 'Bartlett', 'Mingaye', 'Male', '6099144831'),
(179, 'Mohammed', 'Raecroft', 'Male', '4003391655'),
(180, 'Shoshanna', 'Artin', 'Female', '9864432676'),
(181, 'Alta', 'Sitwell', 'Female', '2196475889'),
(182, 'Eula', 'Branchet', 'Female', '1857175372'),
(183, 'Dunc', 'Sepey', 'Male', '1793326023'),
(184, 'Adeline', 'Aglione', 'Female', '2005882611'),
(185, 'Sue', 'Helks', 'Female', '1755091326'),
(186, 'Laraine', 'Herety', 'Female', '2698223560'),
(187, 'Sharleen', 'Bohike', 'Female', '3139685016'),
(188, 'Cheston', 'Nairne', 'Bigender', '6519640595'),
(189, 'Thedrick', 'Zanetto', 'Male', '8833503856'),
(190, 'Doy', 'Mc Ilwrick', 'Agender', '6458207477'),
(191, 'Vasilis', 'Sorbey', 'Male', '5614682812'),
(192, 'Alix', 'Hemstead', 'Female', '4603745524'),
(193, 'Melodee', 'Raecroft', 'Female', '7485941130'),
(194, 'Adam', 'Gorsse', 'Male', '8112126801'),
(195, 'Lou', 'Bosher', 'Genderfluid', '5498437166'),
(196, 'Rogers', 'Firidolfi', 'Male', '3127677773'),
(197, 'Deirdre', 'Pietersen', 'Female', '7342281287'),
(198, 'Zondra', 'Ounsworth', 'Female', '9646555359'),
(199, 'Hollie', 'Goatcher', 'Female', '2138559917'),
(200, 'Chanda', 'Bewshaw', 'Female', '3557764995'),
(201, 'Sumner', 'Schankelborg', 'Male', '6933845456'),
(202, 'Happy', 'Robshaw', 'Female', '7193695818'),
(203, 'Petronia', 'Josefovic', 'Female', '2244687839'),
(204, 'Tamara', 'Maplesden', 'Female', '5623589744'),
(205, 'Tobit', 'Huffa', 'Male', '4502303895'),
(206, 'Mariele', 'Aloigi', 'Female', '9575453051'),
(207, 'Nissy', 'Yannikov', 'Female', '3128740367'),
(208, 'Aldrich', 'Mularkey', 'Bigender', '9776313186'),
(209, 'Tomas', 'Wooldridge', 'Male', '6378826490'),
(210, 'La verne', 'Ashingden', 'Female', '5529367060'),
(211, 'Justino', 'Duncklee', 'Male', '8099187459'),
(212, 'Shepperd', 'Outright', 'Male', '4019645030'),
(213, 'Mona', 'Mergue', 'Female', '8466710480'),
(214, 'Barclay', 'Yvens', 'Male', '8224891236'),
(215, 'Sumner', 'Crossdale', 'Polygender', '2978225021'),
(216, 'Lion', 'Clail', 'Male', '6325460812'),
(217, 'Obie', 'Portt', 'Male', '1214729491'),
(218, 'Kristi', 'Tinan', 'Agender', '3117633262'),
(219, 'Charlton', 'Paradin', 'Male', '7279029776'),
(220, 'Rois', 'Cripin', 'Female', '2031051862'),
(221, 'Leilah', 'Betonia', 'Female', '9542136461'),
(222, 'Parry', 'Bert', 'Male', '3428108319'),
(223, 'Olympe', 'McLellan', 'Female', '6438961776'),
(224, 'Foss', 'Missen', 'Male', '4932633740'),
(225, 'Millie', 'Sives', 'Female', '3913159534'),
(226, 'Sherwynd', 'Odams', 'Male', '3683820468'),
(227, 'Romy', 'Gerriet', 'Female', '4648209776'),
(228, 'Merv', 'Maestrini', 'Male', '7923991648'),
(229, 'Ami', 'Oseman', 'Female', '9188373029'),
(230, 'Mace', 'Kither', 'Male', '9391396598'),
(231, 'Leonard', 'Tosspell', 'Genderfluid', '6704105122'),
(232, 'Josselyn', 'Lockitt', 'Non-binary', '3259762993'),
(233, 'Kassia', 'Tolefree', 'Female', '1248352552'),
(234, 'Franciska', 'Murrhaupt', 'Female', '5179390048'),
(235, 'Gus', 'Kestian', 'Female', '6918245226'),
(236, 'Had', 'Shale', 'Male', '2427164678'),
(237, 'Derick', 'Penas', 'Male', '7333660972'),
(238, 'Lyndsie', 'Spears', 'Female', '9259934115'),
(239, 'Georgie', 'Dusting', 'Male', '7779564433'),
(240, 'Bo', 'O\'Beirne', 'Polygender', '2489206347'),
(241, 'Peria', 'McCory', 'Female', '2978875056'),
(242, 'Padgett', 'Paullin', 'Male', '2063893599'),
(243, 'Simone', 'Swalwell', 'Female', '6139355172'),
(244, 'Kenton', 'Czaple', 'Male', '2785825758'),
(245, 'Hallie', 'Wraighte', 'Female', '8839869869'),
(246, 'Bentley', 'Addison', 'Male', '3964585360'),
(247, 'Olimpia', 'Bault', 'Female', '7652514492'),
(248, 'Kyle', 'Skyner', 'Male', '3579026667'),
(249, 'Ely', 'Lippett', 'Male', '4988432472'),
(250, 'Che', 'Iremonger', 'Male', '6336246594'),
(251, 'Quintina', 'Bennough', 'Female', '5942071897'),
(252, 'Sacha', 'Hartopp', 'Female', '4491302575'),
(253, 'Delcina', 'Benkin', 'Female', '4679085360'),
(254, 'Bowie', 'Paybody', 'Male', '3857686810'),
(255, 'Gray', 'Brikner', 'Male', '5616018635'),
(256, 'Aili', 'Sibery', 'Female', '9648347474'),
(257, 'Antonin', 'O\'Sculley', 'Male', '7445702214'),
(258, 'Roi', 'Theunissen', 'Genderqueer', '9933340153'),
(259, 'Isabelita', 'Thiem', 'Female', '5867486309'),
(260, 'Gwenette', 'Gregr', 'Female', '5581277910'),
(261, 'Dacy', 'Dacey', 'Female', '6822386740'),
(262, 'Loni', 'Obispo', 'Female', '2253085628'),
(263, 'Son', 'Kienzle', 'Male', '9647792360'),
(264, 'Catina', 'Skahill', 'Female', '4956394099'),
(265, 'Darbie', 'Croutear', 'Female', '7973976044'),
(266, 'Rodge', 'Bridgen', 'Male', '5841546495'),
(267, 'Skelly', 'Biggs', 'Male', '1583389326'),
(268, 'Shalna', 'Girardoni', 'Female', '8361553225'),
(269, 'Vasilis', 'Whitmore', 'Male', '9708836670'),
(270, 'Dukey', 'Matousek', 'Male', '6043590599'),
(271, 'Corie', 'Giocannoni', 'Female', '4989865884'),
(272, 'Holden', 'Fussen', 'Bigender', '8962833274'),
(273, 'Bordy', 'Godby', 'Male', '4173615109'),
(274, 'Jerry', 'Coghill', 'Male', '7914168992'),
(275, 'Timmi', 'Capelow', 'Female', '3645784757'),
(276, 'Dudley', 'Hamments', 'Male', '2268449189'),
(277, 'Athena', 'Eul', 'Female', '1748638917'),
(278, 'Gaynor', 'Gyorffy', 'Female', '3844127340'),
(279, 'Di', 'Sammars', 'Genderqueer', '6166349818'),
(280, 'Tana', 'Iacapucci', 'Female', '3021529516'),
(281, 'Dacia', 'Jarrett', 'Female', '5469050489'),
(282, 'Colver', 'Joanic', 'Male', '3123157820'),
(283, 'Bert', 'Shelsher', 'Male', '9894360196'),
(284, 'Ellwood', 'Eilhart', 'Male', '2813720994'),
(285, 'Vania', 'Leonarde', 'Female', '4717525339'),
(286, 'Armin', 'Sally', 'Male', '9109309822'),
(287, 'Gilda', 'Clowton', 'Female', '6279247715'),
(288, 'Thomasina', 'Cicculini', 'Female', '2899416888'),
(289, 'Reine', 'Olivello', 'Female', '6366813535'),
(290, 'Udale', 'Kilpin', 'Male', '8706703487'),
(291, 'Andria', 'Beaze', 'Female', '4485331681'),
(292, 'Say', 'Simenet', 'Male', '8486298056'),
(293, 'Coralyn', 'Geck', 'Bigender', '4216365266'),
(294, 'Steffen', 'Antoszewski', 'Male', '7333116280'),
(295, 'Zachary', 'Piens', 'Male', '5891518543'),
(296, 'Lynnelle', 'Puddifer', 'Polygender', '5783049016'),
(297, 'Karon', 'Unworth', 'Female', '9277682397'),
(298, 'Gianna', 'Wheeliker', 'Female', '5626207190'),
(299, 'Hugh', 'Dinnage', 'Male', '7526088304'),
(300, 'Christopher', 'Bignall', 'Male', '2025376432'),
(301, 'Sharla', 'Blannin', 'Female', '3814410546'),
(302, 'Sonnie', 'Brimblecomb', 'Male', '5138755313'),
(303, 'Minnnie', 'O\'Codihie', 'Female', '6964555056'),
(304, 'Estrella', 'Garmanson', 'Female', '9786140355'),
(305, 'Harcourt', 'Freeborn', 'Male', '2128125864'),
(306, 'Merrilee', 'MacLaverty', 'Female', '5832555521'),
(307, 'Burtie', 'Fillary', 'Male', '4491515747'),
(308, 'Benny', 'Eilles', 'Male', '7169753960'),
(309, 'Bruno', 'Sollas', 'Male', '6263037338'),
(310, 'Happy', 'Elderidge', 'Female', '5383097247'),
(311, 'Monah', 'Bowdery', 'Female', '9555436009'),
(312, 'Noby', 'Avraham', 'Male', '6856518122'),
(313, 'Becka', 'Wheelwright', 'Female', '6916297726'),
(314, 'Beulah', 'Instrell', 'Female', '5169321706'),
(315, 'Lorrayne', 'Bockman', 'Female', '7287839553'),
(316, 'Domini', 'Lampert', 'Female', '4767086161'),
(317, 'Erv', 'Lanchester', 'Male', '2252934552'),
(318, 'Marillin', 'Moral', 'Female', '9194570422'),
(319, 'Cliff', 'Benedetti', 'Male', '7896418483'),
(320, 'Hercules', 'Hefferon', 'Male', '2313608625'),
(321, 'Chelsy', 'Crammy', 'Female', '7892369596'),
(322, 'Lockwood', 'Gremane', 'Male', '3357648285'),
(323, 'Charita', 'Erwin', 'Female', '1631844436'),
(324, 'Tabbi', 'Holson', 'Female', '6385989496'),
(325, 'Ailis', 'Simond', 'Female', '3431810000'),
(326, 'Devlin', 'Tabourier', 'Male', '1763121751'),
(327, 'Elnore', 'L\'oiseau', 'Female', '2994690421'),
(328, 'Phip', 'Beattie', 'Male', '6094804102'),
(329, 'Aubrette', 'Chucks', 'Female', '7718699457'),
(330, 'Clerissa', 'Mateu', 'Female', '7198621072'),
(331, 'Mary', 'Telling', 'Female', '2055753985'),
(332, 'Phebe', 'Ellingsworth', 'Female', '2847176034'),
(333, 'Darlene', 'Ganing', 'Female', '9488840933'),
(334, 'Hannis', 'Bexon', 'Female', '7596802714'),
(335, 'Babette', 'Hussell', 'Female', '8439876646'),
(336, 'Virgilio', 'Armitage', 'Male', '2822202954'),
(337, 'Zachariah', 'Antosch', 'Male', '4992312568'),
(338, 'Martainn', 'Grindley', 'Male', '7827149460'),
(339, 'Fletch', 'Vasnetsov', 'Male', '6865729744'),
(340, 'Rhoda', 'Davey', 'Female', '9035571140'),
(341, 'Cherin', 'Boatswain', 'Female', '8892895605'),
(342, 'Morgan', 'Sinclar', 'Male', '8112620201'),
(343, 'Rex', 'Vokes', 'Male', '7523503138'),
(344, 'Josy', 'Sang', 'Female', '3638599265'),
(345, 'Gannon', 'Sellor', 'Genderfluid', '2403014397'),
(346, 'Bernie', 'Itzik', 'Male', '1918515941'),
(347, 'Betti', 'McNess', 'Female', '7945379990'),
(348, 'Gus', 'Gimenez', 'Male', '5572593986'),
(349, 'Traci', 'Elener', 'Female', '8727940358'),
(350, 'Quincy', 'Hazell', 'Male', '9729996665'),
(351, 'Shari', 'Petrasek', 'Female', '7152531892'),
(352, 'Kaycee', 'Messiter', 'Female', '4812783862'),
(353, 'Ganny', 'Macallam', 'Male', '5543685127'),
(354, 'Tally', 'Stannard', 'Male', '7791508204'),
(355, 'Ulrika', 'Moden', 'Female', '2134258639'),
(356, 'Isabella', 'Wallbridge', 'Female', '5351723692'),
(357, 'Kelsy', 'Pavek', 'Female', '7254437166'),
(358, 'Debra', 'Scarffe', 'Female', '4152905500'),
(359, 'Deanne', 'Feben', 'Female', '6984619820'),
(360, 'Car', 'Playfair', 'Male', '5292062024'),
(361, 'Elbertine', 'Branford', 'Female', '9091889941'),
(362, 'Galvin', 'Knolles-Green', 'Male', '5272133754'),
(363, 'Zaccaria', 'Izchaki', 'Male', '7775545008'),
(364, 'Dall', 'Langwade', 'Male', '3785635941'),
(365, 'Fidole', 'Kornyakov', 'Male', '7588466051'),
(366, 'Kara', 'Springall', 'Female', '7147297793'),
(367, 'Connie', 'Sugden', 'Female', '2924919880'),
(368, 'Verine', 'Langstone', 'Female', '3818284732'),
(369, 'Pia', 'Gateley', 'Female', '8278470537'),
(370, 'Terrell', 'Yeowell', 'Male', '6616618198'),
(371, 'Nixie', 'Soares', 'Female', '4328966658'),
(372, 'Phil', 'Sackes', 'Genderfluid', '6964020895'),
(373, 'Marylynne', 'Melladew', 'Female', '6733157691'),
(374, 'Maximilian', 'Dooman', 'Male', '5939258482'),
(375, 'Bridie', 'Winfield', 'Female', '9432170733'),
(376, 'Edwin', 'Cuardall', 'Male', '1001369231'),
(377, 'Darsey', 'Rolse', 'Female', '5613498187'),
(378, 'Giacobo', 'Antonioni', 'Male', '5767138074'),
(379, 'Alethea', 'Eshmade', 'Female', '3294150170'),
(380, 'Priscilla', 'Doughill', 'Female', '2215555760'),
(381, 'Shirleen', 'Slack', 'Female', '8656743059'),
(382, 'Steffen', 'Vinnicombe', 'Male', '2852999071'),
(383, 'Barret', 'Hows', 'Male', '5465643369'),
(384, 'Roley', 'Benoist', 'Male', '1991926389'),
(385, 'Darsey', 'Redhouse', 'Agender', '5906429137'),
(386, 'Austine', 'Kinnen', 'Female', '9798788371'),
(387, 'Ginger', 'Jellett', 'Male', '5989347097'),
(388, 'Enrico', 'Grinikhinov', 'Male', '3886370025'),
(389, 'Kelsey', 'Garvey', 'Female', '3454486951'),
(390, 'Philippine', 'Yitzowitz', 'Female', '4944625109'),
(391, 'Lorain', 'Soigne', 'Female', '3972901185'),
(392, 'Dagmar', 'Danes', 'Female', '3213495460'),
(393, 'Legra', 'Duguid', 'Female', '4185728355'),
(394, 'Viola', 'Seamons', 'Female', '5404850319'),
(395, 'Nataniel', 'Merriment', 'Male', '6425448981'),
(396, 'Lynnet', 'Entwisle', 'Agender', '7616059282'),
(397, 'Enrico', 'Woolner', 'Male', '5764102728'),
(398, 'Laney', 'Scraney', 'Non-binary', '7896048177'),
(399, 'Harper', 'Cridge', 'Male', '9916130689'),
(400, 'Selie', 'Rens', 'Female', '5937955301'),
(401, 'Haze', 'Byne', 'Male', '8776586444'),
(402, 'Hyacintha', 'Barthram', 'Female', '7948933538'),
(403, 'Faith', 'Lindblad', 'Female', '2291594306'),
(404, 'Herc', 'Sleep', 'Male', '3645023949'),
(405, 'Allie', 'Hartfield', 'Female', '9406388219'),
(406, 'Chiquita', 'Tomaini', 'Female', '5657679206'),
(407, 'Sigfried', 'Coulthard', 'Male', '8818624855'),
(408, 'Rouvin', 'Patters', 'Male', '6917222353'),
(409, 'Delora', 'Burchall', 'Genderqueer', '8052664026'),
(410, 'Griffy', 'Danielski', 'Male', '1074910586'),
(411, 'Roma', 'Arents', 'Male', '9958694058'),
(412, 'Jimmie', 'Munkton', 'Male', '5668927167'),
(413, 'Andre', 'Iskow', 'Male', '6176618432'),
(414, 'Caspar', 'Rawlyns', 'Male', '5667189264'),
(415, 'Kimmi', 'Giannasi', 'Female', '6709637375'),
(416, 'Gipsy', 'Debrick', 'Female', '6232621605'),
(417, 'Deni', 'Goldstein', 'Female', '9345656576'),
(418, 'Kelli', 'Dunbavin', 'Female', '1644255552'),
(419, 'Nata', 'Boldock', 'Genderqueer', '6206280404'),
(420, 'Brit', 'Elphey', 'Female', '4959898299'),
(421, 'Quinn', 'De Caroli', 'Female', '9177550017'),
(422, 'Kally', 'Hawtin', 'Female', '1001377579'),
(423, 'Tabby', 'Christofol', 'Male', '6686232877'),
(424, 'Sloane', 'Queen', 'Male', '4579276442'),
(425, 'Christabel', 'Fetteplace', 'Genderqueer', '9356439948'),
(426, 'Munroe', 'Isacsson', 'Male', '6505217337'),
(427, 'Ethelred', 'Mathevon', 'Male', '1909388814'),
(428, 'Marmaduke', 'Hartigan', 'Male', '9713531972'),
(429, 'Arlene', 'Engley', 'Female', '9454261829'),
(430, 'Erroll', 'Dingsdale', 'Male', '9666877606'),
(431, 'Angelique', 'Epdell', 'Female', '8624736160'),
(432, 'Cirstoforo', 'Blevin', 'Male', '2733090700'),
(433, 'Roy', 'Clyant', 'Male', '7017237142'),
(434, 'Karyn', 'Carwithim', 'Female', '4034281482'),
(435, 'Prudi', 'Skeemer', 'Female', '3964640830'),
(436, 'Ciel', 'Hutcheon', 'Female', '2379810965'),
(437, 'Hillyer', 'Quarry', 'Male', '6507818095'),
(438, 'Gibby', 'Tomczykiewicz', 'Male', '5685933777'),
(439, 'Kelwin', 'Angood', 'Male', '6396720074'),
(440, 'Cesare', 'Messier', 'Male', '4616334133'),
(441, 'Ely', 'Boyall', 'Male', '7585952066'),
(442, 'Tallie', 'Revening', 'Male', '2252629961'),
(443, 'Dietrich', 'Kings', 'Male', '9165681689'),
(444, 'Minor', 'Ham', 'Male', '5906444265'),
(445, 'Levey', 'Trench', 'Male', '1014591600'),
(446, 'Silas', 'Santorini', 'Male', '7342821469'),
(447, 'Ardath', 'Downe', 'Female', '2224486127'),
(448, 'Rory', 'Suche', 'Male', '9824209237'),
(449, 'Alwin', 'Haycock', 'Male', '2654258938'),
(450, 'Jorge', 'Mantram', 'Male', '9926996878'),
(451, 'Nathan', 'Harrhy', 'Male', '5361634472'),
(452, 'Freeland', 'Gardner', 'Male', '5386657529'),
(453, 'Wilbur', 'Wimp', 'Male', '2109829619'),
(454, 'Deirdre', 'Braunston', 'Female', '6687553026'),
(455, 'Eleonore', 'Dawber', 'Agender', '9636443580'),
(456, 'Tessy', 'Stone', 'Female', '4796247376'),
(457, 'Pooh', 'Brimicombe', 'Male', '1866279903'),
(458, 'Sherlock', 'Aslin', 'Male', '3046238208'),
(459, 'Jarrett', 'Preto', 'Male', '7235171174'),
(460, 'Lacee', 'Sperrett', 'Genderfluid', '4706585314'),
(461, 'Elayne', 'Pendle', 'Female', '6898844361'),
(462, 'Alyss', 'Bowton', 'Female', '4034278542'),
(463, 'Reba', 'Collingridge', 'Female', '8975015870'),
(464, 'Bunnie', 'Cabrara', 'Female', '3506285172'),
(465, 'Salaidh', 'Farfull', 'Genderfluid', '6855224955'),
(466, 'D\'arcy', 'Sheed', 'Male', '3557298104'),
(467, 'Faith', 'Millard', 'Female', '4154447256'),
(468, 'Phillis', 'Gogan', 'Female', '2269639847'),
(469, 'Fanny', 'Raoult', 'Female', '7225305280'),
(470, 'Lenard', 'Aaron', 'Male', '4368235707'),
(471, 'Obed', 'Thompkins', 'Genderfluid', '3045291457'),
(472, 'Drugi', 'Callicott', 'Male', '1481073678'),
(473, 'Seana', 'Girdwood', 'Female', '1086151608'),
(474, 'Kissee', 'Geroldi', 'Female', '3881051081'),
(475, 'Elka', 'Gilstin', 'Female', '4081522629'),
(476, 'Guilbert', 'MacDougall', 'Male', '5578244518'),
(477, 'Violette', 'Peggrem', 'Female', '8432359215'),
(478, 'Alexio', 'Zuker', 'Male', '4301776686'),
(479, 'Nert', 'Bangham', 'Female', '4685943536'),
(480, 'Dyanne', 'Imos', 'Female', '1943624976'),
(481, 'Doris', 'Flagg', 'Female', '8914867704'),
(482, 'Aldin', 'Artinstall', 'Male', '4313172995'),
(483, 'Morley', 'Boodell', 'Male', '7877926076'),
(484, 'Andrea', 'Wassell', 'Male', '5608652469'),
(485, 'Immanuel', 'Benet', 'Male', '9744746178'),
(486, 'Stevie', 'Ninnis', 'Male', '5583384889'),
(487, 'Virgie', 'Carrack', 'Male', '6891921062'),
(488, 'Bethena', 'Ribbens', 'Polygender', '9871423986'),
(489, 'Chane', 'Pymer', 'Male', '3176651887'),
(490, 'Pearce', 'Hutchings', 'Male', '8199508421'),
(491, 'Murial', 'Wheater', 'Female', '4857026210'),
(492, 'Barbara', 'Tudgay', 'Female', '7354606304'),
(493, 'Dalenna', 'Norree', 'Female', '4882945930'),
(494, 'Meara', 'Bringloe', 'Female', '6693121210'),
(495, 'Tymothy', 'Crame', 'Male', '7763674130'),
(496, 'Felike', 'De Ruel', 'Male', '2789187916'),
(497, 'Wallie', 'Cund', 'Male', '1615374180'),
(498, 'Trip', 'Bathoe', 'Male', '1177237842'),
(499, 'Caril', 'Casse', 'Female', '7407445257'),
(500, 'Venus', 'Yarnley', 'Female', '4959553775');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id` int(8) DEFAULT NULL,
  `emp_name` varchar(30) DEFAULT NULL,
  `emp_lname` varchar(30) DEFAULT NULL,
  `fathers_name` varchar(30) DEFAULT NULL,
  `emp_gender` varchar(30) DEFAULT NULL,
  `emp_phone` varchar(30) DEFAULT NULL,
  `emp_address` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `emp_name`, `emp_lname`, `fathers_name`, `emp_gender`, `emp_phone`, `emp_address`) VALUES
(1, 'Ferd', NULL, NULL, NULL, '9751600981', NULL),
(2, 'Brigham', 'Thackston', NULL, 'Male', '7872777036', '951 Surrey Street'),
(3, 'Justinn', NULL, 'Axe', NULL, '5061174279', '0797 Division Court'),
(4, 'Dugald', 'Raynard', NULL, 'Male', '4097906621', '2 Sugar Avenue'),
(5, 'Tyson', NULL, NULL, NULL, NULL, '06 Fordem Point'),
(6, 'Booth', 'Strothers', 'Ryley', NULL, NULL, '43992 Marquette Place'),
(7, 'Ross', NULL, 'Sol', 'Male', '6157738566', '28090 Victoria Circle'),
(8, 'Palm', 'Josselsohn', 'Cosme', 'Bigender', NULL, NULL),
(9, 'Alvinia', 'Looney', 'Bradney', NULL, '3427307828', NULL),
(10, 'Aarika', 'Veitch', 'Virge', NULL, NULL, '8714 Fisk Place'),
(11, 'Reinhold', 'Cheeseman', 'Emanuele', 'Male', '4177474171', NULL),
(12, 'Tann', NULL, 'Wilbur', NULL, '8794985995', '6431 Schlimgen Pass'),
(13, 'Link', 'Kingham', NULL, NULL, '6439081082', NULL),
(14, 'Olenka', 'Berecloth', NULL, 'Female', NULL, NULL),
(15, 'Willdon', NULL, 'Brody', NULL, NULL, '49973 Grasskamp Pass'),
(16, 'Flory', NULL, NULL, 'Male', '3794120484', '320 Mitchell Avenue'),
(17, 'Candy', 'Thiolier', NULL, 'Female', NULL, NULL),
(18, 'Hurlee', 'Yakolev', 'Devland', NULL, NULL, NULL),
(19, 'Cob', NULL, 'Tymothy', 'Male', NULL, '6 Oak Trail'),
(20, 'Sarine', NULL, 'Domenic', NULL, '2736719385', NULL),
(21, 'Alanna', NULL, 'Avery', 'Female', '9657946443', '48308 Charing Cross Point'),
(22, 'Malena', NULL, 'Arte', 'Polygender', NULL, '02784 Crest Line Hill'),
(23, 'Axe', 'Blueman', 'Felizio', 'Male', NULL, NULL),
(24, 'Claudia', 'Kirimaa', NULL, 'Female', NULL, '75545 Carey Hill'),
(25, 'Alicea', NULL, 'Jarrid', 'Female', NULL, '45502 Kinsman Place'),
(26, 'Leonardo', 'Father', NULL, NULL, '1471688763', NULL),
(27, 'Timothea', 'Gebby', NULL, 'Female', '5313642298', '6 Maryland Alley'),
(28, 'Camile', 'Botger', 'Ban', 'Female', '5791049368', '01469 Monument Center'),
(29, 'Mirella', NULL, NULL, NULL, NULL, '04 Stone Corner Terrace'),
(30, 'Aura', 'Itzkov', 'Ransom', 'Female', NULL, '0 Bonner Pass'),
(31, 'Fidelia', 'Pudan', NULL, 'Genderqueer', NULL, '9 Reinke Terrace'),
(32, 'Rudolfo', NULL, 'Gerome', 'Non-binary', '2964176723', '0 Muir Terrace'),
(33, 'Brodie', 'Bowen', 'Burch', 'Male', '7984450111', '1147 Kropf Crossing'),
(34, 'Natal', 'Dablin', 'Arther', NULL, NULL, '84683 Elmside Park'),
(35, 'Rozalie', 'Mainston', NULL, NULL, NULL, NULL),
(36, 'Muhammad', 'Brastead', NULL, 'Male', '6934779254', '01227 Morrow Parkway'),
(37, 'Willyt', 'Rapin', NULL, 'Genderfluid', '1362709857', NULL),
(38, 'Basile', NULL, 'Halsey', NULL, NULL, '05 Green Court'),
(39, 'Candis', 'Creese', NULL, NULL, '5329319634', NULL),
(40, 'Bess', 'Dearsley', 'Kory', NULL, NULL, '70 Butternut Lane'),
(41, 'Haslett', 'Velasquez', 'Carver', 'Male', NULL, '4 Claremont Way'),
(42, 'Addy', NULL, 'Karlik', NULL, NULL, '1 Briar Crest Street'),
(43, 'Wilhelmina', NULL, NULL, 'Female', '7232424558', NULL),
(44, 'Thia', 'Slimm', NULL, NULL, NULL, '403 Mallard Pass'),
(45, 'Shay', 'Breznovic', 'Glenden', NULL, '8199238990', '0 East Trail'),
(46, 'Anson', NULL, NULL, 'Male', '9191403808', NULL),
(47, 'Merrili', NULL, NULL, 'Female', NULL, '349 Clemons Road'),
(48, 'Bekki', NULL, NULL, 'Female', '3449305179', '6 Kennedy Avenue'),
(49, 'Rodie', NULL, NULL, NULL, NULL, NULL),
(50, 'Lura', NULL, 'Darin', 'Genderqueer', '1846557080', '7261 Petterle Hill');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `order_id` int(8) DEFAULT NULL,
  `foods` varchar(30) DEFAULT NULL,
  `drinks` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`order_id`, `foods`, `drinks`) VALUES
(1, 'carbonara', 'mohito'),
(2, 'pizza', 'zombie'),
(3, 'pie', 'wine'),
(4, 'rib-eye', 'beer'),
(5, 'pizza', 'cocacola'),
(6, 'gyros', 'orange juice'),
(7, 'pie', 'cocacola'),
(8, 'pizza', 'wine'),
(9, 'carbonara', 'beer'),
(10, 'gyros', 'mohito'),
(11, 'rib-eye', 'zombie'),
(12, 'rib-eye', 'zombie'),
(13, 'pizza', 'cocacola'),
(14, 'carbonara', 'mohito'),
(15, 'pie', 'cocacola');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int(8) NOT NULL,
  `bed_type` varchar(30) DEFAULT NULL,
  `room_type` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `bed_type`, `room_type`) VALUES
(0, '', ''),
(1, 'double room', 'standard'),
(2, 'triple room', 'standard'),
(3, 'triple room', 'standard'),
(5, 'double room', 'VIP'),
(6, 'triple room', 'standard'),
(7, 'double room', 'standard'),
(8, 'double room', 'VIP'),
(9, 'triple room', 'VIP'),
(10, 'double room', 'VIP'),
(11, 'double room', 'standard'),
(12, 'triple room', 'VIP'),
(13, 'double room', 'standard'),
(14, 'triple room', 'VIP'),
(15, 'triple room', 'standard'),
(16, 'double room', 'VIP'),
(17, 'triple room', 'standard'),
(18, 'double room', 'VIP'),
(19, 'triple room', 'standard'),
(20, 'triple room', 'VIP'),
(21, 'triple room', 'VIP'),
(22, 'double room', 'standard'),
(23, 'double room', 'standard'),
(24, 'triple room', 'standard'),
(25, 'triple room', 'VIP'),
(26, 'double room', 'VIP'),
(27, 'double room', 'standard'),
(28, 'double room', 'VIP'),
(29, 'triple room', 'standard'),
(30, 'double room', 'VIP'),
(31, 'double room', 'standard'),
(32, 'double room', 'standard'),
(33, 'triple room', 'VIP'),
(34, 'double room', 'standard'),
(35, 'triple room', 'standard'),
(36, 'triple room', 'standard'),
(38, 'double room', 'VIP'),
(39, 'double room', 'VIP'),
(40, 'triple room', 'VIP'),
(234, 'Double Room', 'VIP'),
(255, 'Double Room', 'VIP');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`) VALUES
('user', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;