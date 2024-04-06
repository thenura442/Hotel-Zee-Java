-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2022 at 12:22 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel_zee`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `Id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`Id`, `email`, `fname`, `lname`, `phone`, `subject`, `message`) VALUES
(1, 'Thenura11@gmail.com', 'Thenura', 'Wijerathne', '0783323261', 'Regarding Server Failur', 'I was trying to sign in but it kept giving server failure. Hope its fixed Soon'),
(2, 'adalanane111@gmail.com', 'Menura', 'Wijessooriya', '0701097075', 'Regarding Profile Display Isssue', 'The Profile window only show me my email and my other details are displayed as null. Please Fix it'),
(3, 'venura12@gmail.com', 'Venura', 'milan', '0771095775', 'Regarding a Birthhday Celebration Hall Reservation', 'I would like to reserve one of your halls for a birthday celebration. I would like to know of the rates, catering and other services provided in detail. ');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `email` varchar(255) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`email`, `first_name`, `last_name`, `phone`, `password`) VALUES
('adalanane1111@gmail.com', 'Thiwanka', 'sadaruwan', '0753412244', '122'),
('adalanane111@gmail.com', 'Menura', 'Wijesooriya', '0771193382', '123'),
('menura112@gmail.com', 'menura', 'Vihanga', '0752334155', '1234'),
('Sanjulahimeth@gmail.com', 'Himeth ', 'Sanjula', '0705850507', '12');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `Reference_Id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `country` varchar(100) NOT NULL,
  `arrival` date NOT NULL,
  `departure` date NOT NULL,
  `adult` int(4) NOT NULL,
  `children` int(4) NOT NULL,
  `room` varchar(100) NOT NULL,
  `comment` mediumtext NOT NULL,
  `member` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`Reference_Id`, `name`, `email`, `phone`, `country`, `arrival`, `departure`, `adult`, `children`, `room`, `comment`, `member`) VALUES
(1, 'Ajith', 'adalanane111@gmail.com', '0724945027', 'Sri Lanka', '2022-02-09', '2022-02-11', 2, 2, 'Room - Deluxe Room', 'None', 'Sanjulahimeth@gmail.com'),
(2, 'Menura', 'adalanane111@gmail.com', '0701005023', 'Sri Lanka', '2022-02-10', '2022-02-12', 2, 1, 'Room - Deluxe Room', '', NULL),
(3, 'Thiwanka', 'adalanane1111@gmail.com', '0701097075', 'Sri Lanka', '2022-02-10', '2022-02-12', 2, 2, 'Suite - Presidential Suite', '-', 'adalanane1111@gmail.com'),
(5, 'Thenura', 'adalanane111@gmail.com', '0701007075', 'Sri Lanka', '2022-02-08', '2022-02-12', 2, 2, 'Suite - Presidential Suite', 'none', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`Reference_Id`),
  ADD KEY `member` (`member`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `Reference_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`member`) REFERENCES `registration` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
