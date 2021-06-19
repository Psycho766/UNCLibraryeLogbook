-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2021 at 11:42 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `unc_librarydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `librarylog`
--

CREATE TABLE `librarylog` (
  `id` int(11) NOT NULL,
  `studentid` varchar(10) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `middlename` varchar(30) DEFAULT NULL,
  `lastname` varchar(30) NOT NULL,
  `date` varchar(30) NOT NULL DEFAULT current_timestamp(),
  `department` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `librarylog`
--

INSERT INTO `librarylog` (`id`, `studentid`, `firstname`, `middlename`, `lastname`, `date`, `department`) VALUES
(1, '14-16390', 'Brian', 'Esteban', 'Macatangay', '2021-06-20 01:53:44', 'CS'),
(2, '14-16390', 'Brian', 'Esteban', 'Macatangay', '2021-06-20 01:56:47', 'CS'),
(3, '14-16390', 'Brian', 'Esteban', 'Macatangay', '2021-06-20 02:00:01', 'CS'),
(4, '14-16390', 'Brian', 'Esteban', 'Macatangay', '2021-06-20 02:01:55', 'CS'),
(5, '14-16390', 'Brian', 'Esteban', 'Macatangay', '2021-06-20 02:15:35', 'CS'),
(6, '14-16390', 'Brian', 'Esteban', 'Macatangay', '2021-06-20 02:31:44', 'CS'),
(7, '14-16390', 'Brian', 'Esteban', 'Macatangay', '2021-06-20 02:57:59', 'CS'),
(8, '14-16390', 'Brian', 'Esteban', 'Macatangay', '2021-06-20 02:58:02', 'CS'),
(9, '14-16390', 'Brian', 'Esteban', 'Macatangay', '2021-06-20 02:58:50', 'CS'),
(10, '14-16390', 'Brian', 'Esteban', 'Macatangay', '2021-06-20 02:58:52', 'CS'),
(11, '14-16390', 'Brian', 'Esteban', 'Macatangay', '2021-06-20 03:22:45', 'CS'),
(12, '14-16390', 'Brian', 'Esteban', 'Macatangay', '2021-06-20 03:24:50', 'CS'),
(13, '14-16390', 'Brian', 'Esteban', 'Macatangay', '2021-06-20 03:24:56', 'CS'),
(14, '14-16390', 'Brian', 'Esteban', 'Macatangay', '2021-06-20 03:25:28', 'CS'),
(15, '14-16390', 'Brian', 'Esteban', 'Macatangay', '2021-06-20 03:26:29', 'CS'),
(16, '14-16390', 'Brian', 'Esteban', 'Macatangay', '2021-06-20 04:03:58', 'CS'),
(17, '14-16390', 'Brian', 'Esteban', 'Macatangay', '2021-06-20 04:04:37', 'CS'),
(18, '14-16390', 'Brian', 'Esteban', 'Macatangay', '2021-06-20 04:12:23', 'CS'),
(19, '14-16390', 'Brian', 'Esteban', 'Macatangay', '2021-06-20 04:13:15', 'CS'),
(20, '14-16390', 'Brian', 'Esteban', 'Macatangay', '2021-06-20 04:14:05', 'CS'),
(21, '14-16390', 'Brian', 'Esteban', 'Macatangay', '2021-06-20 04:16:44', 'CS'),
(22, '14-16390', 'Brian', 'Esteban', 'Macatangay', '2021-06-20 04:17:13', 'CS'),
(23, '14-16390', 'Brian', 'Esteban', 'Macatangay', '2021-06-20 04:19:48', 'CS'),
(24, '14-16390', 'Brian', 'Esteban', 'Macatangay', '2021-06-20 04:20:41', 'CS'),
(25, '14-16390', 'Brian', 'Esteban', 'Macatangay', '2021-06-20 04:27:03', 'CS'),
(26, '14-16390', 'Brian', 'Esteban', 'Macatangay', '2021-06-20 04:27:19', 'CS'),
(27, '14-16390', 'Brian', 'Esteban', 'Macatangay', '2021-06-20 04:27:32', 'CS'),
(28, '14-16390', 'Brian', 'Esteban', 'Macatangay', '2021-06-20 04:27:44', 'CS'),
(29, '14-16390', 'Brian', 'Esteban', 'Macatangay', '2021-06-20 04:28:15', 'CS'),
(30, '14-16390', 'Brian', 'Esteban', 'Macatangay', '2021-06-20 04:28:28', 'CS'),
(31, '14-16390', 'Brian', 'Esteban', 'Macatangay', '2021-06-20 04:29:03', 'CS'),
(32, '14-16390', 'Brian', 'Esteban', 'Macatangay', '2021-06-20 04:29:25', 'CS'),
(33, '14-16390', 'Brian', 'Esteban', 'Macatangay', '2021-06-20 04:30:49', 'CS'),
(34, '14-16390', 'Brian', 'Esteban', 'Macatangay', '2021-06-20 04:32:31', 'CS'),
(35, '14-16390', 'Brian', 'Esteban', 'Macatangay', '2021-06-20 04:36:50', 'CS'),
(36, '14-16390', 'Brian', 'Esteban', 'Macatangay', '2021-06-20 04:39:57', 'CS'),
(37, '14-16390', 'Brian', 'Esteban', 'Macatangay', '2021-06-20 04:43:17', 'CS'),
(38, '14-16390', 'Brian', 'Esteban', 'Macatangay', '2021-06-20 04:45:43', 'CS'),
(39, '14-16390', 'Brian', 'Esteban', 'Macatangay', '2021-06-20 04:48:58', 'CS'),
(40, '14-16390', 'Brian', 'Esteban', 'Macatangay', '2021-06-20 04:49:50', 'CS'),
(41, '14-16390', 'Brian', 'Esteban', 'Macatangay', '2021-06-20 04:53:46', 'CS'),
(42, '14-16390', 'Brian', 'Esteban', 'Macatangay', '2021-06-20 04:54:04', 'CS'),
(43, '14-16390', 'Brian', 'Esteban', 'Macatangay', '2021-06-20 04:54:32', 'CS'),
(44, '14-16390', 'Brian', 'Esteban', 'Macatangay', '2021-06-20 04:55:30', 'CS'),
(45, '14-16390', 'Brian', 'Esteban', 'Macatangay', '2021-06-20 04:59:33', 'CS'),
(46, '14-16390', 'Brian', 'Esteban', 'Macatangay', '2021-06-20 04:59:54', 'CS'),
(47, '14-16390', 'Brian', 'Esteban', 'Macatangay', '2021-06-20 05:00:15', 'CS'),
(48, '14-16390', 'Brian', 'Esteban', 'Macatangay', '2021-06-20 05:00:20', 'CS'),
(49, '14-16390', 'Brian', 'Esteban', 'Macatangay', '2021-06-20 05:00:29', 'CS'),
(50, '14-16390', 'Brian', 'Esteban', 'Macatangay', '2021-06-20 05:00:58', 'CS'),
(51, '14-16390', 'Brian', 'Esteban', 'Macatangay', '2021-06-20 05:03:01', 'CS'),
(52, '14-16390', 'Brian', 'Esteban', 'Macatangay', '2021-06-20 05:05:52', 'CS'),
(53, '14-16390', 'Brian', 'Esteban', 'Macatangay', '2021-06-20 05:11:16', 'CS'),
(54, '14-16390', 'Brian', 'Esteban', 'Macatangay', '2021-06-20 05:11:33', 'CS'),
(55, '14-16390', 'Brian', 'Esteban', 'Macatangay', '2021-06-20 05:12:32', 'CS'),
(56, '14-16390', 'Brian', 'Esteban', 'Macatangay', '2021-06-20 05:12:49', 'CS'),
(57, '14-16390', 'Brian', 'Esteban', 'Macatangay', '2021-06-20 05:16:45', 'CS'),
(58, '14-16390', 'Brian', 'Esteban', 'Macatangay', '2021-06-20 05:40:47', 'CS');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `librarylog`
--
ALTER TABLE `librarylog`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `librarylog`
--
ALTER TABLE `librarylog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
