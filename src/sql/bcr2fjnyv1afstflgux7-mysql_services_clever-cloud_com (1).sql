-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: bcr2fjnyv1afstflgux7-mysql.services.clever-cloud.com:3306
-- Generation Time: Nov 06, 2020 at 04:42 PM
-- Server version: 8.0.15-5
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bcr2fjnyv1afstflgux7`
--
CREATE DATABASE IF NOT EXISTS `bcr2fjnyv1afstflgux7` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `bcr2fjnyv1afstflgux7`;

-- --------------------------------------------------------

--
-- Table structure for table `RECORDATORIO`
--

CREATE TABLE `RECORDATORIO` (
  `ID` int(10) UNSIGNED NOT NULL,
  `HORA` int(11) NOT NULL,
  `DIA` varchar(100) NOT NULL,
  `RUTINA` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `RUTINAS`
--

CREATE TABLE `RUTINAS` (
  `ID` int(10) UNSIGNED NOT NULL,
  `NOMBRE` varchar(100) NOT NULL,
  `DIFICULTAD` varchar(100) NOT NULL,
  `DESCRIPCION` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `USUARIO`
--

CREATE TABLE `USUARIO` (
  `USUARIO` int(100) UNSIGNED NOT NULL,
  `NOMBRE_COMPLETO` varchar(100) NOT NULL,
  `CORREO` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `USUARIO_RUTINA`
--

CREATE TABLE `USUARIO_RUTINA` (
  `ID_USUARIO` int(10) UNSIGNED NOT NULL,
  `ID_RUTINA` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `RECORDATORIO`
--
ALTER TABLE `RECORDATORIO`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `RUTINA` (`RUTINA`);

--
-- Indexes for table `RUTINAS`
--
ALTER TABLE `RUTINAS`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `USUARIO`
--
ALTER TABLE `USUARIO`
  ADD PRIMARY KEY (`USUARIO`);

--
-- Indexes for table `USUARIO_RUTINA`
--
ALTER TABLE `USUARIO_RUTINA`
  ADD PRIMARY KEY (`ID_USUARIO`,`ID_RUTINA`),
  ADD KEY `ID_RUTINA` (`ID_RUTINA`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `RECORDATORIO`
--
ALTER TABLE `RECORDATORIO`
  ADD CONSTRAINT `RECORDATORIO_ibfk_1` FOREIGN KEY (`RUTINA`) REFERENCES `RUTINAS` (`ID`);

--
-- Constraints for table `USUARIO_RUTINA`
--
ALTER TABLE `USUARIO_RUTINA`
  ADD CONSTRAINT `USUARIO_RUTINA_ibfk_1` FOREIGN KEY (`ID_USUARIO`) REFERENCES `USUARIO` (`USUARIO`),
  ADD CONSTRAINT `USUARIO_RUTINA_ibfk_2` FOREIGN KEY (`ID_RUTINA`) REFERENCES `RUTINAS` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
