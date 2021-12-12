-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2021 at 08:35 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mueems_hotel_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `hotel_details`
--

CREATE TABLE `hotel_details` (
  `Name` varchar(250) NOT NULL,
  `Sleeps` int(10) DEFAULT NULL,
  `Bedroom` int(10) DEFAULT NULL,
  `Bathroom` int(10) DEFAULT NULL,
  `Image1` varchar(500) DEFAULT NULL,
  `Image2` varchar(500) DEFAULT NULL,
  `Image3` varchar(500) DEFAULT NULL,
  `Price` int(10) DEFAULT NULL,
  `Location` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel_details`
--

INSERT INTO `hotel_details` (`Name`, `Sleeps`, `Bedroom`, `Bathroom`, `Image1`, `Image2`, `Image3`, `Price`, `Location`) VALUES
('Cabin on Hwy 129 overlooking Cheoah River - 8 miles to Tail of the Dragon', 3, 3, 2, '[\'https://media.vrbo.com/lodging/28000000/27140000/27138800/27138715/6c5a7857.c6.jpg\']', '[\'https://media.vrbo.com/lodging/28000000/27140000/27138800/27138715/c0cd857c.c6.jpg\']', '[\'https://media.vrbo.com/lodging/28000000/27140000/27138800/27138715/7d97a7a5.c6.jpg\']', 150, 'North Carolina'),
('Couples Retreat with Incredible Mountain Views!', 1, 1, 1, '[\'https://media.vrbo.com/lodging/34000000/33560000/33553100/33553019/74932eec.c6.jpg\']', '[\'https://media.vrbo.com/lodging/34000000/33560000/33553100/33553019/95ee6167.c6.jpg\']', '[\'https://media.vrbo.com/lodging/34000000/33560000/33553100/33553019/8467438b.c6.jpg\']', 95, 'North Carolina'),
('Log cabin , riverfront,Hot Tub, mins to Chimney Rck /Lake Lure , Fishing', 2, 1, 1, '[\'https://media.vrbo.com/lodging/34000000/33560000/33558900/33558825/83284fad.c6.jpg\']', '[\'https://media.vrbo.com/lodging/34000000/33560000/33558900/33558825/253962a5.c6.jpg\']', '[\'https://media.vrbo.com/lodging/34000000/33560000/33558900/33558825/521f0524.c6.jpg\']', 100, 'North Carolina'),
('Secluded Beaufort Waterfront Pet Friendly!', 4, 3, 2, '[\'https://media.vrbo.com/lodging/34000000/33650000/33643400/33643392/3de8abef.c6.jpg\']', '[\'https://media.vrbo.com/lodging/34000000/33650000/33643400/33643392/c3e38645.c6.jpg\']', '[\'https://media.vrbo.com/lodging/34000000/33650000/33643400/33643392/dbf4effb.c6.jpg\']', 175, 'North Carolina'),
('Stunning Private Log Cabin! ~ Hot Tub, Views, Internet, Fireplace, Air Condition', 3, 3, 3, '[\'https://media.vrbo.com/lodging/34000000/33510000/33503400/33503378/42059d35.c6.jpg\']', '[\'https://media.vrbo.com/lodging/34000000/33510000/33503400/33503378/18ea7f32.c6.jpg\']', '[\'https://media.vrbo.com/lodging/34000000/33510000/33503400/33503378/0a37e9ba.c6.jpg\']', 120, 'North Carolina'),
('Your Mayberry Get-a-Way Cabin', 3, 1, 1, '[\'https://media.vrbo.com/lodging/34000000/33500000/33494300/33494208/81907435.c6.jpg\']', '[\'https://media.vrbo.com/lodging/34000000/33500000/33494300/33494208/351ef0a3.c6.jpg\']', '[\'https://media.vrbo.com/lodging/34000000/33500000/33494300/33494208/237a4593.c6.jpg\']', 150, 'North Carolina');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hotel_details`
--
ALTER TABLE `hotel_details`
  ADD PRIMARY KEY (`Name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
