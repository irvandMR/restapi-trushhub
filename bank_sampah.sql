-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 20, 2022 at 05:58 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.4.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank_sampah`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_bank`
--

DROP TABLE IF EXISTS `tabel_bank`;
CREATE TABLE IF NOT EXISTS `tabel_bank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `fulladdress` text NOT NULL,
  `street` text DEFAULT NULL,
  `municipal` varchar(255) NOT NULL,
  `categories` varchar(150) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `phones` varchar(20) DEFAULT NULL,
  `review_count` int(11) DEFAULT NULL,
  `avg_rating` decimal(2,2) DEFAULT NULL,
  `review_url` varchar(200) DEFAULT NULL,
  `google_maps_url` varchar(255) DEFAULT NULL,
  `latitude` decimal(10,8) NOT NULL,
  `longitude` decimal(11,8) NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `domain` varchar(200) DEFAULT NULL,
  `opening_hours` text DEFAULT NULL,
  `featured_image` text DEFAULT NULL,
  `cid` int(20) DEFAULT NULL,
  `place_id` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_bank`
--

INSERT INTO `tabel_bank` (`id`, `name`, `fulladdress`, `street`, `municipal`, `categories`, `phone`, `phones`, `review_count`, `avg_rating`, `review_url`, `google_maps_url`, `latitude`, `longitude`, `website`, `domain`, `opening_hours`, `featured_image`, `cid`, `place_id`) VALUES
(1, 'Bank Sampah Pondok Al-Anshar', 'Jl. Hadi Mulyono No.6, Tanjungsari, Sukoharjo, Kec. Ngaglik, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55581', 'Jl. Hadi Mulyono No.6', 'Tanjungsari', 'Pusat Daur Ulang', NULL, NULL, NULL, NULL, NULL, NULL, '-7.69145141', '10.43080740', NULL, NULL, NULL, NULL, NULL, 'ChIJZfGOp5ldei4RBw9NbazDxC0');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(150) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'John Doe', 'john.doe@email.com', '$2a$12$rBhS6/Yrv8LCO7LofHFvEeT/ooXnHmmj.3W5gmhcnS0bQs3urOxNe');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
