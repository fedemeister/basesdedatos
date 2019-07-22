-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 28-04-2019 a las 11:23:22
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
-- Base de datos: `i+d 2017`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal`
--

DROP TABLE IF EXISTS `personal`;
CREATE TABLE IF NOT EXISTS `personal` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Sector` varchar(32) NOT NULL,
  `Investi_Hombres` int(11) NOT NULL,
  `Investi_Mujeres` int(11) NOT NULL,
  `Tecni_Hombres` int(11) NOT NULL,
  `Tecni_Mujeres` int(11) NOT NULL,
  `Auxi_Hombres` int(11) NOT NULL,
  `Auxi_Mujeres` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COMMENT='Tabla sacada de: http://www.ine.es/jaxi/Tabla.htm?path=/t14/p057/a2017/l0/&file=02005a.px&L=0';

--
-- Volcado de datos para la tabla `personal`
--

INSERT INTO `personal` (`ID`, `Sector`, `Investi_Hombres`, `Investi_Mujeres`, `Tecni_Hombres`, `Tecni_Mujeres`, `Auxi_Hombres`, `Auxi_Mujeres`) VALUES
(1, 'Administración Pública', 16659, 17534, 6795, 9806, 3433, 4270),
(2, 'Enseñanza Superior', 72298, 53416, 7746, 7558, 6460, 10337),
(3, 'Empresas', 45261, 20247, 38650, 15356, 11858, 5685),
(4, 'IPSLF', 266, 288, 132, 158, 20, 54);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
