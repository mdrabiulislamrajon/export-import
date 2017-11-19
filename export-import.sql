-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.2.3-MariaDB-log - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table beka.colorables
CREATE TABLE IF NOT EXISTS `colorables` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `color_id` int(10) unsigned NOT NULL,
  `colorable_id` int(10) unsigned NOT NULL,
  `colorable_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table beka.colorables: ~0 rows (approximately)
DELETE FROM `colorables`;
/*!40000 ALTER TABLE `colorables` DISABLE KEYS */;
/*!40000 ALTER TABLE `colorables` ENABLE KEYS */;

-- Dumping structure for table beka.colors
CREATE TABLE IF NOT EXISTS `colors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table beka.colors: ~100 rows (approximately)
DELETE FROM `colors`;
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;
INSERT INTO `colors` (`id`, `name`) VALUES
	(1, 'Chocolate'),
	(2, 'Aqua'),
	(3, 'LightBlue'),
	(4, 'Orange'),
	(5, 'Yellow'),
	(6, 'Silver'),
	(7, 'Silver'),
	(8, 'Red'),
	(9, 'Gainsboro'),
	(10, 'BlueViolet'),
	(11, 'SaddleBrown'),
	(12, 'DarkGreen'),
	(13, 'AntiqueWhite'),
	(14, 'DarkBlue'),
	(15, 'LightGreen'),
	(16, 'Chartreuse'),
	(17, 'SeaGreen'),
	(18, 'DarkGreen'),
	(19, 'White'),
	(20, 'Silver'),
	(21, 'LightGreen'),
	(22, 'DimGray'),
	(23, 'DarkRed'),
	(24, 'SpringGreen'),
	(25, 'SaddleBrown'),
	(26, 'Maroon'),
	(27, 'WhiteSmoke'),
	(28, 'MediumAquaMarine'),
	(29, 'YellowGreen'),
	(30, 'IndianRed'),
	(31, 'GhostWhite'),
	(32, 'Aquamarine'),
	(33, 'Orchid'),
	(34, 'MediumTurquoise'),
	(35, 'MediumVioletRed'),
	(36, 'Chartreuse'),
	(37, 'Chartreuse'),
	(38, 'LightPink'),
	(39, 'MintCream'),
	(40, 'DarkCyan'),
	(41, 'DarkViolet'),
	(42, 'PaleGreen'),
	(43, 'Pink'),
	(44, 'Thistle'),
	(45, 'DarkSlateBlue'),
	(46, 'LightGreen'),
	(47, 'BurlyWood'),
	(48, 'Navy'),
	(49, 'Lime'),
	(50, 'Darkorange'),
	(51, 'BlueViolet'),
	(52, 'DarkGray'),
	(53, 'Olive'),
	(54, 'DarkViolet'),
	(55, 'LightCyan'),
	(56, 'ForestGreen'),
	(57, 'CornflowerBlue'),
	(58, 'CadetBlue'),
	(59, 'Gray'),
	(60, 'Violet'),
	(61, 'PaleTurquoise'),
	(62, 'LightGreen'),
	(63, 'Wheat'),
	(64, 'Orchid'),
	(65, 'Salmon'),
	(66, 'MediumVioletRed'),
	(67, 'HoneyDew'),
	(68, 'Gray'),
	(69, 'BlueViolet'),
	(70, 'GoldenRod'),
	(71, 'Aquamarine'),
	(72, 'Teal'),
	(73, 'PapayaWhip'),
	(74, 'PaleVioletRed'),
	(75, 'PeachPuff'),
	(76, 'HotPink'),
	(77, 'OrangeRed'),
	(78, 'MediumPurple'),
	(79, 'GreenYellow'),
	(80, 'White'),
	(81, 'PaleGoldenRod'),
	(82, 'DarkCyan'),
	(83, 'LightCoral'),
	(84, 'Orange'),
	(85, 'Yellow'),
	(86, 'AntiqueWhite'),
	(87, 'Darkorange'),
	(88, 'Snow'),
	(89, 'YellowGreen'),
	(90, 'MediumVioletRed'),
	(91, 'PaleGoldenRod'),
	(92, 'MidnightBlue'),
	(93, 'Sienna'),
	(94, 'Gold'),
	(95, 'DarkCyan'),
	(96, 'MediumSlateBlue'),
	(97, 'Chartreuse'),
	(98, 'PowderBlue'),
	(99, 'Magenta'),
	(100, 'Tomato');
/*!40000 ALTER TABLE `colors` ENABLE KEYS */;

-- Dumping structure for table beka.exports
CREATE TABLE IF NOT EXISTS `exports` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `expoters` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_of_buyer` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_export_lc` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `season` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `po_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iteam` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mode_of_shipment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_quantity` int(11) NOT NULL,
  `unit` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table beka.exports: ~104 rows (approximately)
DELETE FROM `exports`;
/*!40000 ALTER TABLE `exports` DISABLE KEYS */;
INSERT INTO `exports` (`id`, `expoters`, `name_of_buyer`, `date_of_export_lc`, `season`, `po_number`, `iteam`, `mode_of_shipment`, `order_quantity`, `unit`, `created_at`, `updated_at`) VALUES
	(1, 'rruecker', 'Dr. Yasmine Kessler', '1982-07-06 00:00:00', 'November', '1', 'quia', 'quo', 8, 3, NULL, NULL),
	(2, 'thyatt', 'Franco Schuppe DVM', '1993-05-27 00:00:00', 'July', '9', 'illo', 'impedit', 6, 4, NULL, NULL),
	(3, 'karolann66', 'Mr. Jacinto Huels DDS', '1970-02-17 00:00:00', 'October', '9', 'ducimus', 'amet', 8, 8, NULL, NULL),
	(4, 'trinity60', 'Bell Kuhn II', '2015-04-14 00:00:00', 'November', '3', 'eaque', 'sit', 3, 1, NULL, NULL),
	(5, 'tyundt', 'Caroline Vandervort PhD', '2017-01-28 00:00:00', 'September', '2', 'nulla', 'alias', 9, 8, NULL, NULL),
	(6, 'willa91', 'Rodrigo Cummings', '1977-12-08 00:00:00', 'October', '8', 'aut', 'temporibus', 8, 9, NULL, NULL),
	(7, 'spinka.green', 'Micheal Zboncak', '2008-08-08 00:00:00', 'May', '2', 'unde', 'quod', 6, 0, NULL, NULL),
	(8, 'jayde61', 'Eileen Medhurst IV', '2001-04-19 00:00:00', 'January', '5', 'et', 'aspernatur', 5, 9, NULL, NULL),
	(9, 'ystark', 'Prof. Aubree Harris', '2008-09-04 00:00:00', 'March', '7', 'maiores', 'sequi', 7, 5, NULL, NULL),
	(10, 'evalyn.leffler', 'Dr. Jeffrey Renner III', '2009-10-31 00:00:00', 'January', '9', 'assumenda', 'necessitatibus', 7, 7, NULL, NULL),
	(11, 'pschulist', 'Prof. Jamil Howe', '1971-10-09 00:00:00', 'December', '6', 'dolore', 'repudiandae', 6, 1, NULL, NULL),
	(12, 'darwin28', 'Mr. Lance Rau Jr.', '2003-01-26 00:00:00', 'March', '9', 'voluptatem', 'eveniet', 6, 4, NULL, NULL),
	(13, 'bernice.cruickshank', 'Trudie Crona', '2015-06-27 00:00:00', 'March', '1', 'iusto', 'ipsam', 6, 0, NULL, NULL),
	(14, 'mayer.edwin', 'Cristobal Bergnaum', '2005-03-13 00:00:00', 'June', '4', 'libero', 'rerum', 1, 7, NULL, NULL),
	(15, 'weissnat.cristopher', 'Kailyn Gleichner IV', '1992-12-06 00:00:00', 'January', '3', 'dignissimos', 'nihil', 9, 2, NULL, NULL),
	(16, 'merle99', 'Dr. Emily Torp Sr.', '2009-11-07 00:00:00', 'July', '3', 'amet', 'laboriosam', 1, 1, NULL, NULL),
	(17, 'daija.effertz', 'Ada Ratke', '1986-11-28 00:00:00', 'April', '2', 'recusandae', 'ab', 0, 4, NULL, NULL),
	(18, 'dorris00', 'Roderick Kreiger', '2017-09-19 00:00:00', 'July', '7', 'molestiae', 'laudantium', 6, 1, NULL, NULL),
	(19, 'schuster.bernardo', 'Taylor Rippin', '1994-07-13 00:00:00', 'June', '5', 'totam', 'tempora', 4, 2, NULL, NULL),
	(20, 'franecki.urban', 'Ms. Melyna Ward III', '2015-02-26 00:00:00', 'December', '9', 'qui', 'alias', 9, 9, NULL, NULL),
	(21, 'jalen.bartoletti', 'Lawson Gorczany DVM', '2017-03-07 00:00:00', 'May', '7', 'dolor', 'voluptas', 1, 5, NULL, NULL),
	(22, 'rbeer', 'Cheyenne Batz II', '1972-05-05 00:00:00', 'January', '0', 'officiis', 'ab', 1, 6, NULL, NULL),
	(23, 'rice.hector', 'Wanda Morissette', '1997-10-24 00:00:00', 'January', '7', 'dicta', 'quia', 4, 2, NULL, NULL),
	(24, 'rmurray', 'Mr. Danny Kub DDS', '1978-03-08 00:00:00', 'November', '0', 'quaerat', 'expedita', 7, 7, NULL, NULL),
	(25, 'meda.auer', 'Emiliano Gleason', '2010-01-05 00:00:00', 'November', '1', 'natus', 'dolorem', 4, 3, NULL, NULL),
	(26, 'akunze', 'Coralie Leannon', '1994-12-31 00:00:00', 'April', '8', 'sit', 'sunt', 9, 6, NULL, NULL),
	(27, 'jake83', 'Neal Kshlerin Jr.', '1995-09-16 00:00:00', 'June', '1', 'expedita', 'laboriosam', 1, 8, NULL, NULL),
	(28, 'awindler', 'Cathy Brekke', '2005-11-25 00:00:00', 'January', '5', 'eveniet', 'eius', 7, 8, NULL, NULL),
	(29, 'parker.tierra', 'Dr. Cory Wilkinson', '1991-07-04 00:00:00', 'December', '2', 'sapiente', 'quas', 3, 0, NULL, NULL),
	(30, 'qjones', 'Andy Welch', '2005-11-19 00:00:00', 'December', '3', 'ut', 'iure', 1, 7, NULL, NULL),
	(31, 'simone84', 'Caleigh Shanahan', '2005-05-31 00:00:00', 'December', '4', 'quibusdam', 'laborum', 8, 0, NULL, NULL),
	(32, 'payton37', 'Mrs. Dena Corkery MD', '1987-12-09 00:00:00', 'November', '2', 'reprehenderit', 'atque', 3, 2, NULL, NULL),
	(33, 'favian45', 'Prof. Edythe Halvorson', '1982-09-27 00:00:00', 'July', '7', 'dignissimos', 'sit', 6, 0, NULL, NULL),
	(34, 'dhand', 'Ms. Gina Cremin Jr.', '1988-10-24 00:00:00', 'November', '8', 'quis', 'blanditiis', 1, 1, NULL, NULL),
	(35, 'danial.turner', 'Alene Pollich I', '2010-05-19 00:00:00', 'October', '4', 'modi', 'deserunt', 0, 1, NULL, NULL),
	(36, 'ulittel', 'Orlo Swaniawski', '1974-03-21 00:00:00', 'September', '4', 'est', 'aliquam', 0, 4, NULL, NULL),
	(37, 'jsporer', 'Prof. Norma Jaskolski', '1972-03-08 00:00:00', 'September', '5', 'rem', 'sequi', 5, 0, NULL, NULL),
	(38, 'arno.hackett', 'Prof. Brooks Fisher', '1992-05-26 00:00:00', 'February', '6', 'aut', 'minus', 4, 9, NULL, NULL),
	(39, 'jaron69', 'Bailey Fahey', '2011-08-04 00:00:00', 'December', '5', 'omnis', 'et', 7, 8, NULL, NULL),
	(40, 'luther.kiehn', 'Caesar Denesik', '1973-03-09 00:00:00', 'July', '2', 'aspernatur', 'sit', 4, 7, NULL, NULL),
	(41, 'zlehner', 'Miss Clementine Nolan IV', '1977-11-12 00:00:00', 'April', '1', 'excepturi', 'vitae', 0, 8, NULL, NULL),
	(42, 'marlen11', 'Prof. Einar Hilpert', '1990-09-28 00:00:00', 'July', '2', 'eos', 'est', 6, 2, NULL, NULL),
	(43, 'mosciski.sandrine', 'Kyler Koss Jr.', '2000-02-21 00:00:00', 'March', '6', 'quis', 'et', 4, 2, NULL, NULL),
	(44, 'terry.andreane', 'Brenna Howell', '1986-12-25 00:00:00', 'May', '4', 'atque', 'rerum', 3, 4, NULL, NULL),
	(45, 'ufriesen', 'Lori Padberg', '1978-09-02 00:00:00', 'December', '3', 'consequatur', 'quia', 3, 0, NULL, NULL),
	(46, 'armani55', 'Lera Von', '2004-12-25 00:00:00', 'May', '6', 'quia', 'veritatis', 2, 6, NULL, NULL),
	(47, 'abernathy.dave', 'Cielo Kertzmann', '1993-12-20 00:00:00', 'June', '2', 'at', 'voluptatem', 9, 4, NULL, NULL),
	(48, 'davion.cummerata', 'Dr. Berta Terry DVM', '1977-06-29 00:00:00', 'December', '2', 'placeat', 'culpa', 8, 7, NULL, NULL),
	(49, 'santa.kshlerin', 'Ivah Ziemann', '2014-07-12 00:00:00', 'September', '7', 'ad', 'quo', 2, 6, NULL, NULL),
	(50, 'jonathan.kovacek', 'Ms. Birdie Goodwin Jr.', '1978-06-23 00:00:00', 'April', '0', 'et', 'nihil', 1, 6, NULL, NULL),
	(51, 'amcdermott', 'Rigoberto Hackett PhD', '2012-08-01 00:00:00', 'June', '6', 'iusto', 'ut', 4, 1, NULL, NULL),
	(52, 'lakin.rodrigo', 'Sigrid Bartell DVM', '1976-08-03 00:00:00', 'June', '0', 'reiciendis', 'sint', 1, 5, NULL, NULL),
	(53, 'orlo.kshlerin', 'Devonte Harvey', '2007-04-20 00:00:00', 'March', '0', 'sit', 'veritatis', 6, 2, NULL, NULL),
	(54, 'breanna.collins', 'Michelle Padberg', '1980-10-08 00:00:00', 'October', '2', 'ut', 'similique', 6, 7, NULL, NULL),
	(55, 'emmerich.mikayla', 'Prof. Arvilla Witting', '1984-02-18 00:00:00', 'August', '6', 'praesentium', 'tempore', 9, 9, NULL, NULL),
	(56, 'wkirlin', 'Eddie Bauch', '1972-04-01 00:00:00', 'March', '9', 'assumenda', 'facere', 8, 8, NULL, NULL),
	(57, 'brady87', 'Raquel Hayes', '1982-12-24 00:00:00', 'October', '8', 'nesciunt', 'eos', 9, 3, NULL, NULL),
	(58, 'xchamplin', 'Mr. Jack Feil V', '1987-05-07 00:00:00', 'July', '2', 'rerum', 'voluptas', 3, 0, NULL, NULL),
	(59, 'mcglynn.dean', 'Ellsworth Maggio MD', '1978-03-21 00:00:00', 'June', '2', 'voluptatum', 'iusto', 9, 6, NULL, NULL),
	(60, 'price49', 'Hettie Fadel', '1972-07-06 00:00:00', 'September', '2', 'dolore', 'repudiandae', 9, 7, NULL, NULL),
	(61, 'lebsack.johnathan', 'Keyon Marquardt', '2013-05-02 00:00:00', 'October', '4', 'voluptas', 'ipsa', 0, 0, NULL, NULL),
	(62, 'muriel91', 'Miss Evelyn O\'Keefe', '1984-10-09 00:00:00', 'December', '2', 'voluptate', 'et', 7, 5, NULL, NULL),
	(63, 'cummings.fannie', 'Mr. Isai Jast V', '2014-11-25 00:00:00', 'September', '9', 'deserunt', 'delectus', 3, 6, NULL, NULL),
	(64, 'jamel11', 'Loren Johnston', '2007-01-01 00:00:00', 'October', '3', 'qui', 'quo', 8, 1, NULL, NULL),
	(65, 'prosacco.marlon', 'Alessandra Lakin', '2017-10-08 00:00:00', 'November', '5', 'porro', 'illum', 0, 4, NULL, NULL),
	(66, 'eichmann.ford', 'Bianka Reichel', '1992-03-26 00:00:00', 'May', '5', 'dolorem', 'magni', 3, 8, NULL, NULL),
	(67, 'cristopher88', 'Mr. Aaron Hettinger PhD', '1994-10-25 00:00:00', 'March', '6', 'magnam', 'nisi', 3, 0, NULL, NULL),
	(68, 'jast.estevan', 'Kellie Terry DDS', '1999-02-26 00:00:00', 'May', '0', 'sed', 'facere', 2, 4, NULL, NULL),
	(69, 'ibechtelar', 'Prof. Lilly Reinger', '1998-05-06 00:00:00', 'August', '6', 'ut', 'illo', 5, 6, NULL, NULL),
	(70, 'noemie.kemmer', 'Lelia Fay', '2001-12-04 00:00:00', 'September', '1', 'dolores', 'facilis', 3, 7, NULL, NULL),
	(71, 'jmcglynn', 'Kiley Will', '1989-08-07 00:00:00', 'September', '4', 'fuga', 'omnis', 4, 4, NULL, NULL),
	(72, 'freda43', 'Mrs. Kayli Botsford', '2004-07-01 00:00:00', 'December', '7', 'nostrum', 'earum', 6, 7, NULL, NULL),
	(73, 'hansen.sonny', 'Kiley Herman', '1984-08-10 00:00:00', 'November', '9', 'ut', 'nobis', 9, 1, NULL, NULL),
	(74, 'ileannon', 'Zola Schoen', '1977-01-23 00:00:00', 'July', '3', 'molestiae', 'consectetur', 8, 6, NULL, NULL),
	(75, 'brianne38', 'Ursula Medhurst', '1989-10-14 00:00:00', 'January', '0', 'quibusdam', 'animi', 8, 4, NULL, NULL),
	(76, 'rwilkinson', 'Uriel Braun', '2009-01-10 00:00:00', 'February', '2', 'non', 'doloribus', 3, 4, NULL, NULL),
	(77, 'haleigh36', 'Prof. Foster Kutch', '1977-10-07 00:00:00', 'May', '3', 'dolores', 'sint', 3, 5, NULL, NULL),
	(78, 'general22', 'Howell Jenkins', '2008-02-12 00:00:00', 'September', '2', 'non', 'et', 6, 1, NULL, NULL),
	(79, 'ricky.mills', 'Sister Strosin', '1980-04-25 00:00:00', 'March', '4', 'modi', 'omnis', 4, 3, NULL, NULL),
	(80, 'powlowski.estel', 'Miss Dandre O\'Keefe', '2011-07-28 00:00:00', 'January', '2', 'cupiditate', 'impedit', 4, 3, NULL, NULL),
	(81, 'lemke.javon', 'Prof. Jaylon Thompson Sr.', '1973-04-06 00:00:00', 'September', '1', 'rerum', 'dolorem', 6, 7, NULL, NULL),
	(82, 'kaylin.monahan', 'Gracie Abshire', '1976-08-17 00:00:00', 'October', '7', 'porro', 'distinctio', 4, 9, NULL, NULL),
	(83, 'kunze.ansel', 'Rick Schuppe', '1990-09-21 00:00:00', 'November', '1', 'aliquam', 'voluptas', 5, 3, NULL, NULL),
	(84, 'wernser', 'Rhoda Morissette', '1986-10-27 00:00:00', 'January', '9', 'sed', 'et', 7, 5, NULL, NULL),
	(85, 'goodwin.waldo', 'Pat Cassin', '1995-01-20 00:00:00', 'July', '1', 'officia', 'officia', 3, 4, NULL, NULL),
	(86, 'irogahn', 'Kali Brekke', '1994-01-07 00:00:00', 'April', '8', 'atque', 'sunt', 3, 4, NULL, NULL),
	(87, 'vdonnelly', 'Prof. Deshaun Cummerata DDS', '1994-04-02 00:00:00', 'July', '0', 'ab', 'dicta', 7, 8, NULL, NULL),
	(88, 'cvandervort', 'Amari Mohr', '1976-02-28 00:00:00', 'July', '2', 'ut', 'optio', 8, 0, NULL, NULL),
	(89, 'hansen.carlee', 'Miss Reba Steuber IV', '2004-05-13 00:00:00', 'October', '2', 'quas', 'nisi', 5, 5, NULL, NULL),
	(90, 'caesar95', 'Wendy Grant', '2012-07-21 00:00:00', 'March', '2', 'tempore', 'hic', 9, 3, NULL, NULL),
	(91, 'poberbrunner', 'Colin Schuppe', '1987-04-27 00:00:00', 'March', '8', 'qui', 'et', 9, 2, NULL, NULL),
	(92, 'justine68', 'Kristian Will DDS', '1973-04-21 00:00:00', 'August', '7', 'id', 'id', 9, 2, NULL, NULL),
	(93, 'ywyman', 'Bulah Bauch', '1988-09-16 00:00:00', 'February', '8', 'sit', 'sit', 3, 6, NULL, NULL),
	(94, 'laurie35', 'Wilford Mraz', '1998-07-01 00:00:00', 'September', '3', 'commodi', 'ducimus', 6, 7, NULL, NULL),
	(95, 'pacocha.jade', 'Ms. Josephine Goldner', '1970-05-09 00:00:00', 'October', '6', 'sunt', 'vero', 3, 6, NULL, NULL),
	(96, 'jonathon70', 'Mrs. Bethany Kessler', '1998-07-10 00:00:00', 'May', '2', 'fugit', 'cupiditate', 5, 7, NULL, NULL),
	(97, 'alysa.harvey', 'Dennis Russel', '1981-10-02 00:00:00', 'January', '8', 'dolorem', 'est', 6, 5, NULL, NULL),
	(98, 'linda14', 'Arne Armstrong V', '1970-04-25 00:00:00', 'October', '6', 'quia', 'error', 7, 4, NULL, NULL),
	(99, 'freddy.thiel', 'Dax Haley', '1984-12-01 00:00:00', 'May', '3', 'nesciunt', 'ducimus', 2, 9, NULL, NULL),
	(100, 'bsporer', 'Prof. Raheem Hermann PhD', '2010-01-24 00:00:00', 'September', '9', 'asperiores', 'ut', 5, 8, NULL, NULL),
	(101, 'fasdfasf', 'asfdasdfsd', '2017-11-02 00:00:00', 'dscsd', '20', '32', 'xcsdcs', 17, 20, '2017-11-19 13:14:47', '2017-11-19 13:14:47'),
	(102, 'Md. Rabiul Islam', 'Md. Rabiul Islam', '2017-11-01 00:00:00', 'may', '2', '32', 'xcsdcs', 23, 2, '2017-11-19 14:42:04', '2017-11-19 14:42:04'),
	(103, 'Md. Rabiul Islam', 'Md. Rabiul Islam', '2017-11-03 00:00:00', 'Summer', '34', '343', 'xcsdcs', 34, 34, '2017-11-19 16:10:14', '2017-11-19 16:10:14'),
	(104, 'fdfd', 'dsfdsf', '2017-11-08 00:00:00', 'Summer', '34', '343', 'dafsasd', 34, 34, '2017-11-19 16:22:28', '2017-11-19 16:22:28');
/*!40000 ALTER TABLE `exports` ENABLE KEYS */;

-- Dumping structure for table beka.imports
CREATE TABLE IF NOT EXISTS `imports` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `suppliers_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pi_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pi_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `fabric_compsion` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fabrics_width` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iteam` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table beka.imports: ~100 rows (approximately)
DELETE FROM `imports`;
/*!40000 ALTER TABLE `imports` DISABLE KEYS */;
INSERT INTO `imports` (`id`, `suppliers_name`, `pi_number`, `pi_date`, `fabric_compsion`, `fabrics_width`, `iteam`, `quantity`, `unit`, `created_at`, `updated_at`) VALUES
	(1, 'marks.micaela', '0', '1978-12-04 00:00:00', 'ut', '8', 'aspernatur', 0, 5, NULL, NULL),
	(2, 'chahn', '1', '1999-07-11 00:00:00', 'autem', '0', 'harum', 2, 8, NULL, NULL),
	(3, 'domenico18', '1', '1982-12-09 00:00:00', 'fugit', '9', 'dolores', 0, 1, NULL, NULL),
	(4, 'muriel06', '0', '1971-06-08 00:00:00', 'sit', '7', 'soluta', 8, 9, NULL, NULL),
	(5, 'xjohnson', '8', '1989-10-10 00:00:00', 'ea', '6', 'doloremque', 2, 6, NULL, NULL),
	(6, 'fdavis', '5', '2004-01-31 00:00:00', 'perspiciatis', '5', 'veritatis', 5, 7, NULL, NULL),
	(7, 'wiegand.katelin', '8', '1970-01-20 00:00:00', 'excepturi', '3', 'magni', 9, 3, NULL, NULL),
	(8, 'stroman.melvina', '7', '2000-11-26 00:00:00', 'nobis', '4', 'qui', 7, 4, NULL, NULL),
	(9, 'snicolas', '3', '1995-09-24 00:00:00', 'eos', '1', 'perferendis', 2, 2, NULL, NULL),
	(10, 'windler.rozella', '3', '1997-07-29 00:00:00', 'sequi', '9', 'excepturi', 0, 4, NULL, NULL),
	(11, 'julia27', '8', '1986-08-28 00:00:00', 'iure', '3', 'illum', 1, 0, NULL, NULL),
	(12, 'shaun.okuneva', '4', '1984-08-04 00:00:00', 'in', '1', 'debitis', 8, 6, NULL, NULL),
	(13, 'lesch.vito', '4', '2004-07-13 00:00:00', 'omnis', '9', 'sunt', 8, 7, NULL, NULL),
	(14, 'fern65', '9', '1982-03-16 00:00:00', 'non', '5', 'rem', 8, 3, NULL, NULL),
	(15, 'conner.zulauf', '6', '2003-10-24 00:00:00', 'nesciunt', '7', 'deserunt', 2, 8, NULL, NULL),
	(16, 'ghand', '8', '1998-12-06 00:00:00', 'quia', '6', 'reprehenderit', 1, 0, NULL, NULL),
	(17, 'metz.kiarra', '2', '1990-06-09 00:00:00', 'sit', '8', 'ducimus', 6, 7, NULL, NULL),
	(18, 'khalid92', '3', '1983-05-17 00:00:00', 'deleniti', '4', 'et', 5, 0, NULL, NULL),
	(19, 'fern83', '0', '1999-06-16 00:00:00', 'asperiores', '5', 'et', 6, 6, NULL, NULL),
	(20, 'cmcglynn', '2', '2013-05-09 00:00:00', 'omnis', '6', 'fugit', 3, 2, NULL, NULL),
	(21, 'lindgren.vanessa', '4', '1983-02-11 00:00:00', 'fugit', '5', 'asperiores', 6, 7, NULL, NULL),
	(22, 'solon.cremin', '2', '2010-02-06 00:00:00', 'non', '4', 'ut', 0, 2, NULL, NULL),
	(23, 'leslie.trantow', '0', '2000-07-15 00:00:00', 'cumque', '1', 'in', 6, 9, NULL, NULL),
	(24, 'zblanda', '0', '2009-05-15 00:00:00', 'veniam', '1', 'ipsa', 1, 6, NULL, NULL),
	(25, 'chaz51', '6', '2009-10-30 00:00:00', 'sed', '4', 'eligendi', 4, 6, NULL, NULL),
	(26, 'wwintheiser', '4', '2008-06-29 00:00:00', 'ipsam', '7', 'qui', 6, 5, NULL, NULL),
	(27, 'wisozk.elyse', '1', '1998-11-12 00:00:00', 'error', '5', 'et', 2, 1, NULL, NULL),
	(28, 'brielle.kilback', '1', '2008-01-03 00:00:00', 'optio', '7', 'numquam', 8, 3, NULL, NULL),
	(29, 'sheathcote', '9', '1997-06-20 00:00:00', 'dicta', '3', 'quo', 5, 8, NULL, NULL),
	(30, 'felton.pacocha', '5', '2014-08-03 00:00:00', 'corporis', '1', 'quia', 1, 4, NULL, NULL),
	(31, 'udubuque', '6', '1975-11-04 00:00:00', 'rerum', '0', 'doloremque', 3, 5, NULL, NULL),
	(32, 'abernathy.zaria', '2', '1978-04-11 00:00:00', 'expedita', '0', 'est', 6, 3, NULL, NULL),
	(33, 'jfahey', '2', '2007-03-23 00:00:00', 'et', '8', 'assumenda', 6, 6, NULL, NULL),
	(34, 'kpfannerstill', '4', '2004-07-08 00:00:00', 'recusandae', '4', 'corporis', 1, 4, NULL, NULL),
	(35, 'jairo06', '0', '1973-04-16 00:00:00', 'pariatur', '1', 'omnis', 5, 2, NULL, NULL),
	(36, 'aiden.ruecker', '3', '2009-04-10 00:00:00', 'et', '8', 'dolor', 5, 1, NULL, NULL),
	(37, 'qkovacek', '8', '1990-03-08 00:00:00', 'omnis', '1', 'voluptates', 0, 0, NULL, NULL),
	(38, 'karen.price', '9', '1999-01-17 00:00:00', 'impedit', '1', 'itaque', 3, 3, NULL, NULL),
	(39, 'adeline93', '7', '2001-01-15 00:00:00', 'veniam', '3', 'quaerat', 9, 5, NULL, NULL),
	(40, 'grosenbaum', '6', '1987-04-08 00:00:00', 'quia', '6', 'esse', 3, 3, NULL, NULL),
	(41, 'douglas.lindgren', '6', '2017-07-17 00:00:00', 'similique', '0', 'qui', 4, 5, NULL, NULL),
	(42, 'jayda94', '0', '2014-05-18 00:00:00', 'nihil', '1', 'veniam', 0, 9, NULL, NULL),
	(43, 'sanford.maurine', '6', '1985-08-26 00:00:00', 'sequi', '0', 'ut', 6, 9, NULL, NULL),
	(44, 'tavares74', '1', '1988-07-03 00:00:00', 'ducimus', '9', 'non', 2, 8, NULL, NULL),
	(45, 'jailyn.schroeder', '3', '1986-12-13 00:00:00', 'deleniti', '3', 'laudantium', 4, 5, NULL, NULL),
	(46, 'oebert', '4', '1974-09-21 00:00:00', 'est', '6', 'rerum', 1, 6, NULL, NULL),
	(47, 'alessia55', '9', '1988-04-21 00:00:00', 'dolores', '9', 'qui', 3, 3, NULL, NULL),
	(48, 'estella.collins', '8', '1982-05-31 00:00:00', 'et', '1', 'esse', 7, 6, NULL, NULL),
	(49, 'rosemarie16', '3', '2007-04-18 00:00:00', 'minima', '2', 'sed', 9, 0, NULL, NULL),
	(50, 'batz.eugene', '9', '1986-07-24 00:00:00', 'rerum', '0', 'sed', 0, 1, NULL, NULL),
	(51, 'carroll.terrell', '7', '1989-09-30 00:00:00', 'eius', '0', 'quam', 5, 1, NULL, NULL),
	(52, 'jany51', '5', '1981-01-12 00:00:00', 'placeat', '2', 'id', 0, 6, NULL, NULL),
	(53, 'blick.deon', '2', '1970-08-04 00:00:00', 'dolorum', '1', 'quas', 1, 5, NULL, NULL),
	(54, 'katherine06', '4', '1973-10-04 00:00:00', 'voluptatum', '5', 'et', 0, 3, NULL, NULL),
	(55, 'mustafa35', '5', '1982-03-30 00:00:00', 'aliquam', '2', 'magnam', 9, 4, NULL, NULL),
	(56, 'gulgowski.dudley', '3', '2009-01-16 00:00:00', 'est', '2', 'et', 9, 7, NULL, NULL),
	(57, 'xmetz', '1', '1999-09-08 00:00:00', 'iste', '4', 'assumenda', 5, 5, NULL, NULL),
	(58, 'carroll.velva', '1', '1979-09-11 00:00:00', 'ut', '7', 'sed', 3, 1, NULL, NULL),
	(59, 'kale38', '7', '1975-08-26 00:00:00', 'qui', '2', 'facilis', 3, 2, NULL, NULL),
	(60, 'vkovacek', '5', '2003-10-14 00:00:00', 'voluptatum', '8', 'iste', 5, 4, NULL, NULL),
	(61, 'ephraim24', '6', '1983-05-12 00:00:00', 'ex', '9', 'dolores', 7, 0, NULL, NULL),
	(62, 'daniel.kaley', '9', '2010-06-06 00:00:00', 'voluptatem', '2', 'id', 8, 8, NULL, NULL),
	(63, 'greta.durgan', '1', '2000-09-11 00:00:00', 'quae', '7', 'eligendi', 0, 1, NULL, NULL),
	(64, 'ernestina58', '6', '1973-05-30 00:00:00', 'doloribus', '8', 'vero', 1, 3, NULL, NULL),
	(65, 'hoeger.jordy', '9', '1991-05-21 00:00:00', 'sit', '7', 'qui', 3, 1, NULL, NULL),
	(66, 'pheathcote', '8', '1997-01-19 00:00:00', 'molestiae', '5', 'nisi', 4, 1, NULL, NULL),
	(67, 'annette65', '7', '2014-01-09 00:00:00', 'aut', '6', 'culpa', 3, 0, NULL, NULL),
	(68, 'wiza.jacques', '8', '1987-03-27 00:00:00', 'amet', '3', 'qui', 7, 8, NULL, NULL),
	(69, 'dayton.hartmann', '8', '2016-09-21 00:00:00', 'illum', '0', 'natus', 7, 7, NULL, NULL),
	(70, 'rosalee86', '0', '1989-03-25 00:00:00', 'possimus', '3', 'necessitatibus', 7, 6, NULL, NULL),
	(71, 'whitney.lakin', '5', '1978-07-21 00:00:00', 'rerum', '1', 'dolores', 3, 7, NULL, NULL),
	(72, 'tom70', '2', '1985-01-28 00:00:00', 'sit', '2', 'sint', 7, 6, NULL, NULL),
	(73, 'dave29', '6', '1976-11-26 00:00:00', 'eaque', '1', 'quidem', 9, 6, NULL, NULL),
	(74, 'jack05', '7', '1979-06-15 00:00:00', 'consequatur', '9', 'aliquam', 0, 0, NULL, NULL),
	(75, 'hrempel', '5', '2017-10-13 00:00:00', 'vel', '9', 'quae', 4, 2, NULL, NULL),
	(76, 'krystel.osinski', '1', '1981-12-21 00:00:00', 'consequuntur', '8', 'error', 5, 3, NULL, NULL),
	(77, 'nmiller', '0', '1980-09-30 00:00:00', 'perferendis', '9', 'aliquid', 5, 2, NULL, NULL),
	(78, 'fschuppe', '4', '2010-07-25 00:00:00', 'ut', '1', 'quae', 3, 4, NULL, NULL),
	(79, 'frami.emmy', '8', '1995-09-03 00:00:00', 'corporis', '7', 'temporibus', 1, 6, NULL, NULL),
	(80, 'schowalter.janick', '6', '2015-12-29 00:00:00', 'aliquid', '3', 'est', 0, 0, NULL, NULL),
	(81, 'clarissa.wunsch', '1', '2001-07-20 00:00:00', 'veritatis', '7', 'tempora', 6, 7, NULL, NULL),
	(82, 'stokes.jason', '5', '1978-09-11 00:00:00', 'quis', '2', 'quos', 0, 9, NULL, NULL),
	(83, 'ghamill', '9', '1974-02-25 00:00:00', 'nisi', '1', 'architecto', 4, 4, NULL, NULL),
	(84, 'mjohnston', '1', '1995-11-22 00:00:00', 'voluptatem', '1', 'dignissimos', 8, 0, NULL, NULL),
	(85, 'hahn.brianne', '0', '1972-03-02 00:00:00', 'voluptatem', '8', 'repellendus', 2, 1, NULL, NULL),
	(86, 'jeffry00', '1', '1994-12-01 00:00:00', 'voluptas', '4', 'ullam', 1, 6, NULL, NULL),
	(87, 'lexi.fadel', '3', '1987-08-23 00:00:00', 'id', '5', 'tenetur', 6, 1, NULL, NULL),
	(88, 'jaime.reilly', '2', '1983-01-21 00:00:00', 'aut', '2', 'nihil', 8, 7, NULL, NULL),
	(89, 'dhilll', '8', '1971-06-02 00:00:00', 'quia', '9', 'voluptatem', 5, 4, NULL, NULL),
	(90, 'billy78', '1', '2012-05-24 00:00:00', 'vel', '5', 'aspernatur', 2, 4, NULL, NULL),
	(91, 'luz04', '3', '1992-09-17 00:00:00', 'consequatur', '0', 'qui', 2, 8, NULL, NULL),
	(92, 'sandrine.cummerata', '4', '2005-11-23 00:00:00', 'delectus', '4', 'qui', 1, 5, NULL, NULL),
	(93, 'jovanny73', '1', '2011-11-28 00:00:00', 'tenetur', '9', 'et', 9, 9, NULL, NULL),
	(94, 'matilde10', '2', '1982-03-27 00:00:00', 'voluptatem', '4', 'quo', 2, 6, NULL, NULL),
	(95, 'tressie33', '0', '1993-11-01 00:00:00', 'impedit', '6', 'incidunt', 8, 5, NULL, NULL),
	(96, 'jbailey', '7', '2005-10-17 00:00:00', 'reprehenderit', '4', 'est', 2, 8, NULL, NULL),
	(97, 'mueller.luigi', '1', '1986-03-12 00:00:00', 'animi', '2', 'est', 8, 1, NULL, NULL),
	(98, 'myrl31', '5', '1979-03-07 00:00:00', 'impedit', '0', 'architecto', 6, 9, NULL, NULL),
	(99, 'antonette.shanahan', '2', '2005-07-02 00:00:00', 'ratione', '4', 'et', 3, 5, NULL, NULL),
	(100, 'cummings.noelia', '8', '1984-08-15 00:00:00', 'non', '7', 'nostrum', 2, 0, NULL, NULL);
/*!40000 ALTER TABLE `imports` ENABLE KEYS */;

-- Dumping structure for table beka.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table beka.migrations: ~9 rows (approximately)
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2017_10_25_155659_add_last_login_into_users_table', 1),
	(4, '2017_10_25_165609_create_sessions_table', 1),
	(5, '2017_11_15_113935_create_exports_table', 1),
	(6, '2017_11_15_114011_create_imports_table', 1),
	(7, '2017_11_15_115205_create_purchase_table', 1),
	(8, '2017_11_15_132648_create_color_table', 1),
	(9, '2017_11_16_114716_create_colorables_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table beka.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table beka.password_resets: ~0 rows (approximately)
DELETE FROM `password_resets`;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table beka.purchases
CREATE TABLE IF NOT EXISTS `purchases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `po_number` int(11) NOT NULL,
  `lc_number` int(11) NOT NULL,
  `season` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `style_number` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `purchases_po_number_unique` (`po_number`),
  UNIQUE KEY `purchases_lc_number_unique` (`lc_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table beka.purchases: ~0 rows (approximately)
DELETE FROM `purchases`;
/*!40000 ALTER TABLE `purchases` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchases` ENABLE KEYS */;

-- Dumping structure for table beka.sessions
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  UNIQUE KEY `sessions_id_unique` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table beka.sessions: ~0 rows (approximately)
DELETE FROM `sessions`;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;

-- Dumping structure for table beka.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'accounts',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table beka.users: ~5 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `remember_token`, `created_at`, `updated_at`, `last_login`) VALUES
	(1, 'Meta Lang', 'akuhic@example.com', '$2y$10$pr2BLGLNWSKbLPfACkDdGOeMytj3fqfCvxzvImTsuvzrLxpUJa34G', 'accounts', 'e331cyJStC9kyoh3WNX4wc3qHUBRdopujxh4Q6XqnT8cSDj5mQzvPvICKRG7', '2017-11-16 12:48:22', '2017-11-19 11:17:09', '2017-11-19 11:17:09'),
	(2, 'Dr. Ansley Monahan', 'craig.gulgowski@example.org', '$2y$10$pr2BLGLNWSKbLPfACkDdGOeMytj3fqfCvxzvImTsuvzrLxpUJa34G', 'accounts', '0ul29ZC8U5', '2017-11-16 12:48:22', '2017-11-16 12:48:22', NULL),
	(3, 'Kacie Hilpert', 'glang@example.net', '$2y$10$pr2BLGLNWSKbLPfACkDdGOeMytj3fqfCvxzvImTsuvzrLxpUJa34G', 'accounts', 'gSFR3Bf7NI', '2017-11-16 12:48:23', '2017-11-16 12:48:23', NULL),
	(4, 'Prof. Emmanuelle Haag Jr.', 'dejon.murazik@example.net', '$2y$10$pr2BLGLNWSKbLPfACkDdGOeMytj3fqfCvxzvImTsuvzrLxpUJa34G', 'accounts', 'BdHTU6RZIc', '2017-11-16 12:48:23', '2017-11-16 12:48:23', NULL),
	(5, 'Prof. Kyra Bayer', 'arnoldo98@example.com', '$2y$10$pr2BLGLNWSKbLPfACkDdGOeMytj3fqfCvxzvImTsuvzrLxpUJa34G', 'accounts', 'wHuFvQunOC', '2017-11-16 12:48:23', '2017-11-16 12:48:23', NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
