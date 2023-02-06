-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2020 at 04:07 PM
-- Server version: 10.1.40-MariaDB
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
-- Database: `onlineclearance`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(10) NOT NULL,
  `admin_username` varchar(25) NOT NULL,
  `password` varchar(50) NOT NULL DEFAULT '1a1dc91c907325c69271ddf0c944bc72',
  `depr` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_username`, `password`, `depr`) VALUES
(1, 'admin', '81dc9bdb52d04dc20036dbd8313ed055', 0),
(2, 'aw', 'bcbe3365e6ac95ea2c0343a2395834dd', 0),
(3, 'aw', '1a1dc91c907325c69271ddf0c944bc72', 0);

-- --------------------------------------------------------

--
-- Table structure for table `clearance`
--

CREATE TABLE `clearance` (
  `clearance_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `is_accountant_approval` int(11) NOT NULL DEFAULT '0',
  `is_librarian_approval` int(11) NOT NULL DEFAULT '0',
  `is_registrar_approval` int(11) NOT NULL DEFAULT '0',
  `is_dean_approval` int(11) NOT NULL DEFAULT '0',
  `until` varchar(15) NOT NULL,
  `mailing_address` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clearance`
--

INSERT INTO `clearance` (`clearance_id`, `id`, `is_accountant_approval`, `is_librarian_approval`, `is_registrar_approval`, `is_dean_approval`, `until`, `mailing_address`) VALUES
(66, 135, 1, 1, 1, 1, '19th aug', 'demo@gmail.com'),
(67, 136, 1, 1, 1, 1, '', ''),
(68, 137, 1, 1, 1, 1, '', ''),
(69, 138, 0, 0, 0, 0, '', ''),
(70, 139, 0, 0, 0, 0, '', ''),
(71, 140, 0, 0, 0, 0, '', ''),
(72, 141, 0, 0, 0, 0, '', ''),
(73, 142, 0, 0, 0, 0, '', ''),
(74, 143, 0, 0, 0, 0, '', ''),
(75, 144, 0, 0, 0, 0, '', ''),
(76, 145, 0, 0, 0, 0, '', ''),
(77, 146, 0, 0, 0, 0, '', ''),
(78, 147, 0, 0, 0, 0, '', ''),
(79, 148, 0, 0, 0, 0, '', ''),
(80, 149, 0, 0, 0, 0, '', ''),
(81, 150, 0, 0, 0, 0, '', ''),
(82, 151, 1, 1, 1, 1, '', ''),
(83, 152, 0, 0, 0, 0, '', ''),
(84, 153, 0, 0, 1, 1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `cleared_teacher`
--

CREATE TABLE `cleared_teacher` (
  `cleared_teacher_id` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cleared_teacher`
--

INSERT INTO `cleared_teacher` (`cleared_teacher_id`, `id`) VALUES
(66, 135);

-- --------------------------------------------------------

--
-- Table structure for table `deadline`
--

CREATE TABLE `deadline` (
  `id` int(20) NOT NULL,
  `d_date` varchar(50) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deadline`
--

INSERT INTO `deadline` (`id`, `d_date`, `status`) VALUES
(2, '2017-01-23', 0),
(3, '2017-01-23', 0),
(4, '2017-01-20', 0),
(5, '2017-01-19', 0),
(6, '2017-01-24', 0),
(7, '2017-01-24', 0),
(8, '2017-01-23', 0),
(9, '2017-01-22', 0),
(10, '2017-01-02', 0),
(11, '2017-01-22', 0),
(12, '2017-01-22', 0),
(13, '2017-01-23', 0),
(14, '2017-01-23', 0),
(15, '2017-01-22', 0),
(16, '2017-01-23', 0),
(17, '2017-01-31', 0),
(18, '2017-02-24', 0),
(19, '2017-02-24', 0),
(20, '2017-02-24', 0),
(21, '2017-02-24', 0),
(22, '2017-02-25', 0),
(23, '2017-02-25', 0),
(24, '2017-02-25', 0),
(25, '2017-02-25', 0),
(26, '2017-02-24', 0),
(27, '2017-02-25', 0),
(28, '2017-02-24', 0),
(29, '2017-02-24', 0),
(30, '2017-02-24', 0),
(31, '2017-02-25', 0),
(32, '2017-02-25', 0),
(33, '2017-02-25', 0),
(34, '2017-02-25', 0),
(35, '2017-02-25', 0),
(36, '2017-02-25', 0),
(37, '2017-02-25', 0),
(38, '2017-02-25', 0),
(39, '2017-02-25', 0),
(40, '2017-02-25', 0),
(41, '2017-02-25', 0),
(42, '2017-02-25', 0),
(43, '2017-02-25', 0),
(44, '2017-02-25', 0),
(45, '2017-02-25', 0),
(46, '2017-02-25', 0),
(47, '2017-02-25', 0),
(48, '2017-02-25', 0),
(49, '2017-02-25', 0),
(50, '2017-02-24', 0),
(51, '2017-02-25', 0),
(52, '2017-02-25', 0),
(53, '2017-02-25', 0),
(54, '2017-02-25', 0),
(55, '2017-02-25', 0),
(56, '2017-02-25', 0),
(57, '2017-02-25', 0),
(58, '2017-02-25', 0),
(59, '2017-02-25', 0),
(60, '2017-02-25', 0),
(61, '2017-02-25', 0),
(62, '2017-02-25', 0),
(63, '2017-02-25', 0),
(64, '2017-02-25', 0),
(65, '2017-02-25', 0),
(66, '2017-02-25', 0),
(67, '2017-02-25', 0),
(68, '2017-02-25', 0),
(69, '2017-02-25', 0),
(70, '2017-02-25', 0),
(71, '2017-02-25', 0),
(72, '2017-02-25', 0),
(73, '2017-02-25', 0),
(74, '2017-02-25', 0),
(75, '2017-02-25', 0),
(76, '2017-02-25', 0),
(77, '2020-09-03', 0),
(78, '2020-09-03', 0),
(79, '2020-09-04', 1);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(10) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `dep_name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `req_id` int(10) NOT NULL,
  `faculty_id` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `designee`
--

CREATE TABLE `designee` (
  `designee_id` int(11) NOT NULL,
  `designee_name` text NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL DEFAULT '81dc9bdb52d04dc20036dbd8313ed055'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `designee`
--

INSERT INTO `designee` (`designee_id`, `designee_name`, `username`, `password`) VALUES
(1, 'Accountant', 'accountant', '81dc9bdb52d04dc20036dbd8313ed055'),
(6, 'College Librarian', 'librarian', '81dc9bdb52d04dc20036dbd8313ed055'),
(7, 'Registrar', 'registrar', '81dc9bdb52d04dc20036dbd8313ed055'),
(9, 'Dean of the College', 'dean', '81dc9bdb52d04dc20036dbd8313ed055');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(10) NOT NULL,
  `faculty_id` int(15) NOT NULL,
  `faculty_Fname` varchar(20) NOT NULL,
  `faculty_Mname` varchar(20) NOT NULL,
  `faculty_Lname` varchar(20) NOT NULL,
  `Contact_num` int(15) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Designation` varchar(20) NOT NULL,
  `Department` varchar(5) NOT NULL,
  `req_id` int(20) NOT NULL,
  `dep_id` int(20) NOT NULL,
  `password` varchar(50) NOT NULL DEFAULT '81dc9bdb52d04dc20036dbd8313ed055',
  `faculty_picture` varchar(120) NOT NULL,
  `Campus` varchar(15) NOT NULL COMMENT '1 = Kumasi, 2 = Accra, 3 = Sunyani, 4 = Cape Coast',
  `course_program` varchar(15) NOT NULL,
  `status` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `faculty_id`, `faculty_Fname`, `faculty_Mname`, `faculty_Lname`, `Contact_num`, `Email`, `Designation`, `Department`, `req_id`, `dep_id`, `password`, `faculty_picture`, `Campus`, `course_program`, `status`) VALUES
(140, 3, 'Kensa', 'Akua', 'Adu-Gyamfi', 22222222, 'kensa@gmail.com', 'Parttime', 'SOFTW', 0, 0, '81dc9bdb52d04dc20036dbd8313ed055', '', '', '', 0),
(139, 2, 'Ransford', '', 'Oduro', 222222222, 'ransky@gmail.com', 'Regular', 'SOFTW', 0, 0, '81dc9bdb52d04dc20036dbd8313ed055', '', '', '', 0),
(138, 1, 'Angelo', '', 'Owusu-Acheaw', 263128244, 'stickyfinguz.angelo@gmail.com', 'Regular', 'SOFTW', 0, 0, '81dc9bdb52d04dc20036dbd8313ed055', '', '', '', 0),
(141, 4, 'Stephen ', '', 'Yankey', 2147483647, 'stevo@gmail.com', 'Regular', 'SOFTW', 0, 0, '81dc9bdb52d04dc20036dbd8313ed055', '', '', '', 0),
(142, 5, 'Gabriel ', 'Kwakye', 'karikari', 2147483647, 'gab@gmail.com', 'Regular', 'SOFTW', 0, 0, '81dc9bdb52d04dc20036dbd8313ed055', '', '', '', 0),
(143, 6, 'Erica', '', 'Mensah', 222222222, 'erica@gmail.com', 'Parttime', 'SOFTW', 0, 0, '81dc9bdb52d04dc20036dbd8313ed055', '', '', '', 0),
(144, 7, 'Kelvin', '', 'Amoah', 2147483647, 'kev@gmail.com', 'Parttime', 'SOFTW', 0, 0, '81dc9bdb52d04dc20036dbd8313ed055', '', '', '', 0),
(145, 8, 'Lexlina', '', 'Peniana', 22222, 'lex@gmail.com', 'Regular', 'SOFTW', 0, 0, '81dc9bdb52d04dc20036dbd8313ed055', '', '', '', 0),
(146, 9, 'Albert', '', 'Berfi', 222222222, 'albert@gmail.com', 'Regular', 'SOFTW', 0, 0, '81dc9bdb52d04dc20036dbd8313ed055', '', '', '', 0),
(147, 10, 'Bright', '', 'Currency', 222222, 'bryte@gmail.com', 'Regular', 'SOFTW', 0, 0, '81dc9bdb52d04dc20036dbd8313ed055', '', '', '', 0),
(148, 11, 'Ronald', '', 'Boakye', 22222222, 'ronald@gmail.com', 'Parttime', 'SOFTW', 0, 0, '81dc9bdb52d04dc20036dbd8313ed055', '', '', '', 0),
(149, 12, 'Bernard ', '', 'Mensah', 2222222, 'bernito@gmail.com', 'Parttime', 'SOFTW', 0, 0, '81dc9bdb52d04dc20036dbd8313ed055', '', '', '', 0),
(150, 13, 'Derrick', '', 'Amoah', 222222, 'derrick@gmail.com', 'Parttime', 'SOFTW', 0, 0, '81dc9bdb52d04dc20036dbd8313ed055', '', '', '', 0),
(151, 1234, 'Demo', '', 'Demo', 222222, 'demodemo@gmail.com', 'Regular', 'SOFTW', 0, 0, '81dc9bdb52d04dc20036dbd8313ed055', '', '', '', 0),
(153, 12345, 'Demo', 'Demo', 'Demo', 222222, 'demodemodemo@gmail.com', 'Regular', 'SOFTW', 0, 0, '81dc9bdb52d04dc20036dbd8313ed055', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `designee_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `message_content` text NOT NULL,
  `message_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `designee_id`, `id`, `message_content`, `message_status`) VALUES
(32, 7, 66, 'qwertyui', 1),
(33, 7, 65, 'test mic check', 1),
(34, 7, 65, 'qwertyuwertyuqwertyuwerty', 1),
(35, 1, 65, 'testing ah', 1),
(36, 6, 68, 'awawaw', 0),
(37, 6, 65, 'WHAAT', 1),
(38, 6, 74, 'test message\r\n', 1),
(39, 6, 74, 'test 2', 1),
(40, 1, 77, 'kulang ka ', 0),
(41, 1, 66, 'qwertyui\r\n', 1),
(42, 1, 66, 'test\r\n', 1),
(43, 1, 151, 'hey waddup demo student \r\n', 1);

-- --------------------------------------------------------

--
-- Table structure for table `requirement`
--

CREATE TABLE `requirement` (
  `req_id` int(10) NOT NULL,
  `req_content` text NOT NULL,
  `designee_id` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requirement`
--

INSERT INTO `requirement` (`req_id`, `req_content`, `designee_id`) VALUES
(28, 'demo add requirement ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `requirementstatus`
--

CREATE TABLE `requirementstatus` (
  `reqstat_id` int(10) NOT NULL,
  `status` int(10) NOT NULL DEFAULT '0',
  `id` int(10) NOT NULL,
  `req_id` int(10) NOT NULL,
  `designee_id` int(11) NOT NULL,
  `file` varchar(120) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requirementstatus`
--

INSERT INTO `requirementstatus` (`reqstat_id`, `status`, `id`, `req_id`, `designee_id`, `file`) VALUES
(32, 1, 151, 28, 1, 'hypernova2 logo n text without bg-01.png');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(15) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(50) NOT NULL DEFAULT '81dc9bdb52d04dc20036dbd8313ed055',
  `usertype` int(1) NOT NULL COMMENT '1 = admin, 2 = department, 3 = faculty'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `usertype`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1),
(15, 'Accountant', '81dc9bdb52d04dc20036dbd8313ed055', 2),
(16, '69', '81dc9bdb52d04dc20036dbd8313ed055', 3),
(17, '69', '81dc9bdb52d04dc20036dbd8313ed055', 3),
(18, 'Supply Officer', '81dc9bdb52d04dc20036dbd8313ed055', 2),
(19, '4444444', '81dc9bdb52d04dc20036dbd8313ed055', 3),
(20, '1111111', '81dc9bdb52d04dc20036dbd8313ed055', 3),
(21, '2222222', '81dc9bdb52d04dc20036dbd8313ed055', 3),
(22, '3333333', '81dc9bdb52d04dc20036dbd8313ed055', 3),
(23, '21300712', '81dc9bdb52d04dc20036dbd8313ed055', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `clearance`
--
ALTER TABLE `clearance`
  ADD PRIMARY KEY (`clearance_id`);

--
-- Indexes for table `cleared_teacher`
--
ALTER TABLE `cleared_teacher`
  ADD PRIMARY KEY (`cleared_teacher_id`);

--
-- Indexes for table `deadline`
--
ALTER TABLE `deadline`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designee`
--
ALTER TABLE `designee`
  ADD PRIMARY KEY (`designee_id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `requirement`
--
ALTER TABLE `requirement`
  ADD PRIMARY KEY (`req_id`);

--
-- Indexes for table `requirementstatus`
--
ALTER TABLE `requirementstatus`
  ADD PRIMARY KEY (`reqstat_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `clearance`
--
ALTER TABLE `clearance`
  MODIFY `clearance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `deadline`
--
ALTER TABLE `deadline`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `designee`
--
ALTER TABLE `designee`
  MODIFY `designee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `requirement`
--
ALTER TABLE `requirement`
  MODIFY `req_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `requirementstatus`
--
ALTER TABLE `requirementstatus`
  MODIFY `reqstat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
