-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2018 at 05:22 PM
-- Server version: 5.6.25-log
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `weddinghall`
--

-- --------------------------------------------------------

--
-- Table structure for table `ccatering`
--

CREATE TABLE `ccatering` (
  `id` int(5) NOT NULL,
  `name` varchar(25) NOT NULL,
  `quantity` int(5) NOT NULL,
  `cid` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ccatering`
--

INSERT INTO `ccatering` (`id`, `name`, `quantity`, `cid`) VALUES
(1, 'chinese', 5, 6),
(2, 'mughlai', 300, 7);

-- --------------------------------------------------------

--
-- Table structure for table `cdeco`
--

CREATE TABLE `cdeco` (
  `id` int(5) NOT NULL,
  `sofa` int(5) NOT NULL,
  `chair` int(5) NOT NULL,
  `tables` int(5) NOT NULL,
  `other` int(5) NOT NULL,
  `cid` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdeco`
--

INSERT INTO `cdeco` (`id`, `sofa`, `chair`, `tables`, `other`, `cid`) VALUES
(1, 4, 4, 4, 4, 5),
(2, 4, 4, 4, 4, 5),
(3, 2, 2, 2, 2, 5),
(4, 5, 5, 5, 5, 6),
(5, 2, 500, 10, 0, 7);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cid` int(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobile` decimal(10,0) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(250) NOT NULL,
  `dob` date NOT NULL,
  `bookdate` date NOT NULL,
  `bookshift` varchar(20) NOT NULL,
  `floor` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cid`, `name`, `mobile`, `email`, `address`, `dob`, `bookdate`, `bookshift`, `floor`) VALUES
(1, 'adnan', '7208577656', 'adnan@gmail.com', ' mumbra,thane', '1999-02-16', '2018-10-21', 'evening', 'first'),
(2, 'shadab', '7208577656', 'shadab@gmail.com', 'kalina,santacruz', '1999-02-16', '2018-10-21', 'evening', 'ground'),
(3, 'obaid', '7208577656', 'obaid@gmail.com', 'kalina,santacruz', '1999-02-16', '2018-10-21', 'evening', 'second'),
(4, 'mudassar', '9999999999', 'mud@gmail.com', 'mumbra,Thane', '2018-10-01', '2018-10-08', 'evening', 'first'),
(5, 'rehan', '7788996627', 'rehan@gmail.com', 'kurla,', '2018-10-01', '2018-10-22', 'afternoon', 'ground'),
(6, 'chicha', '7778996655', 'chicha@gmail.com', 'kurla', '2018-10-03', '2018-10-09', 'afternoon', 'first'),
(7, 'adnan', '7208577656', 'adnannet@gmail.com', 'mumbra,thane.', '1999-02-16', '2018-10-01', 'evening', 'second');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `pass`) VALUES
('adnan', 'adnan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ccatering`
--
ALTER TABLE `ccatering`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cid` (`cid`);

--
-- Indexes for table `cdeco`
--
ALTER TABLE `cdeco`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cid` (`cid`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ccatering`
--
ALTER TABLE `ccatering`
  MODIFY `id` int(5) NOT NULL;
--
-- AUTO_INCREMENT for table `cdeco`
--
ALTER TABLE `cdeco`
  MODIFY `id` int(5) NOT NULL ;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cid` int(5) NOT NULL ;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `ccatering`
--
ALTER TABLE `ccatering`
  ADD CONSTRAINT `ccatering_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `customer` (`cid`);

--
-- Constraints for table `cdeco`
--
ALTER TABLE `cdeco`
  ADD CONSTRAINT `cdeco_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `customer` (`cid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
