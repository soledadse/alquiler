-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-10-2022 a las 09:02:45
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `alquiler`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asesor`
--

CREATE TABLE `asesor` (
  `ida` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `celular` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `asesor`
--

INSERT INTO `asesor` (`ida`, `nombre`, `correo`, `celular`) VALUES
(1, 'MAURICIO', 'mauricio@leasein.pe', '999888777'),
(2, 'DIEGO', 'diego@leasein.pe', '999777666'),
(3, 'ALEJANDRO', 'alejandro@leasein.pe', '999666555'),
(4, 'ERIKA', 'erika@leasein.pe', '999555444'),
(5, 'NICOLE', 'nicole@leasein.pe', '999444333');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idc` int(11) NOT NULL,
  `empresa` varchar(45) NOT NULL,
  `sector` varchar(45) DEFAULT NULL,
  `tamano` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idc`, `empresa`, `sector`, `tamano`) VALUES
(1, 'EMPRESA 1', 'FINANCIERO', 'CORPORATIVO'),
(2, 'EMPRESA 2', 'FINANCIERO', 'MEDIANA'),
(3, 'EMPRESA 3', 'FINANCIERO', 'GRANDE'),
(4, 'EMPRESA 4', 'FINANCIERO', 'PEQUEÑA'),
(5, 'EMPRESA 5', 'FINANCIERO', 'MEDIANA'),
(6, 'EMPRESA 6', 'SERVICIOS EMPRESARIALES', 'PEQUEÑA'),
(7, 'EMPRESA 7', 'SERVICIOS EMPRESARIALES', 'MEDIANA'),
(8, 'EMPRESA 8', 'TECNOLOGÍA', 'GRANDE'),
(9, 'EMPRESA 9', 'TECNOLOGÍA', 'MEDIANA'),
(10, 'EMPRESA 10', 'TECNOLOGÍA', 'MEDIANA'),
(11, 'EMPRESA 11', 'TECNOLOGÍA', 'PEQUEÑA'),
(12, 'EMPRESA 12', 'TECNOLOGÍA', 'MEDIANA'),
(13, 'EMPRESA 13', 'TECNOLOGÍA', 'GRANDE'),
(14, 'EMPRESA 14', 'CONSTRUCCIÓN', 'PEQUEÑA'),
(15, 'EMPRESA 15', 'CONSTRUCCIÓN', 'CORPORATIVO'),
(16, 'EMPRESA 16', 'CONSTRUCCIÓN', 'PEQUEÑA'),
(17, 'EMPRESA 17', 'CONSTRUCCIÓN', 'GRANDE'),
(18, 'EMPRESA 18', 'LOGÍSTICA', 'PEQUEÑA'),
(19, 'EMPRESA 19', 'LOGÍSTICA', 'GRANDE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente_asesor`
--

CREATE TABLE `cliente_asesor` (
  `cliente_idc` int(11) NOT NULL,
  `asesor_ida` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cliente_asesor`
--

INSERT INTO `cliente_asesor` (`cliente_idc`, `asesor_ida`) VALUES
(1, 3),
(2, 5),
(3, 5),
(4, 5),
(5, 4),
(6, 4),
(7, 4),
(8, 4),
(11, 3),
(12, 3),
(13, 3),
(14, 2),
(15, 2),
(16, 2),
(17, 3),
(18, 1),
(19, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidad`
--

CREATE TABLE `unidad` (
  `id` int(11) NOT NULL,
  `codigo` varchar(15) NOT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `marca` varchar(30) DEFAULT NULL,
  `procesador` varchar(20) DEFAULT NULL,
  `generacion` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `unidad`
--

INSERT INTO `unidad` (`id`, `codigo`, `tipo`, `marca`, `procesador`, `generacion`) VALUES
(1, 'LAP-00001', 'LAPTOP', 'HP', 'CORE I7', '8'),
(2, 'LAP-00002', 'LAPTOP', 'HP', 'CORE I7', '8'),
(3, 'LAP-00003', 'LAPTOP', 'HP', 'CORE I7', '8'),
(4, 'LAP-00004', 'LAPTOP', 'HP', 'CORE I7', '8'),
(5, 'LAP-00005', 'LAPTOP', 'HP', 'CORE I7', '8'),
(6, 'LAP-00006', 'LAPTOP', 'HP', 'CORE I7', '8'),
(7, 'LAP-00007', 'LAPTOP', 'HP', 'CORE I7', '8'),
(8, 'LAP-00008', 'LAPTOP', 'HP', 'CORE I7', '8'),
(9, 'LAP-00009', 'LAPTOP', 'HP', 'CORE I7', '8'),
(10, 'LAP-00010', 'LAPTOP', 'HP', 'CORE I7', '8'),
(11, 'LAP-00011', 'LAPTOP', 'LENOVO', 'CORE I3', '8'),
(12, 'LAP-00012', 'LAPTOP', 'LENOVO', 'CORE I3', '8'),
(13, 'LAP-00013', 'LAPTOP', 'LENOVO', 'CORE I3', '8'),
(14, 'LAP-00014', 'LAPTOP', 'LENOVO', 'CORE I3', '8'),
(15, 'LAP-00015', 'LAPTOP', 'LENOVO', 'CORE I3', '8'),
(16, 'LAP-00016', 'LAPTOP', 'LENOVO', 'CORE I3', '8'),
(17, 'LAP-00017', 'LAPTOP', 'LENOVO', 'CORE I7', '8'),
(18, 'LAP-00018', 'LAPTOP', 'LENOVO', 'CORE I7', '8'),
(19, 'LAP-00019', 'LAPTOP', 'LENOVO', 'CORE I7', '8'),
(20, 'LAP-00020', 'LAPTOP', 'LENOVO', 'CORE I7', '8'),
(21, 'LAP-00021', 'LAPTOP', 'LENOVO', 'CORE I7', '8'),
(22, 'LAP-00022', 'LAPTOP', 'LENOVO', 'CORE I7', '8'),
(23, 'LAP-00023', 'LAPTOP', 'LENOVO', 'CORE I7', '8'),
(24, 'LAP-00024', 'LAPTOP', 'LENOVO', 'CORE I7', '8'),
(25, 'LAP-00025', 'LAPTOP', 'LENOVO', 'CORE I7', '8'),
(26, 'LAP-00026', 'LAPTOP', 'LENOVO', 'CORE I7', '8'),
(27, 'LAP-00027', 'LAPTOP', 'HP', 'CORE I5', '8'),
(28, 'LAP-00028', 'LAPTOP', 'HP', 'CORE I5', '8'),
(29, 'LAP-00029', 'LAPTOP', 'HP', 'CORE I5', '8'),
(30, 'LAP-00030', 'LAPTOP', 'HP', 'CORE I5', '8'),
(31, 'LAP-00031', 'LAPTOP', 'HP', 'CORE I5', '8'),
(32, 'LAP-00032', 'LAPTOP', 'HP', 'CORE I5', '8'),
(33, 'LAP-00033', 'LAPTOP', 'HP', 'CORE I5', '8'),
(34, 'LAP-00034', 'LAPTOP', 'HP', 'CORE I5', '8'),
(35, 'LAP-00035', 'LAPTOP', 'HP', 'CORE I5', '8'),
(36, 'LAP-00036', 'LAPTOP', 'HP', 'CORE I5', '8'),
(37, 'LAP-00037', 'LAPTOP', 'HP', 'CORE I5', '8'),
(38, 'LAP-00038', 'LAPTOP', 'HP', 'CORE I5', '8'),
(39, 'LAP-00039', 'LAPTOP', 'HP', 'CORE I5', '8'),
(40, 'LAP-00040', 'LAPTOP', 'HP', 'CORE I5', '8'),
(41, 'LAP-00041', 'LAPTOP', 'HP', 'CORE I5', '8'),
(42, 'LAP-00042', 'LAPTOP', 'HP', 'CORE I5', '8'),
(43, 'LAP-00043', 'LAPTOP', 'HP', 'CORE I5', '8'),
(44, 'LAP-00044', 'LAPTOP', 'HP', 'CORE I5', '8'),
(45, 'LAP-00045', 'LAPTOP', 'HP', 'CORE I5', '8'),
(46, 'LAP-00046', 'LAPTOP', 'HP', 'CORE I5', '8'),
(47, 'LAP-00047', 'LAPTOP', 'HP', 'CORE I7', '8'),
(48, 'LAP-00048', 'LAPTOP', 'HP', 'CORE I7', '8'),
(49, 'LAP-00049', 'LAPTOP', 'HP', 'CORE I7', '8'),
(50, 'LAP-00050', 'LAPTOP', 'HP', 'CORE I7', '8'),
(51, 'LAP-00051', 'LAPTOP', 'HP', 'CORE I7', '8'),
(52, 'LAP-00052', 'LAPTOP', 'HP', 'CORE I7', '8'),
(53, 'LAP-00053', 'LAPTOP', 'HP', 'CORE I7', '8'),
(54, 'LAP-00054', 'LAPTOP', 'HP', 'CORE I7', '8'),
(55, 'LAP-00055', 'LAPTOP', 'HP', 'CORE I7', '8'),
(56, 'LAP-00056', 'LAPTOP', 'HP', 'CORE I7', '8'),
(57, 'LAP-00057', 'LAPTOP', 'LENOVO', 'CORE I7', '8'),
(58, 'LAP-00058', 'LAPTOP', 'LENOVO', 'CORE I7', '8'),
(59, 'LAP-00059', 'LAPTOP', 'LENOVO', 'CORE I7', '8'),
(60, 'LAP-00060', 'LAPTOP', 'DELL', 'CORE I7', '8'),
(61, 'LAP-00061', 'LAPTOP', 'DELL', 'CORE I7', '8'),
(62, 'LAP-00062', 'LAPTOP', 'DELL', 'CORE I7', '8'),
(63, 'LAP-00063', 'LAPTOP', 'DELL', 'CORE I7', '8'),
(64, 'LAP-00064', 'LAPTOP', 'DELL', 'CORE I7', '8'),
(65, 'LAP-00065', 'LAPTOP', 'HP', 'CORE I5', '8'),
(66, 'LAP-00066', 'LAPTOP', 'HP', 'CORE I5', '8'),
(67, 'LAP-00067', 'LAPTOP', 'HP', 'CORE I5', '8'),
(68, 'LAP-00068', 'LAPTOP', 'HP', 'CORE I5', '8'),
(69, 'LAP-00069', 'LAPTOP', 'HP', 'CORE I5', '8'),
(70, 'LAP-00070', 'LAPTOP', 'HP', 'CORE I5', '8'),
(71, 'LAP-00071', 'LAPTOP', 'HP', 'CORE I5', '8'),
(72, 'LAP-00072', 'LAPTOP', 'HP', 'CORE I5', '8'),
(73, 'LAP-00073', 'LAPTOP', 'HP', 'CORE I5', '8'),
(74, 'LAP-00074', 'LAPTOP', 'HP', 'CORE I5', '8'),
(75, 'LAP-00075', 'LAPTOP', 'HP', 'CORE I5', '8'),
(76, 'LAP-00076', 'LAPTOP', 'LENOVO', 'CORE I7', '8'),
(77, 'LAP-00077', 'LAPTOP', 'LENOVO', 'CORE I7', '8'),
(78, 'LAP-00078', 'LAPTOP', 'LENOVO', 'CORE I7', '8'),
(79, 'LAP-00079', 'LAPTOP', 'LENOVO', 'CORE I7', '4'),
(80, 'LAP-00080', 'LAPTOP', 'LENOVO', 'CORE I7', '4'),
(81, 'LAP-00081', 'LAPTOP', 'DELL', 'CORE I7', '8'),
(82, 'LAP-00082', 'LAPTOP', 'LENOVO', 'CORE I3', '2'),
(83, 'LAP-00083', 'LAPTOP', 'DELL', 'CORE I5', '2'),
(84, 'LAP-00084', 'LAPTOP', 'DELL', 'CORE I5', '2'),
(85, 'LAP-00085', 'LAPTOP', 'DELL', 'CORE I5', '2'),
(86, 'LAP-00086', 'LAPTOP', 'HP', 'CORE I3', '3'),
(87, 'LAP-00087', 'LAPTOP', 'HP', 'CORE I3', '3'),
(88, 'LAP-00088', 'LAPTOP', 'DELL', 'CORE I5', '5'),
(89, 'LAP-00089', 'LAPTOP', 'HP', 'CORE I5', '4'),
(90, 'LAP-00090', 'LAPTOP', 'HP', 'CORE I5', '4'),
(91, 'LAP-00091', 'LAPTOP', 'HP', 'CORE I5', '4'),
(92, 'LAP-00092', 'LAPTOP', 'HP', 'CORE I5', '4'),
(93, 'LAP-00093', 'LAPTOP', 'HP', 'CORE I5', '4'),
(94, 'LAP-00094', 'LAPTOP', 'HP', 'CORE I5', '4'),
(95, 'LAP-00095', 'LAPTOP', 'HP', 'CORE I5', '4'),
(96, 'LAP-00096', 'LAPTOP', 'HP', 'CORE I5', '4'),
(97, 'LAP-00097', 'LAPTOP', 'HP', 'CORE I5', '4'),
(98, 'LAP-00098', 'LAPTOP', 'HP', 'CORE I5', '4'),
(99, 'LAP-00099', 'LAPTOP', 'HP', 'CORE I5', '4'),
(100, 'LAP-00100', 'LAPTOP', 'HP', 'CORE I5', '4'),
(101, 'LAP-00101', 'LAPTOP', 'HP', 'CORE I5', '4'),
(102, 'LAP-00102', 'LAPTOP', 'HP', 'CORE I5', '4'),
(103, 'LAP-00103', 'LAPTOP', 'HP', 'CORE I5', '4'),
(104, 'LAP-00104', 'LAPTOP', 'HP', 'CORE I5', '4'),
(105, 'LAP-00105', 'LAPTOP', 'HP', 'CORE I5', '4'),
(106, 'LAP-00106', 'LAPTOP', 'HP', 'CORE I5', '4'),
(107, 'LAP-00107', 'LAPTOP', 'HP', 'CORE I5', '4'),
(108, 'LAP-00108', 'LAPTOP', 'HP', 'CORE I5', '4'),
(109, 'LAP-00109', 'LAPTOP', 'HP', 'CORE I5', '4'),
(110, 'LAP-00110', 'LAPTOP', 'HP', 'CORE I5', '4'),
(111, 'LAP-00111', 'LAPTOP', 'HP', 'CORE I5', '4'),
(112, 'LAP-00112', 'LAPTOP', 'HP', 'CORE I5', '4'),
(113, 'LAP-00113', 'LAPTOP', 'DELL', 'CORE I5', '5'),
(114, 'LAP-00114', 'LAPTOP', 'HP', 'CORE I5', '4'),
(115, 'LAP-00115', 'LAPTOP', 'HP', 'CORE I5', '4'),
(116, 'LAP-00116', 'LAPTOP', 'HP', 'CORE I5', '4'),
(117, 'LAP-00117', 'LAPTOP', 'HP', 'CORE I5', '4'),
(118, 'LAP-00118', 'LAPTOP', 'HP', 'CORE I5', '4'),
(119, 'LAP-00119', 'LAPTOP', 'HP', 'CORE I5', '5'),
(120, 'LAP-00120', 'LAPTOP', 'HP', 'CORE I5', '5'),
(121, 'LAP-00121', 'LAPTOP', 'HP', 'CORE I5', '5'),
(122, 'LAP-00122', 'LAPTOP', 'HP', 'CORE I5', '5'),
(123, 'LAP-00123', 'LAPTOP', 'LENOVO', 'CORE I7', '4'),
(124, 'LAP-00124', 'LAPTOP', 'LENOVO', 'CORE I5', '5'),
(125, 'LAP-00125', 'LAPTOP', 'LENOVO', 'CORE I5', '5'),
(126, 'LAP-00126', 'LAPTOP', 'LENOVO', 'CORE I5', '5'),
(127, 'LAP-00127', 'LAPTOP', 'LENOVO', 'CORE I5', '5'),
(128, 'LAP-00128', 'LAPTOP', 'LENOVO', 'CORE I5', '5'),
(129, 'LAP-00129', 'LAPTOP', 'LENOVO', 'CORE I7', '4'),
(130, 'LAP-00130', 'LAPTOP', 'LENOVO', 'CORE I3', '5'),
(131, 'LAP-00131', 'LAPTOP', 'LENOVO', 'CORE I3', '5'),
(132, 'LAP-00132', 'LAPTOP', 'LENOVO', 'CORE I3', '5'),
(133, 'LAP-00133', 'LAPTOP', 'LENOVO', 'CORE I3', '5'),
(134, 'LAP-00134', 'LAPTOP', 'LENOVO', 'CORE I3', '5'),
(135, 'LAP-00135', 'LAPTOP', 'HP', 'CORE I3', '4'),
(136, 'LAP-00136', 'LAPTOP', 'HP', 'CORE I5', '4'),
(137, 'LAP-00137', 'LAPTOP', 'HP', 'CORE I5', '4'),
(138, 'LAP-00138', 'LAPTOP', 'HP', 'CORE I5', '4'),
(139, 'LAP-00139', 'LAPTOP', 'HP', 'CORE I5', '4'),
(140, 'LAP-00140', 'LAPTOP', 'HP', 'CORE I3', '5'),
(141, 'LAP-00141', 'LAPTOP', 'HP', 'CORE I3', '5'),
(142, 'LAP-00142', 'LAPTOP', 'HP', 'CORE I3', '5'),
(143, 'LAP-00143', 'LAPTOP', 'HP', 'CORE I5', '4'),
(144, 'LAP-00144', 'LAPTOP', 'HP', 'CORE I3', '5'),
(145, 'LAP-00145', 'LAPTOP', 'HP', 'CORE I3', '5'),
(146, 'LAP-00146', 'LAPTOP', 'HP', 'CORE I3', '5'),
(147, 'LAP-00147', 'LAPTOP', 'HP', 'CORE I3', '5'),
(148, 'LAP-00148', 'LAPTOP', 'HP', 'CORE I3', '5'),
(149, 'LAP-00149', 'LAPTOP', 'HP', 'CORE I3', '5'),
(150, 'LAP-00150', 'LAPTOP', 'HP', 'CORE I3', '5'),
(151, 'LAP-00151', 'LAPTOP', 'LENOVO', 'CORE I5', '5'),
(152, 'LAP-00152', 'LAPTOP', 'LENOVO', 'CORE I5', '5'),
(153, 'LAP-00153', 'LAPTOP', 'HP', 'CORE I5', '5'),
(154, 'LAP-00154', 'LAPTOP', 'HP', 'CORE I5', '5'),
(155, 'LAP-00155', 'LAPTOP', 'HP', 'CORE I5', '5'),
(156, 'LAP-00156', 'LAPTOP', 'HP', 'CORE I5', '5'),
(157, 'LAP-00157', 'LAPTOP', 'HP', 'CORE I5', '5'),
(158, 'LAP-00158', 'LAPTOP', 'HP', 'CORE I5', '5'),
(159, 'LAP-00159', 'LAPTOP', 'HP', 'CORE I5', '5'),
(160, 'LAP-00160', 'LAPTOP', 'HP', 'CORE I5', '5'),
(161, 'LAP-00161', 'LAPTOP', 'HP', 'CORE I5', '5'),
(162, 'LAP-00162', 'LAPTOP', 'HP', 'CORE I5', '5'),
(163, 'LAP-00163', 'LAPTOP', 'HP', 'CORE I5', '5'),
(164, 'LAP-00164', 'LAPTOP', 'HP', 'CORE I5', '5'),
(165, 'LAP-00165', 'LAPTOP', 'HP', 'CORE I5', '5'),
(166, 'LAP-00166', 'LAPTOP', 'HP', 'CORE I5', '5'),
(167, 'LAP-00167', 'LAPTOP', 'HP', 'CORE I5', '5'),
(168, 'LAP-00168', 'LAPTOP', 'HP', 'CORE I5', '6'),
(169, 'LAP-00169', 'LAPTOP', 'HP', 'CORE I5', '6'),
(170, 'LAP-00170', 'LAPTOP', 'HP', 'CORE I5', '6'),
(171, 'LAP-00171', 'LAPTOP', 'HP', 'CORE I5', '6'),
(172, 'LAP-00172', 'LAPTOP', 'HP', 'CORE I5', '6'),
(173, 'LAP-00173', 'LAPTOP', 'HP', 'CORE I5', '6'),
(174, 'LAP-00174', 'LAPTOP', 'HP', 'CORE I5', '6'),
(175, 'LAP-00175', 'LAPTOP', 'HP', 'CORE I5', '6'),
(176, 'LAP-00176', 'LAPTOP', 'HP', 'CORE I5', '6'),
(177, 'LAP-00177', 'LAPTOP', 'HP', 'CORE I5', '6'),
(178, 'LAP-00178', 'LAPTOP', 'HP', 'CORE I7', '6'),
(179, 'LAP-00179', 'LAPTOP', 'HP', 'CORE I7', '6'),
(180, 'LAP-00180', 'LAPTOP', 'HP', 'CORE I7', '6'),
(181, 'LAP-00181', 'LAPTOP', 'HP', 'CORE I7', '6'),
(182, 'LAP-00182', 'LAPTOP', 'HP', 'CORE I7', '6'),
(183, 'LAP-00183', 'LAPTOP', 'HP', 'CORE I7', '6'),
(184, 'LAP-00184', 'LAPTOP', 'HP', 'CORE I7', '6'),
(185, 'LAP-00185', 'LAPTOP', 'HP', 'CORE I5', '5'),
(186, 'LAP-00186', 'LAPTOP', 'HP', 'CORE I5', '5'),
(187, 'LAP-00187', 'LAPTOP', 'HP', 'CORE I5', '5'),
(188, 'LAP-00188', 'LAPTOP', 'HP', 'CORE I5', '5'),
(189, 'LAP-00189', 'LAPTOP', 'HP', 'CORE I5', '5'),
(190, 'LAP-00190', 'LAPTOP', 'HP', 'CORE I5', '5'),
(191, 'LAP-00191', 'LAPTOP', 'HP', 'CORE I5', '5'),
(192, 'LAP-00192', 'LAPTOP', 'HP', 'CORE I5', '5'),
(193, 'LAP-00193', 'LAPTOP', 'HP', 'CORE I5', '5'),
(194, 'LAP-00194', 'LAPTOP', 'HP', 'CORE I5', '5'),
(195, 'LAP-00195', 'LAPTOP', 'HP', 'CORE I5', '5'),
(196, 'LAP-00196', 'LAPTOP', 'HP', 'CORE I5', '5'),
(197, 'LAP-00197', 'LAPTOP', 'HP', 'CORE I5', '5'),
(198, 'LAP-00198', 'LAPTOP', 'HP', 'CORE I5', '5'),
(199, 'LAP-00199', 'LAPTOP', 'DELL', 'CORE I7', '6'),
(200, 'LAP-00200', 'LAPTOP', 'DELL', 'CORE I7', '6');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidad_cliente`
--

CREATE TABLE `unidad_cliente` (
  `unidad_id` int(11) NOT NULL,
  `cliente_idc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `unidad_cliente`
--

INSERT INTO `unidad_cliente` (`unidad_id`, `cliente_idc`) VALUES
(1, 8),
(2, 8),
(3, 5),
(4, 6),
(5, 7),
(6, 8),
(7, 5),
(8, 6),
(9, 7),
(10, 8),
(11, 5),
(12, 6),
(13, 7),
(14, 8),
(15, 5),
(16, 6),
(17, 7),
(18, 8),
(19, 5),
(20, 6),
(21, 7),
(22, 8),
(23, 5),
(24, 6),
(25, 7),
(26, 8),
(27, 16),
(28, 17),
(29, 18),
(30, 19),
(31, 16),
(32, 17),
(33, 18),
(34, 19),
(35, 19),
(36, 19),
(37, 19),
(38, 19),
(39, 19),
(40, 19),
(41, 19),
(42, 19),
(43, 19),
(44, 19),
(45, 19),
(46, 19),
(47, 19),
(48, 19),
(49, 19),
(50, 11),
(51, 12),
(52, 13),
(53, 14),
(54, 11),
(55, 12),
(56, 13),
(57, 14),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 8),
(69, 8),
(70, 8),
(71, 2),
(72, 2),
(73, 2),
(74, 2),
(75, 2),
(76, 2),
(77, 2),
(78, 2),
(79, 11),
(80, 12),
(81, 13),
(82, 14),
(83, 11),
(84, 12),
(85, 13),
(86, 14),
(87, 11),
(88, 12),
(89, 13),
(90, 14),
(91, 11),
(92, 12),
(93, 13),
(94, 14),
(95, 12),
(96, 13),
(97, 14),
(98, 3),
(99, 3),
(100, 3),
(101, 3),
(102, 3),
(103, 3),
(104, 3),
(105, 12),
(106, 13),
(107, 14),
(108, 15),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 12),
(123, 13),
(124, 14),
(125, 12),
(126, 13),
(127, 14),
(128, 12),
(129, 13),
(130, 14),
(131, 15),
(132, 16),
(133, 1),
(134, 1),
(135, 1),
(136, 1),
(137, 1),
(138, 1),
(139, 1),
(140, 1),
(141, 1),
(142, 1),
(143, 1),
(144, 8),
(145, 8),
(146, 8),
(147, 8),
(148, 8),
(149, 8),
(150, 8),
(151, 8),
(152, 8),
(153, 8),
(154, 8),
(155, 8),
(156, 1),
(157, 1),
(158, 8),
(159, 8),
(160, 1),
(161, 1),
(162, 1),
(163, 8),
(164, 6),
(165, 5),
(166, 4),
(167, 3),
(168, 2),
(169, 1),
(170, 1),
(171, 1),
(172, 1),
(173, 1),
(174, 1),
(175, 1),
(176, 1),
(177, 1),
(178, 1),
(179, 1),
(180, 1),
(181, 1),
(182, 1),
(183, 1),
(184, 1),
(185, 1),
(186, 8),
(187, 3),
(188, 3),
(189, 3),
(190, 3),
(191, 3),
(192, 3),
(193, 3),
(194, 3),
(195, 3),
(196, 3),
(197, 3),
(198, 3),
(199, 3),
(200, 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asesor`
--
ALTER TABLE `asesor`
  ADD PRIMARY KEY (`ida`),
  ADD UNIQUE KEY `celular_UNIQUE` (`celular`),
  ADD UNIQUE KEY `correo_UNIQUE` (`correo`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idc`),
  ADD UNIQUE KEY `empresa_UNIQUE` (`empresa`);

--
-- Indices de la tabla `cliente_asesor`
--
ALTER TABLE `cliente_asesor`
  ADD PRIMARY KEY (`cliente_idc`,`asesor_ida`),
  ADD KEY `fk_cliente_has_asesor_asesor1_idx` (`asesor_ida`),
  ADD KEY `fk_cliente_has_asesor_cliente1_idx` (`cliente_idc`);

--
-- Indices de la tabla `unidad`
--
ALTER TABLE `unidad`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo_UNIQUE` (`codigo`);

--
-- Indices de la tabla `unidad_cliente`
--
ALTER TABLE `unidad_cliente`
  ADD PRIMARY KEY (`unidad_id`,`cliente_idc`),
  ADD KEY `fk_unidad_has_cliente_cliente1_idx` (`cliente_idc`),
  ADD KEY `fk_unidad_has_cliente_unidad_idx` (`unidad_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `unidad`
--
ALTER TABLE `unidad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cliente_asesor`
--
ALTER TABLE `cliente_asesor`
  ADD CONSTRAINT `fk_cliente_has_asesor_asesor1` FOREIGN KEY (`asesor_ida`) REFERENCES `asesor` (`ida`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_cliente_has_asesor_cliente1` FOREIGN KEY (`cliente_idc`) REFERENCES `cliente` (`idc`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `unidad_cliente`
--
ALTER TABLE `unidad_cliente`
  ADD CONSTRAINT `fk_unidad_has_cliente_cliente1` FOREIGN KEY (`cliente_idc`) REFERENCES `cliente` (`idc`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_unidad_has_cliente_unidad` FOREIGN KEY (`unidad_id`) REFERENCES `unidad` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
