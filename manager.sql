-- phpMyAdmin SQL Dump
-- version 4.7.8
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 02, 2019 at 03:45 AM
-- Server version: 5.7.26-0ubuntu0.16.04.1-log
-- PHP Version: 7.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2201713130229`
--

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `man_id` int(5) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` int(5) NOT NULL,
  `schedule1_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`man_id`, `name`, `type`, `department_id`, `schedule1_id`) VALUES
(1, 'Malcom', 'Engineering', 1, 2),
(2, 'Steven Zhang', 'Concierge', 4, 2),
(3, 'Elizabeth Chen', 'Housekeeping', 3, 3),
(4, 'Alejandro Guillermo', 'Bistro & In House Kitchen', 2, 4),
(5, 'Chen Baizhang', 'Tao’s Hotpot', 2, 0),
(6, 'Donald Allen', 'Golf Course & landscaping', 1, 0),
(7, 'Ella Castilla', 'Spa and gym', 1, 0),
(8, 'Shia Black', 'Aquatic (pools)', 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`man_id`),
  ADD KEY `department_id` (`department_id`),
  ADD KEY `department_id_2` (`department_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `manager`
--
ALTER TABLE `manager`
  MODIFY `man_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `manager`
--
ALTER TABLE `manager`
  ADD CONSTRAINT `manager_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`dep_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
