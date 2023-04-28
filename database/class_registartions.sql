-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2022 at 06:39 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `class_registartions`
--

-- --------------------------------------------------------

--
-- Table structure for table `cisclasses`
--

CREATE TABLE `cisclasses` (
  `className` varchar(100) NOT NULL,
  `day` varchar(20) NOT NULL,
  `classStart` varchar(10) NOT NULL,
  `classEnd` varchar(10) NOT NULL,
  `isAvailable` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cisclasses`
--

INSERT INTO `cisclasses` (`className`, `day`, `classStart`, `classEnd`, `isAvailable`) VALUES
('CIS_Mon_8_11', 'Monday', '8', '11', 1),
('CIS_Mon_13_16', 'Monday', '13', '16', 1),
('CIS_Mon_18_21', 'Monday', '18', '21', 1),
('CIS_Tue_8_11', 'Tuesday', '8', '11', 1),
('CIS_Tue_13_16', 'Tuesday', '13', '16', 1),
('CIS_Tue_18_21', 'Tuesday', '18', '21', 0),
('CIS_Wed_8_11', 'Wednesday', '8', '11', 1),
('CIS_Wed_13_16', 'Wednesday', '13', '16', 1),
('CIS_Wed_18_21', 'Wednesday', '18', '21', 1),
('CIS_Thur_8_11', 'Thursday', '8', '11', 1),
('CIS_Thur_13_16', 'Thursday', '13', '16', 1),
('CIS_Thur_18_21', 'Thursday', '18', '21', 0),
('CIS_Fri_8_11', 'Friday', '8', '11', 1),
('CIS_Fri_13_16', 'Friday', '13', '16', 1),
('CIS_Fri_18_21', 'Friday', '18', '21', 1),
('CIS_Sat_8_11', 'Saturday', '8', '11', 1),
('CIS_Sat_13_16', 'Saturday', '13', '16', 1),
('CIS_Sat_18_21', 'Saturday', '18', '21', 1);

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `className` varchar(100) NOT NULL,
  `FacultyName` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`className`, `FacultyName`, `subject`) VALUES
('CYBER_Wed_18_21', 'cyberfac', 'cyber'),
('CIS_Thur_18_21', 'hareesha', 'adb'),
('CS_Tue_13_16', 'Raj', 'Networking'),
('CS_Mon_18_21', 'abc', 'sub1'),
('CS_Sat_13_16', 'exfac', 'exsub'),
('CIS_Tue_18_21', 'Geetu', 'Boothu'),
('CYBER_Tue_18_21', 'siva', 'puli');

-- --------------------------------------------------------

--
-- Table structure for table `csclasses`
--

CREATE TABLE `csclasses` (
  `className` varchar(100) NOT NULL,
  `day` varchar(20) NOT NULL,
  `classStart` varchar(10) NOT NULL,
  `classEnd` varchar(10) NOT NULL,
  `isAvailable` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `csclasses`
--

INSERT INTO `csclasses` (`className`, `day`, `classStart`, `classEnd`, `isAvailable`) VALUES
('CS_Mon_8_11', 'Monday', '8', '11', 1),
('CS_Mon_13_16', 'Monday', '13', '16', 1),
('CS_Mon_18_21', 'Monday', '18', '21', 0),
('CS_Tue_8_11', 'Tuesday', '8', '11', 1),
('CS_Tue_13_16', 'Tuesday', '13', '16', 0),
('CS_Tue_18_21', 'Tuesday', '18', '21', 1),
('CS_Wed_8_11', 'Wednesday', '8', '11', 1),
('CS_Wed_13_16', 'Wednesday', '13', '16', 1),
('CS_Wed_18_21', 'Wednesday', '18', '21', 1),
('CS_Thur_8_11', 'Thursday', '8', '11', 1),
('CS_Thur_13_16', 'Thursday', '13', '16', 1),
('CS_Thur_18_21', 'Thursday', '18', '21', 1),
('CS_Fri_8_11', 'Friday', '8', '11', 1),
('CS_Fri_13_16', 'Friday', '13', '16', 1),
('CS_Fri_18_21', 'Friday', '18', '21', 1),
('CS_Sat_8_11', 'Saturday', '8', '11', 1),
('CS_Sat_13_16', 'Saturday', '13', '16', 0),
('CS_Sat_18_21', 'Saturday', '18', '21', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cyberclasses`
--

CREATE TABLE `cyberclasses` (
  `className` varchar(100) NOT NULL,
  `day` varchar(20) NOT NULL,
  `classStart` varchar(10) NOT NULL,
  `classEnd` varchar(10) NOT NULL,
  `isAvailable` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cyberclasses`
--

INSERT INTO `cyberclasses` (`className`, `day`, `classStart`, `classEnd`, `isAvailable`) VALUES
('CYBER_Mon_8_11', 'Monday', '8', '11', 1),
('CYBER_Mon_13_16', 'Monday', '13', '16', 1),
('CYBER_Mon_18_21', 'Monday', '18', '21', 1),
('CYBER_Tue_8_11', 'Tuesday', '8', '11', 1),
('CYBER_Tue_13_16', 'Tuesday', '13', '16', 1),
('CYBER_Tue_18_21', 'Tuesday', '18', '21', 0),
('CYBER_Wed_8_11', 'Wednesday', '8', '11', 1),
('CYBER_Wed_13_16', 'Wednesday', '13', '16', 1),
('CYBER_Wed_18_21', 'Wednesday', '18', '21', 0),
('CYBER_Thur_8_11', 'Thursday', '8', '11', 1),
('CYBER_Thur_13_16', 'Thursday', '13', '16', 1),
('CYBER_Thur_18_21', 'Thursday', '18', '21', 1),
('CYBER_Fri_8_11', 'Friday', '8', '11', 1),
('CYBER_Fri_13_16', 'Friday', '13', '16', 1),
('CYBER_Fri_18_21', 'Friday', '18', '21', 1),
('CYBER_Sat_8_11', 'Saturday', '8', '11', 1),
('CYBER_Sat_13_16', 'Saturday', '13', '16', 1),
('CYBER_Sat_18_21', 'Saturday', '18', '21', 1);

-- --------------------------------------------------------

--
-- Table structure for table `studentclassmapping`
--

CREATE TABLE `studentclassmapping` (
  `studentEmail` varchar(100) NOT NULL,
  `className` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `studentclassmapping`
--

INSERT INTO `studentclassmapping` (`studentEmail`, `className`) VALUES
('test2@ucmo.edu', 'CS_Mon_18_21'),
('test2@ucmo.edu', 'CS_Sat_13_16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `accountcreateddate` datetime NOT NULL DEFAULT current_timestamp(),
  `course` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`email`, `password`, `firstname`, `lastname`, `type`, `accountcreateddate`, `course`) VALUES
('admin@ucmo.edu', 'admin@123', 'admin', 'admin', 'admin', '2022-04-29 17:47:53', 'admin'),
('test1@ucmo.edu', 'test1@123', 'test1', 'test', 'user', '2022-04-29 17:49:55', 'cis'),
('test2@ucmo.edu', 'test2@123', 'test2', 'test', 'user', '2022-05-01 11:45:56', 'cs'),
('test3@ucmo.edu', 'test3@123', 'test3', 'test', 'user', '2022-05-01 11:45:56', 'cyber');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
