-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Jun 17, 2021 at 05:33 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sparks_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sender` varchar(20) NOT NULL,
  `receiver` varchar(20) NOT NULL,
  `balance` int(10) NOT NULL,
  `datetime` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sender`, `receiver`, `balance`, `datetime`) VALUES
('dinesh', 'gowtham', 3000, '2021-06-19'),
('appu', 'mithun', 500, '2021-06-19'),
('sanjay', 'appu', 4300, '2021-06-19'),
('appu', 'dinesh', 1900, '2021-06-19'),
('happy', 'sarvesh', 1300, '2021-06-19'),
('gowtham', 'happy', 300, '2021-06-19'),
('dinesh', 'sarvesh', 600, '2021-06-19'),
('sarvesh', 'royston', 2000, '2021-06-19'),
('dinesh', 'appu', 4000, '2021-06-19'),
('karthi', 'mitun', 5400, '2021-06-19'),
('gowtham', 'dinesh', 3500, '2021-06-19'),
('sanjay', 'royston', 500, '2021-06-19'),
('mitun', 'happy', 7000, '2021-06-19'),
('nimroy', 'karthi', 800, '2021-06-19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'gowtham', 'gowtham@gmail.com', 52370),
(2, 'sarvesh', 'sarvesh@gmail.com', 30000),
(3, 'happy', 'happy@gmail.com', 20500),
(4, 'appu', 'appu@gmail.com', 40000),
(5, 'dinesh', 'dinesh@gmail.com', 18500),
(6, 'mitun', 'mitun@gmail.com', 48900),
(7, 'sanjay', 'sanjay@gmail.com', 65700),
(8, 'royston', 'royston@gmail.com', 12340),
(9, 'nimroy', 'nimroy@gmail.com', 34000),
(10, 'karthi', 'karthi@gmail.com', 25000);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
