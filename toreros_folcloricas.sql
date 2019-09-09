-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 09-09-2019 a las 20:23:29
-- Versión del servidor: 5.7.24
-- Versión de PHP: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `toreros_folcloricas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `casamientos_tf`
--

DROP TABLE IF EXISTS `casamientos_tf`;
CREATE TABLE IF NOT EXISTS `casamientos_tf` (
  `Codigo_torero` int(11) NOT NULL,
  `Codigo_folcloricas` int(11) NOT NULL,
  PRIMARY KEY (`Codigo_torero`,`Codigo_folcloricas`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Tabla sacada de: http://es.dbpedia.org/';

--
-- Volcado de datos para la tabla `casamientos_tf`
--

INSERT INTO `casamientos_tf` (`Codigo_torero`, `Codigo_folcloricas`) VALUES
(4, 1),
(9, 2),
(11, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `folcloricas`
--

DROP TABLE IF EXISTS `folcloricas`;
CREATE TABLE IF NOT EXISTS `folcloricas` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `Apellidos` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `folcloricas`
--

INSERT INTO `folcloricas` (`ID`, `Nombre`, `Apellidos`) VALUES
(1, 'Isabel', 'Pantoja'),
(2, 'Rocío', 'Jurado'),
(3, 'Lola', 'Flores'),
(4, 'Marifé de Triana', NULL),
(5, 'Lola', 'Flores'),
(6, 'Marifé de Triana', NULL),
(7, 'Gracia', 'Montes'),
(8, 'Juanita', 'Reina'),
(9, 'María', 'Jiménez'),
(10, 'María del Monte', NULL),
(11, 'Carmen', 'Sevilla'),
(12, 'Concha', 'Piquer'),
(13, 'Estrellita', 'Castro'),
(14, 'Paquita', 'Rico'),
(15, 'Marujita', 'Díaz'),
(16, 'María José', 'Santiago');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `toreros`
--

DROP TABLE IF EXISTS `toreros`;
CREATE TABLE IF NOT EXISTS `toreros` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `Apellidos` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  UNIQUE KEY `ID` (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `toreros`
--

INSERT INTO `toreros` (`ID`, `Nombre`, `Apellidos`) VALUES
(1, 'Manolete', NULL),
(2, 'Enrique', 'Ponce'),
(3, 'El Juli', NULL),
(4, 'Francisco', 'Rivera Pérez'),
(5, 'Cayetano', 'Rivera Ordóñez'),
(6, 'Morante de la Puebla', NULL),
(7, 'José', 'Tomás'),
(8, 'Juan José', 'Padilla'),
(9, 'José', 'Ortega Cano'),
(10, 'Francisco', 'Rivera Ordóñez'),
(11, 'Curro', 'Romero');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
