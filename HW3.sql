-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 06, 2023 at 08:51 AM
-- Server version: 5.7.39
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `HW3`
--

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `id` int(11) NOT NULL,
  `username` varchar(128) NOT NULL,
  `forename` varchar(128) NOT NULL,
  `surname` varchar(128) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`id`, `username`, `forename`, `surname`, `password`) VALUES
(1, 'Louis_Vuitton_Don1', 'Kanye', 'West', 'Kim'),
(2, 'Silver_Surfer69', 'Silver', 'Surfer', 'Wavy'),
(3, 'OJ_da_Juiceman4', 'OJ', 'Juiceman', 'Orange'),
(4, 'Slick_Rick2', 'Slick', 'Rick', 'Bars'),
(5, 'Ken_Carson56', 'Ken', 'Carson', 'X'),
(6, 'Jordan_Carter33', 'Playboi', 'Carti', 'Vamp'),
(7, 'Michael_Jordan23', 'Michael', 'Jordan', 'Goat'),
(8, 'Michael_Jackson21', 'Michael', 'Jackson', 'Popstar'),
(9, 'Michael_Tyson63', 'Mike', 'Tyson', 'Champ'),
(10, 'Michael_Phelps17', 'Michael', 'Phelps', '2Many');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
