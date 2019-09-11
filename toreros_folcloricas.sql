--
-- Base de datos: `toreros_folcloricas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `folcloricas`
--

DROP TABLE IF EXISTS `folcloricas`;
CREATE TABLE IF NOT EXISTS `folcloricas` (
  `Codigo_folclorica` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `Apellidos` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Fecha de nacimiento` date NOT NULL,
  `Fecha de fallecimiento` date DEFAULT NULL,
  PRIMARY KEY (`Codigo_folclorica`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `folcloricas`
--

INSERT INTO `folcloricas` (`Codigo_folclorica`, `Nombre`, `Apellidos`, `Fecha de nacimiento`, `Fecha de fallecimiento`) VALUES
(1, 'Isabel', 'Pantoja', '1956-08-02', NULL),
(2, 'Rocío', 'Jurado', '1946-09-18', '2006-06-01'),
(3, 'Lola', 'Flores', '1923-01-21', '1995-05-16'),
(4, 'Marifé de Triana', NULL, '1936-09-13', '2013-02-16'),
(5, 'Gracia Montes', NULL, '1933-03-01', NULL),
(6, 'Juanita Reina', NULL, '1925-08-25', '1999-03-19'),
(7, 'María', 'Jiménez', '1950-02-03', NULL),
(8, 'María del Monte', NULL, '1962-04-26', NULL),
(9, 'Carmen Sevilla', NULL, '1930-10-16', NULL),
(10, 'Concha', 'Piquer', '1906-12-13', '1990-12-12'),
(11, 'Estrellita', 'Castro', '1908-06-26', '1983-07-10'),
(12, 'Paquita', 'Rico', '1929-10-13', '2017-07-09'),
(13, 'Marujita Díaz', NULL, '1932-04-27', '2015-06-23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `toreros`
--

DROP TABLE IF EXISTS `toreros`;
CREATE TABLE IF NOT EXISTS `toreros` (
  `Codigo_torero` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `Apellidos` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Fecha de nacimiento` date NOT NULL,
  `Fecha de fallecimiento` date DEFAULT NULL,
  PRIMARY KEY (`Codigo_torero`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `toreros`
--

INSERT INTO `toreros` (`Codigo_torero`, `Nombre`, `Apellidos`, `Fecha de nacimiento`, `Fecha de fallecimiento`) VALUES
(1, 'Manolete', NULL, '1917-07-04', '1947-08-29'),
(2, 'Enrique', 'Ponce', '1971-12-08', NULL),
(3, 'El Juli', NULL, '1982-10-03', NULL),
(4, 'Paquirri', NULL, '1948-03-05', '1984-09-28'),
(5, 'Cayetano', 'Rivera Ordóñez', '1977-01-13', NULL),
(6, 'Morante de la Puebla', NULL, '1979-10-02', NULL),
(7, 'José', 'Tomás', '1975-08-20', NULL),
(8, 'Juan José', 'Padilla', '1973-05-23', NULL),
(9, 'José', 'Ortega Cano', '1953-12-27', NULL),
(10, 'Francisco', 'Rivera Ordóñez', '1975-01-03', NULL),
(11, 'Curro', 'Romero', '1933-12-01', NULL);


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `casamientos_tf`
--

DROP TABLE IF EXISTS `casamientos_tf`;
CREATE TABLE IF NOT EXISTS `casamientos_tf` (
  `Codigo_torero` int(11) NOT NULL,
  `Codigo_folclorica` int(11) NOT NULL,
  PRIMARY KEY (`Codigo_torero`,`Codigo_folclorica`),
  FOREIGN KEY (`Codigo_torero`) REFERENCES `toreros`(`Codigo_torero`),
  FOREIGN KEY (`Codigo_folclorica`) REFERENCES `folcloricas`(`Codigo_folclorica`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Tabla sacada de: http://es.dbpedia.org/';

--
-- Volcado de datos para la tabla `casamientos_tf`
--

INSERT INTO `casamientos_tf` (`Codigo_torero`, `Codigo_folclorica`) VALUES
(4, 1),
(9, 2),
(11, 10);
COMMIT;

