-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: db
-- Tiempo de generación: 02-12-2022 a las 00:44:34
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `base`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Basic`
--

CREATE TABLE `Basic` (
  `drive_train` varchar(50) DEFAULT NULL,
  `mpg` varchar(20) DEFAULT NULL,
  `stock_num` bigint DEFAULT NULL,
  `transmission` varchar(50) DEFAULT NULL,
  `engine` varchar(50) DEFAULT NULL,
  `fuel_type` int NOT NULL,
  `mileage` bigint NOT NULL,
  `external_color` int NOT NULL,
  `internal_color` int NOT NULL,
  `basic_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Cars`
--

CREATE TABLE `Cars` (
  `car_id` int NOT NULL,
  `vin` varchar(50) DEFAULT NULL,
  `year` int NOT NULL,
  `brand` varchar(20) NOT NULL,
  `model` varchar(20) NOT NULL,
  `price` double NOT NULL,
  `used` tinyint NOT NULL COMMENT 'true is used, new is false',
  `style_id` int NOT NULL,
  `basic_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Car_Features`
--

CREATE TABLE `Car_Features` (
  `car_id` int NOT NULL,
  `feature_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Color`
--

CREATE TABLE `Color` (
  `color_id` int NOT NULL,
  `color_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Features`
--

CREATE TABLE `Features` (
  `feature_id` int NOT NULL,
  `feature_name` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Fuel_Type`
--

CREATE TABLE `Fuel_Type` (
  `fuel_id` int NOT NULL,
  `fuel_type_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Style`
--

CREATE TABLE `Style` (
  `style_id` int NOT NULL,
  `style_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Basic`
--
ALTER TABLE `Basic`
  ADD PRIMARY KEY (`basic_id`),
  ADD KEY `FK_color_interior` (`internal_color`),
  ADD KEY `FK_color_exterior` (`external_color`),
  ADD KEY `FK_fuel_type` (`fuel_type`);

--
-- Indices de la tabla `Cars`
--
ALTER TABLE `Cars`
  ADD PRIMARY KEY (`car_id`),
  ADD KEY `FK_style_car` (`style_id`),
  ADD KEY `FK_basic_car` (`basic_id`);

--
-- Indices de la tabla `Car_Features`
--
ALTER TABLE `Car_Features`
  ADD PRIMARY KEY (`car_id`,`feature_id`),
  ADD KEY `FK_feature_id` (`feature_id`);

--
-- Indices de la tabla `Color`
--
ALTER TABLE `Color`
  ADD PRIMARY KEY (`color_id`);

--
-- Indices de la tabla `Features`
--
ALTER TABLE `Features`
  ADD PRIMARY KEY (`feature_id`);

--
-- Indices de la tabla `Fuel_Type`
--
ALTER TABLE `Fuel_Type`
  ADD PRIMARY KEY (`fuel_id`);

--
-- Indices de la tabla `Style`
--
ALTER TABLE `Style`
  ADD PRIMARY KEY (`style_id`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Basic`
--
ALTER TABLE `Basic`
  ADD CONSTRAINT `FK_color_exterior` FOREIGN KEY (`external_color`) REFERENCES `Color` (`color_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_color_interior` FOREIGN KEY (`internal_color`) REFERENCES `Color` (`color_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_fuel_type` FOREIGN KEY (`fuel_type`) REFERENCES `Fuel_Type` (`fuel_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `Cars`
--
ALTER TABLE `Cars`
  ADD CONSTRAINT `FK_basic_car` FOREIGN KEY (`basic_id`) REFERENCES `Basic` (`basic_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_style_car` FOREIGN KEY (`style_id`) REFERENCES `Style` (`style_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `Car_Features`
--
ALTER TABLE `Car_Features`
  ADD CONSTRAINT `FK_car_id` FOREIGN KEY (`car_id`) REFERENCES `Cars` (`car_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_feature_id` FOREIGN KEY (`feature_id`) REFERENCES `Features` (`feature_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
