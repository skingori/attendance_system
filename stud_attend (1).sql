-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 08, 2018 at 07:55 PM
-- Server version: 5.6.38
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stud_attend`
--
CREATE DATABASE IF NOT EXISTS `stud_attend` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `stud_attend`;

-- --------------------------------------------------------

--
-- Table structure for table `Attendance_Table`
--

CREATE TABLE `Attendance_Table` (
  `Attendance_Id` int(50) NOT NULL DEFAULT '0',
  `Attendance_Time` varchar(50) DEFAULT NULL,
  `Attendance_Remarks` varchar(50) DEFAULT NULL,
  `Attendance_Semester_Id` int(50) DEFAULT NULL,
  `Attendance_Student_Unit_Id` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Course_Table`
--

CREATE TABLE `Course_Table` (
  `Course_Id` int(50) NOT NULL DEFAULT '0',
  `Course_Name` varchar(50) DEFAULT NULL,
  `Course_Duration` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Course_Unit_Table`
--

CREATE TABLE `Course_Unit_Table` (
  `Course_Unit_Id` int(50) NOT NULL DEFAULT '0',
  `Course_Unit_Course_Id` int(50) DEFAULT NULL,
  `Course_Unit_Unit_Id` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Lecturer_Table`
--

CREATE TABLE `Lecturer_Table` (
  `Lecturer_Id` int(50) NOT NULL DEFAULT '0',
  `Lecturer_Name` varchar(50) DEFAULT NULL,
  `Lecturer_Gender` varchar(50) DEFAULT NULL,
  `Lecturer_Email` varchar(50) DEFAULT NULL,
  `Lecturer_Phone` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Lecturer_Unit_Table`
--

CREATE TABLE `Lecturer_Unit_Table` (
  `Lecturer_Unit_Id` int(50) NOT NULL DEFAULT '0',
  `Lecturer_Unit_Unit_Id` int(50) DEFAULT NULL,
  `Lecturer_Unit_Lecturer_Id` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Login_Table`
--

CREATE TABLE `Login_Table` (
  `Login_Id` int(50) NOT NULL DEFAULT '0',
  `Login_Username` varchar(50) DEFAULT NULL,
  `Login_Password` varchar(50) DEFAULT NULL,
  `Login_Rank` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Login_Table`
--

INSERT INTO `Login_Table` (`Login_Id`, `Login_Username`, `Login_Password`, `Login_Rank`) VALUES
(1312312, 'test1', '7be790e8f2934273c118ef565475c216', '2'),
(133423423, 'user5', '7be790e8f2934273c118ef565475c216', '2');

-- --------------------------------------------------------

--
-- Table structure for table `Semester_Table`
--

CREATE TABLE `Semester_Table` (
  `Semester_Id` int(50) NOT NULL DEFAULT '0',
  `Semester_Level` varchar(50) DEFAULT NULL,
  `Semester_Year` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Student_Attendance_Table`
--

CREATE TABLE `Student_Attendance_Table` (
  `Student_Attendance_Id` int(50) NOT NULL DEFAULT '0',
  `Student_Attendance_Attendance_Id` int(50) DEFAULT NULL,
  `Student_Attendance_Student_Id` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Student_Course_Table`
--

CREATE TABLE `Student_Course_Table` (
  `Student_Course_Id` int(50) NOT NULL DEFAULT '0',
  `Student_Course_Course_Id` int(50) DEFAULT NULL,
  `Student_Course_Student_Id` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Student_Table`
--

CREATE TABLE `Student_Table` (
  `Student_Id` int(50) NOT NULL DEFAULT '0',
  `Student_Name` varchar(50) DEFAULT NULL,
  `Student_DOB` varchar(50) DEFAULT NULL,
  `Student_Gender` varchar(50) DEFAULT NULL,
  `Student_Email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Student_Unit_Table`
--

CREATE TABLE `Student_Unit_Table` (
  `Student_Unit_Id` int(50) NOT NULL DEFAULT '0',
  `Student_Unit_Student_Id` int(50) DEFAULT NULL,
  `Student_Unit_Unit_Id` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Unit_Table`
--

CREATE TABLE `Unit_Table` (
  `Unit_Id` int(50) NOT NULL DEFAULT '0',
  `Unit_Name` varchar(50) DEFAULT NULL,
  `Unit_Semester` varchar(50) DEFAULT NULL,
  `Unit_Time` varchar(50) DEFAULT NULL,
  `Unit_Room` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Attendance_Table`
--
ALTER TABLE `Attendance_Table`
  ADD PRIMARY KEY (`Attendance_Id`),
  ADD KEY `Attendance_Semester_Id` (`Attendance_Semester_Id`),
  ADD KEY `Attendance_Student_Unit_Id` (`Attendance_Student_Unit_Id`);

--
-- Indexes for table `Course_Table`
--
ALTER TABLE `Course_Table`
  ADD PRIMARY KEY (`Course_Id`);

--
-- Indexes for table `Course_Unit_Table`
--
ALTER TABLE `Course_Unit_Table`
  ADD PRIMARY KEY (`Course_Unit_Id`),
  ADD KEY `Course_Unit_Unit_Id` (`Course_Unit_Unit_Id`),
  ADD KEY `Course_Unit_Course_Id` (`Course_Unit_Course_Id`);

--
-- Indexes for table `Lecturer_Table`
--
ALTER TABLE `Lecturer_Table`
  ADD PRIMARY KEY (`Lecturer_Id`);

--
-- Indexes for table `Lecturer_Unit_Table`
--
ALTER TABLE `Lecturer_Unit_Table`
  ADD PRIMARY KEY (`Lecturer_Unit_Id`),
  ADD KEY `Lecturer_Unit_Lecturer_Id` (`Lecturer_Unit_Lecturer_Id`),
  ADD KEY `Lecturer_Unit_Unit_Id` (`Lecturer_Unit_Unit_Id`);

--
-- Indexes for table `Login_Table`
--
ALTER TABLE `Login_Table`
  ADD PRIMARY KEY (`Login_Id`);

--
-- Indexes for table `Semester_Table`
--
ALTER TABLE `Semester_Table`
  ADD PRIMARY KEY (`Semester_Id`);

--
-- Indexes for table `Student_Attendance_Table`
--
ALTER TABLE `Student_Attendance_Table`
  ADD PRIMARY KEY (`Student_Attendance_Id`),
  ADD KEY `Student_Attendance_Attendance_Id` (`Student_Attendance_Attendance_Id`),
  ADD KEY `Student_Attendance_Student_Id` (`Student_Attendance_Student_Id`);

--
-- Indexes for table `Student_Course_Table`
--
ALTER TABLE `Student_Course_Table`
  ADD PRIMARY KEY (`Student_Course_Id`),
  ADD KEY `Student_Course_Course_Id` (`Student_Course_Course_Id`),
  ADD KEY `Student_Course_Student_Id` (`Student_Course_Student_Id`);

--
-- Indexes for table `Student_Table`
--
ALTER TABLE `Student_Table`
  ADD PRIMARY KEY (`Student_Id`);

--
-- Indexes for table `Student_Unit_Table`
--
ALTER TABLE `Student_Unit_Table`
  ADD PRIMARY KEY (`Student_Unit_Id`),
  ADD KEY `Student_Unit_Student_Id` (`Student_Unit_Student_Id`),
  ADD KEY `Student_Unit_Unit_Id` (`Student_Unit_Unit_Id`);

--
-- Indexes for table `Unit_Table`
--
ALTER TABLE `Unit_Table`
  ADD PRIMARY KEY (`Unit_Id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Attendance_Table`
--
ALTER TABLE `Attendance_Table`
  ADD CONSTRAINT `attendance_table_ibfk_1` FOREIGN KEY (`Attendance_Semester_Id`) REFERENCES `Semester_Table` (`Semester_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Student_Attendance_Table`
--
ALTER TABLE `Student_Attendance_Table`
  ADD CONSTRAINT `student_attendance_table_ibfk_1` FOREIGN KEY (`Student_Attendance_Attendance_Id`) REFERENCES `Attendance_Table` (`Attendance_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_attendance_table_ibfk_2` FOREIGN KEY (`Student_Attendance_Student_Id`) REFERENCES `Student_Table` (`Student_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Student_Course_Table`
--
ALTER TABLE `Student_Course_Table`
  ADD CONSTRAINT `student_course_table_ibfk_1` FOREIGN KEY (`Student_Course_Course_Id`) REFERENCES `Course_Table` (`Course_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Student_Unit_Table`
--
ALTER TABLE `Student_Unit_Table`
  ADD CONSTRAINT `student_unit_table_ibfk_1` FOREIGN KEY (`Student_Unit_Unit_Id`) REFERENCES `Unit_Table` (`Unit_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
