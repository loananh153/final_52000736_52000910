-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2022 at 03:59 PM
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
-- Database: `lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `BookId` int(10) NOT NULL,
  `Author` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`BookId`, `Author`) VALUES
(3, 'Jay Prakash'),
(4, 'Jay Prakash'),
(5, 'x'),
(6, 'a1'),
(7, 'Bogart'),
(7, 'Kenneth'),
(8, 'Auer'),
(8, 'Davil J.'),
(9, 'Rob'),
(9, 'Williams'),
(10, 'Deiteil'),
(11, 'Sharma'),
(12, 'Barney Stinson'),
(13, 'Puri'),
(14, 'Manna'),
(15, 'Jindal U.C'),
(16, 'Prasad'),
(17, 'Aravind Alex'),
(17, 'Haldar Sibsankar'),
(18, 'Sandhu'),
(18, 'Singh'),
(19, 'John'),
(20, 'Ben'),
(20, 'Chatic');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `BookId` int(10) NOT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `Publisher` varchar(50) DEFAULT NULL,
  `Year` varchar(50) DEFAULT NULL,
  `Availability` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`BookId`, `Title`, `Publisher`, `Year`, `Availability`) VALUES
(1, 'OS', 'PEARSON', '2006', 0),
(2, 'DBMS', 'TARGET67', '2010', 0),
(3, 'TOC', 'NITC', '2018', 4),
(4, 'C++', 'NITC', '2018', 1),
(5, 'DAA', 'y', '2014', 0),
(6, 'DSA', 'X', '2010', 9),
(7, 'Discrete Structures', 'Pearson', '2010', 10),
(8, 'Database Processing', 'Prentice Hall', '2013', 12),
(9, 'Computer System Architecture', 'Prentice Hall', '2015', 3),
(10, 'C: How to program', 'Prentice Hall', '2009', 3),
(11, 'Atomic and Nuclear Systems', 'Pearson India ', '2017', 13),
(12, 'The PlayBook', 'Stinson', '2010', 12),
(13, 'General Theory of Relativity', 'Pearson India ', '2012', 5),
(14, 'Heat and Thermodynamics', 'Pearson', '2013', 7),
(15, 'Machine Design', 'Pearson India ', '2012', 4),
(16, 'Nuclear Physics', 'Pearson India ', '1998', 7),
(17, 'Operating System', 'Pearson India ', '1990', 7),
(18, 'Theory of Machines', 'Pearson', '1992', 9),
(19, 'JAVA', 'code', '2001', 30),
(20, 'Networks ', 'net', '2012', 15);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `M_Id` int(10) NOT NULL,
  `RollNo` varchar(50) DEFAULT NULL,
  `Msg` varchar(255) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`M_Id`, `RollNo`, `Msg`, `Date`, `Time`) VALUES
(1, '11900032', 'Your request for issue of BookId: 18  has been accepted', '2022-11-15', '00:08:50'),
(2, '11900032', 'Your request for issue of BookId: 15  has been accepted', '2022-11-15', '00:08:52'),
(3, '11900032', 'Your request for issue of BookId: 9  has been accepted', '2022-11-15', '00:08:54'),
(4, '11900032', 'Your request for issue of BookId: 4  has been accepted', '2022-11-15', '00:08:56'),
(5, '22100180', 'Your request for issue of BookId: 8 has been accepted', '2022-11-15', '00:08:57'),
(6, '52000493', 'Your request for issue of BookId: 18  has been accepted', '2022-11-15', '00:09:01'),
(7, '52000493', 'Your request for issue of BookId: 12  has been rejected', '2022-11-15', '00:09:09'),
(8, '22100180', 'Your request for issue of BookId: 17 has been accepted', '2022-11-15', '00:09:11'),
(9, '52000911', 'Your request for issue of BookId: 6  has been accepted', '2022-11-15', '00:09:15'),
(10, '22100180', 'Your request for issue of BookId: 15 has been accepted', '2022-11-15', '00:09:17'),
(11, '52000911', 'Your request for issue of BookId: 9  has been accepted', '2022-11-15', '00:09:21'),
(12, '62000865', 'Your request for issue of BookId: 10  has been accepted', '2022-11-15', '00:09:25'),
(13, '62000865', 'Your request for issue of BookId: 18  has been accepted', '2022-11-15', '00:09:27'),
(14, '62000865', 'Your request for issue of BookId: 14  has been rejected', '2022-11-15', '00:09:32'),
(15, '11900032', 'Your request for issue of BookId: 7  has been accepted', '2022-11-21', '21:51:01'),
(16, '52000493', 'Your request for issue of BookId: 14  has been accepted', '2022-11-21', '21:51:02'),
(17, '11900032', 'Your request for issue of BookId: 14  has been accepted', '2022-11-24', '16:22:21');

-- --------------------------------------------------------

--
-- Table structure for table `record`
--

CREATE TABLE `record` (
  `RollNo` varchar(50) NOT NULL,
  `BookId` int(10) NOT NULL,
  `Date_of_Issue` date DEFAULT NULL,
  `Due_Date` date DEFAULT NULL,
  `Date_of_Return` date DEFAULT NULL,
  `Dues` int(10) DEFAULT NULL,
  `Renewals_left` int(10) DEFAULT NULL,
  `Time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `record`
--

INSERT INTO `record` (`RollNo`, `BookId`, `Date_of_Issue`, `Due_Date`, `Date_of_Return`, `Dues`, `Renewals_left`, `Time`) VALUES
('11900032', 4, '2022-11-15', '2023-01-14', '2022-11-21', -54, 1, '00:01:30'),
('11900032', 6, NULL, NULL, NULL, NULL, NULL, '21:51:23'),
('11900032', 7, '2022-11-21', '2023-01-20', '2022-11-24', -57, 1, '00:01:22'),
('11900032', 8, NULL, NULL, NULL, NULL, NULL, '21:51:21'),
('11900032', 9, '2022-11-15', '2023-01-14', '2022-11-21', -54, 1, '00:01:33'),
('11900032', 14, '2022-11-24', '2023-01-23', NULL, NULL, 1, '00:01:24'),
('11900032', 15, '2022-11-15', '2023-01-14', '2022-11-21', -54, 1, '00:01:28'),
('11900032', 18, '2022-11-15', '2023-01-14', NULL, NULL, 1, '00:01:20'),
('11900032', 19, NULL, NULL, NULL, NULL, NULL, '00:29:01'),
('11900032', 20, NULL, NULL, NULL, NULL, NULL, '21:49:44'),
('22100180', 8, '2022-11-15', '2023-05-14', '2022-11-21', -174, 1, '00:03:23'),
('22100180', 13, NULL, NULL, NULL, NULL, NULL, '00:03:31'),
('22100180', 14, NULL, NULL, NULL, NULL, NULL, '00:03:25'),
('22100180', 15, '2022-11-15', '2023-05-14', NULL, NULL, 1, '00:03:26'),
('22100180', 17, '2022-11-15', '2023-05-14', '2022-11-21', -174, 1, '00:03:28'),
('52000493', 14, '2022-11-21', '2023-01-20', NULL, NULL, 1, '00:01:50'),
('52000493', 16, NULL, NULL, NULL, NULL, NULL, '00:01:54'),
('52000493', 18, '2022-11-15', '2023-01-14', NULL, NULL, 1, '00:01:47'),
('52000911', 6, '2022-11-15', '2023-01-14', NULL, NULL, 1, '00:04:42'),
('52000911', 7, NULL, NULL, NULL, NULL, NULL, '00:04:39'),
('52000911', 8, NULL, NULL, NULL, NULL, NULL, '00:04:40'),
('52000911', 9, '2022-11-15', '2023-01-14', NULL, NULL, 1, '00:04:37'),
('52000911', 17, NULL, NULL, NULL, NULL, NULL, '00:04:33'),
('52000911', 18, NULL, NULL, NULL, NULL, NULL, '00:04:44'),
('62000865', 7, NULL, NULL, NULL, NULL, NULL, '00:05:40'),
('62000865', 10, '2022-11-15', '2023-01-14', '2022-11-21', -54, 1, '00:05:34'),
('62000865', 15, NULL, NULL, NULL, NULL, NULL, '00:05:37'),
('62000865', 18, '2022-11-15', '2023-01-14', NULL, NULL, 1, '00:05:28');

-- --------------------------------------------------------

--
-- Table structure for table `return`
--

CREATE TABLE `return` (
  `RollNo` varchar(50) NOT NULL,
  `BookId` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `return`
--

INSERT INTO `return` (`RollNo`, `BookId`) VALUES
('11900032', 14),
('52000911', 9);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `RollNo` varchar(50) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `Category` varchar(50) DEFAULT NULL,
  `EmailId` varchar(50) DEFAULT NULL,
  `MobNo` bigint(11) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`RollNo`, `Name`, `Type`, `Category`, `EmailId`, `MobNo`, `Password`) VALUES
('11900032', 'Eve', 'Student', 'ST', 'eve@gmail.com', 329945433, 'eve123'),
('22100180', 'Jippop', 'Student', 'ST', 'jippop@gmail.com', 78832432, 'jip123'),
('51900230', 'John', 'Student', 'GEN', 'john@gmail.com', 32882355, 'john123'),
('52000023', 'Gwen', 'Student', 'GEN', 'gwen@gmail.com', 904344832, 'gwen123'),
('52000493', 'Bob', 'Student', 'GEN', 'bob@gmail.com', 23952543, 'bob123'),
('52000911', 'ZeaBerm', 'Student', 'GEN', 'zeaberm@gamil', 9832754, 'zea123'),
('62000865', 'Harry', 'Student', 'GEN', 'harry@yahoo.com', 8932434, 'harry123'),
('ADMIN', 'admin', 'Admin', NULL, 'admin@gmail.com', 123456789, 'admin'),
('loananh', 'loananh', 'Student', 'TC', 'loana@gmail.com', 2377322, 'la123'),
('yaya', 'Zya', 'Student', 'ST', 'zya928@gmail.com', 90434235, 'zya123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`BookId`,`Author`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`BookId`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`M_Id`),
  ADD KEY `RollNo` (`RollNo`);

--
-- Indexes for table `record`
--
ALTER TABLE `record`
  ADD PRIMARY KEY (`RollNo`,`BookId`),
  ADD KEY `BookId` (`BookId`);

--
-- Indexes for table `return`
--
ALTER TABLE `return`
  ADD PRIMARY KEY (`RollNo`,`BookId`),
  ADD KEY `BookId` (`BookId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`RollNo`),
  ADD UNIQUE KEY `EmailId` (`EmailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `BookId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `M_Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `author`
--
ALTER TABLE `author`
  ADD CONSTRAINT `author_ibfk_1` FOREIGN KEY (`BookId`) REFERENCES `book` (`BookId`);

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `message_ibfk_1` FOREIGN KEY (`RollNo`) REFERENCES `user` (`RollNo`);

--
-- Constraints for table `record`
--
ALTER TABLE `record`
  ADD CONSTRAINT `record_ibfk_1` FOREIGN KEY (`RollNo`) REFERENCES `user` (`RollNo`),
  ADD CONSTRAINT `record_ibfk_2` FOREIGN KEY (`BookId`) REFERENCES `book` (`BookId`);

--
-- Constraints for table `return`
--
ALTER TABLE `return`
  ADD CONSTRAINT `return_ibfk_1` FOREIGN KEY (`RollNo`) REFERENCES `user` (`RollNo`),
  ADD CONSTRAINT `return_ibfk_2` FOREIGN KEY (`BookId`) REFERENCES `book` (`BookId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
