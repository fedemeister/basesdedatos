-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 28-04-2019 a las 11:24:21
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
-- Base de datos: `ranking_supermercados`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `supermercados`
--

DROP TABLE IF EXISTS `supermercados`;
CREATE TABLE IF NOT EXISTS `supermercados` (
  `MARCA` varchar(16) COLLATE utf8_spanish_ci NOT NULL,
  `DATO_1` double NOT NULL,
  `DATO_2` double NOT NULL,
  `DATO_3` double NOT NULL,
  `DATO_4` double NOT NULL,
  `DATO_5` double NOT NULL,
  `DATO_6` double NOT NULL,
  `DATO_7` double NOT NULL,
  `DATO_8` double NOT NULL,
  `DATO_9` double NOT NULL,
  `DATO_10` double NOT NULL,
  PRIMARY KEY (`MARCA`),
  UNIQUE KEY `MARCA` (`MARCA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Datos extraídos de Greenpeace España. https://es.greenpeace.org/es/trabajamos-en/consumismo/plasticos/ranking-de-supermercados-contra-el-plastico/ ';

--
-- Volcado de datos para la tabla `supermercados`
--

INSERT INTO `supermercados` (`MARCA`, `DATO_1`, `DATO_2`, `DATO_3`, `DATO_4`, `DATO_5`, `DATO_6`, `DATO_7`, `DATO_8`, `DATO_9`, `DATO_10`) VALUES
('ALCAMPO', 3.9, 3.5, 4, 4, 3.5, 4, 5.5, 0, 0, 4),
('ALDI', 4, 6.8, 6, 5.8, 7, 4.8, 8, 3, 6.5, 0),
('CARREFOUR', 5.5, 5, 4, 5.5, 3.5, 4, 5.5, 0, 0, 7.5),
('DIA', 6, 3, 6, 6, 4, 4, 4.5, 0, 7, 7),
('EL CORTE INGLES', 3.9, 3.5, 4, 4, 3.5, 3, 5.5, 0, 0, 4),
('EROSKI', 6.5, 6.5, 5, 6.4, 5.1, 6, 5.1, 9, 5.1, 9),
('LIDL', 6.5, 4, 4, 4, 3.5, 6.5, 6, 0, 6.5, 9),
('MERCADONA', 5.5, 6.5, 5, 4, 3.5, 7, 3, 3, 5.5, 7);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
