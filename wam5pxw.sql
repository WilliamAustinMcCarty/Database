-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 16, 2022 at 11:00 PM
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
(50, 'Default', 'Field');

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
(1, 'Default', 2, 'Default'),
(2, 'Default', 3, 'Default'),
(4, 'Default', 5, 'Default'),
(5, 'Default', 6, 'Default'),
(7, 'Default', 8, 'Default'),
(8, 'Default', 9, 'Default'),
(10, 'Default', 11, 'Default'),
(11, 'Default', 12, 'Default'),
(13, 'Default', 14, 'Default'),
(14, 'Default', 15, 'Default'),
(16, 'Default', 17, 'Default'),
(17, 'Default', 18, 'Default'),
(19, 'Default', 20, 'Default'),
(21, 'Default', 22, 'Default'),
(23, 'Default', 24, 'Default'),
(172, 'Default', 25, 'Default'),
(25, 'Default', 26, 'Default'),
(27, 'Default', 28, 'Default'),
(29, 'Default', 30, 'Default'),
(30, 'Default', 31, 'Default'),
(32, 'Default', 33, 'Default'),
(33, 'Default', 34, 'Default'),
(35, 'Default', 36, 'Default'),
(37, 'Default', 38, 'Default'),
(39, 'Default', 40, 'Default'),
(41, 'Default', 42, 'Default'),
(43, 'Default', 44, 'Default'),
(44, 'Default', 45, 'Default'),
(46, 'Default', 47, 'Default'),
(48, 'Default', 49, 'Default'),
(50, 'Default', 51, 'Default'),
(42, 'Default', 169, 'Default'),
(44, 'Default', 182, 'Default');

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
(50, 'Default', 'Ground');

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
  `sp.atk` int(11) NOT NULL,
  `speed` int(11) NOT NULL,
  `def` int(11) NOT NULL,
  `sp.def` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Pokemon`
--

INSERT INTO `Pokemon` (`natl_dex`, `variance`, `name`, `generation`, `image`, `hp`, `atk`, `sp.atk`, `speed`, `def`, `sp.def`) VALUES
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
(50, 'Default', 'Diglett', 1, 'https://img.pokemondb.net/artwork/large/diglett.jpg', 10, 55, 35, 95, 25, 45);

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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `egg_grp`
--
ALTER TABLE `egg_grp`
  ADD PRIMARY KEY (`natl_dex`,`variance`,`egg_grp`);

--
-- Indexes for table `Evolvefrom`
--
ALTER TABLE `Evolvefrom`
  ADD PRIMARY KEY (`natl_dex2`,`variance2`);

--
-- Indexes for table `has`
--
ALTER TABLE `has`
  ADD PRIMARY KEY (`natl_dex`,`variance`,`type`);

--
-- Indexes for table `Pokemon`
--
ALTER TABLE `Pokemon`
  ADD PRIMARY KEY (`natl_dex`,`variance`);

--
-- Indexes for table `votesFor`
--
ALTER TABLE `votesFor`
  ADD PRIMARY KEY (`gmail`,`natl_dex`,`variance`),
  ADD KEY `fk_Pokemon_vote` (`natl_dex`,`variance`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `egg_grp`
--
ALTER TABLE `egg_grp`
  ADD CONSTRAINT `fk_Pokemon_egg` FOREIGN KEY (`natl_dex`, `variance`) REFERENCES `Pokemon` (`natl_dex`, `variance`);

--
-- Constraints for table `Evolvefrom`
--
ALTER TABLE `Evolvefrom`
  ADD CONSTRAINT `fk_Pokemon_evolve` FOREIGN KEY (`natl_dex2`, `variance2`) REFERENCES `Pokemon` (`natl_dex`, `variance`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `has`
--
ALTER TABLE `has`
  ADD CONSTRAINT `fk_Pokemon` FOREIGN KEY (`natl_dex`, `variance`) REFERENCES `Pokemon` (`natl_dex`, `variance`);

--
-- Constraints for table `votesFor`
--
ALTER TABLE `votesFor`
  ADD CONSTRAINT `fk_Pokemon_vote` FOREIGN KEY (`natl_dex`, `variance`) REFERENCES `Pokemon` (`natl_dex`, `variance`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
