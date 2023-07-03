-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2023 at 03:21 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tiket`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(11) NOT NULL,
  `password` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id_customer` int(11) NOT NULL,
  `name` text NOT NULL,
  `address` text NOT NULL,
  `phone` decimal(20,0) NOT NULL,
  `gender` text NOT NULL,
  `username` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id_customer`, `name`, `address`, `phone`, `gender`, `username`) VALUES
(2, 'a', 'sruwen', '9891280139', 'Laki-laki', 'a'),
(3, 'A B C d', 'Salatiga', '85801874452', 'Laki-laki', 'abcd'),
(4, 'QWERTY', 'Susukan', '85801874452', 'Laki-laki', 'qwerty'),
(5, 'Gabrielle', 'bekasi', '812345678', 'Laki-laki', 'Gabrielle');

-- --------------------------------------------------------

--
-- Table structure for table `reserv`
--

CREATE TABLE `reserv` (
  `id_reserv` int(11) NOT NULL,
  `reserv_code` decimal(10,0) NOT NULL,
  `reserv_at` text NOT NULL,
  `reserv_date` date NOT NULL,
  `seat` decimal(10,0) NOT NULL,
  `depart` date NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `id_rute` int(11) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reserv`
--

INSERT INTO `reserv` (`id_reserv`, `reserv_code`, `reserv_at`, `reserv_date`, `seat`, `depart`, `price`, `id_user`, `id_customer`, `id_rute`, `status`) VALUES
(1, '759268413', '2018-02-28', '2018-02-28', '21', '2018-03-31', '3500000', 1, 1, 3, 'Selesai'),
(2, '586927413', '2018-02-17', '2018-02-28', '21', '2018-03-31', '3500000', 3, 2, 3, 'Selesai'),
(5, '251897346', '2023-03-21', '2023-03-21', '21', '2018-04-30', '5000000', 1, 1, 1, 'Proses'),
(6, '698251473', '2023-03-22', '2023-03-22', '21', '2018-03-10', '5000000', 1, 1, 1, 'Proses'),
(7, '498563217', '2023-04-17', '2023-04-17', '21', '2018-03-08', '2000000', 1, 1, 2, 'Proses'),
(8, '417632985', '', '0000-00-00', '21', '2018-04-25', '-4000000', 1, 1, 4, 'Proses'),
(9, '984723516', '2023-04-21', '2023-04-22', '21', '2023-03-10', '5000000', 8, 123, 1, 'Selesai'),
(10, '537216984', '', '0000-00-00', '21', '2023-03-08', '2000000', 8, 5, 2, 'Selesai'),
(11, '427613985', '', '0000-00-00', '21', '2023-03-10', '5000000', 8, 5, 1, 'Selesai');

-- --------------------------------------------------------

--
-- Table structure for table `rute`
--

CREATE TABLE `rute` (
  `id_rute` int(11) NOT NULL,
  `depart` date NOT NULL,
  `rute_from` text NOT NULL,
  `rute_to` text NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `id_trans` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rute`
--

INSERT INTO `rute` (`id_rute`, `depart`, `rute_from`, `rute_to`, `price`, `id_trans`) VALUES
(1, '2023-03-10', 'Indonesia', 'Inggris', '5000000', 1),
(2, '2023-03-08', 'Indonesia', 'Jepang', '2000000', 1),
(3, '2023-03-31', 'Indonesia', 'Kanada', '3500000', 1),
(4, '2023-04-25', 'Indonesia', 'Malaysia', '4000000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `trans`
--

CREATE TABLE `trans` (
  `id_trans` int(11) NOT NULL,
  `code` decimal(10,0) NOT NULL,
  `description` text NOT NULL,
  `seat` text NOT NULL,
  `id_trans_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trans`
--

INSERT INTO `trans` (`id_trans`, `code`, `description`, `seat`, `id_trans_type`) VALUES
(1, '794285316', 'Garuda Indonesia', '21', 1);

-- --------------------------------------------------------

--
-- Table structure for table `type_trans`
--

CREATE TABLE `type_trans` (
  `id_trans_type` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type_trans`
--

INSERT INTO `type_trans` (`id_trans_type`, `description`) VALUES
(1, 'Pesawat');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `fullname` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `fullname`) VALUES
(1, 'bayuper', 'bayuper', 'Bayu Permana Putra'),
(3, 'a', 'a', 'a'),
(4, 'abcd', 'abcd', 'A B C d'),
(5, 'qwerty', 'qwerty', 'QWERTY'),
(6, 'aw', '123', 'aw'),
(8, 'Gabrielle', '123', 'Gabrielle');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`),
  ADD KEY `id_customer` (`id_customer`);

--
-- Indexes for table `reserv`
--
ALTER TABLE `reserv`
  ADD PRIMARY KEY (`id_reserv`),
  ADD KEY `id_reserv` (`id_reserv`),
  ADD KEY `id_user` (`id_user`,`id_customer`,`id_rute`),
  ADD KEY `id_customer` (`id_customer`),
  ADD KEY `id_rute` (`id_rute`);

--
-- Indexes for table `rute`
--
ALTER TABLE `rute`
  ADD PRIMARY KEY (`id_rute`),
  ADD KEY `id_rute` (`id_rute`),
  ADD KEY `id_trans` (`id_trans`);

--
-- Indexes for table `trans`
--
ALTER TABLE `trans`
  ADD PRIMARY KEY (`id_trans`),
  ADD KEY `id_trans` (`id_trans`),
  ADD KEY `id_trans_type` (`id_trans_type`);

--
-- Indexes for table `type_trans`
--
ALTER TABLE `type_trans`
  ADD PRIMARY KEY (`id_trans_type`),
  ADD KEY `id_trans_type` (`id_trans_type`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_user` (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id_customer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reserv`
--
ALTER TABLE `reserv`
  MODIFY `id_reserv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `rute`
--
ALTER TABLE `rute`
  MODIFY `id_rute` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `trans`
--
ALTER TABLE `trans`
  MODIFY `id_trans` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `type_trans`
--
ALTER TABLE `type_trans`
  MODIFY `id_trans_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reserv`
--
ALTER TABLE `reserv`
  ADD CONSTRAINT `reserv_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `reserv_ibfk_3` FOREIGN KEY (`id_rute`) REFERENCES `rute` (`id_rute`);

--
-- Constraints for table `rute`
--
ALTER TABLE `rute`
  ADD CONSTRAINT `rute_ibfk_1` FOREIGN KEY (`id_trans`) REFERENCES `trans` (`id_trans`);

--
-- Constraints for table `trans`
--
ALTER TABLE `trans`
  ADD CONSTRAINT `trans_ibfk_1` FOREIGN KEY (`id_trans_type`) REFERENCES `type_trans` (`id_trans_type`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
