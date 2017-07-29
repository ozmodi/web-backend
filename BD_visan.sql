
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 29-07-2017 a las 18:54:24
-- Versión del servidor: 10.1.22-MariaDB
-- Versión de PHP: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `u236340564_visan`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coach`
--

CREATE TABLE IF NOT EXISTS `coach` (
  `trainer id` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `specialty id` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `patient id` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `first name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `admission date` date NOT NULL,
  `year experience` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`trainer id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `coach`
--

INSERT INTO `coach` (`trainer id`, `specialty id`, `patient id`, `first name`, `gender`, `admission date`, `year experience`) VALUES
('E0001', 'ES001', 'P0003', 'Juan Martín Del Piero', 'M', '1993-10-05', '10'),
('E0002', 'ES001', 'P0005', 'Daniel Orsano Gutierrez', 'M', '1987-05-22', '8');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `comment id` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `patient id` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `publication date` datetime NOT NULL,
  `modification date` datetime NOT NULL,
  `opinion` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL,
  PRIMARY KEY (`comment id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nutritionist`
--

CREATE TABLE IF NOT EXISTS `nutritionist` (
  `nutritionist id` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `specialty id` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `first name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `admission date` date NOT NULL,
  PRIMARY KEY (`nutritionist id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `nutritionist`
--

INSERT INTO `nutritionist` (`nutritionist id`, `specialty id`, `first name`, `gender`, `admission date`) VALUES
('N0001', 'ES002', 'Nidia Muñoz Zúñiga', 'F', '1980-06-13'),
('N0002', 'ES002', 'Karem Soto Bernal', 'F', '1895-03-02'),
('N0003', 'ES002', 'Guillermo Alvarado', 'M', '1990-09-07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `patient`
--

CREATE TABLE IF NOT EXISTS `patient` (
  `patient id` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `first name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `age` tinyint(4) NOT NULL,
  `birthdate` datetime NOT NULL,
  `gender` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `dni` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`patient id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `patient`
--

INSERT INTO `patient` (`patient id`, `first name`, `last name`, `age`, `birthdate`, `gender`, `dni`) VALUES
('P0002', 'Jose Luis', 'Alarcon Garcia', 28, '1989-05-17 10:15:38', 'M', '45325698'),
('P0001', 'Ana Lucia', 'Flores Nano', 25, '1998-05-12 04:11:06', 'F', '42536587'),
('P0003', 'Antonio', 'Leyva de la cruz', 37, '1980-02-05 13:39:46', 'M', '49586245'),
('P0004', 'Maria Luisa', 'Perez Abanto', 41, '1976-03-22 06:23:28', 'F', '41250365'),
('P0005', 'Yolanda J.', 'Cabrejos Mendez', 33, '1984-09-14 16:41:40', 'F', '43526589');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schedule`
--

CREATE TABLE IF NOT EXISTS `schedule` (
  `patient_id` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `hourly income` time NOT NULL,
  `departure time` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `schedule`
--

INSERT INTO `schedule` (`patient_id`, `hourly income`, `departure time`) VALUES
('P0002', '07:30:00', '15:00:00'),
('P0001', '09:45:00', '13:15:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `specialty`
--

CREATE TABLE IF NOT EXISTS `specialty` (
  `specialty id` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`specialty id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `specialty`
--

INSERT INTO `specialty` (`specialty id`, `description`) VALUES
('ES001', 'El desempeño del coach exige el desarrollo de habilidades para diseñar e implementar cursos y entrenamientos para grupos tanto a nivel personal como coorporativo.'),
('ES002', 'El desempeño del profesional se encargara del segumiento del paciente sobre su alimentacion y elaborara un plan de alimentacion y horario que tendra que adecuarse.');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
