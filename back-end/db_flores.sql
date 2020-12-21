-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-12-2020 a las 00:34:03
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_flores`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`category_id`, `name`) VALUES
(1, 'Flower'),
(2, 'Cosmetic');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cosmetics`
--

CREATE TABLE `cosmetics` (
  `cosmetic_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `detail` varchar(255) NOT NULL,
  `clearence` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cosmetics`
--

INSERT INTO `cosmetics` (`cosmetic_id`, `type_id`, `name`, `price`, `detail`, `clearence`) VALUES
(1, 4, 'Mantra chu', 351, 'Ha ca cadbc ac', 1),
(2, 3, 'Gelific suam', 984, 'Hs ah cadh cadshcahschas  a', 1),
(3, 5, 'Mask ast', 6544, 'Hascjka bdicb aksdcoa o a coa coa ', 1),
(4, 3, 'Geltrum', 123, 'Gasda iaud iad cai ', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cosmetics_types`
--

CREATE TABLE `cosmetics_types` (
  `cosmetic_type_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cosmetics_types`
--

INSERT INTO `cosmetics_types` (`cosmetic_type_id`, `category_id`, `name`) VALUES
(1, 2, 'Spray'),
(2, 2, 'Suspension'),
(3, 2, 'Gel'),
(4, 2, 'Foam'),
(5, 2, 'Solid');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `flowers`
--

CREATE TABLE `flowers` (
  `flower_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `clearence` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `flowers`
--

INSERT INTO `flowers` (`flower_id`, `type_id`, `clearence`) VALUES
(1, 5, 1),
(2, 5, 1),
(3, 2, 1),
(4, 2, 1),
(5, 4, 1),
(6, 4, 1),
(7, 4, 1),
(8, 1, 1),
(9, 3, 1),
(10, 3, 1),
(11, 3, 1),
(12, 3, 1),
(13, 3, 1),
(14, 3, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `flowers_types`
--

CREATE TABLE `flowers_types` (
  `flower_type_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `detail` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `flowers_types`
--

INSERT INTO `flowers_types` (`flower_type_id`, `category_id`, `name`, `price`, `detail`) VALUES
(1, 1, 'Margarita', 150, 'Margiada as cac adscasrvaa a ad d d sc ddsdcs'),
(2, 1, 'Lavanda', 3215, 'Hasjacis cs csiuchs ivf vid fi'),
(3, 1, 'Rosa', 651, 'Ssa aodc aodsuc idsauc dsicni'),
(4, 1, 'Lúpulo', 651, 'Sadc dc as e we'),
(5, 1, 'Claribel', 6415, 'Sascoi adcanefae a ca  ea cw ec a ca');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `clearence` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indices de la tabla `cosmetics`
--
ALTER TABLE `cosmetics`
  ADD PRIMARY KEY (`cosmetic_id`),
  ADD KEY `type_id` (`type_id`);

--
-- Indices de la tabla `cosmetics_types`
--
ALTER TABLE `cosmetics_types`
  ADD PRIMARY KEY (`cosmetic_type_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indices de la tabla `flowers`
--
ALTER TABLE `flowers`
  ADD PRIMARY KEY (`flower_id`),
  ADD KEY `type_id` (`type_id`);

--
-- Indices de la tabla `flowers_types`
--
ALTER TABLE `flowers_types`
  ADD PRIMARY KEY (`flower_type_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cosmetics`
--
ALTER TABLE `cosmetics`
  MODIFY `cosmetic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `cosmetics_types`
--
ALTER TABLE `cosmetics_types`
  MODIFY `cosmetic_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `flowers`
--
ALTER TABLE `flowers`
  MODIFY `flower_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `flowers_types`
--
ALTER TABLE `flowers_types`
  MODIFY `flower_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cosmetics`
--
ALTER TABLE `cosmetics`
  ADD CONSTRAINT `cosmetics_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `cosmetics_types` (`cosmetic_type_id`);

--
-- Filtros para la tabla `cosmetics_types`
--
ALTER TABLE `cosmetics_types`
  ADD CONSTRAINT `cosmetics_types_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`);

--
-- Filtros para la tabla `flowers`
--
ALTER TABLE `flowers`
  ADD CONSTRAINT `flowers_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `flowers_types` (`flower_type_id`);

--
-- Filtros para la tabla `flowers_types`
--
ALTER TABLE `flowers_types`
  ADD CONSTRAINT `flowers_types_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
