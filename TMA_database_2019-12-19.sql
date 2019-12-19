-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Dec 19, 2019 at 02:33 AM
-- Server version: 8.0.17
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my3plus`
--
CREATE DATABASE IF NOT EXISTS `my3plus` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `my3plus`;

-- --------------------------------------------------------

--
-- Table structure for table `post_category`
--

DROP TABLE IF EXISTS `post_category`;
CREATE TABLE `post_category` (
  `cateId` int(11) NOT NULL,
  `cate_name` varchar(100) DEFAULT NULL,
  `cate_description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `post_category`
--

INSERT INTO `post_category` (`cateId`, `cate_name`, `cate_description`) VALUES
(1, 'ข่าวสาร', NULL),
(2, 'นโยบาย', NULL),
(3, 'ประกาศ', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post_news`
--

DROP TABLE IF EXISTS `post_news`;
CREATE TABLE `post_news` (
  `postId` int(11) NOT NULL,
  `post_status` int(11) DEFAULT NULL,
  `post_date` datetime DEFAULT NULL,
  `post_subject` varchar(150) DEFAULT NULL,
  `post_department` varchar(255) DEFAULT NULL,
  `post_category` varchar(45) DEFAULT NULL,
  `post_slide` int(11) DEFAULT '0',
  `post_details` text,
  `post_filename` varchar(255) DEFAULT NULL,
  `post_image` text,
  `post_startDate` datetime DEFAULT NULL,
  `post_finishDate` datetime DEFAULT NULL,
  `userCreated` varchar(15) DEFAULT NULL,
  `dateCreated` datetime DEFAULT NULL,
  `ipCreated` varchar(25) DEFAULT NULL,
  `userUpdated` varchar(15) DEFAULT NULL,
  `dateUpdated` datetime DEFAULT NULL,
  `ipUpdated` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users_profile`
--

DROP TABLE IF EXISTS `users_profile`;
CREATE TABLE `users_profile` (
  `userId` int(11) NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `title` varchar(15) DEFAULT NULL,
  `citizenId` varchar(13) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `userCreated` varchar(15) DEFAULT NULL,
  `dateCreated` datetime DEFAULT NULL,
  `ipCreated` varchar(25) DEFAULT NULL,
  `userUpdated` varchar(15) DEFAULT NULL,
  `dateUpdated` varchar(25) DEFAULT NULL,
  `ipUpdated` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

DROP TABLE IF EXISTS `user_login`;
CREATE TABLE `user_login` (
  `userId` int(11) NOT NULL,
  `fullname` varchar(150) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `confirmpassword` varchar(100) DEFAULT NULL,
  `user_role` char(5) DEFAULT NULL,
  `dateCreated` datetime DEFAULT NULL,
  `dateUpdated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`userId`, `fullname`, `username`, `password`, `confirmpassword`, `user_role`, `dateCreated`, `dateUpdated`) VALUES
(1, 'ศศธร อริยศุภพงษ์', 'sasathornari', 'MjU0NjIzMjc=', 'MjU0NjIzMjc=', '1', '2019-12-16 00:00:00', NULL),
(2, 'ชาติชาย หิรัญนุช', 'chardchaihir', 'MTIzNDU=', 'MTIzNDU=', '2', '2019-12-16 00:00:00', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `post_category`
--
ALTER TABLE `post_category`
  ADD PRIMARY KEY (`cateId`);

--
-- Indexes for table `post_news`
--
ALTER TABLE `post_news`
  ADD PRIMARY KEY (`postId`);

--
-- Indexes for table `users_profile`
--
ALTER TABLE `users_profile`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `post_category`
--
ALTER TABLE `post_category`
  MODIFY `cateId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `post_news`
--
ALTER TABLE `post_news`
  MODIFY `postId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users_profile`
--
ALTER TABLE `users_profile`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
