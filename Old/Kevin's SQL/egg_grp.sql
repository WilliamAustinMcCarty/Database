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
-- Table structure for table `egg_grp`
--

CREATE TABLE `egg_grp` (
  `natl_dex` int(11) DEFAULT NULL,
  `varience` varchar(256) DEFAULT NULL,
  `egg_grp` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `egg_grp`
--

INSERT INTO `egg_grp` (`natl_dex`, `varience`, `egg_grp`) VALUES
(51, 'default', 'Field'),
(52, 'default', 'Field'),
(53, 'default', 'Field'),
(54, 'default', 'Water 1'),
(54, 'default', 'Field'),
(55, 'default', 'Water 1'),
(55, 'default', 'Field'),
(56, 'default', 'Field'),
(57, 'default', 'Field'),
(58, 'default', 'Field'),
(59, 'default', 'Field'),
(60, 'default', 'Water 1'),
(61, 'default', 'Water 1'),
(62, 'default', 'Water 1'),
(63, 'default', 'Human-Like'),
(64, 'default', 'Human-Like'),
(65, 'default', 'Human-Like'),
(66, 'default', 'Human-Like'),
(67, 'default', 'Human-Like'),
(68, 'default', 'Human-Like'),
(69, 'default', 'Grass'),
(70, 'default', 'Grass'),
(71, 'default', 'Grass'),
(72, 'default', 'Water 3'),
(73, 'default', 'Water 3'),
(74, 'default', 'Mineral'),
(75, 'default', 'Mineral'),
(76, 'default', 'Mineral'),
(77, 'default', 'Field'),
(78, 'default', 'Field'),
(79, 'default', 'Monster'),
(79, 'default', 'Water 1'),
(80, 'default', 'Monster'),
(80, 'default', 'Water 1'),
(81, 'default', 'Mineral'),
(82, 'default', 'Mineral'),
(83, 'default', 'Flying'),
(83, 'default', 'Field'),
(84, 'default', 'Flying'),
(85, 'default', 'Flying'),
(86, 'default', 'Water 1'),
(86, 'default', 'Field'),
(87, 'default', 'Water 1'),
(87, 'default', 'Field'),
(88, 'default', 'Amorphous'),
(89, 'default', 'Amorphous'),
(90, 'default', 'Water 3'),
(91, 'default', 'Water 3'),
(92, 'default', 'Amorphous'),
(93, 'default', 'Amorphous'),
(94, 'default', 'Amorphous'),
(95, 'default', 'Mineral'),
(96, 'default', 'Human-Like'),
(97, 'default', 'Human-Like'),
(98, 'default', 'Water 3'),
(99, 'default', 'Water 3'),
(100, 'default', 'Mineral');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
