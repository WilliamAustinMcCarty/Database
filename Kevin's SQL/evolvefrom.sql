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
-- Table structure for table `evolvefrom`
--

CREATE TABLE `evolvefrom` (
  `natl_dex` int(11) NOT NULL,
  `varience` varchar(256) NOT NULL,
  `natl_dex2` int(11) DEFAULT NULL,
  `varience2` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `evolvefrom`
--

INSERT INTO `evolvefrom` (`natl_dex`, `varience`, `natl_dex2`, `varience2`) VALUES
(51, 'default', 50, 'default'),
(53, 'default', 52, 'default'),
(55, 'default', 54, 'default'),
(57, 'default', 56, 'default'),
(59, 'default', 58, 'default'),
(61, 'default', 60, 'default'),
(62, 'default', 61, 'default'),
(64, 'default', 63, 'default'),
(65, 'default', 64, 'default'),
(67, 'default', 66, 'default'),
(68, 'default', 67, 'default'),
(70, 'default', 69, 'default'),
(71, 'default', 70, 'default'),
(73, 'default', 72, 'default'),
(75, 'default', 74, 'default'),
(76, 'default', 75, 'default'),
(78, 'default', 77, 'default'),
(80, 'default', 79, 'default'),
(82, 'default', 81, 'default'),
(85, 'default', 84, 'default'),
(87, 'default', 86, 'default'),
(89, 'default', 88, 'default'),
(91, 'default', 90, 'default'),
(93, 'default', 92, 'default'),
(94, 'default', 93, 'default'),
(97, 'default', 96, 'default'),
(99, 'default', 98, 'default');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `evolvefrom`
--
ALTER TABLE `evolvefrom`
  ADD PRIMARY KEY (`natl_dex`,`varience`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
