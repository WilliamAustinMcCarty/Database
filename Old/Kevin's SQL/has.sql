-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2022 at 12:41 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kevin`
--

-- --------------------------------------------------------

--
-- Table structure for table `has`
--

CREATE TABLE `has` (
  `natl_dex` int(11) DEFAULT NULL,
  `varience` varchar(256) DEFAULT NULL,
  `type` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `has`
--

INSERT INTO `has` (`natl_dex`, `varience`, `type`) VALUES
(51, 'default', 'ground'),
(52, 'default', 'normal'),
(53, 'default', 'normal'),
(54, 'default', 'water'),
(55, 'default', 'water'),
(56, 'default', 'fighting'),
(57, 'default', 'fighting'),
(58, 'default', 'fire'),
(59, 'default', 'fire'),
(60, 'default', 'water'),
(61, 'default', 'water'),
(62, 'default', 'water'),
(62, 'default', 'fighting'),
(63, 'default', 'psychic'),
(64, 'default', 'psychic'),
(65, 'default', 'psychic'),
(66, 'default', 'fighting'),
(67, 'default', 'fighting'),
(68, 'default', 'fighting'),
(69, 'default', 'grass'),
(69, 'default', 'poison'),
(70, 'default', 'grass'),
(70, 'default', 'poison'),
(71, 'default', 'grass'),
(71, 'default', 'poison'),
(72, 'default', 'water'),
(72, 'default', 'poison'),
(73, 'default', 'water'),
(73, 'default', 'poison'),
(74, 'default', 'rock'),
(74, 'default', 'ground'),
(75, 'default', 'rock'),
(75, 'default', 'ground'),
(76, 'default', 'rock'),
(76, 'default', 'ground'),
(77, 'default', 'fire'),
(78, 'default', 'fire'),
(79, 'default', 'water'),
(79, 'default', 'psychic'),
(80, 'default', 'water'),
(80, 'default', 'psychic'),
(81, 'default', 'electric'),
(81, 'default', 'steel'),
(82, 'default', 'electric'),
(82, 'default', 'steel'),
(83, 'default', 'normal'),
(83, 'default', 'flying'),
(84, 'default', 'normal'),
(84, 'default', 'flying'),
(85, 'default', 'normal'),
(85, 'default', 'flying'),
(86, 'default', 'water'),
(87, 'default', 'water'),
(87, 'default', 'ice'),
(88, 'default', 'poison'),
(89, 'default', 'poison'),
(90, 'default', 'water'),
(91, 'default', 'water'),
(91, 'default', 'ice'),
(92, 'default', 'ghost'),
(92, 'default', 'poison'),
(93, 'default', 'ghost'),
(93, 'default', 'poison'),
(94, 'default', 'ghost'),
(94, 'default', 'poison'),
(95, 'default', 'rock'),
(95, 'default', 'ground'),
(96, 'default', 'psychic'),
(97, 'default', 'psychic'),
(98, 'default', 'water'),
(99, 'default', 'water'),
(100, 'default', 'electric');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
