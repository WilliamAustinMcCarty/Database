-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2022 at 12:42 AM
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
-- Table structure for table `pokemon`
--

CREATE TABLE `pokemon` (
  `natl_dex` int(11) NOT NULL,
  `varience` varchar(256) NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `generation` int(11) DEFAULT NULL,
  `image` varchar(256) DEFAULT NULL,
  `hp` int(11) DEFAULT NULL,
  `atk` int(11) DEFAULT NULL,
  `spatk` int(11) DEFAULT NULL,
  `speed` int(11) DEFAULT NULL,
  `def` int(11) DEFAULT NULL,
  `spdef` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pokemon`
--

INSERT INTO `pokemon` (`natl_dex`, `varience`, `name`, `generation`, `image`, `hp`, `atk`, `spatk`, `speed`, `def`, `spdef`) VALUES
(51, 'default', 'Dugtrio', 1, 'https://img.pokemondb.net/artwork/large/dugtrio.jpg', 35, 100, 50, 120, 50, 70),
(52, 'default', 'Meowth', 1, 'https://img.pokemondb.net/artwork/large/meowth.jpg', 40, 45, 40, 90, 35, 40),
(53, 'default', 'Persian', 1, 'https://img.pokemondb.net/artwork/large/persian.jpg', 65, 70, 65, 115, 60, 65),
(54, 'default', 'Psyduck', 1, 'https://img.pokemondb.net/artwork/large/psyduck.jpg', 50, 52, 65, 55, 48, 50),
(55, 'default', 'Golduck', 1, 'https://img.pokemondb.net/artwork/large/golduck.jpg', 80, 82, 95, 85, 78, 80),
(56, 'default', 'Mankey', 1, 'https://img.pokemondb.net/artwork/large/mankey.jpg', 40, 80, 35, 70, 35, 45),
(57, 'default', 'Primeape', 1, 'https://img.pokemondb.net/artwork/large/primeape.jpg', 65, 105, 60, 95, 60, 70),
(58, 'default', 'Growlithe', 1, 'https://img.pokemondb.net/artwork/large/growlithe.jpg', 55, 70, 70, 60, 45, 50),
(59, 'default', 'Arcanine', 1, 'https://img.pokemondb.net/artwork/large/arcanine.jpg', 90, 110, 100, 95, 80, 80),
(60, 'default', 'Poliwag', 1, 'https://img.pokemondb.net/artwork/large/poliwag.jpg', 40, 50, 40, 90, 40, 40),
(61, 'default', 'Poliwhirl', 1, 'https://img.pokemondb.net/artwork/large/poliwhirl.jpg', 65, 65, 50, 90, 65, 50),
(62, 'default', 'Poliwrath', 1, 'https://img.pokemondb.net/artwork/large/poliwrath.jpg', 90, 95, 70, 70, 95, 90),
(63, 'default', 'Abra', 1, 'https://img.pokemondb.net/artwork/large/abra.jpg', 25, 20, 105, 90, 15, 55),
(64, 'default', 'Kadabra', 1, 'https://img.pokemondb.net/artwork/large/kadabra.jpg', 40, 35, 120, 105, 30, 70),
(65, 'default', 'Alakazam', 1, 'https://img.pokemondb.net/artwork/large/alakazam.jpg', 55, 50, 135, 120, 45, 95),
(66, 'default', 'Machop', 1, 'https://img.pokemondb.net/artwork/large/machop.jpg', 70, 80, 35, 35, 50, 35),
(67, 'default', 'Machoke', 1, 'https://img.pokemondb.net/artwork/large/machoke.jpg', 80, 100, 50, 45, 70, 60),
(68, 'default', 'Machamp', 1, 'https://img.pokemondb.net/artwork/large/machamp.jpg', 90, 130, 65, 55, 80, 85),
(69, 'default', 'Bellsprout', 1, 'https://img.pokemondb.net/artwork/large/bellsprout.jpg', 50, 75, 70, 40, 35, 30),
(70, 'default', 'Weepinbell', 1, 'https://img.pokemondb.net/artwork/large/weepinbell.jpg', 65, 90, 85, 55, 50, 45),
(71, 'default', 'Victreebel', 1, 'https://img.pokemondb.net/artwork/large/victreebel.jpg', 80, 105, 100, 70, 65, 70),
(72, 'default', 'Tentacool', 1, 'https://img.pokemondb.net/artwork/large/tentacool.jpg', 40, 40, 50, 70, 35, 100),
(73, 'default', 'Tentacruel', 1, 'https://img.pokemondb.net/artwork/large/tentacruel.jpg', 80, 70, 80, 100, 65, 120),
(74, 'default', 'Geodude', 1, 'https://img.pokemondb.net/artwork/large/geodude.jpg', 40, 80, 30, 20, 100, 30),
(75, 'default', 'Graveler', 1, 'https://img.pokemondb.net/artwork/large/graveler.jpg', 55, 95, 45, 35, 115, 45),
(76, 'default', 'Golem', 1, 'https://img.pokemondb.net/artwork/large/golem.jpg', 80, 120, 55, 45, 130, 65),
(77, 'default', 'Ponyta', 1, 'https://img.pokemondb.net/artwork/large/ponyta.jpg', 50, 85, 65, 90, 55, 65),
(78, 'default', 'Rapidash', 1, 'https://img.pokemondb.net/artwork/large/rapidash.jpg', 65, 100, 80, 105, 70, 80),
(79, 'default', 'Slowpoke', 1, 'https://img.pokemondb.net/artwork/large/slowpoke.jpg', 90, 65, 40, 15, 65, 40),
(80, 'default', 'Slowbro', 1, 'https://img.pokemondb.net/artwork/large/slowbro.jpg', 95, 75, 100, 30, 110, 80),
(81, 'default', 'Magnemite', 1, 'https://img.pokemondb.net/artwork/large/magnemite.jpg', 25, 35, 95, 45, 70, 55),
(82, 'default', 'Magneton', 1, 'https://img.pokemondb.net/artwork/large/magneton.jpg', 50, 60, 120, 70, 95, 70),
(83, 'default', 'Farfetch\'d', 1, 'https://img.pokemondb.net/artwork/large/farfetchd.jpg', 52, 90, 58, 60, 55, 62),
(84, 'default', 'Doduo', 1, 'https://img.pokemondb.net/artwork/large/doduo.jpg', 35, 85, 35, 75, 45, 35),
(85, 'default', 'Dodrio', 1, 'https://img.pokemondb.net/artwork/large/dodrio.jpg', 60, 110, 60, 110, 70, 60),
(86, 'default', 'Seel', 1, 'https://img.pokemondb.net/artwork/large/seel.jpg', 65, 45, 45, 45, 55, 70),
(87, 'default', 'Dewgong', 1, 'https://img.pokemondb.net/artwork/large/dewgong.jpg', 90, 70, 70, 70, 80, 95),
(88, 'default', 'Grimer', 1, 'https://img.pokemondb.net/artwork/large/grimer.jpg', 80, 80, 40, 25, 50, 50),
(89, 'default', 'Muk', 1, 'https://img.pokemondb.net/artwork/large/muk.jpg', 105, 105, 65, 50, 75, 100),
(90, 'default', 'Shellder', 1, 'https://img.pokemondb.net/artwork/large/shellder.jpg', 30, 65, 45, 40, 100, 25),
(91, 'default', 'Cloyster', 1, 'https://img.pokemondb.net/artwork/large/cloyster.jpg', 50, 95, 85, 70, 180, 45),
(92, 'default', 'Gastly', 1, 'https://img.pokemondb.net/artwork/large/gastly.jpg', 30, 35, 100, 80, 30, 35),
(93, 'default', 'Haunter', 1, 'https://img.pokemondb.net/artwork/large/haunter.jpg', 45, 50, 115, 95, 45, 55),
(94, 'default', 'Gengar', 1, 'https://img.pokemondb.net/artwork/large/gengar.jpg', 60, 65, 130, 110, 60, 75),
(95, 'default', 'Onix', 1, 'https://img.pokemondb.net/artwork/large/onix.jpg', 35, 45, 30, 70, 160, 45),
(96, 'default', 'Drowzee', 1, 'https://img.pokemondb.net/artwork/large/drowzee.jpg', 60, 48, 43, 42, 45, 90),
(97, 'default', 'Hypno', 1, 'https://img.pokemondb.net/artwork/large/hypno.jpg', 85, 73, 73, 67, 70, 115),
(98, 'default', 'Krabby', 1, 'https://img.pokemondb.net/artwork/large/krabby.jpg', 30, 105, 25, 50, 90, 25),
(99, 'default', 'Kingler', 1, 'https://img.pokemondb.net/artwork/large/kingler.jpg', 55, 130, 50, 75, 115, 50),
(100, 'default', 'Voltorb', 1, 'https://img.pokemondb.net/artwork/large/voltorb.jpg', 40, 30, 55, 100, 50, 55);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pokemon`
--
ALTER TABLE `pokemon`
  ADD PRIMARY KEY (`natl_dex`,`varience`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
