-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2018 at 01:30 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hackgsu_userinfo`
--

-- --------------------------------------------------------

--
-- Table structure for table `profile_info_basic`
--

CREATE TABLE `profile_info_basic` (
  `username` varchar(45) NOT NULL DEFAULT 'unnamed',
  `year` int(4) NOT NULL,
  `interests` varchar(999) NOT NULL DEFAULT 'None',
  `languages` varchar(999) NOT NULL DEFAULT 'None',
  `picture_url` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile_info_basic`
--

INSERT INTO `profile_info_basic` (`username`, `year`, `interests`, `languages`, `picture_url`) VALUES
('kimberly.nguyen', 2021, 'Algorithms, Graphics/UI, Networks', 'Java (Intermediate), C (Beginner), C++ (Beginner)', 'http://thememesfactory.com/wp-content/uploads/2014/01/50098d6b34a0a953e8a6dc28a175b3781.jpg'),
('ms0645', 2020, 'Mobile Development, Web Development', 'Java (Intermediate), Swift (Beginner)', 'https://media.licdn.com/dms/image/C5603AQE9OoChO0KcnQ/profile-displayphoto-shrink_800_800/0?e=1544659200&v=beta&t=vRfu0q6-ZBa-hQ0DF4if3JTrqfFoU6-ONyx8XCaxAfE'),
('paris.stroud', 2018, 'AI, Big Data, Database Mgmt, Data Structure, Machine Learning', 'Python (Beginner), C++ (Intermediate), MATLAB (Advanced), PHP (Advanced)', 'https://media.licdn.com/dms/image/C4D03AQG491XPMoeYvw/profile-displayphoto-shrink_800_800/0?e=1544659200&v=beta&t=8l6CHw9V3CUHOu6b8orE8mgXKUjB2jHtEE2SY-M2qxo'),
('sam.yi', 2019, 'Algorithms, Mobile Development', 'Java (Intermediate), MySQL (Beginner), PHP (Beginner), C# (Beginner)', 'https://drive.google.com/open?id=1AmUar0t6j-kKKityA-uUIEEPt21gvYnh'),
('sm53669', 2019, 'Cybersecurity, Networks, Hardware, Web Development', 'Python (Beginner), CSS (Intermediate), Java (Intermediate), Javascript (Beginner), C++ (Beginner), Bash (Intermediate), HTML (Intermediate)', 'https://drive.google.com/open?id=1gnR_b2wr8kAvPQpTNctG-MZEhwCfdauP');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `times_logged_in` int(250) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`, `times_logged_in`) VALUES
(1, 'demo', '$2y$10$LetzwQAEnDPe39dtY3oQP.1pcye7rnw/ANpLXlc/P08VKQVhItlH.', '2018-10-06 16:18:49', 0),
(14, 'sm53669@uga.edu', '$2y$10$2W2OO2t2QRbLPhHAcpUW4OTw132waRkrJLp6sd911d81Ua/1C76.i', '2018-10-06 23:34:53', 0),
(15, 'ms064580@uga.edu', '$2y$10$6XezCiDXGEZEsOfZ2GhioOuQnXROQFq.QwwKAjuMCP.VEeUwwGYsW', '2018-10-06 23:35:33', 0),
(16, 'kimberly.nguyen@uga.edu', '$2y$10$IG.MUtx./GOkpopaSlnbvOVYHxYHzPQul6iHSjN17OYakcx7mLARq', '2018-10-06 23:39:16', 0),
(17, 'paris.stroud@gsu.edu', '$2y$10$J/5AE8nx1.bEvKJFa04oV.vz09q0zG6A0zSSSXee40QC8Q/jjComS', '2018-10-06 23:40:16', 0),
(19, 'swzy92@gmail.com', '$2y$10$RRd8GctdQjBbvTrgz1qtOusSU0g491Swnlhgz1.t/Rku0hJrvsx7a', '2018-10-06 23:44:26', 0),
(22, 'abc@uga.edu', '$2y$10$.ML/x.sLQIKHoxia3eKu9O2I6qHlSZa547SPUGz/ulCZihosmltie', '2018-10-06 23:51:49', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `profile_info_basic`
--
ALTER TABLE `profile_info_basic`
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
