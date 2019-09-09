-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 09-09-2019 a las 20:14:22
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
-- Base de datos: `edad_emancipacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudadanos`
--

DROP TABLE IF EXISTS `ciudadanos`;
CREATE TABLE IF NOT EXISTS `ciudadanos` (
  `Pais` varchar(13) COLLATE utf8_spanish_ci NOT NULL,
  `Media` varchar(4) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Hombres` varchar(4) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Mujeres` varchar(4) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`Pais`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ciudadanos`
--

INSERT INTO `ciudadanos` (`Pais`, `Media`, `Hombres`, `Mujeres`) VALUES
('Unión Europea', '26,0', '27,0', '25,0'),
('Bélgica', '25,2', '26,1', '24,3'),
('Bulgaria', '29,6', '31,7', '27,5'),
('Rep. Checa', '26,2', '27,3', '25,1'),
('Dinamarca', '21,1', '21,3', '20,8'),
('Alemania', '23,7', '24,4', '22,9'),
('Estonia', '22,2', '22,6', '21,8'),
('Irlanda', '26,5', '27,3', '25,7'),
('Grecia', '29,3', '30,6', '28,0'),
('España', '29,5', '30,5', '28,6'),
('Francia', '23,7', '24,4', '23,0'),
('Croacia', '31,8', '33,6', '30,0'),
('Italia', '30,1', '31,2', '29,1'),
('Chipre', '27,4', '28,3', '26,5'),
('Letonia', '26,6', '27,3', '25,7'),
('Lituania', '25,7', '26,9', '24,5'),
('Luxemburgo', '20,1', '20,4', '19,7'),
('Hungría', '27,1', '28,3', '25,8'),
('Malta', '30,7', '31,4', '30,0'),
('Holanda', '23,7', '24,4', '23,0'),
('Austria', '25,6', '26,3', '24,8'),
('Polonia', '27,6', '28,8', '26,3'),
('Portugal', '28,9', '29,9', '28,0'),
('Rumanía', '28,2', '30,5', '25,6'),
('Eslovenia', '28,2', '29,2', '27,0'),
('Eslovaquia', '30,9', '32,1', '29,7'),
('Finlandia', '22,0', '22,7', '21,2'),
('Suecia', '18,5', '18,4', '18,5'),
('Reino Unido', '24,7', '25,5', '23,8'),
('Macedonia', '31,7', '35,4', '27,9'),
('Turquía', '27,5', '29,7', '25,2');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
