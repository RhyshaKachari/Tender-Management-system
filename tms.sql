-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2022 at 03:31 PM
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
-- Database: `tms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Aid` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Aid`, `user`, `pass`) VALUES
(1, 'admin', 'admin@123');

-- --------------------------------------------------------

--
-- Table structure for table `bids`
--

CREATE TABLE `bids` (
  `TenderID` int(11) NOT NULL,
  `OrgID` varchar(20) NOT NULL,
  `Charge` float NOT NULL,
  `Months` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bids`
--

INSERT INTO `bids` (`TenderID`, `OrgID`, `Charge`, `Months`) VALUES
(5, 'test1', 24000, 34),
(6, 'test1', 60000, 24),
(7, 'IN1234067890', 40000, 12),
(8, 'test1', 30000, 30),
(9, 'test1', 30000, 30),
(10, 'test1', 34000, 20),
(11, 'test1', 34000, 24000),
(17, 'IN1234567809', 24999, 12),
(17, 'test1', 24000, 23),
(18, 'IN1234567099', 30000, 10),
(18, 'IN1234567899', 20000, 14),
(0, 'IN12341232123', 12121, 4);

-- --------------------------------------------------------

--
-- Table structure for table `organization`
--

CREATE TABLE `organization` (
  `OrgID` varchar(20) NOT NULL,
  `OrgName` varchar(250) NOT NULL,
  `OrgEmail` tinytext NOT NULL,
  `OrgPass` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `organization`
--

INSERT INTO `organization` (`OrgID`, `OrgName`, `OrgEmail`, `OrgPass`) VALUES
('IN1234067890', 'Numpy', 'helloroxor@gmail.com', '$2y$10$emRs0ZWL.ANWJ91zrcVb1ueL34V7B5oShbTSjbuAg2ULK/2h/xHVq'),
('IN1234567099', 'Roxor4', 'helloroxor@gmail.com', '$2y$10$c2EJVrkt6Y75EatYikhIceAqoT8HWiVXIHXXcxWMSGduo6vhnLuKW'),
('IN1234567809', 'test9', 'test9@gmail.com', '$2y$10$fXBqDJ39DkJLKke6c7brju/iiJtrWkelIVcw8fZvPFzbnkFpygDgO'),
('IN1234567890', 'test6', 'test6@gmail.com', '$2y$10$ipKyMJrNaTBrYmkRjUJpdujlsDznGpOaWU.JkFQEDAky93BgAsKt.'),
('IN1234567897', 'test8', 'test8@gmail.com', '$2y$10$X6uV031z.h0E8XzzoFk6b.iwhZR9ErfYtHFAmbjgKst.BxfapTglO'),
('IN1234567899', 'Roxor', 'test7@gmail.com', '$2y$10$Oaw5dZuV0FP5.eCIPFW4k.dT6UUHbKvkLuGKNRYHxqwZsiijQEXU6'),
('test1', 'test1', 'test1@gmail.com', '$2y$10$NzDiRUUSJWNcx4vD5R3X4eMhwa4pUzw6b1giXys6z9huU5TxxeyyS'),
('IN12341232123', 'kool', 'wagohi9384@lankew.com', '$2y$10$ojY3lj9X2LbdO6mAXY.98.92.FOBh0nLuKgGfq6BM0tqqyL4WcYnO'),
('IN1234567903', 'pranjaladwani', 'lvhi@gmail.com', '$2y$10$9Mj07MpKyytmUUtQzUSNuOkpByF08i04iA3Ek7DGVoSYUNGgIRoJC'),
('IN1234567891', 'rhysa', 'tenire7707@5k2u.com', '$2y$10$JcP3PBPrt9NSjrMq6SeIzeol.aPhRTYIOVNmsQOlyc/WQHXbo/yIq'),
('IN12341232144', 'abhineshsir', 'tenire7707@5k22u.com', '$2y$10$S6TpyzdUt17kh0E44Ns84.OM.p69l7xZyEuBHHPf.TQ341t387Bxq');

-- --------------------------------------------------------

--
-- Table structure for table `tender`
--

CREATE TABLE `tender` (
  `TenderID` int(11) NOT NULL,
  `TenderNo` varchar(100) NOT NULL,
  `OrgID` varchar(20) DEFAULT NULL,
  `Department` varchar(50) NOT NULL,
  `Description` varchar(500) NOT NULL,
  `Price` float NOT NULL,
  `DueDate` datetime NOT NULL,
  `Duration` int(11) NOT NULL,
  `filename` varchar(100) NOT NULL,
  `filetype` varchar(30) NOT NULL,
  `filesize` int(11) NOT NULL,
  `filecontent` mediumblob NOT NULL,
  `CurrentTime` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tender`
--

INSERT INTO `tender` (`TenderID`, `TenderNo`, `OrgID`, `Department`, `Description`, `Price`, `DueDate`, `Duration`, `filename`, `filetype`, `filesize`, `filecontent`, `CurrentTime`) VALUES
(0, '12', 'IN12341232123', 'kool', 'qwertyuytrewq', 12345, '2022-07-30 00:00:00', 134, 'devops-course-syllabus.pdf', 'uploads/devops-course-syllabus', 0, '', '2022-07-06 18:57:27'),
(0, '58393', 'IN12341232123', 'hfdjdjoso', 'fidjs0ss ', 45556, '2003-05-12 00:00:00', 5, 'devops-course-syllabus.pdf', 'uploads/devops-course-syllabus', 0, '', '2022-07-06 19:18:04'),
(0, '123', 'IN12341232123', 'csai', 'csai something idk ', 12000, '2022-07-30 00:00:00', 4, 'devops-course-syllabus.pdf', 'uploads/devops-course-syllabus', 0, '', '2022-07-29 10:06:33'),
(0, '123', 'IN12341232123', 'gsai', 'ertyuio', 1222, '2022-09-23 00:00:00', 5, 'devops-course-syllabus.pdf', 'uploads/devops-course-syllabus', 0, '', '2022-07-29 11:33:16');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
