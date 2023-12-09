-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:8111
-- Generation Time: Dec 07, 2023 at 05:10 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foundationforge`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `class` varchar(50) NOT NULL,
  `payment_method` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `email`, `phone`, `class`, `payment_method`) VALUES
(1, 'frdhillafieldhathama@gmail.com', '0895338932402', '5', '2'),
(2, 'frdhillafieldhathama@gmail.com', '0895338932402', '3', '3'),
(3, 'frdhillafieldhathama@gmail.com', '0895338932402', '2', '1'),
(4, 'qwertyuiop@gmail.com', '0987654321', '1', '3'),
(5, 'qwertyuiop@gmail.com', '0987654321', '2', '2'),
(6, 'qwertyuiop@gmail.com', '0987654321', '3', '2'),
(7, 'frdhillafieldhatama@gmail.com', '0895338932401', '3', '1'),
(8, 'frdhillafieldhathama@gmail.com', '0895338932402', '3', '1'),
(9, 'frdhillafieldhathama@gmail.com', '0895338932402', '3', '3'),
(10, 'frdhillafieldhathama@gmail.com', '0895338932402', '4', '2'),
(11, 'frdhillafieldhathama@gmail.com', '0895338932402', '3', '1'),
(12, 'frdhillafieldhatama@gmail.com', '0895338932401', '3', '1');

-- --------------------------------------------------------

--
-- Table structure for table `crud`
--

CREATE TABLE `crud` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `instansi` varchar(100) NOT NULL,
  `judul` varchar(1000) NOT NULL,
  `link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crud`
--

INSERT INTO `crud` (`id`, `nama`, `email`, `instansi`, `judul`, `link`) VALUES
(4, 'Fedhilla Fieldhatham', 'frdhillafieldhathama@gmail.com', 'BUMN', '', 'fedhilla.github.io');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Id` int(11) NOT NULL,
  `Username` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Id`, `Username`, `Email`, `Age`, `Password`) VALUES
(1, 'SYALALA', 'SYILII', 26, 'AJJD'),
(2, 'njnn', 'nn', 0, 'nn'),
(3, 'ss', 'ss', 2, 'ss'),
(4, 'lala', 'frdhillafieldhathama@gmail.com', 19, 'sss'),
(5, 'aa', 'qwertyuiop@gmail.com', 50, 'zakynih');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crud`
--
ALTER TABLE `crud`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `crud`
--
ALTER TABLE `crud`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
