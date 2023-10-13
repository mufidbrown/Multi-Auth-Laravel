-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2023 at 09:33 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `njajal`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id_products` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id_products`, `name`, `price`) VALUES
(1, 'Marshall Cabinets', '60.000.000'),
(2, 'Marshall Amps', '45.000.000'),
(3, 'PRS', '45.000.000'),
(4, 'Gibson', '75.000.000'),
(5, 'Fender Deluxe 70', '40.000.000'),
(6, 'Taylor', '15.000.000'),
(7, 'Pedals', '60.000.000'),
(8, 'PRS', '35.000.000'),
(9, 'PRS', '35.000.000'),
(10, 'ibanez', '20.000.000');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id_transactions` int(11) NOT NULL,
  `id_users` int(11) DEFAULT NULL,
  `id_products` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id_transactions`, `id_users`, `id_products`, `tanggal`) VALUES
(1, 1, 1, '2023-10-10'),
(2, 2, 2, '2023-10-10'),
(3, 3, 3, '2023-10-10'),
(4, 4, 4, '2023-10-10'),
(5, 5, 5, '2023-09-09'),
(6, 6, 6, '2023-10-11'),
(7, 7, 7, '2023-10-11'),
(8, 8, 8, '2023-05-12'),
(9, 9, 9, '2023-05-12'),
(10, 10, 10, '2023-09-09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_users` int(11) NOT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_users`, `FirstName`, `Address`, `City`) VALUES
(1, 'Ilham', 'jln.zpqm', 'Jakarta'),
(2, 'curt', 'jln.abc', 'Bandung'),
(3, 'Dave', 'jln.qpal', 'Bandung'),
(4, 'Ilham', 'jln.zxcv', 'Yogyakarta'),
(5, 'slash', 'jalan.asdf', 'Surabaya'),
(6, 'udin', 'jalan.yuiop', 'Yogyakarta'),
(7, 'axel', 'jalan.lkjh', 'Surabaya'),
(8, 'izzi', 'jalan.mnbv', 'Surabaya'),
(9, 'Stradline', 'jalan.dfgh', 'Jakarta'),
(10, 'keith', 'jalan.rtyu', 'Jakarta');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_products`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id_transactions`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_users`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
