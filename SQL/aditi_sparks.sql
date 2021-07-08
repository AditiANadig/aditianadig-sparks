-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 08, 2021 at 03:09 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aditi_sparks`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `cust_id` int(10) NOT NULL AUTO_INCREMENT,
  `cust_name` varchar(50) NOT NULL,
  `cust_email` varchar(50) NOT NULL,
  `cust_balance` int(20) NOT NULL,
  PRIMARY KEY (`cust_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`cust_id`, `cust_name`, `cust_email`, `cust_balance`) VALUES
(1, 'Aditi', 'aditi@gmail.com', 102300),
(2, 'Abhijna', 'abhijna@gmail.com', 106500),
(3, 'Arun', 'arun@gmail.com', 97500),
(4, 'Vani', 'vani@gmail.com', 110700),
(5, 'Jaya', 'jaya@gmail.com', 95000),
(6, 'Akhila', 'akhila@gmail.com', 98200),
(7, 'Kshithi', 'kshithi@gmail.com', 86000),
(8, 'Adithya', 'adithya@gmail.com', 100000),
(9, 'Vishakh', 'vishakh@gmail.com', 103300),
(10, 'Pooja', 'pooja@gmail.com', 100500);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
CREATE TABLE IF NOT EXISTS `transactions` (
  `t_id` int(10) NOT NULL AUTO_INCREMENT,
  `t_sender` varchar(20) NOT NULL,
  `t_receiver` varchar(20) NOT NULL,
  `t_amount` int(10) NOT NULL,
  `t_time` varchar(50) NOT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`t_id`, `t_sender`, `t_receiver`, `t_amount`, `t_time`) VALUES
(1, 'Arun', 'Vani', 10000, '08:07:2021 12:43:09am'),
(2, 'Arun', 'Jaya', 1000, '08:07:2021 12:50:54am'),
(3, 'Abhijna', 'Akhila', 500, '08:07:2021 12:51:04am'),
(4, 'Aditi', 'Kshithi', 1000, '08:07:2021 12:51:17am'),
(5, 'Pooja', 'Vishakh', 100, '08:07:2021 12:51:26am'),
(6, 'Akhila', 'Adithya', 1000, '08:07:2021 12:51:36am'),
(7, 'Vishakh', 'Akhila', 500, '08:07:2021 12:57:33am'),
(8, 'Kshithi', 'Abhijna', 10000, '08:07:2021 12:57:45am'),
(9, 'Jaya', 'Pooja', 100, '08:07:2021 12:57:54am'),
(10, 'Jaya', 'Aditi', 1000, '08:07:2021 01:18:15am'),
(11, 'Aditi', 'Adithya', 500, '08:07:2021 01:46:11am'),
(12, 'Aditi', 'Adithya', 500, '08:07:2021 01:47:13am'),
(13, 'Aditi', 'Adithya', 500, '08:07:2021 01:48:03am'),
(14, 'Kshithi', 'Vishakh', 2000, '08:07:2021 01:56:15am'),
(15, 'Akhila', 'Abhijna', 500, '08:07:2021 01:57:12am'),
(16, 'Akhila', 'Abhijna', 500, '08:07:2021 01:58:38am'),
(17, 'Abhijna', 'Adithya', 1000, '08:07:2021 01:59:18am'),
(18, 'Vani', 'Aditi', 300, '08:07:2021 01:59:55am'),
(19, 'Abhijna', 'Vani', 2000, '08:07:2021 02:32:49am'),
(20, 'Abhijna', 'Jaya', 1000, '08:07:2021 07:48:41pm'),
(21, 'Adithya', 'Pooja', 500, '08:07:2021 07:53:23pm'),
(22, 'Jaya', 'Akhila', 800, '08:07:2021 07:55:50pm'),
(23, 'Jaya', 'Arun', 5000, '08:07:2021 07:56:47pm'),
(24, 'Kshithi', 'Aditi', 500, '08:07:2021 07:57:32pm'),
(25, 'Kshithi', 'Aditi', 500, '08:07:2021 07:59:38pm'),
(26, 'Vani', 'Arun', 500, '08:07:2021 08:00:09pm'),
(27, 'Vani', 'Arun', 500, '08:07:2021 08:00:24pm'),
(28, 'Adithya', 'Arun', 3000, '08:07:2021 08:00:54pm'),
(29, 'Arun', 'Aditi', 500, '08:07:2021 08:01:39pm'),
(30, 'Kshithi', 'Aditi', 1000, '08:07:2021 08:01:53pm'),
(31, 'Kshithi', 'Aditi', 1000, '08:07:2021 08:02:16pm'),
(32, 'Akhila', 'Vishakh', 800, '08:07:2021 08:03:28pm'),
(33, 'Akhila', 'Vishakh', 800, '08:07:2021 08:03:38pm'),
(34, 'Jaya', 'Vishakh', 100, '08:07:2021 08:05:12pm');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
