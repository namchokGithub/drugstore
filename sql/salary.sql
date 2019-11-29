-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2019 at 08:05 AM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `s60160252`
--

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `S_ID` char(10) NOT NULL,
  `S_DATE` date NOT NULL,
  `S_PERIOD` varchar(10) NOT NULL,
  `S_AMOUNT` decimal(9,2) NOT NULL,
  `S_AMOUNT_RECEIVED` decimal(9,2) NOT NULL,
  `EMP_ID` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`S_ID`, `S_DATE`, `S_PERIOD`, `S_AMOUNT`, `S_AMOUNT_RECEIVED`, `EMP_ID`) VALUES
('1000', '2019-11-20', '1', '10000.00', '10000.00', '000'),
('1001', '2019-11-20', '1', '10000.00', '10000.00', '1000'),
('1002', '2019-11-20', '1', '60000.00', '60000.00', '4000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`S_ID`),
  ADD UNIQUE KEY `S_ID` (`S_ID`),
  ADD KEY `EMP_ID` (`EMP_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `salary`
--
ALTER TABLE `salary`
  ADD CONSTRAINT `SALARY_ibfk_1` FOREIGN KEY (`EMP_ID`) REFERENCES `employee` (`EMP_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
