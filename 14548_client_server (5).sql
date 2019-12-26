-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2019 at 04:45 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `client_server`
--

-- --------------------------------------------------------

--
-- Table structure for table `ip`
--

CREATE TABLE `ip` (
  `id` int(255) NOT NULL,
  `grup` text NOT NULL,
  `sid` text NOT NULL,
  `customer` text NOT NULL,
  `layanan` text NOT NULL,
  `witel` text NOT NULL,
  `lokasi` text NOT NULL,
  `koordinat` text NOT NULL,
  `ip` text NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ip`
--

INSERT INTO `ip` (`id`, `grup`, `sid`, `customer`, `layanan`, `witel`, `lokasi`, `koordinat`, `ip`, `status`) VALUES
(175, 'TPS', '100547-0030951019', 'Cresta Permana', 'ASTINET', 'Bandung', 'Alun Alun Pamarset', '-6.9243855,107.6011874', '10.2.113.22', 0),
(177, 'TPS', '105555-3272343096', 'Rachmawan M. Taufik', 'VPN', 'Sukabumi', 'Gedung Widaria Kencana', '-6.9376241,106.8962549', '10.2.113.44', 0),
(178, 'TPS', '105558-1283527927', 'Ahmad Hanafiah', 'ASTINET', 'Tasikmalaya', 'Hotel Asri', '-7.3493947,108.2156805', '10.2.113.49', 0),
(179, 'TPS', '106061-293106841', 'Devi Arum Sari', 'METRO-E', 'Karawang', 'Alfa Midi', '-6.3543899,107.3685534', '10.2.113.85', 0),
(180, 'TPS', '106836-293386246', 'Ferdy Cahyadi', 'METRO-E', 'Cirebon', 'BPJS Cirebon', '-6.74276,108.5404178', '10.2.113.87', 0),
(181, 'TPS', '33959-287413119', 'Fitri Handayani', 'ASTINET', 'Bandung', 'Telkom Japati', '-6.8982514,107.6170914', '10.2.113.96', 0),
(182, 'TPS', '77631-1888348430', 'Gemma Valdi Ramadhan', 'VPN', 'Bandung Barat', 'Kota Baru Parahyangan', '-6.853641,107.4714732', '10.2.113.108', 0),
(183, 'TPS', '79948-293096393', 'Widya Adi Kristanto', 'VPN', 'Sukabumi', 'SantaSea Waterpark', '-6.9376241,106.8962549', '10.2.113.110', 0),
(184, 'WIFI', '79949-272166815', 'Dadan Ibrahim', 'WIFI', 'Tasikmalaya', 'Taman Dadaha', '-7.3416688,108.2128847', '10.2.113.116', 0),
(185, 'WIFI', '79951-280762328', 'Ikhsan Heradin', 'WIFI', 'Karawang', 'Griya Karawang', '-6.3543899,107.3685534', '10.2.113.166', 0),
(186, 'WIFI', '80676-261604187', 'Taufik Rahman', 'WIFI', 'Cirebon', 'SMA Sekar', '-6.74276,108.5404178', '10.2.113.169', 0),
(187, 'WIFI', '81185-282703660', 'Willy Rohi', 'WIFI', 'Bandung', 'Universitas Padjajaran Dipatiukur', '-6.8935126,107.615096', '10.2.113.176', 0),
(188, 'MSO', '82471-3453259260', 'Irman Nurmulya Naruto', 'TELKOMSEL', 'Bandung Barat', 'Martabak Bangka', '-6.8830476,107.3989346', '10.2.113.181', 0),
(189, 'MSO', '82472-3496488706', 'Mohamad Rifqi', 'TELKOMSEL', 'Sukabumi', 'Ridho Cinema', '-6.9376241,106.8962549', '10.2.113.184', 0),
(190, 'MSO', '84443-3481801842', 'Muhamad Fajar Pamungkas', 'TELKOMSEL', 'Tasikmalaya', 'Gins Coffe', '-7.3416688,108.2128847', '10.2.113.186', 0),
(191, 'MSO', '86005-0031242682', 'Risda Herlianty Haris', 'TELKOMSEL', 'Karawang', 'Baso Ujung', '-6.3543899,107.3685534', '10.2.113.189', 0),
(193, 'SURVEILLANCE', '92631-0031243203', 'Indra Zulfikar', 'INDIHOME', 'Bandung', 'BTC Pasteur', '-6.8934487,107.5826475', '10.2.113.195', 0),
(194, 'SURVEILLANCE', '93869-0031244677', 'Mokhamad Nizar Faisal', 'INDIHOME', 'Bandung Barat', 'UIN Bandung', '-6.9207818,107.7110176', '10.2.113.205', 0),
(195, 'SURVEILLANCE', '96330-0031244680', 'Nugraha Adhi Pratama', 'INDIHOME', 'Sukabumi', 'Rs Bayangkara Setukpa', '-6.9376241,106.8962549', '10.2.113.207', 0),
(196, 'SURVEILLANCE', '33879-0031242838', 'R M Hasbi Ash Shiddieqy', 'INDIHOME', 'Tasikmalaya', 'Mie Baso Ade', '-7.3416688,108.2128847', '10.2.113.221', 0),
(197, 'SOLVER', '33904-0031242026', 'Aldhi Tresna', 'INDIHOME', 'Karawang', 'Warung Naira', '-6.3543899,107.3685534', '10.2.113.223', 0),
(198, 'SOLVER', '88157-0031244028', 'Anjar Almandaili Lubis', 'INDIHOME', 'Cirebon', 'Toko Manten', '-6.74276,108.5404178', '10.2.113.225', 0),
(199, 'SOLVER', '65327-0031244588', 'Aries Bambang L', 'INDIHOME', 'Bandung', 'Universitas Telkom', '-6.967141,107.6261224', '10.2.113.241', 0),
(200, 'SOLVER', '98035-0031240195', 'Chandra Prasetya Gunawan', 'INDIHOME', 'Bandung Barat', 'Kripik Setan Cimahi', '-6.8794056,107.5319138', '10.2.113.242', 0),
(201, 'SOLVER', '105557-0031244552', 'Detty T. Djamiat', 'INDIHOME', 'Sukabumi', 'Aptotek Syamsudin', '-6.9380744,106.9023579', '10.2.113.243', 0),
(202, 'SOLVER', '43087-0031244738', 'Eki Rinaldi', 'INDIHOME', 'Tasikmalaya', 'Toyota Sinarmas', '-7.3414921,108.2143772', '10.2.113.250', 0),
(203, 'SOLVER', '48221-0031244724', 'Erza Yoga Pamungkas', 'INDIHOME', 'Karawang', 'Regent Park', '-6.3543899,107.3685534', '10.2.113.255', 0),
(205, 'MSO', '12345', '12345', '12345', '12345', '12345', '12345', '12345', 0),
(206, 'MSO', '12347', '123457', '123454', '123457', '123457', '123457', '123457', 0);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(255) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `telephone` text,
  `privilege` int(11) NOT NULL,
  `grup` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `firstname`, `lastname`, `telephone`, `privilege`, `grup`) VALUES
(1, 'faizfak', '$2y$10$usSbywHiKKQdTFFQY2fzuO9fxHJog7uNPkk9KQSYx3TaRuy41uj5a', 'Faiz Adil', 'Khatami', '08992233101', 1, '-'),
(7, 'naruto.MSO', '$2y$10$/oKpwA3jxuM07xrqsRaLAOZNCzicCakRLjDWO.kHhr3QQzmNSTddO', 'Naruto', 'Uzumaki', '08123124123', 0, 'MSO'),
(8, 'wew', '$2y$10$CqYPxzLxzaNBZHUSAkMjHOj8D9kku2BBa2VEiodsk7JKp3aKckXX.', 'Adil', 'Dila', '08992233101', 1, '-'),
(9, 'mantul.SOLVER', '$2y$10$CqYPxzLxzaNBZHUSAkMjHOj8D9kku2BBa2VEiodsk7JKp3aKckXX.', 'mantul', 'terbaik', '1234567890', 0, 'SOLVER');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ip`
--
ALTER TABLE `ip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ip`
--
ALTER TABLE `ip`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
