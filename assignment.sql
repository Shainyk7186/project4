-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2017 at 06:20 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assignment`
--

-- --------------------------------------------------------

--
-- Table structure for table `crops`
--

CREATE TABLE `crops` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crops`
--

INSERT INTO `crops` (`id`, `name`) VALUES
(1, 'Beans - brown '),
(2, 'Beans - white '),
(3, 'Gari - white '),
(4, 'Gari - yellow '),
(5, 'Guinea corn  '),
(6, 'Maize - grain (white) '),
(7, 'Maize - grain (yellow) '),
(8, 'Millet  '),
(9, 'Rice - agric/long grain '),
(10, 'Rice - imported '),
(11, 'Rice - local '),
(12, 'Yam - tuber ');

-- --------------------------------------------------------

--
-- Table structure for table `crop_details`
--

CREATE TABLE `crop_details` (
  `id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `crop_id` int(11) NOT NULL,
  `price` float NOT NULL,
  `year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crop_details`
--

INSERT INTO `crop_details` (`id`, `state_id`, `crop_id`, `price`, `year`) VALUES
(1, 1, 1, 116.59, 2007),
(2, 1, 2, 97.89, 2007),
(3, 1, 3, 66.67, 2007),
(4, 1, 4, 66.24, 2007),
(5, 1, 5, 99.5, 2007),
(6, 1, 6, 67.63, 2007),
(7, 1, 7, 79.2, 2007),
(8, 1, 8, 106.97, 2007),
(9, 1, 9, 95.96, 2007),
(10, 1, 10, 113.79, 2007),
(11, 1, 11, 83.27, 2007),
(12, 1, 12, 74.27, 2007),
(13, 2, 1, 91.48, 2007),
(14, 2, 2, 65.97, 2007),
(15, 2, 3, 63.06, 2007),
(16, 2, 4, 73.17, 2007),
(17, 2, 5, 42.3, 2007),
(18, 2, 6, 38.18, 2007),
(19, 2, 7, 40.43, 2007),
(20, 2, 8, 45.52, 2007),
(21, 2, 9, 116.53, 2007),
(22, 2, 10, 134.64, 2007),
(23, 2, 11, 91.81, 2007),
(24, 2, 12, 53.14, 2007),
(25, 3, 1, 61.98, 2007),
(26, 3, 2, 52.85, 2007),
(27, 3, 3, 81.79, 2007),
(28, 3, 4, 90.62, 2007),
(29, 3, 5, 33.63, 2007),
(30, 3, 6, 35.77, 2007),
(31, 3, 7, 35.35, 2007),
(32, 3, 8, 39.02, 2007),
(33, 3, 9, 93.06, 2007),
(34, 3, 10, 120.57, 2007),
(35, 3, 11, 86.48, 2007),
(36, 3, 12, 77.93, 2007),
(37, 4, 1, 109.3, 2007),
(38, 4, 2, 84.7, 2007),
(39, 4, 3, 81.6, 2007),
(40, 4, 4, 61.09, 2007),
(41, 4, 5, 91.73, 2007),
(42, 4, 6, 89.82, 2007),
(43, 4, 7, 90.69, 2007),
(44, 4, 8, 105, 2007),
(45, 4, 9, 122, 2007),
(46, 4, 10, 131.16, 2007),
(47, 4, 11, 87.87, 2007),
(48, 4, 12, 106.72, 2007),
(49, 5, 1, 96.76, 2007),
(50, 5, 2, 88.84, 2007),
(51, 5, 3, 55.97, 2007),
(52, 5, 4, 65.73, 2007),
(53, 5, 5, 89.8, 2007),
(54, 5, 6, 86.39, 2007),
(55, 5, 7, 85.6, 2007),
(56, 5, 8, 87.44, 2007),
(57, 5, 9, 120.05, 2007),
(58, 5, 10, 125.17, 2007),
(59, 5, 11, 90.46, 2007),
(60, 5, 12, 59.29, 2007),
(61, 6, 1, 70.31, 2007),
(62, 6, 2, 57.78, 2007),
(63, 6, 3, 73.88, 2007),
(64, 6, 4, 92.05, 2007),
(65, 6, 5, 35.64, 2007),
(66, 6, 6, 38.16, 2007),
(67, 6, 7, 35.53, 2007),
(68, 6, 8, 33.58, 2007),
(69, 6, 9, 98.05, 2007),
(70, 6, 10, 128.51, 2007),
(71, 6, 11, 81.13, 2007),
(72, 6, 12, 78.85, 2007),
(73, 7, 1, 84.5, 2007),
(74, 7, 2, 66.17, 2007),
(75, 7, 3, 56.72, 2007),
(76, 7, 4, 63.91, 2007),
(77, 7, 5, 38.32, 2007),
(78, 7, 6, 43.8, 2007),
(79, 7, 7, 46.1, 2007),
(80, 7, 8, 47.58, 2007),
(81, 7, 9, 93.17, 2007),
(82, 7, 10, 114.81, 2007),
(83, 7, 11, 78.53, 2007),
(84, 7, 12, 67.71, 2007),
(85, 8, 1, 65.44, 2007),
(86, 8, 2, 75.83, 2007),
(87, 8, 3, 82.2, 2007),
(88, 8, 4, 101.9, 2007),
(89, 8, 5, 36.64, 2007),
(90, 8, 6, 34.41, 2007),
(91, 8, 7, 37.05, 2007),
(92, 8, 8, 35.36, 2007),
(93, 8, 9, 102.63, 2007),
(94, 8, 10, 128.37, 2007),
(95, 8, 11, 84.65, 2007),
(96, 8, 12, 53.61, 2007),
(97, 1, 1, 146.78, 2008),
(98, 1, 2, 118.5, 2008),
(99, 1, 3, 75.88, 2008),
(100, 1, 4, 79.55, 2008),
(101, 1, 5, 100.29, 2008),
(102, 1, 6, 87.17, 2008),
(103, 1, 7, 100.22, 2008),
(104, 1, 8, 312.5, 2008),
(105, 1, 9, 128.56, 2008),
(106, 1, 10, 159.19, 2008),
(107, 1, 11, 115.7, 2008),
(108, 1, 12, 66.02, 2008);

-- --------------------------------------------------------

--
-- Table structure for table `csv_import`
--

CREATE TABLE `csv_import` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `csv_import`
--

INSERT INTO `csv_import` (`id`, `name`, `email`, `address`) VALUES
(1, 'Abia State', 'test@gmail.com', 'testing address'),
(2, 'FCT Abuja', 'tvvs@gmail.com', 'testing address'),
(3, 'Adamawa State', 'test@gmail.com', 'testing address'),
(4, 'Akwa Ibom State', 'test@gmail.com', 'testing address'),
(5, 'Anambra State', 'test@gmail.com', 'testing address'),
(6, 'Bauchi State', 'test@gmail.com', 'testing address'),
(7, 'Benue State', 'test@gmail.com', 'testing address'),
(8, 'Borno State', 'test@gmail.com', 'testing address'),
(9, 'Cross River State', 'test@gmail.com', 'testing address'),
(10, 'Delta State', 'test@gmail.com', 'testing address'),
(11, 'Edo State', 'test@gmail.com', 'testing address'),
(12, 'Enugu', 'test@gmail.com', 'testing address'),
(13, 'Imo', 'test@gmail.com', 'testing address'),
(14, 'Jigawa State', 'test@gmail.com', 'testing address'),
(15, 'Kaduna State', 'test@gmail.com', 'testing address'),
(16, 'Kano State', 'test@gmail.com', 'testing address'),
(17, 'Katsina State', 'test@gmail.com', 'testing address'),
(18, 'Kebbi State', 'test@gmail.com', 'testing address'),
(19, 'Kogi', 'test@gmail.com', 'testing address'),
(20, 'Kwara State', 'test@gmail.com', 'testing address'),
(21, 'Lagos', 'test@gmail.com', 'testing address'),
(22, 'Niger State', 'test@gmail.com', 'testing address'),
(23, 'Ogun State', 'test@gmail.com', 'testing address'),
(24, 'Ondo State', 'test@gmail.com', 'testing address'),
(25, 'Osun State', 'test@gmail.com', 'testing address'),
(26, 'Oyo State', 'test@gmail.com', 'testing address'),
(27, 'Plateau State', 'test@gmail.com', 'testing address'),
(28, 'Rivers State', 'test@gmail.com', 'testing address'),
(29, 'Sokoto State', 'test@gmail.com', 'testing address'),
(30, 'Taraba State', 'test@gmail.com', 'testing address'),
(31, 'Yobe State', 'test@gmail.com', 'testing address'),
(32, 'Bayelsa State', 'test@gmail.com', 'testing address'),
(33, 'Ekiti State', 'test@gmail.com', 'testing address'),
(34, 'Ebonyi State', 'test@gmail.com', 'testing address'),
(35, 'Gombe State', 'test@gmail.com', 'testing address'),
(36, 'Nassarawa', 'test@gmail.com', 'testing address'),
(37, 'Zamfara State', 'test@gmail.com', 'testing address'),
(38, 'Abia State', 'test@gmail.com', 'testing address'),
(39, 'FCT Abuja', 'tvvs@gmail.com', 'testing address'),
(40, 'Adamawa State', 'test@gmail.com', 'testing address'),
(41, 'Akwa Ibom State', 'test@gmail.com', 'testing address'),
(42, 'Anambra State', 'test@gmail.com', 'testing address'),
(43, 'Bauchi State', 'test@gmail.com', 'testing address'),
(44, 'Benue State', 'test@gmail.com', 'testing address'),
(45, 'Borno State', 'test@gmail.com', 'testing address'),
(46, 'Cross River State', 'test@gmail.com', 'testing address'),
(47, 'Delta State', 'test@gmail.com', 'testing address'),
(48, 'Edo State', 'test@gmail.com', 'testing address'),
(49, 'Enugu', 'test@gmail.com', 'testing address'),
(50, 'Imo', 'test@gmail.com', 'testing address'),
(51, 'Jigawa State', 'test@gmail.com', 'testing address'),
(52, 'Kaduna State', 'test@gmail.com', 'testing address'),
(53, 'Kano State', 'test@gmail.com', 'testing address'),
(54, 'Katsina State', 'test@gmail.com', 'testing address'),
(55, 'Kebbi State', 'test@gmail.com', 'testing address'),
(56, 'Kogi', 'test@gmail.com', 'testing address'),
(57, 'Kwara State', 'test@gmail.com', 'testing address'),
(58, 'Lagos', 'test@gmail.com', 'testing address'),
(59, 'Niger State', 'test@gmail.com', 'testing address'),
(60, 'Ogun State', 'test@gmail.com', 'testing address'),
(61, 'Ondo State', 'test@gmail.com', 'testing address'),
(62, 'Osun State', 'test@gmail.com', 'testing address'),
(63, 'Oyo State', 'test@gmail.com', 'testing address'),
(64, 'Plateau State', 'test@gmail.com', 'testing address'),
(65, 'Rivers State', 'test@gmail.com', 'testing address'),
(66, 'Sokoto State', 'test@gmail.com', 'testing address'),
(67, 'Taraba State', 'test@gmail.com', 'testing address'),
(68, 'Yobe State', 'test@gmail.com', 'testing address'),
(69, 'Bayelsa State', 'test@gmail.com', 'testing address'),
(70, 'Ekiti State', 'test@gmail.com', 'testing address'),
(71, 'Ebonyi State', 'test@gmail.com', 'testing address'),
(72, 'Gombe State', 'test@gmail.com', 'testing address'),
(73, 'Nassarawa', 'test@gmail.com', 'testing address'),
(74, 'Zamfara State', 'test@gmail.com', 'testing address');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`) VALUES
(1, 'Abia State'),
(2, 'FCT Abuja'),
(3, 'Adamawa State'),
(4, 'Akwa Ibom State'),
(5, 'Anambra State'),
(6, 'Bauchi State'),
(7, 'Benue State'),
(8, 'Borno State'),
(9, 'Cross River State'),
(10, 'Delta State'),
(11, 'Edo State'),
(12, 'Enugu'),
(13, 'Imo'),
(14, 'Jigawa State'),
(15, 'Kaduna State'),
(16, 'Kano State'),
(17, 'Katsina State'),
(18, 'Kebbi State'),
(19, 'Kogi'),
(20, 'Kwara State'),
(21, 'Lagos'),
(22, 'Niger State'),
(23, 'Ogun State'),
(24, 'Ondo State'),
(25, 'Osun State'),
(26, 'Oyo State'),
(27, 'Plateau State'),
(28, 'Rivers State'),
(29, 'Sokoto State'),
(30, 'Taraba State'),
(31, 'Yobe State'),
(32, 'Bayelsa State'),
(33, 'Ekiti State'),
(34, 'Ebonyi State'),
(35, 'Gombe State'),
(36, 'Nassarawa'),
(37, 'Zamfara State');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `crops`
--
ALTER TABLE `crops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crop_details`
--
ALTER TABLE `crop_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `csv_import`
--
ALTER TABLE `csv_import`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `crops`
--
ALTER TABLE `crops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `crop_details`
--
ALTER TABLE `crop_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;
--
-- AUTO_INCREMENT for table `csv_import`
--
ALTER TABLE `csv_import`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
