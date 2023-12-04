-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 03, 2023 at 07:55 PM
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
  `Road` varchar(200) DEFAULT NULL,
  `FromPlace` varchar(200) DEFAULT NULL,
  `ToPlace` varchar(200) DEFAULT NULL,
  `FromCoordinatesLat` float DEFAULT NULL,
  `FromCoordinatesLon` float NOT NULL,
  `ToCoordinatesLat` float DEFAULT NULL,
  `ToCoordinatesLon` float DEFAULT NULL,
  `Reason` varchar(200) DEFAULT NULL,
  `StartTime` datetime DEFAULT NULL,
  `StopTime` datetime DEFAULT NULL,
  `Delay` int(10) DEFAULT NULL,
  `IncidentType` varchar(100) DEFAULT NULL,
  `Distance` int(10) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `incidents`
--

INSERT INTO `incidents` (`IncidentNumber`, `Road`, `FromPlace`, `ToPlace`, `FromCoordinatesLat`, `FromCoordinatesLon`, `ToCoordinatesLat`, `ToCoordinatesLon`, `Reason`, `StartTime`, `StopTime`, `Delay`, `IncidentType`, `Distance`, `UpdateTime`) VALUES
(7397, 'A1', 'Hengelo-Noord', 'Hengelo-Noord', 52.2771, 6.838, 52.2771, 6.838, 'De op- en afrit is dicht. Van 3 december 2023 21:00 uur tot 4 december 2023 05:00 uur.', '2023-12-03 20:00:00', '2023-12-04 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:34:58'),
(7398, 'A1', 'Hengelo-Noord', 'Hengelo-Noord', 52.2771, 6.838, 52.2771, 6.838, 'Oprit dicht. Van 4 december 2023 05:00 uur tot 8 december 2023 20:00 uur.', '2023-12-04 04:00:00', '2023-12-08 19:00:00', 0, 'roadworks', 0, '2023-12-03 07:34:58'),
(7399, 'A1', 'Apeldoorn-Zuid', 'Apeldoorn-Zuid', 52.1747, 5.97786, 52.1747, 5.97786, 'De op- en afrit is dicht. Van 4 december 2023 20:30 uur tot 5 december 2023 05:00 uur.', '2023-12-04 19:30:00', '2023-12-05 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:34:58'),
(7400, 'A2', 'knp. Amstel', 'knp. Amstel', 52.3284, 4.91335, 52.3284, 4.91335, 'Dicht. Van 4 december 2023 23:00 uur tot 5 december 2023 05:00 uur.', '2023-12-04 22:00:00', '2023-12-05 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:34:58'),
(7401, 'A2', 'Kelpen-Oler', 'Kelpen-Oler', 51.2355, 5.79364, 51.2355, 5.79364, 'De oprit is dicht. Van 4 december 2023 20:00 uur tot 5 december 2023 05:00 uur.', '2023-12-04 19:00:00', '2023-12-05 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:34:58'),
(7402, 'A2', 'Nieuwegein-Zuid', 'Nieuwegein-Zuid', 52.0038, 5.0748, 52.0038, 5.0748, 'De oprit is dicht. Van 4 december 2023 20:00 uur tot 5 december 2023 05:00 uur.', '2023-12-04 19:00:00', '2023-12-05 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:34:58'),
(7403, 'A2', 'afrit Sint-Michielsgestel', 'afrit Sint-Michielsgestel', 51.6744, 5.32926, 51.6744, 5.32926, 'De op- en afrit is dicht. Van 4 december 2023 22:30 uur tot 5 december 2023 05:30 uur.', '2023-12-04 21:30:00', '2023-12-05 04:30:00', 0, 'roadworks', 0, '2023-12-03 07:34:58'),
(7404, 'A2', 'Boxtel-Noord', 'Boxtel-Noord', 51.6155, 5.31776, 51.6155, 5.31776, 'De op- en afrit is dicht. Van 4 december 2023 20:00 uur tot 5 december 2023 01:00 uur.', '2023-12-04 19:00:00', '2023-12-05 00:00:00', 0, 'roadworks', 0, '2023-12-03 07:34:58'),
(7405, 'A2', 'Boxtel', 'Boxtel', 51.5775, 5.35622, 51.5775, 5.35622, 'De oprit is dicht. Van 4 december 2023 23:30 uur tot 5 december 2023 02:30 uur.', '2023-12-04 22:30:00', '2023-12-05 01:30:00', 0, 'roadworks', 0, '2023-12-03 07:34:58'),
(7406, 'A2', 'Elsloo', 'Elsloo', 50.9527, 5.78769, 50.9527, 5.78769, 'De oprit is dicht. Van 4 december 2023 20:00 uur tot 5 december 2023 05:00 uur.', '2023-12-04 19:00:00', '2023-12-05 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:34:58'),
(7407, 'A5', 'Amsterdam-Westpoort', 'Amsterdam-Westpoort', 52.3934, 4.79415, 52.3934, 4.79415, 'De oprit is dicht. Van 4 december 2023 21:00 uur tot 5 december 2023 05:00 uur.', '2023-12-04 20:00:00', '2023-12-05 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:34:58'),
(7408, 'A7', 'afrit Avenhorn', 'afrit Avenhorn', 52.6282, 5.00587, 52.6282, 5.00587, 'De op- en afrit is dicht. Van 4 december 2023 20:00 uur tot 5 december 2023 06:00 uur.', '2023-12-04 19:00:00', '2023-12-05 05:00:00', 0, 'roadworks', 0, '2023-12-03 07:34:58'),
(7409, 'A7', 'Sneek-Oost', 'Joure-West', 53.0216, 5.67668, 52.9633, 5.76909, 'Wegwerkzaamheden. Van 6 februari 2023 15:00 uur tot 15 juni 2024 18:00 uur.', '2023-02-06 14:00:00', '2024-06-15 16:00:00', 0, 'roadworks', 0, '2023-12-03 07:34:58'),
(7410, 'A7', 'Joure-West', 'Sneek-West', 52.9633, 5.76909, 53.0333, 5.62217, 'Wegwerkzaamheden. Van 6 februari 2023 15:00 uur tot 15 juni 2024 18:00 uur.', '2023-02-06 14:00:00', '2024-06-15 16:00:00', 0, 'roadworks', 0, '2023-12-03 07:34:58'),
(7411, 'A12', 'knp. Velperbroek', 'knp. Velperbroek', 51.9819, 5.97862, 51.9819, 5.97862, 'Wegwerkzaamheden. Van 13 januari 2020 22:00 uur tot 31 december 2023 05:00 uur.', '2020-01-13 21:00:00', '2023-12-31 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:34:58'),
(7412, 'A12', 'Nieuwegein', 'Nieuwegein', 52.0614, 5.09007, 52.0614, 5.09007, 'De oprit is dicht. Van 18 juni 2022 07:00 uur tot 26 februari 2024 05:00 uur.', '2022-06-18 05:00:00', '2024-02-26 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:34:58'),
(7413, 'A12', 'Nieuwegein', 'Kanaleneiland', 52.0614, 5.09007, 52.0597, 5.10635, 'Wegwerkzaamheden. Van 13 juni 2022 00:01 uur tot 1 januari 2025 00:00 uur.', '2022-06-12 22:01:00', '2024-12-31 23:00:00', 0, 'roadworks', 0, '2023-12-03 07:34:58'),
(7414, 'A15', 'knp. Ressen', 'knp. Valburg', 51.8969, 5.86764, 51.9082, 5.76781, 'Dicht. Van 4 december 2023 20:00 uur tot 5 december 2023 05:00 uur.', '2023-12-04 19:00:00', '2023-12-05 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:34:58'),
(7415, 'A16', 'Rotterdam-Prins Alexander', 'Rotterdam-Prins Alexander', 51.9456, 4.53212, 51.9456, 4.53212, 'De oprit is dicht. Van 4 december 2023 22:00 uur tot 5 december 2023 01:00 uur.', '2023-12-04 21:00:00', '2023-12-05 00:00:00', 0, 'roadworks', 0, '2023-12-03 07:34:58'),
(7416, 'A16', 'Breda-Noord', 'Breda-Noord', 51.6042, 4.72074, 51.6042, 4.72074, 'De afrit is dicht. Van 4 december 2023 21:00 uur tot 5 december 2023 05:00 uur.', '2023-12-04 20:00:00', '2023-12-05 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:34:58'),
(7417, 'A27', 'Breda-Noord', 'Breda-Noord', 51.5923, 4.82889, 51.5923, 4.82889, 'De oprit is dicht. Van 4 december 2023 22:00 uur tot 5 december 2023 01:00 uur.', '2023-12-04 21:00:00', '2023-12-05 00:00:00', 0, 'roadworks', 0, '2023-12-03 07:34:58'),
(7418, 'A28', 'Groningen-Centrum', 'Groningen-Centrum', 53.2008, 6.56581, 53.2008, 6.56581, 'De afrit is dicht. Van 1 december 2023 22:00 uur tot 4 december 2023 06:00 uur.', '2023-12-01 21:00:00', '2023-12-04 05:00:00', 0, 'roadworks', 0, '2023-12-03 07:34:58'),
(7419, 'A28', 'Groningen-Zuid', 'Groningen-Zuid', 53.1927, 6.56425, 53.1927, 6.56425, 'De oprit is dicht. Van 1 december 2023 22:00 uur tot 4 december 2023 06:00 uur.', '2023-12-01 21:00:00', '2023-12-04 05:00:00', 0, 'roadworks', 0, '2023-12-03 07:34:58'),
(7420, 'A28', 'Zwolle-Centrum', 'Zwolle-Centrum', 52.5172, 6.08421, 52.5172, 6.08421, 'De afrit is dicht. Van 4 december 2023 23:30 uur tot 5 december 2023 03:00 uur.', '2023-12-04 22:30:00', '2023-12-05 02:00:00', 0, 'roadworks', 0, '2023-12-03 07:34:58'),
(7421, 'A28', 'Leusden-Zuid', 'Leusden-Zuid', 52.1344, 5.39599, 52.1344, 5.39599, 'De afrit is dicht. Van 4 december 2023 20:00 uur tot 5 december 2023 05:00 uur.', '2023-12-04 19:00:00', '2023-12-05 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:34:58'),
(7422, 'A29', 'Barendrecht', 'afrit Oud-Beijerland', 51.846, 4.51561, 51.8153, 4.48713, 'Dicht. Wegwerkzaamheden.', '0000-00-00 00:00:00', '2023-12-04 04:00:00', 0, 'jam', 0, '2023-12-03 07:34:58'),
(7423, 'A29', 'de Heinenoordtunnel', 'de Heinenoordtunnel', 51.8325, 4.5113, 51.8325, 4.5113, 'Dicht. Van 1 december 2023 22:00 uur tot 4 december 2023 05:00 uur.', '2023-12-01 21:00:00', '2023-12-04 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:34:58'),
(7424, 'A30', 'Barneveld', 'Barneveld', 52.1222, 5.5658, 52.1222, 5.5658, 'De oprit is dicht. Van 4 december 2023 20:00 uur tot 5 december 2023 05:00 uur.', '2023-12-04 19:00:00', '2023-12-05 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:34:58'),
(7425, 'A32', 'Akkrum', 'Akkrum', 53.0479, 5.84568, 53.0479, 5.84568, 'De afrit is dicht. Van 4 december 2023 19:00 uur tot 5 december 2023 06:00 uur.', '2023-12-04 18:00:00', '2023-12-05 05:00:00', 0, 'roadworks', 0, '2023-12-03 07:34:58'),
(7426, 'A44', 'Oegstgeest', 'Wassenaar', 52.1791, 4.45772, 52.1422, 4.41628, 'Dicht. Van 4 december 2023 21:00 uur tot 5 december 2023 05:00 uur.', '2023-12-04 20:00:00', '2023-12-05 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:34:58'),
(7427, 'A50', 'Heerde-Zuid', 'Heerde-Zuid', 52.3727, 6.02281, 52.3727, 6.02281, 'De oprit is dicht. Van 4 december 2023 21:00 uur tot 5 december 2023 05:00 uur.', '2023-12-04 20:00:00', '2023-12-05 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:34:58'),
(7428, 'A58', 'Tilburg-Centrum West', 'Tilburg-Centrum West', 51.5395, 5.04758, 51.5395, 5.04758, 'De oprit is dicht. Van 4 december 2023 21:00 uur tot 5 december 2023 05:00 uur.', '2023-12-04 20:00:00', '2023-12-05 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:34:58'),
(7429, 'A73', 'Horst', 'Horst', 51.4486, 6.06938, 51.4486, 6.06938, 'De oprit is dicht. Van 4 december 2023 20:00 uur tot 5 december 2023 05:00 uur.', '2023-12-04 19:00:00', '2023-12-05 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:34:58'),
(7430, 'N3', 'Dordrecht-Krispijn', 'Dordrecht-Krispijn', 51.7953, 4.6794, 51.7953, 4.6794, 'De afrit is dicht. Van 12 september 2023 00:00 uur tot 31 december 2023 05:00 uur.', '2023-09-11 22:00:00', '2023-12-31 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:34:58'),
(7431, 'N7', 'knp. Euvelgunne', 'Groningen-Zuidoost', 53.2169, 6.61843, 53.2115, 6.58856, 'Dicht. Wegwerkzaamheden.', '0000-00-00 00:00:00', '2023-12-04 05:00:00', 0, 'jam', 0, '2023-12-03 07:34:58'),
(7432, 'N7', 'knp. Euvelgunne', 'Groningen-Zuidoost', 53.2169, 6.61843, 53.2115, 6.58856, 'Dicht. Van 1 december 2023 22:00 uur tot 4 december 2023 06:00 uur.', '2023-12-01 21:00:00', '2023-12-04 05:00:00', 0, 'roadworks', 0, '2023-12-03 07:34:58'),
(7433, 'N7', 'Groningen-Helpman', 'Groningen-Helpman', 53.2053, 6.57403, 53.2053, 6.57403, 'De afrit is dicht. Van 6 november 2023 05:00 uur tot 1 januari 2025 12:00 uur.', '2023-11-06 04:00:00', '2025-01-01 11:00:00', 0, 'roadworks', 0, '2023-12-03 07:34:58'),
(7434, 'N232', 'de aansluiting met de A9', 'de aansluiting met de A9', 52.3126, 4.81372, 52.3126, 4.81372, 'Dicht. Van 30 maart 2023 09:30 uur tot 31 maart 2025 05:00 uur.', '2023-03-30 07:30:00', '2025-03-31 03:00:00', 0, 'roadworks', 0, '2023-12-03 07:34:58'),
(7435, 'N241', 'Hoogwoud', 'Heerhugowaard', 52.7077, 4.93572, 52.722, 4.85627, 'Dicht. Van 4 september 2023 06:00 uur tot 8 december 2023 18:00 uur.', '2023-09-04 04:00:00', '2023-12-08 17:00:00', 0, 'roadworks', 0, '2023-12-03 07:34:58'),
(7436, 'N241', 'Heerhugowaard', 'Hoogwoud', 52.722, 4.85627, 52.7077, 4.93572, 'Dicht. Van 4 september 2023 06:00 uur tot 8 december 2023 18:00 uur.', '2023-09-04 04:00:00', '2023-12-08 17:00:00', 0, 'roadworks', 0, '2023-12-03 07:34:58'),
(7437, 'N256', 'de Zeelandbrug', 'de Zeelandbrug', 51.6123, 3.89141, 51.6123, 3.89141, 'Dicht. Van 5 december 2023 00:00 uur tot 5 december 2023 05:00 uur.', '2023-12-04 23:00:00', '2023-12-05 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:34:58'),
(7438, 'N256', 'de Zeelandbrug', 'de Zeelandbrug', 51.6123, 3.89141, 51.6123, 3.89141, 'Dicht. Van 5 december 2023 00:00 uur tot 5 december 2023 05:00 uur.', '2023-12-04 23:00:00', '2023-12-05 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:34:58'),
(7439, 'N271', 'Arcen', 'Arcen', 51.4715, 6.189, 51.4715, 6.189, 'Dicht. Van 18 september 2023 07:00 uur tot 8 december 2023 16:00 uur.', '2023-09-18 05:00:00', '2023-12-08 15:00:00', 0, 'roadworks', 0, '2023-12-03 07:34:58'),
(7440, 'N271', 'Arcen', 'Arcen', 51.4715, 6.189, 51.4715, 6.189, 'Dicht. Van 18 september 2023 07:00 uur tot 8 december 2023 16:00 uur.', '2023-09-18 05:00:00', '2023-12-08 15:00:00', 0, 'roadworks', 0, '2023-12-03 07:34:58'),
(7441, 'N351', 'Kuinre', 'Wolvega', 52.7844, 5.84263, 52.8746, 5.98137, 'Dicht. Van 2 oktober 2023 06:00 uur tot 8 december 2023 23:59 uur.', '2023-10-02 04:00:00', '2023-12-08 22:59:00', 0, 'roadworks', 0, '2023-12-03 07:34:58'),
(7442, 'N351', 'Wolvega', 'Kuinre', 52.8746, 5.98137, 52.7844, 5.84263, 'Dicht. Van 2 oktober 2023 06:00 uur tot 8 december 2023 23:59 uur.', '2023-10-02 04:00:00', '2023-12-08 22:59:00', 0, 'roadworks', 0, '2023-12-03 07:34:58'),
(7443, 'N386', 'Kiel-Windeweer', 'Kiel-Windeweer', 53.1177, 6.71999, 53.1177, 6.71999, 'Dicht. Van 7 augustus 2023 00:00 uur tot 17 december 2023 00:00 uur.', '2023-08-06 22:00:00', '2023-12-16 23:00:00', 0, 'roadworks', 0, '2023-12-03 07:34:58'),
(7444, 'N386', 'Kiel-Windeweer', 'Kiel-Windeweer', 53.1177, 6.71999, 53.1177, 6.71999, 'Dicht. Van 7 augustus 2023 00:00 uur tot 17 december 2023 00:00 uur.', '2023-08-06 22:00:00', '2023-12-16 23:00:00', 0, 'roadworks', 0, '2023-12-03 07:34:58'),
(7445, 'N519', 'Zwanenburg', 'Boesingheliede', 52.3721, 4.74819, 52.3584, 4.72879, '', '2023-12-03 19:24:30', '0000-00-00 00:00:00', 360, 'jam', 300, '2023-12-03 07:34:58'),
(7446, 'Amsterdam', 'de Nieuwezijds Voorburgwal', 'de Nassaukade', 52.3732, 4.8891, 52.3718, 4.8741, '', '2023-12-03 19:31:30', '0000-00-00 00:00:00', 240, 'jam', 200, '2023-12-03 07:34:58'),
(7447, 'Zwolle', 'het Stationsplein', 'de Leo Majorlaan', 52.506, 6.09051, 52.5047, 6.11351, '', '2023-12-03 19:22:00', '0000-00-00 00:00:00', 180, 'jam', 200, '2023-12-03 07:34:58'),
(7448, 'A1', 'Hengelo-Noord', 'Hengelo-Noord', 52.2771, 6.838, 52.2771, 6.838, 'De op- en afrit is dicht. Van 3 december 2023 21:00 uur tot 4 december 2023 05:00 uur.', '2023-12-03 20:00:00', '2023-12-04 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:35:09'),
(7449, 'A1', 'Hengelo-Noord', 'Hengelo-Noord', 52.2771, 6.838, 52.2771, 6.838, 'Oprit dicht. Van 4 december 2023 05:00 uur tot 8 december 2023 20:00 uur.', '2023-12-04 04:00:00', '2023-12-08 19:00:00', 0, 'roadworks', 0, '2023-12-03 07:35:09'),
(7450, 'A1', 'Apeldoorn-Zuid', 'Apeldoorn-Zuid', 52.1747, 5.97786, 52.1747, 5.97786, 'De op- en afrit is dicht. Van 4 december 2023 20:30 uur tot 5 december 2023 05:00 uur.', '2023-12-04 19:30:00', '2023-12-05 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:35:09'),
(7451, 'A2', 'knp. Amstel', 'knp. Amstel', 52.3284, 4.91335, 52.3284, 4.91335, 'Dicht. Van 4 december 2023 23:00 uur tot 5 december 2023 05:00 uur.', '2023-12-04 22:00:00', '2023-12-05 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:35:09'),
(7452, 'A2', 'Kelpen-Oler', 'Kelpen-Oler', 51.2355, 5.79364, 51.2355, 5.79364, 'De oprit is dicht. Van 4 december 2023 20:00 uur tot 5 december 2023 05:00 uur.', '2023-12-04 19:00:00', '2023-12-05 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:35:09'),
(7453, 'A2', 'Nieuwegein-Zuid', 'Nieuwegein-Zuid', 52.0038, 5.0748, 52.0038, 5.0748, 'De oprit is dicht. Van 4 december 2023 20:00 uur tot 5 december 2023 05:00 uur.', '2023-12-04 19:00:00', '2023-12-05 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:35:09'),
(7454, 'A2', 'afrit Sint-Michielsgestel', 'afrit Sint-Michielsgestel', 51.6744, 5.32926, 51.6744, 5.32926, 'De op- en afrit is dicht. Van 4 december 2023 22:30 uur tot 5 december 2023 05:30 uur.', '2023-12-04 21:30:00', '2023-12-05 04:30:00', 0, 'roadworks', 0, '2023-12-03 07:35:09'),
(7455, 'A2', 'Boxtel-Noord', 'Boxtel-Noord', 51.6155, 5.31776, 51.6155, 5.31776, 'De op- en afrit is dicht. Van 4 december 2023 20:00 uur tot 5 december 2023 01:00 uur.', '2023-12-04 19:00:00', '2023-12-05 00:00:00', 0, 'roadworks', 0, '2023-12-03 07:35:09'),
(7456, 'A2', 'Boxtel', 'Boxtel', 51.5775, 5.35622, 51.5775, 5.35622, 'De oprit is dicht. Van 4 december 2023 23:30 uur tot 5 december 2023 02:30 uur.', '2023-12-04 22:30:00', '2023-12-05 01:30:00', 0, 'roadworks', 0, '2023-12-03 07:35:09'),
(7457, 'A2', 'Elsloo', 'Elsloo', 50.9527, 5.78769, 50.9527, 5.78769, 'De oprit is dicht. Van 4 december 2023 20:00 uur tot 5 december 2023 05:00 uur.', '2023-12-04 19:00:00', '2023-12-05 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:35:09'),
(7458, 'A5', 'Amsterdam-Westpoort', 'Amsterdam-Westpoort', 52.3934, 4.79415, 52.3934, 4.79415, 'De oprit is dicht. Van 4 december 2023 21:00 uur tot 5 december 2023 05:00 uur.', '2023-12-04 20:00:00', '2023-12-05 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:35:09'),
(7459, 'A7', 'afrit Avenhorn', 'afrit Avenhorn', 52.6282, 5.00587, 52.6282, 5.00587, 'De op- en afrit is dicht. Van 4 december 2023 20:00 uur tot 5 december 2023 06:00 uur.', '2023-12-04 19:00:00', '2023-12-05 05:00:00', 0, 'roadworks', 0, '2023-12-03 07:35:09'),
(7460, 'A7', 'Sneek-Oost', 'Joure-West', 53.0216, 5.67668, 52.9633, 5.76909, 'Wegwerkzaamheden. Van 6 februari 2023 15:00 uur tot 15 juni 2024 18:00 uur.', '2023-02-06 14:00:00', '2024-06-15 16:00:00', 0, 'roadworks', 0, '2023-12-03 07:35:09'),
(7461, 'A7', 'Joure-West', 'Sneek-West', 52.9633, 5.76909, 53.0333, 5.62217, 'Wegwerkzaamheden. Van 6 februari 2023 15:00 uur tot 15 juni 2024 18:00 uur.', '2023-02-06 14:00:00', '2024-06-15 16:00:00', 0, 'roadworks', 0, '2023-12-03 07:35:09'),
(7462, 'A12', 'knp. Velperbroek', 'knp. Velperbroek', 51.9819, 5.97862, 51.9819, 5.97862, 'Wegwerkzaamheden. Van 13 januari 2020 22:00 uur tot 31 december 2023 05:00 uur.', '2020-01-13 21:00:00', '2023-12-31 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:35:09'),
(7463, 'A12', 'Nieuwegein', 'Nieuwegein', 52.0614, 5.09007, 52.0614, 5.09007, 'De oprit is dicht. Van 18 juni 2022 07:00 uur tot 26 februari 2024 05:00 uur.', '2022-06-18 05:00:00', '2024-02-26 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:35:09'),
(7464, 'A12', 'Nieuwegein', 'Kanaleneiland', 52.0614, 5.09007, 52.0597, 5.10635, 'Wegwerkzaamheden. Van 13 juni 2022 00:01 uur tot 1 januari 2025 00:00 uur.', '2022-06-12 22:01:00', '2024-12-31 23:00:00', 0, 'roadworks', 0, '2023-12-03 07:35:09'),
(7465, 'A15', 'knp. Ressen', 'knp. Valburg', 51.8969, 5.86764, 51.9082, 5.76781, 'Dicht. Van 4 december 2023 20:00 uur tot 5 december 2023 05:00 uur.', '2023-12-04 19:00:00', '2023-12-05 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:35:09'),
(7466, 'A16', 'Rotterdam-Prins Alexander', 'Rotterdam-Prins Alexander', 51.9456, 4.53212, 51.9456, 4.53212, 'De oprit is dicht. Van 4 december 2023 22:00 uur tot 5 december 2023 01:00 uur.', '2023-12-04 21:00:00', '2023-12-05 00:00:00', 0, 'roadworks', 0, '2023-12-03 07:35:09'),
(7467, 'A16', 'Breda-Noord', 'Breda-Noord', 51.6042, 4.72074, 51.6042, 4.72074, 'De afrit is dicht. Van 4 december 2023 21:00 uur tot 5 december 2023 05:00 uur.', '2023-12-04 20:00:00', '2023-12-05 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:35:09'),
(7468, 'A27', 'Breda-Noord', 'Breda-Noord', 51.5923, 4.82889, 51.5923, 4.82889, 'De oprit is dicht. Van 4 december 2023 22:00 uur tot 5 december 2023 01:00 uur.', '2023-12-04 21:00:00', '2023-12-05 00:00:00', 0, 'roadworks', 0, '2023-12-03 07:35:09'),
(7469, 'A28', 'Groningen-Centrum', 'Groningen-Centrum', 53.2008, 6.56581, 53.2008, 6.56581, 'De afrit is dicht. Van 1 december 2023 22:00 uur tot 4 december 2023 06:00 uur.', '2023-12-01 21:00:00', '2023-12-04 05:00:00', 0, 'roadworks', 0, '2023-12-03 07:35:09'),
(7470, 'A28', 'Groningen-Zuid', 'Groningen-Zuid', 53.1927, 6.56425, 53.1927, 6.56425, 'De oprit is dicht. Van 1 december 2023 22:00 uur tot 4 december 2023 06:00 uur.', '2023-12-01 21:00:00', '2023-12-04 05:00:00', 0, 'roadworks', 0, '2023-12-03 07:35:09'),
(7471, 'A28', 'Zwolle-Centrum', 'Zwolle-Centrum', 52.5172, 6.08421, 52.5172, 6.08421, 'De afrit is dicht. Van 4 december 2023 23:30 uur tot 5 december 2023 03:00 uur.', '2023-12-04 22:30:00', '2023-12-05 02:00:00', 0, 'roadworks', 0, '2023-12-03 07:35:09'),
(7472, 'A28', 'Leusden-Zuid', 'Leusden-Zuid', 52.1344, 5.39599, 52.1344, 5.39599, 'De afrit is dicht. Van 4 december 2023 20:00 uur tot 5 december 2023 05:00 uur.', '2023-12-04 19:00:00', '2023-12-05 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:35:09'),
(7473, 'A29', 'Barendrecht', 'afrit Oud-Beijerland', 51.846, 4.51561, 51.8153, 4.48713, 'Dicht. Wegwerkzaamheden.', '0000-00-00 00:00:00', '2023-12-04 04:00:00', 0, 'jam', 0, '2023-12-03 07:35:09'),
(7474, 'A29', 'de Heinenoordtunnel', 'de Heinenoordtunnel', 51.8325, 4.5113, 51.8325, 4.5113, 'Dicht. Van 1 december 2023 22:00 uur tot 4 december 2023 05:00 uur.', '2023-12-01 21:00:00', '2023-12-04 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:35:09'),
(7475, 'A30', 'Barneveld', 'Barneveld', 52.1222, 5.5658, 52.1222, 5.5658, 'De oprit is dicht. Van 4 december 2023 20:00 uur tot 5 december 2023 05:00 uur.', '2023-12-04 19:00:00', '2023-12-05 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:35:09'),
(7476, 'A32', 'Akkrum', 'Akkrum', 53.0479, 5.84568, 53.0479, 5.84568, 'De afrit is dicht. Van 4 december 2023 19:00 uur tot 5 december 2023 06:00 uur.', '2023-12-04 18:00:00', '2023-12-05 05:00:00', 0, 'roadworks', 0, '2023-12-03 07:35:09'),
(7477, 'A44', 'Oegstgeest', 'Wassenaar', 52.1791, 4.45772, 52.1422, 4.41628, 'Dicht. Van 4 december 2023 21:00 uur tot 5 december 2023 05:00 uur.', '2023-12-04 20:00:00', '2023-12-05 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:35:09'),
(7478, 'A50', 'Heerde-Zuid', 'Heerde-Zuid', 52.3727, 6.02281, 52.3727, 6.02281, 'De oprit is dicht. Van 4 december 2023 21:00 uur tot 5 december 2023 05:00 uur.', '2023-12-04 20:00:00', '2023-12-05 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:35:09'),
(7479, 'A58', 'Tilburg-Centrum West', 'Tilburg-Centrum West', 51.5395, 5.04758, 51.5395, 5.04758, 'De oprit is dicht. Van 4 december 2023 21:00 uur tot 5 december 2023 05:00 uur.', '2023-12-04 20:00:00', '2023-12-05 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:35:09'),
(7480, 'A73', 'Horst', 'Horst', 51.4486, 6.06938, 51.4486, 6.06938, 'De oprit is dicht. Van 4 december 2023 20:00 uur tot 5 december 2023 05:00 uur.', '2023-12-04 19:00:00', '2023-12-05 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:35:09'),
(7481, 'N3', 'Dordrecht-Krispijn', 'Dordrecht-Krispijn', 51.7953, 4.6794, 51.7953, 4.6794, 'De afrit is dicht. Van 12 september 2023 00:00 uur tot 31 december 2023 05:00 uur.', '2023-09-11 22:00:00', '2023-12-31 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:35:09'),
(7482, 'N7', 'knp. Euvelgunne', 'Groningen-Zuidoost', 53.2169, 6.61843, 53.2115, 6.58856, 'Dicht. Wegwerkzaamheden.', '0000-00-00 00:00:00', '2023-12-04 05:00:00', 0, 'jam', 0, '2023-12-03 07:35:09'),
(7483, 'N7', 'knp. Euvelgunne', 'Groningen-Zuidoost', 53.2169, 6.61843, 53.2115, 6.58856, 'Dicht. Van 1 december 2023 22:00 uur tot 4 december 2023 06:00 uur.', '2023-12-01 21:00:00', '2023-12-04 05:00:00', 0, 'roadworks', 0, '2023-12-03 07:35:09'),
(7484, 'N7', 'Groningen-Helpman', 'Groningen-Helpman', 53.2053, 6.57403, 53.2053, 6.57403, 'De afrit is dicht. Van 6 november 2023 05:00 uur tot 1 januari 2025 12:00 uur.', '2023-11-06 04:00:00', '2025-01-01 11:00:00', 0, 'roadworks', 0, '2023-12-03 07:35:09'),
(7485, 'N232', 'de aansluiting met de A9', 'de aansluiting met de A9', 52.3126, 4.81372, 52.3126, 4.81372, 'Dicht. Van 30 maart 2023 09:30 uur tot 31 maart 2025 05:00 uur.', '2023-03-30 07:30:00', '2025-03-31 03:00:00', 0, 'roadworks', 0, '2023-12-03 07:35:09'),
(7486, 'N241', 'Hoogwoud', 'Heerhugowaard', 52.7077, 4.93572, 52.722, 4.85627, 'Dicht. Van 4 september 2023 06:00 uur tot 8 december 2023 18:00 uur.', '2023-09-04 04:00:00', '2023-12-08 17:00:00', 0, 'roadworks', 0, '2023-12-03 07:35:09'),
(7487, 'N241', 'Heerhugowaard', 'Hoogwoud', 52.722, 4.85627, 52.7077, 4.93572, 'Dicht. Van 4 september 2023 06:00 uur tot 8 december 2023 18:00 uur.', '2023-09-04 04:00:00', '2023-12-08 17:00:00', 0, 'roadworks', 0, '2023-12-03 07:35:09'),
(7488, 'N256', 'de Zeelandbrug', 'de Zeelandbrug', 51.6123, 3.89141, 51.6123, 3.89141, 'Dicht. Van 5 december 2023 00:00 uur tot 5 december 2023 05:00 uur.', '2023-12-04 23:00:00', '2023-12-05 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:35:09'),
(7489, 'N256', 'de Zeelandbrug', 'de Zeelandbrug', 51.6123, 3.89141, 51.6123, 3.89141, 'Dicht. Van 5 december 2023 00:00 uur tot 5 december 2023 05:00 uur.', '2023-12-04 23:00:00', '2023-12-05 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:35:09'),
(7490, 'N271', 'Arcen', 'Arcen', 51.4715, 6.189, 51.4715, 6.189, 'Dicht. Van 18 september 2023 07:00 uur tot 8 december 2023 16:00 uur.', '2023-09-18 05:00:00', '2023-12-08 15:00:00', 0, 'roadworks', 0, '2023-12-03 07:35:09'),
(7491, 'N271', 'Arcen', 'Arcen', 51.4715, 6.189, 51.4715, 6.189, 'Dicht. Van 18 september 2023 07:00 uur tot 8 december 2023 16:00 uur.', '2023-09-18 05:00:00', '2023-12-08 15:00:00', 0, 'roadworks', 0, '2023-12-03 07:35:09'),
(7492, 'N351', 'Kuinre', 'Wolvega', 52.7844, 5.84263, 52.8746, 5.98137, 'Dicht. Van 2 oktober 2023 06:00 uur tot 8 december 2023 23:59 uur.', '2023-10-02 04:00:00', '2023-12-08 22:59:00', 0, 'roadworks', 0, '2023-12-03 07:35:09'),
(7493, 'N351', 'Wolvega', 'Kuinre', 52.8746, 5.98137, 52.7844, 5.84263, 'Dicht. Van 2 oktober 2023 06:00 uur tot 8 december 2023 23:59 uur.', '2023-10-02 04:00:00', '2023-12-08 22:59:00', 0, 'roadworks', 0, '2023-12-03 07:35:09'),
(7494, 'N386', 'Kiel-Windeweer', 'Kiel-Windeweer', 53.1177, 6.71999, 53.1177, 6.71999, 'Dicht. Van 7 augustus 2023 00:00 uur tot 17 december 2023 00:00 uur.', '2023-08-06 22:00:00', '2023-12-16 23:00:00', 0, 'roadworks', 0, '2023-12-03 07:35:09'),
(7495, 'N386', 'Kiel-Windeweer', 'Kiel-Windeweer', 53.1177, 6.71999, 53.1177, 6.71999, 'Dicht. Van 7 augustus 2023 00:00 uur tot 17 december 2023 00:00 uur.', '2023-08-06 22:00:00', '2023-12-16 23:00:00', 0, 'roadworks', 0, '2023-12-03 07:35:09'),
(7496, 'N519', 'Zwanenburg', 'Boesingheliede', 52.3721, 4.74819, 52.3584, 4.72879, '', '2023-12-03 19:24:30', '0000-00-00 00:00:00', 360, 'jam', 300, '2023-12-03 07:35:09'),
(7497, 'Amsterdam', 'de Nieuwezijds Voorburgwal', 'de Nassaukade', 52.3732, 4.8891, 52.3718, 4.8741, '', '2023-12-03 19:31:30', '0000-00-00 00:00:00', 240, 'jam', 200, '2023-12-03 07:35:09'),
(7498, 'Zwolle', 'het Stationsplein', 'de Leo Majorlaan', 52.506, 6.09051, 52.5047, 6.11351, '', '2023-12-03 19:22:00', '0000-00-00 00:00:00', 180, 'jam', 200, '2023-12-03 07:35:09'),
(7499, 'A1', 'Hengelo-Noord', 'Hengelo-Noord', 52.2771, 6.838, 52.2771, 6.838, 'De op- en afrit is dicht. Van 3 december 2023 21:00 uur tot 4 december 2023 05:00 uur.', '2023-12-03 20:00:00', '2023-12-04 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:54:35'),
(7500, 'A1', 'Hengelo-Noord', 'Hengelo-Noord', 52.2771, 6.838, 52.2771, 6.838, 'Oprit dicht. Van 4 december 2023 05:00 uur tot 8 december 2023 20:00 uur.', '2023-12-04 04:00:00', '2023-12-08 19:00:00', 0, 'roadworks', 0, '2023-12-03 07:54:35'),
(7501, 'A1', 'Apeldoorn-Zuid', 'Apeldoorn-Zuid', 52.1747, 5.97786, 52.1747, 5.97786, 'De op- en afrit is dicht. Van 4 december 2023 20:30 uur tot 5 december 2023 05:00 uur.', '2023-12-04 19:30:00', '2023-12-05 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:54:35'),
(7502, 'A2', 'knp. Amstel', 'knp. Amstel', 52.3284, 4.91335, 52.3284, 4.91335, 'Dicht. Van 4 december 2023 23:00 uur tot 5 december 2023 05:00 uur.', '2023-12-04 22:00:00', '2023-12-05 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:54:35'),
(7503, 'A2', 'Kelpen-Oler', 'Kelpen-Oler', 51.2355, 5.79364, 51.2355, 5.79364, 'De oprit is dicht. Van 4 december 2023 20:00 uur tot 5 december 2023 05:00 uur.', '2023-12-04 19:00:00', '2023-12-05 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:54:35'),
(7504, 'A2', 'Nieuwegein-Zuid', 'Nieuwegein-Zuid', 52.0038, 5.0748, 52.0038, 5.0748, 'De oprit is dicht. Van 4 december 2023 20:00 uur tot 5 december 2023 05:00 uur.', '2023-12-04 19:00:00', '2023-12-05 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:54:35'),
(7505, 'A2', 'afrit Sint-Michielsgestel', 'afrit Sint-Michielsgestel', 51.6744, 5.32926, 51.6744, 5.32926, 'De op- en afrit is dicht. Van 4 december 2023 22:30 uur tot 5 december 2023 05:30 uur.', '2023-12-04 21:30:00', '2023-12-05 04:30:00', 0, 'roadworks', 0, '2023-12-03 07:54:35'),
(7506, 'A2', 'Boxtel-Noord', 'Boxtel-Noord', 51.6155, 5.31776, 51.6155, 5.31776, 'De op- en afrit is dicht. Van 4 december 2023 20:00 uur tot 5 december 2023 01:00 uur.', '2023-12-04 19:00:00', '2023-12-05 00:00:00', 0, 'roadworks', 0, '2023-12-03 07:54:35'),
(7507, 'A2', 'Boxtel', 'Boxtel', 51.5775, 5.35622, 51.5775, 5.35622, 'De oprit is dicht. Van 4 december 2023 23:30 uur tot 5 december 2023 02:30 uur.', '2023-12-04 22:30:00', '2023-12-05 01:30:00', 0, 'roadworks', 0, '2023-12-03 07:54:35'),
(7508, 'A2', 'Elsloo', 'Elsloo', 50.9527, 5.78769, 50.9527, 5.78769, 'De oprit is dicht. Van 4 december 2023 20:00 uur tot 5 december 2023 05:00 uur.', '2023-12-04 19:00:00', '2023-12-05 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:54:35'),
(7509, 'A5', 'Amsterdam-Westpoort', 'Amsterdam-Westpoort', 52.3934, 4.79415, 52.3934, 4.79415, 'De oprit is dicht. Van 4 december 2023 21:00 uur tot 5 december 2023 05:00 uur.', '2023-12-04 20:00:00', '2023-12-05 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:54:35'),
(7510, 'A7', 'afrit Avenhorn', 'afrit Avenhorn', 52.6282, 5.00587, 52.6282, 5.00587, 'De op- en afrit is dicht. Van 4 december 2023 20:00 uur tot 5 december 2023 06:00 uur.', '2023-12-04 19:00:00', '2023-12-05 05:00:00', 0, 'roadworks', 0, '2023-12-03 07:54:35'),
(7511, 'A7', 'Sneek-Oost', 'Joure-West', 53.0216, 5.67668, 52.9633, 5.76909, 'Wegwerkzaamheden. Van 6 februari 2023 15:00 uur tot 15 juni 2024 18:00 uur.', '2023-02-06 14:00:00', '2024-06-15 16:00:00', 0, 'roadworks', 0, '2023-12-03 07:54:35'),
(7512, 'A7', 'Joure-West', 'Sneek-West', 52.9633, 5.76909, 53.0333, 5.62217, 'Wegwerkzaamheden. Van 6 februari 2023 15:00 uur tot 15 juni 2024 18:00 uur.', '2023-02-06 14:00:00', '2024-06-15 16:00:00', 0, 'roadworks', 0, '2023-12-03 07:54:35'),
(7513, 'A12', 'knp. Velperbroek', 'knp. Velperbroek', 51.9819, 5.97862, 51.9819, 5.97862, 'Wegwerkzaamheden. Van 13 januari 2020 22:00 uur tot 31 december 2023 05:00 uur.', '2020-01-13 21:00:00', '2023-12-31 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:54:35'),
(7514, 'A12', 'Nieuwegein', 'Nieuwegein', 52.0614, 5.09007, 52.0614, 5.09007, 'De oprit is dicht. Van 18 juni 2022 07:00 uur tot 26 februari 2024 05:00 uur.', '2022-06-18 05:00:00', '2024-02-26 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:54:35'),
(7515, 'A12', 'Nieuwegein', 'Kanaleneiland', 52.0614, 5.09007, 52.0597, 5.10635, 'Wegwerkzaamheden. Van 13 juni 2022 00:01 uur tot 1 januari 2025 00:00 uur.', '2022-06-12 22:01:00', '2024-12-31 23:00:00', 0, 'roadworks', 0, '2023-12-03 07:54:35'),
(7516, 'A15', 'knp. Ressen', 'knp. Valburg', 51.8969, 5.86764, 51.9082, 5.76781, 'Dicht. Van 4 december 2023 20:00 uur tot 5 december 2023 05:00 uur.', '2023-12-04 19:00:00', '2023-12-05 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:54:35'),
(7517, 'A16', 'Rotterdam-Prins Alexander', 'Rotterdam-Prins Alexander', 51.9456, 4.53212, 51.9456, 4.53212, 'De oprit is dicht. Van 4 december 2023 22:00 uur tot 5 december 2023 01:00 uur.', '2023-12-04 21:00:00', '2023-12-05 00:00:00', 0, 'roadworks', 0, '2023-12-03 07:54:35'),
(7518, 'A16', 'Breda-Noord', 'Breda-Noord', 51.6042, 4.72074, 51.6042, 4.72074, 'De afrit is dicht. Van 4 december 2023 21:00 uur tot 5 december 2023 05:00 uur.', '2023-12-04 20:00:00', '2023-12-05 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:54:35'),
(7519, 'A27', 'Breda-Noord', 'Breda-Noord', 51.5923, 4.82889, 51.5923, 4.82889, 'De oprit is dicht. Van 4 december 2023 22:00 uur tot 5 december 2023 01:00 uur.', '2023-12-04 21:00:00', '2023-12-05 00:00:00', 0, 'roadworks', 0, '2023-12-03 07:54:35'),
(7520, 'A28', 'Groningen-Centrum', 'Groningen-Centrum', 53.2008, 6.56581, 53.2008, 6.56581, 'De afrit is dicht. Van 1 december 2023 22:00 uur tot 4 december 2023 06:00 uur.', '2023-12-01 21:00:00', '2023-12-04 05:00:00', 0, 'roadworks', 0, '2023-12-03 07:54:35'),
(7521, 'A28', 'Groningen-Zuid', 'Groningen-Zuid', 53.1927, 6.56425, 53.1927, 6.56425, 'De oprit is dicht. Van 1 december 2023 22:00 uur tot 4 december 2023 06:00 uur.', '2023-12-01 21:00:00', '2023-12-04 05:00:00', 0, 'roadworks', 0, '2023-12-03 07:54:35'),
(7522, 'A28', 'Zwolle-Centrum', 'Zwolle-Centrum', 52.5172, 6.08421, 52.5172, 6.08421, 'De afrit is dicht. Van 4 december 2023 23:30 uur tot 5 december 2023 03:00 uur.', '2023-12-04 22:30:00', '2023-12-05 02:00:00', 0, 'roadworks', 0, '2023-12-03 07:54:35'),
(7523, 'A28', 'Leusden-Zuid', 'Leusden-Zuid', 52.1344, 5.39599, 52.1344, 5.39599, 'De afrit is dicht. Van 4 december 2023 20:00 uur tot 5 december 2023 05:00 uur.', '2023-12-04 19:00:00', '2023-12-05 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:54:35'),
(7524, 'A29', 'Barendrecht', 'afrit Oud-Beijerland', 51.846, 4.51561, 51.8153, 4.48713, 'Dicht. Wegwerkzaamheden.', '0000-00-00 00:00:00', '2023-12-04 04:00:00', 0, 'jam', 0, '2023-12-03 07:54:35'),
(7525, 'A29', 'de Heinenoordtunnel', 'de Heinenoordtunnel', 51.8325, 4.5113, 51.8325, 4.5113, 'Dicht. Van 1 december 2023 22:00 uur tot 4 december 2023 05:00 uur.', '2023-12-01 21:00:00', '2023-12-04 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:54:35'),
(7526, 'A30', 'Barneveld', 'Barneveld', 52.1222, 5.5658, 52.1222, 5.5658, 'De oprit is dicht. Van 4 december 2023 20:00 uur tot 5 december 2023 05:00 uur.', '2023-12-04 19:00:00', '2023-12-05 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:54:35'),
(7527, 'A32', 'Akkrum', 'Akkrum', 53.0479, 5.84568, 53.0479, 5.84568, 'De afrit is dicht. Van 4 december 2023 19:00 uur tot 5 december 2023 06:00 uur.', '2023-12-04 18:00:00', '2023-12-05 05:00:00', 0, 'roadworks', 0, '2023-12-03 07:54:35'),
(7528, 'A44', 'Oegstgeest', 'Wassenaar', 52.1791, 4.45772, 52.1422, 4.41628, 'Dicht. Van 4 december 2023 21:00 uur tot 5 december 2023 05:00 uur.', '2023-12-04 20:00:00', '2023-12-05 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:54:35'),
(7529, 'A50', 'Heerde-Zuid', 'Heerde-Zuid', 52.3727, 6.02281, 52.3727, 6.02281, 'De oprit is dicht. Van 4 december 2023 21:00 uur tot 5 december 2023 05:00 uur.', '2023-12-04 20:00:00', '2023-12-05 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:54:35'),
(7530, 'A58', 'Tilburg-Centrum West', 'Tilburg-Centrum West', 51.5395, 5.04758, 51.5395, 5.04758, 'De oprit is dicht. Van 4 december 2023 21:00 uur tot 5 december 2023 05:00 uur.', '2023-12-04 20:00:00', '2023-12-05 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:54:35'),
(7531, 'A73', 'Horst', 'Horst', 51.4486, 6.06938, 51.4486, 6.06938, 'De oprit is dicht. Van 4 december 2023 20:00 uur tot 5 december 2023 05:00 uur.', '2023-12-04 19:00:00', '2023-12-05 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:54:35'),
(7532, 'N3', 'Dordrecht-Krispijn', 'Dordrecht-Krispijn', 51.7953, 4.6794, 51.7953, 4.6794, 'De afrit is dicht. Van 12 september 2023 00:00 uur tot 31 december 2023 05:00 uur.', '2023-09-11 22:00:00', '2023-12-31 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:54:35'),
(7533, 'N7', 'Groningen-Helpman', 'Groningen-Helpman', 53.2053, 6.57403, 53.2053, 6.57403, 'De afrit is dicht. Van 6 november 2023 05:00 uur tot 1 januari 2025 12:00 uur.', '2023-11-06 04:00:00', '2025-01-01 11:00:00', 0, 'roadworks', 0, '2023-12-03 07:54:35'),
(7534, 'N7', 'knp. Euvelgunne', 'Groningen-Zuidoost', 53.2169, 6.61843, 53.2115, 6.58856, 'Dicht. Van 1 december 2023 22:00 uur tot 4 december 2023 06:00 uur.', '2023-12-01 21:00:00', '2023-12-04 05:00:00', 0, 'roadworks', 0, '2023-12-03 07:54:35'),
(7535, 'N229', 'Wijk bij Duurstede', 'het Wijkse Veer', 51.9869, 5.33282, 51.9651, 5.34465, '', '2023-12-03 19:24:00', '0000-00-00 00:00:00', 180, 'jam', 300, '2023-12-03 07:54:35'),
(7536, 'N232', 'de aansluiting met de A9', 'de aansluiting met de A9', 52.3126, 4.81372, 52.3126, 4.81372, 'Dicht. Van 30 maart 2023 09:30 uur tot 31 maart 2025 05:00 uur.', '2023-03-30 07:30:00', '2025-03-31 03:00:00', 0, 'roadworks', 0, '2023-12-03 07:54:35'),
(7537, 'N241', 'Hoogwoud', 'Heerhugowaard', 52.7077, 4.93572, 52.722, 4.85627, 'Dicht. Van 4 september 2023 06:00 uur tot 8 december 2023 18:00 uur.', '2023-09-04 04:00:00', '2023-12-08 17:00:00', 0, 'roadworks', 0, '2023-12-03 07:54:35'),
(7538, 'N241', 'Heerhugowaard', 'Hoogwoud', 52.722, 4.85627, 52.7077, 4.93572, 'Dicht. Van 4 september 2023 06:00 uur tot 8 december 2023 18:00 uur.', '2023-09-04 04:00:00', '2023-12-08 17:00:00', 0, 'roadworks', 0, '2023-12-03 07:54:35'),
(7539, 'N256', 'de Zeelandbrug', 'de Zeelandbrug', 51.6123, 3.89141, 51.6123, 3.89141, 'Dicht. Van 5 december 2023 00:00 uur tot 5 december 2023 05:00 uur.', '2023-12-04 23:00:00', '2023-12-05 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:54:35'),
(7540, 'N256', 'de Zeelandbrug', 'de Zeelandbrug', 51.6123, 3.89141, 51.6123, 3.89141, 'Dicht. Van 5 december 2023 00:00 uur tot 5 december 2023 05:00 uur.', '2023-12-04 23:00:00', '2023-12-05 04:00:00', 0, 'roadworks', 0, '2023-12-03 07:54:35'),
(7541, 'N271', 'Arcen', 'Arcen', 51.4715, 6.189, 51.4715, 6.189, 'Dicht. Van 18 september 2023 07:00 uur tot 8 december 2023 16:00 uur.', '2023-09-18 05:00:00', '2023-12-08 15:00:00', 0, 'roadworks', 0, '2023-12-03 07:54:35'),
(7542, 'N271', 'Arcen', 'Arcen', 51.4715, 6.189, 51.4715, 6.189, 'Dicht. Van 18 september 2023 07:00 uur tot 8 december 2023 16:00 uur.', '2023-09-18 05:00:00', '2023-12-08 15:00:00', 0, 'roadworks', 0, '2023-12-03 07:54:35'),
(7543, 'N351', 'Kuinre', 'Wolvega', 52.7844, 5.84263, 52.8746, 5.98137, 'Dicht. Van 2 oktober 2023 06:00 uur tot 8 december 2023 23:59 uur.', '2023-10-02 04:00:00', '2023-12-08 22:59:00', 0, 'roadworks', 0, '2023-12-03 07:54:35'),
(7544, 'N351', 'Wolvega', 'Kuinre', 52.8746, 5.98137, 52.7844, 5.84263, 'Dicht. Van 2 oktober 2023 06:00 uur tot 8 december 2023 23:59 uur.', '2023-10-02 04:00:00', '2023-12-08 22:59:00', 0, 'roadworks', 0, '2023-12-03 07:54:35'),
(7545, 'N386', 'Kiel-Windeweer', 'Kiel-Windeweer', 53.1177, 6.71999, 53.1177, 6.71999, 'Dicht. Van 7 augustus 2023 00:00 uur tot 17 december 2023 00:00 uur.', '2023-08-06 22:00:00', '2023-12-16 23:00:00', 0, 'roadworks', 0, '2023-12-03 07:54:35'),
(7546, 'N386', 'Kiel-Windeweer', 'Kiel-Windeweer', 53.1177, 6.71999, 53.1177, 6.71999, 'Dicht. Van 7 augustus 2023 00:00 uur tot 17 december 2023 00:00 uur.', '2023-08-06 22:00:00', '2023-12-16 23:00:00', 0, 'roadworks', 0, '2023-12-03 07:54:35'),
(7547, 'N463', 'Woerdense Verlaat', 'Noordsebuurt', 52.1552, 4.86922, 52.1661, 4.85242, '', '2023-12-03 19:44:00', '0000-00-00 00:00:00', 240, 'jam', 200, '2023-12-03 07:54:35'),
(7548, 'N751', 'Hoge Hexel', 'Wierden', 52.3971, 6.56346, 52.3624, 6.57495, '', '2023-12-03 19:46:00', '0000-00-00 00:00:00', 180, 'jam', 600, '2023-12-03 07:54:35'),
(7549, 'Amsterdam', 'de Nieuwezijds Voorburgwal', 'de Nassaukade', 52.3732, 4.8891, 52.3718, 4.8741, '', '2023-12-03 19:50:30', '0000-00-00 00:00:00', 240, 'jam', 200, '2023-12-03 07:54:35');

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
  MODIFY `IncidentNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7550;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
