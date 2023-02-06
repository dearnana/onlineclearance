-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2020 at 01:01 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
(1, 'admin', '81dc9bdb52d04dc20036dbd8313ed055', 0);

-- --------------------------------------------------------

--
-- Table structure for table `clearance`
--

CREATE TABLE `clearance` (
  `clearance_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `is_accountant_approval` int(11) NOT NULL,
  `is_supply_approval` int(11) NOT NULL,
  `is_director_ppf_approval` int(11) NOT NULL,
  `is_facfed_approval` int(11) NOT NULL,
  `is_cooperative_approval` int(11) NOT NULL,
  `is_librarian_approval` int(11) NOT NULL,
  `is_registrar_approval` int(11) NOT NULL,
  `is_area_approval` int(11) NOT NULL,
  `is_dean_approval` int(11) NOT NULL,
  `is_executive_approval` int(11) NOT NULL,
  `is_hrm_approval` int(11) NOT NULL,
  `is_cao_approval` int(11) NOT NULL,
  `is_vp_admin_approval` int(11) NOT NULL,
  `is_vp_academic_approval` int(11) NOT NULL,
  `is_head_approval` int(11) NOT NULL,
  `until` varchar(15) NOT NULL,
  `mailing_address` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clearance`
--

INSERT INTO `clearance` (`clearance_id`, `id`, `is_accountant_approval`, `is_supply_approval`, `is_director_ppf_approval`, `is_facfed_approval`, `is_cooperative_approval`, `is_librarian_approval`, `is_registrar_approval`, `is_area_approval`, `is_dean_approval`, `is_executive_approval`, `is_hrm_approval`, `is_cao_approval`, `is_vp_admin_approval`, `is_vp_academic_approval`, `is_head_approval`, `until`, `mailing_address`) VALUES
(1, 65, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, '', ''),
(2, 66, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(3, 68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(4, 73, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(5, 74, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(6, 75, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(7, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(8, 77, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '', ''),
(9, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(10, 79, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '', ''),
(11, 80, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '07/24/2016', 'Carmella Valley Home'),
(12, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', ''),
(13, 82, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(14, 83, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(15, 84, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(16, 85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(17, 86, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(18, 87, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(19, 88, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(20, 89, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(21, 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(22, 91, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(23, 92, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(24, 93, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(25, 94, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(26, 95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(27, 96, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(28, 97, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(29, 98, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(30, 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(31, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(32, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(33, 102, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(34, 103, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(35, 104, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(36, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(37, 106, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(38, 107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(39, 108, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(40, 109, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(41, 110, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(42, 111, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(43, 112, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(44, 113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(45, 114, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(46, 115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(47, 116, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(48, 117, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, '', ''),
(49, 118, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, '', ''),
(50, 119, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(51, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(52, 121, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(53, 122, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(54, 123, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(55, 124, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(56, 125, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(57, 126, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(58, 127, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(59, 128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(60, 129, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(61, 130, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(62, 131, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(63, 132, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(64, 133, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(65, 134, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(66, 135, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(67, 136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '');

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
(1, 80);

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
(77, '2020-06-30', 1);

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
(9, 'Dean', 'dean', '81dc9bdb52d04dc20036dbd8313ed055');

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
  `Email` varchar(20) NOT NULL,
  `Designation` varchar(20) NOT NULL,
  `Department` varchar(5) NOT NULL,
  `req_id` int(20) NOT NULL,
  `dep_id` int(20) NOT NULL,
  `password` varchar(50) NOT NULL DEFAULT '81dc9bdb52d04dc20036dbd8313ed055',
  `faculty_picture` varchar(120) NOT NULL,
  `Campus` varchar(15) NOT NULL COMMENT '1 = talisay, 2 = alijis, 3 = fortune town, 4 = binalbagan',
  `course_program` varchar(15) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `faculty_id`, `faculty_Fname`, `faculty_Mname`, `faculty_Lname`, `Contact_num`, `Email`, `Designation`, `Department`, `req_id`, `dep_id`, `password`, `faculty_picture`, `Campus`, `course_program`, `status`) VALUES
(135, 20519584, 'King', '', 'Adu-Mensah', 553083947, 'kingadumensah11@gmai', 'Permanent', 'ENV', 0, 0, '81dc9bdb52d04dc20036dbd8313ed055', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `designee_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `message_content` text NOT NULL,
  `message_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `requirement`
--

CREATE TABLE `requirement` (
  `req_id` int(10) NOT NULL,
  `req_content` text NOT NULL,
  `designee_id` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `requirementstatus`
--

CREATE TABLE `requirementstatus` (
  `reqstat_id` int(10) NOT NULL,
  `status` int(10) NOT NULL,
  `id` int(10) NOT NULL,
  `req_id` int(10) NOT NULL,
  `designee_id` int(11) NOT NULL,
  `file` varchar(120) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requirementstatus`
--

INSERT INTO `requirementstatus` (`reqstat_id`, `status`, `id`, `req_id`, `designee_id`, `file`) VALUES
(1, 0, 79, 11, 2, 'ceres.jpg'),
(2, 0, 79, 11, 2, 'ceres.jpg'),
(3, 0, 79, 11, 2, 'ceres.jpg'),
(4, 0, 79, 11, 2, 'ceres.jpg'),
(5, 0, 79, 11, 2, 'ceres.jpg'),
(6, 0, 79, 11, 2, 'ceres.jpg'),
(7, 0, 79, 11, 2, 'ceres.jpg'),
(8, 0, 79, 11, 2, 'ceres.jpg'),
(9, 0, 79, 11, 2, 'ceres.jpg'),
(10, 0, 79, 11, 2, 'ceres.jpg'),
(11, 0, 79, 11, 2, 'ceres.jpg'),
(12, 0, 79, 11, 2, 'ceres.jpg'),
(13, 0, 79, 13, 3, 'cap.png'),
(14, 0, 79, 13, 3, 'cap.png'),
(15, 0, 79, 13, 3, 'cap.png'),
(16, 0, 79, 13, 3, 'cap.png'),
(17, 0, 79, 13, 3, 'cap.png'),
(18, 0, 79, 13, 3, 'cap.png'),
(19, 0, 79, 13, 3, 'cap.png'),
(20, 0, 79, 13, 3, 'cap.png'),
(21, 0, 79, 13, 3, 'cap.png'),
(22, 0, 79, 13, 3, 'cap.png'),
(23, 0, 79, 13, 3, 'cap.png'),
(24, 0, 79, 13, 3, 'cap.png'),
(25, 0, 79, 1, 7, '43.jpg'),
(26, 0, 79, 14, 9, 'l;.jpg'),
(27, 0, 81, 11, 2, 'nybl.xlsx'),
(28, 1, 80, 11, 2, 'nybl.xlsx'),
(30, 1, 80, 12, 2, 'pds-jo-2014.xls'),
(31, 1, 117, 11, 2, '6a00d83451c73369e20162fcddf9ab970d-600wi.jpg');

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
  MODIFY `clearance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `cleared_teacher`
--
ALTER TABLE `cleared_teacher`
  MODIFY `cleared_teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `deadline`
--
ALTER TABLE `deadline`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

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
  MODIFY `reqstat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
