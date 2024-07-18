-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 18, 2024 at 02:51 PM
-- Server version: 8.2.0
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `finder_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `fish_listings`
--

DROP TABLE IF EXISTS `fish_listings`;
CREATE TABLE IF NOT EXISTS `fish_listings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sellerID` int NOT NULL,
  `fish_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `taking_care_guide` varchar(400) NOT NULL,
  `category` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `price` int NOT NULL,
  `fish_img` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `fish_listings`
--

INSERT INTO `fish_listings` (`id`, `sellerID`, `fish_name`, `description`, `taking_care_guide`, `category`, `price`, `fish_img`) VALUES
(1, 2, 'Nemo', 'sadadas', '', 'freshwater', 32232, 'White Black Neon Green Modern SWOT Analysis Infographics (1).png'),
(3, 1, 'Betta', 'Best Fish for beginners', '', 'pet', 65, 'JK Flip-Flop Even Counter - Fabillar.png'),
(5, 1, 'Nemoo', 'The long-lost fish in the sea.', 'The long-lost fish in the sea.', 'saltwater', 10000, 'Wallpaper.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

DROP TABLE IF EXISTS `salary`;
CREATE TABLE IF NOT EXISTS `salary` (
  `id` int NOT NULL AUTO_INCREMENT,
  `position` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `salary` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`id`, `position`, `salary`) VALUES
(1, 'Software Developer', 35750),
(2, 'Backend Developer', 30000),
(3, 'Accountant', 28222),
(4, 'Team Manager', 55000),
(5, 'Human Resources', 28000),
(6, 'Database Administrator', 50279),
(7, 'IT Project Manager', 65000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `store_name` varchar(150) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `city` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `contact_number` int NOT NULL,
  `password` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `profile_img` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `is_Seller` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `profile_img` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `store_name`, `city`, `email`, `contact_number`, `password`, `profile_img`, `is_Seller`) VALUES
(1, 'Nicolas Alexander', 'nicoo', 'Banana Store', 'San Fernando', 'banana@gmail.com', 2147483647, '$2a$10$kRsJFJ4G01wdsQPA915V3.2L9LF1MYrp0ZsSP.oBZR/Vu6Tcc.FKm', 'Scholars.jpg', 1),
(2, 'nicolas', 'nicolas', 'Banana Beach Store', 'San Fernando', 'banana3@gmail.com', 2147483647, '$2a$10$BAlSmLxXZj60AtO3DrshYOYl2yf7lRvwqFwDVyBPjPEdwEzZMc.di', '2024-Yamaha-XS125-EU-Heritage_White-Static-004-03.jpg', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
