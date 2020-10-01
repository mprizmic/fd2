-- phpMyAdmin SQL Dump
-- version 3.3.7deb7
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 16-09-2019 a las 14:45:50
-- Versión del servidor: 5.1.73
-- Versión de PHP: 5.4.45-1~dotdeb+6.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT=0;
START TRANSACTION;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `Fd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autoridad`
--

DROP TABLE IF EXISTS `autoridad`;
CREATE TABLE IF NOT EXISTS `autoridad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cargo_id` int(11) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) NOT NULL,
  `actualizado` datetime NOT NULL,
  `creado` datetime NOT NULL,
  `celular` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `te_particular` varchar(50) DEFAULT NULL,
  `inicio_mandato` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_14FFC077813AC380` (`cargo_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=402 ;

--
-- Volcar la base de datos para la tabla `autoridad`
--

INSERT INTO `autoridad` (`id`, `cargo_id`, `nombre`, `apellido`, `actualizado`, `creado`, `celular`, `email`, `te_particular`, `inicio_mandato`) VALUES
(57, 1, 'Marianela', 'PAROLA', '2018-08-28 09:06:53', '2015-12-22 15:01:27', '1531650632', 'marianela.parola@bue.edu.ar', '4813-7232', NULL),
(58, NULL, ' Marcela', 'PELANDA', '2016-02-17 16:17:50', '2015-12-22 15:01:27', '1550637833', 'marcelapelanda@gmail.com', '4545-5732', NULL),
(59, NULL, ' Alejandra', 'FERNANDEZ', '2017-03-20 15:55:04', '2015-12-22 15:01:27', '1553463861', 'ale_fernandez2@yahoo.com.ar', '4782-6633', NULL),
(60, NULL, ' Veronica', 'COLLAZO BLANCHOD', '2017-10-09 10:01:07', '2015-12-22 15:01:27', '154065-5573', 'verocoll12@gmail.com', '', NULL),
(61, NULL, 'Daniel', 'CIBEIRA', '2017-03-20 15:55:19', '2015-12-22 15:01:27', '1555656838', 'danielcibeira@yahoo.com.ar', '4567-7177', NULL),
(62, NULL, 'Liliana', 'SEIJAL', '2017-10-09 10:04:54', '2015-12-22 15:01:27', '1550205822', 'lilianasei@hotmail.com', '4632-0403', NULL),
(63, NULL, ' Claudia', 'FADÓN', '2017-10-09 10:46:07', '2015-12-22 15:01:27', '15-6419-5168', 'claudiaf61@gmail.com', '', NULL),
(64, NULL, 'Irene', 'SCHEINER', '2018-08-28 09:46:18', '2015-12-22 15:01:27', '15-6362-4525', 'ireitalia@yahoo.com', '4776-1822', NULL),
(65, NULL, ' Gabriela', 'BERTON', '2016-05-13 08:32:11', '2015-12-22 15:01:27', '15-4098-0134', 'gabrielaberton@hotmail.com', '4981-9834', NULL),
(67, 226, 'Diego', 'GONZÁLEZ TIZÓN', '2018-08-28 09:36:48', '2015-12-22 15:01:27', '1559548576', 'djgt39@hotmail.com', NULL, NULL),
(68, 2, 'Hugo', 'DEL BARRIO', '2019-05-15 07:06:05', '2015-12-22 15:01:27', '15-3194-6721', 'hugo_delbarrio@yahoo.com.ar', '43722205', NULL),
(69, 13, 'Mariano', 'PELTZ', '2018-08-28 09:02:27', '2015-12-22 15:01:58', '1556445504', 'mariano.peltz@bue.edu.ar', '4582-2101', NULL),
(70, NULL, 'Raquel', 'PAPALARDO', '2017-09-06 10:29:49', '2015-12-22 15:01:58', '15 5755 8547', 'raquelpapalardo@yahoo.com.ar', '4954-8547', NULL),
(72, NULL, 'Luis', 'SERVILLA', '2019-04-11 07:23:29', '2015-12-22 15:01:58', '1532035959', 'luiservilla@gmail.com', NULL, NULL),
(73, 17, 'María', 'OJEA', '2018-08-28 09:07:38', '2015-12-22 15:01:58', '1564706920', 'mfojea2000@yahoo.com.ar', NULL, NULL),
(74, NULL, 'MARCELO', 'AMÉN', '2017-04-10 10:22:28', '2015-12-22 15:01:58', '11- 5839-8388', 'amenmarcel@hotmail.com', '4902-1241', NULL),
(75, 192, 'Laura', 'ARAMBEL', '2018-08-28 11:35:39', '2015-12-22 15:01:58', '1564620758', 'lauarambel@hotmail.com', '4981 3230', NULL),
(76, NULL, 'Daniel', 'ALTAMIRANDA', '2018-03-02 12:07:04', '2015-12-22 15:01:58', '15 6294 9456', 'dalt_1@yahoo.com.ar', '4921 2948', NULL),
(77, NULL, 'Lilian', 'ENRIQUEZ', '2018-10-02 08:50:32', '2015-12-22 15:01:58', '1561594841', 'lilianenriquez@gmail.com', '4308 6599', NULL),
(78, NULL, 'Alicia', 'RACTORET', '2019-07-16 06:25:39', '2015-12-22 15:02:08', '1555092510', 'aliciaractoret@yahoo.com.ar', '6380-6516', NULL),
(82, NULL, ' ELIZABETH', 'REYMUNDI', '2016-09-08 16:48:09', '2015-12-22 15:02:08', '1556551159', 'bethy171@gmail.com', '', NULL),
(83, 26, 'Alba', 'GUERRA', '2018-08-28 12:49:44', '2015-12-22 15:02:08', '1561232341', 'albaguerra@live.com.ar', NULL, NULL),
(84, 28, 'Pía de las Mercedes', 'REY', '2018-08-28 12:50:26', '2015-12-22 15:02:08', '1567145711', 'piamrey@yahoo.com.ar', '4942-4604', NULL),
(86, NULL, ' HILDA CRISTINA', 'SUÁREZ', '2016-07-15 11:29:00', '2015-12-22 15:02:08', '155737-7760', 'losbiologos@gmail.com', '4642-6438', NULL),
(87, NULL, 'GRACIELA', 'MOLDES', '2017-02-17 09:18:37', '2015-12-22 15:02:08', '1553849102', 'profesora.moldes@gmail.com', NULL, NULL),
(88, NULL, 'Silvia', 'AMAYA', '2019-04-26 08:48:23', '2015-12-22 15:02:08', '1557684201', 'samayarabic@yahoo.com.ar', NULL, NULL),
(89, NULL, 'Gabriela', 'MELLONI', '2017-03-07 14:14:47', '2015-12-22 15:02:17', '155927-8353', 'gabrielamel@hotmail.com', '4903-7938', NULL),
(91, 35, 'Marina', 'RIZZO', '2015-12-22 15:02:17', '2015-12-22 15:02:17', '1565125227', 'marinalrizzo@gmail.com', '', NULL),
(92, NULL, 'Etel', 'TUCHIN', '2017-10-09 11:04:07', '2015-12-22 15:02:17', '1562863952', 'etelanahi58@gmail.com', '4432-7015', NULL),
(93, NULL, 'Ana', 'URSI', '2018-08-28 12:24:58', '2015-12-22 15:02:17', '1536719149', 'anaursi@hotmail.com', '', NULL),
(94, 38, 'Gabriela', 'BOTTA', '2015-12-22 15:02:17', '2015-12-22 15:02:17', '1568261282', 'gsbotta@gmail.com', '', NULL),
(95, 39, 'Silvina', 'ALTVARG', '2018-10-16 09:24:17', '2015-12-22 15:02:17', '1541574059', 'silvinamariana1971@hotmail.com.ar', NULL, NULL),
(96, 40, 'Marcelo', 'SORIA', '2015-12-22 15:02:17', '2015-12-22 15:02:17', '1549490491', 'emarcelosoria@gmail.com', '', NULL),
(97, NULL, 'ANALIA', 'GOMEZ', '2018-08-28 09:58:19', '2015-12-22 15:02:17', NULL, NULL, NULL, '2018-07-01'),
(98, 34, 'Claudia', 'CALIÓ', '2019-03-06 08:41:23', '2015-12-22 15:02:17', '1560084350', 'profcalio@gmail.com', NULL, NULL),
(99, NULL, 'Gabriela', 'SLAVICH', '2017-05-16 16:47:17', '2015-12-22 15:03:37', '15-6725-4646', 'gslavich@hotmail.com', '4222-8920', NULL),
(100, NULL, 'Laura', 'RUSSIAN', '2017-10-09 11:44:20', '2015-12-22 15:03:37', '15-5641-4774', 'lsrussian@yahoo.com.ar', '4542-4356', NULL),
(101, 45, 'Patricia', 'LOPEZ', '2018-08-28 11:48:29', '2015-12-22 15:03:37', '1540783765', 'patriciam.lopez22@bue.edu.ar', '4308-1284', NULL),
(102, NULL, 'Silvia', 'GOMEZ', '2017-10-09 11:46:34', '2015-12-22 15:03:37', '15-58436992', 'sag@prosur.com.ar', '4240-6544', NULL),
(103, NULL, 'Andrea.', 'FRANCIOSI', '2017-10-09 11:48:38', '2015-12-22 15:03:37', '15-45781599', 'afranciosi@hotmail.com.ar', '4931-7714', NULL),
(104, 47, 'María', 'ABALO', '2019-04-26 08:55:42', '2015-12-22 15:03:37', '1557423538', 'maritaabalo69@hotmail.com', '4361-0851', NULL),
(105, NULL, ' Daniel', 'MARKARIAN', '2017-03-15 10:46:55', '2015-12-22 15:03:37', '15-3349-0492', 'danielmarkarian@yahoo.com.ar', '3535-9612', NULL),
(106, NULL, ' Verónica', 'LOPEZ PEREA', '2016-03-03 12:50:38', '2015-12-22 15:03:37', '15-33507926', 'veronicalopezperea@yahoo.com.ar', '4567-9385', NULL),
(107, 213, 'Alicia Marta', 'ZABALA', '2017-03-27 15:46:31', '2015-12-22 15:03:37', '15-6052-8645', 'zabalaalicia@yahoo.com.ar', '4217-1587', NULL),
(108, 52, 'Sandra', 'EFTHYMIADIS', '2018-08-28 11:49:09', '2015-12-22 15:06:17', '1569717406', 'sandraefthimiadis52@hotmail.com', '3971-5354', NULL),
(109, 53, 'Perla', 'ZLOTO', '2018-08-28 13:33:28', '2015-12-22 15:06:17', '1563766516', 'perlaezloto@hotmail.com', NULL, NULL),
(110, NULL, 'MIRTA CRISTINA', 'NASIF', '2017-07-03 11:40:57', '2015-12-22 15:06:17', '1569620284', 'cristinaczaja@gmail.com', NULL, NULL),
(111, NULL, 'Laura Ines', 'COSTA', '2018-08-28 09:19:24', '2015-12-22 15:06:17', '15-6742-6758', 'laurainescosta@hotmail.com', '4901-3119', NULL),
(112, 56, 'Gabriela', 'BLANCO', '2018-08-28 13:34:28', '2015-12-22 15:06:17', '1565279612', 'gabimaxo@gmail.com', '4566-2653', NULL),
(113, 57, 'Gabriela', 'ISRAEL', '2018-08-28 13:35:28', '2015-12-22 15:06:17', '1526310310', 'gai@live.com.ar', NULL, NULL),
(114, NULL, ' Verónica (Lic.70B)', 'GALLUZZI', '2018-08-28 09:40:26', '2015-12-22 15:06:17', '156289-5325', 'vgalluzz@hotmail.com', '4825-7230', NULL),
(115, NULL, 'Maria', 'TANO', '2018-08-28 09:40:29', '2015-12-22 15:06:17', '15-5339-4009', 'alejandratano@gmail.com', '', NULL),
(116, NULL, ' Mario Daniel', 'GARCIA LAIUN', '2016-12-21 09:44:22', '2015-12-22 15:06:17', '15-5860-1758', 'mgl66@hotmail.com', '4567-0805', NULL),
(117, NULL, ' Virginia Aurora', 'LOUSSINIAN', '2016-12-20 09:19:19', '2015-12-22 15:06:18', '15-5229-4342', 'virloussinian@yahoo.com.ar', '15-5229-4342', NULL),
(119, 63, ' Horacio', 'CRIADO', '2015-12-22 15:06:18', '2015-12-22 15:06:18', '', 'hcriado3@hotmail.com', '', NULL),
(120, NULL, 'Gabriela', 'VALENTINUZ', '2017-04-10 10:25:21', '2015-12-22 15:06:43', '1563654489', 'mgv@argentina.com.ar', '02322-480321', NULL),
(121, NULL, ' Claudia', 'SAMOILOVICH', '2016-05-03 11:43:41', '2015-12-22 15:06:43', '15-6609-8295', 'clau_samo@hotmail.com', '4804-6052', NULL),
(122, 55, 'Liliana Rosa', 'DOMINGUEZ', '2018-08-28 11:50:15', '2015-12-22 15:06:43', '1556554101', 'lizzdominguez@hotmail.com', '4924-8986', NULL),
(123, 67, 'Silvia', 'CERIOTTI', '2015-12-22 15:06:43', '2015-12-22 15:06:43', '1532083996', 'liliancer1@hotmail.com', '4899-0794', NULL),
(124, NULL, 'Adriana', 'BERTELLOTTI', '2019-04-26 08:59:53', '2015-12-22 15:06:43', '15­6784­2597', 'adribertellotti@hotmail.com', NULL, NULL),
(125, 69, 'Alicia', 'IMPERIALE', '2019-06-06 09:22:56', '2015-12-22 15:06:43', '15-3652-8050', 'alicia.imperiale@bue.edu.ar', NULL, NULL),
(126, 65, 'Katy', 'LINDENBERG', '2016-05-03 11:51:46', '2015-12-22 15:06:43', '15-31778499', 'katylindenberg@yahoo.com.ar', '4861-5415', NULL),
(127, NULL, 'Clarisa', 'LABEL', '2019-05-22 07:36:33', '2015-12-22 15:06:43', '15-56513459', 'clarisalabel@yahoo.com.ar', NULL, NULL),
(128, 72, 'Liliana', 'CASABURI', '2019-04-10 09:00:13', '2015-12-22 15:06:50', '1544265948', 'ens8@bue.edu.ar', '4632-0165', NULL),
(129, 73, 'Gustavo', 'ALCARAZ', '2018-08-28 11:53:55', '2015-12-22 15:06:50', '1566148109', 'ens8_rectorado@bue.edu.ar', '6967450', NULL),
(130, 74, 'Maria', 'FORNEK', '2018-08-28 11:54:16', '2015-12-22 15:06:50', '1540654248', 'ens8_nidireccion@bue.edu.ar', '9225884', NULL),
(131, NULL, 'Susana', 'FERNANDEZ', '2018-08-28 09:29:17', '2015-12-22 15:06:50', '15 5602 6066', 'ens8_npregencia@bue.edu.ar', '9430466', NULL),
(133, 75, 'Marcela', 'SOSA', '2018-08-28 11:58:56', '2015-12-22 15:06:50', '1554128485', 'marchusosa@hotmail.com', '9432849', NULL),
(134, 229, 'LAURA', 'COSTAMAGNA', '2019-08-28 13:27:28', '2015-12-22 15:06:50', '1566127027', 'lauracostamagna32@hotmail.com', '0000-0000', NULL),
(136, NULL, ' Alberto', 'MAC NAMARA', '2016-12-07 08:35:45', '2015-12-22 15:06:50', '15-4550-6261', 'albertoresponde@hotmail.com', '4632-8306', NULL),
(137, NULL, 'Karina', 'MARZOA', '2019-05-22 07:37:38', '2015-12-22 15:06:50', '1535962231', 'karinamarzoa@yahoo.com.ar', NULL, '2016-12-05'),
(138, 172, 'Federico', 'FAVALE', '2019-05-03 08:12:05', '2015-12-22 15:06:58', '1559534136', 'fedefavale@hotmail.com', NULL, NULL),
(139, NULL, 'Ana', 'FRANCO', '2019-04-26 09:01:00', '2015-12-22 15:06:58', '1554650516', 'anamafranco16@yahoo.com.ar', '4778-1340', '2013-06-06'),
(140, 84, 'Dina', 'KEMPNER', '2018-08-28 12:04:36', '2015-12-22 15:06:58', '1550397919', 'dina.kempner@bue.edu.ar', '4901-8148', NULL),
(141, NULL, 'Celia', 'GARCÍA', '2018-12-10 12:09:04', '2015-12-22 15:06:58', '1531324735', 'mariacelia_20@yahoo.com.ar', '4361-9632', NULL),
(142, 85, 'Laura', 'PAZOS', '2018-12-10 12:11:40', '2015-12-22 15:06:58', '1566252936', 'laurapazos65@yahoo.com.ar', '4952-2553', NULL),
(143, NULL, 'Silvia', 'TEPLIZTKY', '2018-08-28 13:40:57', '2015-12-22 15:06:58', '1559208217', 'silvia.tepliztky@bue.edu.ar', '2053-4755', NULL),
(144, NULL, ' María Cristina', 'SIGNATTI', '2018-08-28 09:46:20', '2015-12-22 15:06:58', '15-5818-7513', 'csignatti@yahoo.com.ar', '4901-1962', NULL),
(145, 231, 'Gloria', 'ASCURRA', '2018-09-04 09:35:53', '2015-12-22 15:06:58', '1524696377', 'gloriaascu680@gmail.com', NULL, NULL),
(146, 90, 'María José', 'GUERRERO', '2018-08-28 12:05:24', '2015-12-22 15:06:58', '1544224709', 'majoguerrero1@yahoo.com.ar', NULL, NULL),
(147, 23, 'Noemí', 'PAMBOUKDJIAN', '2019-04-29 10:36:01', '2015-12-22 15:06:58', '1551018582', 'pamboukdjian@gmail.com', '4951-0408', '2014-09-22'),
(148, NULL, ' Patricia', 'GARBARINO', '2016-05-20 11:20:00', '2015-12-22 15:06:58', '15- 4558-8055', 'patogarbarino@hotmail.com', '4362-6632', NULL),
(149, 93, 'Soledad', 'GUTIERREZ', '2018-08-28 12:06:40', '2015-12-22 15:07:05', '1563072518', 'toti-sol@hotmail.com', '4857-5899', NULL),
(152, NULL, ' Mónica', 'AFONSO', '2016-03-11 10:27:17', '2015-12-22 15:07:05', '155647-1106', 'mgafonso@yahoo.com.ar', '4791-4518', NULL),
(153, 97, 'Cristina Andrea', 'BUGNANO', '2018-08-28 12:07:56', '2015-12-22 15:07:05', '1558845219', 'cristinabugnano@yahoo.com.ar', '4772-2704', NULL),
(154, NULL, 'Diana', 'NIKIPIEROWCZ', '2018-09-12 09:14:51', '2015-12-22 15:07:05', '1551555307', 'diananiki@hotmail.com', '4786-2376', NULL),
(155, 99, 'Diego', 'SOSA MOREIRA', '2018-08-28 12:08:18', '2015-12-22 15:07:05', '1549899320', 'sosadiego@hotmail.com', NULL, NULL),
(156, 94, 'Nora', 'LOPEZ', '2018-08-28 12:07:19', '2015-12-22 15:07:05', '1557320182', 'noralopez10@hotmail.com', '4782-0840', '2016-06-01'),
(157, NULL, ' IRMA', 'SICARDI', '2016-06-28 12:57:25', '2015-12-22 15:07:05', '1156151593', 'irma.sicardi@bue.edu.arirmasicardi@gmail.com', '4522-2816', NULL),
(158, 102, 'Juan Ignacio', 'MO', '2018-08-28 13:15:01', '2015-12-22 15:07:13', '1541854941', 'juanignacio.mo@hotmail.com', NULL, NULL),
(159, 103, 'Cecilia Beatriz', 'BURATTI', '2018-08-28 13:14:49', '2015-12-22 15:07:13', '1536541821', 'cetti65@gmail.com', '4932-9965', NULL),
(161, 105, 'Cristina', 'MARTINEZ', '2018-08-28 13:14:37', '2015-12-22 15:07:13', '1551245028', 'crismaleru@yahoo.com.ar', '4488-9834', NULL),
(162, NULL, ' Ana Cris', 'PORTELLI', '2016-05-13 09:38:17', '2015-12-22 15:07:13', '15-62543857', 'anacrisportelli@hotmail.com', '4308-5770', NULL),
(163, 233, 'Norberto', 'VOLPE', '2018-08-28 13:14:28', '2015-12-22 15:07:13', '1567038902', 'norbertox7@gmail.com', '4209-7256', NULL),
(164, 183, 'Cristina', 'CARPINTERO', '2018-09-07 08:25:21', '2015-12-22 15:07:13', '1554081315', 'cristina013@hotmail.com', '4604-1114', NULL),
(165, 109, 'Angelica', 'MONTERO', '2018-08-28 12:16:46', '2015-12-22 15:07:43', '1556180851', 'crismontero62@gmail.com', '4459-7053', NULL),
(166, NULL, 'Claudia', 'BUENO', '2018-03-02 12:56:50', '2015-12-22 15:07:43', '1540712281', 'cgabyb@yahoo.com.ar', '4654-3284', NULL),
(167, NULL, 'Elida', 'ROJAS', '2018-03-02 12:57:38', '2015-12-22 15:07:43', '15-68037711', 'mabel.rojas@yahoo.com.ar', '4613-0692', NULL),
(168, NULL, ' Hortensia', 'ARRIOLA', '2016-03-03 12:48:24', '2015-12-22 15:07:43', '', 'mharriola@yahoo.com', '', NULL),
(169, 113, 'Vivian', 'COPELLO', '2018-03-09 12:36:37', '2015-12-22 15:07:52', '1540363719', 'viviancopello@yahoo.com', NULL, NULL),
(170, NULL, 'FERNANDO', 'CURCI', '2018-03-09 12:38:11', '2015-12-22 15:07:52', '15-5768-9354', 'nanocurci@yahoo.com.ar', '4982-0242', NULL),
(171, NULL, ' Andrea Viviana CONFIRMAR', 'ABELEDO', '2017-06-14 12:27:16', '2015-12-22 15:07:52', '15-3562-2341', 'andreunoar@yahoo.com.ar', '4293-7899', NULL),
(172, NULL, 'Eduardo', 'FARIAS', '2018-03-19 14:56:19', '2015-12-22 15:07:52', '15-6655-8804', 'isefwd@gmail.com', '4631-0352', NULL),
(173, NULL, ' NORBERTO OMAR', 'ROMAN', '2018-03-19 14:56:14', '2015-12-22 15:07:52', '15-4144-6226', 'norbisport@hotmail.com', '4637-2292', NULL),
(174, 118, 'Emanuel', 'SAEZ', '2018-03-09 12:36:05', '2015-12-22 15:07:53', '1559613680', 'emanuelsaez@yahoo.com.ar', NULL, NULL),
(175, NULL, 'Maria', 'VALLONE', '2016-11-10 09:42:45', '2015-12-22 15:07:53', '15-5709-5533', 'regencia@institutodickens.edu.ar', '44324558', NULL),
(176, 120, 'Gabriela', 'GUITART', '2018-08-28 12:27:26', '2015-12-22 15:08:02', '1541833064', 'gabrielaguitart@hotmail.com', '03327-454557', NULL),
(177, NULL, 'Ernesto', 'ROCLAW', '2017-02-20 10:20:54', '2015-12-22 15:08:02', '155- 009 6628', 'roclaw@yahoo.com', '4653-1821', NULL),
(178, 121, 'Gabriela', 'ORTEGA', '2018-11-09 09:43:12', '2015-12-22 15:08:02', '1555799943', 'gabrielaortega22@gmail.com', '4584-4599', NULL),
(179, NULL, 'Beatriz', 'GONZáLEZ', '2018-03-02 12:43:56', '2015-12-22 15:08:02', '155 4825960', 'beagong@yahoo.com.ar', '4856-3282', NULL),
(180, 197, 'Cecilia', 'FERREYRA', '2016-09-23 13:26:58', '2015-12-22 15:08:02', '15-4056-2111', 'cecyferreyra.cf@gmail.com', '4922-4516', NULL),
(181, NULL, 'Graciela', 'SALERNO', '2018-09-12 09:29:23', '2015-12-22 15:08:02', '15­-6549­-2040', 'gracielsal@gmail.com', NULL, NULL),
(182, 199, 'Andreina', 'CARACCIOLO', '2019-04-26 09:32:37', '2015-12-22 15:08:02', '15­3200­2257', 'andreinacaracciolo@hotmail.com', NULL, NULL),
(183, 127, 'Nelson', 'SEQUEIRA', '2018-09-12 09:31:29', '2015-12-22 15:08:12', '1559942394', 'nelsete@hotmail.com', NULL, NULL),
(184, 128, 'Jorge', 'SUMO', '2018-09-12 09:31:46', '2015-12-22 15:08:12', '1553771995', 'joralsum@yahoo.com', NULL, NULL),
(185, 130, 'Gustavo', 'OTERO', '2019-02-22 12:52:34', '2015-12-22 15:08:12', '1564062806', 'ggotero@hotmail.com', '4394-1614 (estudio)', NULL),
(186, 129, 'Gustavo', 'MANZANAL', '2018-12-28 09:03:26', '2015-12-22 15:08:12', '1553159664', 'gfmanzanal@gmail.com', '2053-6561', NULL),
(187, 131, 'Karina Beatriz', 'CRICELLI', '2018-09-06 15:29:25', '2015-12-22 15:08:23', '1537048406', 'karijbj@hotmail.com', '4639-1950', NULL),
(188, 132, 'Estela', 'FERNANDEZ', '2018-08-28 12:19:39', '2015-12-22 15:08:23', '1551644423', 'estelafernandez_2000@yahoo.com', '4503-3920', NULL),
(189, NULL, 'ROXANA', 'COSTA', '2018-08-28 09:15:00', '2015-12-22 15:08:23', '15-4917-3444', 'rolicos9@hotmail.com', '4903-8691', NULL),
(190, NULL, 'TUCHIN', 'ETEL', '2016-09-29 10:09:07', '2015-12-22 15:08:23', '1562863952', 'anahituc@yahoo.com.ar', '4983-5344', NULL),
(191, NULL, 'LAURA', 'MAURI', '2016-09-29 10:01:13', '2015-12-22 15:08:23', '15-5567-2441', 'laura.mauri@bue.edu.ar', '4957-4904', NULL),
(192, 136, 'Claudia', 'TOMADONI', '2018-08-28 12:21:38', '2015-12-22 15:08:23', '1554895801', 'paunico10@hotmail.com', '45683594', NULL),
(193, NULL, 'Marta', 'ACOSTA', '2019-05-22 07:42:52', '2015-12-22 15:08:23', '1544255962', 'jbjmartaacosta@gmail.com', '4566-2586', NULL),
(194, 138, 'María de los Ángeles', 'ÁLVAREZ', '2018-08-28 12:23:09', '2015-12-22 15:08:23', '1551651869', 'alvarezwipig@gmail.com', '4855 8660', NULL),
(195, NULL, 'BLANCA', 'ROTUNDO', '2017-09-06 10:30:28', '2015-12-22 15:08:23', '15-3702-2487', 'blancarotundo@yahoo.com.ar', '4641-8154', NULL),
(196, 140, 'Pablo', 'ROSSI', '2018-10-04 09:14:27', '2015-12-22 15:08:31', '1551439901', NULL, NULL, NULL),
(197, NULL, 'Patricia', 'SIMEONE', '2018-12-20 10:55:42', '2015-12-22 15:08:31', '1544179786', 'pn52simeone@gmail.com', '4544-1840', NULL),
(198, NULL, 'Claudia', 'VARELA', '2018-08-28 10:05:41', '2015-12-22 15:08:31', '154-024-7597', 'claudiaavefenix@gmail.com', '4573-3879', NULL),
(201, 145, 'Ernesto', 'TRAVERSARO', '2018-08-28 12:24:02', '2015-12-22 15:08:40', '1540811204', 'etraver@yahoo.com', '4225-3104', NULL),
(202, NULL, ' Paula', 'LÓPEZ CANO', '2018-03-02 11:46:27', '2015-12-22 15:08:40', '1556267554', 'paulalcano@hotmail.com', '48135738', NULL),
(203, NULL, 'Patricia', 'PARERA', '2018-08-28 09:26:00', '2015-12-22 15:08:40', '156644-8713', 'patriparera@hotmail.com', '4305-1528', NULL),
(204, NULL, 'Ana Clara', 'AMABILE', '2018-12-10 12:14:23', '2015-12-22 15:08:40', '1554658215', 'ana.amabile@bue.edu.ar', NULL, NULL),
(205, NULL, 'Silvia', 'ROTUNNO', '2017-02-20 10:24:07', '2015-12-22 15:08:40', '153278-4053', 'silviarotunno@hotmail.com', '4305-9172', NULL),
(207, NULL, 'Nélida', 'SOSA', '2018-03-02 11:48:16', '2015-12-22 15:08:40', '1536364827', 'nenososa@gmail.com', '42868457', NULL),
(209, NULL, ' Claudia', 'FERRADAS', '2017-02-16 13:22:50', '2015-12-22 15:08:40', '1544162241', 'claudiaferradas@gmail.com', '20553994', NULL),
(210, 154, 'María de las Mercedes', 'BIANCHI', '2018-12-04 13:20:49', '2015-12-22 15:08:50', '1567534345', 'mariam.bianchi@bue.edu.ar', NULL, NULL),
(211, 155, 'Raúl Alejandro', 'SUPITAL', '2018-08-28 12:43:35', '2015-12-22 15:08:51', '1569327016', 'raul.supital@bue.edu.ar', NULL, NULL),
(212, 156, 'María Teresa', 'LÓPEZ', '2018-08-28 12:44:12', '2015-12-22 15:08:51', '1556602366', 'mariat.lopez@bue.edu.ar', NULL, NULL),
(213, 157, 'Nora Edith', 'MIRANDA', '2018-08-28 12:44:33', '2015-12-22 15:08:51', '1551222013', 'nora.miranda@bue.edu.ar', NULL, NULL),
(214, 158, 'Jorge Carlos', 'ROSSI', '2018-08-28 12:44:45', '2015-12-22 15:08:51', '1531662703', 'jorge.rossi@bue.edu.ar', NULL, NULL),
(215, 159, 'María Mercedes', 'SEMHAN', '2018-08-28 12:45:18', '2015-12-22 15:08:51', '1561543003', 'mariam.semhan@bue.edu.ar', NULL, NULL),
(216, 160, 'Karina', 'ASESOL', '2018-08-28 12:13:11', '2015-12-22 15:09:02', '1568324618', 'karinafabiana2@hotmail.com', '4-551-8153', NULL),
(217, NULL, ' Liliana', 'GARCÍA DOMÍNGUEZ', '2017-09-14 09:13:59', '2015-12-22 15:09:02', '1544992437', 'lilianagardom@gmail.com', '43614408', NULL),
(218, NULL, ' Gloria', 'LEON', '2016-05-13 09:50:16', '2015-12-22 15:09:02', '15 5869-188', 'gloriatleon@hotmail.com', '4931-4930', NULL),
(220, NULL, ' LILIANA Rosa SUPL', 'DOMINGUEZ', '2016-03-11 10:32:00', '2015-12-22 15:09:02', '15-5655-4101', 'lizzdominguez@hotmail.com', '4924-8986', NULL),
(221, NULL, ' María del Carmen', 'GONZÁLEZ', '2018-08-28 09:24:14', '2015-12-22 15:09:02', '15 4399-9298', 'maritaleo@hotmail.com', '4813-7232', NULL),
(222, 166, 'Mariana', 'MUSI', '2018-08-28 12:14:55', '2015-12-22 15:09:02', '1559782804', 'marimu@yahoo.com.ar', '4775-4706', NULL),
(223, NULL, 'Estela', 'VELARDE', '2018-09-12 09:19:48', '2015-12-22 15:09:02', '1559631286', 'eiavela@yahoo.com.ar', '4523-8473', NULL),
(224, NULL, ' Claudia - SUPL', 'PEÑARANDA', '2017-04-10 10:23:34', '2015-12-22 15:09:02', '15-4079-4322', 'claudiap@educ.ar', '', NULL),
(225, NULL, 'Sonia Rosana', 'SCHRODER', '2018-10-22 10:52:17', '2015-12-22 15:09:02', '1536204959', 'soniarosana@hotmail.com', '4849-4964', NULL),
(226, NULL, 'María Cecilia', 'PFISTER', '2018-10-22 10:52:20', '2015-12-22 15:09:02', '1560235266', 'mariaceciliapfister@gmail.com', '44326304', NULL),
(227, 169, 'Cynthia', 'FRIDMAN', '2018-10-22 10:53:49', '2015-12-22 15:09:02', '1535181122', 'fridmancyn@hotmail.com', '45555092', NULL),
(228, NULL, 'Guillermo', 'NUÑEZ', '2018-03-02 12:49:13', '2015-12-22 15:58:41', '15-6356-7262', 'gevet2003@yahoo.com.ar', '4954-1628', NULL),
(229, NULL, 'Maritza', 'SAGO', '2018-03-02 12:47:11', '2015-12-22 15:58:41', '15-5926-7248', 'sagomaritza@gmail.com', '4552-6465', NULL),
(230, NULL, 'Laura', 'VILLALOBOS', '2018-03-02 12:48:09', '2015-12-22 15:58:41', '15-5922-5097', 'villaloboslaurace@gmail.com', '4631-2124', NULL),
(231, NULL, 'Roxana', 'FERIOLI', '2018-03-02 12:49:09', '2015-12-22 15:58:41', '15-2159-5160', 'roxanaferioli@hotmail.com', '4585-6613', NULL),
(232, NULL, 'Raúl', 'DAMIANI', '2018-12-20 10:55:44', '2015-12-23 08:19:24', '1565865393', 'raul.damiani@gmail.com', '2055-5847', NULL),
(233, 143, 'Claudia', 'SOTO', '2018-12-20 10:58:32', '2015-12-23 08:21:58', '1564872410', 'claudiafsoto@gmail.com', '0227-421702', '2015-12-01'),
(234, NULL, 'Beatriz Diana', 'FRENKEL', '2018-03-02 12:58:59', '2016-03-03 12:49:33', '15-2325-9286', 'beafrenkel@yahoo.com.ar', '4523-0054', NULL),
(235, 212, 'Nora Adriana', 'LEGORBURU', '2017-03-27 15:45:28', '2016-03-03 12:53:17', '15-6112-3206', 'norilegor@yahoo.com.ar', '4300-8018', NULL),
(236, NULL, 'Silvia', 'GORI', '2018-03-02 12:39:34', '2016-03-10 16:11:54', '36045749', 'silviaegori@hotmail.com', NULL, NULL),
(237, NULL, 'Hugo', 'DEL BARRIO', '2019-05-15 07:05:00', '2016-03-10 16:15:56', '1531946721', 'hugo_delbarrio@yahoo.com.ar', '4372-2205', NULL),
(238, 228, 'Silvia Liliana', 'ALBORNOZ', '2018-08-28 11:59:11', '2016-03-10 16:29:46', '1540726653', 'albornozsilvia@yahoo.com.ar', '4943-3299', NULL),
(239, 96, 'Myriam', 'PAULOS', '2018-08-28 12:07:31', '2016-03-11 10:28:26', '1556576940', 'mypaulos@hotmail.com', NULL, NULL),
(240, 177, 'Duilio', 'ROMANO', '2018-08-28 13:29:31', '2016-03-11 11:04:21', '1559523101', 'correoduilio@gmail.com', NULL, NULL),
(241, 178, 'María Esther', 'SOFíA', '2018-08-28 13:38:03', '2016-03-11 11:06:11', '1541949543', 'maria.sofia@bue.edu.ar', '4567 2569', NULL),
(242, 179, 'Alicia', 'MARTíNEZ', '2019-04-26 09:08:35', '2016-03-11 11:06:51', '1562284797', 'aliciar.martinez@bue.edu.ar', NULL, NULL),
(243, NULL, 'Norma Alejandra', 'ZÁRATE', '2017-11-02 12:51:43', '2016-03-11 11:07:41', '15 5142 3955', NULL, '4602 6628', NULL),
(244, 181, 'María Isabel', 'PEREZ', '2018-08-28 12:18:37', '2016-03-11 11:09:02', '1551810153', 'mariabelperezmolina@yahoo.com.ar', NULL, NULL),
(245, NULL, 'Mónica Ester', 'COHEN', '2017-09-06 10:30:12', '2016-03-11 11:12:53', '15 6584 1955', 'monicacohen1@yahoo.com', '4866 6625', NULL),
(247, NULL, 'Claudia TM', 'ECHALECU', '2018-04-13 13:53:50', '2016-05-13 08:35:27', '1560426273', 'profeclau07@gmail.com', '4983-3616', NULL),
(248, 191, 'Viviana', 'FERNANDEZ', '2018-08-28 09:08:11', '2016-05-13 08:42:00', '1561563901', 'viviana.fernandez1@bue.edu.ar', '46132465', NULL),
(249, NULL, 'Miriam', 'ARZAMENDIA', '2017-02-17 09:22:00', '2016-05-13 08:45:32', '1565647678', 'miriamarzamendia@yahoo.com.ar', NULL, NULL),
(250, 234, 'Claudia', 'GARCIA', '2018-08-28 09:51:57', '2016-05-13 09:41:08', '1540225237', 'claudinesgarcia@gmail.com', NULL, NULL),
(251, NULL, 'Oscar', 'LOUZAN', '2019-08-05 08:23:14', '2016-05-20 11:21:45', '1554554212', 'olouzan@yahoo.com.ar', '4372-0181 interno 4', NULL),
(252, NULL, 'Gastón', 'JAUREGUI', '2017-02-20 15:52:29', '2016-06-28 12:58:27', NULL, NULL, NULL, NULL),
(253, NULL, 'JULIETA', 'KIRCZYK', '2018-08-28 09:57:47', '2016-07-15 11:30:41', '15 4399-3390', 'julieta_kir@yahoo.com.ar', '4308-0878', '2016-07-01'),
(254, 184, 'Elsa', 'SUAREZ', '2018-08-28 13:29:16', '2016-08-04 11:08:53', '1557510434', 'selenalunasuarez@yahoo.com.ar', NULL, NULL),
(255, 185, 'Tomás', 'MARíN', '2018-08-28 13:29:48', '2016-08-04 11:10:31', '1569019900', 'tomas.marin@bue.edu.ar', NULL, NULL),
(256, 27, 'María Julieta', 'MENDOLÍA', '2018-08-28 12:49:55', '2016-09-08 16:49:19', '1544125005', 'julietamendolia@yahoo.com.ar', NULL, NULL),
(257, 186, 'Karina Lorena', 'LARKEN', '2018-08-28 12:50:08', '2016-09-08 16:51:44', '1548889757', 'karinalarken@gmail.com', NULL, NULL),
(258, 24, 'Andrea Fabiana', 'DELLA BIANCA', '2018-08-28 13:24:23', '2016-09-08 16:53:44', '1555030520', 'andrea.della@bue.edu.ar', NULL, NULL),
(259, 68, 'Sandra', 'SEOANE', '2019-04-26 09:00:15', '2016-09-22 16:00:57', '1541418998', 'sandranseoane@gmail.com', NULL, NULL),
(260, 193, 'Laura Cecilia', 'BUSCEMA', '2018-08-28 11:52:05', '2016-09-23 12:56:16', '1561663919', 'buscemalauracecilia@gmail.com', NULL, NULL),
(261, NULL, 'Carina Liliana', 'KOREMBLUM', '2019-04-26 08:56:54', '2016-09-23 12:58:55', '1555142059', 'carylikor@gmail.com', NULL, NULL),
(262, 206, 'Alberto', 'ALADRO', '2018-08-28 11:51:38', '2016-09-23 13:20:56', '1564777569', 'albertoaladroduran@gmail.com', NULL, NULL),
(263, NULL, 'Rita Gladys', 'ORTIZ', '2019-04-26 09:33:12', '2016-09-23 13:28:41', '011 3258 8981', 'gla_06_ar@hotmail.com', NULL, NULL),
(264, 135, 'Estela', 'REYMUNDI', '2018-08-28 12:21:17', '2016-09-29 10:04:03', '1556551159', 'lizrey2011@gmail.com', NULL, NULL),
(265, 202, 'Alejandra', 'FLOREZ', '2018-08-28 12:22:29', '2016-09-29 10:06:49', '1555152575', 'algaflorez@gmail.com', NULL, NULL),
(266, 134, 'Roxana', 'CERQUEIRO', '2018-08-28 12:22:06', '2016-09-29 10:10:33', '1556231684', 'rocerqueiro@hotmail.com', NULL, NULL),
(267, NULL, 'Isabel', 'LLANES', '2018-09-12 09:25:22', '2016-09-29 10:23:51', '1545302428', 'isabelllanes@hotmail.com', NULL, NULL),
(268, 203, 'Natacha Inés', 'FERREIRA FEROCI', '2018-08-28 12:45:32', '2016-09-29 10:25:59', '1523300461', 'natacha.ferreira@bue.edu.ar', NULL, NULL),
(269, 204, 'Santiago Andrés', 'AZNAR', '2018-08-28 12:47:17', '2016-09-29 10:27:08', '1550953373', 'santiago.aznar@bue.edu.ar', NULL, NULL),
(270, 62, 'Hugo', 'ENCISO', '2017-03-06 15:14:14', '2016-10-05 10:40:21', '1553470823', 'chinciso@inti.gob.ar', '47630582', NULL),
(272, NULL, 'Daniel', 'FERREIRA', '2018-03-02 11:54:53', '2016-11-14 09:09:00', NULL, NULL, NULL, NULL),
(273, 80, 'Viviana Alejandra', 'ALONSO', '2018-08-28 12:00:50', '2016-12-07 08:36:33', '1554695915', 'vivianaalonso@hotmail.com', '4943-5850', '2016-12-05'),
(274, 205, 'Claudia Marcela', 'GAUDINA', '2018-08-28 11:51:14', '2016-12-20 09:23:07', '1558343321', 'cgaudina@gmail.com', '4822-8742', '2016-12-03'),
(275, 54, 'Lidia Beatriz', 'ROCCELLA', '2018-08-28 11:49:58', '2016-12-21 09:46:24', '1549863777', 'lidiaroccella@gmail.com', '4583 8148', NULL),
(276, NULL, 'Monica', 'HERRERO', '2018-09-12 07:37:44', '2017-02-16 13:23:30', '1559546489', 'monicacelesteherrero@gmail.com', NULL, NULL),
(277, NULL, 'Silvia', 'ITKIN', '2018-03-02 12:42:48', '2017-02-16 13:25:14', '153 473 9992', 'sitkin@gmail.com', NULL, NULL),
(278, 237, 'Atilio', 'MARCÓN', '2018-08-28 12:50:39', '2017-02-17 09:19:21', '1554742893', 'atiliomarcon@hotmail.com', NULL, NULL),
(280, NULL, 'SARA', 'MINABERRIGARAY', '2018-08-28 09:54:56', '2017-02-20 10:24:52', '1565562206', 'saraminaberri@gmail.com', NULL, NULL),
(281, NULL, 'ANA ISABEL', 'ERADES', '2018-08-28 10:01:14', '2017-02-20 15:53:25', '1545378846', 'santaerades@gmail.com', NULL, NULL),
(282, NULL, 'Claudia Gladys', 'DEODATO', '2019-06-26 10:57:18', '2017-02-20 15:54:38', '1541405812', 'claudiadeo@ciudad.com.ar', NULL, NULL),
(284, 33, 'Marcela', 'MIGUEL', '2017-05-16 16:46:39', '2017-03-07 14:15:34', '1555041608', NULL, NULL, NULL),
(285, 49, 'Graciela', 'ROZIAK', '2017-10-09 11:45:10', '2017-03-15 10:47:31', '1550981507', 'grosiak@yahoo.com', NULL, NULL),
(286, NULL, 'Isabel', 'LLANES', '2017-10-09 09:58:29', '2017-03-20 15:55:49', '1545302428', NULL, NULL, NULL),
(288, NULL, 'Miriam', 'ARZAMENDIA', '2019-07-11 07:31:08', '2017-03-21 13:44:51', '1565647678', 'miriam.arzamendia@bue.edu.ar', NULL, NULL),
(289, 44, 'Rosana', 'CARLÉS', '2018-08-28 11:48:08', '2017-03-23 10:51:13', '1555061117', 'racarles@hotmail.com', '4302-7934', NULL),
(290, 70, 'Gisela', 'SERRANO', '2018-08-28 11:53:08', '2017-03-27 15:56:09', '1533597207', 'gisela.serrano@bue.edu.ar', NULL, NULL),
(291, 235, 'Paola', 'GIOSEFFI', '2018-09-07 08:11:04', '2017-04-10 10:23:10', '1569827755', 'pcgioseffi@gmail.com', NULL, NULL),
(292, 161, 'Sonia', 'SCHOEDER', '2018-10-22 10:53:09', '2017-04-10 10:24:01', '1536204959', 'soniarosana@hotmail.com', NULL, NULL),
(293, 64, 'Sergio', 'BAU', '2018-08-28 13:36:09', '2017-04-10 10:25:42', '1558843571', 'hugo.bau@bue.edu.ar', NULL, NULL),
(294, 215, 'Elisa', 'MILANO', '2017-05-03 10:29:00', '2017-05-03 10:28:59', NULL, NULL, NULL, NULL),
(295, 216, 'Claudia', 'BERBERIÁN', '2018-08-28 13:37:24', '2017-05-09 13:45:31', '1533014622', 'claudia.berberian@bue.edu.ar', NULL, NULL),
(296, 43, 'Gustavo', 'RAMAZZOTTI', '2018-08-28 13:31:42', '2017-05-16 16:47:58', '1541685520', 'gustavo.ramazzotti@bue.edu.ar', NULL, NULL),
(297, 59, 'Claudia', 'KRAICER', '2018-12-19 09:45:02', '2017-07-03 12:57:31', '1557134444', 'claudia.kraicer@bue.edu.ar', NULL, NULL),
(298, 139, 'Laura', 'GIUSSANI', '2018-08-28 12:23:28', '2017-09-07 11:16:54', '1550201702', 'lgiussanijbj@gmail.com', NULL, '2017-09-06'),
(299, 3, 'Alejandra', 'FERNANDEZ', '2018-08-28 12:49:05', '2017-10-09 09:59:48', '1553463861', 'ale_fernandez2@yahoo.com.ar', NULL, NULL),
(300, 4, 'Laura', 'PEDERCINI', '2019-04-26 08:43:39', '2017-10-09 10:02:31', '1544739141', 'laurapedercini@yahoo.com.ar', NULL, NULL),
(301, 5, 'Daniel', 'CIBEIRA', '2018-08-28 08:08:11', '2017-10-09 10:05:37', '1555656838', 'dcibeira8@gmail.com', NULL, NULL),
(302, NULL, 'Liliana', 'SEIJAL', '2018-09-12 08:55:53', '2017-10-09 10:06:44', '1550205822', 'liliana.seijal@bue.edu.ar', NULL, NULL),
(303, 7, 'Laura', 'RODRIGUEZ', '2018-08-28 08:18:14', '2017-10-09 10:46:57', '1555859576', NULL, NULL, NULL),
(304, 187, 'Monica', 'BARREIRO', '2018-08-28 13:26:08', '2017-10-09 10:51:48', '1534187233', 'monica.barreiro@bue.edu.ar', NULL, NULL),
(305, NULL, 'Mariela', 'COZZA', '2019-07-11 07:32:33', '2017-10-09 11:04:54', NULL, 'mariela.cozza@bue.edu.ar', NULL, NULL),
(306, 46, 'Mariana', 'FILIPPONI', '2017-10-09 11:47:49', '2017-10-09 11:47:49', NULL, 'mariana.filipponi@bue.edu.ar', NULL, NULL),
(307, NULL, 'Viviana', 'ZYGADLO', '2018-09-12 09:16:21', '2017-11-02 12:52:30', NULL, 'azycol@hotmail.com', NULL, NULL),
(308, NULL, 'Cristina', 'SANTORO', '2019-04-11 06:29:54', '2017-11-02 15:43:48', NULL, NULL, NULL, NULL),
(309, NULL, 'Andrea', 'FRANCIOSI', '2019-04-26 08:55:21', '2017-11-30 10:27:36', '1545781599', 'afranciosi@hotmail.com.ar', NULL, NULL),
(310, 182, 'Maria Victoria', 'CINTAS', '2017-11-30 14:27:31', '2017-11-30 14:27:31', '1556190559', NULL, NULL, NULL),
(311, 146, 'Patricia', 'ALTAMIRANDA', '2018-08-28 12:24:13', '2018-03-02 11:47:19', '1554606085', 'patricialtamiranda@gmail.com', NULL, NULL),
(312, 152, 'Lorena', 'JUSTEL', '2018-08-28 12:26:58', '2018-03-02 11:55:40', '1565215859', 'lorenajustel@hotmail.com', NULL, NULL),
(313, 151, 'Fabia', 'ARROSSI', '2018-08-28 12:26:44', '2018-03-02 11:56:49', '1556672126', 'particular.fabia_arrossi@yahoo.com.ar', NULL, NULL),
(314, 214, 'Rubén', 'LASSO', '2018-03-02 11:58:43', '2018-03-02 11:58:43', '15 6500 2219', 'profesorlasso@gmail.com', NULL, NULL),
(315, 222, 'Gabriela', 'SLAVICH', '2018-08-28 11:47:35', '2018-03-02 12:03:36', '1567254646', 'gslavich@hotmail.com', NULL, NULL),
(316, NULL, 'Graciela', 'ROSIAK', '2018-08-28 13:32:15', '2018-03-02 12:04:47', '1550981507', 'grarosiak@yahoo.com', NULL, NULL),
(317, 14, 'Andrea', 'BERMAN', '2018-08-28 09:05:49', '2018-03-02 12:07:53', '1531366462', 'afberman@yahoo.com.ar', NULL, NULL),
(318, 20, 'Alberto', 'ROMERO', '2018-08-28 11:35:54', '2018-03-02 12:08:48', '1554677582', 'albertohromero@gmail.com', NULL, NULL),
(319, 10, 'Gustavo', 'VERDE', '2018-08-28 08:56:41', '2018-03-02 12:41:00', '1559343635', 'gverde@ens1caba.edu.ar', NULL, NULL),
(321, 122, 'Inés', 'RODRIGUEZ SAENZ', '2019-04-26 09:28:50', '2018-03-02 12:43:42', '1569082142', 'inesrodsaenz@gmail.com', NULL, NULL),
(322, 123, 'María Pía', 'BARBARÁ', '2018-08-28 12:31:06', '2018-03-02 12:44:27', '1563514011', 'mariapiabarbara@yahoo.com', NULL, NULL),
(323, 60, 'Laura Salomé', 'RUSSIAN', '2018-08-28 11:50:55', '2018-03-02 12:45:58', '1556414774', 'laurarussian822@gmail.com', NULL, NULL),
(324, 173, 'Roxana Alicia', 'FERIOLI', '2018-08-28 12:31:53', '2018-03-02 12:47:53', '1521595160', 'roxanaferioli@hotmail.com', NULL, NULL),
(325, 174, 'Damian Lucas', 'MANTOVANO', '2018-08-28 12:32:10', '2018-03-02 12:48:37', '1569675165', 'dlmantovano@gmail.com', NULL, NULL),
(326, 175, 'Liliana', 'JELIN', '2018-08-28 12:32:43', '2018-03-02 12:49:54', '1536444657', 'lijelin@gmail.com', NULL, NULL),
(327, 224, 'Paula', 'GHIONE', '2018-08-28 12:32:54', '2018-03-02 12:53:34', '1568613121', 'paulaghi@hotmail.com', NULL, NULL),
(328, NULL, 'Federico', 'FAVALE', '2018-08-28 12:28:17', '2018-03-02 12:54:54', '155 953 4136', 'fedefavale@hotmail.com', NULL, NULL),
(329, 225, 'Marcela', 'SPANTON', '2018-08-28 12:31:30', '2018-03-02 12:56:12', '1559329251', 'marcela.spanton@gmail.com', NULL, NULL),
(330, 110, 'Vanesa', 'ZITO LEMA', '2018-03-02 12:57:24', '2018-03-02 12:57:24', '1561487269', 'vzitolema@yahoo.com.ar', NULL, NULL),
(331, 111, 'Rolando', 'MAIDANA', '2018-03-02 12:58:10', '2018-03-02 12:58:10', '1559707458', 'rolmaidana@gmail.com', NULL, NULL),
(332, 112, 'Sergio', 'SILVESTRI', '2018-03-02 12:59:29', '2018-03-02 12:59:29', '1522735916', 'silvestri.sergio@gmail.com', NULL, NULL),
(333, 114, 'Oscar Ariel', 'COSO', '2018-09-12 09:34:40', '2018-03-19 14:55:49', '1549487911', 'oscarcoso@gmail.com', NULL, NULL),
(334, 116, 'Graciela', 'GARCíA', '2018-08-28 12:47:52', '2018-03-19 14:56:56', '1549481325', 'gachigarcia@gmail.com', NULL, NULL),
(335, 117, 'Fernanda', 'RIZZO', '2018-08-28 12:48:05', '2018-03-19 14:57:35', '1564250954', 'fernandarizzogaf@gmail.com', NULL, NULL),
(336, 66, 'Roxana', 'COSTA', '2018-08-28 11:52:27', '2018-04-27 10:34:43', '1549173444', 'roxana.costa@bue.edu.ar', NULL, NULL),
(338, 12, 'Adriana', 'CASTRO', '2018-08-30 09:33:04', '2018-05-29 10:28:28', '1554794693', 'adrianacastro.ens1y9@gmail.com', NULL, NULL),
(339, 219, 'Claudia', 'GONZÁLEZ', '2018-08-28 12:48:39', '2018-07-27 13:00:34', '1558230238', NULL, NULL, NULL),
(340, 227, 'Fernando', 'ALONSO', '2018-08-28 09:37:44', '2018-08-28 08:52:43', '1538860190', 'fernandod.alonso1@bue.edu.ar', NULL, NULL),
(341, 163, 'Verónica', 'DEMKO', '2018-08-28 09:13:16', '2018-08-28 09:13:16', '1562566067', 'veronica.demko@bue.edu.ar', NULL, NULL),
(342, NULL, 'Dina', 'KEMPNER', '2018-09-12 09:23:41', '2018-08-28 09:18:08', '1563692330', 'erika.marchetti@bue.edu.ar', NULL, NULL),
(343, 165, 'Adriana', 'CURA', '2018-08-28 09:24:57', '2018-08-28 09:24:57', '1554996618', 'adricura@hotmail.com', NULL, NULL),
(344, 148, 'Celia', 'FACCIANO', '2019-04-26 09:09:51', '2018-08-28 09:27:07', '1559949615', 'celia.facciano@bue.edu.ar', NULL, NULL),
(345, NULL, 'Stella', 'SPINO', '2018-12-19 09:43:24', '2018-08-28 09:41:31', '1530017289', 'stellamarisesp@yahoo.com.ar', NULL, NULL),
(346, NULL, 'Marcela', 'TORRES', '2018-09-04 09:32:31', '2018-08-28 09:43:21', '1565037767', 'marcelagtorres@hotmail.com', NULL, NULL),
(347, 230, 'Gustavo', 'ALCAZAR', '2018-08-28 09:47:49', '2018-08-28 09:47:49', '1550190380', 'alcazar1965@gmail.com', NULL, NULL),
(348, NULL, 'Claudia', 'ECHALECU', '2018-09-04 09:34:18', '2018-08-28 09:49:51', '1560426273', 'profeclau07@gmail.com', NULL, NULL),
(349, NULL, 'Marisa Alejandra', 'RENNIS', '2019-07-30 07:28:53', '2018-08-28 09:54:37', '1557662104', 'marisarennis@gmail.com', NULL, NULL),
(350, 41, 'ANALIA', 'GOMEZ', '2018-12-03 07:15:48', '2018-08-28 09:59:16', '1531257347', 'analia2525@yahoo.com.ar', NULL, '2018-07-01'),
(351, 101, 'Cecilia', 'CRESTA', '2018-10-01 11:00:14', '2018-08-28 10:01:43', '1565692661', 'cecicresta@gmail.com', NULL, NULL),
(352, 209, 'Mariela', 'BARREA', '2018-08-28 12:22:43', '2018-08-28 12:22:43', '1568199465', 'mrbarrea@yahoo.com.ar', NULL, NULL),
(353, 37, 'Liliana', 'SEIJAL', '2018-08-28 12:25:40', '2018-08-28 12:25:40', '1550205822', 'lilianasei@hotmail.com', NULL, NULL),
(354, NULL, 'Karina', 'IMPALEA', '2019-07-11 07:33:44', '2018-08-28 12:27:13', '1530912854', 'kaimpalea@gmail.com', NULL, NULL),
(355, 25, 'Romina', 'GARCÍA', '2018-08-28 13:25:16', '2018-08-28 13:25:16', '1561717450', 'rominagiselagarcia@hotmail.com', NULL, NULL),
(356, 77, 'Diana', 'CERVERO', '2018-08-28 13:39:30', '2018-08-28 13:39:30', '1560059350', 'dfz03@hotmail.com', NULL, NULL),
(357, 86, 'Sunilda', 'CABALLERO', '2018-12-10 12:12:13', '2018-08-28 13:41:43', '1525129604', 'sunny_cab@hotmail.com', NULL, NULL),
(358, NULL, 'Monica', 'HERRERO', '2019-04-26 09:17:20', '2018-09-12 07:38:15', '1559546489', 'monicaceciliaherrero@gmail.com', NULL, NULL),
(359, 6, 'Lilian', 'FERREYRO', '2018-09-12 08:57:01', '2018-09-12 08:57:00', '1536704831', 'lilianferr2002@gmail.com', NULL, NULL),
(360, 98, 'Andrea', 'ABELEDO', '2018-09-12 09:15:34', '2018-09-12 09:15:34', '1535622341', 'andrea.abeledo@bue.edu.ar', NULL, NULL),
(361, NULL, 'Norma', 'ZARATE', '2019-03-19 11:35:16', '2018-09-12 09:16:50', '1551423955', NULL, NULL, NULL),
(362, 164, 'Hilda', 'PEREYRA', '2018-09-12 09:19:26', '2018-09-12 09:19:25', '1532872257', 'hilda.pereyra@bue.edu.ar', NULL, NULL),
(363, 167, 'Veronica', 'ROSALES', '2018-09-12 09:20:31', '2018-09-12 09:20:31', '1557590942', 'verocisv@yahoo.com.ar', NULL, NULL),
(364, 170, 'Sandra', 'COSTILLA', '2018-09-12 09:21:31', '2018-09-12 09:21:31', '1559207668', 's_costilla@yahoo.es', NULL, NULL),
(365, 133, 'Erika', 'MARCHETTI', '2018-09-12 09:24:20', '2018-09-12 09:24:20', '1563692330', 'erika.marchetti@bue.edu.ar', NULL, NULL),
(366, 201, 'Adriana', 'ORIAS', '2018-09-12 09:26:32', '2018-09-12 09:26:32', '1565882204', 'adriana.orias@bue.edu.ar', NULL, NULL),
(367, NULL, 'Silvia', 'ITKIN', '2019-04-26 09:27:57', '2018-09-12 09:28:44', '1534739992', 'sitkin@gmail.com', NULL, NULL),
(368, 198, 'María Celia', 'DOBEN', '2018-09-12 09:30:02', '2018-09-12 09:30:02', '1530254849', 'mceliadoben@gmail.com', NULL, NULL),
(369, 21, 'Marcelo', 'CARPINTERO', '2018-10-16 07:53:15', '2018-10-02 08:51:02', '1562452729', 'macarpin@hotmail.com', NULL, NULL),
(370, NULL, 'Patricia', 'LO BRUTTO', '2019-07-30 07:27:41', '2018-10-22 10:51:18', '1540352652', 'patolobrutto@hotmail.com', NULL, NULL),
(371, 188, 'María', 'LABATE', '2018-12-10 12:05:05', '2018-12-10 12:05:05', '1553358674', NULL, NULL, NULL),
(372, 48, 'María', 'LONGUEIRA', '2019-04-26 08:55:03', '2018-12-10 12:07:16', '1567250677', 'merylongueira@gmail.com', NULL, NULL),
(373, NULL, 'Alicia', 'SALICO', '2019-07-11 07:39:50', '2018-12-10 12:12:56', NULL, NULL, NULL, NULL),
(374, NULL, 'Mariela', 'BERMAN', '2019-04-26 09:09:32', '2018-12-10 12:15:17', '1531823817', 'mariela.berman@bue.edu.ar', NULL, NULL),
(375, 141, 'Mariana', 'ROSSETTI', '2018-12-20 10:56:16', '2018-12-20 10:56:16', '1553371508', 'marianarossetti@gmail.com', NULL, NULL),
(376, 142, 'Martín', 'CIFUENTES', '2018-12-20 10:57:48', '2018-12-20 10:57:48', '1537550881', 'martincifuentes73@gmail.com', NULL, NULL),
(377, 218, 'Marcela', 'ZONIS', '2019-04-26 08:42:56', '2019-04-26 08:42:56', '1549452662', 'marce.zonis@bue.edu.ar', NULL, NULL),
(378, 16, 'Patricia', 'AYUNTA', '2019-04-26 08:44:35', '2019-04-26 08:44:35', '1563090670', NULL, NULL, NULL),
(379, 239, 'Beatriz', 'CABA', '2019-04-26 08:49:01', '2019-04-26 08:49:01', '1562894730', 'beatrizicaba@gmail.com', NULL, NULL),
(380, 223, 'Graciela', 'ROZIAK', '2019-04-26 08:54:40', '2019-04-26 08:54:40', '1550981507', 'grarosiak@yahoo.com', NULL, NULL),
(381, 194, 'Juana', 'GONZÁLEZ', '2019-04-26 08:58:06', '2019-04-26 08:58:06', NULL, NULL, NULL, NULL),
(382, NULL, 'Valeria', 'GÓMEZ', '2019-08-21 11:38:41', '2019-04-26 09:08:04', NULL, NULL, NULL, NULL),
(383, 147, 'Ana Clara', 'AMABILE', '2019-07-30 07:29:37', '2019-04-26 09:10:49', NULL, 'acamabile@yahoo.com.ar', NULL, NULL),
(384, 153, 'Claudia', 'FERRADAS', '2019-04-26 09:18:09', '2019-04-26 09:18:09', '1544162241', 'claudiaferradas@gmail.com', NULL, NULL),
(385, 180, 'Norma Alejandra', 'ZARATE', '2019-04-26 09:20:26', '2019-04-26 09:20:26', '1551423955', NULL, NULL, NULL),
(386, 200, 'Silvana', 'LURBE', '2019-04-26 09:34:31', '2019-04-26 09:34:31', '1536219402', 'silbana.lurbe@bue.edu.ar', NULL, NULL),
(387, 83, 'María Luján', 'URIOSTE', '2019-06-19 07:12:50', '2019-05-15 09:16:35', '1564611555', 'mariaurioste@yahoo.com.ar', NULL, NULL),
(388, NULL, 'Claudia', 'BERBERIÁN', '2019-07-11 07:38:17', '2019-05-22 07:37:02', '1533014622', 'claudia.berberian@bue.edu.ar', NULL, NULL),
(389, 81, 'Raquel', 'GAMARNIK', '2019-05-22 07:38:06', '2019-05-22 07:38:06', '1569320727', 'raquelgamarnik@yahoo.com.ar', NULL, NULL),
(390, 92, 'Liliana', 'CAPDEPONT', '2019-08-05 08:23:24', '2019-05-22 07:39:36', '1532590619', 'lilicapde@hotmail.com', NULL, NULL),
(391, 137, 'Hugo', 'FREITAS', '2019-05-22 07:43:26', '2019-05-22 07:43:26', '1536400462', 'hugofreitas21@yahoo.com.ar', NULL, NULL),
(392, 100, 'Irma', 'SICARDI', '2019-06-26 10:57:56', '2019-06-26 10:57:56', NULL, 'irma.sicardi@bue.edu.ar', NULL, NULL),
(393, 15, 'Mariela', 'COZZA', '2019-07-11 07:31:38', '2019-07-11 07:31:38', '1564911944', NULL, NULL, NULL),
(394, 36, 'Andrea', 'MÁRCORA', '2019-07-11 07:33:23', '2019-07-11 07:33:23', '1541657586', 'a-mar@live.com.ar', NULL, NULL),
(395, 240, 'María Andrea', 'CALABRÓ', '2019-07-11 07:34:34', '2019-07-11 07:34:34', '1550498079', NULL, NULL, NULL),
(396, 71, 'Patricia', 'BABARESCO', '2019-07-11 07:38:53', '2019-07-11 07:38:53', '1540706163', 'patriciabavaresco@gmail.com', NULL, NULL),
(397, 168, 'Valeria', 'CASERO', '2019-07-30 07:28:11', '2019-07-30 07:28:11', '1565635916', 'valeria.casero@bue.edu.ar', NULL, NULL),
(398, 236, 'Stella Maris', 'SPINO', '2019-07-30 07:29:20', '2019-07-30 07:29:20', '1530017289', 'stellamarisp@yahoo.com.ar', NULL, NULL),
(399, 42, 'Adriana', 'MESTRES', '2019-08-20 08:05:01', '2019-08-20 08:05:00', '1567192611', 'namestres@gmail.com', NULL, NULL),
(400, 217, 'Fernando', 'GIMENEZ', '2019-08-21 11:46:45', '2019-08-21 11:39:38', '1521916391', 'fernando.gimenez2@bue.edu.ar', NULL, NULL),
(401, 171, 'Martín', 'GARCÍA', '2019-08-22 08:53:23', '2019-08-22 08:52:30', '1567497284', 'martingarciasastre@hotmail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aviso`
--

DROP TABLE IF EXISTS `aviso`;
CREATE TABLE IF NOT EXISTS `aviso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `fecha` date NOT NULL,
  `activo` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=44 ;

--
-- Volcar la base de datos para la tabla `aviso`
--

INSERT INTO `aviso` (`id`, `descripcion`, `fecha`, `activo`) VALUES
(1, 'Yo terminé de cargar los CUI que le faltaban a Ludmila. Quedaron todos cargados', '2014-09-26', 1),
(2, 'Estoy empezando a cargar las carreras de la oferta 2015. Las del 2009 van a quedar con estado RESIDUAL y las 2015 con estado ACTIVA.', '2015-05-08', 1),
(4, 'Los nombres de las carreras de la oferta 2015 tienen que ser revisados a partir de las nuevas resoluciones jurisdiccionales', '2015-05-08', 1),
(5, 'Cargué la oferta del IES 1', '2015-05-13', 1),
(6, 'Terminé de cargar la oferta de las carreras nuevas (oferta 2015). Son las activas. Sobre las residuales habría que hacer un estudio.', '2015-05-14', 1),
(7, 'Se le agrega el campo "comentarios" a las carreras para poner información como por ejemplo la incumbencia (o lo que sea).', '2015-05-18', 1),
(8, 'Ya se pueden cargar los títulos de las carreras y asignárselos a las carreras.', '2015-05-22', 1),
(9, 'Agregué un listado de establecimientos que sale a planilla Excel', '2015-06-04', 1),
(10, 'Ya se pueden cargar los INSPECTORES DE INFRAESTRUCTURA. Primero se carga el inspector y luego se va a la tabla de "Edificios" y se carga cual es el inspector que le corresponde.', '2015-06-17', 1),
(11, 'Los CUI están chequeados', '2015-06-23', 1),
(12, 'Agregué los datos de todos los rectores', '2015-06-24', 1),
(13, 'Agregué una opción de menú que es "Listados" y agregué el "Listado de rectores"', '2015-06-24', 1),
(14, 'Agregué un listado de inspectores de infraestructura que sale a planilla de cálculo', '2015-06-25', 1),
(15, 'Al día de la fecha controlé y corregí los nombres de las carreras según el INFD contra lo que el año pasado me informó el Joaquín que dictaba, verificando si las carreras de 4 y de 5 años según incumbencia.', '2015-06-30', 1),
(16, 'Todas las URL están al día.', '2015-07-10', 1),
(17, 'Agregué los turnos de los niveles medios de todos los establecimeintos', '2015-07-14', 1),
(18, 'Estoy agregando las orientaciones de la NES', '2015-07-28', 1),
(19, 'Dejé sólo las carreras ACTIVAS. Las RESIDUALES las desasigné de los establecimientos.', '2015-07-28', 1),
(20, 'Agregué una referencia en los edificios para que sean más fácilmente identificables', '2015-07-29', 1),
(21, 'Mejoré la identificación de las tablas de la Administración', '2015-07-31', 1),
(22, 'Estoy mejorando la estética de varias pantallas', '2015-07-31', 1),
(23, 'Cargué todas las orientaciones de la NES de todos los establecimeintos que tienen media.\r\nMe falta cargar algunos turnos de las medias.', '2015-08-03', 1),
(24, 'Están cargados los turnos de la NES en cada escuela', '2015-08-04', 1),
(27, 'Agregué frases célebres', '2015-08-11', 1),
(28, 'Agregué la oferta de terciario en el anexo de la ENS 8', '2015-08-11', 1),
(29, 'Códigos postales cargados. Faltan muy pocos.', '2015-08-20', 1),
(30, 'De las fechas de creación de los establecimientos faltan cargar 5', '2015-08-20', 1),
(31, 'Los emails están cargados por sede y anexo', '2015-08-20', 1),
(32, 'Ya se pueden cargar las salas que cada establecimiento tiene en el nivel Inicial', '2015-08-28', 1),
(33, 'Reorganización de algunos datos generales de la ficha de establecimiento.', '2015-09-01', 1),
(34, 'Al listado de establecimientos se la agrega el rector y el mail personal del rector', '2015-09-01', 1),
(35, 'Facu cargó las secciones de inicial, los turnos de inicial, los turnos de media y los turnos de primaria.', '2015-09-08', 1),
(36, 'En la nómina completa de establecimientos se agregó si el ingreso es con examen.', '2015-10-23', 1),
(37, 'En la ficha del establecimiento se agregó si requiere examen de ingreso a terciario.', '2015-10-23', 1),
(38, 'A la oferta académica de terciario se le agregó en que establecimientos cada carrera requiere examen de ingreso.', '2015-10-23', 1),
(39, 'Se agregó el cupo a las carreras de cada establecimiento. Falta cargar.', '2015-10-26', 1),
(40, 'Se agregó si cada carrera tiene examen de ingreso. Falta cargar. También se refleja en la ficha del establecimiento.', '2015-10-26', 1),
(41, 'Se agregaron los cupos de las carreras en cada uno de los turnos en cada establecimiento.', '2015-10-27', 1),
(42, 'Se agregó un listado con la oferta de carreras completa por establecimeinto, sede/anexo, con cupo, turnos y si tiene o no examen de ingreso.', '2015-10-27', 1),
(43, 'Terminé de implementar la agenda y migré los datos desde la planilla on line que se usaba como agenda.', '2015-12-22', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bachillerato`
--

DROP TABLE IF EXISTS `bachillerato`;
CREATE TABLE IF NOT EXISTS `bachillerato` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `titulo` varchar(50) DEFAULT NULL,
  `ciclo_basico` varchar(255) DEFAULT NULL,
  `duracion` varchar(255) DEFAULT NULL,
  `oferta_educativa_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_40A642E915CE31DF` (`oferta_educativa_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcar la base de datos para la tabla `bachillerato`
--

INSERT INTO `bachillerato` (`id`, `nombre`, `titulo`, `ciclo_basico`, `duracion`, `oferta_educativa_id`) VALUES
(1, 'Bachillerato', 'Bachiller', 'si', '5', 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `barrio`
--

DROP TABLE IF EXISTS `barrio`;
CREATE TABLE IF NOT EXISTS `barrio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `abreviatura` varchar(5) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=75 ;

--
-- Volcar la base de datos para la tabla `barrio`
--

INSERT INTO `barrio` (`id`, `nombre`, `abreviatura`, `created`, `updated`) VALUES
(29, 'Palermo', 'PAL', NULL, NULL),
(30, 'Almagro', 'ALM', NULL, NULL),
(31, 'Flores', 'FLO', NULL, NULL),
(32, 'Villa Urquiza', 'URQ', NULL, NULL),
(33, 'Balvanera', 'BVN', NULL, NULL),
(34, 'Villa Lugano', 'VLG', NULL, NULL),
(35, 'Belgrano', 'BGN', NULL, NULL),
(38, 'Boedo', 'BOE', NULL, NULL),
(39, 'Agronomía', 'AGR', NULL, NULL),
(40, 'Barracas', 'BAR', NULL, NULL),
(41, 'Caballito', 'CBL', NULL, NULL),
(42, 'Chacarita', 'CHA', NULL, NULL),
(43, 'Coghlan', 'CHG', NULL, NULL),
(44, 'Colegiales', 'COL', NULL, NULL),
(45, 'Constitución', 'CTT', NULL, NULL),
(46, 'Floresta', 'FRT', NULL, NULL),
(47, 'La Boca', 'BOC', NULL, NULL),
(48, 'La Paternal', 'PAT', NULL, NULL),
(49, 'Liniers', 'LIN', NULL, NULL),
(50, 'Mataderos', 'MAT', NULL, NULL),
(51, 'Monte Castro', 'MCA', NULL, NULL),
(52, 'Monserrat', 'MON', NULL, NULL),
(53, 'Nueva Pompeya', 'POM', NULL, NULL),
(54, 'Núñez', 'NUÑ', NULL, NULL),
(55, 'Parque Avellaneda', 'AVE', NULL, NULL),
(56, 'Parque Chacabuco', 'CHA', NULL, NULL),
(57, 'Parque Chas', 'CHS', NULL, NULL),
(58, 'Parque Patricios', 'PPA', NULL, NULL),
(59, 'Puerto Madero', 'PMA', NULL, NULL),
(60, 'Recoleta', 'REC', NULL, NULL),
(61, 'Retiro', 'RET', NULL, NULL),
(62, 'Saavedra', 'SAA', NULL, NULL),
(63, 'San Cristóbal', 'SCR', NULL, NULL),
(64, 'San Nicolás', 'SIN', NULL, NULL),
(65, 'San Telmo', 'STE', NULL, NULL),
(66, 'Vélez Sársfield', 'VSA', NULL, NULL),
(67, 'Versalles', 'VER', NULL, NULL),
(68, 'Villa Crespo', 'VCR', NULL, NULL),
(69, 'Villa del Parque', 'VDP', NULL, NULL),
(70, 'Villa Devoto', 'VDV', NULL, NULL),
(71, 'Villa General Mitre', 'VGM', NULL, NULL),
(74, 'aaa', 'aaa', '2018-08-24 00:00:00', '2018-08-24 10:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--

DROP TABLE IF EXISTS `cargo`;
CREATE TABLE IF NOT EXISTS `cargo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nivel_id` int(11) DEFAULT NULL,
  `turno_id` int(11) DEFAULT NULL,
  `codigo` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `actualizado` datetime NOT NULL,
  `creado` datetime NOT NULL,
  `orden` int(11) NOT NULL,
  `dependencia_referenciante_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_3BEE5771DA3426AE` (`nivel_id`),
  KEY `IDX_3BEE577169C5211E` (`turno_id`),
  KEY `IDX_3BEE577189AE3DE4` (`dependencia_referenciante_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=49 ;

--
-- Volcar la base de datos para la tabla `cargo`
--

INSERT INTO `cargo` (`id`, `nivel_id`, `turno_id`, `codigo`, `nombre`, `actualizado`, `creado`, `orden`, `dependencia_referenciante_id`) VALUES
(7, NULL, NULL, 'RNP', 'Regente de Primaria', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(9, 32, NULL, 'RNT', 'Regente Terciario', '2015-11-20 17:42:35', '0000-00-00 00:00:00', 0, 14),
(11, NULL, NULL, 'REC', 'Rector/a', '2015-11-20 17:39:27', '0000-00-00 00:00:00', 0, 8),
(12, NULL, NULL, 'Vicer', 'Vicerrector/a', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(13, NULL, NULL, 'DNM', 'Director/a de Media', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(14, NULL, NULL, 'DNI', 'Director/a de Inicial', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(15, NULL, NULL, 'VNI', 'Vicedirector/a de Inicial', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(16, NULL, NULL, 'MSNI', 'Maestra Secretaria de Inicial', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(17, NULL, NULL, 'SRNP', 'Subregente de Primaria', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(18, NULL, NULL, 'MSNP', 'Maestra Secretaria de Primaria', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(19, NULL, NULL, 'CON', 'Consejero de Terciario', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(20, NULL, NULL, 'SEC', 'Secretario/a', '2015-11-20 17:39:47', '0000-00-00 00:00:00', 0, 9),
(21, NULL, NULL, 'PRONT', 'Prosecretario de Terciario', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(22, NULL, NULL, 'TUNT', 'Tutor de Terciario', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(23, NULL, NULL, 'COONT', 'Coordinador de Área', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(24, NULL, NULL, 'VDNM', 'Vicedirector/a de Media', '2016-09-22 16:04:16', '0000-00-00 00:00:00', 0, NULL),
(25, NULL, NULL, 'COONM', 'Coordinador de Área de Media', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(26, NULL, NULL, 'CONNM', 'Consejero de Media', '2015-11-24 17:19:26', '0000-00-00 00:00:00', 0, NULL),
(27, NULL, NULL, 'TUNM', 'tutor de Media', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(28, NULL, NULL, 'COOTM', 'Coordinador de tutores de Media', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(29, NULL, NULL, 'PRONM', 'Prosecretario/a de Media', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(30, NULL, NULL, 'JUB', 'Jubilado/a', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(31, NULL, NULL, 'RSA', 'Regente Secretario Académico', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(32, NULL, NULL, 'RPEI', 'Regente PEI', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(33, NULL, NULL, 'RPEP', 'Regente PEP', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(34, NULL, NULL, 'VTM', 'Vicerrector TM', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(35, NULL, NULL, 'VTT', 'Vicerrector TT', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(36, NULL, NULL, 'JGT', 'Jefe Gastronomía', '2015-12-21 18:17:31', '2015-12-21 18:17:31', 9, NULL),
(37, NULL, NULL, 'CIND', 'Coord Indumentaria', '2015-12-21 18:17:31', '2015-12-21 18:17:31', 10, NULL),
(38, NULL, NULL, 'PROS', 'Prosecretario/a', '2015-12-21 18:23:08', '2015-12-21 18:23:08', 15, 15),
(39, NULL, NULL, 'RTTT', 'Regente Terciario TT', '2016-09-22 17:17:13', '2016-09-22 17:14:55', 50, NULL),
(40, NULL, NULL, 'RTTM', 'Regente Terciario TM', '2016-09-22 17:19:18', '2016-09-22 17:19:18', 51, NULL),
(41, 31, 29, 'VDMTM', 'Vicedirector/a de Media TM', '2016-09-23 12:32:30', '2016-09-23 12:32:30', 52, 12),
(42, 31, 30, 'VDMTT', 'Vicedirector/a de Media TT', '2016-09-23 12:33:02', '2016-09-23 12:33:02', 53, 12),
(43, 32, NULL, 'RFD', 'Regente FD', '2016-12-21 09:48:57', '2016-12-21 09:48:57', 50, 14),
(44, 32, NULL, 'RFT', 'Regente FT', '2016-12-21 09:49:28', '2016-12-21 09:49:28', 51, 14),
(45, 32, 31, 'RTTV', 'Regente Terciario TV', '2017-03-20 13:48:45', '2017-03-20 13:48:45', 200, 14),
(46, 32, NULL, 'BDL', 'Bedel', '2017-11-08 17:23:46', '2017-11-08 17:23:45', 90, 16),
(47, NULL, NULL, 'PS-TM', 'Prosecretario/a TM', '2018-03-02 12:01:33', '2018-03-02 12:01:32', 12, 9),
(48, NULL, 30, 'PS-TT', 'Prosecretario/a TT', '2018-03-02 12:02:17', '2018-03-02 12:02:16', 13, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo_ap`
--

DROP TABLE IF EXISTS `cargo_ap`;
CREATE TABLE IF NOT EXISTS `cargo_ap` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `abreviatura` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

--
-- Volcar la base de datos para la tabla `cargo_ap`
--

INSERT INTO `cargo_ap` (`id`, `nombre`, `abreviatura`) VALUES
(7, 'Regente de Primaria', 'RNP'),
(9, 'Regente Terciario', 'RNT'),
(11, 'Rector/a', 'REC'),
(12, 'Vicerrector/a', 'Vicer'),
(13, 'Director/a de Media', 'DNM'),
(14, 'Director/a de Inicial', 'DNI'),
(15, 'Vicedirector de Inicial', 'VNI'),
(16, 'Maestro Secretario de Inicial', 'MSNI'),
(17, 'Subregente de Primaria', 'SRNP'),
(18, 'Maestro Secretario de Primaria', 'MSNP'),
(19, 'Consejero de Terciario', 'CON'),
(20, 'Secretario/a de Terciario', 'SECNT'),
(21, 'Prosecretario de Terciario', 'PRONT'),
(22, 'Tutor de Terciario', 'TUNT'),
(23, 'Coordinador de Área', 'COONT'),
(24, 'Vicedirector de Media', 'VDNM'),
(25, 'Coordinador de Área de Media', 'COONM'),
(26, 'Consejero de Media', 'CONNM'),
(27, 'tutor de Media', 'TUNM'),
(28, 'Coordinador de tutores de Media', 'COOTM'),
(29, 'Prosecretario de Media', 'PRONM'),
(30, 'Jubilado/a', 'JUB'),
(31, 'Regente Secretario Académico', 'RSA'),
(32, 'Regente PEI', 'RPEI'),
(33, 'Regente PEP', 'RPEP'),
(34, 'Vicerrector TM', 'VTM'),
(35, 'Vicerrector TT', 'VTT');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

DROP TABLE IF EXISTS `carrera`;
CREATE TABLE IF NOT EXISTS `carrera` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  `duracion` varchar(255) DEFAULT NULL,
  `formacion_id` int(11) DEFAULT NULL,
  `oferta_educativa_id` int(11) DEFAULT NULL,
  `estado_id` int(11) DEFAULT NULL,
  `actualizado` datetime NOT NULL,
  `creado` datetime NOT NULL,
  `anio_inicio` int(11) DEFAULT NULL,
  `comentario` varchar(250) DEFAULT NULL,
  `disciplina_id` int(11) DEFAULT NULL,
  `publica_en_siol` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_CF1ECD3015CE31DF` (`oferta_educativa_id`),
  KEY `IDX_CF1ECD30F0798A6E` (`formacion_id`),
  KEY `IDX_CF1ECD309F5A440B` (`estado_id`),
  KEY `IDX_CF1ECD302A30B056` (`disciplina_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=135 ;

--
-- Volcar la base de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`id`, `nombre`, `duracion`, `formacion_id`, `oferta_educativa_id`, `estado_id`, `actualizado`, `creado`, `anio_inicio`, `comentario`, `disciplina_id`, `publica_en_siol`) VALUES
(7, 'Tecnicatura Superior en Gastronomía', NULL, 2, 6, 1, '2015-12-29 15:26:08', '2015-12-29 00:00:00', NULL, 'est es un comentario', 5, 1),
(13, 'Traductorado Técnico Científico Literario en Idioma Inglés', NULL, 2, 12, 1, '2015-12-29 15:26:08', '0000-00-00 00:00:00', NULL, NULL, 1, 1),
(31, 'Ciclo de Formación Pedagógica para Profesionales y Técnicos Superiores (Nivel Medio y Superior)', '4', 1, 41, 1, '2015-12-29 15:26:08', '0000-00-00 00:00:00', NULL, NULL, 7, 1),
(41, 'Psicopedagogía', NULL, 2, 49, 1, '2018-07-31 16:41:36', '0000-00-00 00:00:00', NULL, NULL, 15, 1),
(49, 'Profesorado de Educación Secundaria de la modalidad Técnico Profesional en concurrencia con título de base', '1200', 1, 57, 4, '2018-11-09 13:52:36', '0000-00-00 00:00:00', 2000, NULL, 1, 0),
(71, 'Profesorado de Educación Inicial', '5 años', 1, 86, 1, '2015-12-29 15:26:08', '2014-09-24 08:12:47', 2015, NULL, 3, 1),
(72, 'Profesorado de Educación Primaria', '5 años', 1, 87, 1, '2017-05-24 09:57:11', '2014-09-24 12:19:30', 2015, NULL, 4, 1),
(74, 'Profesorado de Alemán', '4', 1, 89, 1, '2015-12-29 15:26:08', '2014-10-07 14:17:33', 2015, NULL, 8, 1),
(75, 'Profesorado de Educación Secundaria en Biología', '5', 1, 90, 3, '2015-12-29 15:34:04', '2014-10-07 14:17:34', 2015, NULL, 19, NULL),
(76, 'Profesorado de Educación Superior en Ciencias de la Administración', '5', 1, 91, 1, '2015-12-29 15:32:18', '2014-10-07 14:17:34', 2015, NULL, 28, 1),
(77, 'Profesorado de Educación Superior en Ciencias de la Educación', '5', 1, 92, 1, '2015-12-29 15:26:08', '2014-10-07 14:17:34', 2015, NULL, 20, 1),
(78, 'Profesorado de Ciencias Jurídicas (con validez jurisdiccional)', '4', 1, 93, 1, '2015-12-29 15:26:08', '2014-10-07 14:17:34', 2015, NULL, 21, 1),
(79, 'Profesorado de Educación Secundaria en Economía', '5', 1, 94, 3, '2015-12-29 15:34:53', '2014-10-07 14:17:34', 2015, NULL, 22, NULL),
(80, 'Profesorado de Educación Especial con orientación en Discapacidad Intelectual', '4.105', 1, 95, 3, '2015-12-29 15:40:36', '2014-10-07 14:17:34', 2015, NULL, 17, NULL),
(81, 'Profesorado de Educación Especial con orientación en Sordos e Hipoacúsicos', '4.037', 1, 96, 3, '2015-12-29 15:40:46', '2014-10-07 14:17:34', 2015, NULL, 17, NULL),
(82, 'Profesorado de Educación Física', '3.964', 1, 97, 3, '2015-12-29 15:38:19', '2014-10-07 14:17:34', 2015, NULL, 18, NULL),
(84, 'Profesorado de Educación Superior en Ciencia Política', '5', 1, 99, 1, '2015-12-29 15:26:08', '2014-10-07 14:17:34', 2015, NULL, 23, 1),
(85, 'Profesorado de Educación Superior en Alemán', '5', 1, 100, 1, '2015-12-29 15:26:08', '2014-10-07 14:17:34', 2015, NULL, 8, 1),
(86, 'Profesorado de Educación Superior en Educación Física', '4.356', 1, 101, 1, '2015-12-29 15:26:08', '2014-10-07 14:17:35', 2015, NULL, 18, 1),
(87, 'Profesorado de Educación Superior en Filosofía', '4.383', 1, 102, 1, '2015-12-29 15:26:08', '2014-10-07 14:17:35', 2015, NULL, 10, 1),
(88, 'Profesorado de Educación Superior en Física', '4.329', 1, 103, 1, '2015-12-29 15:26:08', '2014-10-07 14:17:35', 2015, NULL, 11, 1),
(89, 'Profesorado de Educación Superior en Francés', '5', 1, 104, 1, '2015-12-29 15:26:08', '2014-10-07 14:17:35', 2015, NULL, 9, 1),
(90, 'Profesorado de Educación Superior en Historia', '4.340', 1, 105, 1, '2015-12-29 15:26:08', '2014-10-07 14:17:35', 2015, NULL, 12, 1),
(91, 'Profesorado de Educación Superior en Inglés', '5', 1, 106, 1, '2015-12-29 15:26:08', '2014-10-07 14:17:35', 2015, NULL, 1, 1),
(92, 'Profesorado de Educación Superior en Italiano', '5', 1, 107, 1, '2015-12-29 15:26:08', '2014-10-07 14:17:35', 2015, NULL, 24, 1),
(93, 'Profesorado de Educación Superior en Lengua y Literatura', '5', 1, 108, 1, '2015-12-29 15:26:08', '2014-10-07 14:17:35', 2015, NULL, 13, 1),
(94, 'Profesorado de Educación Superior en Matemática', '5', 1, 109, 1, '2015-12-29 15:26:08', '2014-10-07 14:17:35', 2015, NULL, 14, 1),
(95, 'Profesorado de Educación Superior en Portugués', '5', 1, 110, 1, '2015-12-29 15:26:08', '2014-10-07 14:17:35', 2015, NULL, 2, 1),
(96, 'Profesorado de Educación Superior en Psicología', '5', 1, 111, 1, '2015-12-29 15:26:08', '2014-10-07 14:17:35', 2015, NULL, 15, 1),
(97, 'Profesorado de Educación Superior en Química', '5', 1, 112, 1, '2015-12-29 15:26:08', '2014-10-07 14:17:35', 2015, NULL, 25, 1),
(98, 'Profesorado de Educación Tecnológica', '4', 1, 113, 1, '2015-12-29 15:26:08', '2014-10-07 14:17:36', 2015, NULL, 16, 1),
(99, 'Profesorado de Educación Superior en Educación Especial con orientación en Ciegos y Disminuidos Visuales', '4.640', 1, 114, 1, '2015-12-29 15:39:39', '2014-10-07 14:17:36', 2015, NULL, 30, 1),
(100, 'Profesorado de Educación Secundaria en Filosofía', '5', 1, 115, 3, '2015-12-29 15:41:40', '2014-10-07 14:17:36', 2015, NULL, 10, NULL),
(101, 'Profesorado de Educación Secundaria en Física', '4', 1, 116, 1, '2015-12-29 15:26:08', '2014-10-07 14:17:36', 2015, NULL, 11, 1),
(102, 'Profesorado de Francés', '4', 1, 117, 1, '2015-12-29 15:26:08', '2014-10-07 14:17:36', 2015, NULL, 9, 1),
(103, 'Profesorado de Educación Superior en Geografía', '5', 1, 118, 1, '2015-12-29 15:26:08', '2014-10-07 14:17:36', 2015, NULL, 26, 1),
(104, 'Profesorado de Educación Secundaria en Historia', '5', 1, 119, 3, '2015-12-29 15:42:06', '2014-10-07 14:17:36', 2015, NULL, 12, NULL),
(105, 'Profesorado de Educación Secundaria en Informática', '3.918', 1, 120, 3, '2015-12-29 15:42:36', '2014-10-07 14:17:36', 2015, NULL, 27, NULL),
(106, 'Profesorado de Inglés', '4', 1, 121, 1, '2015-12-29 15:26:08', '2014-10-07 14:17:36', 2015, NULL, 1, 1),
(107, 'Profesorado en Italiano', '4', 1, 122, 1, '2015-12-29 15:26:09', '2014-10-07 14:17:36', 2015, NULL, 24, 1),
(108, 'Profesorado de Educación Secundaria en Lengua y Literatura', '4', 1, 123, 1, '2015-12-29 15:26:08', '2014-10-07 14:17:37', 2015, NULL, 13, 1),
(110, 'Profesorado de Portugués', '4', 1, 125, 1, '2015-12-29 15:26:08', '2014-10-07 14:17:37', 2015, NULL, 2, 1),
(111, 'Profesorado de Educación Secundaria en Psicología', '4', 1, 126, 3, '2015-06-30 14:35:16', '2014-10-07 14:17:37', 2015, NULL, NULL, NULL),
(112, 'Profesorado de Educación Secundaria en Química', '4', 1, 127, 3, '2015-06-30 14:38:33', '2014-10-07 14:17:37', 2015, NULL, NULL, NULL),
(113, 'Tecnicatura Superior en Producción de Indumentaria', '3008', 2, 128, 1, '2015-12-29 15:26:08', '2015-05-07 15:36:47', 2014, NULL, 6, 1),
(114, 'Ciclo de Formación Pedagógica para Profesionales y Técnicos Superiores (Nivel Primario, Medio y Superior)', NULL, 1, 129, 1, '2018-08-24 10:09:23', '2015-05-13 14:53:37', 2015, NULL, 7, 1),
(118, 'Profesorado de Educación Especial con orientación en Ciegos y Disminuidos Visuales', '4.095', 1, 134, 3, '2015-12-29 15:40:02', '2015-06-19 10:27:17', 2015, NULL, 17, NULL),
(119, 'Profesorado de Educación Superior en Informática', '4.300', 1, 135, 1, '2015-12-29 15:26:09', '2015-06-19 10:50:33', 2015, NULL, 27, 1),
(124, 'Traductorado de Alemán', NULL, 2, 140, 1, '2015-12-29 15:26:08', '2015-06-25 11:40:50', 2015, NULL, 8, 1),
(125, 'Traductorado de Francés', NULL, 2, 141, 1, '2015-12-29 15:26:08', '2015-06-25 11:41:04', 2015, NULL, 9, 1),
(126, 'Traductorado de Portugués', NULL, 2, 142, 1, '2015-12-29 15:26:08', '2015-06-25 11:41:17', 2015, NULL, 2, 1),
(127, 'Traductorado de Inglés', NULL, 2, 143, 1, '2015-12-29 15:26:08', '2015-06-25 11:41:42', 2015, NULL, 1, 1),
(128, 'Profesorado de Educación Superior en Educación Especial con orientación en Discapacidad Intelectual', '5', 1, 144, 1, '2015-12-29 15:41:05', '2015-06-30 13:21:27', 2015, NULL, 30, 1),
(129, 'Profesorado de Educación Superior en Educación Especial con orientación en Sordos e Hipoacúsicos', '5', 1, 145, 1, '2015-12-29 15:41:15', '2015-06-30 13:22:06', 2015, NULL, 30, 1),
(130, 'Profesorado de Educación Superior en Economía', '5', 1, 146, 1, '2015-12-29 15:26:08', '2015-06-30 13:45:25', 2015, NULL, 22, 1),
(131, 'Profesorado de Educación Superior en Biología', '5', 1, 147, 1, '2015-12-29 15:26:08', '2015-06-30 13:56:05', 2015, NULL, 19, 1),
(132, 'Profesorado de Alemán para Enseñanza Media', '4382', 1, 149, 4, '2015-11-19 09:00:56', '2015-11-10 10:34:11', 2005, NULL, NULL, NULL),
(133, 'Profesorado de Ciencias Jurídicas, Políticas y Sociales', '123', 1, 150, 4, '2015-11-23 09:23:52', '2015-11-23 09:23:52', 1971, NULL, NULL, NULL),
(134, 'Profesorado de Educación Secundaria en Matemática', '4', 1, 151, 1, '2017-10-23 16:42:13', '2017-10-23 16:42:13', 2017, NULL, 14, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cgp`
--

DROP TABLE IF EXISTS `cgp`;
CREATE TABLE IF NOT EXISTS `cgp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_CF692037F55AE19E` (`numero`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=129 ;

--
-- Volcar la base de datos para la tabla `cgp`
--

INSERT INTO `cgp` (`id`, `numero`) VALUES
(113, '1'),
(122, '10'),
(123, '11'),
(124, '12'),
(125, '13'),
(126, '14'),
(127, '15'),
(128, '16'),
(114, '2'),
(115, '3'),
(116, '4'),
(117, '5'),
(118, '6'),
(119, '7'),
(120, '8'),
(121, '9');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cohorte`
--

DROP TABLE IF EXISTS `cohorte`;
CREATE TABLE IF NOT EXISTS `cohorte` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unidad_oferta_id` int(11) DEFAULT NULL,
  `anio` int(11) DEFAULT NULL,
  `matricula_ingresantes` int(11) DEFAULT NULL,
  `matricula_inicial` int(11) DEFAULT NULL,
  `matricula_final` int(11) DEFAULT NULL,
  `egreso` int(11) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `actualizado` datetime NOT NULL,
  `creado` datetime NOT NULL,
  `matricula` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_35697A4BD1F42FF` (`unidad_oferta_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=106 ;

--
-- Volcar la base de datos para la tabla `cohorte`
--

INSERT INTO `cohorte` (`id`, `unidad_oferta_id`, `anio`, `matricula_ingresantes`, `matricula_inicial`, `matricula_final`, `egreso`, `createdAt`, `actualizado`, `creado`, `matricula`) VALUES
(2, 261, 2017, 1, NULL, NULL, 1, '2017-08-25 11:05:42', '2017-08-28 09:59:59', '2017-08-25 11:05:42', 1),
(3, 453, 2017, 1, NULL, NULL, 1, '2017-08-25 11:08:39', '2017-08-28 10:00:31', '2017-08-25 11:08:39', 1),
(4, 278, 2017, 1, NULL, NULL, 1, '2017-08-25 11:09:12', '2017-08-28 09:55:45', '2017-08-25 11:09:12', 536),
(5, 262, 2017, 1, NULL, NULL, 1, '2017-08-25 11:09:46', '2017-08-28 09:56:20', '2017-08-25 11:09:46', 137),
(6, 279, 2017, 1, NULL, NULL, 1, '2017-08-25 11:10:04', '2017-08-28 09:56:35', '2017-08-25 11:10:04', 67),
(7, 263, 2017, 1, NULL, NULL, 1, '2017-08-25 11:10:26', '2017-08-28 09:56:57', '2017-08-25 11:10:26', 467),
(8, 280, 2017, 1, NULL, NULL, 1, '2017-08-25 11:10:45', '2017-08-28 09:57:10', '2017-08-25 11:10:45', 377),
(9, 281, 2017, 1, NULL, NULL, 1, '2017-08-25 11:11:05', '2017-08-28 10:02:11', '2017-08-25 11:11:05', 1),
(10, 282, 2017, 1, NULL, NULL, 1, '2017-08-25 11:13:12', '2017-08-28 10:03:20', '2017-08-25 11:13:12', 1),
(11, 283, 2017, 1, NULL, NULL, 1, '2017-08-25 11:15:08', '2017-08-28 10:03:36', '2017-08-25 11:15:08', 1),
(12, 284, 2017, 1, NULL, NULL, 1, '2017-08-25 11:16:22', '2017-08-28 10:04:02', '2017-08-25 11:16:22', 1),
(13, 285, 2017, 1, NULL, NULL, 1, '2017-08-25 11:16:55', '2017-08-28 09:57:39', '2017-08-25 11:16:55', 240),
(14, 286, 2017, 1, NULL, NULL, 1, '2017-08-25 11:20:29', '2017-08-28 09:57:53', '2017-08-25 11:20:29', 210),
(15, 304, 2017, 1, NULL, NULL, 1, '2017-08-25 11:20:54', '2017-08-28 09:58:21', '2017-08-25 11:20:54', 200),
(16, 327, 2017, 1, NULL, NULL, 1, '2017-08-25 11:21:21', '2017-08-28 09:58:53', '2017-08-25 11:21:21', 168),
(17, 289, 2017, 1, NULL, NULL, 1, '2017-08-25 11:22:01', '2017-08-28 10:05:49', '2017-08-25 11:22:01', 1),
(18, 288, 2017, 1, NULL, NULL, 1, '2017-08-25 11:22:18', '2017-08-28 10:05:16', '2017-08-25 11:22:18', 1),
(19, 290, 2017, 1, NULL, NULL, 1, '2017-08-25 11:22:52', '2017-08-28 10:06:56', '2017-08-25 11:22:52', 279),
(20, 291, 2017, 1, NULL, NULL, 1, '2017-08-25 11:23:05', '2017-08-28 10:07:12', '2017-08-25 11:23:05', 233),
(21, 295, 2017, 1, NULL, NULL, 1, '2017-08-25 11:24:30', '2017-08-28 10:07:47', '2017-08-25 11:24:30', 123),
(22, 294, 2017, 1, NULL, NULL, 1, '2017-08-25 11:29:40', '2017-08-28 10:07:30', '2017-08-25 11:29:40', 96),
(23, 292, 2017, 1, NULL, NULL, 1, '2017-08-25 11:30:04', '2017-08-28 10:08:02', '2017-08-25 11:30:04', 845),
(24, 296, 2017, 1, NULL, NULL, 1, '2017-08-25 11:30:40', '2017-08-28 10:09:31', '2017-08-25 11:30:40', 257),
(25, 297, 2017, 1, NULL, NULL, 1, '2017-08-25 11:30:54', '2017-08-28 10:09:47', '2017-08-25 11:30:54', 155),
(26, 447, 2017, 1, NULL, NULL, 1, '2017-08-25 11:32:53', '2017-08-28 10:11:29', '2017-08-25 11:32:53', 476),
(27, 298, 2017, 1, NULL, NULL, 1, '2017-08-25 11:39:58', '2017-08-28 10:10:22', '2017-08-25 11:39:58', 443),
(28, 299, 2017, 1, NULL, NULL, 1, '2017-08-25 11:40:22', '2017-08-28 10:10:35', '2017-08-25 11:40:22', 57),
(29, 300, 2017, 1, NULL, NULL, 1, '2017-08-25 11:40:39', '2017-08-28 10:10:51', '2017-08-25 11:40:39', 285),
(30, 301, 2017, 1, NULL, NULL, 1, '2017-08-25 11:40:55', '2017-08-28 10:11:10', '2017-08-25 11:40:55', 48),
(31, 328, 2017, 1, NULL, NULL, 1, '2017-08-25 11:41:34', '2017-08-28 10:15:17', '2017-08-25 11:41:34', 1),
(32, 326, 2017, 1, NULL, NULL, 1, '2017-08-25 11:41:58', '2017-08-28 10:14:37', '2017-08-25 11:41:58', 1),
(33, 329, 2017, 1, NULL, NULL, 1, '2017-08-25 11:43:04', '2017-08-28 10:15:48', '2017-08-25 11:43:04', 1),
(34, 330, 2017, 1, NULL, NULL, 1, '2017-08-25 11:43:45', '2017-08-28 10:16:16', '2017-08-25 11:43:45', 1),
(35, 331, 2017, 1, NULL, NULL, 1, '2017-08-25 11:44:02', '2017-08-28 10:16:59', '2017-08-25 11:44:02', 1),
(36, 332, 2017, 1, NULL, NULL, 1, '2017-08-25 11:44:35', '2017-08-28 10:17:37', '2017-08-25 11:44:35', 1),
(37, 302, 2017, 1, NULL, NULL, 1, '2017-08-25 11:45:30', '2017-08-28 10:12:37', '2017-08-25 11:45:30', 1),
(38, 323, 2017, 1, NULL, NULL, 1, '2017-08-25 11:46:32', '2017-08-28 10:19:42', '2017-08-25 11:46:32', 72),
(39, 453, 2016, 1, NULL, NULL, 1, '2017-08-28 10:00:55', '2017-08-28 10:00:55', '2017-08-28 10:00:55', 732),
(40, 261, 2016, 1, NULL, NULL, 1, '2017-08-28 10:01:40', '2017-08-28 10:01:40', '2017-08-28 10:01:40', 807),
(41, 281, 2016, 1, NULL, NULL, 1, '2017-08-28 10:02:29', '2017-08-28 10:02:29', '2017-08-28 10:02:29', 669),
(42, 282, 2016, 1, NULL, NULL, 1, '2017-08-28 10:03:06', '2017-08-28 10:03:07', '2017-08-28 10:03:06', 748),
(43, 283, 2016, 1, NULL, NULL, 1, '2017-08-28 10:03:47', '2017-08-28 10:03:48', '2017-08-28 10:03:47', 358),
(44, 284, 2016, 1, NULL, NULL, 1, '2017-08-28 10:04:15', '2017-08-28 10:04:15', '2017-08-28 10:04:15', 215),
(45, 288, 2016, 1, NULL, NULL, 1, '2017-08-28 10:05:34', '2017-08-28 10:05:35', '2017-08-28 10:05:34', 341),
(46, 289, 2016, 1, NULL, NULL, 1, '2017-08-28 10:06:18', '2017-08-28 10:06:18', '2017-08-28 10:06:18', 318),
(47, 293, 2017, 1, NULL, NULL, 1, '2017-08-28 10:09:12', '2017-08-28 10:09:12', '2017-08-28 10:09:12', 814),
(48, 302, 2016, 1, NULL, NULL, 1, '2017-08-28 10:14:05', '2017-08-28 10:14:05', '2017-08-28 10:14:05', 67),
(49, 326, 2016, 1, NULL, NULL, 1, '2017-08-28 10:14:53', '2017-08-28 10:14:54', '2017-08-28 10:14:53', 319),
(50, 328, 2016, 1, NULL, NULL, 1, '2017-08-28 10:15:34', '2017-08-28 10:15:34', '2017-08-28 10:15:34', 12),
(51, 329, 2016, 1, NULL, NULL, 1, '2017-08-28 10:16:02', '2017-08-28 10:16:02', '2017-08-28 10:16:02', 315),
(52, 330, 2016, 1, NULL, NULL, 1, '2017-08-28 10:16:45', '2017-08-28 10:16:45', '2017-08-28 10:16:45', 83),
(53, 331, 2016, 1, NULL, NULL, 1, '2017-08-28 10:17:20', '2017-08-28 10:17:20', '2017-08-28 10:17:20', 107),
(54, 332, 2016, 1, NULL, NULL, 1, '2017-08-28 10:17:52', '2017-08-28 10:17:52', '2017-08-28 10:17:52', 1303),
(55, 310, 2017, 1, NULL, NULL, 1, '2017-08-28 10:18:24', '2017-08-28 10:18:24', '2017-08-28 10:18:24', 31),
(57, 325, 2017, 1, NULL, NULL, 1, '2017-08-28 10:20:27', '2017-08-28 10:20:27', '2017-08-28 10:20:27', 165),
(58, 344, 2017, 1, NULL, NULL, 1, '2017-08-28 10:20:46', '2017-08-28 10:20:46', '2017-08-28 10:20:46', 31),
(59, 348, 2017, 1, NULL, NULL, 1, '2017-08-28 10:21:11', '2017-08-28 10:21:11', '2017-08-28 10:21:11', 210),
(60, 362, 2017, 1, NULL, NULL, 1, '2017-08-28 10:21:39', '2017-08-28 10:21:39', '2017-08-28 10:21:39', 95),
(61, 364, 2017, 1, NULL, NULL, 1, '2017-08-28 10:22:11', '2017-08-28 10:22:11', '2017-08-28 10:22:11', 221),
(62, 333, 2016, 1, NULL, NULL, 1, '2017-08-28 10:23:25', '2017-08-28 10:23:25', '2017-08-28 10:23:25', 102),
(63, 340, 2016, 1, NULL, NULL, 1, '2017-08-28 10:23:56', '2017-08-28 10:23:56', '2017-08-28 10:23:56', 218),
(64, 342, 2016, 1, NULL, NULL, 1, '2017-08-28 10:24:14', '2017-08-28 10:24:14', '2017-08-28 10:24:14', 272),
(65, 450, 2016, 1, NULL, NULL, 1, '2017-08-28 10:25:10', '2017-08-28 10:25:10', '2017-08-28 10:25:10', 36),
(66, 305, 2016, 1, NULL, NULL, 1, '2017-08-28 10:35:41', '2017-08-28 10:35:41', '2017-08-28 10:35:41', 17),
(67, 308, 2016, 1, NULL, NULL, 1, '2017-08-28 10:38:24', '2017-08-28 10:38:24', '2017-08-28 10:38:24', 138),
(68, 312, 2016, 1, NULL, NULL, 1, '2017-08-28 10:40:22', '2017-08-28 10:40:23', '2017-08-28 10:40:22', 318),
(69, 322, 2016, 1, NULL, NULL, 1, '2017-08-28 10:42:55', '2017-08-28 10:42:55', '2017-08-28 10:42:55', 26),
(70, 343, 2016, 1, NULL, NULL, 1, '2017-08-28 10:46:18', '2017-08-28 10:46:18', '2017-08-28 10:46:18', 34),
(71, 346, 2016, 1, NULL, NULL, 1, '2017-08-28 10:47:37', '2017-08-28 10:47:37', '2017-08-28 10:47:37', 43),
(72, 351, 2016, 1, NULL, NULL, 1, '2017-08-28 10:48:38', '2017-08-28 10:48:38', '2017-08-28 10:48:38', 95),
(73, 357, 2016, 1, NULL, NULL, 1, '2017-08-28 10:49:28', '2017-08-28 10:49:28', '2017-08-28 10:49:28', 21),
(74, 378, 2016, 1, NULL, NULL, 1, '2017-08-28 10:51:07', '2017-08-28 10:51:07', '2017-08-28 10:51:07', 61),
(75, 379, 2016, 1, NULL, NULL, 1, '2017-08-28 10:51:51', '2017-08-28 10:51:51', '2017-08-28 10:51:51', 64),
(76, 380, 2016, 1, NULL, NULL, 1, '2017-08-28 10:52:43', '2017-08-28 10:52:43', '2017-08-28 10:52:43', 479),
(77, 381, 2016, 1, NULL, NULL, 1, '2017-08-28 10:53:20', '2017-08-28 10:53:20', '2017-08-28 10:53:20', 93),
(78, 448, 2016, 1, NULL, NULL, 1, '2017-08-28 10:53:54', '2017-08-28 10:53:54', '2017-08-28 10:53:54', 65),
(79, 271, 2017, 1, NULL, NULL, 1, '2017-08-28 10:55:39', '2017-08-28 10:55:39', '2017-08-28 10:55:39', 1290),
(80, 384, 2016, 1, NULL, NULL, 1, '2017-08-28 11:00:49', '2017-08-28 11:00:49', '2017-08-28 11:00:49', 148),
(81, 352, 2016, 1, NULL, NULL, 1, '2017-08-28 11:02:45', '2017-08-28 11:02:45', '2017-08-28 11:02:45', 145),
(82, 385, 2016, 1, NULL, NULL, 1, '2017-08-28 11:03:04', '2017-08-28 11:03:04', '2017-08-28 11:03:04', 406),
(83, 313, 2017, 1, NULL, NULL, 1, '2017-08-28 11:03:32', '2017-08-28 11:03:32', '2017-08-28 11:03:32', 2344),
(84, 314, 2017, 1, NULL, NULL, 1, '2017-08-28 11:03:48', '2017-08-28 11:03:48', '2017-08-28 11:03:48', 841),
(85, 307, 2016, 1, NULL, NULL, 1, '2017-08-28 11:27:19', '2017-08-28 11:27:19', '2017-08-28 11:27:19', 559),
(86, 311, 2016, 1, NULL, NULL, 1, '2017-08-28 11:30:38', '2017-08-28 11:30:38', '2017-08-28 11:30:38', 292),
(88, 320, 2016, 1, NULL, NULL, 1, '2017-09-04 09:54:27', '2017-09-04 09:54:27', '2017-09-04 09:54:27', 135),
(89, 324, 2016, 1, NULL, NULL, 1, '2017-09-04 10:01:09', '2017-09-04 10:01:09', '2017-09-04 10:01:09', 144),
(90, 335, 2016, 1, NULL, NULL, 1, '2017-09-04 10:12:56', '2017-09-04 10:12:56', '2017-09-04 10:12:56', 92),
(91, 336, 2016, 1, NULL, NULL, 1, '2017-09-04 10:16:19', '2017-09-04 10:16:19', '2017-09-04 10:16:19', 30),
(92, 345, 2016, 1, NULL, NULL, 1, '2017-09-04 10:20:43', '2017-09-04 11:10:39', '2017-09-04 10:20:43', 39),
(93, 349, 2016, 1, NULL, NULL, 1, '2017-09-04 10:26:26', '2017-09-04 10:26:26', '2017-09-04 10:26:26', 226),
(94, 359, 2016, 1, NULL, NULL, 1, '2017-09-04 10:28:32', '2017-09-04 10:40:08', '2017-09-04 10:28:32', 364),
(95, 377, 2016, 1, NULL, NULL, 1, '2017-09-04 10:33:27', '2017-09-04 10:33:27', '2017-09-04 10:33:27', 174),
(96, 386, 2016, 1, NULL, NULL, 1, '2017-09-04 10:36:34', '2017-09-04 11:05:39', '2017-09-04 10:36:34', 511),
(97, 387, 2016, 1, NULL, NULL, 1, '2017-09-04 10:44:47', '2017-09-04 10:44:47', '2017-09-04 10:44:47', 44),
(98, 388, 2016, 1, NULL, NULL, 1, '2017-09-04 10:53:50', '2017-09-04 10:58:07', '2017-09-04 10:53:50', 66),
(99, 389, 2016, 1, NULL, NULL, 1, '2017-09-04 10:55:48', '2017-09-04 10:55:48', '2017-09-04 10:55:48', 77),
(100, 390, 2016, 1, NULL, NULL, 1, '2017-09-04 10:59:56', '2017-09-04 10:59:57', '2017-09-04 10:59:56', 1806),
(101, 391, 2016, 1, NULL, NULL, 1, '2017-09-04 11:02:26', '2017-09-04 11:02:27', '2017-09-04 11:02:26', 564),
(102, 392, 2016, 1, NULL, NULL, 1, '2017-09-04 11:04:19', '2017-09-04 11:04:19', '2017-09-04 11:04:19', 661),
(103, 393, 2016, 1, NULL, NULL, 1, '2017-09-04 11:07:24', '2017-09-04 11:07:24', '2017-09-04 11:07:24', 180),
(104, 446, 2016, 1, NULL, NULL, 1, '2017-09-04 11:08:04', '2017-09-04 11:08:04', '2017-09-04 11:08:04', 48),
(105, 451, 2016, 1, NULL, NULL, 1, '2017-09-04 11:10:17', '2017-09-04 11:10:18', '2017-09-04 11:10:17', 44);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comuna`
--

DROP TABLE IF EXISTS `comuna`;
CREATE TABLE IF NOT EXISTS `comuna` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=129 ;

--
-- Volcar la base de datos para la tabla `comuna`
--

INSERT INTO `comuna` (`id`, `numero`) VALUES
(113, 1),
(114, 2),
(115, 3),
(116, 4),
(117, 5),
(118, 6),
(119, 7),
(120, 8),
(121, 9),
(122, 10),
(123, 11),
(124, 12),
(125, 13),
(126, 14),
(127, 15),
(128, 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dependencia`
--

DROP TABLE IF EXISTS `dependencia`;
CREATE TABLE IF NOT EXISTS `dependencia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nivel_id` int(11) DEFAULT NULL,
  `turno_id` int(11) DEFAULT NULL,
  `codigo` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `actualizado` datetime NOT NULL,
  `creado` datetime NOT NULL,
  `orden` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_D23000C820332D99` (`codigo`),
  KEY `IDX_D23000C8DA3426AE` (`nivel_id`),
  KEY `IDX_D23000C869C5211E` (`turno_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=17 ;

--
-- Volcar la base de datos para la tabla `dependencia`
--

INSERT INTO `dependencia` (`id`, `nivel_id`, `turno_id`, `codigo`, `nombre`, `actualizado`, `creado`, `orden`) VALUES
(8, NULL, NULL, 'RCT', 'Rectoría', '2015-11-20 17:37:37', '2015-10-28 15:50:52', 2),
(9, NULL, NULL, 'SCT', 'Secretaría', '2015-11-20 17:37:45', '2015-10-28 15:50:52', 1),
(10, NULL, NULL, 'NI', 'Nivel Inicial', '2015-10-28 15:50:52', '2015-10-28 15:50:52', 4),
(11, NULL, NULL, 'NP', 'Nivel Primario', '2015-10-28 15:50:52', '2015-10-28 15:50:52', 5),
(12, NULL, NULL, 'NM', 'Nivel Medio', '2015-10-28 15:50:52', '2015-10-28 15:50:52', 6),
(14, NULL, NULL, 'NT', 'Nivel Terciario', '2015-11-20 17:36:48', '2015-11-20 17:36:23', 7),
(15, NULL, NULL, 'TEC', 'Tecnicaturas', '2015-12-21 18:14:49', '2015-12-21 18:14:49', 8),
(16, 32, NULL, 'BDL', 'Bedelía', '2017-11-08 17:22:04', '2017-11-08 17:20:44', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dia`
--

DROP TABLE IF EXISTS `dia`;
CREATE TABLE IF NOT EXISTS `dia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(3) NOT NULL,
  `descripcion` varchar(15) NOT NULL,
  `orden` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;

--
-- Volcar la base de datos para la tabla `dia`
--

INSERT INTO `dia` (`id`, `codigo`, `descripcion`, `orden`) VALUES
(36, 'DOM', 'Domingo', 1),
(37, 'LUN', 'Lunes', 2),
(38, 'MAR', 'Martes', 3),
(39, 'MIE', 'Miércoles', 4),
(40, 'JUE', 'Jueves', 5),
(41, 'VIE', 'Viernes', 6),
(42, 'SAB', 'Sábado', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `disciplina`
--

DROP TABLE IF EXISTS `disciplina`;
CREATE TABLE IF NOT EXISTS `disciplina` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=31 ;

--
-- Volcar la base de datos para la tabla `disciplina`
--

INSERT INTO `disciplina` (`id`, `codigo`, `descripcion`) VALUES
(1, 'ING', 'Inglés'),
(2, 'PTG', 'Portugués'),
(3, 'EDI', 'Ed. Inicial'),
(4, 'EDP', 'Ed. Primaria'),
(5, 'THA', 'Turismo, hotelería y afin'),
(6, 'IND', 'Indumentaria'),
(7, 'CFP', 'Ciclo Pedagógico'),
(8, 'ALM', 'Alemán'),
(9, 'FRC', 'Francés'),
(10, 'FIL', 'Filosofía'),
(11, 'FIS', 'Física'),
(12, 'HIS', 'Historia'),
(13, 'LIT', 'Literatura'),
(14, 'MAT', 'Matemática'),
(15, 'PSI', 'Psicología'),
(16, 'TEC', 'Tecnología'),
(17, 'EDE', 'Ed. Especial'),
(18, 'EDF', 'Ed. Física'),
(19, 'BLG', 'Biología'),
(20, 'CED', 'Cs. de la Educación'),
(21, 'CJR', 'Cs. Jurídicas'),
(22, 'ECN', 'Economía'),
(23, 'CPL', 'Cs. Políticas'),
(24, 'ITA', 'Italiano'),
(25, 'QMC', 'Química'),
(26, 'GEO', 'Geografía'),
(27, 'INF', 'Informática'),
(28, 'ADM', 'Administración'),
(29, 'EDF', 'Ed. Física'),
(30, 'EDE', 'Ed. Especial');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `distrito_escolar`
--

DROP TABLE IF EXISTS `distrito_escolar`;
CREATE TABLE IF NOT EXISTS `distrito_escolar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero` int(11) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=169 ;

--
-- Volcar la base de datos para la tabla `distrito_escolar`
--

INSERT INTO `distrito_escolar` (`id`, `numero`, `nombre`) VALUES
(148, 1, '1'),
(149, 2, '2'),
(150, 3, '3'),
(151, 4, '4'),
(152, 5, '5'),
(153, 6, '6'),
(154, 7, '7'),
(155, 8, '8'),
(156, 9, '9'),
(157, 10, '10'),
(158, 11, '11'),
(159, 12, '12'),
(160, 13, '13'),
(161, 14, '14'),
(162, 15, '15'),
(163, 16, '16'),
(164, 17, '17'),
(165, 18, '18'),
(166, 19, '19'),
(167, 20, '20'),
(168, 21, '21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `domicilio`
--

DROP TABLE IF EXISTS `domicilio`;
CREATE TABLE IF NOT EXISTS `domicilio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `edificio_id` int(11) DEFAULT NULL,
  `calle` varchar(50) NOT NULL,
  `altura` varchar(5) NOT NULL,
  `piso` varchar(3) DEFAULT NULL,
  `departamento` varchar(2) DEFAULT NULL,
  `referencia` varchar(100) DEFAULT NULL,
  `principal` tinyint(1) DEFAULT NULL,
  `c_postal` varchar(8) DEFAULT NULL,
  `actualizado` datetime NOT NULL,
  `creado` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_9B942ED18A652BD6` (`edificio_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=71 ;

--
-- Volcar la base de datos para la tabla `domicilio`
--

INSERT INTO `domicilio` (`id`, `edificio_id`, `calle`, `altura`, `piso`, `departamento`, `referencia`, `principal`, `c_postal`, `actualizado`, `creado`) VALUES
(19, 19, 'Córdoba, Av.', '1951', NULL, NULL, NULL, 1, 'C1120AAB', '2015-06-23 09:25:03', '0000-00-00 00:00:00'),
(20, 20, 'La Rioja', '1042', NULL, NULL, NULL, 1, 'C1221ACL', '2015-08-20 12:55:57', '0000-00-00 00:00:00'),
(21, 21, 'Carlos Calvo', '3150', NULL, NULL, NULL, 1, 'C1230ABB', '2015-08-20 12:56:27', '0000-00-00 00:00:00'),
(22, 22, 'Gral Urquiza', '277', NULL, NULL, NULL, 1, 'C1215ADE', '2015-06-23 10:00:54', '0000-00-00 00:00:00'),
(23, 22, 'Moreno', '3111', NULL, NULL, NULL, 0, 'C1215AD', '2014-02-21 10:29:31', '0000-00-00 00:00:00'),
(24, 23, 'Bolívar', '1235', NULL, NULL, NULL, 1, 'C1141AAA', '2015-06-23 10:03:52', '0000-00-00 00:00:00'),
(25, 24, 'Saraza', '4241', NULL, NULL, NULL, 1, 'C1407AAE', '2015-08-06 10:05:55', '0000-00-00 00:00:00'),
(26, 25, 'Rivadavia, Av.', '4950', NULL, NULL, NULL, 1, 'C1424CE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 26, 'Arcamendia', '743', NULL, NULL, NULL, 1, 'C1274AA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 27, 'Coronel Rico', '751/3', NULL, NULL, NULL, 1, NULL, '2014-08-29 07:48:03', '0000-00-00 00:00:00'),
(29, 40, 'Ayacucho', '632', NULL, NULL, NULL, 1, 'C1026AAF', '2015-12-22 16:21:05', '0000-00-00 00:00:00'),
(30, 41, 'Curapaligüe', '1150', NULL, NULL, NULL, 1, 'C1406DAX', '2015-12-22 16:20:13', '0000-00-00 00:00:00'),
(32, 42, 'Güemes', '3859', NULL, NULL, NULL, 1, 'C1425BKS', '2015-06-26 14:17:41', '0000-00-00 00:00:00'),
(33, 43, 'Corrientes, Av.', '4261', NULL, NULL, NULL, 1, 'C1195AA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 44, 'Callao, Av.', '450', NULL, NULL, NULL, 1, 'C1022AAR', '2015-08-20 12:57:58', '0000-00-00 00:00:00'),
(36, 46, 'O Higgins', '2441', NULL, NULL, NULL, 1, 'C1428AG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 47, '3 de Febrero', '2463', NULL, NULL, NULL, 1, 'C1428AHK', '2015-08-20 12:59:35', '0000-00-00 00:00:00'),
(40, 48, 'Dean Funes', '1821', NULL, NULL, NULL, 1, 'C1244AM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 51, 'Juncal', '3251', NULL, NULL, NULL, 1, 'C1425AYQ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 53, 'Lascano', '3840', NULL, NULL, NULL, 1, 'C1417GZF', '2015-08-20 13:04:07', '0000-00-00 00:00:00'),
(43, 54, 'Carlos Pellegrini, Av.', '1515', NULL, NULL, NULL, 1, 'C1011AAE', '2015-08-20 13:01:03', '0000-00-00 00:00:00'),
(44, 55, 'Dorrego', '3751', NULL, NULL, NULL, 1, 'C1425GBB', '2014-03-07 12:06:13', '0000-00-00 00:00:00'),
(45, 52, 'Córdoba, Av.', '2016', NULL, NULL, NULL, 1, 'C1120AAP', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 57, 'Miguel Sánchez', '1338', NULL, NULL, NULL, 1, 'C1429BSN', '2014-03-10 12:35:31', '0000-00-00 00:00:00'),
(50, 19, 'Ayacucho', '875', NULL, NULL, NULL, 0, NULL, '2015-08-20 13:05:04', '0000-00-00 00:00:00'),
(51, 58, 'Aníbal Pedro Arbeletche', '1052', NULL, NULL, NULL, 1, 'C1437GTF', '2015-08-20 13:01:28', '2014-02-28 15:35:35'),
(52, 19, 'Paraguay', '1950', NULL, NULL, NULL, 0, 'C1121ABD', '2015-06-23 08:53:25', '2015-06-23 08:53:25'),
(53, 19, 'Riobamba', '882', NULL, NULL, NULL, 0, 'C1116ABB', '2015-06-23 09:04:19', '2015-06-23 09:03:09'),
(56, 60, 'California', '1851', NULL, NULL, NULL, 1, NULL, '2015-06-26 14:03:51', '2015-06-26 14:03:44'),
(57, 60, 'California', '1855', NULL, NULL, NULL, 0, NULL, '2015-06-26 14:04:09', '2015-06-26 14:04:09'),
(59, 61, 'Sarmiento', '4041', NULL, NULL, NULL, 1, NULL, '2015-06-26 14:10:46', '2015-06-26 14:09:04'),
(60, 62, 'Dorrego', '3723', NULL, NULL, NULL, 1, 'C1425GBB', '2015-12-22 16:22:02', '2015-06-26 14:17:04'),
(62, 63, 'Bolívar', '1280', NULL, NULL, NULL, 1, NULL, '2015-06-26 14:27:49', '2015-06-26 14:27:44'),
(63, 64, 'Lascano', '3810', NULL, NULL, NULL, 1, NULL, '2015-08-05 14:16:20', '2015-08-05 14:11:30'),
(64, 22, 'Moreno', '3197', NULL, NULL, NULL, 0, NULL, '2016-03-11 11:14:38', '2016-03-11 11:14:21'),
(65, 26, 'Arcamendia', '719', NULL, NULL, NULL, 0, NULL, '2016-04-11 08:47:34', '2016-04-11 08:47:04'),
(67, 43, 'Humahuaca', '4254', NULL, NULL, NULL, 0, NULL, '2016-06-21 16:26:53', '2016-06-21 15:58:10'),
(69, 67, 'Holmberg', '2754', NULL, NULL, NULL, 1, 'C1430DPD', '2016-10-18 16:16:00', '2016-10-18 16:13:50'),
(70, 68, 'Peru', '1236', NULL, NULL, NULL, 1, NULL, '2019-03-18 15:39:09', '2019-03-18 15:39:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `domicilio_localizacion`
--

DROP TABLE IF EXISTS `domicilio_localizacion`;
CREATE TABLE IF NOT EXISTS `domicilio_localizacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domicilio_id` int(11) DEFAULT NULL,
  `localizacion_id` int(11) DEFAULT NULL,
  `principal` tinyint(1) DEFAULT NULL,
  `actualizado` datetime NOT NULL,
  `creado` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_DABAA005166FC4DD` (`domicilio_id`),
  KEY `IDX_DABAA005C851F487` (`localizacion_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=123 ;

--
-- Volcar la base de datos para la tabla `domicilio_localizacion`
--

INSERT INTO `domicilio_localizacion` (`id`, `domicilio_id`, `localizacion_id`, `principal`, `actualizado`, `creado`) VALUES
(36, 53, 36, 1, '2015-06-23 09:03:47', '0000-00-00 00:00:00'),
(37, 19, 38, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 52, 37, 1, '2015-06-23 08:55:33', '0000-00-00 00:00:00'),
(39, 19, 39, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 20, 41, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 20, 42, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 21, 40, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 23, 43, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 23, 44, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 23, 45, 0, '2015-05-07 14:18:03', '0000-00-00 00:00:00'),
(46, 26, 46, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 26, 47, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 26, 48, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 26, 49, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 27, 51, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 27, 52, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 28, 53, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 33, 54, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 33, 55, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 33, 57, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 36, 59, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 36, 60, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 36, 61, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 40, 62, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 40, 64, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 40, 65, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 40, 66, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 41, 67, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 41, 68, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 41, 69, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 41, 70, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 45, 71, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 42, 73, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 42, 74, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 42, 75, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 43, 76, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 43, 77, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 43, 78, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 44, 79, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 44, 80, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 46, 83, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 30, 84, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 25, 88, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 50, 37, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 51, 95, 1, '2014-05-13 06:51:55', '2014-02-28 15:38:36'),
(93, 29, 96, 0, '2014-03-05 11:27:16', '2014-03-05 11:27:16'),
(94, 33, 56, 1, '2014-09-26 14:58:53', '2014-09-26 14:58:45'),
(95, 24, 97, 1, '2015-02-25 09:56:00', '2015-02-25 09:55:14'),
(97, 22, 45, 1, '2015-05-07 14:18:03', '2015-05-07 14:17:50'),
(98, 22, 103, 0, '2015-05-27 13:05:00', '2015-05-27 13:05:00'),
(99, 60, 79, 0, '2015-06-26 14:22:45', '2015-06-26 14:22:45'),
(100, 60, 79, 1, '2015-06-26 14:25:43', '2015-06-26 14:25:43'),
(101, 32, 89, 0, '2015-08-03 10:41:22', '2015-08-03 10:41:22'),
(102, 32, 92, 0, '2015-08-03 10:41:33', '2015-08-03 10:41:33'),
(103, 32, 93, 0, '2015-08-03 10:41:50', '2015-08-03 10:41:50'),
(104, 34, 101, 0, '2015-08-03 10:46:39', '2015-08-03 10:46:39'),
(105, 34, 99, 0, '2015-08-03 10:46:47', '2015-08-03 10:46:47'),
(106, 34, 100, 0, '2015-08-03 10:46:58', '2015-08-03 10:46:58'),
(107, 34, 102, 0, '2015-08-03 10:47:08', '2015-08-03 10:47:08'),
(108, 24, 87, 0, '2015-08-04 15:42:19', '2015-08-04 15:42:19'),
(109, 63, 105, 1, '2015-08-05 14:18:54', '2015-08-05 14:18:54'),
(111, 39, 106, 1, '2015-08-05 14:59:11', '2015-08-05 14:52:14'),
(112, 21, 107, 1, '2015-08-10 15:54:50', '2015-08-10 15:54:12'),
(113, 22, 98, 0, '2015-08-24 15:35:05', '2015-08-24 15:35:05'),
(115, 20, 104, 1, '2015-08-28 15:20:33', '2015-08-28 15:19:35'),
(116, 21, 108, 1, '2015-09-02 09:24:06', '2015-09-02 09:23:09'),
(117, 64, 103, 0, '2016-03-11 11:17:05', '2016-03-11 11:17:05'),
(118, 65, 50, 1, '2016-04-11 08:48:18', '2016-04-11 08:48:18'),
(119, 21, 104, 0, '2016-04-11 09:00:25', '2016-04-11 09:00:25'),
(120, 67, 54, 1, '2016-06-21 16:24:18', '2016-06-21 16:24:18'),
(121, 69, 81, 0, '2016-10-19 16:33:31', '2016-10-19 16:33:31'),
(122, 70, 85, 1, '2019-03-18 16:02:17', '2019-03-18 15:58:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `duracion`
--

DROP TABLE IF EXISTS `duracion`;
CREATE TABLE IF NOT EXISTS `duracion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(1) DEFAULT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Volcar la base de datos para la tabla `duracion`
--

INSERT INTO `duracion` (`id`, `codigo`, `descripcion`) VALUES
(15, 'C', 'Cuatrimestral'),
(16, 'A', 'Anual');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `edificio`
--

DROP TABLE IF EXISTS `edificio`;
CREATE TABLE IF NOT EXISTS `edificio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comuna_id` int(11) DEFAULT NULL,
  `cgp_id` int(11) DEFAULT NULL,
  `barrio_id` int(11) DEFAULT NULL,
  `distrito_escolar_id` int(11) DEFAULT NULL,
  `cui` int(11) DEFAULT NULL,
  `superficie` int(11) DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `inspector_id` int(11) DEFAULT NULL,
  `referencia` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_DED4A4E8D3F6F824` (`cui`),
  UNIQUE KEY `UNIQ_DED4A4E8C01213D8` (`referencia`),
  KEY `IDX_DED4A4E873AEFE7` (`comuna_id`),
  KEY `IDX_DED4A4E8E68FCBB4` (`cgp_id`),
  KEY `IDX_DED4A4E8DBA79E2A` (`barrio_id`),
  KEY `IDX_DED4A4E862E97D21` (`distrito_escolar_id`),
  KEY `IDX_DED4A4E8D0E3F35F` (`inspector_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=69 ;

--
-- Volcar la base de datos para la tabla `edificio`
--

INSERT INTO `edificio` (`id`, `comuna_id`, `cgp_id`, `barrio_id`, `distrito_escolar_id`, `cui`, `superficie`, `updatedAt`, `createdAt`, `inspector_id`, `referencia`) VALUES
(19, 114, 114, 29, 148, 29, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'ENS 1'),
(20, 115, 115, 30, 153, 325, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 'ENS 8'),
(21, 115, 116, 30, 153, 326, 255, '2012-11-05 15:45:16', '0000-00-00 00:00:00', 1, 'ENS 8 Anexo'),
(22, 115, 115, 33, 153, 324, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'ENS 2'),
(23, 113, 113, 33, 151, 199, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'ENS 3 ST'),
(24, 120, 113, 34, 160, 956, 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'ENS 3 Lugano'),
(25, 118, 120, 41, 155, 427, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'ENS 4'),
(26, 116, 116, 40, 152, 259, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'ENS 5 Histórico'),
(27, 116, 113, 40, 152, 293, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'ENS 5 Terciario'),
(40, 115, 115, 33, 149, 1863, 3, NULL, '2012-11-09 16:25:54', 1, 'Joaquín'),
(41, 119, 119, 56, 166, 428, 4333, NULL, '2012-11-09 17:03:33', 3, 'Dickens'),
(42, 126, 126, 29, 156, 101, 66666, NULL, '2012-11-09 17:09:11', NULL, 'ENS 6'),
(43, 117, 117, 29, 149, 102, 0, NULL, '2012-11-09 17:11:33', NULL, 'ENS 7'),
(44, 115, 115, 29, 148, 30, 99999, NULL, '2012-11-09 17:13:30', NULL, 'ENS 9'),
(46, 125, 125, 35, 157, 532, 1010, NULL, '2012-11-12 13:28:24', 1, 'ENS 10'),
(47, 113, 113, 35, 149, 1003, 5000, NULL, '2012-11-12 14:37:10', 1, 'ENS 10 Anexo'),
(48, 116, 116, 55, 153, 327, 11, NULL, '2012-11-12 15:11:51', 2, 'ENS 11'),
(51, 126, 126, 29, 148, 28, 44, '2012-11-12 15:29:39', '2012-11-12 15:29:39', NULL, 'SBS'),
(52, 115, 115, 52, 148, 31, 111111, NULL, '2012-11-12 15:44:23', 1, 'Alicia'),
(53, 123, 123, 69, 164, 796, 222, '2012-11-12 15:51:40', '2012-11-12 15:51:40', 4, 'JBJ'),
(54, 113, 113, 29, 148, 32, 55, '2012-11-12 16:02:19', '2012-11-12 16:02:19', 1, 'JRF'),
(55, 126, 126, 35, 156, 472, 8888, '2012-11-12 16:27:54', '2012-11-12 16:27:54', 1, 'Eccleston'),
(57, 125, 125, 54, 157, 523, 9911, '2012-11-12 16:46:58', '2012-11-12 16:46:58', 1, 'Romero'),
(58, 116, 116, 53, 166, 963, NULL, NULL, '2014-02-28 15:35:35', NULL, 'JRF ANexo'),
(59, 124, NULL, 32, 162, NULL, 562, NULL, '2015-06-23 09:22:58', NULL, NULL),
(60, 116, 116, 33, 151, 9998, NULL, NULL, '2015-06-26 14:01:45', 2, 'ENS 5 Polideportivo'),
(61, 117, NULL, 30, 149, 9997, NULL, NULL, '2015-06-26 14:08:41', 1, 'ENS 7 Polideportivo'),
(62, 126, 126, 29, 156, 9996, NULL, NULL, '2015-06-26 14:17:04', 3, 'Jardín Mitre'),
(63, 113, 113, 40, 151, 9995, NULL, NULL, '2015-06-26 14:27:02', 1, 'ENS 3 Polideportivo'),
(64, 123, 123, 39, 164, 9999, NULL, NULL, '2015-08-05 14:13:46', 4, 'JBJ - Anexo jardín'),
(67, 124, 113, 32, 162, 321321, NULL, NULL, '2016-10-18 16:13:40', NULL, 'Nuevo del ISPEE'),
(68, 113, 113, 65, 151, 5000, NULL, NULL, '2019-03-18 15:38:58', NULL, 'ENS 3 Inicial');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especializacion`
--

DROP TABLE IF EXISTS `especializacion`;
CREATE TABLE IF NOT EXISTS `especializacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `carrera` varchar(255) DEFAULT NULL,
  `oferta_educativa_id` int(11) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) NOT NULL,
  `duracion` varchar(255) DEFAULT NULL,
  `estado_id` int(11) DEFAULT NULL,
  `tipo_especializacion_id` int(11) DEFAULT NULL,
  `ultima_cohorte_valida` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_24C61C0415CE31DF` (`oferta_educativa_id`),
  KEY `IDX_24C61C049F5A440B` (`estado_id`),
  KEY `IDX_24C61C046CBBC6BF` (`tipo_especializacion_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Volcar la base de datos para la tabla `especializacion`
--

INSERT INTO `especializacion` (`id`, `carrera`, `oferta_educativa_id`, `titulo`, `nombre`, `duracion`, `estado_id`, `tipo_especializacion_id`, `ultima_cohorte_valida`) VALUES
(1, NULL, 27, NULL, 'Especialización Superior en Políticas de Infancia', NULL, 2, 5, NULL),
(2, NULL, 28, NULL, 'Especialización Superior en Jardín Maternal', NULL, 1, 5, 2018),
(3, NULL, 29, NULL, 'Especialización Superior en Estimulación Temprana', NULL, 1, NULL, NULL),
(4, NULL, 30, NULL, 'Especialización Superior en Informática Educativa', NULL, 1, NULL, NULL),
(5, NULL, 31, NULL, 'Especialización Superior en Profesor Tutor', NULL, 1, NULL, NULL),
(6, NULL, 32, NULL, 'Especialización Superior en Conducción de Instituciones de Nivel Medio y Equivalente', NULL, 1, NULL, NULL),
(7, NULL, 33, NULL, 'Especialización Superior en Investigación Educativa', NULL, 1, NULL, NULL),
(8, NULL, 34, NULL, 'Diplomatura Superior en Ciencias del Lenguaje', NULL, 1, 3, 2009),
(10, NULL, 35, NULL, 'Especialización Superior en Educación Sexual', NULL, 1, NULL, NULL),
(11, NULL, 36, NULL, 'Diplomatura Superior en Matemática Educativa', NULL, 1, NULL, NULL),
(12, NULL, 37, NULL, 'Interculturalidad y Enseñanza del Español como Lengua Segunda\r y Extranjera', NULL, 1, NULL, NULL),
(13, NULL, 38, NULL, 'Actualización Académica en Educación Ambiental', NULL, 2, NULL, 2008),
(14, NULL, 39, NULL, 'Especialización Docente de Nivel Superior en Educación en Contextos de Encierro', NULL, 1, NULL, NULL),
(15, NULL, 40, NULL, 'Especialización en Enseñanza de la Astronomía para la Educación Primaria', NULL, 1, NULL, NULL),
(16, NULL, 82, 'Prácticas corporales y motrices conscientes desde un enfoque interdisciplinario', 'Diplomatura Superior en Prácticas corporales y motrices conscientes desde un enfoque interdisciplinario', '2 años', 1, NULL, NULL),
(17, NULL, 83, 'La narrativa en la obra escrita a través de los canales expresivos audiovisuales', 'La narrativa en la obra escrita a través de los canales expresivos audiovisuales', NULL, 1, NULL, NULL),
(18, NULL, NULL, 'Especialización Superior en Inclusión Educativa', 'Especialización Superior en Inclusión Educativa', '3 cuatrimestres', 1, 5, NULL),
(19, NULL, NULL, 'Especialización Superior en Atención Temprana', 'Especialización Superior en Atención Temprana', NULL, 1, 5, NULL),
(20, NULL, 130, NULL, 'Diplomatura Superior en Prácticas corporales y motrices conscientes desde un enfoque interdisciplinario', NULL, 1, 2, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `establecimiento`
--

DROP TABLE IF EXISTS `establecimiento`;
CREATE TABLE IF NOT EXISTS `establecimiento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `distrito_escolar_id` int(11) DEFAULT NULL,
  `sector_id` int(11) DEFAULT NULL,
  `cue` varchar(7) DEFAULT NULL,
  `codigo_previo_transferencia` varchar(7) DEFAULT NULL,
  `nombre` varchar(80) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `descripcion` varchar(15) DEFAULT NULL,
  `fecha_creacion` varchar(10) DEFAULT NULL,
  `tiene_cooperadora` varchar(2) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `apodo` varchar(25) DEFAULT NULL,
  `orden` int(11) DEFAULT NULL,
  `tipo_establecimiento_id` int(11) DEFAULT NULL,
  `campo_deportes` varchar(25) DEFAULT NULL,
  `actualizado` datetime NOT NULL,
  `creado` datetime NOT NULL,
  `fecha_presentacion_roi` date DEFAULT NULL,
  `fecha_aprobacion_roi` date DEFAULT NULL,
  `fecha_elecciones` date DEFAULT NULL,
  `fin_mandato` date DEFAULT NULL,
  `fecha_presentacion_rp` date DEFAULT NULL,
  `fecha_aprobacion_rp` date DEFAULT NULL,
  `anio_inicio_nes` int(11) DEFAULT NULL,
  `fecha_presentacion_rai` date DEFAULT NULL,
  `fecha_aprobacion_rai` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_94A4D17E62E97D21` (`distrito_escolar_id`),
  KEY `IDX_94A4D17EDE95C867` (`sector_id`),
  KEY `IDX_94A4D17EE83582FE` (`tipo_establecimiento_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- Volcar la base de datos para la tabla `establecimiento`
--

INSERT INTO `establecimiento` (`id`, `distrito_escolar_id`, `sector_id`, `cue`, `codigo_previo_transferencia`, `nombre`, `numero`, `descripcion`, `fecha_creacion`, `tiene_cooperadora`, `url`, `apodo`, `orden`, `tipo_establecimiento_id`, `campo_deportes`, `actualizado`, `creado`, `fecha_presentacion_roi`, `fecha_aprobacion_roi`, `fecha_elecciones`, `fin_mandato`, `fecha_presentacion_rp`, `fecha_aprobacion_rp`, `anio_inicio_nes`, `fecha_presentacion_rai`, `fecha_aprobacion_rai`) VALUES
(13, 148, 22, '200696', NULL, 'Escuela Normal Superior en Lenguas Vivas Nro 1 Roque Saenz Peña', 1, NULL, '30-07-1874', 'sd', 'https://www.ens1caba.edu.ar/', 'ENS 1', 1, 1, NULL, '2019-01-09 13:21:31', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 2015, NULL, NULL),
(14, 153, 22, '201778', NULL, 'Escuela Normal Superior Nro 8 Julio Argentino Roca', 8, NULL, '05-01-1910', 'sd', 'http://ens8.caba.infd.edu.ar/sitio/', 'ENS 8', 8, 1, NULL, '2015-07-10 13:51:55', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 153, 22, '200866', NULL, 'Escuela Normal Superior en Lenguas Vivas Nro 2 Mariano Acosta', 2, NULL, '16-06-1874', 'sd', 'http://ens2.caba.infd.edu.ar/sitio/', 'ENS 2', 2, 1, NULL, '2015-07-03 09:46:22', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 148, 22, '200720', NULL, 'Instituto de Enseñanza Superior Nro 1 Alicia Moreau', 13, NULL, NULL, 'sd', 'http://ies1.caba.infd.edu.ar', 'Alicia', 13, 3, NULL, '2015-07-10 14:00:50', '0000-00-00 00:00:00', NULL, NULL, '2009-01-01', '2009-01-01', NULL, NULL, NULL, NULL, NULL),
(17, 153, 22, '201411', NULL, 'Instituto de Enseñanza Superior Nro 2 Mariano Acosta', 2, NULL, '08-04-1988', 'sd', 'http://www.ies2.com.ar', 'IES 2', 14, 3, NULL, '2015-09-11 11:17:34', '0000-00-00 00:00:00', NULL, NULL, '2009-01-01', '2009-01-01', NULL, NULL, NULL, NULL, NULL),
(18, 151, 22, '200536', NULL, 'Escuela Normal Superior Nro 3 Bernardino Rivadavia', 3, NULL, '01-01-1905', 'sd', 'http://ens3.caba.infd.edu.ar/sitio', 'ENS 3', 3, 1, NULL, '2015-10-15 12:19:26', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 155, 22, '201297', NULL, 'Escuela Normal Superior Nro 4 Estanislao Severo Zeballos', 4, NULL, '04-05-1908', 'sd', 'http://ens4.caba.infd.edu.ar/sitio/', 'ENS 4', 4, 1, NULL, '2018-05-02 14:33:54', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 152, 22, '201328', NULL, 'Escuela Normal Superior Nro 5 General Don Martín Miguel de Güemes', 5, NULL, '01-05-1909', 'sd', 'http://ens5.caba.infd.edu.ar/sitio/', 'ENS 5', 5, 1, NULL, '2015-05-29 09:31:18', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 2014, NULL, NULL),
(21, 149, 22, '200717', NULL, 'Escuela Normal Superior Nro 6 Vicente López y Planes', 6, NULL, '21-05-1909', 'sd', 'http://ens6.caba.infd.edu.ar', 'ENS 6', 6, 1, NULL, '2015-07-10 13:50:14', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 149, 22, '200997', NULL, 'Escuela Normal Superior Nro 7 José María Torres', 7, NULL, '05-01-1910', 'si', 'http://ens7.caba.infd.edu.ar/sitio/', 'ENS 7', 7, 1, NULL, '2015-05-29 09:32:03', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 148, 22, '201177', NULL, 'Escuela Normal Superior Nro 9 Domingo Faustino Sarmiento', 9, NULL, '', 'sd', 'http://ens9.caba.infd.edu.ar/sitio/', 'ENS 9', 9, 1, NULL, '2015-05-14 16:27:17', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 157, 22, '201214', NULL, 'Escuela Normal Superior Nro 10 Juan Bautista Alberdi', 10, NULL, '14-05-1914', 'sd', 'http://ens10.caba.infd.edu.ar', 'ENS 10', 10, 1, NULL, '2015-05-29 09:32:34', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 158, 22, '201693', NULL, 'Escuela Normal Superior Nro 11 Dr. Ricardo Levene', 11, NULL, NULL, 'sd', 'http://ens11.caba.infd.edu.ar', 'ENS 11', 11, 1, NULL, '2015-08-10 15:33:04', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 148, 22, '200708', NULL, 'Escuela Normal Superior en Lenguas Vivas Sofía E. Broquen de Spangenberg', 12, NULL, '15-02-1957', 'sd', 'http://spangenberg.caba.infd.edu.ar', 'Spangenberg', 12, 1, 'propio en la escuela', '2015-07-10 13:59:38', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 164, 22, '200895', NULL, 'Instituto de Educación Superior Juan B. Justo', NULL, NULL, '23-08-1986', 'sd', 'http://juanbjusto.buenosaires.edu.ar', 'JBJusto', 15, 2, NULL, '2015-10-02 09:21:04', '0000-00-00 00:00:00', NULL, NULL, '2009-01-01', '2009-01-01', NULL, NULL, NULL, NULL, NULL),
(28, 148, 22, '200584', NULL, 'Instituto de Enseñanza Superior en Lenguas Vivas Juan Ramón Fernández', NULL, NULL, '10-02-1904', 'sd', 'http://ieslvf.caba.infd.edu.ar', 'JRF', 16, 3, NULL, '2015-07-10 14:06:45', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 148, 22, '201329', NULL, 'Instituto Superior del Profesorado de Educación Inicial Sara C. Eccleston', NULL, NULL, '08-04-1937', 'sd', 'http://ieseccleston.caba.infd.edu.ar', 'Eccleston', 17, 4, NULL, '2015-07-10 13:57:59', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 162, 22, '201414', NULL, 'Instituto Superior del Profesorado de Educación Especial', NULL, NULL, NULL, 'sd', 'http://ispee.caba.infd.edu.ar', 'ISPEE', 18, 4, NULL, '2018-04-25 10:27:44', '0000-00-00 00:00:00', NULL, NULL, '2009-01-01', '2009-01-01', NULL, NULL, NULL, NULL, NULL),
(31, 157, 22, '201019', NULL, 'Instituto Superior de Educación Física Nro 1 Dr. Enrique Romero Brest', NULL, NULL, '01-02-1906', 'sd', 'http://www.romerobrest.edu.ar/', 'Romero', 19, 5, NULL, '2015-07-13 15:42:29', '0000-00-00 00:00:00', NULL, '2015-05-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 155, 22, '201393', NULL, 'Instituto Superior de Educación Física Nro 2 Prof. Federico Williams Dickens', 2, NULL, '11-04-1985', 'sd', 'http://isef2.caba.infd.edu.ar', 'Dickens', 20, 5, NULL, '2016-05-18 15:43:08', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 148, 22, '201104', NULL, 'Instituto Superior del Profesorado Dr. Joaquín V. González', NULL, NULL, '16-12-1904', 'sd', 'http://institutojvgonzalez.buenosaires.edu.ar/', 'Joaquín', 21, 4, NULL, '2015-07-10 14:10:59', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `establecimiento_edificio`
--

DROP TABLE IF EXISTS `establecimiento_edificio`;
CREATE TABLE IF NOT EXISTS `establecimiento_edificio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cue_anexo` varchar(2) NOT NULL COMMENT 'tiene 2 caracateres',
  `nombre` varchar(50) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `fecha_baja` date DEFAULT NULL,
  `establecimientos_id` int(11) DEFAULT NULL,
  `edificios_id` int(11) DEFAULT NULL,
  `te` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `referente_siu` varchar(200) DEFAULT NULL,
  `informatico` varchar(200) DEFAULT NULL,
  `referente_sga` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_37D12C65FB6C6A54` (`establecimientos_id`),
  KEY `IDX_37D12C65884BAFEF` (`edificios_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='relacon entre los establecimientos y todos sus posibles edif' AUTO_INCREMENT=51 ;

--
-- Volcar la base de datos para la tabla `establecimiento_edificio`
--

INSERT INTO `establecimiento_edificio` (`id`, `cue_anexo`, `nombre`, `fecha_creacion`, `fecha_baja`, `establecimientos_id`, `edificios_id`, `te`, `email`, `referente_siu`, `informatico`, `referente_sga`) VALUES
(16, '00', 'sede ENS 1', '2012-10-29', NULL, 13, 19, NULL, 'ens1@bue.edu.ar', 'Guillermo Bacarezza', 'Luciano Morello (ay. de informatica)', NULL),
(17, '00', 'Sede', '2012-10-29', NULL, 14, 20, NULL, 'ens8@bue.edu.ar', NULL, NULL, 'Guillermo Stöslein (Prof. informática)'),
(18, '01', 'Anexo Carlos Calvo', '2012-10-29', NULL, 14, 21, NULL, NULL, NULL, NULL, NULL),
(19, '00', 'Sede ENS 2', NULL, NULL, 15, 22, NULL, 'ens2acosta@bue.edu.ar', NULL, NULL, 'Daniel Luna'),
(20, '00', 'Sede IES 2', NULL, NULL, 17, 22, NULL, 'ies2acosta@bue.edu.ar', NULL, 'Juan Carlos Linares', NULL),
(21, '00', 'San Telmo', NULL, NULL, 18, 23, NULL, 'ens3@bue.edu.ar', NULL, 'Luis González', 'Ramazzoti (bedel)'),
(22, '01', 'anexo Lugano', NULL, NULL, 18, 24, '4602-4206', 'ens3_ntregencia@bue.edu.ar', NULL, NULL, 'Ramazzoti (bedel)'),
(23, '00', 'sede ens 4', NULL, NULL, 19, 25, NULL, 'ens4@bue.edu.ar', NULL, 'M. Inés del Hoyo (ay. de informática)', 'Marcela Miguel (secretaria), Diego Cunio (bedel)'),
(24, '00', 'sede', NULL, NULL, 20, 26, NULL, 'ens5@bue.edu.ar', NULL, NULL, NULL),
(25, '01', 'anexo Cnel. Rico', '2012-01-01', NULL, 20, 27, NULL, NULL, NULL, 'Sergio Vasconi,', 'Silvina Suárez'),
(27, '00', 'sede joaquin', NULL, NULL, 33, 40, NULL, 'ispjvg@bue.edu.ar', 'Pablo Rossi? Carina Quiñones?', 'Roberto Lebouf', NULL),
(28, '00', 'sede ens 6', NULL, NULL, 21, 42, NULL, 'ens6@bue.edu.ar', NULL, NULL, NULL),
(29, '00', 'sede', NULL, NULL, 22, 43, NULL, 'ens7@bue.edu.ar', NULL, 'Karina Trillo (prof. informática)', 'Patricia (bedel)'),
(30, '00', 'sede ENS 9', NULL, NULL, 23, 44, NULL, 'ens9_de1@bue.edu.ar', NULL, NULL, NULL),
(32, '00', 'sede', NULL, NULL, 24, 46, NULL, 'ens10@bue.edu.ar', NULL, NULL, NULL),
(33, '01', 'anexo ens 10', NULL, NULL, 24, 47, NULL, NULL, NULL, NULL, NULL),
(34, '00', 'sede', NULL, NULL, 25, 48, NULL, 'ens11@bue.edu.ar', NULL, NULL, NULL),
(35, '00', 'sede spangenberg', NULL, NULL, 26, 51, NULL, 'enslvsebs@bue.edu.ar', NULL, 'Myriam Riobos', NULL),
(36, '00', 'sede IES 1', NULL, NULL, 16, 52, NULL, 'iesamjusto@bue.edu.ar', NULL, NULL, NULL),
(37, '00', 'sede', NULL, NULL, 27, 53, NULL, 'jbjusto@bue.edu.ar', 'Carolina Bedelía,', NULL, NULL),
(38, '00', 'sede Recoleta', NULL, NULL, 28, 54, NULL, 'ieslvjrf@bue.edu.ar', NULL, 'Andrés Zetko', NULL),
(39, '00', 'sede Eccleston', NULL, NULL, 29, 55, NULL, 'ispei@bue.edu.ar', NULL, 'María Pía Barbará', NULL),
(40, '00', 'sede ISPEE', NULL, NULL, 30, 67, NULL, 'ispee@bue.edu.ar', NULL, NULL, NULL),
(42, '00', 'sede Brest', NULL, NULL, 31, 57, NULL, 'isef1@romerobrest.edu.ar', NULL, 'Andŕes Días', 'Gonzalo Menéndez'),
(43, '00', 'sede Dickens', NULL, NULL, 32, 41, NULL, 'secretaria@institutodickens.edu.ar', NULL, 'Jorge Bornells', NULL),
(44, '01', 'anexo Nueva Pompeya', '2014-02-28', NULL, 28, 58, NULL, NULL, NULL, NULL, NULL),
(45, '99', 'Polideportivo ENS 5', NULL, NULL, 20, 60, NULL, NULL, NULL, NULL, NULL),
(46, '99', 'Polideportivo ENS 7', NULL, NULL, 22, 61, NULL, NULL, NULL, NULL, NULL),
(47, '01', 'Jardín Mitre', NULL, NULL, 29, 62, NULL, NULL, NULL, NULL, NULL),
(48, '99', 'Plideportivo ENS 3', NULL, NULL, 18, 63, NULL, NULL, NULL, NULL, NULL),
(49, '01', 'Jardín del JBJusto', '2015-08-05', '2015-08-05', 27, 64, NULL, NULL, NULL, NULL, NULL),
(50, '02', 'Inicial ST', '2019-03-18', NULL, 18, 68, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `establecimiento_recurso`
--

DROP TABLE IF EXISTS `establecimiento_recurso`;
CREATE TABLE IF NOT EXISTS `establecimiento_recurso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `establecimiento_id` int(11) DEFAULT NULL,
  `recurso_id` int(11) DEFAULT NULL,
  `cantidad` int(11) NOT NULL,
  `origen_hora_id` int(11) DEFAULT NULL,
  `comentario` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D4968F6271B61351` (`establecimiento_id`),
  KEY `IDX_D4968F62E52B6C4E` (`recurso_id`),
  KEY `IDX_D4968F62EA54AA7B` (`origen_hora_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=31 ;

--
-- Volcar la base de datos para la tabla `establecimiento_recurso`
--

INSERT INTO `establecimiento_recurso` (`id`, `establecimiento_id`, `recurso_id`, `cantidad`, `origen_hora_id`, `comentario`) VALUES
(1, 19, 3, 1, NULL, NULL),
(2, 19, 1, 1, NULL, NULL),
(3, 19, 4, 1, NULL, NULL),
(4, 19, 5, 1, NULL, NULL),
(5, 19, 6, 1, 2, NULL),
(6, 23, 3, 1, NULL, NULL),
(7, 23, 10, 1, NULL, NULL),
(8, 23, 1, 1, NULL, NULL),
(9, 24, 1, 1, NULL, NULL),
(10, 24, 3, 1, NULL, NULL),
(11, 24, 10, 1, NULL, NULL),
(12, 24, 4, 1, NULL, NULL),
(13, 29, 3, 1, NULL, NULL),
(14, 29, 1, 1, NULL, NULL),
(15, 29, 6, 1, 1, NULL),
(16, 17, 11, 1, 1, NULL),
(17, 17, 12, 1, 1, NULL),
(18, 17, 1, 1, NULL, NULL),
(19, 17, 3, 1, NULL, NULL),
(20, 13, 1, 1, NULL, NULL),
(21, 13, 3, 2, NULL, NULL),
(22, 13, 7, 1, 1, 'Tienen 2 personas con tareas pasivas pero una se está jubilando'),
(23, 13, 6, 1, 2, NULL),
(24, 27, 1, 1, 1, 'Compartido todos los niveles'),
(25, 27, 3, 1, NULL, 'Sin personal específico'),
(26, 27, 4, 1, NULL, 'Compartido. Sin personal específico'),
(27, 31, 3, 1, NULL, NULL),
(28, 31, 13, 1, NULL, NULL),
(29, 31, 15, 1, NULL, NULL),
(30, 13, 4, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_carrera`
--

DROP TABLE IF EXISTS `estado_carrera`;
CREATE TABLE IF NOT EXISTS `estado_carrera` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(5) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `orden` int(11) NOT NULL,
  `comentario` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcar la base de datos para la tabla `estado_carrera`
--

INSERT INTO `estado_carrera` (`id`, `codigo`, `descripcion`, `orden`, `comentario`) VALUES
(1, 'ACT', 'Activa', 1, 'La carrera se está dictando'),
(2, 'INAC', 'Inactiva', 2, 'La carrera alguna vez se dictó pero no se dicta más'),
(3, 'VIG', 'Vigente', 3, 'La carrera está aprobada pero no se dicta'),
(4, 'RES', 'Residual', 4, 'La carrera tiene matrícula hasta que termine de cursar el último que no se cambió de plan, pero no se ofrece para el ingreso a carrera. Suele ser el plan viejo de una activa.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_validez`
--

DROP TABLE IF EXISTS `estado_validez`;
CREATE TABLE IF NOT EXISTS `estado_validez` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(5) DEFAULT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  `orden` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Volcar la base de datos para la tabla `estado_validez`
--

INSERT INTO `estado_validez` (`id`, `codigo`, `descripcion`, `orden`) VALUES
(3, 'FT', 'Falta presentar', 1),
(4, 'ET', 'En trámite', 2),
(5, 'AP', 'Aprobado', 3),
(6, 'AC', 'Acordado', 4),
(10, 'RE', 'Rechazado', 5),
(11, 'APN', 'Aprobado nominal', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `frase`
--

DROP TABLE IF EXISTS `frase`;
CREATE TABLE IF NOT EXISTS `frase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `frase` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `fecha` date NOT NULL,
  `autor` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=27 ;

--
-- Volcar la base de datos para la tabla `frase`
--

INSERT INTO `frase` (`id`, `frase`, `fecha`, `autor`) VALUES
(1, '"Marcelo, se me desfiguró la PC"', '2004-08-13', 'Virginia'),
(2, '"Sólo me falta la corona de espinas"', '2004-03-04', 'Marcelo'),
(3, '"Andando se acomodan los melones"', '2004-03-04', 'Armando'),
(4, '“A partir de este momento...” (gesto de boca cerrada)', '2004-08-04', 'Liliana'),
(5, '“Me vine al fondo para no estar adelante”', '2004-09-04', 'Gladys'),
(6, '"El chico quiere saber si hay alguna luz prendida donde está Interné"', '2004-09-04', 'prosecretaria ENS 4'),
(7, '"... como es complicado le pedí ayuda al Hostmaster (¿?)..... "', '2004-09-04', 'Regente del Spangenberg'),
(8, '“…Me encanta y me huelo…”', '2004-11-04', 'Liliana'),
(9, '“Después se me va para abajo y ¿cómo lo agarro?”', '2004-12-04', 'Román'),
(10, 'A ver… pregunta de examen…', '2004-12-04', 'Marcelo'),
(11, '“Asunto: hola”', '2005-03-04', 'Liliana y Paloma'),
(12, '"...Nos hundimos a la velocidad prevista."', '2005-03-04', 'Marcelo'),
(13, '"Por favor, decile a Andrés que no me entra Interné..."', '2006-03-04', 'M. Orlando'),
(14, '"HEBE!!!  LA ANTENA!!!!"', '2006-07-10', 'Andrés'),
(15, '"Soy groso"', '2006-08-10', 'Andrés'),
(16, '"...estaba mal puesta automáticamente..."', '2006-09-10', 'Nélida'),
(17, '"Todo lo que sube baja y todo lo que entra sale"', '2006-11-10', 'Cecilia'),
(18, '"Andrés, el cartucho color que me pediste me lo devolviste sin tinta. Por favor, reponémelo porque está en el inventario de la caja chica como que lo tengo yo."', '2006-12-10', 'Virginia'),
(19, '"Feliz carnaval!"', '2007-01-10', 'Susana'),
(20, '" Andrés... lo de abajo se me fue para arriba ..... "', '2007-02-10', 'Libia'),
(21, '"¿Tu microondas, tiene otra numerología?...."', '2007-03-10', 'Julieta'),
(22, '"...no te preocupes... Igual otro pibe no me van a hacer..." ', '2007-05-10', 'Julieta'),
(23, '"...Andrés: la cartelera nuestra también me hizo "puf" a mí hoy..."', '2007-06-10', 'Liliana'),
(24, '"... Como me gusta Ubuntu..."', '2007-07-10', 'Marcelo'),
(25, '"Los tallarines son digestivos"', '2007-10-10', 'Héctor'),
(26, '"Si estás en short ¿se te ve la tuerca?"', '2016-10-06', 'Nicolás');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `glosario`
--

DROP TABLE IF EXISTS `glosario`;
CREATE TABLE IF NOT EXISTS `glosario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `termino` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcar la base de datos para la tabla `glosario`
--

INSERT INTO `glosario` (`id`, `termino`, `descripcion`) VALUES
(1, 'Matrícula inicial', 'Se toma aproximandamente a los 30 días de iniciadas las clases. Incluye a la matrícula de ingresantes'),
(2, 'Matrícula ingresantes', 'Cantidad de alumnos que ingresan a carrera'),
(3, 'Desgranamiento', 'Matícula inicial - matrícula final');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo_etario`
--

DROP TABLE IF EXISTS `grupo_etario`;
CREATE TABLE IF NOT EXISTS `grupo_etario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `orden` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Volcar la base de datos para la tabla `grupo_etario`
--

INSERT INTO `grupo_etario` (`id`, `codigo`, `descripcion`, `orden`) VALUES
(3, '5', '5 años', 6),
(4, '4', '4 años', 5),
(5, '3', '3 años', 4),
(6, '2', '2 años', 3),
(7, 'D', 'Deambulador (de 1 a 2 años)', 2),
(8, 'L', 'Lactario (45 días a 1 año)', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inicial`
--

DROP TABLE IF EXISTS `inicial`;
CREATE TABLE IF NOT EXISTS `inicial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `oferta_educativa_id` int(11) DEFAULT NULL,
  `duracion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_73E9728915CE31DF` (`oferta_educativa_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcar la base de datos para la tabla `inicial`
--

INSERT INTO `inicial` (`id`, `oferta_educativa_id`, `duracion`, `descripcion`) VALUES
(1, 84, '5', 'Inicial común');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inicial_x`
--

DROP TABLE IF EXISTS `inicial_x`;
CREATE TABLE IF NOT EXISTS `inicial_x` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `matricula` int(11) DEFAULT NULL,
  `actualizado` datetime NOT NULL,
  `creado` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=17 ;

--
-- Volcar la base de datos para la tabla `inicial_x`
--

INSERT INTO `inicial_x` (`id`, `matricula`, `actualizado`, `creado`) VALUES
(1, NULL, '2015-08-28 15:08:17', '2015-08-28 15:08:17'),
(2, NULL, '2015-08-28 15:21:43', '2015-08-28 15:21:43'),
(3, NULL, '2015-09-01 09:20:50', '2015-09-01 09:20:50'),
(4, NULL, '2015-09-01 13:56:37', '2015-09-01 13:56:37'),
(5, 212, '2019-07-24 13:23:53', '2015-09-01 14:21:03'),
(6, NULL, '2015-09-01 14:21:31', '2015-09-01 14:21:31'),
(7, NULL, '2015-09-01 14:21:48', '2015-09-01 14:21:48'),
(8, NULL, '2015-09-01 14:23:21', '2015-09-01 14:23:21'),
(9, NULL, '2015-09-01 14:23:58', '2015-09-01 14:23:58'),
(10, NULL, '2015-09-01 14:24:22', '2015-09-01 14:24:22'),
(11, NULL, '2015-09-01 14:24:47', '2015-09-01 14:24:47'),
(12, NULL, '2015-09-01 14:25:14', '2015-09-01 14:25:14'),
(13, NULL, '2015-09-04 09:46:37', '2015-09-04 09:46:37'),
(14, NULL, '2015-09-07 06:25:00', '2015-09-07 06:25:00'),
(15, NULL, '2015-09-07 06:25:05', '2015-09-07 06:25:05'),
(16, NULL, '2015-09-07 06:26:35', '2015-09-07 06:26:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inspector`
--

DROP TABLE IF EXISTS `inspector`;
CREATE TABLE IF NOT EXISTS `inspector` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `apellido` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `te` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `actualizado` datetime NOT NULL,
  `creado` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_72DD518BE7927C74` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Volcar la base de datos para la tabla `inspector`
--

INSERT INTO `inspector` (`id`, `nombre`, `apellido`, `email`, `te`, `actualizado`, `creado`) VALUES
(1, 'Silvia', 'Rey', 'mcsilviarey@yahoo.com.ar', '11 3847 9376', '2015-06-17 14:03:33', '2015-06-17 14:03:33'),
(2, 'Alejandro', 'García', 'inspectoresahg@gmail.com', '1138492408', '2015-06-23 08:42:26', '2015-06-23 08:42:26'),
(3, 'Natalia', 'Luque', 'nluque74@gmail.com', '1138492439', '2015-06-23 08:43:17', '2015-06-23 08:43:17'),
(4, 'Eduardo', 'Corro', 'ecorro@buenosaires.gob.ar', '1564069461', '2015-06-23 08:43:58', '2015-06-23 08:43:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `localizacion`
--

DROP TABLE IF EXISTS `localizacion`;
CREATE TABLE IF NOT EXISTS `localizacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unidad_educativa_id` int(11) DEFAULT NULL,
  `establecimiento_edificio_id` int(11) DEFAULT NULL,
  `actualizado` datetime NOT NULL,
  `creado` datetime NOT NULL,
  `cantidad_docentes` int(11) DEFAULT NULL,
  `matricula` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_5512F061BF20CF2F` (`unidad_educativa_id`),
  KEY `IDX_5512F061E0B84520` (`establecimiento_edificio_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=109 ;

--
-- Volcar la base de datos para la tabla `localizacion`
--

INSERT INTO `localizacion` (`id`, `unidad_educativa_id`, `establecimiento_edificio_id`, `actualizado`, `creado`, `cantidad_docentes`, `matricula`) VALUES
(36, 43, 16, '2019-07-24 13:06:20', '0000-00-00 00:00:00', NULL, 333),
(37, 44, 16, '2019-07-24 13:19:36', '0000-00-00 00:00:00', NULL, 826),
(38, 45, 16, '2019-07-25 07:45:51', '0000-00-00 00:00:00', NULL, 623),
(39, 46, 16, '2019-07-25 08:43:31', '0000-00-00 00:00:00', 234, 2400),
(40, 47, 18, '2019-07-25 08:30:59', '0000-00-00 00:00:00', NULL, 393),
(41, 48, 17, '2019-07-25 08:31:09', '0000-00-00 00:00:00', NULL, 763),
(42, 49, 17, '2019-07-25 08:47:48', '0000-00-00 00:00:00', 95, 469),
(43, 51, 19, '2019-07-25 07:48:26', '0000-00-00 00:00:00', 0, 814),
(44, 52, 19, '2019-07-24 13:20:16', '0000-00-00 00:00:00', 0, 782),
(45, 53, 20, '2017-10-30 10:56:00', '0000-00-00 00:00:00', 117, 974),
(46, 54, 23, '2019-07-24 13:22:59', '0000-00-00 00:00:00', NULL, 191),
(47, 55, 23, '2019-07-24 13:22:59', '0000-00-00 00:00:00', NULL, 380),
(48, 56, 23, '2019-07-25 07:51:41', '0000-00-00 00:00:00', NULL, 957),
(49, 57, 23, '2019-07-25 08:45:32', '0000-00-00 00:00:00', 130, 950),
(50, 58, 24, '2019-07-24 13:23:36', '0000-00-00 00:00:00', NULL, 212),
(51, 59, 24, '2019-07-24 13:23:36', '0000-00-00 00:00:00', NULL, 664),
(52, 60, 24, '2019-07-25 08:20:05', '0000-00-00 00:00:00', NULL, 706),
(53, 61, 25, '2019-07-24 13:24:35', '0000-00-00 00:00:00', 80, 517),
(54, 62, 29, '2015-08-24 14:51:53', '0000-00-00 00:00:00', NULL, 157),
(55, 63, 29, '2019-07-25 08:30:01', '0000-00-00 00:00:00', NULL, 263),
(56, 64, 29, '2019-07-25 08:30:01', '0000-00-00 00:00:00', NULL, 451),
(57, 65, 29, '2019-07-25 08:47:32', '0000-00-00 00:00:00', 121, 684),
(59, 67, 32, '2019-07-25 08:33:43', '0000-00-00 00:00:00', NULL, 221),
(60, 68, 32, '2019-07-25 08:33:43', '0000-00-00 00:00:00', NULL, 720),
(61, 69, 32, '2019-07-25 08:48:45', '0000-00-00 00:00:00', 160, 1460),
(62, 75, 34, '2019-07-25 08:35:11', '0000-00-00 00:00:00', NULL, 40),
(64, 76, 34, '2019-07-25 08:36:28', '0000-00-00 00:00:00', NULL, 201),
(65, 77, 34, '2019-07-25 08:35:11', '0000-00-00 00:00:00', NULL, 654),
(66, 78, 34, '2019-07-25 08:48:58', '0000-00-00 00:00:00', 99, 412),
(67, 79, 35, '2019-07-25 08:36:04', '0000-00-00 00:00:00', NULL, 222),
(68, 80, 35, '2019-07-25 08:37:03', '0000-00-00 00:00:00', NULL, 608),
(69, 81, 35, '2019-07-25 08:37:03', '0000-00-00 00:00:00', NULL, 578),
(70, 82, 35, '2019-07-25 08:50:30', '0000-00-00 00:00:00', 109, 1100),
(71, 83, 36, '2017-10-30 10:53:11', '0000-00-00 00:00:00', 222, 1785),
(73, 85, 37, '2019-07-25 08:38:17', '0000-00-00 00:00:00', NULL, 170),
(74, 86, 37, '2019-07-25 08:38:17', '0000-00-00 00:00:00', NULL, 259),
(75, 87, 37, '2019-07-25 08:50:46', '0000-00-00 00:00:00', 177, 736),
(76, 88, 38, '2019-07-25 08:38:47', '0000-00-00 00:00:00', NULL, 374),
(77, 89, 38, '2019-07-25 08:38:47', '0000-00-00 00:00:00', NULL, 524),
(78, 90, 38, '2019-07-25 08:51:06', '0000-00-00 00:00:00', 350, 1401),
(79, 91, 47, '2019-07-25 08:39:11', '0000-00-00 00:00:00', NULL, 293),
(80, 92, 39, '2019-07-25 08:51:24', '0000-00-00 00:00:00', 157, 1232),
(81, 93, 40, '2017-10-30 10:53:29', '0000-00-00 00:00:00', 144, 745),
(83, 94, 42, '2017-10-30 10:51:35', '0000-00-00 00:00:00', 205, 1931),
(84, 95, 43, '2017-10-30 10:51:54', '0000-00-00 00:00:00', 120, 928),
(85, 100, 50, '2019-07-25 07:50:19', '0000-00-00 00:00:00', 0, 152),
(86, 101, 21, '2019-07-24 13:20:48', '0000-00-00 00:00:00', 0, 353),
(87, 102, 21, '2019-07-25 07:49:47', '0000-00-00 00:00:00', 0, 522),
(88, 103, 22, '2015-08-24 15:35:29', '0000-00-00 00:00:00', NULL, 606),
(89, 96, 28, '2019-07-25 08:22:43', '0000-00-00 00:00:00', NULL, 136),
(92, 97, 28, '2019-07-25 08:22:43', '0000-00-00 00:00:00', NULL, 230),
(93, 98, 28, '2019-07-25 08:22:43', '0000-00-00 00:00:00', NULL, 562),
(94, 99, 28, '2019-07-25 08:47:18', '0000-00-00 00:00:00', 154, 440),
(95, 90, 44, '2015-08-24 15:23:45', '0000-00-00 00:00:00', NULL, 23),
(96, 109, 27, '2017-10-30 10:50:29', '0000-00-00 00:00:00', 678, 6925),
(97, 103, 21, '2019-07-24 13:20:48', '0000-00-00 00:00:00', 152, 1040),
(98, 110, 19, '2019-07-24 13:20:16', '2015-05-07 14:19:48', 98, 521),
(99, 104, 30, '2019-07-25 08:33:09', '2015-05-07 14:33:27', NULL, 111),
(100, 105, 30, '2019-07-25 08:33:09', '2015-05-07 14:33:39', NULL, 356),
(101, 106, 30, '2019-07-25 08:33:09', '2015-05-07 14:33:57', NULL, 963),
(102, 107, 30, '2019-07-25 08:48:28', '2015-05-07 14:34:08', 78, 225),
(103, 112, 19, '2019-07-25 07:48:26', '2015-05-27 13:04:47', 0, 106),
(104, 108, 18, '2019-07-25 08:30:59', '2015-06-16 15:43:29', NULL, 186),
(105, 84, 49, '2015-08-24 14:53:56', '2015-08-05 14:41:57', NULL, 126),
(106, 66, 33, '2015-08-24 14:53:06', '2015-08-05 14:50:34', NULL, 111),
(107, 49, 18, '2019-07-25 08:48:18', '2015-08-10 15:53:58', NULL, 469),
(108, 48, 18, '2019-07-25 08:30:59', '2015-08-24 15:20:07', NULL, 763);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `media_orientaciones`
--

DROP TABLE IF EXISTS `media_orientaciones`;
CREATE TABLE IF NOT EXISTS `media_orientaciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` int(11) DEFAULT NULL,
  `actualizado` datetime NOT NULL,
  `creado` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=16 ;

--
-- Volcar la base de datos para la tabla `media_orientaciones`
--

INSERT INTO `media_orientaciones` (`id`, `codigo`, `nombre`, `orden`, `actualizado`, `creado`) VALUES
(9, 'CNTB', 'Ciencias Naturales-B', NULL, '2017-02-22 17:08:26', '2017-02-22 17:08:26'),
(10, 'CSCB', 'Ciencias Sociales-B', NULL, '2017-02-22 17:09:42', '2017-02-22 17:09:42'),
(14, 'LNGB', 'Lenguas-B', NULL, '2017-02-22 17:13:25', '2017-02-22 17:13:25'),
(15, 'TURB', 'Turismo-B', NULL, '2017-02-22 17:18:28', '2017-02-22 17:18:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migration_versions`
--

DROP TABLE IF EXISTS `migration_versions`;
CREATE TABLE IF NOT EXISTS `migration_versions` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcar la base de datos para la tabla `migration_versions`
--

INSERT INTO `migration_versions` (`version`) VALUES
('20130903145540'),
('20130920172325'),
('20130920174433'),
('20130924152107'),
('20130924153308'),
('20131018112552'),
('20131028123752'),
('20131028124714'),
('20131031142039'),
('20131205150218'),
('20131220141843'),
('20131220152642'),
('20131220153154'),
('20131226123317'),
('20140212145327'),
('20140214161739'),
('20140214163105'),
('20140217161945'),
('20140217162613'),
('20140217165654'),
('20140220133827'),
('20140224150029'),
('20140225120107'),
('20140225142515'),
('20140225145727'),
('20140227150313'),
('20140227170008'),
('20140228141623'),
('20140228161955'),
('20140307151849'),
('20140307152059'),
('20140310162408'),
('20140311143020'),
('20140321153011'),
('20140327194533'),
('20140328140058'),
('20140401163255'),
('20140401164648'),
('20140403170000'),
('20140403190204'),
('20140403192255'),
('20140403192621'),
('20140411122004'),
('20140411123658'),
('20140411125708'),
('20140522163100'),
('20140522164856'),
('20140523125355'),
('20140915094829'),
('20140918143337'),
('20140923140204'),
('20140923142942'),
('20140929161541'),
('20140930131041'),
('20141001144750'),
('20141110171500'),
('20150224162547'),
('20150225124041'),
('20150304170502'),
('20150319164949'),
('20150422184427'),
('20150517214010'),
('20150518133800'),
('20150519150003'),
('20150519170929'),
('20150528180307'),
('20150603224732'),
('20150616183906'),
('20150617161126'),
('20150707183748'),
('20150708182413'),
('20150708213512'),
('20150713150335'),
('20150713160507'),
('20150713162423'),
('20150719203249'),
('20150728182556'),
('20150728220303'),
('20150730125258'),
('20150806000510'),
('20150806224739'),
('20150808185320'),
('20150811173756'),
('20150825171151'),
('20150902141200'),
('20150902151822'),
('20150903173948'),
('20150904162209'),
('20150904162820'),
('20151014180000'),
('20151015160000'),
('20151028154609'),
('20151029161312'),
('20151030125122'),
('20151030133427'),
('20151105143448'),
('20151106113641'),
('20151110150700'),
('20151120174132'),
('20151210164852'),
('20151221142318'),
('20151229154528'),
('20151229160000'),
('20151229220826'),
('20151230120000'),
('20160107112742'),
('20170824165537'),
('20170825160356'),
('20170825161733');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modalidad`
--

DROP TABLE IF EXISTS `modalidad`;
CREATE TABLE IF NOT EXISTS `modalidad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) DEFAULT NULL,
  `abreviatura` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

--
-- Volcar la base de datos para la tabla `modalidad`
--

INSERT INTO `modalidad` (`id`, `nombre`, `abreviatura`) VALUES
(29, 'Común', 'Cmn'),
(30, 'Artística', 'Art'),
(31, 'Especial', 'Esp'),
(32, 'Jóvenes y adultos', 'JyA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivel`
--

DROP TABLE IF EXISTS `nivel`;
CREATE TABLE IF NOT EXISTS `nivel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `abreviatura` varchar(5) DEFAULT NULL,
  `orden` int(11) DEFAULT NULL,
  `crearUOClass` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

--
-- Volcar la base de datos para la tabla `nivel`
--

INSERT INTO `nivel` (`id`, `nombre`, `abreviatura`, `orden`, `crearUOClass`) VALUES
(29, 'Inicial', 'Ini', 1, 'Fd\\EstablecimientoBundle\\Model\\UnidadOfertaInicialHandler'),
(30, 'Primario', 'Pri', 2, ''),
(31, 'Medio', 'Med', 3, ''),
(32, 'Terciario', 'Ter', 4, 'Fd\\EstablecimientoBundle\\Model\\UnidadOfertaTerciarioHandler');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `norma`
--

DROP TABLE IF EXISTS `norma`;
CREATE TABLE IF NOT EXISTS `norma` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_norma_id` int(11) DEFAULT NULL,
  `descripcion` longtext,
  `numero` int(11) NOT NULL,
  `anio` int(11) DEFAULT NULL,
  `actualizado` datetime NOT NULL,
  `creado` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_3EF6217E36AA9857` (`tipo_norma_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=184 ;

--
-- Volcar la base de datos para la tabla `norma`
--

INSERT INTO `norma` (`id`, `tipo_norma_id`, `descripcion`, `numero`, `anio`, `actualizado`, `creado`) VALUES
(1, 1, NULL, 6635, 2009, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1, NULL, 6626, 2009, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 3, 'Validez nacional', 140, 2011, '2013-11-27 16:03:18', '0000-00-00 00:00:00'),
(4, 2, 'MEN', 2029, 2011, '2014-02-11 14:32:09', '0000-00-00 00:00:00'),
(5, 1, NULL, 6862, 2009, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 5, NULL, 63, 2003, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 1, NULL, 6861, 2009, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 1, NULL, 149, 2010, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 5, NULL, 609, 2000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 5, NULL, 608, 2000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 3, 'Validez nacional', 130, 2011, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 2, NULL, 2116, 2011, '2014-02-11 14:34:06', '0000-00-00 00:00:00'),
(14, 3, 'Validez nacional', 812, 2012, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 4, '(rectificatoria)', 2936, 2012, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 1, NULL, 1908, 2010, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 4, '(rectificatoria)', 2141, 2012, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 3, NULL, 1921, 2011, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 5, NULL, 88, 1998, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 1, 'Aprueba las adecuaciones de los Diseños Curriculares de las carreras que se dictan en el Instituto de Enseñanza Superior "Dra. Alicia Moreau de Justo" y adecua las denominaciones de los títulos correspondientes a las carreras mencionadas en el Anexo. Se relaciona con Resolución N° 1251/MEN 17-06-2013', 6989, 2009, '2015-08-20 15:16:59', '0000-00-00 00:00:00'),
(21, 1, NULL, 4079, 2010, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 3, 'Validez Nacional', 1543, 2012, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 3, 'Validez Nacional', 1538, 2012, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 3, 'Validez Nacional', 1539, 2012, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 3, NULL, 763, 1994, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 3, NULL, 98, 1991, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 1, NULL, 2163, 2007, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 1, NULL, 3284, 2010, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 3, NULL, 1938, 2011, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 3, NULL, 1603, 2012, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 1, NULL, 597, 2010, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 3, NULL, 1905, 2011, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 1, 'esta es una descripcion somera', 4186, 2009, '2013-11-27 13:10:33', '0000-00-00 00:00:00'),
(34, 1, NULL, 4281, 2009, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 1, NULL, 1103, 2010, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 3, NULL, 1919, 2011, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 3, 'cohorte 2012', 907, 2012, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 6, NULL, 5569, 2009, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 6, NULL, 501, 2005, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 6, NULL, 1710, 2006, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 1, NULL, 2361, 2007, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 5, NULL, 95, 2006, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 5, NULL, 1694, 2006, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 1, NULL, 3279, 2007, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 3, NULL, 431, 2011, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 4, NULL, 410, 2011, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 1, NULL, 5475, 2008, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 1, NULL, 4747, 2010, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 4, NULL, 623, 2011, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 1, NULL, 1307, 2007, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 1, NULL, 5815, 2010, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 1, NULL, 310, 2011, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 5, 'Aprueba el Plan de estudios y autoriza el funcionamiento del Ciclo de Formación Pedagógica para profesionales y técnicos superiores en el Instituto de Enseñanza Superior "Juan B. Justo". Las certificaciones que otorga el presente plan de estudios son: "Certificación de Formación Pedagógica para Profesionales y Técnicos Superiores para el Nivel Primario/EGB 1 y 2"; "Certificación de Formación Pedagógica para Profesionales y Técnicos Superiores para el Nivel Medio/3er. Ciclo E.G.B. y Educación Polimodal".', 941, 2007, '2015-08-20 15:11:30', '0000-00-00 00:00:00'),
(54, 1, NULL, 150, 2010, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 3, NULL, 1413, 2011, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 1, NULL, 3304, 2009, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 1, NULL, 7668, 2009, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 3, NULL, 805, 2011, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 1, NULL, 3870, 2009, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 3, 'Validez Nacional', 1540, 2012, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 3, 'Validez Nacional', 1542, 2012, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 3, NULL, 2891, 1986, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 1, NULL, 219, 2010, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 3, NULL, 808, 2011, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 3, NULL, 1899, 2012, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 1, 'Aprueba las adecuaciones incorporadas a los diseños curriculares para el Profesorado de Educación Superior en Educación Especial con orientación en Discapacidad Intelectual, en Sordos e Hipoacúsicos y en Ciegos y Disminuidos Visuales, aprobado por Resolución Nº 3299-SED/2004, para su aplicación en el Instituto Superior del Profesorado en Educación Especial.', 6116, 2010, '2015-06-19 12:02:01', '0000-00-00 00:00:00'),
(70, 3, 'Validez nacional de titulo otorgada', 2133, 2011, '2015-06-19 12:06:47', '0000-00-00 00:00:00'),
(71, 3, 'Validez nacional de titulo otorgada', 2134, 2011, '2015-06-19 12:01:02', '0000-00-00 00:00:00'),
(72, 3, 'Validez nacional de titulo otorgada', 2135, 2011, '2015-06-19 12:01:33', '0000-00-00 00:00:00'),
(73, 5, NULL, 1085, 2004, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 3, NULL, 984, 2011, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 3, NULL, 1467, 2012, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 1, NULL, 5789, 2010, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 1, NULL, 1890, 2012, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 1, NULL, 6988, 2009, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 1, NULL, 5830, 2010, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 3, NULL, 1131, 2012, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 1, 'Aprueba el Plan de Estudios de la carrera de “Profesorado de Educación Tecnológica para Nivel Primario y Nivel Secundario” que se incorpora como Anexo, autorizando su implementación en el Instituto de Enseñanza Superior N° 2 “Mariano Acosta” (IES N°2). Establece que el Plan de Estudios aprobado tendrá una vigencia de 5 (cinco) años consecutivos y su continuidad estará sujeta a los resultados de su seguimiento y evaluación. Título o certificación que otorga: Profesor/a de Educación tecnológica para la Educación Primaria y la Educación Secundaria Básica. Duración: 4 años Norma modificada por la Resolución N°5818/MEGC/2010 y Res 182/MEN/2012 (sobre validez de títulos).', 6623, 2009, '2015-08-20 15:18:38', '0000-00-00 00:00:00'),
(82, 1, NULL, 5818, 2010, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 3, NULL, 182, 2012, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 1, NULL, 10893, 2011, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 1, NULL, 6624, 2009, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 3, NULL, 931, 2011, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 3, NULL, 2008, 2012, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 1, NULL, 6634, 2009, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 1, NULL, 255, 2011, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 1, NULL, 4329, 2011, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 3, 'cohortes 2009/10/11', 2085, 2011, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 1, NULL, 8497, 2008, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 1, NULL, 56, 2010, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 1, NULL, 983, 2011, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 3, NULL, 2178, 2011, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 1, NULL, 966, 2010, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 1, NULL, 649, 2011, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 3, 'esta es una descripción somera', 180, 2012, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 1, NULL, 56, 2010, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 1, NULL, 2168, 2010, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 1, NULL, 896, 2011, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 1, NULL, 6627, 2009, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 3, NULL, 1937, 2011, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 3, NULL, 589, 2012, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 1, NULL, 529, 2010, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 3, NULL, 1397, 2011, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 5, NULL, 2168, 2010, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 5, NULL, 56, 2010, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 3, NULL, 1398, 2011, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 3, NULL, 809, 2011, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 3, NULL, 1065, 2011, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 1, NULL, 4565, 2010, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 3, NULL, 1561, 2010, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 3, 'cohorte 2009', 1403, 2011, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 1, NULL, 886, 2011, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 3, NULL, 1847, 2012, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 4, 'Solo validez juridiscional', 133, 2012, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 3, NULL, 899, 2012, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 3, NULL, 832, 2011, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 3, NULL, 830, 2011, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 3, NULL, 1600, 2012, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 3, NULL, 817, 2011, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 4, NULL, 1135, 2012, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 4, NULL, 1230, 2012, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 1, NULL, 6630, 2009, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 3, NULL, 1935, 2011, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 3, NULL, 1858, 2012, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 1, NULL, 6632, 2009, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 3, NULL, 1123, 2012, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 1, NULL, 6628, 2009, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 3, NULL, 1039, 2012, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 3, NULL, 586, 2012, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 1, 'prueba', 99999, 2013, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 4, 'postítulo del IES 2', 424, 2013, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 6, NULL, 781, 2006, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 7, 'Aprueba el Plan Nacional de Educación Obligatoria y Formación Docente 2012 - 2016', 188, 2012, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 7, 'Aprueba el Plan Nacional de Formación Docente', 23, 2007, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 7, 'anexo I: documento diagnóstico y descriptivo del sistema formador "Hacia una Institucionalidad del Sistema de Formación Docente en Argentina"\r\nanexo II: "Lineamientos Nacionales para la Formación Docente Continua y el Desarrolo Profesional"', 30, 2007, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 7, 'fija la responsabilidad jurisdiccional en la Dirección de Formación Docente', 72, 2008, '2013-11-27 16:12:04', '0000-00-00 00:00:00'),
(145, 7, 'Aprueba el documento Lineamientos Federales para el planeamiento y organización institucional del sistema formador.\r\nEl documento trata de:\r\na) Planeamiento\r\nb) Condiciones institucionales del sistema formador\r\nc) Organizacion interna de los IFD', 140, 2011, '2014-02-17 16:14:36', '0000-00-00 00:00:00'),
(151, 1, 'x', 1002, 2013, '2013-11-27 16:15:21', '2013-11-27 16:15:21'),
(152, 1, 'x', 1003, 2013, '2014-02-17 16:14:41', '2013-11-27 16:16:26'),
(153, 1, 'xx', 1004, 2013, '2013-11-27 16:18:50', '2013-11-27 16:18:50'),
(154, 1, 'tamado del cuadernillo  del RA2013', 2629, 2007, '2014-03-06 14:32:59', '2014-03-06 14:32:59'),
(155, 4, 'Sobre la Especialización en Superior en Inclusión Educativa', 1054, 2014, '2014-03-27 09:43:51', '2014-03-27 09:43:51'),
(156, 1, 'Aprueba el Diseño Curricular Jurisdiccional para la Formación Docente del Profesorado de Educación Inicial que deberá implementarse en los establecimientos de Formación Docente dependientes de la Dirección de Formación Docente perteneciente a la Dirección General de Educación Superior y en los establecimientos de Formación Docente supervisados por la Dirección General de Educación de Gestión Privada del MEGC (Anexo I) Establece que el DCJ se implementará a partir del ciclo lectivo 2015 en los establecimientos cuya nómina y cohortes involucradas se detallan en los Anexos II y III', 2438, 2014, '2015-08-20 15:03:56', '2014-09-24 08:13:25'),
(157, 1, 'Aprueba el Diseño Curricular Jurisdiccional para la Formación Docente del Profesorado de Educación Primaria que deberá implementarse en los establecimientos de Formación Docente dependientes de la Dirección de Formación Docente perteneciente a la Dirección General de Educación Superior y en los establecimientos de Formación Docente supervisados por la Dirección General de Educación de Gestión Privada del Ministerio de Educación. Anexo I: Diseño Curricular Jurisdiccional para la Formación Docente del Profesorado de Educación Primaria Anexo II: Nómina de IES de formación docente de gestión estatal que implementarán el Diseño Curricular. Anexo III: Nómina de IES de formación docente de gestión estatal que implementarán el Diseño Curricular', 2514, 2014, '2015-08-20 15:05:52', '2014-09-24 12:31:50'),
(158, 5, 'se pone esto para los que no la se', 9999, 2015, '2015-05-07 14:38:33', '2015-05-07 14:38:33'),
(159, 8, 'plan nuevo', 24, 2015, '2015-05-07 15:38:57', '2015-05-07 15:37:47'),
(160, 1, 'Apruébase el Diseño Curricular Jurisdiccional para la Formación Docente del Profesorado de\r\nEducación Especial con orientación en Sordos e Hipoacúsicos', 81, 2015, '2015-06-19 09:17:10', '2015-06-19 09:17:10'),
(161, 1, 'Apruébase el Diseño Curricular Jurisdiccional para la Formación Docente del Profesorado de\r\nEducación Superior en Historia', 606, 2015, '2015-06-19 10:13:04', '2015-06-19 10:13:04'),
(162, 1, 'Apruébase el Diseño Curricular Jurisdiccional para la Formación Docente del Profesorado de\r\nEducación Superior en Filosofía', 456, 2015, '2015-06-19 10:15:31', '2015-06-19 10:15:31'),
(163, 1, 'Apruébase el Diseño Curricular Jurisdiccional para la Formación Docente del Profesorado de\r\nEducación Superior en Italiano', 4281, 2014, '2015-06-19 10:18:29', '2015-06-19 10:18:29'),
(164, 5, 'Creación de carreras de profesorado de educación especial', 3299, 2004, '2015-06-19 12:05:29', '2015-06-19 12:05:29'),
(165, 1, '28/11/2014', 4053, 2014, '2015-07-07 12:42:24', '2015-07-07 12:42:24'),
(166, 1, '25/11/2014', 4024, 2014, '2015-07-07 12:46:07', '2015-07-07 12:46:07'),
(167, 1, '24/11/2014', 4023, 2014, '2015-07-07 12:47:16', '2015-07-07 12:47:16'),
(168, 1, '24/11/2014', 4022, 2014, '2015-07-07 12:49:10', '2015-07-07 12:49:10'),
(169, 1, '4/12/2014', 4119, 2014, '2015-07-07 12:50:15', '2015-07-07 12:50:15'),
(170, 1, 'Aprueba diseño curricular.\r\nCohorte 2015-2019.', 1245, 2015, '2015-07-13 15:44:23', '2015-07-13 15:44:22'),
(171, 1, 'Aprueba los Lineamientos Curriculares y el Diseño Curricular correspondientes a la Formación de Docentes de Educación Física desarrollados en el Anexo que, a todos sus efectos, forma parte integrante de la presente Resolución. Determina que, de conformidad con lo establecido por el Acuerdo A-14 del Consejo Federal de Cultura y Educación, el título a otorgar será el de Profesor de Educación Física.', 3555, 2003, '2015-08-20 15:14:29', '2015-08-20 15:14:29'),
(172, 1, 'Aprueba el Diseño Curricular Jurisdiccional (DCJ) para la Formación Docente del Profesorado de de Educación Superior en Biología, que deberá implementarse en los Institutos Superiores de Formación Docente dependientes de la Dirección de Formación Docente perteneciente a la Dirección General de Educación Superior y en los Institutos de Formación Docente supervisados por la Dirección General de Educación de Gestión Privada del MEGC (Anexo I) El DCJ deberá implementarse a partir del ciclo lectivo del año 2015 Anexo II: Instituto Superior del Profesorado “Dr. J. V. González”, (Cohorte 2015-1019) Anexo III: Instituto Del Profesorado del Consejo Superior de Educación Católica Septimio Walsh (V-5) e Instituto Superior Edusalud de Ciencias de la Salud para la Educación (A-1283) (Cohortes 2015-1019) Se relaciona con: -Resolución N° 1678/MEGC/2015 y -Resolución N° 1705/MEGC/2015', 4016, 2014, '2015-08-21 13:30:20', '2015-08-21 13:30:20'),
(173, 1, 'Aprueba el Diseño Curricular Jurisdiccional para la Formación Docente del Profesorado de Educación Secundaria en Biología (Anexo I) que se implementará a partir del ciclo lectivo del año 2015 en los Institutos Superiores de Formación Docente de Gestión Estatal y de Gestión Privada (Anexos II y III). Instituto Superior del Profesorado Dr. Joaquín V. González, Cohorte 2015-2019, dependientes de la Dirección de Formación Docente del MEGC Instituto del Profesorado del Consudec "Septimio Walsh" (V-5) y Instituto Superior Edusalud de Ciencias de la Salud para la Educación (A-1283), Cohorte 2015-2019, dependientes de la Dirección General de Educación de Gestión Privada.', 4234, 2014, '2015-08-21 13:31:19', '2015-08-21 13:31:19'),
(174, 1, 'Rectifica el artículo 2 de la Resolución N° 4016-MEGC/14, el cual quedará redactado de la siguiente manera: "Establécese que el Diseño Curricular Jurisdiccional aprobado en el artículo 1 de la presente deberá implementarse, a partir del ciclo lectivo del año 2015, en los Institutos Superiores de Formación Docente de Gestión Estatal y de Gestión Privada citados precedentemente, cuya nómina y cohortes involucradas se detallan en los ANEXOS II y III (IF-2014-13910708- DGPLINED) respectivamente, que a todos sus efectos forman parte de la presente Resolución." Se relaciona con Resolución N° 4016-MEGC/14. (Diseño Curricular Jurisdiccional (DCJ) para la Formación Docente del Profesorado de de Educación Superior en Biología)', 1678, 2015, '2015-08-21 13:35:59', '2015-08-21 13:35:59'),
(175, 1, 'Aprueba el Diseño Curricular Jurisdiccional para la Formación Docente del Profesorado de Educación Superior en Educación Física (Anexo I) que deberá implementarse a partir del ciclo lectivo del año 2015, en los Institutos Superiores de Formación Docente de Gestión Estatal y Gestión Privada (Anexos II y III). Instituto de Educación Física Nº1 "Dr. E. Romero Brest" e Instituto Superior de Educación Física Nº2 "Federico Dickens" 2015-2019 (Cohortes 2015-2019) dependientes de la Dirección de Formación Docente de la Dirección General de Educación Superior Centro de Estudios Terciarios River Plate (A-1304), Instituto Dr. Dalmacio Velez Sarsfield (A-799), Instituto Dr. José Ingenieros (A-761), Instituto Privado General San Martín (A-1274), Instituto Superior de Ciencias de la Salud (A-1243), Instituto Superior de Educación Física "Hugo Quinn" (A-795), e Instituto Superior del Profesorado Juan B. Alberdi (A-815) (Cohortes 2015-2019), dependientes de la Dirección General de Educación de Gestión Privada.', 465, 2015, '2015-08-21 13:41:51', '2015-08-21 13:41:51'),
(176, 1, 'Aprueba el Diseño Curricular Jurisdiccional para la Formación Docente del Profesorado de Educación Física (Anexo I) que deberá implementarse a partir del ciclo lectivo del año 2015, en los Institutos Superiores de Formación Docente de Gestión Estatal y Gestión Privada (Anexos II y III). Instituto de Educación Física Nº1 "Dr. E.Romero Brest" e Instituto Superior de Educación Física Nº2 "Federico Dickens" 2015-2019 (Cohortes 2015-2019) dependientes de la Dirección de Formación Docente de la Dirección General de Educación Superior. Centro de Estudios Terciarios River Plate (A-1304), Instituto Dr. Dalmacio Velez Sarsfield (A-799), Instituto Dr. José Ingenieros (A-761), Instituto Privado General San Martín (A-1274), Instituto Superior de Ciencias de la Salud (A-1243), Instituto Superior de Educación Física "Hugo Quinn" (A-795), e Instituto Superior del Profesorado Juan B. Alberdi (A-815) (Cohortes 2015-2019), dependientes de la Dirección General de Educación de Gestión Privada.', 403, 2015, '2015-08-21 14:05:30', '2015-08-21 14:05:30'),
(177, 1, 'Aprueba los Lineamientos Curriculares y el Diseño Curricular correspondientes a la Formación de Docentes de Educación Física desarrollados en el Anexo que, a todos sus efectos, forma parte integrante de la presente Resolución. Determina que, de conformidad con lo establecido por el Acuerdo A-14 del Consejo Federal de Cultura y Educación, el título a otorgar será el de Profesor de Educación Física.', 3555, 2003, '2015-08-21 14:15:15', '2015-08-21 14:15:15'),
(178, NULL, '.', 1159, 1971, '2015-11-23 09:32:50', '2015-11-23 09:32:50'),
(179, NULL, '.', 1159, 1971, '2015-11-23 09:38:04', '2015-11-23 09:38:04'),
(180, 3, '.', 6627, NULL, '2015-11-24 07:12:36', '2015-11-24 07:12:36'),
(181, 3, '.', 4001, 2006, '2015-11-24 09:11:53', '2015-11-24 09:11:53'),
(182, 8, 'Aprobación el Plan Curricular Institucional del Profesorado de Educación Primaria', 532, 2015, '2015-12-04 12:43:57', '2015-12-04 12:43:57'),
(183, 8, 'aprobación del Plan Curricular Institucional para la carrera de\r\nFormación Docente del Profesorado de Educación Inicial', 489, 2015, '2015-12-04 12:55:34', '2015-12-04 12:55:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `norma_referencias`
--

DROP TABLE IF EXISTS `norma_referencias`;
CREATE TABLE IF NOT EXISTS `norma_referencias` (
  `norma_id` int(11) NOT NULL,
  `referencia_id` int(11) NOT NULL,
  PRIMARY KEY (`norma_id`,`referencia_id`),
  KEY `IDX_BCB3D063E06FC29E` (`norma_id`),
  KEY `IDX_BCB3D063778D91A2` (`referencia_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcar la base de datos para la tabla `norma_referencias`
--

INSERT INTO `norma_referencias` (`norma_id`, `referencia_id`) VALUES
(3, 98),
(33, 114),
(69, 72),
(70, 69),
(70, 164),
(98, 33),
(98, 140),
(140, 33),
(145, 152);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oferta_educativa`
--

DROP TABLE IF EXISTS `oferta_educativa`;
CREATE TABLE IF NOT EXISTS `oferta_educativa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nivel_id` int(11) DEFAULT NULL,
  `creado` datetime NOT NULL,
  `actualizado` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_21B7C831DA3426AE` (`nivel_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=152 ;

--
-- Volcar la base de datos para la tabla `oferta_educativa`
--

INSERT INTO `oferta_educativa` (`id`, `nivel_id`, `creado`, `actualizado`) VALUES
(6, 32, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 32, '0000-00-00 00:00:00', '2014-02-24 16:07:21'),
(14, 31, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 32, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 32, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 32, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 32, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 32, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 32, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 32, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 32, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 32, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 32, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 32, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 32, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 32, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 32, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 32, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 32, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 32, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 32, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 32, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 29, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 30, '2014-09-18 16:02:40', '2014-09-18 16:02:44'),
(86, 32, '2014-09-24 08:12:47', '2015-12-04 12:55:56'),
(87, 32, '2014-09-24 12:19:30', '2015-12-04 12:46:47'),
(89, 32, '2014-10-07 14:17:33', '2015-05-07 14:56:00'),
(90, 32, '2014-10-07 14:17:34', '2015-05-07 14:58:04'),
(91, 32, '2014-10-07 14:17:34', '2015-05-14 14:08:04'),
(92, 32, '2014-10-07 14:17:34', '2015-05-14 14:09:09'),
(93, 32, '2014-10-07 14:17:34', '2015-05-14 14:10:12'),
(94, 32, '2014-10-07 14:17:34', '2015-05-14 14:10:59'),
(95, 32, '2014-10-07 14:17:34', '2015-05-14 14:27:02'),
(96, 32, '2014-10-07 14:17:34', '2015-06-19 09:25:34'),
(97, 32, '2014-10-07 14:17:34', '2015-06-19 09:21:21'),
(99, 32, '2014-10-07 14:17:34', '2015-05-14 14:14:51'),
(100, 32, '2014-10-07 14:17:34', '2015-07-07 12:42:43'),
(101, 32, '2014-10-07 14:17:35', '2015-08-21 14:04:41'),
(102, 32, '2014-10-07 14:17:35', '2015-06-19 10:16:10'),
(103, 32, '2014-10-07 14:17:35', '2015-07-28 13:29:48'),
(104, 32, '2014-10-07 14:17:35', '2015-05-14 14:20:12'),
(105, 32, '2014-10-07 14:17:35', '2015-06-19 10:23:01'),
(106, 32, '2014-10-07 14:17:35', '2015-05-07 14:39:03'),
(107, 32, '2014-10-07 14:17:35', '2015-06-19 10:19:06'),
(108, 32, '2014-10-07 14:17:35', '2015-05-07 15:18:24'),
(109, 32, '2014-10-07 14:17:35', '2015-05-13 09:20:33'),
(110, 32, '2014-10-07 14:17:35', '2015-05-07 14:40:17'),
(111, 32, '2014-10-07 14:17:35', '2015-05-13 09:21:22'),
(112, 32, '2014-10-07 14:17:35', '2015-07-07 12:49:17'),
(113, 32, '2014-10-07 14:17:36', '2015-08-20 15:19:13'),
(114, 32, '2014-10-07 14:17:36', '2015-05-14 14:26:12'),
(115, 32, '2014-10-07 14:17:36', '2015-05-14 14:28:03'),
(116, 32, '2014-10-07 14:17:36', '2015-05-07 15:01:21'),
(117, 32, '2014-10-07 14:17:36', '2015-07-07 12:46:36'),
(118, 32, '2014-10-07 14:17:36', '2015-11-24 09:10:30'),
(119, 32, '2014-10-07 14:17:36', '2015-06-19 10:13:24'),
(120, 32, '2014-10-07 14:17:36', '2015-05-14 14:31:54'),
(121, 32, '2014-10-07 14:17:36', '2015-07-07 12:47:48'),
(122, 32, '2014-10-07 14:17:36', '2015-05-07 15:12:24'),
(123, 32, '2014-10-07 14:17:37', '2015-07-07 12:50:24'),
(124, 32, '2014-10-07 14:17:37', '2015-05-07 15:10:57'),
(125, 32, '2014-10-07 14:17:37', '2015-05-07 14:43:58'),
(126, 32, '2014-10-07 14:17:37', '2015-05-07 15:13:51'),
(127, 32, '2014-10-07 14:17:37', '2015-05-07 15:09:41'),
(128, 32, '2015-05-07 15:36:47', '2015-05-07 15:40:00'),
(129, 32, '2015-05-13 14:53:37', '2015-05-13 14:53:46'),
(130, 32, '2015-05-26 13:33:34', '2015-05-26 13:33:34'),
(134, 32, '2015-06-19 10:27:17', '2015-06-19 10:27:17'),
(135, 32, '2015-06-19 10:50:33', '2015-06-19 10:50:33'),
(140, 32, '2015-06-25 11:40:50', '2015-06-25 11:40:50'),
(141, 32, '2015-06-25 11:41:04', '2015-06-25 11:41:04'),
(142, 32, '2015-06-25 11:41:17', '2015-06-25 11:41:17'),
(143, 32, '2015-06-25 11:41:42', '2015-06-25 11:41:42'),
(144, 32, '2015-06-30 13:21:27', '2015-07-13 15:44:32'),
(145, 32, '2015-06-30 13:22:06', '2015-06-30 13:26:36'),
(146, 32, '2015-06-30 13:45:25', '2015-06-30 13:45:25'),
(147, 32, '2015-06-30 13:56:05', '2015-08-21 13:36:29'),
(148, 31, '2015-07-28 13:09:05', '2015-07-28 13:09:05'),
(149, 32, '2015-11-10 10:34:11', '2015-11-10 10:34:11'),
(150, 32, '2015-11-23 09:23:52', '2015-11-23 09:23:52'),
(151, 32, '2017-10-23 16:42:13', '2017-10-23 16:42:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oferta_norma`
--

DROP TABLE IF EXISTS `oferta_norma`;
CREATE TABLE IF NOT EXISTS `oferta_norma` (
  `oferta_id` int(11) NOT NULL,
  `norma_id` int(11) NOT NULL,
  PRIMARY KEY (`oferta_id`,`norma_id`),
  KEY `IDX_703EF970FAFBF624` (`oferta_id`),
  KEY `IDX_703EF970E06FC29E` (`norma_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `oferta_norma`
--

INSERT INTO `oferta_norma` (`oferta_id`, `norma_id`) VALUES
(6, 11),
(12, 19),
(14, 53),
(27, 38),
(28, 39),
(29, 40),
(30, 41),
(31, 42),
(32, 43),
(33, 44),
(33, 45),
(34, 46),
(35, 47),
(36, 48),
(37, 49),
(38, 50),
(39, 51),
(40, 52),
(41, 53),
(49, 65),
(57, 84),
(82, 133),
(83, 134),
(86, 156),
(86, 183),
(87, 157),
(87, 182),
(89, 158),
(90, 158),
(91, 158),
(92, 158),
(93, 158),
(94, 158),
(95, 158),
(96, 160),
(99, 158),
(100, 165),
(101, 175),
(102, 162),
(103, 158),
(104, 158),
(106, 158),
(107, 163),
(108, 158),
(109, 158),
(110, 158),
(111, 158),
(112, 168),
(113, 81),
(114, 158),
(115, 158),
(116, 158),
(117, 166),
(119, 161),
(120, 158),
(121, 167),
(122, 158),
(123, 169),
(125, 158),
(126, 158),
(127, 158),
(128, 159),
(129, 158),
(144, 170),
(145, 158),
(147, 172),
(147, 173),
(147, 174),
(151, 158);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `organizacion_interna`
--

DROP TABLE IF EXISTS `organizacion_interna`;
CREATE TABLE IF NOT EXISTS `organizacion_interna` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dependencia_id` int(11) DEFAULT NULL,
  `establecimiento_id` int(11) DEFAULT NULL,
  `te` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `actualizado` datetime NOT NULL,
  `creado` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_92FADEB5DF2432B6` (`dependencia_id`),
  KEY `IDX_92FADEB571B61351` (`establecimiento_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=110 ;

--
-- Volcar la base de datos para la tabla `organizacion_interna`
--

INSERT INTO `organizacion_interna` (`id`, `dependencia_id`, `establecimiento_id`, `te`, `email`, `actualizado`, `creado`) VALUES
(1, 9, 16, '4813-7373 (101)', 'ens1@bue.edu.ar', '2018-08-28 07:25:38', '2015-12-22 14:53:49'),
(2, 8, 16, '4812-5602 (106)', NULL, '2018-09-05 13:49:10', '2015-12-22 14:53:50'),
(3, 10, 16, '4812-5602 (116)', 'ens1_nidireccion@bue.edu.ar', '2018-09-19 06:47:53', '2015-12-22 14:53:51'),
(4, 11, 16, '4812-5602 (117)', NULL, '2018-09-19 06:48:08', '2015-12-22 14:53:52'),
(5, 12, 16, '4812-5602  (111)', NULL, '2018-09-19 06:47:42', '2015-12-22 14:53:53'),
(6, 14, 16, '4812-5602 (108)', NULL, '2018-03-16 17:56:55', '2015-12-22 14:53:54'),
(7, 8, 17, '4932-9433', NULL, '2015-12-22 15:06:50', '2015-12-22 14:54:01'),
(8, 9, 17, '4931-1551 int 611', NULL, '2019-04-10 06:32:20', '2015-12-22 14:54:02'),
(9, 10, 17, '4931-2283', NULL, '2015-12-22 15:06:50', '2015-12-22 14:54:03'),
(10, 11, 17, '4931-2283', NULL, '2015-12-22 15:06:50', '2015-12-22 14:54:07'),
(11, 12, 17, '4931-1551', NULL, '2015-12-22 15:06:50', '2015-12-22 14:54:08'),
(12, 14, 17, '4931-1551', NULL, '2015-12-22 15:06:50', '2015-12-22 14:54:09'),
(13, 9, 19, '4931-7981', 'ens2acosta@bue.edu.ar', '2016-05-20 13:19:38', '2015-12-22 14:54:14'),
(14, 8, 19, '4931-3913', NULL, '2015-12-22 15:01:58', '2015-12-22 14:54:15'),
(15, 10, 19, '4932-3392', NULL, '2016-05-09 08:52:33', '2015-12-22 14:54:16'),
(16, 11, 19, '4931-7893', NULL, '2015-12-22 15:01:58', '2015-12-22 14:54:17'),
(17, 12, 19, '', NULL, '2015-12-22 15:01:58', '2015-12-22 14:54:18'),
(18, 14, 19, '', NULL, '2015-12-22 15:01:58', '2015-12-22 14:54:19'),
(21, 9, 21, '4361-8965', NULL, '2018-06-06 12:07:07', '2015-12-22 14:54:27'),
(22, 8, 21, '4361-0424', NULL, '2015-12-22 15:02:08', '2015-12-22 14:54:28'),
(23, 10, 21, '', NULL, '2015-12-22 15:02:08', '2015-12-22 14:54:29'),
(24, 11, 21, '4361-7617', NULL, '2015-12-22 15:02:08', '2015-12-22 14:54:32'),
(25, 12, 21, '4361-0417', NULL, '2015-12-22 15:02:08', '2015-12-22 14:54:33'),
(26, 14, 21, 'interno 115', NULL, '2017-03-20 13:41:03', '2015-12-22 14:54:34'),
(27, 9, 23, '4902-8022 op 2', NULL, '2018-08-31 08:28:04', '2015-12-22 14:54:40'),
(28, 8, 23, '4902-8022 op 1', NULL, '2018-08-31 08:28:13', '2015-12-22 14:54:41'),
(29, 10, 23, '4903-8445 op6', NULL, '2018-08-31 08:30:12', '2015-12-22 14:54:43'),
(30, 11, 23, 'op 7', NULL, '2018-08-31 08:30:20', '2015-12-22 14:54:44'),
(31, 14, 23, '4901-9429', NULL, '2018-06-06 12:08:35', '2015-12-22 14:54:45'),
(32, 12, 23, '4902-8022 op 5', NULL, '2018-08-31 08:30:03', '2015-12-22 14:54:46'),
(33, 9, 24, '4301-6688 int.5', NULL, '2019-05-08 10:41:23', '2015-12-22 14:54:52'),
(34, 8, 24, '4302-6688 int 36/37', NULL, '2016-09-29 12:48:38', '2015-12-22 14:54:52'),
(35, 10, 24, '4301-2651 o int 1', NULL, '2018-06-06 12:11:09', '2015-12-22 14:54:53'),
(36, 11, 24, '4301-2651 o int 2', NULL, '2017-10-27 14:16:08', '2015-12-22 14:54:54'),
(37, 12, 24, '4302-6688 o int 3', NULL, '2017-10-27 14:16:55', '2015-12-22 14:54:55'),
(39, 9, 28, '4824-0383/2741 int 101', NULL, '2018-04-06 13:50:49', '2015-12-22 14:55:02'),
(40, 8, 28, '4824-4102 int 111', NULL, '2017-03-03 15:28:06', '2015-12-22 14:55:03'),
(41, 10, 28, 'int 110', NULL, '2015-12-22 15:06:17', '2015-12-22 14:55:04'),
(42, 11, 28, 'int 120', NULL, '2015-12-22 15:06:17', '2015-12-22 14:55:04'),
(43, 12, 28, 'int 124', NULL, '2015-12-22 15:06:17', '2015-12-22 14:55:05'),
(44, 14, 28, 'int 113', NULL, '2015-12-22 15:06:17', '2015-12-22 14:55:07'),
(45, 15, 28, '', NULL, '2015-12-22 15:06:18', '2015-12-22 14:55:08'),
(46, 9, 29, '4861-2535 int 151', NULL, '2018-10-03 08:53:16', '2015-12-22 14:55:15'),
(47, 8, 29, '4862-0036 int 1161', NULL, '2018-03-12 11:00:22', '2015-12-22 14:55:17'),
(48, 10, 29, '', NULL, '2015-12-22 15:06:43', '2015-12-22 14:55:18'),
(49, 11, 29, '4863-3839', NULL, '2018-06-06 12:12:48', '2015-12-22 14:55:40'),
(50, 12, 29, '4861-2535', NULL, '2015-12-22 15:06:43', '2015-12-22 14:55:41'),
(51, 14, 29, '4863-3808 (bedelía) interno 4', NULL, '2018-08-08 09:03:32', '2015-12-22 14:55:42'),
(52, 9, 30, '4372-2157', NULL, '2015-12-22 15:06:58', '2015-12-22 14:56:04'),
(53, 8, 30, '4371-0057', NULL, '2015-12-22 15:06:58', '2015-12-22 14:56:05'),
(54, 10, 30, '4371-0829 int 1', NULL, '2018-11-29 08:11:39', '2015-12-22 14:56:07'),
(55, 11, 30, '4371-0829', NULL, '2015-12-22 15:06:58', '2015-12-22 14:56:08'),
(56, 12, 30, '', NULL, '2015-12-22 15:06:58', '2015-12-22 14:56:09'),
(57, 14, 30, '4372-0181 int 4 4372-2157 int 4', NULL, '2017-05-09 16:00:05', '2015-12-22 14:56:10'),
(58, 9, 32, '4785-1788', NULL, '2018-11-28 10:42:30', '2015-12-22 14:56:23'),
(59, 8, 32, '4785-1788', NULL, '2015-12-22 15:07:05', '2015-12-22 14:56:24'),
(60, 10, 32, '4788-5465', NULL, '2015-12-22 15:07:05', '2015-12-22 14:56:25'),
(61, 11, 32, 'int.39', NULL, '2015-12-22 15:07:05', '2015-12-22 14:56:25'),
(62, 12, 32, 'int.34', NULL, '2015-12-22 15:07:05', '2015-12-22 14:56:26'),
(63, 14, 32, 'int.35', NULL, '2015-12-22 15:07:05', '2015-12-22 14:56:27'),
(64, 9, 34, '4941-0186', NULL, '2015-12-22 15:07:13', '2015-12-22 14:56:38'),
(65, 8, 34, '4943-5057', NULL, '2015-12-22 15:07:13', '2015-12-22 14:56:40'),
(66, 10, 34, '', NULL, '2015-12-22 15:07:13', '2015-12-22 14:56:40'),
(67, 11, 34, '', NULL, '2015-12-22 15:07:13', '2015-12-22 14:56:41'),
(68, 12, 34, '', NULL, '2015-12-22 15:07:13', '2015-12-22 14:56:42'),
(69, 14, 34, NULL, NULL, '2015-12-22 14:56:43', '2015-12-22 14:56:43'),
(70, 9, 35, '4807-2958 / 2966 / 2967 int. 309 o 4805-5979', NULL, '2017-11-14 17:29:25', '2015-12-22 14:56:53'),
(71, 8, 35, 'Int. 308', NULL, '2018-06-06 12:15:29', '2015-12-22 14:56:54'),
(72, 10, 35, 'Int. 303', NULL, '2015-12-22 15:09:02', '2015-12-22 14:56:55'),
(73, 11, 35, 'Int. 315', NULL, '2015-12-22 15:09:02', '2015-12-22 14:56:56'),
(74, 12, 35, 'int. 313', NULL, '2015-12-22 15:09:02', '2015-12-22 14:56:56'),
(75, 14, 35, 'Int. 314', NULL, '2015-12-22 15:09:02', '2015-12-22 14:56:57'),
(76, 9, 36, '4374-4068 4373-3731', NULL, '2015-12-22 15:35:07', '2015-12-22 14:57:11'),
(77, 8, 36, '4371-0167', NULL, '2015-12-22 15:07:43', '2015-12-22 14:57:12'),
(78, 9, 20, '4932-4498', NULL, '2015-12-22 15:08:12', '2015-12-22 14:57:25'),
(79, 8, 20, '', NULL, '2015-12-22 15:08:12', '2015-12-22 14:57:26'),
(80, 9, 37, '4639-3981int 105', NULL, '2019-07-19 09:05:05', '2015-12-22 14:57:38'),
(81, 8, 37, '4639-3981', NULL, '2018-09-19 08:05:39', '2015-12-22 14:57:39'),
(82, 10, 37, '4566-9247', NULL, '2015-12-22 15:08:23', '2015-12-22 14:57:40'),
(83, 11, 37, '4639-3981 / 8708', NULL, '2018-07-11 09:24:45', '2015-12-22 14:57:41'),
(84, 12, 37, '4639-3981', NULL, '2015-12-22 15:08:23', '2015-12-22 14:57:41'),
(85, 14, 37, '4639- 8707 / 4639-8708', NULL, '2017-03-01 17:10:21', '2015-12-22 14:57:42'),
(86, 9, 38, '4322-3992/96/98 4393-6898/7351 (int 107)', NULL, '2018-10-25 14:15:18', '2015-12-22 14:57:54'),
(87, 8, 38, NULL, NULL, '2018-09-19 06:36:28', '2015-12-22 14:57:55'),
(88, 11, 38, 'int 122/123', NULL, '2015-12-22 15:08:40', '2015-12-22 14:57:56'),
(89, 12, 38, 'int 122/123', NULL, '2015-12-22 15:08:40', '2015-12-22 14:57:57'),
(90, 14, 38, '', NULL, '2015-12-22 15:08:40', '2015-12-22 14:57:58'),
(91, 9, 39, '4772-6357', NULL, '2015-12-22 15:08:02', '2015-12-22 14:58:08'),
(92, 8, 39, '4774-1756', NULL, '2015-12-22 15:08:02', '2015-12-22 14:58:09'),
(93, 10, 39, '4772-6356 4772-6356', NULL, '2015-12-22 15:08:02', '2015-12-22 14:58:10'),
(94, 14, 39, '4774-1463', NULL, '2015-12-22 15:08:02', '2015-12-22 14:58:13'),
(95, 9, 40, '4543-6217', NULL, '2018-06-06 12:21:17', '2015-12-22 14:58:24'),
(96, 8, 40, '4544-4611', NULL, '2018-06-06 12:21:04', '2015-12-22 14:58:25'),
(97, 14, 40, '45436217/ 45444611/ 45460243/ 45460690/ 45470687', NULL, '2018-06-06 12:20:48', '2015-12-22 14:58:26'),
(98, 9, 42, '4702-1086', NULL, '2015-12-22 15:08:50', '2015-12-22 14:58:34'),
(99, 8, 42, '4703-3819 (101)', NULL, '2015-12-22 15:08:51', '2015-12-22 14:58:35'),
(100, 9, 43, '4921-0067', NULL, '2018-06-06 12:19:59', '2015-12-22 14:58:57'),
(101, 8, 43, '4921-4644', NULL, '2015-12-22 15:07:52', '2015-12-22 14:58:58'),
(102, 14, 43, '(int. 105)', NULL, '2015-12-22 15:07:53', '2015-12-22 14:58:59'),
(103, 9, 27, '4372-8286', 'secretariaispjvg@bue.edu.ar', '2016-07-18 11:11:47', '2015-12-22 14:59:03'),
(104, 8, 27, '4372-8394', 'rectoriaispjvg@bue.edu.ar', '2016-07-18 11:10:54', '2015-12-22 14:59:05'),
(105, 10, 47, '4772-6356 4772-6356', NULL, '2016-09-23 13:25:58', '2016-09-23 13:24:18'),
(106, 14, 42, NULL, NULL, '2016-09-29 09:34:54', '2016-09-29 09:34:54'),
(107, 14, 22, '46024206', NULL, '2017-03-20 13:56:05', '2017-02-20 15:56:25'),
(108, 14, 25, '4302-7727-Int 8', NULL, '2018-06-06 12:10:48', '2017-03-27 15:43:53'),
(109, 16, 37, 'interno 11', NULL, '2017-11-08 17:21:17', '2017-11-08 17:21:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orientacion`
--

DROP TABLE IF EXISTS `orientacion`;
CREATE TABLE IF NOT EXISTS `orientacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `carrera_id` int(11) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `duracion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_FB4EAA70C671B40F` (`carrera_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `orientacion`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `origen_hora`
--

DROP TABLE IF EXISTS `origen_hora`;
CREATE TABLE IF NOT EXISTS `origen_hora` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` int(11) NOT NULL,
  `descripcion` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `actualizado` datetime NOT NULL,
  `creado` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Volcar la base de datos para la tabla `origen_hora`
--

INSERT INTO `origen_hora` (`id`, `codigo`, `descripcion`, `actualizado`, `creado`) VALUES
(1, 1, 'Cargo de la POF', '2014-05-22 16:39:50', '2014-05-22 16:39:50'),
(2, 2, 'Hs institucionales', '2014-05-22 16:39:50', '2014-05-22 16:39:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

DROP TABLE IF EXISTS `pais`;
CREATE TABLE IF NOT EXISTS `pais` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(3) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `orden` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Volcar la base de datos para la tabla `pais`
--

INSERT INTO `pais` (`id`, `codigo`, `descripcion`, `orden`) VALUES
(22, 'AR', 'Argentinax', 1),
(23, 'UR', 'Uruguay', 2),
(24, 'AS', 'Asia', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plantel_establecimiento`
--

DROP TABLE IF EXISTS `plantel_establecimiento`;
CREATE TABLE IF NOT EXISTS `plantel_establecimiento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `organizacion_id` int(11) DEFAULT NULL,
  `cargo_id` int(11) DEFAULT NULL,
  `te` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `actualizado` datetime NOT NULL,
  `creado` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_686FA49290B1019E` (`organizacion_id`),
  KEY `IDX_686FA492813AC380` (`cargo_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=241 ;

--
-- Volcar la base de datos para la tabla `plantel_establecimiento`
--

INSERT INTO `plantel_establecimiento` (`id`, `organizacion_id`, `cargo_id`, `te`, `email`, `actualizado`, `creado`) VALUES
(1, 1, 20, NULL, NULL, '2015-12-22 15:01:27', '2015-12-22 15:01:27'),
(2, 2, 11, NULL, NULL, '2015-12-22 15:01:27', '2015-12-22 15:01:27'),
(3, 3, 14, NULL, NULL, '2015-12-22 15:01:27', '2015-12-22 15:01:27'),
(4, 3, 15, NULL, NULL, '2015-12-22 15:01:27', '2015-12-22 15:01:27'),
(5, 4, 7, NULL, NULL, '2015-12-22 15:01:27', '2015-12-22 15:01:27'),
(6, 4, 17, NULL, NULL, '2015-12-22 15:01:27', '2015-12-22 15:01:27'),
(7, 4, 17, NULL, NULL, '2015-12-22 15:01:27', '2015-12-22 15:01:27'),
(10, 6, 12, NULL, NULL, '2015-12-22 15:01:27', '2015-12-22 15:01:27'),
(11, 6, 12, NULL, NULL, '2015-12-22 15:01:27', '2015-12-22 15:01:27'),
(12, 6, 9, NULL, NULL, '2015-12-22 15:01:27', '2015-12-22 15:01:27'),
(13, 13, 20, NULL, NULL, '2015-12-22 15:01:58', '2015-12-22 15:01:58'),
(14, 14, 11, NULL, NULL, '2015-12-22 15:01:58', '2015-12-22 15:01:58'),
(15, 15, 14, NULL, NULL, '2015-12-22 15:01:58', '2015-12-22 15:01:58'),
(16, 16, 7, NULL, NULL, '2015-12-22 15:01:58', '2015-12-22 15:01:58'),
(17, 16, 17, NULL, NULL, '2015-12-22 15:01:58', '2015-12-22 15:01:58'),
(20, 18, 12, NULL, NULL, '2015-12-22 15:01:58', '2015-12-22 15:01:58'),
(21, 18, 9, NULL, NULL, '2015-12-22 15:01:58', '2015-12-22 15:01:58'),
(22, 21, 20, NULL, NULL, '2015-12-22 15:02:08', '2015-12-22 15:02:08'),
(23, 22, 11, NULL, NULL, '2015-12-22 15:02:08', '2015-12-22 15:02:08'),
(24, 23, 14, NULL, NULL, '2015-12-22 15:02:08', '2015-12-22 15:02:08'),
(25, 23, 15, NULL, NULL, '2015-12-22 15:02:08', '2015-12-22 15:02:08'),
(26, 24, 7, NULL, NULL, '2015-12-22 15:02:08', '2015-12-22 15:02:08'),
(27, 24, 17, NULL, NULL, '2015-12-22 15:02:08', '2015-12-22 15:02:08'),
(28, 25, 24, NULL, NULL, '2015-12-22 15:02:08', '2015-12-22 15:02:08'),
(33, 27, 20, NULL, NULL, '2015-12-22 15:02:17', '2015-12-22 15:02:17'),
(34, 28, 11, NULL, NULL, '2015-12-22 15:02:17', '2015-12-22 15:02:17'),
(35, 29, 14, NULL, NULL, '2015-12-22 15:02:17', '2015-12-22 15:02:17'),
(36, 29, 15, NULL, NULL, '2015-12-22 15:02:17', '2015-12-22 15:02:17'),
(37, 30, 7, NULL, NULL, '2015-12-22 15:02:17', '2015-12-22 15:02:17'),
(38, 30, 17, NULL, NULL, '2015-12-22 15:02:17', '2015-12-22 15:02:17'),
(39, 32, 24, NULL, NULL, '2015-12-22 15:02:17', '2015-12-22 15:02:17'),
(40, 31, 12, NULL, NULL, '2015-12-22 15:02:17', '2015-12-22 15:02:17'),
(41, 31, 12, NULL, NULL, '2015-12-22 15:02:17', '2015-12-22 15:02:17'),
(42, 31, 9, NULL, NULL, '2015-12-22 15:02:17', '2015-12-22 15:02:17'),
(43, 33, 20, NULL, NULL, '2015-12-22 15:03:37', '2015-12-22 15:03:37'),
(44, 34, 11, NULL, NULL, '2015-12-22 15:03:37', '2015-12-22 15:03:37'),
(45, 35, 14, NULL, NULL, '2015-12-22 15:03:37', '2015-12-22 15:03:37'),
(46, 35, 15, NULL, NULL, '2015-12-22 15:03:37', '2015-12-22 15:03:37'),
(47, 36, 7, NULL, NULL, '2015-12-22 15:03:37', '2015-12-22 15:03:37'),
(48, 36, 17, NULL, NULL, '2015-12-22 15:03:37', '2015-12-22 15:03:37'),
(49, 37, 24, NULL, NULL, '2015-12-22 15:03:37', '2015-12-22 15:03:37'),
(52, 39, 20, NULL, NULL, '2015-12-22 15:06:17', '2015-12-22 15:06:17'),
(53, 39, 38, NULL, NULL, '2015-12-22 15:06:17', '2015-12-22 15:06:17'),
(54, 40, 11, NULL, NULL, '2015-12-22 15:06:17', '2015-12-22 15:06:17'),
(55, 41, 14, NULL, NULL, '2015-12-22 15:06:17', '2015-12-22 15:06:17'),
(56, 42, 7, NULL, NULL, '2015-12-22 15:06:17', '2015-12-22 15:06:17'),
(57, 42, 17, NULL, NULL, '2015-12-22 15:06:17', '2015-12-22 15:06:17'),
(59, 43, 24, NULL, NULL, '2015-12-22 15:06:17', '2015-12-22 15:06:17'),
(60, 44, 12, NULL, NULL, '2015-12-22 15:06:17', '2015-12-22 15:06:17'),
(62, 45, 37, NULL, NULL, '2015-12-22 15:06:18', '2015-12-22 15:06:18'),
(63, 45, 36, NULL, NULL, '2015-12-22 15:06:18', '2015-12-22 15:06:18'),
(64, 46, 20, NULL, NULL, '2015-12-22 15:06:43', '2015-12-22 15:06:43'),
(65, 47, 11, NULL, NULL, '2015-12-22 15:06:43', '2015-12-22 15:06:43'),
(66, 48, 14, NULL, NULL, '2015-12-22 15:06:43', '2015-12-22 15:06:43'),
(67, 49, 7, NULL, NULL, '2015-12-22 15:06:43', '2015-12-22 15:06:43'),
(68, 49, 17, NULL, NULL, '2015-12-22 15:06:43', '2015-12-22 15:06:43'),
(69, 50, 24, NULL, NULL, '2015-12-22 15:06:43', '2015-12-22 15:06:43'),
(70, 51, 12, NULL, NULL, '2015-12-22 15:06:43', '2015-12-22 15:06:43'),
(71, 51, 9, NULL, NULL, '2015-12-22 15:06:43', '2015-12-22 15:06:43'),
(72, 8, 20, NULL, NULL, '2015-12-22 15:06:50', '2015-12-22 15:06:50'),
(73, 7, 11, NULL, NULL, '2015-12-22 15:06:50', '2015-12-22 15:06:50'),
(74, 9, 14, NULL, NULL, '2015-12-22 15:06:50', '2015-12-22 15:06:50'),
(75, 10, 7, NULL, NULL, '2015-12-22 15:06:50', '2015-12-22 15:06:50'),
(77, 10, 17, NULL, NULL, '2015-12-22 15:06:50', '2015-12-22 15:06:50'),
(80, 12, 12, NULL, NULL, '2015-12-22 15:06:50', '2015-12-22 15:06:50'),
(81, 12, 9, NULL, NULL, '2015-12-22 15:06:50', '2015-12-22 15:06:50'),
(82, 52, 20, NULL, NULL, '2015-12-22 15:06:58', '2015-12-22 15:06:58'),
(83, 53, 11, NULL, NULL, '2015-12-22 15:06:58', '2015-12-22 15:06:58'),
(84, 54, 14, NULL, NULL, '2015-12-22 15:06:58', '2015-12-22 15:06:58'),
(85, 55, 7, NULL, NULL, '2015-12-22 15:06:58', '2015-12-22 15:06:58'),
(86, 55, 17, NULL, NULL, '2015-12-22 15:06:58', '2015-12-22 15:06:58'),
(87, 55, 18, NULL, NULL, '2015-12-22 15:06:58', '2015-12-22 15:06:58'),
(90, 56, 29, NULL, NULL, '2015-12-22 15:06:58', '2015-12-22 15:06:58'),
(91, 57, 12, NULL, NULL, '2015-12-22 15:06:58', '2015-12-22 15:06:58'),
(92, 57, 9, NULL, NULL, '2015-12-22 15:06:58', '2015-12-22 15:06:58'),
(93, 58, 20, NULL, NULL, '2015-12-22 15:07:05', '2015-12-22 15:07:05'),
(94, 59, 11, NULL, NULL, '2015-12-22 15:07:05', '2015-12-22 15:07:05'),
(96, 60, 14, NULL, NULL, '2015-12-22 15:07:05', '2015-12-22 15:07:05'),
(97, 61, 7, NULL, NULL, '2015-12-22 15:07:05', '2015-12-22 15:07:05'),
(98, 61, 17, NULL, NULL, '2015-12-22 15:07:05', '2015-12-22 15:07:05'),
(99, 62, 24, NULL, NULL, '2015-12-22 15:07:05', '2015-12-22 15:07:05'),
(100, 63, 12, NULL, NULL, '2015-12-22 15:07:05', '2015-12-22 15:07:05'),
(101, 63, 9, NULL, NULL, '2015-12-22 15:07:05', '2015-12-22 15:07:05'),
(102, 64, 20, NULL, NULL, '2015-12-22 15:07:13', '2015-12-22 15:07:13'),
(103, 65, 11, NULL, NULL, '2015-12-22 15:07:13', '2015-12-22 15:07:13'),
(104, 66, 14, NULL, NULL, '2015-12-22 15:07:13', '2015-12-22 15:07:13'),
(105, 67, 7, NULL, NULL, '2015-12-22 15:07:13', '2015-12-22 15:07:13'),
(109, 76, 20, NULL, NULL, '2015-12-22 15:07:43', '2015-12-22 15:07:43'),
(110, 77, 11, NULL, NULL, '2015-12-22 15:07:43', '2015-12-22 15:07:43'),
(111, 77, 12, NULL, NULL, '2015-12-22 15:07:43', '2015-12-22 15:07:43'),
(112, 77, 9, NULL, NULL, '2015-12-22 15:07:43', '2015-12-22 15:07:43'),
(113, 100, 20, NULL, NULL, '2015-12-22 15:07:52', '2015-12-22 15:07:52'),
(114, 101, 11, NULL, 'rectoria@institutodickens.edu.ar', '2017-06-14 13:45:14', '2015-12-22 15:07:52'),
(116, 101, 12, NULL, NULL, '2015-12-22 15:07:52', '2015-12-22 15:07:52'),
(117, 101, 12, NULL, NULL, '2015-12-22 15:07:52', '2015-12-22 15:07:52'),
(118, 102, 9, NULL, NULL, '2015-12-22 15:07:53', '2015-12-22 15:07:53'),
(119, 102, 9, NULL, NULL, '2015-12-22 15:07:53', '2015-12-22 15:07:53'),
(120, 91, 20, NULL, NULL, '2015-12-22 15:08:02', '2015-12-22 15:08:02'),
(121, 92, 11, NULL, NULL, '2015-12-22 15:08:02', '2015-12-22 15:08:02'),
(122, 94, 12, NULL, NULL, '2015-12-22 15:08:02', '2015-12-22 15:08:02'),
(123, 94, 9, NULL, NULL, '2015-12-22 15:08:02', '2015-12-22 15:08:02'),
(127, 78, 20, NULL, NULL, '2015-12-22 15:08:12', '2015-12-22 15:08:12'),
(128, 78, 38, NULL, NULL, '2015-12-22 15:08:12', '2015-12-22 15:08:12'),
(129, 79, 11, NULL, NULL, '2015-12-22 15:08:12', '2015-12-22 15:08:12'),
(130, 79, 12, NULL, NULL, '2015-12-22 15:08:12', '2015-12-22 15:08:12'),
(131, 80, 20, NULL, NULL, '2015-12-22 15:08:23', '2015-12-22 15:08:23'),
(132, 81, 11, NULL, NULL, '2015-12-22 15:08:23', '2015-12-22 15:08:23'),
(133, 82, 14, NULL, NULL, '2015-12-22 15:08:23', '2015-12-22 15:08:23'),
(134, 82, 15, NULL, NULL, '2015-12-22 15:08:23', '2015-12-22 15:08:23'),
(135, 83, 7, NULL, NULL, '2015-12-22 15:08:23', '2015-12-22 15:08:23'),
(136, 83, 17, NULL, NULL, '2015-12-22 15:08:23', '2015-12-22 15:08:23'),
(137, 84, 24, NULL, NULL, '2015-12-22 15:08:23', '2015-12-22 15:08:23'),
(138, 85, 12, NULL, NULL, '2015-12-22 15:08:23', '2015-12-22 15:08:23'),
(139, 85, 9, NULL, NULL, '2015-12-22 15:08:23', '2015-12-22 15:08:23'),
(140, 103, 20, NULL, NULL, '2015-12-22 15:08:31', '2015-12-22 15:08:31'),
(141, 104, 11, NULL, NULL, '2015-12-22 15:08:31', '2015-12-22 15:08:31'),
(142, 104, 12, NULL, NULL, '2015-12-22 15:08:31', '2015-12-22 15:08:31'),
(143, 104, 12, NULL, NULL, '2015-12-22 15:08:31', '2015-12-22 15:08:31'),
(144, 104, 12, NULL, NULL, '2015-12-22 15:08:31', '2015-12-22 15:08:31'),
(145, 86, 20, NULL, NULL, '2015-12-22 15:08:40', '2015-12-22 15:08:40'),
(146, 87, 11, NULL, NULL, '2015-12-22 15:08:40', '2015-12-22 15:08:40'),
(147, 88, 7, NULL, NULL, '2015-12-22 15:08:40', '2015-12-22 15:08:40'),
(148, 88, 17, NULL, NULL, '2015-12-22 15:08:40', '2015-12-22 15:08:40'),
(151, 90, 12, NULL, NULL, '2015-12-22 15:08:40', '2015-12-22 15:08:40'),
(152, 90, 12, NULL, NULL, '2015-12-22 15:08:40', '2015-12-22 15:08:40'),
(153, 90, 9, NULL, NULL, '2015-12-22 15:08:40', '2015-12-22 15:08:40'),
(154, 98, 20, NULL, NULL, '2015-12-22 15:08:50', '2015-12-22 15:08:50'),
(155, 99, 11, NULL, NULL, '2015-12-22 15:08:51', '2015-12-22 15:08:51'),
(156, 99, 12, NULL, NULL, '2015-12-22 15:08:51', '2015-12-22 15:08:51'),
(157, 99, 12, NULL, NULL, '2015-12-22 15:08:51', '2015-12-22 15:08:51'),
(158, 99, 12, NULL, NULL, '2015-12-22 15:08:51', '2015-12-22 15:08:51'),
(159, 99, 12, NULL, NULL, '2015-12-22 15:08:51', '2015-12-22 15:08:51'),
(160, 70, 20, NULL, NULL, '2015-12-22 15:09:02', '2015-12-22 15:09:02'),
(161, 71, 11, NULL, NULL, '2015-12-22 15:09:02', '2015-12-22 15:09:02'),
(163, 72, 14, NULL, NULL, '2015-12-22 15:09:02', '2015-12-22 15:09:02'),
(164, 72, 15, NULL, NULL, '2015-12-22 15:09:02', '2015-12-22 15:09:02'),
(165, 73, 7, NULL, NULL, '2015-12-22 15:09:02', '2015-12-22 15:09:02'),
(166, 73, 17, NULL, NULL, '2015-12-22 15:09:02', '2015-12-22 15:09:02'),
(167, 73, 17, NULL, NULL, '2015-12-22 15:09:02', '2015-12-22 15:09:02'),
(168, 74, 24, NULL, NULL, '2015-12-22 15:09:02', '2015-12-22 15:09:02'),
(169, 75, 12, NULL, NULL, '2015-12-22 15:09:02', '2015-12-22 15:09:02'),
(170, 75, 12, NULL, NULL, '2015-12-22 15:09:02', '2015-12-22 15:09:02'),
(171, 75, 9, NULL, NULL, '2015-12-22 15:09:02', '2015-12-22 15:09:02'),
(172, 95, 20, NULL, NULL, '2015-12-22 15:58:41', '2015-12-22 15:58:41'),
(173, 96, 11, NULL, NULL, '2015-12-22 15:58:41', '2015-12-22 15:58:41'),
(174, 97, 12, NULL, NULL, '2015-12-22 15:58:41', '2015-12-22 15:58:41'),
(175, 97, 9, NULL, NULL, '2015-12-22 15:58:41', '2015-12-22 15:58:41'),
(177, 13, 38, NULL, NULL, '2016-03-11 11:03:41', '2016-03-11 11:03:41'),
(178, 8, 38, NULL, NULL, '2016-03-11 11:05:36', '2016-03-11 11:05:36'),
(179, 86, 38, NULL, NULL, '2016-03-11 11:06:27', '2016-03-11 11:06:27'),
(180, 70, 38, NULL, NULL, '2016-03-11 11:07:15', '2016-03-11 11:07:15'),
(181, 80, 38, NULL, NULL, '2016-03-11 11:08:19', '2016-03-11 11:08:19'),
(182, 69, 9, NULL, NULL, '2016-03-11 11:11:04', '2016-03-11 11:11:04'),
(183, 69, 12, NULL, NULL, '2016-03-11 11:11:13', '2016-03-11 11:11:13'),
(184, 13, 38, NULL, NULL, '2016-08-04 11:08:27', '2016-08-04 11:08:27'),
(185, 13, 38, NULL, NULL, '2016-08-04 11:10:15', '2016-08-04 11:10:15'),
(186, 24, 18, NULL, NULL, '2016-09-08 16:50:55', '2016-09-08 16:50:55'),
(187, 23, 16, NULL, NULL, '2016-09-08 16:52:55', '2016-09-08 16:52:55'),
(188, 16, 18, NULL, NULL, '2016-09-22 16:00:01', '2016-09-22 16:00:01'),
(191, 17, 41, NULL, NULL, '2016-09-23 12:33:20', '2016-09-23 12:33:20'),
(192, 17, 42, NULL, NULL, '2016-09-23 12:33:24', '2016-09-23 12:33:24'),
(193, 41, 16, NULL, NULL, '2016-09-23 12:55:00', '2016-09-23 12:55:00'),
(194, 42, 18, NULL, NULL, '2016-09-23 12:55:12', '2016-09-23 12:55:12'),
(197, 105, 14, NULL, NULL, '2016-09-23 13:24:45', '2016-09-23 13:24:45'),
(198, 105, 15, NULL, NULL, '2016-09-23 13:24:59', '2016-09-23 13:24:59'),
(199, 105, 15, NULL, NULL, '2016-09-23 13:25:12', '2016-09-23 13:25:12'),
(200, 105, 16, NULL, NULL, '2016-09-23 13:25:33', '2016-09-23 13:25:33'),
(201, 82, 16, NULL, NULL, '2016-09-29 09:33:54', '2016-09-29 09:33:54'),
(202, 83, 18, NULL, NULL, '2016-09-29 09:34:23', '2016-09-29 09:34:23'),
(203, 106, 21, NULL, NULL, '2016-09-29 09:35:07', '2016-09-29 09:35:07'),
(204, 106, 21, NULL, NULL, '2016-09-29 09:35:21', '2016-09-29 09:35:21'),
(205, 44, 43, NULL, NULL, '2016-12-21 09:51:09', '2016-12-21 09:51:09'),
(206, 44, 44, NULL, NULL, '2016-12-21 09:51:21', '2016-12-21 09:51:21'),
(209, 107, 45, NULL, NULL, '2017-03-20 13:53:22', '2017-03-20 13:53:22'),
(212, 108, 9, NULL, NULL, '2017-03-27 15:45:08', '2017-03-27 15:45:08'),
(213, 108, 12, NULL, NULL, '2017-03-27 15:46:08', '2017-03-27 15:46:08'),
(214, 108, 12, NULL, NULL, '2017-03-27 15:46:21', '2017-03-27 15:46:21'),
(215, 100, 38, NULL, NULL, '2017-05-03 10:25:55', '2017-05-03 10:25:55'),
(216, 46, 38, NULL, NULL, '2017-05-09 13:44:48', '2017-05-09 13:44:47'),
(217, 64, 38, NULL, NULL, '2017-11-02 15:42:36', '2017-11-02 15:42:36'),
(218, 1, 38, NULL, NULL, '2017-11-02 15:42:59', '2017-11-02 15:42:59'),
(219, 103, 38, NULL, NULL, '2017-11-02 15:43:27', '2017-11-02 15:43:27'),
(222, 33, 47, NULL, NULL, '2018-03-02 12:02:41', '2018-03-02 12:02:41'),
(223, 33, 48, NULL, NULL, '2018-03-02 12:02:46', '2018-03-02 12:02:46'),
(224, 97, 9, NULL, NULL, '2018-03-02 12:52:43', '2018-03-02 12:52:43'),
(225, 95, 38, NULL, NULL, '2018-03-02 12:55:34', '2018-03-02 12:55:34'),
(226, 5, 41, NULL, NULL, '2018-08-28 09:36:04', '2018-08-28 09:36:04'),
(227, 5, 42, NULL, NULL, '2018-08-28 09:36:11', '2018-08-28 09:36:11'),
(228, 11, 41, NULL, NULL, '2018-08-28 09:44:01', '2018-08-28 09:44:01'),
(229, 11, 42, NULL, NULL, '2018-08-28 09:44:05', '2018-08-28 09:44:05'),
(230, 56, 41, NULL, NULL, '2018-08-28 09:46:38', '2018-08-28 09:46:38'),
(231, 56, 42, NULL, NULL, '2018-08-28 09:46:42', '2018-08-28 09:46:42'),
(233, 68, 41, NULL, NULL, '2018-08-28 09:51:05', '2018-08-28 09:51:05'),
(234, 68, 42, NULL, NULL, '2018-08-28 09:51:09', '2018-08-28 09:51:09'),
(235, 89, 42, NULL, NULL, '2018-08-28 09:53:20', '2018-08-28 09:53:20'),
(236, 89, 41, NULL, NULL, '2018-08-28 09:53:23', '2018-08-28 09:53:23'),
(237, 26, 12, NULL, NULL, '2018-08-28 12:17:43', '2018-08-28 12:17:43'),
(239, 107, 40, NULL, NULL, '2018-08-28 12:23:08', '2018-08-28 12:23:08'),
(240, 30, 18, NULL, NULL, '2018-08-28 12:26:17', '2018-08-28 12:26:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `portada`
--

DROP TABLE IF EXISTS `portada`;
CREATE TABLE IF NOT EXISTS `portada` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tabla` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `actualizado` datetime NOT NULL,
  `creado` datetime NOT NULL,
  `url` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `etiqueta` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=44 ;

--
-- Volcar la base de datos para la tabla `portada`
--

INSERT INTO `portada` (`id`, `tabla`, `descripcion`, `actualizado`, `creado`, `url`, `etiqueta`) VALUES
(2, 'Barrio', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'backend_barrio', 'Barrios'),
(4, 'Cgp', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'backend_cgp', 'CGP'),
(5, 'DistritoEscolar', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'backend_distrito_escolar', 'Distritos Escolares'),
(6, 'Domicilio', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'backend_domicilio', 'Domicilios de los establecimientos'),
(7, 'DomicilioLocalizacion ', 'Que domicilio de que edificio se asocia a cada sede/anexo. ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'backend_domicilio_localizacion', 'Domicilio de los niveles en las sedes y en los anexos'),
(8, 'Especializacion', 'No implementado', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'backend_especializacion', 'Especializaciones'),
(9, 'Establecimiento', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'backend_establecimiento', 'Establecimientos'),
(10, 'EstablecimientoEdificio', 'Con esta página se establece que establecimientos funcionan en cuales edificios, tanto sedes como anexos', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'backend_establecimiento_edificio', 'Sede y anexos'),
(11, 'EstadoCarrera', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'backend_estadocarrera', 'Estado de una carrera'),
(14, 'Edificio', 'En un edificio pueden funcionar más de un establecimiento. ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'backend_edificio', 'Edificios'),
(15, 'Glosario', 'Lista de términos utilizados en el sistema. ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'backend_glosario', 'Glosario'),
(16, 'GrupoEtario', 'Lista de años de las salas de Inicial.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'backend.grupo_etario', 'Grupos Etarios'),
(17, 'Localización', 'LOCALIZACION determina en que edificio (sede o anexo) del establecimiento funciona cada uno de sus niveles (o unidades educativas).', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'backend_localizacion', 'Localización de los niveles en sedes y anexos'),
(18, 'Cohorte', 'Se cargan los datos de matrícula de cada carrera de cada establecimiento.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'backend_cohorte', 'Matrícula'),
(19, 'Modalidad', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'backend_modalidad', 'Modalidades'),
(20, 'Nivel', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'backend_nivel', 'Niveles'),
(21, 'Norma', 'Son las normas referentes a las carreras y las especializaciones.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'backend_norma_buscar', 'Normas'),
(22, 'OfertaEducativa', 'Que se puede estudiar en cada nivel', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'backend_ofertaeducativa', 'Oferta educativa'),
(23, 'Orientacion', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'en_desarrollo', 'Orientaciones de carreras'),
(24, 'Pais', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'en_desarrollo', 'País'),
(25, 'Sector', 'Sector estatal o privado.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'en_desarrollo', 'Sectores'),
(28, 'TipoNorma', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'backend_tiponorma', 'Tipo de norma'),
(29, 'TipoEstablecimiento', 'Refiere a instituto, escuela, etc', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'en_desarrollo', 'Tipo de establecimiento'),
(30, 'Turno', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'en_desarrollo', 'Turnos'),
(31, 'UnidadEducativa', 'Queda determinada por el nivel y la modalidad de enseñanza (en nuestros casos siempre modalidad común. ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'backend_unidad_educativa', 'Unidades Educativas de los establecimientos'),
(32, 'UnidadOferta', 'Detalle de cada tipo de oferta educativa asociada a una sede o anexo de un establecimiento determinado', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'backend_unidadoferta', 'Oferta en cada unidad educativa'),
(33, 'Vecino', 'Con quien se comparte edificio', '2014-02-27 17:03:24', '2014-02-27 17:03:24', 'vecino', 'Vecinos'),
(35, 'TítuloCarrera', 'Título asociado a una carrera', '2015-05-21 00:00:00', '2015-05-21 00:00:00', 'backend_titulocarrera_buscar', 'Títulos de las carreras'),
(36, 'Recursos', 'Laboratorios, bibiotecas, etc', '2014-04-22 00:00:00', '2014-04-22 00:00:00', 'recurso', 'Laboratorios y centros de recursos'),
(37, 'EstablecimientoRecurso', 'Relación entre establecimiento y los recursos que tiene', '2014-04-22 00:00:00', '2014-04-22 00:00:00', 'establecimiento_recurso', 'Laboratorios y centros de recursos de cada establecimiento'),
(39, 'OrigenHora', 'Si un lab/centro se financia por POF u horas cátedra', '2014-05-23 10:10:10', '2014-05-23 10:10:10', 'en_desarrollo', 'Tipo de hora de financiamiento'),
(40, 'Inspector', 'Inspector de infraestructura', '2015-06-17 13:57:56', '2015-06-17 13:57:00', 'backend_inspector', 'Inspectores de infraestructura'),
(41, 'MediaOrientaciones', 'Titulos de la nueva escuela secundaria', '2015-07-28 12:45:40', '2015-07-28 12:45:40', 'backend.mediaorientaciones.buscar', 'Orientaciones de la NES'),
(42, 'Frase', 'Frases célebres del equipo', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'backend_frase', 'Frases célebres'),
(43, 'Disciplina', 'Disciplina a la que corresponde cada carrera', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'backend.disciplina.buscar', 'Disciplinas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `primario`
--

DROP TABLE IF EXISTS `primario`;
CREATE TABLE IF NOT EXISTS `primario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `duracion` varchar(255) NOT NULL,
  `oferta_educativa_id` int(11) DEFAULT NULL,
  `descripcion` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_4101E2EA15CE31DF` (`oferta_educativa_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcar la base de datos para la tabla `primario`
--

INSERT INTO `primario` (`id`, `duracion`, `oferta_educativa_id`, `descripcion`) VALUES
(3, '7 años', 85, 'Primaria común');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `primario_x`
--

DROP TABLE IF EXISTS `primario_x`;
CREATE TABLE IF NOT EXISTS `primario_x` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unidad_oferta_id` int(11) DEFAULT NULL,
  `matricula` int(11) DEFAULT NULL,
  `actualizado` datetime NOT NULL,
  `creado` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_C8B17359D1F42FF` (`unidad_oferta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `primario_x`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincia`
--

DROP TABLE IF EXISTS `provincia`;
CREATE TABLE IF NOT EXISTS `provincia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(4) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `orden` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Volcar la base de datos para la tabla `provincia`
--

INSERT INTO `provincia` (`id`, `codigo`, `descripcion`, `orden`) VALUES
(19, 'CABA', 'CABA', 1),
(20, 'CBA', 'Córdoba', 2),
(21, 'MSN', 'Misiones', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recurso`
--

DROP TABLE IF EXISTS `recurso`;
CREATE TABLE IF NOT EXISTS `recurso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `orden` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=16 ;

--
-- Volcar la base de datos para la tabla `recurso`
--

INSERT INTO `recurso` (`id`, `codigo`, `descripcion`, `orden`) VALUES
(1, 'BIB', 'Biblioteca', 0),
(2, 'CDC', 'Centro de documentación', 0),
(3, 'LIF', 'Laboratorio de Informática', 0),
(4, 'LCN', 'Laboratorio de Ciencia Naturales', 0),
(5, 'LIF', 'Laboratorio de Humanidades', 0),
(6, 'JUE', 'Juegoteca/Ludoteca', 0),
(7, 'CRD', 'Centro de recursos didácticos', 0),
(8, 'LID', 'Laboratorio de idiomas', 0),
(9, 'LBI', 'Laboratorio de biología', 0),
(10, 'LFQ', 'Lab físico-química', 1),
(11, 'LFI', 'Laboratorio de física', 1),
(12, 'LQU', 'Laboratorio de química', 1),
(13, 'LFI', 'Laboratorio de fisiología', 10),
(14, 'DIN', 'Departamento de investigación', 11),
(15, 'LPE', 'Laboratorio de Pedagogía', 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resumen_media`
--

DROP TABLE IF EXISTS `resumen_media`;
CREATE TABLE IF NOT EXISTS `resumen_media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cargo` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `establecimiento` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cargo_vacante` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha_iniciacion` date DEFAULT NULL,
  `fecha_terminacion` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cantidad_horas` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug_cargo` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cantidad_horas_string` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `horario_lunes` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `horario_martes` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `horario_miercoles` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `horario_jueves` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `horario_viernes` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fila` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1056 ;

--
-- Volcar la base de datos para la tabla `resumen_media`
--

INSERT INTO `resumen_media` (`id`, `numero`, `fecha`, `cargo`, `establecimiento`, `cargo_vacante`, `fecha_iniciacion`, `fecha_terminacion`, `cantidad_horas`, `slug_cargo`, `cantidad_horas_string`, `horario_lunes`, `horario_martes`, `horario_miercoles`, `horario_jueves`, `horario_viernes`, `fila`) VALUES
(1045, 'ACTO PÚBLICO Nº 18', '11/07/14', 'JEFE DE PRECEPTORES', 'ENS Nº 01 "Pte. R. Sáenz Peña"', 'Jefa de Preceptores', '2014-07-03', NULL, '24', 'jefe-de-preceptores', '24', '7.30hs a 12.20hs', '7.30hs a 12.15hs', '7.30hs a 12.20hs', '', '7.30hs a 12.15hs', 14),
(1046, 'ACTO PÚBLICO Nº 18', '11/07/14', 'JEFE DE PRECEPTORES', 'ENS Nº 09 "D. Faustino Sarmiento"', 'jefe de preceptores', '2014-06-17', NULL, '', 'jefe-de-preceptores', '', '13,15/18,05', '13,15/18,05', '13,15/18,05', '', '13,15/18,05', 26),
(1047, 'ACTO PÚBLICO Nº 18', '11/07/14', 'JEFE DE PRECEPTORES', 'B.O.A. Nº 4 "XUL SOLAR"', 'jefe de Preceptores', '2013-10-15', NULL, '', 'jefe-de-preceptores', '', '18:27 a 23:15', '18:27 a 23:15', '18:27 a 23:15', '', '18:27 a 23:15', 38),
(1048, 'ACTO PÚBLICO Nº 18', '11/07/14', 'JEFE DE PRECEPTORES', 'B.O.A.   Nº 1 "ANTONIO BERNI"', 'Jefe de Preceptores', '2014-04-08', NULL, '', 'jefe-de-preceptores', '', '18:27 a 23:15', '18:27 a 23:15', '18:27 a 23:15', '', '18:27 a 23:15', 63),
(1049, 'ACTO PÚBLICO Nº 18', '11/07/14', 'SUB-JEFE DE PRECEPTORES', 'ESCUELA E.B.A "LOLA MORA"', 'Subjefa de Preceptores', '2014-03-17', NULL, '', 'sub-jefe-de-preceptores', '', '18:00 a 22:48', '18:00 a 22:48', '18:00 a 22:48', '', '18:00 a 22:48', 79),
(1050, 'ACTO PÚBLICO Nº 18', '11/07/14', 'SUB-JEFE DE PRECEPTORES', 'ENS LV "S. B. Spangenberg"', 'Sub Jefe de Preceptores', '2014-07-14', NULL, '', 'sub-jefe-de-preceptores', '', '12:10 a 17:00 hs.', '12:10 a 17:00 hs.', '12:10 a 17:00 hs.', '', '12:10 a 17:00 hs.', 92),
(1051, 'ACTO PÚBLICO Nº 18', '11/07/14', 'INGLES', 'ENS Nº08 "Julio Argentino Roca"', 'Inglés', '2014-06-24', NULL, '18', 'ingles', 'TP 03', '7,45 a 8,25       8,25 a 9,05       12,10 a 12,50     13,15 a 13,55     13,55 a 14,35     14,45 a 15', '7,45 a 8,25           8,25 a 9,05          9,15 a 9,55          9,55 a 10,35             11,25 a 12,', '', '', '7,45 a 8,25                 8,25 a 9,05                    9,15 a 9,55                9,55 a 10,35  ', 123),
(1052, 'ACTO PÚBLICO Nº 18', '11/07/14', 'INGLES', 'ENS Nº08 "Julio Argentino Roca"', 'Inglés', '2014-06-24', NULL, '12', 'ingles', 'TP 04', '9,15 a 9,55             9,55 a 10,35      10,45 a 11,25     11,25 a 12,05', '10,45 a 11,25       12,10 a 12,50      13,15 a 13,55      13,55 a 14,35      14,45 a 15,25', '', '', '13,15 a 13,55          13,55 a 14,35               14,45 a 15,25', 136),
(1053, 'ACTO PÚBLICO Nº 18', '11/07/14', 'MATEMÁTICA', 'ENS Nº 09 "D. Faustino Sarmiento"', 'MATEMATICA', '2014-06-17', NULL, '5', 'matemtica', '5', '', '', '16,20/17               17/17,40', '', '15,30/16,10          16,20/17', 177),
(1054, 'ACTO PÚBLICO Nº 18', '11/07/14', 'GEOGRAFÍA', 'ENS Nº 05 "Gral. Martín Miguel de Güemes"', 'Geografía', '2014-06-24', NULL, '24', 'geografa', 'TP 02 (19 hs. de clase) 05 extraclase)', '07.45 a 09.05 09.20 a 10.40 10.50 a 13.30', '07.45 a 09.05 y de.10.50 a 13.30', '07.45 a 09.05- de 10.50 a 12.10', '', '10.00 a 10.40 y de 13.00 a 13.40', 361),
(1055, 'ACTO PÚBLICO Nº 18', '11/07/14', 'GEOGRAFÍA', 'ENS Nº 05 "Gral. Martín Miguel de Güemes"', 'Geografía', '2014-06-24', NULL, '3', 'geografa', '3', '', '09.20 a 10.00', '', '', '10.50 a 12.10', 374);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sala`
--

DROP TABLE IF EXISTS `sala`;
CREATE TABLE IF NOT EXISTS `sala` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inicial_x_id` int(11) DEFAULT NULL,
  `grupo_etario_id` int(11) DEFAULT NULL,
  `q_secciones` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_E226041C36ED91FF` (`grupo_etario_id`),
  KEY `IDX_E226041C940B40B8` (`inicial_x_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=52 ;

--
-- Volcar la base de datos para la tabla `sala`
--

INSERT INTO `sala` (`id`, `inicial_x_id`, `grupo_etario_id`, `q_secciones`) VALUES
(1, 1, 4, 2),
(2, 1, 3, 2),
(3, 3, 5, 3),
(4, 3, 4, 3),
(5, 3, 3, 3),
(8, 4, 6, NULL),
(9, 4, 5, NULL),
(10, 4, 4, NULL),
(11, 4, 3, NULL),
(12, 13, 6, NULL),
(13, 13, 5, NULL),
(14, 13, 4, NULL),
(15, 13, 3, NULL),
(16, 5, 5, NULL),
(17, 5, 4, NULL),
(18, 5, 3, NULL),
(19, 6, 6, NULL),
(20, 6, 5, NULL),
(21, 6, 4, NULL),
(22, 6, 3, NULL),
(23, 7, 6, NULL),
(24, 7, 5, NULL),
(25, 7, 4, NULL),
(26, 7, 3, NULL),
(27, 2, 7, NULL),
(28, 2, 6, NULL),
(29, 2, 5, NULL),
(30, 2, 4, NULL),
(31, 8, 5, NULL),
(32, 8, 4, NULL),
(33, 8, 3, NULL),
(34, 9, 4, NULL),
(35, 9, 3, NULL),
(36, 10, 5, NULL),
(37, 10, 4, NULL),
(38, 10, 3, NULL),
(39, 11, 8, NULL),
(40, 11, 7, NULL),
(41, 11, 6, NULL),
(42, 11, 5, NULL),
(43, 11, 4, NULL),
(44, 11, 3, NULL),
(45, 12, 8, NULL),
(46, 12, 7, NULL),
(47, 12, 6, NULL),
(48, 12, 5, NULL),
(49, 12, 4, NULL),
(50, 12, 3, NULL),
(51, 2, 3, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sector`
--

DROP TABLE IF EXISTS `sector`;
CREATE TABLE IF NOT EXISTS `sector` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) DEFAULT NULL,
  `abreviatura` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Volcar la base de datos para la tabla `sector`
--

INSERT INTO `sector` (`id`, `descripcion`, `abreviatura`) VALUES
(22, 'Estatal', 'E'),
(23, 'Público', 'P'),
(24, 'Mixto', 'M');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secundario`
--

DROP TABLE IF EXISTS `secundario`;
CREATE TABLE IF NOT EXISTS `secundario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `oferta_educativa_id` int(11) DEFAULT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `titulo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duracion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_EBA5F50A15CE31DF` (`oferta_educativa_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcar la base de datos para la tabla `secundario`
--

INSERT INTO `secundario` (`id`, `oferta_educativa_id`, `nombre`, `titulo`, `duracion`) VALUES
(1, 148, 'Nes 5 años', 'ver orientaciones', '5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secundariox_orientacion`
--

DROP TABLE IF EXISTS `secundariox_orientacion`;
CREATE TABLE IF NOT EXISTS `secundariox_orientacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `secundariox_id` int(11) DEFAULT NULL,
  `orientacion_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_98FC28242ED5694E` (`secundariox_id`),
  KEY `IDX_98FC2824F73C956F` (`orientacion_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Volcar la base de datos para la tabla `secundariox_orientacion`
--

INSERT INTO `secundariox_orientacion` (`id`, `secundariox_id`, `orientacion_id`) VALUES
(1, 2, 9),
(2, 3, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secundario_x`
--

DROP TABLE IF EXISTS `secundario_x`;
CREATE TABLE IF NOT EXISTS `secundario_x` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `matricula` int(11) DEFAULT NULL,
  `actualizado` datetime NOT NULL,
  `creado` datetime NOT NULL,
  `anio_inicio` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Volcar la base de datos para la tabla `secundario_x`
--

INSERT INTO `secundario_x` (`id`, `matricula`, `actualizado`, `creado`, `anio_inicio`) VALUES
(2, NULL, '2015-08-03 10:21:50', '2015-08-03 10:21:17', 2015),
(3, NULL, '2017-06-01 16:05:53', '2017-06-01 16:05:41', 2015),
(4, NULL, '2018-06-19 09:00:25', '2018-06-19 09:00:25', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_especializacion`
--

DROP TABLE IF EXISTS `tipo_especializacion`;
CREATE TABLE IF NOT EXISTS `tipo_especializacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `orden` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Volcar la base de datos para la tabla `tipo_especializacion`
--

INSERT INTO `tipo_especializacion` (`id`, `codigo`, `descripcion`, `orden`) VALUES
(2, 'DIP', 'Diplomatura', 1),
(3, 'DIPSP', 'Diplomatura Superior', 2),
(4, 'ESP', 'Especialización Académica', 3),
(5, 'ESPSP', 'Especialización Docente de Nivel Superior', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_establecimiento`
--

DROP TABLE IF EXISTS `tipo_establecimiento`;
CREATE TABLE IF NOT EXISTS `tipo_establecimiento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(5) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `orden` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Volcar la base de datos para la tabla `tipo_establecimiento`
--

INSERT INTO `tipo_establecimiento` (`id`, `codigo`, `descripcion`, `orden`) VALUES
(1, 'ENS', 'Escuela Normal Superior', 1),
(2, 'IEdS', 'Instituto de Educación Superior', 2),
(3, 'IEnS', 'Instituto de Enseñanza Superior', 3),
(4, 'ISP', 'Instituto Superior del Profesorado', 4),
(5, 'ISEF', 'Instituto Superior de Educación Física', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_formacion`
--

DROP TABLE IF EXISTS `tipo_formacion`;
CREATE TABLE IF NOT EXISTS `tipo_formacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(2) DEFAULT NULL,
  `descripcion` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcar la base de datos para la tabla `tipo_formacion`
--

INSERT INTO `tipo_formacion` (`id`, `codigo`, `descripcion`) VALUES
(1, 'FD', 'Formación Docente'),
(2, 'FT', 'Formación Técnica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_instancia`
--

DROP TABLE IF EXISTS `tipo_instancia`;
CREATE TABLE IF NOT EXISTS `tipo_instancia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(3) NOT NULL,
  `descripcion` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Volcar la base de datos para la tabla `tipo_instancia`
--

INSERT INTO `tipo_instancia` (`id`, `codigo`, `descripcion`) VALUES
(25, 'Tal', 'Taller'),
(26, 'Mat', 'Materia'),
(27, 'Sem', 'Seminario'),
(28, 'Tcp', 'Trabajo de campo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_norma`
--

DROP TABLE IF EXISTS `tipo_norma`;
CREATE TABLE IF NOT EXISTS `tipo_norma` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(15) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Volcar la base de datos para la tabla `tipo_norma`
--

INSERT INTO `tipo_norma` (`id`, `codigo`, `descripcion`) VALUES
(1, 'RES/MEGC', 'Resolución Ministerial GCBA'),
(2, 'RECT', 'Rectificatoria'),
(3, 'RES/ME', 'Resolución Ministerio Nacional'),
(4, 'RES/SSGEYCP', 'Resolución SSGEYCP'),
(5, 'RES/SED', 'Resolución SED'),
(6, 'SEG', '?????'),
(7, 'RES/CF', 'Resolución del Consejo Federal'),
(8, 'RES/SSGECP', 'Resol. de Subse. Gest. E. y Coord. Pedag.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_trayecto`
--

DROP TABLE IF EXISTS `tipo_trayecto`;
CREATE TABLE IF NOT EXISTS `tipo_trayecto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(4) NOT NULL,
  `descripcion` varchar(150) NOT NULL,
  `orden` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;

--
-- Volcar la base de datos para la tabla `tipo_trayecto`
--

INSERT INTO `tipo_trayecto` (`id`, `codigo`, `descripcion`, `orden`) VALUES
(37, 'TFG', 'Trayecto de formación general', 1),
(38, 'TFE', 'Trayecto de formación específica', 2),
(39, 'TCPD', 'Trayecto de construcción de la práctica docente', 3),
(40, 'CFG', 'Campo de formación general', 4),
(41, 'CFE', 'Campo de formación específica', 5),
(42, 'CFPD', 'Campo de formación de la práctica docente', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `titulo_carrera`
--

DROP TABLE IF EXISTS `titulo_carrera`;
CREATE TABLE IF NOT EXISTS `titulo_carrera` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `carrera_id` int(11) DEFAULT NULL,
  `estado_id` int(11) DEFAULT NULL,
  `nombre` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `actualizado` datetime NOT NULL,
  `creado` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_955288BA3A909126` (`nombre`),
  KEY `IDX_955288BAC671B40F` (`carrera_id`),
  KEY `IDX_955288BA9F5A440B` (`estado_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Volcar la base de datos para la tabla `titulo_carrera`
--

INSERT INTO `titulo_carrera` (`id`, `carrera_id`, `estado_id`, `nombre`, `actualizado`, `creado`) VALUES
(3, NULL, 1, 'Profesor/a de Educación Superior en Educación Física', '2015-06-19 10:30:31', '2015-06-19 09:26:38'),
(4, 80, 1, 'Profesor/a de Educación Especial con orientación en Discapacidad Intelectual', '2015-06-19 10:02:35', '2015-06-19 10:02:24'),
(7, 99, 1, 'Profesor/a de Educación Superior en Educación Especial con orientación en Ciegos y Disminuidos Visuales', '2015-06-19 10:26:08', '2015-06-19 10:25:19'),
(8, 118, 1, 'Profesor/a de Educación Especial con orientación en Ciegos y Disminuidos Visuales', '2015-06-19 10:28:07', '2015-06-19 10:27:37'),
(9, 81, 1, 'Profesor/a de Educación Especial con orientación en Sordos e Hipoacúsicos', '2015-06-19 10:31:21', '2015-06-19 10:31:00'),
(10, NULL, 1, 'Profesor/a de Educación Superior en Física', '2015-07-28 13:47:04', '2015-06-19 10:43:26'),
(11, 105, 1, 'Profesor/a de Educación Secundaria en Informática', '2015-06-19 10:46:32', '2015-06-19 10:46:21'),
(13, 119, 1, 'Profesor/a de Educación Superior en Informática', '2015-06-19 10:51:12', '2015-06-19 10:51:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turno`
--

DROP TABLE IF EXISTS `turno`;
CREATE TABLE IF NOT EXISTS `turno` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(2) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `orden` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35 ;

--
-- Volcar la base de datos para la tabla `turno`
--

INSERT INTO `turno` (`id`, `codigo`, `descripcion`, `orden`) VALUES
(29, 'TM', 'Mañana', 1),
(30, 'TT', 'Tarde', 2),
(31, 'TV', 'Vespertino', 3),
(32, 'NA', 'No aplica', 6),
(33, 'JC', 'Jornada completa', 4),
(34, 'VS', 'Viernes noche y sábado', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidadoferta_turno`
--

DROP TABLE IF EXISTS `unidadoferta_turno`;
CREATE TABLE IF NOT EXISTS `unidadoferta_turno` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unidad_oferta_id` int(11) DEFAULT NULL,
  `turno_id` int(11) DEFAULT NULL,
  `cupo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_59229137D1F42FF` (`unidad_oferta_id`),
  KEY `IDX_5922913769C5211E` (`turno_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=612 ;

--
-- Volcar la base de datos para la tabla `unidadoferta_turno`
--

INSERT INTO `unidadoferta_turno` (`id`, `unidad_oferta_id`, `turno_id`, `cupo`) VALUES
(334, 261, 29, 100),
(335, 261, 30, 50),
(336, 261, 31, 100),
(343, 262, 31, 40),
(344, 279, 31, 40),
(345, 263, 29, 40),
(346, 263, 30, 40),
(347, 263, 31, 40),
(348, 280, 29, 40),
(349, 280, 30, 40),
(350, 280, 31, 40),
(351, 281, 29, 80),
(352, 281, 30, 150),
(353, 282, 29, 200),
(354, 282, 30, 50),
(355, 283, 29, 999),
(356, 283, 31, 999),
(357, 284, 29, 999),
(358, 284, 31, 999),
(359, 285, 30, 35),
(360, 285, 31, 45),
(361, 286, 30, 25),
(362, 286, 31, 25),
(365, 288, 29, 60),
(366, 288, 31, 60),
(367, 289, 29, 60),
(368, 289, 31, 60),
(369, 290, 31, 999),
(371, 291, 31, 999),
(372, 292, 30, 999),
(373, 292, 31, 999),
(374, 293, 30, 999),
(375, 293, 31, 999),
(376, 296, 31, 150),
(377, 297, 31, 150),
(378, 298, 29, 20),
(379, 298, 31, 20),
(380, 299, 31, 60),
(381, 300, 29, 60),
(382, 300, 31, 60),
(383, 301, 31, 60),
(384, 302, 31, 100),
(386, 305, 29, 20),
(389, 307, 29, 9999),
(390, 307, 30, 9999),
(391, 307, 31, 9999),
(392, 308, 29, 70),
(393, 308, 31, 15),
(395, 310, 31, 999),
(396, 311, 29, 9999),
(397, 311, 30, 9999),
(398, 311, 31, 9999),
(399, 312, 29, 70),
(400, 312, 31, 15),
(401, 314, 29, 120),
(402, 314, 30, 120),
(403, 314, 31, 120),
(407, 313, 32, 390),
(414, 320, 30, 9999),
(416, 322, 30, 15),
(417, 322, 31, 15),
(418, 323, 31, 999),
(419, 324, 30, 9999),
(420, 326, 29, 100),
(421, 326, 31, 100),
(422, 325, 31, 999),
(423, 327, 29, 25),
(424, 327, 31, 25),
(425, 328, 29, 100),
(426, 329, 29, 100),
(427, 329, 31, 100),
(428, 330, 29, 100),
(429, 331, 31, 100),
(430, 332, 29, 150),
(431, 332, 31, 250),
(432, 304, 34, 50),
(433, 333, 31, 50),
(435, 335, 29, 9999),
(436, 336, 29, 9999),
(440, 340, 31, 50),
(442, 271, 29, 200),
(443, 271, 30, 120),
(444, 342, 31, 50),
(445, 343, 29, 20),
(446, 344, 31, 999),
(447, 345, 29, 9999),
(448, 346, 29, 20),
(449, 347, 30, 9999),
(450, 348, 31, 999),
(451, 349, 29, 9999),
(452, 349, 31, 9999),
(453, 351, 30, 15),
(454, 351, 31, 30),
(455, 352, 31, 9999),
(460, 357, 29, 20),
(462, 359, 30, 9999),
(463, 359, 31, 9999),
(469, 362, 31, 999),
(472, 364, 32, 0),
(473, 365, 29, NULL),
(474, 365, 30, NULL),
(475, 368, 29, NULL),
(476, 368, 30, NULL),
(477, 369, 29, NULL),
(478, 369, 30, NULL),
(479, 370, 29, NULL),
(480, 370, 30, NULL),
(484, 378, 31, 30),
(485, 379, 31, 30),
(486, 380, 29, 25),
(487, 380, 30, 25),
(488, 380, 31, 25),
(489, 381, 31, 30),
(491, 294, 30, 60),
(492, 295, 30, 60),
(493, 384, 31, 999),
(494, 385, 31, 999),
(495, 388, 30, 9999),
(496, 389, 31, 9999),
(497, 390, 29, 9999),
(498, 390, 30, 9999),
(499, 390, 31, 9999),
(500, 391, 30, 9999),
(501, 391, 31, 9999),
(502, 392, 30, 9999),
(503, 392, 31, 9999),
(504, 393, 29, 9999),
(539, 407, 29, NULL),
(540, 407, 30, NULL),
(541, 407, 33, NULL),
(542, 419, 29, NULL),
(543, 419, 30, NULL),
(546, 386, 30, 9999),
(547, 386, 31, 9999),
(548, 377, 29, 9999),
(549, 387, 31, 9999),
(550, 433, 30, 999),
(551, 435, 29, NULL),
(552, 435, 30, NULL),
(553, 368, 33, NULL),
(554, 434, 29, NULL),
(555, 436, 29, NULL),
(556, 436, 30, NULL),
(557, 437, 29, NULL),
(558, 437, 30, NULL),
(559, 438, 29, NULL),
(560, 438, 30, NULL),
(561, 434, 30, NULL),
(562, 439, 29, NULL),
(563, 439, 30, NULL),
(564, 432, 29, NULL),
(565, 432, 30, NULL),
(566, 440, 29, NULL),
(567, 440, 30, NULL),
(568, 442, 33, NULL),
(569, 443, 33, NULL),
(570, 441, 29, NULL),
(571, 441, 30, NULL),
(572, 366, 29, NULL),
(573, 366, 30, NULL),
(574, 408, 29, NULL),
(575, 408, 30, NULL),
(576, 410, 29, NULL),
(577, 410, 33, NULL),
(578, 409, 30, NULL),
(579, 369, 33, NULL),
(580, 411, 29, NULL),
(581, 411, 30, NULL),
(582, 412, 29, NULL),
(583, 412, 30, NULL),
(584, 413, 30, NULL),
(585, 414, 30, NULL),
(586, 417, 30, NULL),
(587, 415, 30, NULL),
(588, 416, 33, NULL),
(589, 445, 29, NULL),
(590, 445, 30, NULL),
(591, 447, 31, 80),
(592, 446, 30, 9999),
(593, 448, 30, NULL),
(594, 352, 29, 999),
(595, 384, 29, 999),
(596, 385, 29, 999),
(597, 450, 31, NULL),
(598, 278, 29, 50),
(599, 278, 30, 50),
(600, 278, 31, 130),
(601, 451, 29, 999),
(602, 453, 29, 100),
(603, 453, 30, 50),
(604, 453, 31, 100),
(606, 456, 31, NULL),
(607, 458, 29, NULL),
(608, 458, 31, NULL),
(609, 459, 29, NULL),
(610, 459, 30, NULL),
(611, 460, 29, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidad_educativa`
--

DROP TABLE IF EXISTS `unidad_educativa`;
CREATE TABLE IF NOT EXISTS `unidad_educativa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `establecimiento_id` int(11) DEFAULT NULL,
  `nivel_id` int(11) DEFAULT NULL,
  `descripcion` varchar(30) DEFAULT NULL,
  `actualizado` datetime NOT NULL,
  `creado` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_27515E8071B61351` (`establecimiento_id`),
  KEY `IDX_27515E80DA3426AE` (`nivel_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=113 ;

--
-- Volcar la base de datos para la tabla `unidad_educativa`
--

INSERT INTO `unidad_educativa` (`id`, `establecimiento_id`, `nivel_id`, `descripcion`, `actualizado`, `creado`) VALUES
(43, 13, 29, 'inicial', '2014-04-07 14:24:55', '0000-00-00 00:00:00'),
(44, 13, 30, 'primaria', '2014-04-07 14:24:55', '0000-00-00 00:00:00'),
(45, 13, 31, 'media', '2014-04-07 14:24:55', '0000-00-00 00:00:00'),
(46, 13, 32, 'terciario', '2014-04-07 14:24:55', '0000-00-00 00:00:00'),
(47, 14, 30, NULL, '2014-09-22 13:52:22', '0000-00-00 00:00:00'),
(48, 14, 31, NULL, '2014-09-22 13:52:22', '0000-00-00 00:00:00'),
(49, 14, 32, NULL, '2014-09-22 13:52:22', '0000-00-00 00:00:00'),
(51, 15, 31, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 15, 30, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 17, 32, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 19, 29, NULL, '2014-03-07 10:04:02', '0000-00-00 00:00:00'),
(55, 19, 30, NULL, '2014-03-07 10:06:14', '0000-00-00 00:00:00'),
(56, 19, 31, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 19, 32, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 20, 29, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 20, 30, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 20, 31, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 20, 32, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 22, 29, NULL, '2014-03-07 11:36:07', '0000-00-00 00:00:00'),
(63, 22, 30, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 22, 31, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 22, 32, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 24, 29, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 24, 30, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 24, 31, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 24, 32, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 25, 29, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 25, 30, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 25, 31, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 25, 32, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 26, 29, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 26, 30, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 26, 31, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 26, 32, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 16, 32, NULL, '2014-09-22 13:52:38', '0000-00-00 00:00:00'),
(84, 27, 29, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 27, 30, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 27, 31, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 27, 32, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 28, 30, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 28, 31, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 28, 32, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 29, 29, 'Jardín Mitre', '2015-06-26 14:21:10', '0000-00-00 00:00:00'),
(92, 29, 32, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 30, 32, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 31, 32, 'terciario romera', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 32, 32, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 21, 29, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 21, 30, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 21, 31, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 21, 32, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 18, 29, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 18, 30, NULL, '2014-03-07 09:25:58', '0000-00-00 00:00:00'),
(102, 18, 31, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 18, 32, NULL, '2014-03-07 09:24:28', '0000-00-00 00:00:00'),
(104, 23, 29, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 23, 30, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 23, 31, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 23, 32, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 14, 29, NULL, '2014-09-22 13:52:22', '0000-00-00 00:00:00'),
(109, 33, 32, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 15, 32, 'turnos chequeados', '2014-03-05 11:37:35', '0000-00-00 00:00:00'),
(112, 15, 29, 'creado en 2014', '2015-05-27 13:04:16', '2015-05-27 13:04:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidad_oferta`
--

DROP TABLE IF EXISTS `unidad_oferta`;
CREATE TABLE IF NOT EXISTS `unidad_oferta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `oferta_educativa_id` int(11) DEFAULT NULL,
  `creado` datetime NOT NULL,
  `actualizado` datetime NOT NULL,
  `localizacion_id` int(11) DEFAULT NULL,
  `inicial_id` int(11) DEFAULT NULL,
  `tipo` varchar(20) NOT NULL,
  `secundario_id` int(11) DEFAULT NULL,
  `has_examen` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_95C6F11DA4A10292` (`secundario_id`),
  UNIQUE KEY `UNIQ_95C6F11D4C7AA4E4` (`inicial_id`),
  KEY `IDX_95C6F11D15CE31DF` (`oferta_educativa_id`),
  KEY `IDX_95C6F11DC851F487` (`localizacion_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=461 ;

--
-- Volcar la base de datos para la tabla `unidad_oferta`
--

INSERT INTO `unidad_oferta` (`id`, `oferta_educativa_id`, `creado`, `actualizado`, `localizacion_id`, `inicial_id`, `tipo`, `secundario_id`, `has_examen`) VALUES
(261, 86, '2015-05-07 14:08:49', '2015-06-12 09:12:13', 39, NULL, 'Carrera', NULL, NULL),
(262, 86, '2015-05-07 14:08:51', '2015-06-12 09:12:13', 97, NULL, 'Carrera', NULL, NULL),
(263, 86, '2015-05-07 14:08:53', '2015-06-12 09:12:13', 88, NULL, 'Carrera', NULL, NULL),
(271, 86, '2015-05-07 14:09:25', '2015-06-12 09:12:13', 80, NULL, 'Carrera', NULL, NULL),
(278, 87, '2015-05-07 14:20:15', '2015-06-12 09:12:13', 98, NULL, 'Carrera', NULL, NULL),
(279, 87, '2015-05-07 14:21:35', '2015-06-12 09:12:13', 97, NULL, 'Carrera', NULL, NULL),
(280, 87, '2015-05-07 14:21:37', '2015-06-12 09:12:13', 88, NULL, 'Carrera', NULL, NULL),
(281, 86, '2015-05-07 14:23:25', '2015-06-12 09:12:13', 49, NULL, 'Carrera', NULL, NULL),
(282, 87, '2015-05-07 14:23:28', '2015-06-12 09:12:13', 49, NULL, 'Carrera', NULL, NULL),
(283, 86, '2015-05-07 14:25:28', '2015-06-12 09:12:13', 53, NULL, 'Carrera', NULL, NULL),
(284, 87, '2015-05-07 14:25:32', '2015-06-12 09:12:13', 53, NULL, 'Carrera', NULL, NULL),
(285, 86, '2015-05-07 14:26:35', '2015-06-12 09:12:13', 94, NULL, 'Carrera', NULL, NULL),
(286, 6, '2015-05-07 14:27:56', '2015-06-12 09:12:13', 94, NULL, 'Carrera', NULL, NULL),
(288, 87, '2015-05-07 14:30:11', '2015-06-12 09:12:13', 57, NULL, 'Carrera', NULL, NULL),
(289, 86, '2015-05-07 14:30:14', '2015-06-12 09:12:13', 57, NULL, 'Carrera', NULL, NULL),
(290, 86, '2015-05-07 14:30:57', '2015-06-12 09:12:13', 42, NULL, 'Carrera', NULL, NULL),
(291, 87, '2015-05-07 14:31:34', '2015-06-12 09:12:13', 42, NULL, 'Carrera', NULL, NULL),
(292, 86, '2015-05-07 14:32:26', '2015-06-12 09:12:13', 61, NULL, 'Carrera', NULL, NULL),
(293, 87, '2015-05-07 14:32:29', '2015-06-12 09:12:13', 61, NULL, 'Carrera', NULL, NULL),
(294, 87, '2015-05-07 14:35:28', '2015-06-12 09:12:13', 102, NULL, 'Carrera', NULL, NULL),
(295, 86, '2015-05-07 14:35:30', '2015-06-12 09:12:13', 102, NULL, 'Carrera', NULL, NULL),
(296, 86, '2015-05-07 14:35:57', '2015-06-12 09:12:13', 66, NULL, 'Carrera', NULL, NULL),
(297, 87, '2015-05-07 14:36:00', '2015-06-12 09:12:13', 66, NULL, 'Carrera', NULL, NULL),
(298, 106, '2015-05-07 14:37:13', '2015-12-22 16:53:54', 70, NULL, 'Carrera', NULL, 1),
(299, 110, '2015-05-07 14:40:40', '2015-12-22 16:53:41', 70, NULL, 'Carrera', NULL, 1),
(300, 121, '2015-05-07 14:42:04', '2015-12-22 16:53:44', 70, NULL, 'Carrera', NULL, 1),
(301, 125, '2015-05-07 14:44:15', '2015-12-22 16:53:46', 70, NULL, 'Carrera', NULL, 1),
(302, 102, '2015-05-07 14:51:47', '2015-06-12 09:12:13', 71, NULL, 'Carrera', NULL, NULL),
(304, 41, '2015-05-07 14:54:08', '2015-06-12 09:12:13', 94, NULL, 'Carrera', NULL, NULL),
(305, 89, '2015-05-07 14:56:19', '2015-12-22 16:54:43', 78, NULL, 'Carrera', NULL, 1),
(307, 121, '2015-05-07 14:59:22', '2015-12-22 16:28:04', 96, NULL, 'Carrera', NULL, 1),
(308, 121, '2015-05-07 14:59:28', '2015-12-22 16:54:46', 78, NULL, 'Carrera', NULL, 1),
(310, 116, '2015-05-07 15:01:46', '2015-06-12 09:12:13', 45, NULL, 'Carrera', NULL, NULL),
(311, 106, '2015-05-07 15:04:27', '2015-12-22 16:52:40', 96, NULL, 'Carrera', NULL, 1),
(312, 106, '2015-05-07 15:04:33', '2015-12-22 16:54:54', 78, NULL, 'Carrera', NULL, 1),
(313, 101, '2015-05-07 15:06:22', '2015-12-22 16:53:20', 83, NULL, 'Carrera', NULL, 1),
(314, 101, '2015-05-07 15:06:27', '2015-12-22 16:52:57', 84, NULL, 'Carrera', NULL, 1),
(320, 122, '2015-05-07 15:12:38', '2015-12-23 08:48:04', 96, NULL, 'Carrera', NULL, 1),
(322, 125, '2015-05-07 15:14:55', '2015-12-22 16:54:56', 78, NULL, 'Carrera', NULL, 1),
(323, 113, '2015-05-07 15:16:18', '2015-06-12 09:12:13', 45, NULL, 'Carrera', NULL, NULL),
(324, 112, '2015-05-07 15:17:13', '2015-06-12 09:12:13', 96, NULL, 'Carrera', NULL, NULL),
(325, 108, '2015-05-07 15:18:40', '2015-06-12 09:12:13', 45, NULL, 'Carrera', NULL, NULL),
(326, 108, '2015-05-07 15:18:45', '2015-06-12 09:12:13', 71, NULL, 'Carrera', NULL, NULL),
(327, 128, '2015-05-07 15:39:34', '2015-06-12 09:12:13', 94, NULL, 'Carrera', NULL, NULL),
(328, 103, '2015-05-13 09:17:41', '2015-06-12 09:12:13', 71, NULL, 'Carrera', NULL, NULL),
(329, 105, '2015-05-13 09:19:37', '2015-06-12 09:12:13', 71, NULL, 'Carrera', NULL, NULL),
(330, 109, '2015-05-13 09:20:41', '2015-06-12 09:12:13', 71, NULL, 'Carrera', NULL, NULL),
(331, 111, '2015-05-13 09:21:27', '2015-06-12 09:12:13', 71, NULL, 'Carrera', NULL, NULL),
(332, 49, '2015-05-13 09:22:03', '2015-10-22 13:04:56', 71, NULL, 'Carrera', NULL, NULL),
(333, 129, '2015-05-13 14:53:54', '2015-06-12 09:12:13', 75, NULL, 'Carrera', NULL, NULL),
(335, 92, '2015-05-14 14:09:16', '2015-06-12 09:12:13', 96, NULL, 'Carrera', NULL, NULL),
(336, 93, '2015-05-14 14:10:18', '2015-06-12 09:12:13', 96, NULL, 'Carrera', NULL, NULL),
(340, 86, '2015-05-14 14:13:43', '2015-06-12 09:12:13', 75, NULL, 'Carrera', NULL, NULL),
(342, 87, '2015-05-14 14:16:25', '2015-06-12 09:12:13', 75, NULL, 'Carrera', NULL, NULL),
(343, 100, '2015-05-14 14:17:30', '2015-12-22 16:54:57', 78, NULL, 'Carrera', NULL, 1),
(344, 103, '2015-05-14 14:19:09', '2015-06-12 09:12:13', 45, NULL, 'Carrera', NULL, NULL),
(345, 103, '2015-05-14 14:19:30', '2015-06-12 09:12:13', 96, NULL, 'Carrera', NULL, NULL),
(346, 104, '2015-05-14 14:20:23', '2015-12-22 16:55:06', 78, NULL, 'Carrera', NULL, 1),
(347, 107, '2015-05-14 14:22:02', '2015-12-23 08:47:07', 96, NULL, 'Carrera', NULL, 1),
(348, 109, '2015-05-14 14:23:15', '2015-06-12 09:12:13', 45, NULL, 'Carrera', NULL, NULL),
(349, 109, '2015-05-14 14:23:42', '2015-06-12 09:12:13', 96, NULL, 'Carrera', NULL, NULL),
(351, 110, '2015-05-14 14:24:42', '2015-12-22 16:55:10', 78, NULL, 'Carrera', NULL, 1),
(352, 114, '2015-05-14 14:26:19', '2016-10-19 16:34:27', 81, NULL, 'Carrera', NULL, 0),
(357, 117, '2015-05-14 14:29:10', '2015-12-22 16:55:13', 78, NULL, 'Carrera', NULL, 1),
(359, 118, '2015-05-14 14:30:25', '2015-06-12 09:12:13', 96, NULL, 'Carrera', NULL, NULL),
(362, 123, '2015-05-14 14:33:01', '2015-06-12 09:12:13', 45, NULL, 'Carrera', NULL, NULL),
(364, 57, '2015-05-14 14:35:01', '2015-06-12 09:12:13', 45, NULL, 'Carrera', NULL, NULL),
(365, 84, '2015-05-27 13:05:31', '2015-08-28 15:08:17', 103, 1, 'Inicial', NULL, NULL),
(366, 85, '2015-05-27 13:13:27', '2015-06-12 09:12:13', 44, NULL, 'Primario', NULL, NULL),
(368, 84, '2015-05-27 13:22:52', '2015-09-01 09:20:50', 85, 3, 'Inicial', NULL, NULL),
(369, 85, '2015-05-27 13:24:11', '2015-06-12 09:12:13', 86, NULL, 'Primario', NULL, NULL),
(370, 84, '2015-05-27 13:28:18', '2015-09-04 09:46:37', 46, 13, 'Inicial', NULL, NULL),
(377, 102, '2015-06-19 10:20:57', '2015-06-19 10:20:57', 96, NULL, 'Carrera', NULL, NULL),
(378, 140, '2015-06-25 11:42:02', '2015-12-22 16:56:10', 78, NULL, 'Carrera', NULL, 1),
(379, 141, '2015-06-25 11:43:10', '2015-12-22 16:55:22', 78, NULL, 'Carrera', NULL, 1),
(380, 143, '2015-06-25 11:43:52', '2015-12-22 16:55:26', 78, NULL, 'Carrera', NULL, 1),
(381, 142, '2015-06-25 11:44:35', '2015-12-22 16:55:28', 78, NULL, 'Carrera', NULL, 1),
(384, 145, '2015-06-30 13:25:47', '2016-10-19 16:35:00', 81, NULL, 'Carrera', NULL, 0),
(385, 144, '2015-06-30 13:25:59', '2016-10-19 16:35:12', 81, NULL, 'Carrera', NULL, 0),
(386, 147, '2015-06-30 13:56:17', '2015-06-30 13:56:17', 96, NULL, 'Carrera', NULL, NULL),
(387, 91, '2015-06-30 13:58:33', '2015-06-30 13:58:33', 96, NULL, 'Carrera', NULL, NULL),
(388, 146, '2015-06-30 14:04:25', '2015-06-30 14:04:25', 96, NULL, 'Carrera', NULL, NULL),
(389, 104, '2015-06-30 14:17:22', '2015-12-23 08:47:26', 96, NULL, 'Carrera', NULL, 1),
(390, 105, '2015-06-30 14:22:47', '2015-06-30 14:22:47', 96, NULL, 'Carrera', NULL, NULL),
(391, 135, '2015-06-30 14:24:54', '2015-06-30 14:24:54', 96, NULL, 'Carrera', NULL, NULL),
(392, 108, '2015-06-30 14:30:23', '2015-06-30 14:30:23', 96, NULL, 'Carrera', NULL, NULL),
(393, 111, '2015-06-30 14:34:41', '2015-06-30 14:34:41', 96, NULL, 'Carrera', NULL, NULL),
(407, 85, '2015-07-01 10:05:48', '2015-07-01 10:05:48', 37, NULL, 'Primario', NULL, NULL),
(408, 85, '2015-07-01 10:06:28', '2015-07-01 10:06:28', 51, NULL, 'Primario', NULL, NULL),
(409, 85, '2015-07-01 10:07:02', '2015-07-01 10:07:02', 92, NULL, 'Primario', NULL, NULL),
(410, 85, '2015-07-01 10:07:42', '2015-07-01 10:07:42', 55, NULL, 'Primario', NULL, NULL),
(411, 85, '2015-07-01 10:08:25', '2015-07-01 10:08:25', 40, NULL, 'Primario', NULL, NULL),
(412, 85, '2015-07-01 10:09:47', '2015-07-01 10:09:47', 100, NULL, 'Primario', NULL, NULL),
(413, 85, '2015-07-01 10:10:06', '2015-07-01 10:10:06', 59, NULL, 'Primario', NULL, NULL),
(414, 85, '2015-07-01 10:10:39', '2015-07-01 10:10:39', 64, NULL, 'Primario', NULL, NULL),
(415, 85, '2015-07-01 10:10:57', '2015-07-01 10:10:57', 68, NULL, 'Primario', NULL, NULL),
(416, 85, '2015-07-01 10:11:12', '2015-07-01 10:11:12', 73, NULL, 'Primario', NULL, NULL),
(417, 85, '2015-07-01 10:11:26', '2015-07-01 10:11:26', 76, NULL, 'Primario', NULL, NULL),
(419, 148, '2015-08-03 10:21:13', '2015-08-03 10:21:13', 43, NULL, 'Secundario', 2, NULL),
(432, 84, '2015-08-05 14:58:22', '2015-09-07 06:26:36', 106, 16, 'Inicial', NULL, NULL),
(433, 87, '2015-08-11 13:37:39', '2015-08-11 13:37:39', 107, NULL, 'Carrera', NULL, NULL),
(434, 84, '2015-08-28 15:21:19', '2015-08-28 15:21:43', 104, 2, 'Inicial', NULL, NULL),
(435, 84, '2015-09-01 13:56:37', '2015-09-01 13:56:37', 36, 4, 'Inicial', NULL, NULL),
(436, 84, '2015-09-01 14:21:03', '2015-09-01 14:21:03', 50, 5, 'Inicial', NULL, NULL),
(437, 84, '2015-09-01 14:21:31', '2015-09-01 14:21:31', 89, 6, 'Inicial', NULL, NULL),
(438, 84, '2015-09-01 14:21:48', '2015-09-01 14:21:49', 54, 7, 'Inicial', NULL, NULL),
(439, 84, '2015-09-01 14:23:21', '2015-09-01 14:23:22', 99, 8, 'Inicial', NULL, NULL),
(440, 84, '2015-09-01 14:23:58', '2015-09-01 14:23:58', 62, 9, 'Inicial', NULL, NULL),
(441, 84, '2015-09-01 14:24:22', '2015-09-01 14:24:22', 67, 10, 'Inicial', NULL, NULL),
(442, 84, '2015-09-01 14:24:47', '2015-09-01 14:24:47', 105, 11, 'Inicial', NULL, NULL),
(443, 84, '2015-09-01 14:25:14', '2015-09-01 14:25:15', 79, 12, 'Inicial', NULL, NULL),
(444, 148, '2015-09-02 09:26:42', '2015-09-02 09:26:42', 108, NULL, 'Secundario', NULL, NULL),
(445, 85, '2015-09-11 12:52:10', '2015-09-11 12:52:10', 47, NULL, 'Primario', NULL, NULL),
(446, 99, '2015-09-29 16:00:26', '2015-09-29 16:00:26', 96, NULL, 'Carrera', NULL, NULL),
(447, 12, '2015-09-30 14:22:09', '2015-12-22 16:53:50', 70, NULL, 'Carrera', NULL, 1),
(448, 149, '2015-11-19 09:02:33', '2015-12-22 16:55:30', 78, NULL, 'Carrera', NULL, 1),
(449, 150, '2015-11-23 09:25:42', '2015-11-23 09:25:42', 96, NULL, 'Carrera', NULL, NULL),
(450, 121, '2016-10-20 16:44:19', '2016-10-20 16:44:30', 95, NULL, 'Carrera', NULL, 1),
(451, 116, '2017-05-17 13:36:26', '2017-05-17 13:36:26', 96, NULL, 'Carrera', NULL, NULL),
(452, 148, '2017-06-01 16:04:53', '2017-06-01 16:05:41', 38, NULL, 'Secundario', 3, NULL),
(453, 87, '2017-08-25 11:08:00', '2017-08-25 11:08:00', 39, NULL, 'Carrera', NULL, NULL),
(454, 116, '2017-08-29 16:48:52', '2017-08-29 16:48:52', 71, NULL, 'Carrera', NULL, NULL),
(456, 151, '2017-10-23 16:43:50', '2017-10-23 16:43:50', 45, NULL, 'Carrera', NULL, NULL),
(457, 151, '2017-10-23 16:43:57', '2017-10-23 16:43:57', 71, NULL, 'Carrera', NULL, NULL),
(458, 151, '2017-10-23 16:44:00', '2017-10-23 16:49:55', 96, NULL, 'Carrera', NULL, 0),
(459, 148, '2018-06-19 08:58:46', '2018-06-19 09:00:25', 41, NULL, 'Secundario', 4, 0),
(460, 148, '2018-08-13 09:00:39', '2018-08-13 09:00:46', 52, NULL, 'Secundario', NULL, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) NOT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `permite_mail` tinyint(1) DEFAULT NULL,
  `fecha_alta` datetime NOT NULL,
  `fecha_nacimiento` datetime DEFAULT NULL,
  `dni` varchar(10) DEFAULT NULL,
  `nombre_usuario` varchar(100) NOT NULL,
  `conexion_anterior` datetime DEFAULT NULL,
  `actualizado` datetime NOT NULL,
  `creado` datetime NOT NULL,
  `conexion_actual` datetime DEFAULT NULL,
  `rol` varchar(25) DEFAULT 'ROLE_USUARIO',
  `te_oficina` varchar(35) DEFAULT NULL,
  `interno` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_2265B05DE7927C74` (`email`),
  UNIQUE KEY `usuario_nombre_usuario_IDX` (`nombre_usuario`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=45 ;

--
-- Volcar la base de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `apellido`, `email`, `password`, `salt`, `direccion`, `permite_mail`, `fecha_alta`, `fecha_nacimiento`, `dni`, `nombre_usuario`, `conexion_anterior`, `actualizado`, `creado`, `conexion_actual`, `rol`, `te_oficina`, `interno`) VALUES
(11, 'Juan', 'Perez', 'jp@jp.com.ar', 'VMqOWmRrTtkVqQInoxOT05+LEp0u+DN+r6bhMD2fXIIXU5eXAK6K1NaL3yhpYeaXRNmhfonUEqcsh8prWJauIA==', '68d56036de5bd7ff4838981392001d70', NULL, 0, '2012-10-29 14:55:14', NULL, NULL, 'juan', '2016-01-07 09:30:21', '2016-01-07 09:30:54', '0000-00-00 00:00:00', '2016-01-07 09:30:54', 'ROLE_USUARIO', NULL, NULL),
(12, 'Marcelo', 'Prizmic', 'mp@mp.com.ar', 'xPurvp4BncCj6Fnjw6dCLIAyl5gBjbyD7JPFKevXPdnVU/nCMU8jfARJMN1jE+EEY54DnG69x2frEbzy305zJA==', '191e55f907fddcc6d57ae9039ccb763b', NULL, 0, '2012-10-29 14:55:14', '1963-02-23 00:00:00', NULL, 'marcelo', '2019-09-10 15:34:50', '2019-09-13 12:21:27', '0000-00-00 00:00:00', '2019-09-13 12:21:27', 'ROLE_SUPER_ADMIN', '', ''),
(15, 'andres', 'zetko', 'a@a.com', 'zSUjLyUFmW2HYrAROe4sNnX6QCj+wLvUIlOce54aRlCTqY7pC/OKhWh0Ma6uEEdFyUZZ/uiXpiPXmkJruCxW5A==', '2404f39d0f051dab2c13ac5700ce2b32', NULL, 0, '2014-02-20 19:12:58', NULL, NULL, 'andres', '2019-08-20 09:25:14', '2019-08-22 10:12:56', '2014-02-20 19:12:58', '2019-08-22 10:12:56', 'ROLE_ADMIN', '', ''),
(21, 'facundo', 'rodriguez alonso', 'f@bue.edu.ar', 'gW56G3kYWwaL6MxicJDEFwf8+wf3h6mJQmbgZYD9T+TmjeBUFsWrqSbfY1cju+vmaNoKnolKtcBBQM5BFmAZ3w==', 'ea08bd046e2ea59990df6b327c23c863', NULL, 0, '2015-06-03 14:45:30', '1995-12-21 00:00:00', NULL, 'facundo', '2015-11-24 09:27:10', '2016-10-07 10:09:15', '2015-06-03 14:45:30', '2016-10-07 10:09:15', 'ROLE_SUPER_USUARIO', NULL, NULL),
(22, 'julieta', 'lombardi', 'dfd@bue.edu.ar', 'rtNvINqCWZIrjgDl5MRtXPoHAJqqPR6QrbUYDQmfrSR5B/AJ5EkuGBzazTTXh7FhzX+nD7C/px87/W9erYVgoA==', '4e73cf9dec4453f3c8282e71e8bc1695', NULL, 0, '2015-06-03 14:46:15', NULL, NULL, 'julieta', '2019-09-13 08:39:05', '2019-09-16 07:35:09', '2015-06-03 14:46:15', '2019-09-16 07:35:09', 'ROLE_ADMIN', '', ''),
(23, 'leonardo', 'mayer', 'x@x.com', 'c0CANmKgvGwGdgdeC6Utsws6ONc3QhEserpbLyHn9LhPUVRemDeTxSKpgbWsqZhCsB4nYX8M3ThbTux/ZahCjw==', '3999e2a5bb2a48a86a174ad780ad001b', NULL, 0, '2015-12-04 09:01:57', '1993-04-17 00:00:00', NULL, 'leonardo', '2019-09-06 10:07:31', '2019-09-09 10:51:01', '2015-12-04 09:01:57', '2019-09-09 10:51:01', 'ROLE_ADMIN', '444', '444'),
(26, 'laura', 'etchechouri', 'lau@x.com', 'ZOkOwEQdtGlS3YACp34icJHBA2/Z9iVlsBLHGwMQEHZj7gsnB599uSDovkNQ4tI5YjN6Hq4+s6ajaA2sh9U3hQ==', '4c3bc96297e72fa85eea07b635b87966', NULL, 0, '2015-12-04 09:21:44', '1946-04-04 00:00:00', NULL, 'laura', '2019-08-28 06:35:00', '2019-09-03 10:06:04', '2015-12-04 09:21:44', '2019-09-03 10:06:04', 'ROLE_SUPER_USUARIO', '222', '222'),
(27, 'marcela', 'pelanda', 'm@m.com', 'TZLR3IuH0MgyWg4WUZVIXcouY6gUEkGt0yemis8PuL5Zs7vjFrtD8GAirMlJf/FGaL5kQJQY20yYwEI2JxPhpw==', '8ecd355cead93cc880be475d535ee1f9', NULL, 0, '2016-01-07 09:00:49', NULL, NULL, 'marcela', '2016-01-07 09:02:01', '2016-01-07 09:32:50', '2016-01-07 09:00:49', '2016-01-07 09:32:50', 'ROLE_SUPER_USUARIO', '1812', NULL),
(31, 'Fabián', 'Valiño', 'enfava37@hotmail.com', '7rCZ/T4k0phOwsN4goZYDPX1gFGG0mmd0pFWYb6/0N+OyXYVwpAkaEY9HxoydIJX5tVEcUUXtCEdwC2uXJ6ztg==', '914982420f3ffbd09b71be09fed4098e', NULL, 0, '2016-06-01 15:06:41', NULL, NULL, 'fabian', '2016-06-01 15:06:48', '2016-06-01 15:07:28', '2016-06-01 15:06:41', '2016-06-01 15:07:28', 'ROLE_USUARIO', NULL, NULL),
(32, 'raúl', 'ventuiz', 'raul.ventuiz@bue.edu.ar', 'URzOKsCfh89FWt4VMl0cmN9YdkgJFsv2OvPu+1RsEecRxIl1mH/RUWCOg8B00X7DwRnsEND8A+4Qq595suTHJQ==', 'd1c671508145434a88084ec44e4c6741', NULL, 0, '2016-10-03 10:33:00', NULL, NULL, 'raul', '2016-12-14 12:39:36', '2016-12-14 13:13:06', '2016-10-03 10:33:00', '2016-12-14 13:13:06', 'ROLE_SUPER_USUARIO', NULL, NULL),
(33, 'Mercedes', 'Turco', 'mercedes.turco@bue.edu.ar', '2cPDsrYUoOttxJUDnj7V9WOql2M9fP3ww53HYdzUBeWK3YwO+SMV0CqhQhSJpi44lMwRleUZLYQ+iGKDlGE5Yg==', '63d9426fd8c8c1359bfd73896ae60cd9', NULL, 0, '2016-10-14 12:57:52', NULL, NULL, 'mercedes', NULL, '2016-10-19 16:38:20', '2016-10-14 12:57:52', NULL, 'ROLE_SUPER_USUARIO', NULL, NULL),
(34, 'Bárbara Yael', 'Fernández Garbin', 'dges@bue.edu.ar', 'lUbJ/SR9AEqDrDwIlJtKvXAPV1UB79bymhl81htjWwAh1mpgVrR4N3R0f7Yf3to58EyQ20iL7FJK4UgNAjG7pg==', '6ed7ba54909a4bc412092a7fdd6417f4', NULL, 0, '2017-02-20 16:26:08', NULL, NULL, 'barbara', '2019-09-13 10:10:46', '2019-09-16 11:47:10', '2017-02-20 16:26:08', '2019-09-16 11:47:10', 'ROLE_ADMIN', NULL, NULL),
(35, 'Magdalena', 'Etchechoury', 'magui@bue.edu.ar', '+O71OWux6hsZAFaFqY2l+7DXr8rNj2BUMb2oCjpKwJGbuulOoYZO0VER5wDRKURGhq9w6jzdzMcf/Cj6Tnth1Q==', '5e1be641f16c06460d9b90cba303eb06', NULL, 0, '2017-03-13 13:29:25', NULL, NULL, 'magui', '2017-04-25 13:21:47', '2019-06-12 10:17:58', '2017-03-13 13:29:25', '2019-06-12 10:17:58', 'ROLE_USUARIO', NULL, NULL),
(40, 'Lucía', 'Lucente', 'lucialucente@yahoo.com.ar', 'DpViQirgnq585ePSgxsj3ciWdGuRmW6qy2wmiYsrhUMfFd0mcbcrAlPUEdkCBAt82fCtnOw/rGip0Lm5dzxvsQ==', '741b0dd740e3d697c8bb9cfc891e54e7', NULL, 0, '2017-06-14 16:47:42', NULL, NULL, 'lucia', '2017-06-15 09:39:27', '2017-06-16 10:33:38', '2017-06-14 16:47:42', '2017-06-16 10:33:38', 'ROLE_USUARIO', NULL, NULL),
(41, 'liliana', 'G Domínguez', 'lgardom@bue.edu.ar', '9SpoMlTzgiedtszQIdMKjQBXJkWcfWELEw8TIsH5AWl1WmUKNQ6vPs1erEJVPhiTVKDDmm7smLv0uNkyhoH+Wg==', '64df4f1a6984537bc2f1a17366b8d0a7', NULL, 0, '2018-07-19 13:46:23', '1970-02-25 00:00:00', NULL, 'lili', '2018-11-14 10:36:19', '2018-11-27 14:45:56', '2018-07-19 13:46:23', '2018-11-27 14:45:56', 'ROLE_USUARIO', NULL, NULL),
(42, 'paloma', 'kipersain', 'pkipersain@gmail.com', 'wVRNz6umbPdjo3mWpLwHUwXA/wehIp9DfQGZdrcHggkOlEO7aWnmYuQ97cxemOBkXt56jQTfj29RbgCA15urzg==', 'f0f8d7ad8b1f7e1b160c01caf88e6118', NULL, 0, '2018-07-31 11:21:53', NULL, NULL, 'paloma', '2019-03-19 09:29:34', '2019-03-27 08:21:18', '2018-07-31 11:21:53', '2019-03-27 08:21:18', 'ROLE_USUARIO', NULL, NULL),
(44, 'Miguel', 'Gonzalez', 'miguel.gonzalez@bue.edu.ar', '/fGomDzfP53uo9mH+TjrTFqD+a8riuhSyhcEL+l3jHTTcRdiOvlDpkolqfL/HomT4HUR6SkGMwhtkIF8F7NFEQ==', 'ec809e39df359b5476a371cae363b761', NULL, 0, '2019-09-10 15:35:57', NULL, NULL, 'miguel', '2019-09-10 15:36:06', '2019-09-12 11:41:18', '2019-09-10 15:35:57', '2019-09-12 11:41:18', 'ROLE_ADMIN', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vecino`
--

DROP TABLE IF EXISTS `vecino`;
CREATE TABLE IF NOT EXISTS `vecino` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `edificio_id` int(11) DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `actualizado` datetime NOT NULL,
  `creado` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_758D25E08A652BD6` (`edificio_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=20 ;

--
-- Volcar la base de datos para la tabla `vecino`
--

INSERT INTO `vecino` (`id`, `edificio_id`, `nombre`, `actualizado`, `creado`) VALUES
(1, 19, 'Escuela de Comercio Nº 10 “Islas Malvinas”', '2014-02-27 15:45:02', '2014-02-27 15:45:02'),
(2, 19, 'Liceo 4 “R. de E. de San Martín”', '2014-02-27 15:45:23', '2014-02-27 15:45:23'),
(3, 22, 'IES 2 - ENS 2', '2014-02-27 15:46:37', '2014-02-27 15:46:37'),
(7, 25, 'Liceo Nº 2 “Amancio Alcorta”', '2014-02-27 16:03:44', '2014-02-27 16:03:44'),
(9, 26, 'Liceo 3 “José Manuel Estrada', '2014-02-27 16:08:48', '2014-02-27 16:08:48'),
(11, 43, 'Escuela de Comercio Nº 8 “Patricias Argentinas”', '2014-02-27 17:11:57', '2014-02-27 17:04:35'),
(12, 43, 'Escuela de Comercio Nº 25 “Santiago de Liniers”', '2014-02-27 17:12:13', '2014-02-27 17:04:58'),
(13, 44, 'Liceo Nº 7 “Domingo F. Sarmiento” + Club de Jóvenes', '2014-02-27 17:05:47', '2014-02-27 17:05:47'),
(14, 46, 'Escuela de Danza Nº 10 “Curso Nº 21”', '2014-02-27 17:06:04', '2014-02-27 17:06:04'),
(15, 51, 'Escuela de Comercio Nº 26 “Enrique de Vedia”', '2014-02-27 17:06:26', '2014-02-27 17:06:26'),
(16, 57, 'Escuela de Educación Media Nº 3', '2014-02-27 17:07:08', '2014-02-27 17:07:08'),
(17, 57, 'Instituto de Deportes', '2014-02-27 17:07:22', '2014-02-27 17:07:22'),
(19, 58, 'Escuela 10 D.E. 19 Juan Andrés de la Peña', '2015-08-05 14:10:43', '2014-03-10 11:58:25');

--
-- Filtros para las tablas descargadas (dump)
--

--
-- Filtros para la tabla `establecimiento`
--
ALTER TABLE `establecimiento`
  ADD CONSTRAINT `establecimiento_ibfk_1` FOREIGN KEY (`tipo_establecimiento_id`) REFERENCES `tipo_establecimiento` (`id`) ON UPDATE CASCADE;
COMMIT;
