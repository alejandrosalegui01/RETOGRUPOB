-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-11-2023 a las 10:02:49
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `euskultura`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `IDeventos` int(11) NOT NULL,
  `Nombre` varchar(120) NOT NULL,
  `Fecha` date NOT NULL,
  `Lugar` varchar(120) NOT NULL,
  `IDusuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona_salas`
--

CREATE TABLE `persona_salas` (
  `ID_usuario` int(11) NOT NULL,
  `ID_salas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `poniente`
--

CREATE TABLE `poniente` (
  `IDponiente` int(11) NOT NULL,
  `Nombre_poniente` varchar(120) NOT NULL,
  `Apellidos` varchar(120) NOT NULL,
  `Pais` varchar(120) NOT NULL,
  `Telefono` int(11) NOT NULL,
  `Correo_electronico` int(11) NOT NULL,
  `Domicilio` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `poniente_eventos`
--

CREATE TABLE `poniente_eventos` (
  `ID_poniente` int(11) NOT NULL,
  `ID_eventos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salas`
--

CREATE TABLE `salas` (
  `IDsalas` int(11) NOT NULL,
  `Capacidad` int(11) NOT NULL,
  `IDeventos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `IDusuario` int(11) NOT NULL,
  `Nombre` varchar(120) NOT NULL,
  `Apellidos` varchar(120) NOT NULL,
  `Telefono` int(11) NOT NULL,
  `Fecha_nacimiento` date NOT NULL,
  `Domicilio` varchar(120) NOT NULL,
  `Correo_electronico` varchar(120) NOT NULL,
  `Contrasena` varchar(120) NOT NULL,
  `Condiciones` text NOT NULL,
  `EladioCarrion` text NOT NULL,
  `Motociclismo` text NOT NULL,
  `Gamergy` text NOT NULL,
  `ReyLeon` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`IDusuario`, `Nombre`, `Apellidos`, `Telefono`, `Fecha_nacimiento`, `Domicilio`, `Correo_electronico`, `Contrasena`, `Condiciones`, `EladioCarrion`, `Motociclismo`, `Gamergy`, `ReyLeon`) VALUES
(48, 'Alejandro', 'Martinez Lopez', 640809543, '2000-06-15', 'Donostia ', 'alealemartilo@gmail.com', 'erty345/re', 'on', 'on', 'on', 'on', 'on'),
(49, 'David', 'Romero Peñalva', 99236518, '2001-06-12', 'Egia', 'romeropenalva@hotmail.com', 'sadasdasdasd', 'on', '', 'on', '', ''),
(50, 'Erick ', 'Guzman Cruz', 640850804, '2000-02-09', 'Bergara', 'er.guzman@aulanz.net', '123swdef1243', 'on', '', 'on', 'on', ''),
(51, 'Kevin ', 'Lopez Hernandez', 640543123, '2002-11-11', 'Alza', 'kevileher@gmail.com', 'oiunvmd12', 'on', 'on', '', '', ''),
(52, 'alejandro', 'rebollo salegui', 678543918, '2006-02-14', 'avenida de navarra', 'al.rebollo@aulanz.net', 'uhfduysu369873', 'on', 'on', 'on', 'on', 'on'),
(53, 'eric', 'guzman', 678565897, '1999-02-03', 'oiartzun', 'er.guzman@aulanz.net', '87894ijifjug7t854', 'on', 'on', '', '', 'on'),
(54, 'alex', 'azpiazu', 564729085, '2001-03-15', 'Madrid', 'ae.irastorza@aulanz.net', '757hfdg87', 'on', 'on', '', '', ''),
(56, 'julen ', 'salinas', 876945321, '2010-06-09', 'sevilla', 'jl.salinas@aulanz.net', '86645663456ghuu', 'on', 'on', 'on', 'on', ''),
(57, 'Xabi', 'Fernandez', 648769634, '2004-03-31', 'irun', 'xa.fernandez@aulanz.net', 'Xabi', 'on', 'on', 'on', '', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`IDeventos`),
  ADD KEY `IDusuario` (`IDusuario`);

--
-- Indices de la tabla `persona_salas`
--
ALTER TABLE `persona_salas`
  ADD KEY `IDpersona` (`ID_usuario`),
  ADD KEY `ID_salas` (`ID_salas`);

--
-- Indices de la tabla `poniente`
--
ALTER TABLE `poniente`
  ADD PRIMARY KEY (`IDponiente`);

--
-- Indices de la tabla `poniente_eventos`
--
ALTER TABLE `poniente_eventos`
  ADD KEY `ID_poniente` (`ID_poniente`),
  ADD KEY `ID_eventos` (`ID_eventos`);

--
-- Indices de la tabla `salas`
--
ALTER TABLE `salas`
  ADD PRIMARY KEY (`IDsalas`),
  ADD UNIQUE KEY `IDeventos` (`IDeventos`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`IDusuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `IDeventos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `poniente`
--
ALTER TABLE `poniente`
  MODIFY `IDponiente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `salas`
--
ALTER TABLE `salas`
  MODIFY `IDsalas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `IDusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD CONSTRAINT `eventos_ibfk_1` FOREIGN KEY (`IDusuario`) REFERENCES `usuario` (`IDusuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `persona_salas`
--
ALTER TABLE `persona_salas`
  ADD CONSTRAINT `persona_salas_ibfk_1` FOREIGN KEY (`ID_usuario`) REFERENCES `usuario` (`IDusuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `persona_salas_ibfk_2` FOREIGN KEY (`ID_salas`) REFERENCES `salas` (`IDsalas`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `poniente_eventos`
--
ALTER TABLE `poniente_eventos`
  ADD CONSTRAINT `poniente_eventos_ibfk_1` FOREIGN KEY (`ID_eventos`) REFERENCES `eventos` (`IDeventos`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `poniente_eventos_ibfk_2` FOREIGN KEY (`ID_poniente`) REFERENCES `poniente` (`IDponiente`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
