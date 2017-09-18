-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2017 at 08:32 AM
-- Server version: 10.1.24-MariaDB
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `workcohol`
--

-- --------------------------------------------------------

--
-- Table structure for table `applied_user`
--

CREATE TABLE `applied_user` (
  `application_id` int(10) UNSIGNED NOT NULL,
  `job_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `connections`
--

CREATE TABLE `connections` (
  `user_id` int(11) NOT NULL,
  `friend_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `connection_request`
--

CREATE TABLE `connection_request` (
  `request_id` int(11) NOT NULL,
  `r_receiver_id` int(11) NOT NULL,
  `request_hash` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `connection_request`
--

INSERT INTO `connection_request` (`request_id`, `r_receiver_id`, `request_hash`) VALUES
(1, 1, '9771bf9b0477a3659e2591677c36f8d8'),
(1, 1, '9771bf9b0477a3659e2591677c36f8d8'),
(1, 1, '9771bf9b0477a3659e2591677c36f8d8');

-- --------------------------------------------------------

--
-- Table structure for table `educational_background`
--

CREATE TABLE `educational_background` (
  `user_id` int(11) NOT NULL,
  `institute_name` varchar(60) NOT NULL,
  `start-date` date NOT NULL,
  `finish-date` date NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `user_id` int(11) NOT NULL,
  `language_name` int(11) NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `post_job`
--

CREATE TABLE `post_job` (
  `job_id` int(10) UNSIGNED NOT NULL,
  `id` int(11) NOT NULL,
  `category` varchar(40) NOT NULL,
  `type` varchar(15) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `country` varchar(40) NOT NULL,
  `state` varchar(40) NOT NULL,
  `salary_min` int(11) NOT NULL,
  `salary_max` int(11) NOT NULL,
  `exprience` varchar(15) NOT NULL,
  `notification_mail` varchar(50) NOT NULL,
  `company_name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `post_job`
--

INSERT INTO `post_job` (`job_id`, `id`, `category`, `type`, `title`, `description`, `country`, `state`, `salary_min`, `salary_max`, `exprience`, `notification_mail`, `company_name`) VALUES
(1, 1, 'software', 'part_time', 'PHP developer', 'something else', 'india', 'tamilnadu', 20000, 30000, 'mid-level', 'whatsappmail8@gmail.com', 'AR Labs Inc'),
(2, 1, 'management', 'full-time', 'HR manager', 'text hfkdfk ', 'india ', 'Telugana', 40000, 50000, 'mid-level', 'whatsappmail77@gmail.com', 'AS Technology'),
(3, 1, 'hardware', 'part-time', 'dfs', 'dsfs', 'india', 'india', 32, 4234, 'mid-exprience', '3424', 'arul'),
(4, 1, '', '', '', '', '', '', 0, 0, '', '', 'arul'),
(5, 1, '', '', '', '', '', '', 0, 0, '', '', 'arul'),
(6, 1, '', '', '', '', '', '', 0, 0, '', '', 'arul'),
(7, 1, '', '', '', '', '', '', 0, 0, '', '', 'arul'),
(8, 1, '', '', '', '', '', '', 0, 0, '', '', 'arul'),
(9, 1, '', '', '', '', '', '', 0, 0, '', '', 'arul'),
(10, 1, '', '', '', '', '', '', 0, 0, '', '', 'arul');

-- --------------------------------------------------------

--
-- Table structure for table `resume`
--

CREATE TABLE `resume` (
  `resume_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `full_name` varchar(60) NOT NULL,
  `career_objective` text NOT NULL,
  `special_qualification` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` int(11) DEFAULT NULL,
  `current_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `pass` varchar(40) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `type` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`id`, `name`, `mail`, `pass`, `mobile`, `status`, `type`) VALUES
(1, 'arul', 'D@gmail.com', '99a3f5b9190f2fd056cb2d49e2114ca9', '89343', 'active', 'not'),
(2, 'arul', 'whatsappmail8@gmail.com', '99a3f5b9190f2fd056cb2d49e2114ca9', '344', 'active', 'not'),
(3, 'df', 'rr@gmail.com', '99a3f5b9190f2fd056cb2d49e2114ca9', '232', 'active', 'not'),
(4, 'ew', 'rr@gmail.com', 'b86901a616eadc6d3f5f22bda9df81cb', '323', 'active', 'not'),
(5, 'ew', 'rr@gmail.com', 'b86901a616eadc6d3f5f22bda9df81cb', '323', 'active', 'not'),
(6, '', '', '4e3988a9e07576ec8b8a42672c449442', '', 'active', ''),
(7, '', '', '4e3988a9e07576ec8b8a42672c449442', '', 'active', ''),
(8, '', '', '4e3988a9e07576ec8b8a42672c449442', '', 'active', ''),
(9, '87348', 'dfhuhk34989@gmail.com', '99a3f5b9190f2fd056cb2d49e2114ca9', '234', 'active', 'job_seeker');

-- --------------------------------------------------------

--
-- Table structure for table `work_history`
--

CREATE TABLE `work_history` (
  `user_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applied_user`
--
ALTER TABLE `applied_user`
  ADD PRIMARY KEY (`application_id`);

--
-- Indexes for table `post_job`
--
ALTER TABLE `post_job`
  ADD PRIMARY KEY (`job_id`);

--
-- Indexes for table `resume`
--
ALTER TABLE `resume`
  ADD PRIMARY KEY (`resume_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applied_user`
--
ALTER TABLE `applied_user`
  MODIFY `application_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `post_job`
--
ALTER TABLE `post_job`
  MODIFY `job_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `resume`
--
ALTER TABLE `resume`
  MODIFY `resume_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
