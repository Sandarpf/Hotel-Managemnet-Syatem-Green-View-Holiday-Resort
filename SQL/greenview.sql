-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2020 at 01:49 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `greenview`
--

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

CREATE TABLE `promotion` (
  `pid` int(11) NOT NULL,
  `pname` varchar(50) NOT NULL,
  `pTitle` varchar(50) NOT NULL,
  `pStartDate` varchar(20) NOT NULL,
  `pEndDate` varchar(20) NOT NULL,
  `Descrip` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `promotion`
--

INSERT INTO `promotion` (`pid`, `pname`, `pTitle`, `pStartDate`, `pEndDate`, `Descrip`) VALUES
(5, 'ddada', 'scsv', '2020-03-09', '2020-03-17', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uId` int(11) NOT NULL,
  `uname` varchar(100) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `ugender` varchar(50) NOT NULL,
  `umail` varchar(250) NOT NULL,
  `unation` varchar(50) NOT NULL,
  `uaddress` varchar(250) NOT NULL,
  `unumber` int(10) NOT NULL,
  `upass` varchar(250) NOT NULL,
  `utype` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uId`, `uname`, `fname`, `lname`, `ugender`, `umail`, `unation`, `uaddress`, `unumber`, `upass`, `utype`) VALUES
(1, 'test', 'test', 'test', 'male', 'test@gmail.com', 'test', 'sdnfalncljkajkl/cnka/lclkan/lkcnac', 201010110, 'test', 'Customer'),
(2, 'testing', '', '', '', '', '', '', 0, 'testing', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `promotion`
--
ALTER TABLE `promotion`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;


DROP TABLE IF EXISTS `taxicustomer`;
CREATE TABLE IF NOT EXISTS `taxicustomer` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(50) NOT NULL,
  `full_name` varchar(200) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tel_number` int(20) NOT NULL,
  `reserved_room_no` int(10) NOT NULL,
  `time` time NOT NULL,
  `date` date NOT NULL,
  `location` varchar(50) NOT NULL,
  `vehicle_type` varchar(20) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `taxicustomer`
--

INSERT INTO `taxicustomer` (`user_id`, `username`, `password`, `user_type`, `full_name`, `email`, `tel_number`, `reserved_room_no`, `time`, `date`, `location`, `vehicle_type`, `is_deleted`) VALUES
(14, 'user', 'user', 'Customer', 'chalaka jayasinghe', 'nbachalaka@gmail.com', 754504401, 9, '10:30:00', '2020-04-02', 'Kaduwela', 'Van', 1),
(15, 'user', 'user', 'Customer', 'chalaka jayasinghe', 'nbachalaka@gmail.com', 754504401, 90, '10:20:00', '2020-03-27', 'Malabe', 'Car', 0),
(16, 'user', 'user', 'Customer', 'chalaka jayasinghe', 'nbachalaka@gmail.com', 754504401, 9, '10:30:00', '2020-04-03', 'Rambukkana', 'Budget Car', 0),
(17, 'user', 'user', 'Admin', 'chalaka jayasinghe', 'nbachalaka@gmail.com', 754504401, 9, '10:03:00', '2020-04-01', 'Mathale', 'Budget Car', 0),
(18, 'user', 'user', 'Customer', 'Chamath SANJAYA', 'chethiyakdis@gmail.com', 1231654, 5, '15:41:00', '0063-12-11', '41', 'Van', 0),
(19, 'user', 'pass', 'Customer', 'Chamath SANJAYA', 'chethiyakdis@gmail.com', 1231654, 1654, '16:06:00', '5454-12-04', '5646', 'Budget Car', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
