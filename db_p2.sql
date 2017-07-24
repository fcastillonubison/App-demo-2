-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-07-2017 a las 13:22:41
-- Versión del servidor: 5.7.14
-- Versión de PHP: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_p2`
--
CREATE DATABASE IF NOT EXISTS `db_p2` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_p2`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `obras_p2`
--

CREATE TABLE `obras_p2` (
  `id_obras` int(11) NOT NULL,
  `nombre_obras` varchar(100) NOT NULL,
  `direccion_obras` varchar(100) NOT NULL,
  `lat_obras` varchar(30) NOT NULL,
  `long_obras` varchar(30) NOT NULL,
  `foto_obras` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `obras_p2`
--

INSERT INTO `obras_p2` (`id_obras`, `nombre_obras`, `direccion_obras`, `lat_obras`, `long_obras`, `foto_obras`) VALUES
(1, 'Empresas', 'Sara del Campo 535, Santiago', '-33.42686866758875', '-70.61604411710465', 'http://nubisonlab.cl:1580/p2App/img/sky-costanera.jpg'),
(2, 'Empresas 2', 'San Francisco 335, Santiago', '-33.444277', '-70.643448', 'http://nubisonlab.cl:1580/p2App/img/40839.jpg'),
(3, 'Empresa 3', 'Providencia 1650, Santiago', '-33.644277', '-70.843448', 'http://nubisonlab.cl:1580/p2App/img/Waves - Artur Pokusin.jpg'),
(4, 'Empresa 4', 'Providencia 1250, Santiago', '-33.544277', '-70.543448', 'http://nubisonlab.cl:1580/p2App/img/Fantasination 2.jpg'),
(5, 'Empresa 5', 'Providencia 1750, Santiago', '-33.344277', '-70.743448', 'http://nubisonlab.cl:1580/p2App/img/20170707_113026_HDR.jpg'),
(6, 'Empresa 6', 'Providencia 1640, Santiago', '-33.4266746', '-70.6163233', 'http://nubisonlab.cl:1580/p2App/img/IMG-20170720-WA0006.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propiedad_obra`
--

CREATE TABLE `propiedad_obra` (
  `id_prop` int(11) NOT NULL,
  `id_obras` int(11) NOT NULL,
  `hallAcceso` int(5) NOT NULL DEFAULT '0',
  `living` int(5) NOT NULL DEFAULT '0',
  `comedor` int(5) NOT NULL DEFAULT '0',
  `terraza` int(5) NOT NULL DEFAULT '0',
  `dormitorio` int(5) NOT NULL DEFAULT '0',
  `bano` int(5) NOT NULL DEFAULT '0',
  `pasilloDormitorio` int(5) NOT NULL DEFAULT '0',
  `cocina` int(5) NOT NULL DEFAULT '0',
  `loggia` int(5) NOT NULL DEFAULT '0',
  `bodega` int(5) NOT NULL DEFAULT '0',
  `foto_hallAcceso` varchar(100) NOT NULL,
  `foto_living` varchar(100) NOT NULL,
  `foto_comedor` varchar(100) NOT NULL,
  `foto_terraza` varchar(100) NOT NULL,
  `foto_dormitorio` varchar(100) NOT NULL,
  `foto_bano` varchar(100) NOT NULL,
  `foto_pasilloDormitorio` varchar(100) NOT NULL,
  `foto_cocina` varchar(100) NOT NULL,
  `foto_loggia` varchar(100) NOT NULL,
  `foto_bodega` varchar(100) NOT NULL,
  `coment_hallAcceso` text NOT NULL,
  `coment_living` text NOT NULL,
  `coment_comedor` text NOT NULL,
  `coment_terraza` text NOT NULL,
  `coment_dormitorio` text NOT NULL,
  `coment_bano` text NOT NULL,
  `coment_pasilloDormitorio` text NOT NULL,
  `coment_cocina` text NOT NULL,
  `coment_loggia` text NOT NULL,
  `coment_bodega` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `propiedad_obra`
--

INSERT INTO `propiedad_obra` (`id_prop`, `id_obras`, `hallAcceso`, `living`, `comedor`, `terraza`, `dormitorio`, `bano`, `pasilloDormitorio`, `cocina`, `loggia`, `bodega`, `foto_hallAcceso`, `foto_living`, `foto_comedor`, `foto_terraza`, `foto_dormitorio`, `foto_bano`, `foto_pasilloDormitorio`, `foto_cocina`, `foto_loggia`, `foto_bodega`, `coment_hallAcceso`, `coment_living`, `coment_comedor`, `coment_terraza`, `coment_dormitorio`, `coment_bano`, `coment_pasilloDormitorio`, `coment_cocina`, `coment_loggia`, `coment_bodega`) VALUES
(1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', 'Comentario', 'Comentario', 'Comentario', 'Comentario', 'Coment', 'Comentario', 'Coment', 'Coment', 'Coment', 'Comemt'),
(2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'http://nubisonlab.cl:1580/p2App/img/foto-santiago.jpg', 'http://nubisonlab.cl:1580/p2App/img/foto-santiago.jpg', 'http://nubisonlab.cl:1580/p2App/img/foto-santiago.jpg', 'http://nubisonlab.cl:1580/p2App/img/foto-santiago.jpg', 'http://nubisonlab.cl:1580/p2App/img/foto-santiago.jpg', 'http://nubisonlab.cl:1580/p2App/img/foto-santiago.jpg', 'http://nubisonlab.cl:1580/p2App/img/foto-santiago.jpg', 'http://nubisonlab.cl:1580/p2App/img/foto-santiago.jpg', 'http://nubisonlab.cl:1580/p2App/img/foto-santiago.jpg', 'http://nubisonlab.cl:1580/p2App/img/foto-santiago.jpg', 'ca', 'ca', 'ca', 'ca', 'ca', 'ca', 'ca', 'ca', 'ca', 'ca'),
(3, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'http://nubisonlab.cl:1580/p2App/img/fondo.jpg', 'http://nubisonlab.cl:1580/p2App/img/fondo.jpg', 'http://nubisonlab.cl:1580/p2App/img/fondo.jpg', 'http://nubisonlab.cl:1580/p2App/img/fondo.jpg', 'http://nubisonlab.cl:1580/p2App/img/fondo.jpg', 'http://nubisonlab.cl:1580/p2App/img/fondo.jpg', 'http://nubisonlab.cl:1580/p2App/img/fondo.jpg', 'http://nubisonlab.cl:1580/p2App/img/fondo.jpg', 'http://nubisonlab.cl:1580/p2App/img/fondo.jpg', 'http://nubisonlab.cl:1580/p2App/img/fondo.jpg', 'Coment', 'Coment', 'Coment', 'Coment', 'Coment', 'Coment', 'Comenr', 'Coment', 'Comentario', 'Coment');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `obras_p2`
--
ALTER TABLE `obras_p2`
  ADD PRIMARY KEY (`id_obras`);

--
-- Indices de la tabla `propiedad_obra`
--
ALTER TABLE `propiedad_obra`
  ADD PRIMARY KEY (`id_prop`),
  ADD KEY `id_obras` (`id_obras`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `obras_p2`
--
ALTER TABLE `obras_p2`
  MODIFY `id_obras` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `propiedad_obra`
--
ALTER TABLE `propiedad_obra`
  MODIFY `id_prop` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `propiedad_obra`
--
ALTER TABLE `propiedad_obra`
  ADD CONSTRAINT `propiedad_obra_ibfk_1` FOREIGN KEY (`id_obras`) REFERENCES `obras_p2` (`id_obras`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
