-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 17, 2022 at 10:46 AM
-- Server version: 10.3.28-MariaDB
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wam5pxw`
--

-- --------------------------------------------------------

--
-- Table structure for table `chooseteam`
--

CREATE TABLE IF NOT EXISTS `chooseteam` (
  `gmail` varchar(256) CHARACTER SET latin1 NOT NULL,
  `natl_dex` int(11) NOT NULL,
  `variance` varchar(256) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chooseteam`
--

INSERT INTO `chooseteam` (`gmail`, `natl_dex`, `variance`) VALUES
('testuser@gmail.com', 1, 'Default');

-- --------------------------------------------------------

--
-- Table structure for table `egg_grp`
--

CREATE TABLE IF NOT EXISTS `egg_grp` (
  `natl_dex` int(3) NOT NULL,
  `variance` varchar(256) NOT NULL,
  `egg_grp` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `egg_grp`
--

INSERT INTO `egg_grp` (`natl_dex`, `variance`, `egg_grp`) VALUES
(1, 'Default', 'Grass'),
(1, 'Default', 'Monster'),
(2, 'Default', 'Grass'),
(2, 'Default', 'Monster'),
(3, 'Default', 'Grass'),
(3, 'Default', 'Monster'),
(4, 'Default', 'Dragon'),
(4, 'Default', 'Monster'),
(5, 'Default', 'Dragon'),
(5, 'Default', 'Monster'),
(6, 'Default', 'Dragon'),
(6, 'Default', 'Monster'),
(7, 'Default', 'Monster'),
(7, 'Default', 'Water 1'),
(8, 'Default', 'Monster'),
(8, 'Default', 'Water 1'),
(9, 'Default', 'Monster'),
(9, 'Default', 'Water 1'),
(10, 'Default', 'Bug'),
(11, 'Default', 'Bug'),
(12, 'Default', 'Bug'),
(13, 'Default', 'Bug'),
(14, 'Default', 'Bug'),
(15, 'Default', 'Bug'),
(16, 'Default', 'Flying'),
(17, 'Default', 'Flying'),
(18, 'Default', 'Flying'),
(19, 'Default', 'Field'),
(20, 'Default', 'Field'),
(21, 'Default', 'Flying'),
(22, 'Default', 'Flying'),
(23, 'Default', 'Dragon'),
(23, 'Default', 'Field'),
(24, 'Default', 'Dragon'),
(24, 'Default', 'Field'),
(25, 'Default', 'Fairy'),
(25, 'Default', 'Field'),
(26, 'Default', 'Fairy'),
(26, 'Default', 'Field'),
(27, 'Default', 'Field'),
(28, 'Default', 'Field'),
(29, 'Default', 'Field'),
(29, 'Default', 'Monster'),
(30, 'Default', 'Undiscovered'),
(31, 'Default', 'Undiscovered'),
(32, 'Default', 'Field'),
(32, 'Default', 'Monster'),
(33, 'Default', 'Field'),
(33, 'Default', 'Monster'),
(34, 'Default', 'Field'),
(34, 'Default', 'Monster'),
(35, 'Default', 'Fairy'),
(36, 'Default', 'Fairy'),
(37, 'Default', 'Field'),
(38, 'Default', 'Field'),
(39, 'Default', 'Fairy'),
(40, 'Default', 'Fairy'),
(41, 'Default', 'Flying'),
(42, 'Default', 'Flying'),
(43, 'Default', 'Grass'),
(44, 'Default', 'Grass'),
(45, 'Default', 'Grass'),
(46, 'Default', 'Bug'),
(46, 'Default', 'Grass'),
(47, 'Default', 'Bug'),
(47, 'Default', 'Grass'),
(48, 'Default', 'Bug'),
(49, 'Default', 'Bug'),
(50, 'Default', 'Field'),
(51, 'Default', 'Field'),
(52, 'Default', 'Field'),
(53, 'Default', 'Field'),
(54, 'Default', 'Field'),
(54, 'Default', 'Water 1'),
(55, 'Default', 'Field'),
(55, 'Default', 'Water 1'),
(56, 'Default', 'Field'),
(57, 'Default', 'Field'),
(58, 'Default', 'Field'),
(59, 'Default', 'Field'),
(60, 'Default', 'Water 1'),
(61, 'Default', 'Water 1'),
(62, 'Default', 'Water 1'),
(63, 'Default', 'Human-Like'),
(64, 'Default', 'Human-Like'),
(65, 'Default', 'Human-Like'),
(66, 'Default', 'Human-Like'),
(67, 'Default', 'Human-Like'),
(68, 'Default', 'Human-Like'),
(69, 'Default', 'Grass'),
(70, 'Default', 'Grass'),
(71, 'Default', 'Grass'),
(72, 'Default', 'Water 3'),
(73, 'Default', 'Water 3'),
(74, 'Default', 'Mineral'),
(75, 'Default', 'Mineral'),
(76, 'Default', 'Mineral'),
(77, 'Default', 'Field'),
(78, 'Default', 'Field'),
(79, 'Default', 'Monster'),
(79, 'Default', 'Water 1'),
(80, 'Default', 'Monster'),
(80, 'Default', 'Water 1'),
(81, 'Default', 'Mineral'),
(82, 'Default', 'Mineral'),
(83, 'Default', 'Field'),
(83, 'Default', 'Flying'),
(84, 'Default', 'Flying'),
(85, 'Default', 'Flying'),
(86, 'Default', 'Field'),
(86, 'Default', 'Water 1'),
(87, 'Default', 'Field'),
(87, 'Default', 'Water 1'),
(88, 'Default', 'Amorphous'),
(89, 'Default', 'Amorphous'),
(90, 'Default', 'Water 3'),
(91, 'Default', 'Water 3'),
(92, 'Default', 'Amorphous'),
(93, 'Default', 'Amorphous'),
(94, 'Default', 'Amorphous'),
(95, 'Default', 'Mineral'),
(96, 'Default', 'Human-Like'),
(97, 'Default', 'Human-Like'),
(98, 'Default', 'Water 3'),
(99, 'Default', 'Water 3'),
(100, 'Default', 'Mineral'),
(101, 'Default', 'Mineral'),
(101, 'Hisuian', 'Undiscovered'),
(102, 'Default', 'Grass'),
(103, 'Alolan', 'Grass'),
(103, 'Default', 'Grass'),
(104, 'Default', 'Monster'),
(105, 'Alolan', 'Monster'),
(105, 'Default', 'Monster'),
(106, 'Default', 'Human-Like'),
(107, 'Default', 'Human-Like'),
(108, 'Default', 'Monster'),
(109, 'Default', 'Amorphous'),
(110, 'Default', 'Amorphous'),
(110, 'Galarian', 'Amorphous'),
(111, 'Default', 'Field'),
(111, 'Default', 'Monster'),
(112, 'Default', 'Field'),
(112, 'Default', 'Monster'),
(113, 'Default', 'Fairy'),
(114, 'Default', 'Grass'),
(115, 'Default', 'Monster'),
(115, 'mega', 'Monster'),
(116, 'Default', 'Dragon'),
(116, 'Default', 'Water 1'),
(117, 'Default', 'Dragon'),
(117, 'Default', 'Water 1'),
(118, 'Default', 'Water 2'),
(119, 'Default', 'Water 2'),
(120, 'Default', 'Water 3'),
(121, 'Default', 'Water 3'),
(122, 'Default', 'Human-Like'),
(122, 'Galarian', 'Human-Like'),
(123, 'Default', 'Bug'),
(124, 'Default', 'Human-Like'),
(125, 'Default', 'Human-Like'),
(126, 'Default', 'Human-Like'),
(127, 'Default', 'Bug'),
(127, 'Mega', 'Bug'),
(128, 'Default', 'Field'),
(129, 'Default', 'Dragon'),
(129, 'Default', 'Water 2'),
(130, 'Default', 'Dragon'),
(130, 'Default', 'Water 2'),
(130, 'Mega', 'Dragon'),
(130, 'Mega', 'Water 2'),
(131, 'Default', 'Monster'),
(131, 'Default', 'Water 1'),
(132, 'Default', 'Ditto'),
(133, 'Default', 'Field'),
(134, 'Default', 'Field'),
(135, 'Default', 'Field'),
(136, 'Default', 'Field'),
(137, 'Default', 'Mineral'),
(138, 'Default', 'Water 1'),
(138, 'Default', 'Water 3'),
(139, 'Default', 'Water 1'),
(139, 'Default', 'Water 3'),
(140, 'Default', 'Water 1'),
(140, 'Default', 'Water 3'),
(141, 'Default', 'Water 1'),
(141, 'Default', 'Water 3'),
(142, 'Default', 'Flying'),
(143, 'Default', 'Monster'),
(144, 'Default', 'Undiscovered'),
(145, 'Default', 'Undiscovered'),
(146, 'Default', 'Undiscovered'),
(147, 'Default', 'Dragon'),
(147, 'Default', 'Water 1'),
(148, 'Default', 'Dragon'),
(148, 'Default', 'Water 1'),
(149, 'Default', 'Dragon'),
(149, 'Default', 'Water 1'),
(150, 'Default', 'Undiscovered'),
(151, 'Default', 'Undiscovered');

-- --------------------------------------------------------

--
-- Table structure for table `Evolvefrom`
--

CREATE TABLE IF NOT EXISTS `Evolvefrom` (
  `natl_dex` int(3) NOT NULL,
  `variance` varchar(256) NOT NULL,
  `natl_dex2` int(3) NOT NULL,
  `variance2` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Evolvefrom`
--

INSERT INTO `Evolvefrom` (`natl_dex`, `variance`, `natl_dex2`, `variance2`) VALUES
(2, 'Default', 1, 'Default'),
(3, 'Default', 2, 'Default'),
(5, 'Default', 4, 'Default'),
(6, 'Default', 5, 'Default'),
(8, 'Default', 7, 'Default'),
(9, 'Default', 8, 'Default'),
(11, 'Default', 10, 'Default'),
(12, 'Default', 11, 'Default'),
(14, 'Default', 13, 'Default'),
(15, 'Default', 14, 'Default'),
(17, 'Default', 16, 'Default'),
(18, 'Default', 17, 'Default'),
(20, 'Default', 19, 'Default'),
(22, 'Default', 21, 'Default'),
(24, 'Default', 23, 'Default'),
(26, 'Default', 25, 'Default'),
(28, 'Default', 27, 'Default'),
(30, 'Default', 29, 'Default'),
(31, 'Default', 30, 'Default'),
(33, 'Default', 32, 'Default'),
(34, 'Default', 33, 'Default'),
(36, 'Default', 35, 'Default'),
(38, 'Default', 37, 'Default'),
(40, 'Default', 39, 'Default'),
(42, 'Default', 41, 'Default'),
(169, 'Default', 42, 'Default'),
(44, 'Default', 43, 'Default'),
(45, 'Default', 44, 'Default'),
(182, 'Default', 44, 'Default'),
(47, 'Default', 46, 'Default'),
(49, 'Default', 48, 'Default'),
(51, 'Default', 50, 'Default'),
(53, 'Default', 52, 'Default'),
(55, 'Default', 54, 'Default'),
(57, 'Default', 56, 'Default'),
(59, 'Default', 58, 'Default'),
(61, 'Default', 60, 'Default'),
(62, 'Default', 61, 'Default'),
(64, 'Default', 63, 'Default'),
(65, 'Default', 64, 'Default'),
(67, 'Default', 66, 'Default'),
(68, 'Default', 67, 'Default'),
(70, 'Default', 69, 'Default'),
(71, 'Default', 70, 'Default'),
(73, 'Default', 72, 'Default'),
(75, 'Default', 74, 'Default'),
(76, 'Default', 75, 'Default'),
(78, 'Default', 77, 'Default'),
(80, 'Default', 79, 'Default'),
(82, 'Default', 81, 'Default'),
(85, 'Default', 84, 'Default'),
(87, 'Default', 86, 'Default'),
(89, 'Default', 88, 'Default'),
(91, 'Default', 90, 'Default'),
(93, 'Default', 92, 'Default'),
(94, 'Default', 93, 'Default'),
(97, 'Default', 96, 'Default'),
(99, 'Default', 98, 'Default'),
(101, 'Default', 100, 'Default'),
(101, 'Hisuian', 100, 'Hisuian'),
(103, 'Alolan', 102, 'Default'),
(103, 'Default', 102, 'Default'),
(105, 'Alolan', 104, 'Default'),
(105, 'Default', 104, 'Default'),
(110, 'Default', 109, 'Default'),
(110, 'Galarian', 109, 'Default'),
(112, 'Default', 111, 'Default'),
(117, 'Default', 116, 'Default'),
(119, 'Default', 118, 'Default'),
(121, 'Default', 120, 'Default'),
(130, 'Default', 129, 'Default'),
(130, 'Mega', 129, 'Default'),
(134, 'Default', 133, 'Default'),
(135, 'Default', 133, 'Default'),
(136, 'Default', 133, 'Default'),
(139, 'Default', 138, 'Default'),
(141, 'Default', 140, 'Default'),
(148, 'Default', 147, 'Default'),
(149, 'Default', 148, 'Default'),
(25, 'Default', 172, 'Default'),
(106, 'Default', 236, 'Default'),
(107, 'Default', 236, 'Default'),
(124, 'Default', 238, 'Default'),
(125, 'Default', 239, 'Default'),
(126, 'Default', 240, 'Default'),
(122, 'Default', 439, 'Default'),
(122, 'Galarian', 439, 'Default'),
(113, 'Default', 440, 'Default'),
(143, 'Default', 446, 'Default');

-- --------------------------------------------------------

--
-- Table structure for table `has`
--

CREATE TABLE IF NOT EXISTS `has` (
  `natl_dex` int(3) NOT NULL,
  `variance` varchar(256) NOT NULL,
  `type` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `has`
--

INSERT INTO `has` (`natl_dex`, `variance`, `type`) VALUES
(1, 'Default', 'Grass'),
(1, 'Default', 'Poison'),
(2, 'Default', 'Grass'),
(2, 'Default', 'Poison'),
(3, 'Default', 'Grass'),
(3, 'Default', 'Poison'),
(4, 'Default', 'Fire'),
(5, 'Default', 'Fire'),
(6, 'Default', 'Fire'),
(6, 'Default', 'Flying'),
(7, 'Default', 'Water'),
(8, 'Default', 'Water'),
(9, 'Default', 'Water'),
(10, 'Default', 'Bug'),
(11, 'Default', 'Bug'),
(12, 'Default', 'Bug'),
(12, 'Default', 'Flying'),
(13, 'Default', 'Bug'),
(13, 'Default', 'Poison'),
(14, 'Default', 'Bug'),
(14, 'Default', 'Poison'),
(15, 'Default', 'Bug'),
(15, 'Default', 'Poison'),
(16, 'Default', 'Flying'),
(16, 'Default', 'Normal'),
(17, 'Default', 'Flying'),
(17, 'Default', 'Normal'),
(18, 'Default', 'Flying'),
(18, 'Default', 'Normal'),
(19, 'Default', 'Normal'),
(20, 'Default', 'Normal'),
(21, 'Default', 'Flying'),
(21, 'Default', 'Normal'),
(22, 'Default', 'Flying'),
(22, 'Default', 'Normal'),
(23, 'Default', 'Poison'),
(24, 'Default', 'Poison'),
(25, 'Default', 'Electric'),
(26, 'Default', 'Electric'),
(27, 'Default', 'Ground'),
(28, 'Default', 'Ground'),
(29, 'Default', 'Poison'),
(30, 'Default', 'Poison'),
(31, 'Default', 'Ground'),
(31, 'Default', 'Poison'),
(32, 'Default', 'Poison'),
(33, 'Default', 'Poison'),
(34, 'Default', 'Ground'),
(34, 'Default', 'Poison'),
(35, 'Default', 'Fairy'),
(36, 'Default', 'Fairy'),
(37, 'Default', 'Fire'),
(38, 'Default', 'Fire'),
(39, 'Default', 'Fairy'),
(39, 'Default', 'Normal'),
(40, 'Default', 'Fairy'),
(40, 'Default', 'Normal'),
(41, 'Default', 'Flying'),
(41, 'Default', 'Poison'),
(42, 'Default', 'Flying'),
(42, 'Default', 'Poison'),
(43, 'Default', 'Grass'),
(43, 'Default', 'Poison'),
(44, 'Default', 'Grass'),
(44, 'Default', 'Poison'),
(45, 'Default', 'Grass'),
(45, 'Default', 'Poison'),
(46, 'Default', 'Bug'),
(46, 'Default', 'Grass'),
(47, 'Default', 'Bug'),
(47, 'Default', 'Grass'),
(48, 'Default', 'Bug'),
(48, 'Default', 'Poison'),
(49, 'Default', 'Bug'),
(49, 'Default', 'Poison'),
(50, 'Default', 'Ground'),
(51, 'Default', 'Ground'),
(52, 'Default', 'Normal'),
(53, 'Default', 'Normal'),
(54, 'Default', 'Water'),
(55, 'Default', 'Water'),
(56, 'Default', 'Fighting'),
(57, 'Default', 'Fighting'),
(58, 'Default', 'Fire'),
(59, 'Default', 'Fire'),
(60, 'Default', 'Water'),
(61, 'Default', 'Water'),
(62, 'Default', 'Fighting'),
(62, 'Default', 'Water'),
(63, 'Default', 'Psychic'),
(64, 'Default', 'Psychic'),
(65, 'Default', 'Psychic'),
(66, 'Default', 'Fighting'),
(67, 'Default', 'Fighting'),
(68, 'Default', 'Fighting'),
(69, 'Default', 'Grass'),
(69, 'Default', 'Poison'),
(70, 'Default', 'Grass'),
(70, 'Default', 'Poison'),
(71, 'Default', 'Grass'),
(71, 'Default', 'Poison'),
(72, 'Default', 'Poison'),
(72, 'Default', 'Water'),
(73, 'Default', 'Poison'),
(73, 'Default', 'Water'),
(74, 'Default', 'Ground'),
(74, 'Default', 'Rock'),
(75, 'Default', 'Ground'),
(75, 'Default', 'Rock'),
(76, 'Default', 'Ground'),
(76, 'Default', 'Rock'),
(77, 'Default', 'Fire'),
(78, 'Default', 'Fire'),
(79, 'Default', 'Psychic'),
(79, 'Default', 'Water'),
(80, 'Default', 'Psychic'),
(80, 'Default', 'Water'),
(81, 'Default', 'Electric'),
(81, 'Default', 'Steel'),
(82, 'Default', 'Electric'),
(82, 'Default', 'Steel'),
(83, 'Default', 'Flying'),
(83, 'Default', 'Normal'),
(84, 'Default', 'Flying'),
(84, 'Default', 'Normal'),
(85, 'Default', 'Flying'),
(85, 'Default', 'Normal'),
(86, 'Default', 'Water'),
(87, 'Default', 'Ice'),
(87, 'Default', 'Water'),
(88, 'Default', 'Poison'),
(89, 'Default', 'Poison'),
(90, 'Default', 'Water'),
(91, 'Default', 'Ice'),
(91, 'Default', 'Water'),
(92, 'Default', 'Ghost'),
(92, 'Default', 'Poison'),
(93, 'Default', 'Ghost'),
(93, 'Default', 'Poison'),
(94, 'Default', 'Ghost'),
(94, 'Default', 'Poison'),
(95, 'Default', 'Ground'),
(95, 'Default', 'Rock'),
(96, 'Default', 'Psychic'),
(97, 'Default', 'Psychic'),
(98, 'Default', 'Water'),
(99, 'Default', 'Water'),
(100, 'Default', 'Electric'),
(101, 'Default', 'Electric'),
(101, 'Hisuian', 'Electric'),
(101, 'Hisuian', 'Grass'),
(102, 'Default', 'Grass'),
(102, 'Default', 'Psychic'),
(103, 'Alolan', 'Dragon'),
(103, 'Alolan', 'Grass'),
(103, 'Default', 'Grass'),
(103, 'Default', 'Psychic'),
(104, 'Default', 'Ground'),
(105, 'Alolan', 'Fire'),
(105, 'Alolan', 'Ghost'),
(105, 'Default', 'Ground'),
(106, 'Default', 'Fighting'),
(107, 'Default', 'Fighting'),
(108, 'Default', 'Normal'),
(109, 'Default', 'Poison'),
(110, 'Default', 'Poison'),
(110, 'Galarian', 'Fairy'),
(110, 'Galarian', 'Poison'),
(111, 'Default', 'Ground'),
(111, 'Default', 'Rock'),
(112, 'Default', 'Ground'),
(112, 'Default', 'Rock'),
(113, 'Default', 'Normal'),
(114, 'Default', 'Grass'),
(115, 'Default', 'Normal'),
(115, 'mega', 'Normal'),
(116, 'Default', 'Water'),
(117, 'Default', 'Water'),
(118, 'Default', 'Water'),
(119, 'Default', 'Water'),
(120, 'Default', 'Water'),
(121, 'Default', 'Psychic'),
(121, 'Default', 'Water'),
(122, 'Default', 'Fairy'),
(122, 'Default', 'Psychic'),
(122, 'Galarian', 'Ice'),
(122, 'Galarian', 'Psychic'),
(123, 'Default', 'Bug'),
(123, 'Default', 'Flying'),
(124, 'Default', 'Ice'),
(124, 'Default', 'Psychic'),
(125, 'Default', 'Electric'),
(126, 'Default', 'Fire'),
(127, 'Default', 'Bug'),
(127, 'Mega', 'Bug'),
(127, 'Mega', 'Flying'),
(128, 'Default', 'Normal'),
(129, 'Default', 'Water'),
(130, 'Default', 'Flying'),
(130, 'Default', 'Water'),
(130, 'Mega', 'Dark'),
(130, 'Mega', 'Water'),
(131, 'Default', 'Ice'),
(131, 'Default', 'Water'),
(132, 'Default', 'Normal'),
(133, 'Default', 'Normal'),
(134, 'Default', 'Water'),
(135, 'Default', 'Electric'),
(136, 'Default', 'Fire'),
(137, 'Default', 'Normal'),
(138, 'Default', 'Rock'),
(138, 'Default', 'Water'),
(139, 'Default', 'Rock'),
(139, 'Default', 'Water'),
(140, 'Default', 'Rock'),
(140, 'Default', 'Water'),
(141, 'Default', 'Rock'),
(141, 'Default', 'Water'),
(142, 'Default', 'Flying'),
(142, 'Default', 'Rock'),
(143, 'Default', 'Normal'),
(144, 'Default', 'Flying'),
(144, 'Default', 'Ice'),
(145, 'Default', 'Electric'),
(145, 'Default', 'Flying'),
(146, 'Default', 'Fire'),
(146, 'Default', 'Flying'),
(147, 'Default', 'Dragon'),
(148, 'Default', 'Dragon'),
(149, 'Default', 'Dragon'),
(149, 'Default', 'Flying'),
(150, 'Default', 'Psyhic'),
(151, 'Default', 'Psyhic');

-- --------------------------------------------------------

--
-- Table structure for table `NeutralAgainst`
--

CREATE TABLE IF NOT EXISTS `NeutralAgainst` (
  `firstNeutral` varchar(256) NOT NULL,
  `secondNeutral` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `NeutralAgainst`
--

INSERT INTO `NeutralAgainst` (`firstNeutral`, `secondNeutral`) VALUES
('Bug', 'Bug'),
('Bug', 'Dragon'),
('Bug', 'Electric'),
('Bug', 'Ground'),
('Bug', 'Ice'),
('Bug', 'Normal'),
('Bug', 'Rock'),
('Bug', 'Water'),
('Dark', 'Bug'),
('Dark', 'Dragon'),
('Dark', 'Electric'),
('Dark', 'Fire'),
('Dark', 'Flying'),
('Dark', 'Grass'),
('Dark', 'Ground'),
('Dark', 'Ice'),
('Dark', 'Normal'),
('Dark', 'Poison'),
('Dark', 'Rock'),
('Dark', 'Steel'),
('Dark', 'Water'),
('Dragon', 'Bug'),
('Dragon', 'Dark'),
('Dragon', 'Electric'),
('Dragon', 'Fighting'),
('Dragon', 'Fire'),
('Dragon', 'Flying'),
('Dragon', 'Ghost'),
('Dragon', 'Grass'),
('Dragon', 'Ground'),
('Dragon', 'Ice'),
('Dragon', 'Normal'),
('Dragon', 'Poison'),
('Dragon', 'Psychic'),
('Dragon', 'Rock'),
('Dragon', 'Water'),
('Electric', 'Bug'),
('Electric', 'Dark'),
('Electric', 'Fairy'),
('Electric', 'Fighting'),
('Electric', 'Fire'),
('Electric', 'Ghost'),
('Electric', 'Ice'),
('Electric', 'Normal'),
('Electric', 'Poison'),
('Electric', 'Psychic'),
('Electric', 'Rock'),
('Electric', 'Steel'),
('Fairy', 'Bug'),
('Fairy', 'Electric'),
('Fairy', 'Fairy'),
('Fairy', 'Flying'),
('Fairy', 'Ghost'),
('Fairy', 'Grass'),
('Fairy', 'Ground'),
('Fairy', 'Ice'),
('Fairy', 'Normal'),
('Fairy', 'Psychic'),
('Fairy', 'Rock'),
('Fairy', 'Water'),
('Fighting', 'Dragon'),
('Fighting', 'Electric'),
('Fighting', 'Fighting'),
('Fighting', 'Fire'),
('Fighting', 'Grass'),
('Fighting', 'Ground'),
('Fighting', 'Water'),
('Fire', 'Dark'),
('Fire', 'Electric'),
('Fire', 'Fairy'),
('Fire', 'Fighting'),
('Fire', 'Flying'),
('Fire', 'Ghost'),
('Fire', 'Ground'),
('Fire', 'Normal'),
('Fire', 'Poison'),
('Fire', 'Psychic'),
('Flying', 'Dark'),
('Flying', 'Dragon'),
('Flying', 'Fairy'),
('Flying', 'Fire'),
('Flying', 'Flying'),
('Flying', 'Ghost'),
('Flying', 'Ground'),
('Flying', 'Ice'),
('Flying', 'Normal'),
('Flying', 'Poison'),
('Flying', 'Psychic'),
('Flying', 'Water'),
('Ghost', 'Bug'),
('Ghost', 'Dragon'),
('Ghost', 'Electric'),
('Ghost', 'Fairy'),
('Ghost', 'Fighting'),
('Ghost', 'Fire'),
('Ghost', 'Flying'),
('Ghost', 'Grass'),
('Ghost', 'Ground'),
('Ghost', 'Ice'),
('Ghost', 'Poison'),
('Ghost', 'Rock'),
('Ghost', 'Steel'),
('Ghost', 'Water'),
('Grass', 'Dark'),
('Grass', 'Electric'),
('Grass', 'Fairy'),
('Grass', 'Fighting'),
('Grass', 'Ghost'),
('Grass', 'Ice'),
('Grass', 'Normal'),
('Grass', 'Psychic'),
('Ground', 'Dark'),
('Ground', 'Dragon'),
('Ground', 'Fairy'),
('Ground', 'Fighting'),
('Ground', 'Ghost'),
('Ground', 'Ground'),
('Ground', 'Ice'),
('Ground', 'Normal'),
('Ground', 'Psychic'),
('Ground', 'Water'),
('Ice', 'Bug'),
('Ice', 'Dark'),
('Ice', 'Electric'),
('Ice', 'Fairy'),
('Ice', 'Fighting'),
('Ice', 'Ghost'),
('Ice', 'Normal'),
('Ice', 'Poison'),
('Ice', 'Psychic'),
('Ice', 'Rock'),
('Normal', 'Bug'),
('Normal', 'Dark'),
('Normal', 'Dragon'),
('Normal', 'Electric'),
('Normal', 'Fairy'),
('Normal', 'Fighting'),
('Normal', 'Fire'),
('Normal', 'Flying'),
('Normal', 'Grass'),
('Normal', 'Ground'),
('Normal', 'Ice'),
('Normal', 'Normal'),
('Normal', 'Poison'),
('Normal', 'Psychic'),
('Normal', 'Water'),
('Poison', 'Bug'),
('Poison', 'Dark'),
('Poison', 'Dragon'),
('Poison', 'Electric'),
('Poison', 'Fighting'),
('Poison', 'Fire'),
('Poison', 'Flying'),
('Poison', 'Ice'),
('Poison', 'Normal'),
('Poison', 'Psychic'),
('Poison', 'Water'),
('Psychic', 'Bug'),
('Psychic', 'Dragon'),
('Psychic', 'Electric'),
('Psychic', 'Fairy'),
('Psychic', 'Fire'),
('Psychic', 'Flying'),
('Psychic', 'Ghost'),
('Psychic', 'Grass'),
('Psychic', 'Ground'),
('Psychic', 'Ice'),
('Psychic', 'Normal'),
('Psychic', 'Rock'),
('Psychic', 'Water'),
('Rock', 'Dark'),
('Rock', 'Dragon'),
('Rock', 'Electric'),
('Rock', 'Fairy'),
('Rock', 'Ghost'),
('Rock', 'Grass'),
('Rock', 'Normal'),
('Rock', 'Poison'),
('Rock', 'Psychic'),
('Rock', 'Rock'),
('Rock', 'Water'),
('Steel', 'Bug'),
('Steel', 'Dark'),
('Steel', 'Dragon'),
('Steel', 'Fighting'),
('Steel', 'Flying'),
('Steel', 'Ghost'),
('Steel', 'Grass'),
('Steel', 'Ground'),
('Steel', 'Normal'),
('Steel', 'Poison'),
('Steel', 'Psychic'),
('Water', 'Bug'),
('Water', 'Dark'),
('Water', 'Electric'),
('Water', 'Fairy'),
('Water', 'Fighting'),
('Water', 'Flying'),
('Water', 'Ghost'),
('Water', 'Ice'),
('Water', 'Normal'),
('Water', 'Poison'),
('Water', 'Psychic'),
('Water', 'Steel');

-- --------------------------------------------------------

--
-- Table structure for table `NoEffect`
--

CREATE TABLE IF NOT EXISTS `NoEffect` (
  `attackingType` varchar(256) NOT NULL,
  `unaffectedType` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `NoEffect`
--

INSERT INTO `NoEffect` (`attackingType`, `unaffectedType`) VALUES
('Dragon', 'Fairy'),
('Electric', 'Ground'),
('Fighting', 'Ghost'),
('Ghost', 'Normal'),
('Ground', 'Flying'),
('Normal', 'Ghost'),
('Poison', 'Steel'),
('Psychic', 'Dark');

-- --------------------------------------------------------

--
-- Table structure for table `Pokemon`
--

CREATE TABLE IF NOT EXISTS `Pokemon` (
  `natl_dex` int(3) NOT NULL,
  `variance` varchar(256) NOT NULL,
  `name` varchar(256) NOT NULL,
  `generation` int(11) NOT NULL,
  `image` varchar(256) NOT NULL,
  `hp` int(11) NOT NULL,
  `atk` int(11) NOT NULL,
  `spAtk` int(11) NOT NULL,
  `speed` int(11) NOT NULL,
  `def` int(11) NOT NULL,
  `spDef` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Pokemon`
--

INSERT INTO `Pokemon` (`natl_dex`, `variance`, `name`, `generation`, `image`, `hp`, `atk`, `spAtk`, `speed`, `def`, `spDef`) VALUES
(1, 'Default', 'Bulbasaur', 1, 'https://img.pokemondb.net/artwork/large/bulbasaur.jpg', 45, 49, 65, 45, 49, 65),
(2, 'Default', 'Ivysaur', 1, 'https://img.pokemondb.net/artwork/large/ivysaur.jpg', 60, 62, 80, 60, 63, 80),
(3, 'Default', 'Venusaur', 1, 'https://img.pokemondb.net/artwork/large/venusaur.jpg', 80, 82, 100, 80, 83, 100),
(4, 'Default', 'Charmander', 1, 'https://img.pokemondb.net/artwork/large/charmander.jpg', 39, 52, 60, 65, 43, 50),
(5, 'Default', 'Charmeleon', 1, 'https://img.pokemondb.net/artwork/large/charmeleon.jpg', 58, 64, 80, 80, 58, 65),
(6, 'Default', 'Charizard', 1, 'https://img.pokemondb.net/artwork/large/charizard.jpg', 78, 84, 109, 100, 78, 85),
(7, 'Default', 'Squirtle', 1, 'https://img.pokemondb.net/artwork/large/squirtle.jpg', 44, 48, 50, 43, 65, 64),
(8, 'Default', 'Wartortle', 1, 'https://img.pokemondb.net/artwork/large/wartortle.jpg', 59, 63, 65, 58, 80, 80),
(9, 'Default', 'Blastoise', 1, 'https://img.pokemondb.net/artwork/large/blastoise.jpg', 79, 83, 85, 78, 100, 105),
(10, 'Default', 'Caterpie', 1, 'https://img.pokemondb.net/artwork/large/caterpie.jpg', 45, 30, 20, 45, 35, 20),
(11, 'Default', 'Metapod', 1, 'https://img.pokemondb.net/artwork/large/metapod.jpg', 50, 20, 25, 30, 55, 25),
(12, 'Default', 'Butterfree', 1, 'https://img.pokemondb.net/artwork/large/butterfree.jpg', 60, 45, 90, 70, 50, 80),
(13, 'Default', 'Weedle', 1, 'https://img.pokemondb.net/artwork/large/weedle.jpg', 40, 35, 20, 50, 30, 20),
(14, 'Default', 'Kakuna', 1, 'https://img.pokemondb.net/artwork/large/kakuna.jpg', 45, 25, 25, 35, 50, 25),
(15, 'Default', 'Beedrill', 1, 'https://img.pokemondb.net/artwork/large/beedrill.jpg', 65, 90, 45, 75, 40, 80),
(16, 'Default', 'Pidgey', 1, 'https://img.pokemondb.net/artwork/large/pidgey.jpg', 40, 45, 35, 56, 40, 35),
(17, 'Default', 'Pidgeotto', 1, 'https://img.pokemondb.net/artwork/large/pidgeotto.jpg', 63, 60, 50, 71, 55, 50),
(18, 'Default', 'Pidgeot', 1, 'https://img.pokemondb.net/artwork/large/pidgeot.jpg', 83, 80, 70, 101, 75, 70),
(19, 'Default', 'Rattata', 1, 'https://img.pokemondb.net/artwork/large/rattata.jpg', 30, 56, 25, 72, 35, 35),
(20, 'Default', 'Raticate', 1, 'https://img.pokemondb.net/artwork/large/raticate.jpg', 55, 81, 50, 97, 60, 70),
(21, 'Default', 'Spearow', 1, 'https://img.pokemondb.net/artwork/large/spearow.jpg', 40, 60, 31, 70, 30, 31),
(22, 'Default', 'Fearow', 1, 'https://img.pokemondb.net/artwork/large/fearow.jpg', 65, 90, 61, 100, 65, 61),
(23, 'Default', 'Ekans', 1, 'https://img.pokemondb.net/artwork/large/ekans.jpg', 35, 60, 40, 55, 44, 54),
(24, 'Default', 'Arbok', 1, 'https://img.pokemondb.net/artwork/large/arbok.jpg', 60, 95, 65, 80, 69, 79),
(25, 'Default', 'Pikachu', 1, 'https://img.pokemondb.net/artwork/large/pikachu.jpg', 35, 55, 50, 90, 40, 50),
(26, 'Default', 'Raichu', 1, 'https://img.pokemondb.net/artwork/large/raichu.jpg', 60, 90, 90, 110, 55, 80),
(27, 'Default', 'Sandshrew', 1, 'https://img.pokemondb.net/artwork/large/sandshrew.jpg', 50, 75, 20, 40, 85, 30),
(28, 'Default', 'Sandslash', 1, 'https://img.pokemondb.net/artwork/large/sandslash.jpg', 75, 100, 45, 65, 110, 55),
(29, 'Default', 'Nidoran', 1, 'https://img.pokemondb.net/artwork/large/nidoran-f.jpg', 55, 47, 40, 41, 52, 40),
(30, 'Default', 'Nidorina', 1, 'https://img.pokemondb.net/artwork/large/nidorina.jpg', 70, 62, 55, 56, 67, 55),
(31, 'Default', 'Nidoqueen', 1, 'https://img.pokemondb.net/artwork/large/nidoqueen.jpg', 90, 92, 75, 76, 87, 85),
(32, 'Default', 'Nidoran', 1, 'https://img.pokemondb.net/artwork/large/nidoran-m.jpg', 46, 57, 40, 50, 40, 40),
(33, 'Default', 'Nidorino', 1, 'https://img.pokemondb.net/artwork/large/nidorino.jpg', 61, 72, 55, 65, 57, 55),
(34, 'Default', 'Nidoking', 1, 'https://img.pokemondb.net/artwork/large/nidoking.jpg', 81, 102, 85, 85, 77, 75),
(35, 'Default', 'Clefairy', 1, 'https://img.pokemondb.net/artwork/large/clefairy.jpg', 70, 45, 60, 35, 48, 65),
(36, 'Default', 'Clefable', 1, 'https://img.pokemondb.net/artwork/large/clefable.jpg', 95, 70, 95, 60, 73, 90),
(37, 'Default', 'Vulpix', 1, 'https://img.pokemondb.net/artwork/large/vulpix.jpg', 38, 41, 50, 65, 40, 65),
(38, 'Default', 'Ninetales', 1, 'https://img.pokemondb.net/artwork/large/ninetales.jpg', 73, 76, 81, 100, 75, 100),
(39, 'Default', 'Jigglypuff', 1, 'https://img.pokemondb.net/artwork/large/jigglypuff.jpg', 115, 45, 45, 20, 20, 25),
(40, 'Default', 'Wigglytuff', 1, 'https://img.pokemondb.net/artwork/large/wigglytuff.jpg', 140, 70, 85, 45, 45, 50),
(41, 'Default', 'Zubat', 1, 'https://img.pokemondb.net/artwork/large/zubat.jpg', 40, 45, 30, 55, 35, 40),
(42, 'Default', 'Golbat', 1, 'https://img.pokemondb.net/artwork/large/golbat.jpg', 75, 80, 65, 90, 70, 75),
(43, 'Default', 'Oddish', 1, 'https://img.pokemondb.net/artwork/large/oddish.jpg', 45, 50, 75, 30, 55, 65),
(44, 'Default', 'Gloom', 1, 'https://img.pokemondb.net/artwork/large/gloom.jpg', 60, 65, 85, 40, 70, 75),
(45, 'Default', 'Vileplume', 1, 'https://img.pokemondb.net/artwork/large/vileplume.jpg', 75, 80, 110, 50, 85, 90),
(46, 'Default', 'Paras', 1, 'https://img.pokemondb.net/artwork/large/paras.jpg', 35, 70, 45, 25, 55, 55),
(47, 'Default', 'Parasect', 1, 'https://img.pokemondb.net/artwork/large/parasect.jpg', 60, 95, 60, 30, 80, 80),
(48, 'Default', 'Venonat', 1, 'https://img.pokemondb.net/artwork/large/venonat.jpg', 60, 55, 40, 45, 50, 55),
(49, 'Default', 'Venomoth', 1, 'https://img.pokemondb.net/artwork/large/venomoth.jpg', 70, 65, 90, 90, 60, 75),
(50, 'Default', 'Diglett', 1, 'https://img.pokemondb.net/artwork/large/diglett.jpg', 10, 55, 35, 95, 25, 45),
(51, 'Default', 'Dugtrio', 1, 'https://img.Pokemondb.net/artwork/large/dugtrio.jpg', 35, 100, 50, 120, 50, 70),
(52, 'Default', 'Meowth', 1, 'https://img.Pokemondb.net/artwork/large/meowth.jpg', 40, 45, 40, 90, 35, 40),
(53, 'Default', 'Persian', 1, 'https://img.Pokemondb.net/artwork/large/persian.jpg', 65, 70, 65, 115, 60, 65),
(54, 'Default', 'Psyduck', 1, 'https://img.Pokemondb.net/artwork/large/psyduck.jpg', 50, 52, 65, 55, 48, 50),
(55, 'Default', 'Golduck', 1, 'https://img.Pokemondb.net/artwork/large/golduck.jpg', 80, 82, 95, 85, 78, 80),
(56, 'Default', 'Mankey', 1, 'https://img.Pokemondb.net/artwork/large/mankey.jpg', 40, 80, 35, 70, 35, 45),
(57, 'Default', 'Primeape', 1, 'https://img.Pokemondb.net/artwork/large/primeape.jpg', 65, 105, 60, 95, 60, 70),
(58, 'Default', 'Growlithe', 1, 'https://img.Pokemondb.net/artwork/large/growlithe.jpg', 55, 70, 70, 60, 45, 50),
(59, 'Default', 'Arcanine', 1, 'https://img.Pokemondb.net/artwork/large/arcanine.jpg', 90, 110, 100, 95, 80, 80),
(60, 'Default', 'Poliwag', 1, 'https://img.Pokemondb.net/artwork/large/poliwag.jpg', 40, 50, 40, 90, 40, 40),
(61, 'Default', 'Poliwhirl', 1, 'https://img.Pokemondb.net/artwork/large/poliwhirl.jpg', 65, 65, 50, 90, 65, 50),
(62, 'Default', 'Poliwrath', 1, 'https://img.Pokemondb.net/artwork/large/poliwrath.jpg', 90, 95, 70, 70, 95, 90),
(63, 'Default', 'Abra', 1, 'https://img.Pokemondb.net/artwork/large/abra.jpg', 25, 20, 105, 90, 15, 55),
(64, 'Default', 'Kadabra', 1, 'https://img.Pokemondb.net/artwork/large/kadabra.jpg', 40, 35, 120, 105, 30, 70),
(65, 'Default', 'Alakazam', 1, 'https://img.Pokemondb.net/artwork/large/alakazam.jpg', 55, 50, 135, 120, 45, 95),
(66, 'Default', 'Machop', 1, 'https://img.Pokemondb.net/artwork/large/machop.jpg', 70, 80, 35, 35, 50, 35),
(67, 'Default', 'Machoke', 1, 'https://img.Pokemondb.net/artwork/large/machoke.jpg', 80, 100, 50, 45, 70, 60),
(68, 'Default', 'Machamp', 1, 'https://img.Pokemondb.net/artwork/large/machamp.jpg', 90, 130, 65, 55, 80, 85),
(69, 'Default', 'Bellsprout', 1, 'https://img.Pokemondb.net/artwork/large/bellsprout.jpg', 50, 75, 70, 40, 35, 30),
(70, 'Default', 'Weepinbell', 1, 'https://img.Pokemondb.net/artwork/large/weepinbell.jpg', 65, 90, 85, 55, 50, 45),
(71, 'Default', 'Victreebel', 1, 'https://img.Pokemondb.net/artwork/large/victreebel.jpg', 80, 105, 100, 70, 65, 70),
(72, 'Default', 'Tentacool', 1, 'https://img.Pokemondb.net/artwork/large/tentacool.jpg', 40, 40, 50, 70, 35, 100),
(73, 'Default', 'Tentacruel', 1, 'https://img.Pokemondb.net/artwork/large/tentacruel.jpg', 80, 70, 80, 100, 65, 120),
(74, 'Default', 'Geodude', 1, 'https://img.Pokemondb.net/artwork/large/geodude.jpg', 40, 80, 30, 20, 100, 30),
(75, 'Default', 'Graveler', 1, 'https://img.Pokemondb.net/artwork/large/graveler.jpg', 55, 95, 45, 35, 115, 45),
(76, 'Default', 'Golem', 1, 'https://img.Pokemondb.net/artwork/large/golem.jpg', 80, 120, 55, 45, 130, 65),
(77, 'Default', 'Ponyta', 1, 'https://img.Pokemondb.net/artwork/large/ponyta.jpg', 50, 85, 65, 90, 55, 65),
(78, 'Default', 'Rapidash', 1, 'https://img.Pokemondb.net/artwork/large/rapidash.jpg', 65, 100, 80, 105, 70, 80),
(79, 'Default', 'Slowpoke', 1, 'https://img.Pokemondb.net/artwork/large/slowpoke.jpg', 90, 65, 40, 15, 65, 40),
(80, 'Default', 'Slowbro', 1, 'https://img.Pokemondb.net/artwork/large/slowbro.jpg', 95, 75, 100, 30, 110, 80),
(81, 'Default', 'Magnemite', 1, 'https://img.Pokemondb.net/artwork/large/magnemite.jpg', 25, 35, 95, 45, 70, 55),
(82, 'Default', 'Magneton', 1, 'https://img.Pokemondb.net/artwork/large/magneton.jpg', 50, 60, 120, 70, 95, 70),
(83, 'Default', 'Farfetch''d', 1, 'https://img.Pokemondb.net/artwork/large/farfetchd.jpg', 52, 90, 58, 60, 55, 62),
(84, 'Default', 'Doduo', 1, 'https://img.Pokemondb.net/artwork/large/doduo.jpg', 35, 85, 35, 75, 45, 35),
(85, 'Default', 'Dodrio', 1, 'https://img.Pokemondb.net/artwork/large/dodrio.jpg', 60, 110, 60, 110, 70, 60),
(86, 'Default', 'Seel', 1, 'https://img.Pokemondb.net/artwork/large/seel.jpg', 65, 45, 45, 45, 55, 70),
(87, 'Default', 'Dewgong', 1, 'https://img.Pokemondb.net/artwork/large/dewgong.jpg', 90, 70, 70, 70, 80, 95),
(88, 'Default', 'Grimer', 1, 'https://img.Pokemondb.net/artwork/large/grimer.jpg', 80, 80, 40, 25, 50, 50),
(89, 'Default', 'Muk', 1, 'https://img.Pokemondb.net/artwork/large/muk.jpg', 105, 105, 65, 50, 75, 100),
(90, 'Default', 'Shellder', 1, 'https://img.Pokemondb.net/artwork/large/shellder.jpg', 30, 65, 45, 40, 100, 25),
(91, 'Default', 'Cloyster', 1, 'https://img.Pokemondb.net/artwork/large/cloyster.jpg', 50, 95, 85, 70, 180, 45),
(92, 'Default', 'Gastly', 1, 'https://img.Pokemondb.net/artwork/large/gastly.jpg', 30, 35, 100, 80, 30, 35),
(93, 'Default', 'Haunter', 1, 'https://img.Pokemondb.net/artwork/large/haunter.jpg', 45, 50, 115, 95, 45, 55),
(94, 'Default', 'Gengar', 1, 'https://img.Pokemondb.net/artwork/large/gengar.jpg', 60, 65, 130, 110, 60, 75),
(95, 'Default', 'Onix', 1, 'https://img.Pokemondb.net/artwork/large/onix.jpg', 35, 45, 30, 70, 160, 45),
(96, 'Default', 'Drowzee', 1, 'https://img.Pokemondb.net/artwork/large/drowzee.jpg', 60, 48, 43, 42, 45, 90),
(97, 'Default', 'Hypno', 1, 'https://img.Pokemondb.net/artwork/large/hypno.jpg', 85, 73, 73, 67, 70, 115),
(98, 'Default', 'Krabby', 1, 'https://img.Pokemondb.net/artwork/large/krabby.jpg', 30, 105, 25, 50, 90, 25),
(99, 'Default', 'Kingler', 1, 'https://img.Pokemondb.net/artwork/large/kingler.jpg', 55, 130, 50, 75, 115, 50),
(100, 'Default', 'Voltorb', 1, 'https://img.Pokemondb.net/artwork/large/voltorb.jpg', 40, 30, 55, 100, 50, 55),
(101, 'Default', 'Electrode', 1, 'https://img.pokemondb.net/artwork/electrode.jpg', 60, 50, 80, 150, 70, 80),
(101, 'Hisuian', 'Electrode', 1, 'https://img.pokemondb.net/artwork/electrode-hisuian.jpg', 60, 50, 80, 150, 70, 80),
(102, 'Default', 'Exeggcute', 1, 'https://img.pokemondb.net/artwork/exeggcute.jpg', 60, 40, 60, 40, 80, 45),
(103, 'Alolan', 'Exeggutor', 1, 'https://img.pokemondb.net/artwork/exeggutor-alolan.jpg', 95, 105, 125, 45, 85, 75),
(103, 'Default', 'Exeggutor', 1, 'https://img.pokemondb.net/artwork/exeggutor.jpg', 95, 95, 125, 55, 85, 75),
(104, 'Default', 'Cubone', 1, 'https://img.pokemondb.net/artwork/cubone.jpg', 50, 50, 40, 35, 95, 50),
(105, 'Alolan', 'Marowak', 1, 'https://img.pokemondb.net/artwork/marowak-alolan.jpg', 60, 80, 50, 45, 110, 80),
(105, 'Default', 'Marowak', 1, 'https://img.pokemondb.net/artwork/marowak.jpg', 60, 80, 50, 45, 110, 80),
(106, 'Default', 'Hitmonlee', 1, 'https://img.pokemondb.net/artwork/hitmonlee.jpg', 50, 120, 35, 87, 53, 110),
(107, 'Default', 'Hitmonchan', 1, 'https://img.pokemondb.net/artwork/hitmonchan.jpg', 50, 105, 35, 76, 79, 110),
(108, 'Default', 'Lickitung', 1, 'https://img.pokemondb.net/artwork/lickitung.jpg', 90, 55, 60, 30, 75, 75),
(109, 'Default', 'Koffing', 1, 'https://img.pokemondb.net/artwork/koffing.jpg', 40, 65, 60, 35, 95, 45),
(110, 'Default', 'Weezing', 1, 'https://img.pokemondb.net/artwork/weezing.jpg', 65, 90, 85, 60, 120, 70),
(110, 'Galarian', 'Weezing', 1, 'https://img.pokemondb.net/artwork/weezing-galarian.jpg', 65, 90, 85, 60, 120, 70),
(111, 'Default', 'Rhyhorn', 1, 'https://img.pokemondb.net/artwork/rhyhorn.jpg', 80, 85, 30, 25, 95, 30),
(112, 'Default', 'Rhydon', 1, 'https://img.pokemondb.net/artwork/rhydon.jpg', 105, 130, 45, 40, 120, 45),
(113, 'Default', 'Chaney', 1, 'https://img.pokemondb.net/artwork/chansey.jpg', 50, 5, 35, 50, 5, 105),
(114, 'Default', 'Tangela', 1, 'https://img.pokemondb.net/artwork/tangela.jpg', 65, 55, 100, 60, 115, 40),
(115, 'Default', 'Kangaskhan', 1, 'https://img.pokemondb.net/artwork/kangaskhan.jpg', 105, 95, 40, 90, 80, 80),
(115, 'mega', 'Kangaskhan', 1, 'https://img.pokemondb.net/artwork/kangaskhan-mega.jpg', 105, 125, 60, 100, 100, 100),
(116, 'Default', 'Horsea', 1, 'https://img.pokemondb.net/artwork/horsea.jpg', 30, 40, 70, 60, 70, 25),
(117, 'Default', 'Seadra', 1, 'https://img.pokemondb.net/artwork/seadra.jpg', 55, 65, 95, 85, 95, 45),
(118, 'Default', 'Goldeen', 1, 'https://img.pokemondb.net/artwork/goldeen.jpg', 45, 67, 35, 63, 60, 50),
(119, 'Default', 'Seaking', 1, 'https://img.pokemondb.net/artwork/seaking.jpg', 80, 92, 65, 68, 95, 80),
(120, 'Default', 'Staryu', 1, 'https://img.pokemondb.net/artwork/staryu.jpg', 30, 45, 70, 85, 55, 55),
(121, 'Default', 'Starmie', 1, 'https://img.pokemondb.net/artwork/starmie.jpg', 60, 75, 100, 115, 85, 85),
(122, 'Default', 'Mr. Mime', 1, 'https://img.pokemondb.net/artwork/mr-mime.jpg', 40, 45, 100, 90, 65, 120),
(122, 'Galarian', 'Mr. Mime', 1, 'https://img.pokemondb.net/artwork/mr-mime-galarian.jpg', 50, 65, 90, 100, 65, 90),
(123, 'Default', 'Scyther', 1, 'https://img.pokemondb.net/artwork/scyther.jpg', 70, 110, 55, 105, 80, 80),
(124, 'Default', 'Jynx', 1, 'https://img.pokemondb.net/artwork/jynx.jpg', 65, 50, 115, 95, 35, 95),
(125, 'Default', 'Electabuzz', 1, 'https://img.pokemondb.net/artwork/electabuzz.jpg', 65, 83, 95, 105, 57, 85),
(126, 'Default', 'Magmar', 1, 'https://img.pokemondb.net/artwork/magmar.jpg', 65, 95, 100, 93, 57, 85),
(127, 'Default', 'Pinsir', 1, 'https://img.pokemondb.net/artwork/pinsir.jpg', 65, 125, 55, 85, 100, 70),
(127, 'Mega', 'Pinsir', 1, 'https://img.pokemondb.net/artwork/pinsir-mega.jpg', 65, 155, 120, 105, 120, 90),
(128, 'Default', 'Tauros', 1, 'https://img.pokemondb.net/artwork/tauros.jpg', 75, 100, 40, 110, 95, 70),
(129, 'Default', 'Magikarp', 1, 'https://img.pokemondb.net/artwork/magikarp.jpg', 20, 10, 15, 80, 55, 20),
(130, 'Default', 'Gyrados', 1, 'https://img.pokemondb.net/artwork/gyrados.jpg', 95, 125, 60, 81, 79, 100),
(130, 'Mega', 'Gyrados', 1, 'https://img.pokemondb.net/artwork/gyrados-mega.jpg', 95, 155, 70, 81, 109, 130),
(131, 'Default', 'Lapras', 1, 'https://img.pokemondb.net/artwork/lapras.jpg', 130, 85, 85, 60, 80, 95),
(132, 'Default', 'Ditto', 1, 'https://img.pokemondb.net/artwork/ditto.jpg', 48, 48, 48, 48, 48, 48),
(133, 'Default', 'Eevee', 1, 'https://img.pokemondb.net/artwork/eevee.jpg', 55, 55, 45, 55, 50, 65),
(134, 'Default', 'Vaporeon', 1, 'https://img.pokemondb.net/artwork/vaporeon.jpg', 130, 65, 110, 65, 60, 95),
(135, 'Default', 'Jolteon', 1, 'https://img.pokemondb.net/artwork/jolteon.jpg', 65, 65, 110, 130, 60, 95),
(136, 'Default', 'Flareon', 1, 'https://img.pokemondb.net/artwork/flareon.jpg', 65, 130, 95, 65, 60, 110),
(137, 'Default', 'Porygon', 1, 'https://img.pokemondb.net/artwork/porygon.jpg', 65, 60, 85, 40, 70, 75),
(138, 'Default', 'Omanyte', 1, 'https://img.pokemondb.net/artwork/omanyte.jpg', 35, 40, 90, 35, 100, 90),
(139, 'Default', 'Omastar', 1, 'https://img.pokemondb.net/artwork/omastar.jpg', 70, 60, 115, 55, 125, 70),
(140, 'Default', 'Kabuto', 1, 'https://img.pokemondb.net/artwork/kabuto.jpg', 30, 80, 55, 55, 90, 45),
(141, 'Default', 'Kabutops', 1, 'https://img.pokemondb.net/artwork/kabutops.jpg', 60, 115, 65, 80, 105, 70),
(142, 'Default', 'Aerodactyl', 1, 'https://img.pokemondb.net/artwork/aerodactyl.jpg', 80, 105, 60, 130, 65, 75),
(143, 'Default', 'Snorlax', 1, 'https://img.pokemondb.net/artwork/snorlax.jpg', 160, 110, 65, 30, 65, 110),
(144, 'Default', 'Articuno', 1, 'https://img.pokemondb.net/artwork/articuno.jpg', 90, 85, 95, 85, 100, 125),
(145, 'Default', 'Zapdos', 1, 'https://img.pokemondb.net/artwork/zapdos.jpg', 90, 90, 125, 100, 85, 90),
(146, 'Default', 'Moltres', 1, 'https://img.pokemondb.net/artwork/moltres.jpg', 90, 100, 125, 90, 90, 85),
(147, 'Default', 'Dratini', 1, 'https://img.pokemondb.net/artwork/dratini.jpg', 41, 64, 50, 50, 45, 50),
(148, 'Default', 'Dragonair', 1, 'https://img.pokemondb.net/artwork/dragonair.jpg', 61, 84, 70, 70, 65, 70),
(149, 'Default', 'Dragonite', 1, 'https://img.pokemondb.net/artwork/dragonite.jpg', 91, 134, 100, 80, 95, 100),
(150, 'Default', 'Mewtwo', 1, 'https://img.pokemondb.net/artwork/mewtwo.jpg', 106, 110, 154, 130, 90, 90),
(151, 'Default', 'Mew', 1, 'https://img.pokemondb.net/artwork/mew.jpg', 100, 100, 100, 100, 100, 100);

-- --------------------------------------------------------

--
-- Table structure for table `StrongAgainst`
--

CREATE TABLE IF NOT EXISTS `StrongAgainst` (
  `strongType` varchar(256) NOT NULL,
  `weakType` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `StrongAgainst`
--

INSERT INTO `StrongAgainst` (`strongType`, `weakType`) VALUES
('Bug', 'Dark'),
('Bug', 'Grass'),
('Bug', 'Psychic'),
('Dark', 'Ghost'),
('Dark', 'Psychic'),
('Dragon', 'Dragon'),
('Electric', 'Flying'),
('Electric', 'Water'),
('Fairy', 'Dark'),
('Fairy', 'Dragon'),
('Fairy', 'Fighting'),
('Fighting', 'Dark'),
('Fighting', 'Ice'),
('Fighting', 'Normal'),
('Fighting', 'Rock'),
('Fighting', 'Steel'),
('Fire', 'Bug'),
('Fire', 'Grass'),
('Fire', 'Ice'),
('Fire', 'Steel'),
('Flying', 'Bug'),
('Flying', 'Fighting'),
('Flying', 'Grass'),
('Ghost', 'Ghost'),
('Ghost', 'Psychic'),
('Grass', 'Ground'),
('Grass', 'Rock'),
('Grass', 'Water'),
('Ground', 'Electric'),
('Ground', 'Fire'),
('Ground', 'Poison'),
('Ground', 'Rock'),
('Ground', 'Steel'),
('Ice', 'Dragon'),
('Ice', 'Flying'),
('Ice', 'Grass'),
('Ice', 'Ground'),
('Poison', 'Fairy'),
('Poison', 'Grass'),
('Psychic', 'Fighting'),
('Psychic', 'Poison'),
('Rock', 'Bug'),
('Rock', 'Fire'),
('Rock', 'Flying'),
('Rock', 'Ice'),
('Steel', 'Fairy'),
('Steel', 'Ice'),
('Steel', 'Rock'),
('Water', 'Fire'),
('Water', 'Ground'),
('Water', 'Rock');

-- --------------------------------------------------------

--
-- Table structure for table `Types`
--

CREATE TABLE IF NOT EXISTS `Types` (
  `typeName` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Types`
--

INSERT INTO `Types` (`typeName`) VALUES
('Bug'),
('Dark'),
('Dragon'),
('Electric'),
('Fairy'),
('Fighting'),
('Fire'),
('Flying'),
('Ghost'),
('Grass'),
('Ground'),
('Ice'),
('Normal'),
('Poison'),
('Psychic'),
('Rock'),
('Steel'),
('Water');

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE IF NOT EXISTS `User` (
  `gmail` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`gmail`) VALUES
('testuser@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `votesFor`
--

CREATE TABLE IF NOT EXISTS `votesFor` (
  `gmail` varchar(256) NOT NULL,
  `natl_dex` int(3) NOT NULL,
  `variance` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `votesFor`
--

INSERT INTO `votesFor` (`gmail`, `natl_dex`, `variance`) VALUES
('testuser2@gmail.com', 15, 'Default'),
('testuser3@gmail.com', 1, 'Default'),
('testuser4@gmail.com', 101, 'Default'),
('testuser5@gmail.com', 75, 'Default'),
('testuser@gmail.com', 15, 'Default');

-- --------------------------------------------------------

--
-- Table structure for table `WeakAgainst`
--

CREATE TABLE IF NOT EXISTS `WeakAgainst` (
  `weakType` varchar(256) NOT NULL,
  `strongType` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `WeakAgainst`
--

INSERT INTO `WeakAgainst` (`weakType`, `strongType`) VALUES
('Bug', 'Fairy'),
('Bug', 'Fighting'),
('Bug', 'Fire'),
('Bug', 'Flying'),
('Bug', 'Ghost'),
('Bug', 'Poison'),
('Bug', 'Steel'),
('Dark', 'Dark'),
('Dark', 'Fairy'),
('Dark', 'Fighting'),
('Dragon', 'Steel'),
('Electric', 'Dragon'),
('Electric', 'Electric'),
('Electric', 'Grass'),
('Fairy', 'Fire'),
('Fairy', 'Poison'),
('Fairy', 'Steel'),
('Fighting', 'Bug'),
('Fighting', 'Fairy'),
('Fighting', 'Flying'),
('Fighting', 'Poison'),
('Fighting', 'Psychic'),
('Fire', 'Dragon'),
('Fire', 'Fire'),
('Fire', 'Rock'),
('Fire', 'Water'),
('Flying', 'Electric'),
('Flying', 'Rock'),
('Flying', 'Steel'),
('Ghost', 'Dark'),
('Grass', 'Bug'),
('Grass', 'Dragon'),
('Grass', 'Fire'),
('Grass', 'Flying'),
('Grass', 'Grass'),
('Grass', 'Poison'),
('Grass', 'Steel'),
('Ground', 'Bug'),
('Ground', 'Grass'),
('Ice', 'Fire'),
('Ice', 'Ice'),
('Ice', 'Steel'),
('Ice', 'Water'),
('Normal', 'Rock'),
('Normal', 'Steel'),
('Poison', 'Ghost'),
('Poison', 'Ground'),
('Poison', 'Poison'),
('Poison', 'Rock'),
('Psychic', 'Psychic'),
('Psychic', 'Steel'),
('Rock', 'Fighting'),
('Rock', 'Ground'),
('Rock', 'Steel'),
('Steel', 'Electric'),
('Steel', 'Fire'),
('Steel', 'Steel'),
('Steel', 'Water'),
('Water', 'Dragon'),
('Water', 'Grass'),
('Water', 'Water');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chooseteam`
--
ALTER TABLE `chooseteam`
  ADD PRIMARY KEY (`gmail`,`natl_dex`,`variance`),
  ADD KEY `fk_team_pokemon` (`natl_dex`,`variance`);

--
-- Indexes for table `egg_grp`
--
ALTER TABLE `egg_grp`
  ADD PRIMARY KEY (`natl_dex`,`variance`,`egg_grp`);

--
-- Indexes for table `Evolvefrom`
--
ALTER TABLE `Evolvefrom`
  ADD PRIMARY KEY (`natl_dex2`,`variance2`,`natl_dex`,`variance`),
  ADD KEY `fk_Pokemon_Evolve` (`natl_dex`,`variance`);

--
-- Indexes for table `has`
--
ALTER TABLE `has`
  ADD PRIMARY KEY (`natl_dex`,`variance`,`type`),
  ADD KEY `fk_has_type` (`type`);

--
-- Indexes for table `NeutralAgainst`
--
ALTER TABLE `NeutralAgainst`
  ADD PRIMARY KEY (`firstNeutral`,`secondNeutral`),
  ADD KEY `fk_neutral2` (`secondNeutral`);

--
-- Indexes for table `NoEffect`
--
ALTER TABLE `NoEffect`
  ADD PRIMARY KEY (`attackingType`,`unaffectedType`),
  ADD KEY `fk_no2` (`unaffectedType`);

--
-- Indexes for table `Pokemon`
--
ALTER TABLE `Pokemon`
  ADD PRIMARY KEY (`natl_dex`,`variance`);

--
-- Indexes for table `StrongAgainst`
--
ALTER TABLE `StrongAgainst`
  ADD PRIMARY KEY (`strongType`,`weakType`),
  ADD KEY `fk_strong2` (`weakType`);

--
-- Indexes for table `Types`
--
ALTER TABLE `Types`
  ADD PRIMARY KEY (`typeName`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`gmail`);

--
-- Indexes for table `votesFor`
--
ALTER TABLE `votesFor`
  ADD PRIMARY KEY (`gmail`,`natl_dex`,`variance`),
  ADD KEY `fk_Pokemon_vote` (`natl_dex`,`variance`);

--
-- Indexes for table `WeakAgainst`
--
ALTER TABLE `WeakAgainst`
  ADD PRIMARY KEY (`weakType`,`strongType`),
  ADD KEY `fk_weak2` (`strongType`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chooseteam`
--
ALTER TABLE `chooseteam`
  ADD CONSTRAINT `fk_team_mail` FOREIGN KEY (`gmail`) REFERENCES `User` (`gmail`),
  ADD CONSTRAINT `fk_team_pokemon` FOREIGN KEY (`natl_dex`, `variance`) REFERENCES `Pokemon` (`natl_dex`, `variance`);

--
-- Constraints for table `egg_grp`
--
ALTER TABLE `egg_grp`
  ADD CONSTRAINT `fk_Pokemon_egg` FOREIGN KEY (`natl_dex`, `variance`) REFERENCES `Pokemon` (`natl_dex`, `variance`);

--
-- Constraints for table `Evolvefrom`
--
ALTER TABLE `Evolvefrom`
  ADD CONSTRAINT `fk_Pokemon_Evolve` FOREIGN KEY (`natl_dex`, `variance`) REFERENCES `Pokemon` (`natl_dex`, `variance`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Pokemon_Evolve2` FOREIGN KEY (`natl_dex2`, `variance2`) REFERENCES `Pokemon` (`natl_dex`, `variance`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `has`
--
ALTER TABLE `has`
  ADD CONSTRAINT `fk_Pokemon` FOREIGN KEY (`natl_dex`, `variance`) REFERENCES `Pokemon` (`natl_dex`, `variance`),
  ADD CONSTRAINT `fk_has_type` FOREIGN KEY (`type`) REFERENCES `Types` (`typeName`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `NeutralAgainst`
--
ALTER TABLE `NeutralAgainst`
  ADD CONSTRAINT `fk_neutral1` FOREIGN KEY (`firstNeutral`) REFERENCES `Types` (`typeName`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_neutral2` FOREIGN KEY (`secondNeutral`) REFERENCES `Types` (`typeName`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `NoEffect`
--
ALTER TABLE `NoEffect`
  ADD CONSTRAINT `fk_no1` FOREIGN KEY (`attackingType`) REFERENCES `Types` (`typeName`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_no2` FOREIGN KEY (`unaffectedType`) REFERENCES `Types` (`typeName`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `StrongAgainst`
--
ALTER TABLE `StrongAgainst`
  ADD CONSTRAINT `fk_strong1` FOREIGN KEY (`strongType`) REFERENCES `Types` (`typeName`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_strong2` FOREIGN KEY (`weakType`) REFERENCES `Types` (`typeName`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `votesFor`
--
ALTER TABLE `votesFor`
  ADD CONSTRAINT `fk_Pokemon_vote` FOREIGN KEY (`natl_dex`, `variance`) REFERENCES `Pokemon` (`natl_dex`, `variance`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_gmail_vote` FOREIGN KEY (`gmail`) REFERENCES `User` (`gmail`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `WeakAgainst`
--
ALTER TABLE `WeakAgainst`
  ADD CONSTRAINT `fk_weak1` FOREIGN KEY (`weakType`) REFERENCES `Types` (`typeName`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_weak2` FOREIGN KEY (`strongType`) REFERENCES `Types` (`typeName`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
