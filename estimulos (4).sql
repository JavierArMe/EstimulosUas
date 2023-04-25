-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-04-2023 a las 01:54:14
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `estimulos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `archivosusuarios`
--

CREATE TABLE `archivosusuarios` (
  `id` int(11) NOT NULL,
  `idsubcategoria` int(11) NOT NULL,
  `nombreusuario` varchar(250) NOT NULL,
  `nombreArchivo` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `estatus` varchar(250) NOT NULL,
  `emailarevisar` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `archivosusuarios`
--

INSERT INTO `archivosusuarios` (`id`, `idsubcategoria`, `nombreusuario`, `nombreArchivo`, `email`, `estatus`, `emailarevisar`) VALUES
(1, 1, 'Jami Asera', 'estim2prueba@gmail.com111101533747112022.pdf', 'estim2prueba@gmail.com', 'Alta', '1uas.edu.mx@gmail.com'),
(2, 2, 'Jami Asera', 'estim2prueba@gmail.com11120159384722023.pdf', 'estim2prueba@gmail.com', 'CANCELADO', ''),
(3, 2, 'Jami Asera', 'estim2prueba@gmail.com111201552539722023.pdf', 'estim2prueba@gmail.com', 'ACEPTADO', ''),
(4, 2, 'sadsad sadaasd', '1uas.edu.mx@gmail.com1112016354131632023.pdf', '1uas.edu.mx@gmail.com', 'ACEPTADO', 'estim2prueba@gmail.com'),
(8, 1, 'prueba', 'prueba', 'prueba@gmail.com', 'Alta', '1uas.edu.mx@gmail.com'),
(9, 2, 'we', 'we', 'wea@gmail.com', 'ACEPTADO', '1uas.edu.mx@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `subfactorid` int(11) NOT NULL,
  `categoria` varchar(250) NOT NULL,
  `estatus` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `subfactorid`, `categoria`, `estatus`) VALUES
(1, 1, 'Habilitacion', 1),
(2, 2, 'Calidad del desempeño docente evaluado por los estudiantes', 1),
(3, 2, 'Material  Didáctico', 1),
(4, 2, 'Planes y Programas', 1),
(5, 2, 'Practicas Innovadoras para el aprendizaje', 1),
(6, 2, 'Distinciones  al trabajo docente', 1),
(7, 2, 'Otros Indicadores de Calidad', 1),
(8, 9, 'pr1', 1),
(9, 40, 'prueba', 1),
(10, 40, 'wertas', 1),
(11, 40, 'qas', 1),
(12, 40, 'erty', 1),
(13, 39, 'cxvxc', 1),
(14, 39, 'xcvcxv', 1),
(15, 30, 'qwert', 1),
(16, 41, 'prueba4', 1),
(17, 42, 'Asignatura', 1),
(18, 43, 'prueba8', 1),
(19, 44, 'probando', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `emailsregistrados`
--

CREATE TABLE `emailsregistrados` (
  `id` int(11) NOT NULL,
  `emailreg` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `emailsregistrados`
--

INSERT INTO `emailsregistrados` (`id`, `emailreg`) VALUES
(5, '1uas.edu.mx@gmail.com'),
(6, 'estim2prueba@gmail.com'),
(7, 'prueba@gmail.com'),
(8, 'wea@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factores`
--

CREATE TABLE `factores` (
  `id` int(11) NOT NULL,
  `factor` varchar(250) NOT NULL,
  `estatus` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `factores`
--

INSERT INTO `factores` (`id`, `factor`, `estatus`) VALUES
(1, 'Calidad', 1),
(2, 'Dedicacion', 1),
(3, 'Permanencia', 1),
(4, 'Prueba', 1),
(5, 'Prueba2', 1),
(6, 'Prueba3', 1),
(7, 'Prueba4', 1),
(8, 'Antiguedad', 1),
(9, 'prueba5', 1),
(10, 'prueba6', 1),
(11, 'prueba7', 1),
(12, 'prueba8', 1),
(13, 'prueba9', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puntajeyverficacion`
--

CREATE TABLE `puntajeyverficacion` (
  `id` int(11) NOT NULL,
  `subcategoriaid` int(11) NOT NULL,
  `puntaje` int(11) NOT NULL,
  `medioverifi` varchar(250) NOT NULL,
  `estatus` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `puntajeyverficacion`
--

INSERT INTO `puntajeyverficacion` (`id`, `subcategoriaid`, `puntaje`, `medioverifi`, `estatus`) VALUES
(1, 1, 100, 'Título profesional o acta de examen de grado', 1),
(2, 3, 10, 'der', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puntajeyverficiacion`
--

CREATE TABLE `puntajeyverficiacion` (
  `id` int(11) NOT NULL,
  `subcategoriaid` int(11) NOT NULL,
  `puntaje` int(11) NOT NULL,
  `medioverifi` varchar(250) NOT NULL,
  `estatus` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategorias`
--

CREATE TABLE `subcategorias` (
  `id` int(11) NOT NULL,
  `categoriaid` int(11) NOT NULL,
  `subcategoria` varchar(250) NOT NULL,
  `puntaje` int(11) NOT NULL,
  `limitarch` int(11) NOT NULL,
  `medioverifi` varchar(250) NOT NULL,
  `estatus` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `subcategorias`
--

INSERT INTO `subcategorias` (`id`, `categoriaid`, `subcategoria`, `puntaje`, `limitarch`, `medioverifi`, `estatus`) VALUES
(1, 1, 'Doctorado', 100, 1, 'Titulo', 1),
(2, 1, ' Cursos de actualización  disciplinaria con evaluación (más de 25  horas)', 5, 6, 'Se comprobará con constancia de la instancia académica pertinente', 1),
(3, 15, 'qwed', 50, 2, 'ret', 1),
(4, 16, 'prueba4', 10, 2, 'prueba4', 1),
(5, 17, '30 horas base', 50, 1, 'Nombramiento', 1),
(6, 19, 'palitos y bolitas', 10, 2, 'constancia', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subfactores`
--

CREATE TABLE `subfactores` (
  `id` int(11) NOT NULL,
  `factorid` int(11) NOT NULL,
  `subfactor` varchar(250) NOT NULL,
  `limitpuntos` int(11) NOT NULL,
  `estatus` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `subfactores`
--

INSERT INTO `subfactores` (`id`, `factorid`, `subfactor`, `limitpuntos`, `estatus`) VALUES
(1, 1, 'Formacion-Actualizacion (limite 100 puntos)', 100, 1),
(2, 1, 'Docencia (limite 150 puntos)', 0, 1),
(3, 1, 'Investigacion (limite 150 puntos)', 0, 1),
(4, 1, 'Tutorias (limite 100 puntos)', 0, 1),
(5, 1, 'Vida Colegiada (limite 100 puntos)', 0, 1),
(6, 2, 'Dociencia frente a grupo (limite 300 puntos)', 0, 1),
(7, 3, 'Permanencia (limite 100 puntos)', 0, 1),
(8, 4, 'prueba', 0, 1),
(9, 4, 'prueba1', 0, 1),
(10, 5, 'prueba22', 1, 1),
(11, 5, 'pr1', 0, 1),
(12, 5, 'pr1', 0, 1),
(13, 5, 'pr2', 0, 1),
(14, 5, 'asd', 0, 1),
(15, 5, 'dsffddda', 1, 1),
(16, 5, 'rty', 0, 1),
(17, 5, 'erw', 0, 1),
(18, 5, 'sdf', 0, 1),
(19, 6, 'vb', 0, 1),
(20, 5, 'cxcmd', 0, 1),
(21, 6, 'qwerty', 0, 1),
(22, 5, 'xcvxz', 0, 1),
(23, 5, 'gfgfgf', 0, 1),
(24, 6, 'cddd', 0, 1),
(25, 5, 'vcb', 0, 1),
(26, 4, 'xcz', 0, 1),
(27, 6, 'xcvxx', 0, 1),
(28, 5, 'gbgvcb', 0, 1),
(29, 5, 'gfgf', 0, 1),
(30, 4, 'qqqq', 0, 1),
(31, 6, 'cxzv', 0, 1),
(32, 1, 'hvbbv', 0, 1),
(33, 1, 'hhh', 0, 1),
(34, 6, 'bhbv', 0, 1),
(35, 4, 'qwerty', 0, 1),
(36, 4, 'asdasd', 0, 1),
(37, 6, 'rert', 0, 1),
(38, 5, 'cvcv', 0, 1),
(39, 5, 'sdad', 0, 1),
(40, 5, 'wer', 0, 1),
(41, 7, 'Prueba4', 10, 1),
(42, 8, 'Profesor', 50, 1),
(43, 12, 'prueba8', 1, 1),
(44, 13, 'prueba91', 30, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `archivosusuarios`
--
ALTER TABLE `archivosusuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `emailsregistrados`
--
ALTER TABLE `emailsregistrados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `factores`
--
ALTER TABLE `factores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `puntajeyverficacion`
--
ALTER TABLE `puntajeyverficacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `puntajeyverficiacion`
--
ALTER TABLE `puntajeyverficiacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subfactores`
--
ALTER TABLE `subfactores`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `archivosusuarios`
--
ALTER TABLE `archivosusuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `emailsregistrados`
--
ALTER TABLE `emailsregistrados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `factores`
--
ALTER TABLE `factores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `puntajeyverficacion`
--
ALTER TABLE `puntajeyverficacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `puntajeyverficiacion`
--
ALTER TABLE `puntajeyverficiacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `subfactores`
--
ALTER TABLE `subfactores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
