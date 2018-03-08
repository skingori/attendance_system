-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 03, 2017 at 02:33 PM
-- Server version: 5.6.35
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `logs`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`) VALUES
(1, 'ewrw'),
(2, 'BBIT'),
(3, 'BCS');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `faculty_id` int(20) NOT NULL,
  `faculty_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`faculty_id`, `faculty_name`) VALUES
(2, 'BUSINESS SCHOOL'),
(3, 'MEDICAL SCHOOL'),
(4, 'INFORMATION AND INFORMATICS');

-- --------------------------------------------------------

--
-- Table structure for table `login_table`
--

CREATE TABLE `login_table` (
  `login_id` int(11) NOT NULL,
  `login_username` varchar(20) NOT NULL,
  `login_rank` varchar(4) NOT NULL,
  `login_password` varchar(100) NOT NULL,
  `login_status` varchar(20) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_name` varchar(20) NOT NULL,
  `student_email` varchar(20) NOT NULL,
  `student_class` varchar(20) NOT NULL,
  `student_course` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_table`
--

INSERT INTO `login_table` (`login_id`, `login_username`, `login_rank`, `login_password`, `login_status`, `student_id`, `student_name`, `student_email`, `student_class`, `student_course`) VALUES
(10, 'admin', '1', 'ee11cbb19052e40b07aac0ca060c23ee', 'active', 212, '', '', '', ''),
(11, 'anne', '2', '81dc9bdb52d04dc20036dbd8313ed055', 'Inactive', 0, '', '', '', ''),
(12, 'ewrr', '2342', '33423', 'Inactive', 0, 'wdsd', 'erwer', 'werwer', '2'),
(13, 'ewrr', 'f408', '33423', '', 0, 'wdsd', 'erwer', 'werwer', '2'),
(14, 'user', '2', 'ee11cbb19052e40b07aac0ca060c23ee', 'active', 2123, 'qwwq', 'aas@sd.com', 'ICT', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_attendance`
--

CREATE TABLE `user_attendance` (
  `attendance_id` int(11) NOT NULL,
  `attendance_user_id` varchar(20) NOT NULL,
  `attendance_date` date NOT NULL,
  `attendance_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `attendance_mode` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_attendance`
--

INSERT INTO `user_attendance` (`attendance_id`, `attendance_user_id`, `attendance_date`, `attendance_time`, `attendance_mode`) VALUES
(21, '12345678-90-1990', '2017-04-03', '2017-04-03 11:42:47', 'walkin-clockout'),
(22, '12345678-90-1990', '2017-04-03', '2017-04-03 14:06:22', 'walkin-clockin'),
(23, '12345678-90-1990', '2017-04-04', '2017-04-04 06:22:31', 'walkin-clockin'),
(24, '12345678-90-1990', '2017-04-04', '2017-04-04 14:35:42', 'walkin-clockin'),
(25, '12345678-90-1990', '2017-04-04', '2017-04-04 14:43:38', 'walkin-clockout'),
(26, '1234', '2017-04-04', '2017-04-04 14:43:51', 'walkin-clockin'),
(27, '1234', '2017-04-04', '2017-04-04 14:46:18', 'walkin-clockout'),
(28, '1234', '2017-04-04', '2017-04-04 14:46:28', 'walkin-clockin'),
(29, '1234', '2017-04-04', '2017-04-04 14:51:06', 'walkin-clockout'),
(30, '12345678-90-1990', '2017-04-05', '2017-04-05 18:35:30', 'walkin-clockin'),
(31, '724090774', '2017-04-06', '2017-04-06 05:05:37', 'walkin-clockout'),
(32, '724090774', '2017-04-06', '2017-04-06 05:05:43', 'walkin-clockin'),
(33, '123', '2017-04-07', '2017-04-07 07:47:31', 'walkin-clockin'),
(34, '1232', '2017-04-07', '2017-04-07 07:48:03', 'walkin-clockin'),
(35, '1232', '2017-04-07', '2017-04-07 07:48:07', 'walkin-clockout'),
(36, '1232', '2017-04-07', '2017-04-07 07:48:13', 'walkin-clockin'),
(37, '2', '2017-04-07', '2017-04-07 07:48:23', 'walkin-clockout'),
(38, '232323', '2017-04-07', '2017-04-07 07:48:28', 'walkin-clockout'),
(39, '232323232', '2017-04-07', '2017-04-07 07:48:32', 'walkin-clockout'),
(40, '232323232', '2017-04-07', '2017-04-07 07:48:36', 'walkin-clockin'),
(41, '724090774', '2017-04-07', '2017-04-07 07:59:11', 'walkin-clockin'),
(42, '12445666', '2017-04-07', '2017-04-07 08:39:16', 'walkin-clockout'),
(43, '12445666', '2017-04-07', '2017-04-07 08:39:28', 'walkin-clockout'),
(44, '724090774', '2017-04-07', '2017-04-07 08:39:52', 'walkin-clockout'),
(45, '724090774', '2017-04-07', '2017-04-07 08:39:55', 'walkin-clockin'),
(46, 'login_username', '2017-04-07', '2017-04-07 09:28:30', 'walkin-clockout'),
(47, '724090774', '2017-04-07', '2017-04-07 09:28:43', 'walkin-clockin'),
(48, '724090774', '2017-04-07', '2017-04-07 10:48:36', 'walkin-clockin'),
(49, '724090774', '2017-04-07', '2017-04-07 11:04:32', 'walkin-clockout'),
(50, '724090774', '2017-04-07', '2017-04-07 11:04:38', 'walkin-clockin'),
(51, '724090774', '2017-04-07', '2017-04-07 11:06:06', 'walkin-clockout'),
(52, '724090774', '2017-04-07', '2017-04-07 11:06:12', 'walkin-clockin'),
(53, '724090774', '2017-04-07', '2017-04-07 11:13:23', 'walkin-clockout'),
(54, '724090774', '2017-04-07', '2017-04-07 11:13:28', 'walkin-clockin'),
(55, '724090774', '2017-04-07', '2017-04-07 11:20:56', 'walkin-clockin'),
(56, '724090774', '2017-04-07', '2017-04-07 11:24:13', 'walkin-clockin'),
(57, '12445666', '2017-04-07', '2017-04-07 16:14:33', 'walkin-clockout'),
(58, '07240907', '2017-04-07', '2017-04-07 16:17:07', 'walkin-clockin'),
(59, '724090774', '2017-04-08', '2017-04-08 05:20:55', 'walkin-clockout'),
(60, '07240907', '2017-04-08', '2017-04-08 05:21:44', 'walkin-clockin'),
(61, '07240907', '2017-04-08', '2017-04-08 05:45:38', 'walkin-clockin'),
(62, '0724090774', '2017-04-08', '2017-04-08 08:06:22', 'walkin-clockin'),
(63, '23864287', '2017-04-08', '2017-04-08 08:22:56', 'walkin-clockin'),
(64, 'xxxxxxxxxx', '2017-04-08', '2017-04-08 14:51:36', 'walkin-clockin'),
(65, 'xxxxxxxxxx', '2017-04-08', '2017-04-08 14:52:01', 'walkin-clockout'),
(94, '212', '2017-08-03', '2017-08-03 12:02:14', 'walkin-clockout'),
(95, '212', '2017-08-03', '2017-08-03 12:02:20', 'walkin-clockin'),
(96, '212', '2017-08-03', '2017-08-03 12:06:59', 'walkin-clockout'),
(97, '212', '2017-08-03', '2017-08-03 12:07:05', 'walkin-clockin'),
(98, '212', '2017-08-03', '2017-08-03 12:08:51', 'walkin-clockout'),
(99, '212', '2017-08-03', '2017-08-03 12:08:57', 'walkin-clockin'),
(100, '2123', '2017-08-03', '2017-08-03 12:19:53', 'walkin-clockout'),
(101, '2123', '2017-08-03', '2017-08-03 12:20:00', 'walkin-clockin'),
(102, '2123', '2017-08-03', '2017-08-03 12:28:08', 'walkin-clockout'),
(103, '212', '2017-08-03', '2017-08-03 12:28:18', 'walkin-clockin'),
(104, '212', '2017-08-03', '2017-08-03 12:31:28', 'walkin-clockin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`faculty_id`);

--
-- Indexes for table `login_table`
--
ALTER TABLE `login_table`
  ADD PRIMARY KEY (`login_id`),
  ADD KEY `login_id` (`login_id`);

--
-- Indexes for table `user_attendance`
--
ALTER TABLE `user_attendance`
  ADD PRIMARY KEY (`attendance_id`),
  ADD KEY `attendance_id` (`attendance_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `faculty_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `login_table`
--
ALTER TABLE `login_table`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `user_attendance`
--
ALTER TABLE `user_attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
