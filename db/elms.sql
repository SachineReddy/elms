-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2021 at 06:22 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- Database: `ELMS`

-- --------------------------------------------------------

-- Table structure for `admin`

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Data for table `admin`

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2021-11-23 16:35:01');

-- --------------------------------------------------------

-- Table structure for `departments_table`

CREATE TABLE `departments_table` (
  `id` int(11) NOT NULL,
  `DepartmentName` varchar(150) DEFAULT NULL,
  `DepartmentShortName` varchar(100) NOT NULL,
  `DepartmentCode` varchar(50) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Data for table `departments_table`

INSERT INTO `departments_table` (`id`, `DepartmentName`, `DepartmentShortName`, `DepartmentCode`, `CreationDate`) VALUES
(1, 'Information Technology', 'IT', 'IT', '2021-11-01 07:16:25'),
(2, 'Human Resource', 'HR', 'HR', '2021-11-01 07:19:37'),
(3, 'Operations', 'OP', 'OP', '2021-11-02 21:28:56'),
(5, 'Computer Science', 'CS', 'CS', '2020-12-02 21:37:56'),
(6, 'Electronics', 'EE', 'EE', '2020-12-02 21:58:56');

-- --------------------------------------------------------

-- Table structure for `employees_table`

CREATE TABLE `employees_table` (
  `id` int(11) NOT NULL,
  `EmpId` varchar(100) NOT NULL,
  `FirstName` varchar(150) NOT NULL,
  `LastName` varchar(150) NOT NULL,
  `EmailId` varchar(200) NOT NULL,
  `Password` varchar(180) NOT NULL,
  `Gender` varchar(100) NOT NULL,
  `Dob` varchar(100) NOT NULL,
  `Department` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `City` varchar(200) NOT NULL,
  `Country` varchar(150) NOT NULL,
  `Phonenumber` char(11) NOT NULL,
  `Status` int(1) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data for table `employees_table`

INSERT INTO `employees_table` (`id`, `EmpId`, `FirstName`, `LastName`, `EmailId`, `Password`, `Gender`, `Dob`, `Department`, `Address`, `City`, `Country`, `Phonenumber`, `Status`, `RegDate`) VALUES
(1, 'DB101', 'Sagar', 'Wankar', 'swankar8053@sdsu.edu', '202cb962ac59075b964b07152d234b70', 'Male', '5 September, 1993', 'Computer Science', 'La Jolla', 'San Diego', 'California', '9999998888', 1, '2021-07-05 14:29:59'),
(2, 'DB102', 'Sachine', 'Reddy', 'sreddy0978@sdsu.edu', '202cb962ac59075b964b07152d234b70', 'Male', '20 May, 1992', 'Computer Science', 'Montezuma', 'San Diego', 'California', '9999999999', 1, '2021-07-07 11:29:59'),
(3, 'DB103', 'Twinkal', 'Gada', 'tgada9137@sdsu.edu', '202cb962ac59075b964b07152d234b70', 'Female', '3 February, 1990', 'Computer Science', 'El Cajon', 'San Diego', 'California', '1111111111', 1, '2021-01-01 13:40:02'),
(4, 'DB104', 'Fenikumari', 'Depani', 'fdepani4828@sdsu.edu', '202cb962ac59075b964b07152d234b70', 'Female', '6 February, 1993', 'Computer Science', 'El Cajon', 'San Diego', 'California', '1111114587', 1, '2021-01-01 13:55:02');
-- --------------------------------------------------------

-- Table structure for `leaves_table`

CREATE TABLE `leaves_table` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(110) NOT NULL,
  `ToDate` varchar(120) NOT NULL,
  `FromDate` varchar(120) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminRemarkDate` varchar(120) DEFAULT NULL,
  `Status` int(1) NOT NULL,
  `IsRead` int(1) NOT NULL,
  `empid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data for table `leaves_table`

INSERT INTO `leaves_table` (`id`, `LeaveType`, `ToDate`, `FromDate`, `Description`, `PostingDate`, `AdminRemark`, `AdminRemarkDate`, `Status`, `IsRead`, `empid`) VALUES
(15, 'Casual Leave', '22/12/2021', '21/12/2021', 'Day Off', '2021-11-24 17:14:53', NULL, NULL, 0, 0, 1),
(16, 'Compensatory Off', '28/12/2021', '27/12/2021', 'Comp Off', '2021-11-24 17:15:17', 'Rejected', '2021-11-24 22:50:47 ', 2, 1, 1),
(17, 'Casual Leave', '23/12/2021', '22/12/2021', 'Break Day', '2021-11-24 17:16:43', 'Granted', '2021-11-24 22:50:21 ', 1, 1, 2);

-- --------------------------------------------------------

-- Table structure for `leavetype_table`

CREATE TABLE `leavetype_table` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data for table `leavetype_table`

INSERT INTO `leavetype_table` (`id`, `LeaveType`, `Description`, `CreationDate`) VALUES
(1, 'Casual Leave', 'Casual Leave ', '2021-11-01 12:07:56'),
(2, 'Medical Leave', 'Medical Leave', '2021-11-06 12:16:09'),
(3, 'Compensatory Off', 'Compensatory Off', '2021-11-06 12:16:38'),
(4, 'Sabbatical', 'Sabbatical', '2021-11-24 07:50:55');


--
-- Altering tables
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `departments_table`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `employees_table`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `leaves_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserEmail` (`empid`);

ALTER TABLE `leavetype_table`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `departments_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

ALTER TABLE `employees_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `leaves_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

ALTER TABLE `leavetype_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

