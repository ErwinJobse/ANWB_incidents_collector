-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 06, 2023 at 08:27 PM
-- Server version: 10.6.12-MariaDB-0ubuntu0.22.04.1
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ANWBIncidentCollector`
--

-- --------------------------------------------------------

--
-- Table structure for table `incidents`
--

CREATE TABLE `incidents` (
  `IncidentNumber` int(11) NOT NULL,
  `Road` varchar(100) DEFAULT NULL,
  `FromPlace` varchar(100) DEFAULT NULL,
  `ToPlace` varchar(100) DEFAULT NULL,
  `FromCoordinatesLat` float DEFAULT NULL,
  `FromCoordinatesLon` float DEFAULT NULL,
  `ToCoordinatesLat` float DEFAULT NULL,
  `ToCoordinatesLon` float DEFAULT NULL,
  `Reason` varchar(100) DEFAULT NULL,
  `StartTime` datetime DEFAULT NULL,
  `StopTime` datetime DEFAULT NULL,
  `Delay` int(10) DEFAULT NULL,
  `IncidentType` varchar(100) DEFAULT NULL,
  `Distance` int(10) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `Polyline` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `incidents`
--
ALTER TABLE `incidents`
  ADD PRIMARY KEY (`IncidentNumber`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `incidents`
--
ALTER TABLE `incidents`
  MODIFY `IncidentNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9010;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
