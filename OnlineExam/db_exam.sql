-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2017 at 08:25 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminUser` varchar(50) NOT NULL,
  `adminPass` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminUser`, `adminPass`) VALUES

(1, 'adminUser', 'adminPass');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ans`
--

CREATE TABLE `tbl_ans` (
  `id` int(11) NOT NULL,
  `quesNo` int(11) NOT NULL,
  `rightAns` int(11) NOT NULL DEFAULT '0',
  `ans` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ans`
--

INSERT INTO `tbl_ans` (`id`, `quesNo`, `rightAns`, `ans`) VALUES
(128, 1, 0, '31'),
(129, 1, 1, '91'),
(130, 1, 0, '61'),
(131, 1, 0, '71'),
(132, 2, 1, '1951609 '),
(133, 2, 0, '1981709'),
(134, 2, 0, ' 18362619'),
(135, 2, 0, ' none of these'),
(136, 3, 1, '9944  '),
(137, 3, 0, '9768'),
(138, 3, 0, '9988'),
(139, 3, 0, '8888'),
(140, 4, 1, ' efficient '),
(141, 4, 0, 'treatment '),
(142, 4, 0, 'beterment'),
(143, 4, 0, ' employd'),
(144, 5, 0, ' soft'),
(145, 5, 0, ' average '),
(146, 5, 1, 'tiny '),
(147, 5, 0, 'weak'),
(148, 6, 1, ' obese '),
(149, 6, 0, 'lean'),
(150, 6, 0, ' gaunt'),
(151, 6, 0, ' emaciated'),
(152, 7, 1, 'to be in good mood'),
(153, 7, 0, 'to become hungry'),
(154, 7, 0, 'to be aloof from'),
(155, 7, 0, 'none of the above'),
(156, 8, 0, '7'),
(157, 8, 0, ' 12 '),
(158, 8, 1, '10'),
(159, 8, 0, '13'),
(160, 9, 0, 'hiking '),
(161, 9, 0, 'needle '),
(162, 9, 1, 'direction '),
(163, 9, 0, 'speed'),
(164, 10, 0, 'autumn '),
(165, 10, 0, 'stockpile '),
(166, 10, 0, 'tractor'),
(167, 10, 1, ' crop');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ques`
--

CREATE TABLE `tbl_ques` (
  `id` int(11) NOT NULL,
  `quesNo` int(11) NOT NULL,
  `ques` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ques`
--

INSERT INTO `tbl_ques` (`id`, `quesNo`, `ques`) VALUES
(40, 1, 'which one of the following is not a prime number? '),
(41, 2, '1397*1397'),
(42, 3, ' the largest 4 digit number exactly divisible by 88 is  '),
(43, 4, 'find the correct spelt word'),
(44, 5, 'find the antonym of ENORMOUS'),
(45, 6, 'find the synonym of CORPULENT'),
(46, 7, 'what does TO KEEP ONES TEMPER  phrase mean? '),
(47, 8, 'what is the next number in the series:7,10,8,11,9,12,.. '),
(48, 9, 'odometer is to mileage as compass is to '),
(49, 10, 'What is the necessary part of the word HARVEST');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `userid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`userid`, `name`, `username`, `password`, `email`, `status`) VALUES
(5, 'Md. Alamgir Hossain', 'alamgir_JUST', '8226a3c238456069bbec8b760a8babaa', 'alamgir.cse14.just@gmail.com', 0),
(7, 'Alamgir Hossain', 'alamgir_csejust', '8226a3c238456069bbec8b760a8babaa', 'malamgirhossain1996@gmail.com', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `tbl_ans`
--
ALTER TABLE `tbl_ans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ques`
--
ALTER TABLE `tbl_ques`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_ans`
--
ALTER TABLE `tbl_ans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;
--
-- AUTO_INCREMENT for table `tbl_ques`
--
ALTER TABLE `tbl_ques`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
