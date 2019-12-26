-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2019 at 01:49 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kantin_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `active`) VALUES
(1, 'Makanan', 1),
(2, 'Minuman', 1);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `service_charge_value` varchar(255) NOT NULL,
  `vat_charge_value` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `currency` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `company_name`, `service_charge_value`, `vat_charge_value`, `address`, `phone`, `country`, `message`, `currency`) VALUES
(1, 'Kantin Barokah', '', '0', 'READING', '234234235', 'Indonesia', 'this is just an testing', 'IDR');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `permission` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `group_name`, `permission`) VALUES
(1, 'Super Administrator', 'a:32:{i:0;s:10:\"createUser\";i:1;s:10:\"updateUser\";i:2;s:8:\"viewUser\";i:3;s:10:\"deleteUser\";i:4;s:11:\"createGroup\";i:5;s:11:\"updateGroup\";i:6;s:9:\"viewGroup\";i:7;s:11:\"deleteGroup\";i:8;s:11:\"createStore\";i:9;s:11:\"updateStore\";i:10;s:9:\"viewStore\";i:11;s:11:\"deleteStore\";i:12;s:11:\"createTable\";i:13;s:11:\"updateTable\";i:14;s:9:\"viewTable\";i:15;s:11:\"deleteTable\";i:16;s:14:\"createCategory\";i:17;s:14:\"updateCategory\";i:18;s:12:\"viewCategory\";i:19;s:14:\"deleteCategory\";i:20;s:13:\"createProduct\";i:21;s:13:\"updateProduct\";i:22;s:11:\"viewProduct\";i:23;s:13:\"deleteProduct\";i:24;s:11:\"createOrder\";i:25;s:11:\"updateOrder\";i:26;s:9:\"viewOrder\";i:27;s:11:\"deleteOrder\";i:28;s:10:\"viewReport\";i:29;s:13:\"updateCompany\";i:30;s:11:\"viewProfile\";i:31;s:13:\"updateSetting\";}'),
(4, 'Members', 'a:4:{i:0;s:11:\"viewProduct\";i:1;s:11:\"createOrder\";i:2;s:11:\"updateOrder\";i:3;s:9:\"viewOrder\";}'),
(5, 'Staff', 'a:6:{i:0;s:9:\"viewTable\";i:1;s:11:\"viewProduct\";i:2;s:11:\"createOrder\";i:3;s:11:\"updateOrder\";i:4;s:9:\"viewOrder\";i:5;s:11:\"viewProfile\";}'),
(6, 'Tenant', 'a:30:{i:0;s:10:\"updateUser\";i:1;s:8:\"viewUser\";i:2;s:10:\"deleteUser\";i:3;s:11:\"updateGroup\";i:4;s:9:\"viewGroup\";i:5;s:11:\"deleteGroup\";i:6;s:11:\"createStore\";i:7;s:11:\"updateStore\";i:8;s:9:\"viewStore\";i:9;s:11:\"deleteStore\";i:10;s:11:\"createTable\";i:11;s:11:\"updateTable\";i:12;s:9:\"viewTable\";i:13;s:11:\"deleteTable\";i:14;s:14:\"createCategory\";i:15;s:14:\"updateCategory\";i:16;s:12:\"viewCategory\";i:17;s:14:\"deleteCategory\";i:18;s:13:\"createProduct\";i:19;s:13:\"updateProduct\";i:20;s:11:\"viewProduct\";i:21;s:13:\"deleteProduct\";i:22;s:11:\"createOrder\";i:23;s:11:\"updateOrder\";i:24;s:9:\"viewOrder\";i:25;s:11:\"deleteOrder\";i:26;s:10:\"viewReport\";i:27;s:13:\"updateCompany\";i:28;s:11:\"viewProfile\";i:29;s:13:\"updateSetting\";}');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `bill_no` varchar(255) NOT NULL,
  `date_time` varchar(255) NOT NULL,
  `gross_amount` varchar(255) NOT NULL,
  `service_charge_rate` varchar(255) NOT NULL,
  `service_charge_amount` varchar(255) NOT NULL,
  `vat_charge_rate` varchar(255) NOT NULL,
  `vat_charge_amount` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `net_amount` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `table_id` int(11) NOT NULL,
  `paid_status` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `bill_no`, `date_time`, `gross_amount`, `service_charge_rate`, `service_charge_amount`, `vat_charge_rate`, `vat_charge_amount`, `discount`, `net_amount`, `user_id`, `table_id`, `paid_status`, `store_id`) VALUES
(1, 'BILPR-E8DF', '1567817102', '18.00', '', '0', '0', '0', '', '20.34', 1, 1, 1, 0),
(2, 'BILPR-C0C5', '1568483962', '15000.00', '', '0', '0', '0', '', '15000.00', 1, 2, 1, 0),
(3, 'BILPR-8A26', '1568541652', '15.00', '', '0', '0', '0', '', '15.00', 1, 3, 1, 0),
(4, 'BILPR-0D1E', '1568549175', '15000.00', '', '0', '0', '0', '', '15000.00', 1, 1, 1, 0),
(5, 'BILPR-B8F9', '1569000673', '15000.00', '', '0', '0', '0', '', '15000.00', 1, 2, 1, 0),
(6, 'BILPR-8C53', '1569001219', '15000', '', '0', '0', '0', '', '15000', 1, 2, 1, 0),
(7, 'BILPR-CAD2', '1569002347', '15000', '', '0', '0', '0', '', '15000', 1, 1, 1, 0),
(8, 'BILPR-38F1', '1569025367', '63000.00', '', '0', '0', '0', '', '63000.00', 1, 3, 1, 0),
(9, 'BILPR-8ABF', '1569027800', '75000.00', '', '0', '0', '0', '', '75000.00', 1, 2, 1, 0),
(10, 'BILPR-AA52', '1569051187', '18000.00', '', '0', '0', '0', '', '18000.00', 1, 1, 1, 0),
(11, 'BILPR-E3B7', '1569509661', '81000.00', '', '0', '0', '0', '', '81000.00', 1, 1, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `qty`, `rate`, `amount`) VALUES
(4, 1, 5, '1', '18.000', '18.00'),
(5, 2, 7, '1', '15000', '15000.00'),
(8, 5, 7, '1', '15000', '15000.00'),
(9, 4, 7, '1', '15000', '15000.00'),
(10, 3, 3, '1', '15.000', '15.00'),
(12, 6, 7, '1', '15000', '15000'),
(23, 9, 6, '5', '15000', '75000.00'),
(24, 7, 7, '1', '15000', '15000'),
(26, 10, 5, '1', '18000', '18000.00'),
(27, 11, 7, '1', '15000', '15000.00'),
(28, 11, 5, '1', '18000', '18000.00'),
(29, 11, 6, '1', '15000', '15000.00'),
(30, 11, 5, '', '', ''),
(31, 11, 3, '1', '15000', '15000.00'),
(32, 8, 7, '1', '15000', '15000.00'),
(33, 8, 2, '1', '15000', '15000.00'),
(34, 8, 5, '1', '18000', '18000.00'),
(35, 8, 6, '1', '15000', '15000.00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` text NOT NULL,
  `store_id` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `prft_shr` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `store_id`, `name`, `price`, `prft_shr`, `description`, `image`, `active`) VALUES
(2, 'null', '[\"5\"]', 'Ayam Sechuan', '15000', '', '<p>Ayam Sechuan + Nasi</p>', 'assets/images/product_image/5d6d304a10756.PNG', 1),
(3, 'null', '[\"5\"]', 'Chicken Lemon', '15000', '', '<p>Ayam Bumbu Lemon + Nasi</p>', 'assets/images/product_image/5d6d308fd83c5.PNG', 1),
(4, 'null', '[\"5\"]', 'Ayam Bumbu Kacang', '15000', '', '<p>Ayam Bumbu Kacang + Nasi</p>', 'assets/images/product_image/5d6d30cc9a5b7.PNG', 1),
(5, '[\"1\"]', '[\"5\"]', 'Ayam Cah Brokoli', '18000', '', '<p>Ayam Cah Brokoli + Nasi</p>', 'assets/images/product_image/5d6d34d510885.PNG', 1),
(6, '[\"1\"]', '[\"6\"]', 'Ayam Srundeng', '15000', '', '<p>Ayam Srundeng Enak dan Bergizi</p>', 'assets/images/product_image/5d7323d9f35c9.PNG', 1),
(7, '[\"1\"]', '[\"5\"]', 'kjksnksna', '15000', '10', '', '<p>The upload destination folder does not appear to be writable.</p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `name`, `active`) VALUES
(5, 'HWA Foods', 1),
(6, 'Ayam Goreng Pak Muji', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `id` int(11) NOT NULL,
  `table_name` varchar(255) NOT NULL,
  `capacity` varchar(255) NOT NULL,
  `available` int(11) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`id`, `table_name`, `capacity`, `available`, `active`) VALUES
(1, '1', '6', 2, 1),
(2, '2', '5', 1, 1),
(3, '3', '5', 1, 1),
(4, '4', '5', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `firstname`, `lastname`, `phone`, `store_id`) VALUES
(1, 'admin', '$2y$10$yfi5nUQGXUZtMdl27dWAyOd/jMOmATBpiUvJDmUu9hJ5Ro6BE5wsK', 'admin@admin.com', 'john', 'doe', '80789998', 0),
(5, 'Heryana', '$2y$10$//lMK8GsciUS4co6a2IAkeO72x8fREYFT/yx1Hh/IUOf.7D2VgUCG', 'heryanatan68@gmail.com', 'Heryana', 'HWA Foods', '0816722973', 5),
(6, 'Pak Muji', '$2y$10$GFBDdgjbZIw/BxcUcEFJ1e44CBhVHJDVzfR.YvcwtsTUMDKXumpUC', 'muji123@gmail.com', 'Pak', 'Muji', '123456789', 6),
(7, 'ahai1234', '$2y$10$6J9VWCDnjKq3aV3eugFVaOSvYml4bGCb7TWWByOmIqnJqRDWLp/kq', 'a@a.com', 'a', 'a', '', 6);

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE `user_group` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_group`
--

INSERT INTO `user_group` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 2, 6),
(3, 3, 6),
(4, 4, 6),
(5, 5, 6),
(6, 6, 6),
(7, 7, 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_group`
--
ALTER TABLE `user_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
