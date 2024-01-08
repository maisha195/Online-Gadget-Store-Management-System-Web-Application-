-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2023 at 03:16 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_form`
--

CREATE TABLE `admin_form` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_form`
--

INSERT INTO `admin_form` (`id`, `name`, `email`, `password`) VALUES
(1, 'tajwar', 'tajwarforwork@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `quantity` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `name`, `price`, `image`, `quantity`) VALUES
(37, 10, 'Pixel 6', '48000', 'Pixel6.png', 1),
(39, 1, 'hp elitebook 840', '70000', 'hp-1.jpg', 2),
(40, 1, 'hp elitebook 840 g1', '90000', 'hp-3.jpg', 1),
(41, 13, 'iphone-12', '70000', 'iphone-12.png', 1),
(42, 13, 'Samsung Speaker', '5000', 'speaker3.jpg', 1),
(46, 15, 'Vivobook core i5', '70000', 'asus-3.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `gadgetes`
--

CREATE TABLE `gadgetes` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gadgetes`
--

INSERT INTO `gadgetes` (`id`, `name`, `price`, `image`) VALUES
(201, 'H2026d Gaming Headset', '1500', 'havit1.jpg'),
(202, 'Havit HV-H2239D Headphone', '1700', 'havit2.jpg'),
(203, 'H633bt Havit', '1000', 'havit3.jpg'),
(204, 'haylou rs4', '4500', 'watch1.jpg'),
(205, 'haylou gt7', '2700', 'watch2.jpg'),
(206, 'xiaomi watch s1', '2000', 'watch3.jpg'),
(207, 'Anker bluetooth Speaker', '1000', 'speaker1.jpg'),
(208, 'Sony bluetooth Speaker', '1500', 'speaker2.jpg'),
(209, 'Samsung Speaker', '5000', 'speaker3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `laptops`
--

CREATE TABLE `laptops` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `laptops`
--

INSERT INTO `laptops` (`id`, `name`, `price`, `image`) VALUES
(1001, 'Asus-x509jb-10th', '50000', 'asus-1.jpg'),
(1002, 'Vivobook core i5', '70000', 'asus-3.jpg'),
(1003, 'Zenbook Pro', '150000', 'asus-2.jpg'),
(1004, 'hp pavilion x360', '45000', 'hp-2.jpg'),
(1005, 'hp elitebook 840', '70000', 'hp-1.jpg'),
(1006, 'hp elitebook 840 g1', '90000', 'hp-3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `phones`
--

CREATE TABLE `phones` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `phones`
--

INSERT INTO `phones` (`id`, `name`, `price`, `image`) VALUES
(101, 'iphone-11', '50000', 'iphone-11.png'),
(102, 'iphone-12', '70000', 'iphone-12.png'),
(103, 'iphone-13', '150000', 'iphone-13.png'),
(104, 'Mi note-9', '45000', 'Mi note-9.png'),
(105, 'Mi note-10', '70000', 'Mi note-10.png'),
(106, 'Mi note-11', '90000', 'Mi note-11.png'),
(107, 'Samsung A12', '90000', 'samsung-A12.png'),
(108, 'Samsung s21', '150000', 'samsung-s21.png'),
(109, 'Samsung A31', '100000', 'samsung-A31.png'),
(110, 'Pixel 6', '48000', 'Pixel6.png');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`) VALUES
(1, 'Samsung s22', '57999', 'product-1.jpg'),
(2, 'haylou rs4', '2500', 'product-2.jpg'),
(3, 'Canon camera', '50000', 'product-3.jpg'),
(4, 'Smart speaker', '57999', 'product-4.jpg'),
(5, 'havit headphone', '2500', 'product-5.jpg'),
(6, 'Samsung Led Tv', '45000', 'product-6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_form`
--

CREATE TABLE `user_form` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_form`
--

INSERT INTO `user_form` (`id`, `name`, `email`, `password`) VALUES
(15, 'tajwar', 'tajwaralirumman@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_form`
--
ALTER TABLE `admin_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gadgetes`
--
ALTER TABLE `gadgetes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laptops`
--
ALTER TABLE `laptops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phones`
--
ALTER TABLE `phones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_form`
--
ALTER TABLE `user_form`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_form`
--
ALTER TABLE `admin_form`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `gadgetes`
--
ALTER TABLE `gadgetes`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT for table `laptops`
--
ALTER TABLE `laptops`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1007;

--
-- AUTO_INCREMENT for table `phones`
--
ALTER TABLE `phones`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1007;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user_form`
--
ALTER TABLE `user_form`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
