-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-11-2025 a las 17:13:33
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `archivo_peliculas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_de_conservacion`
--

CREATE TABLE `estado_de_conservacion` (
  `N_DE_INGRESO` int(12) NOT NULL,
  `CODIGO_ID` varchar(12) NOT NULL,
  `TITULO_ORIGINAL` varchar(100) NOT NULL,
  `SINDROME_DEL_VINAGRE` varchar(40) DEFAULT NULL,
  `DEGRADACION_DE_COLOR` varchar(50) DEFAULT NULL,
  `CRISTALIZACION` varchar(50) DEFAULT NULL,
  `APTA_PROYECCION` varchar(25) DEFAULT NULL,
  `INFORME` varchar(200) DEFAULT NULL,
  `ESTADO` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estado_de_conservacion`
--

INSERT INTO `estado_de_conservacion` (`N_DE_INGRESO`, `CODIGO_ID`, `TITULO_ORIGINAL`, `SINDROME_DEL_VINAGRE`, `DEGRADACION_DE_COLOR`, `CRISTALIZACION`, `APTA_PROYECCION`, `INFORME`, `ESTADO`) VALUES
(1, '0002_alex', 'A la muchacha le gusta tocar la trompetas', 'leve', 'si', 'no', 'Apta para proyeccion', '\"C:\\Users\\user\\source\\repos\\ArchivoPeliculas\\ArchivoPeliculas\\bin\\Debug\\net8.0-windows\\Informes\\297.jpeg', 'Bueno');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingreso`
--

CREATE TABLE `ingreso` (
  `N_DE_INGRESO` int(12) NOT NULL,
  `CODIGO_ID` varchar(100) NOT NULL,
  `TITULO` varchar(100) NOT NULL,
  `FECHA_DE_INGRESO` text DEFAULT NULL,
  `PROCEDENCIA` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ingreso`
--

INSERT INTO `ingreso` (`N_DE_INGRESO`, `CODIGO_ID`, `TITULO`, `FECHA_DE_INGRESO`, `PROCEDENCIA`) VALUES
(1, '0002_alex', 'A la muchacha le gusta tocar la trompetas', '1995-05-10', 'laboratorios Alex'),
(2, '0003_alex', 'A la sombra', '1995-05-10 00:00:00', 'laboratorios Alex'),
(3, '0004_CI', 'Accesos a capital', '1980-05-10 00:00:00', 'INCA'),
(42, '0005_Incaa', 'Mañana seran hombres', '1976-06-10', 'INCAA'),
(45, '00010_Lab', 'tiempo de revancha', '0000-00-00', 'System.Windows.Forms.TextBox, Text: Laboratorio'),
(46, '000020_Incaa', 'Mas alla del olvido', '2021-05-10', 'Laboratorio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingreso_peliculas`
--

CREATE TABLE `ingreso_peliculas` (
  `n°_de_ingreso` int(12) NOT NULL,
  `codigo_ID` varchar(100) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `fecha_de_ingreso` date DEFAULT NULL,
  `procedencia` varchar(100) DEFAULT NULL,
  `paso` varchar(100) DEFAULT NULL,
  `formato` varchar(7) DEFAULT NULL,
  `sonido` varchar(100) DEFAULT NULL,
  `rollos` int(100) DEFAULT NULL,
  `soporte` varchar(100) DEFAULT NULL,
  `emulsion` varchar(50) DEFAULT NULL,
  `tipo_de_material` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inspeccion_tecnica`
--

CREATE TABLE `inspeccion_tecnica` (
  `N_DE_INGRESO` int(12) NOT NULL,
  `CODIGO_ID` varchar(100) NOT NULL,
  `CATEGORIA` varchar(40) DEFAULT NULL,
  `COMP_INCOMP` varchar(15) DEFAULT NULL,
  `TITULO` varchar(100) NOT NULL,
  `CANTIDAD_DE_ROLLOS` int(50) DEFAULT NULL,
  `PASO` varchar(12) DEFAULT NULL,
  `SOPORTE` varchar(50) DEFAULT NULL,
  `EMULSION` varchar(100) DEFAULT NULL,
  `TIPO_DE_MATERIAL` varchar(100) DEFAULT NULL,
  `SONIDO` varchar(100) DEFAULT NULL,
  `FORMATO` varchar(5) DEFAULT NULL,
  `FECHA_DE_FABRICACION` date DEFAULT NULL,
  `FABRICANTE` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inspeccion_tecnica`
--

INSERT INTO `inspeccion_tecnica` (`N_DE_INGRESO`, `CODIGO_ID`, `CATEGORIA`, `COMP_INCOMP`, `TITULO`, `CANTIDAD_DE_ROLLOS`, `PASO`, `SOPORTE`, `EMULSION`, `TIPO_DE_MATERIAL`, `SONIDO`, `FORMATO`, `FECHA_DE_FABRICACION`, `FABRICANTE`) VALUES
(1, '0002_alex', 'Largometraje', 'Completa', 'A la mucha le gusta tocar la trompetas', 5, '35mm', 'Acetato', 'color', 'Positivo', 'mono', '1.66', '2025-10-09', 'kodak');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `obra_artistico_tecnico`
--

CREATE TABLE `obra_artistico_tecnico` (
  `N°_DE_INGRESO` int(12) NOT NULL,
  `Codigo_ID` varchar(100) NOT NULL,
  `TITULO_ORIGINAL` varchar(100) NOT NULL,
  `TITULO_TRADUCIDO` int(100) DEFAULT NULL,
  `DIRECTOR_A` varchar(100) DEFAULT NULL,
  `AÑO_DE_ESTRENO` date DEFAULT NULL,
  `PRODUCTORA` varchar(100) DEFAULT NULL,
  `DERECHOS_DE_EXIBICION` varchar(100) DEFAULT NULL,
  `ACTORES` varchar(200) DEFAULT NULL,
  `TECNICOS` varchar(500) DEFAULT NULL,
  `LUGARES_DE_FILMACION` varchar(100) DEFAULT NULL,
  `GENERO` varchar(50) DEFAULT NULL,
  `FUENTE_DATOS` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estado_de_conservacion`
--
ALTER TABLE `estado_de_conservacion`
  ADD PRIMARY KEY (`N_DE_INGRESO`),
  ADD UNIQUE KEY `CODIGO_ID` (`CODIGO_ID`);

--
-- Indices de la tabla `ingreso`
--
ALTER TABLE `ingreso`
  ADD PRIMARY KEY (`N_DE_INGRESO`),
  ADD UNIQUE KEY `CODIGO_ID` (`CODIGO_ID`);

--
-- Indices de la tabla `ingreso_peliculas`
--
ALTER TABLE `ingreso_peliculas`
  ADD PRIMARY KEY (`n°_de_ingreso`),
  ADD UNIQUE KEY `codigo_ID` (`codigo_ID`);

--
-- Indices de la tabla `inspeccion_tecnica`
--
ALTER TABLE `inspeccion_tecnica`
  ADD PRIMARY KEY (`N_DE_INGRESO`),
  ADD UNIQUE KEY `CODIGO_ID` (`CODIGO_ID`);

--
-- Indices de la tabla `obra_artistico_tecnico`
--
ALTER TABLE `obra_artistico_tecnico`
  ADD PRIMARY KEY (`N°_DE_INGRESO`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `estado_de_conservacion`
--
ALTER TABLE `estado_de_conservacion`
  MODIFY `N_DE_INGRESO` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `ingreso`
--
ALTER TABLE `ingreso`
  MODIFY `N_DE_INGRESO` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de la tabla `ingreso_peliculas`
--
ALTER TABLE `ingreso_peliculas`
  MODIFY `n°_de_ingreso` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `inspeccion_tecnica`
--
ALTER TABLE `inspeccion_tecnica`
  MODIFY `N_DE_INGRESO` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `obra_artistico_tecnico`
--
ALTER TABLE `obra_artistico_tecnico`
  MODIFY `N°_DE_INGRESO` int(12) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `estado_de_conservacion`
--
ALTER TABLE `estado_de_conservacion`
  ADD CONSTRAINT `estado_de_conservacion_ibfk_1` FOREIGN KEY (`N_DE_INGRESO`) REFERENCES `ingreso` (`N_DE_INGRESO`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `estado_de_conservacion_ibfk_2` FOREIGN KEY (`CODIGO_ID`) REFERENCES `ingreso` (`CODIGO_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `inspeccion_tecnica`
--
ALTER TABLE `inspeccion_tecnica`
  ADD CONSTRAINT `inspeccion_tecnica_ibfk_1` FOREIGN KEY (`N_DE_INGRESO`) REFERENCES `ingreso` (`N_DE_INGRESO`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `inspeccion_tecnica_ibfk_2` FOREIGN KEY (`CODIGO_ID`) REFERENCES `ingreso` (`CODIGO_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
