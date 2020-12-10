-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2018 at 06:45 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fastfood`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Name` varchar(20) NOT NULL,
  `ID` varchar(10) NOT NULL,
  `Phone_Number` varchar(11) NOT NULL,
  `Gender` char(1) NOT NULL,
  `CNIC` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Name`, `ID`, `Phone_Number`, `Gender`, `CNIC`, `Password`, `Address`) VALUES
('Taimoor', '123', '02030301', 'M', '191919191901', '987', 'Peshawar');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CustomerId` varchar(12) NOT NULL,
  `CustomerName` varchar(48) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `gender` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CustomerId`, `CustomerName`, `Address`, `gender`) VALUES
('0306', 'Hamza`', 'Lhr', 'Male'),
('03475878167', 'Murshad', 'street one', '');

-- --------------------------------------------------------

--
-- Table structure for table `deal`
--

CREATE TABLE `deal` (
  `Deal_Id` int(12) NOT NULL,
  `Item_Name` varchar(15) NOT NULL,
  `price` int(11) NOT NULL,
  `unit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deal`
--

INSERT INTO `deal` (`Deal_Id`, `Item_Name`, `price`, `unit`) VALUES
(1, 'Shwarma', 2, 170);

-- --------------------------------------------------------

--
-- Table structure for table `deals`
--

CREATE TABLE `deals` (
  `Deal_Id` int(12) NOT NULL,
  `Deal_Name` varchar(30) NOT NULL,
  `Deal_Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deals`
--

INSERT INTO `deals` (`Deal_Id`, `Deal_Name`, `Deal_Price`) VALUES
(1, '3 in 1', 170);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `Item_Name` varchar(20) NOT NULL,
  `Per_Unit_Price` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`Item_Name`, `Per_Unit_Price`) VALUES
('Medium Pizza', 900),
('Zinger Burger', 200);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `User_name` varchar(30) NOT NULL,
  `User_Id` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `User_type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`User_name`, `User_Id`, `Password`, `User_type`) VALUES
('', '', '', 'Operator'),
('Noormah', '123', 'noormah7', 'Operator'),
('zillay', '124', 'zillay7', 'Operator'),
('Taimoor Khan', '786', 'taimoor786', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `operator`
--

CREATE TABLE `operator` (
  `ID` varchar(10) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Phone_Number` varchar(11) NOT NULL,
  `Gender` char(1) NOT NULL,
  `CNIC` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `operator`
--

INSERT INTO `operator` (`ID`, `Name`, `Phone_Number`, `Gender`, `CNIC`, `Password`, `Address`) VALUES
('123', 'Noormah', '090078601', 'F', '6542735475236', '1234', 'Rawalpindi'),
('124', 'zillay', '090078601', 'F', '546464653653', 'zillay7', 'Islamabad');

-- --------------------------------------------------------

--
-- Table structure for table `saleperitem`
--

CREATE TABLE `saleperitem` (
  `OrderId` int(12) NOT NULL,
  `ItemName` varchar(22) NOT NULL,
  `Unit` int(11) NOT NULL,
  `Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saleperitem`
--

INSERT INTO `saleperitem` (`OrderId`, `ItemName`, `Unit`, `Price`) VALUES
(1, 'Large Piza', 12, 89),
(1, 'Medium Pizza', 12, 10800),
(1, 'Medium Pizza', 12, 10800),
(1, 'Medium Pizza', 1, 900),
(1, 'Large Pizza', 12, 15600),
(1, 'Large Pizza', 34, 44200),
(1, 'Large Pizza', 123, 159900),
(1, 'Large Pizza', 1, 1300),
(1, 'Medium Pizza', 121, 108900),
(1, 'Large Pizza', 12, 15600),
(1, 'Large Pizza', 1, 1300),
(1, 'Medium Pizza', 5, 4500),
(1, 'Medium Pizza', 5, 4500),
(1, 'Zinger', 5, 1000),
(1, 'Small Pizza', 1, 700),
(1, 'Zinger', 1, 200),
(1, 'Zinger', 3, 600),
(1, 'Zinger', 2, 400),
(1, 'Small Pizza', 12, 8400),
(2, 'Small Pizza', 2, 1400),
(3, 'Small Pizza', 2, 1400),
(4, 'LArge Pizza', 2, 200),
(5, 'LArge Pizza', 1, 100),
(5, 'Shwarma', 2, 200),
(6, 'Shwarma', 2, 200),
(6, 'Large Pizza', 1, 1000),
(6, 'Shawarma', 1, 80),
(7, 'Shwarma', 170, 2),
(8, 'Shwarma', 2, 170);

-- --------------------------------------------------------

--
-- Table structure for table `sales_per_item`
--

CREATE TABLE `sales_per_item` (
  `OrderId` int(12) NOT NULL,
  `CustomerId` varchar(12) NOT NULL,
  `TotalPrice` int(30) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_per_item`
--

INSERT INTO `sales_per_item` (`OrderId`, `CustomerId`, `TotalPrice`, `Date`) VALUES
(1, '03475878167', 1234, '2018-12-04'),
(2, '03475878167', 1400, '2018-12-17'),
(3, '03475878167', 4900, '2018-12-17'),
(4, '03475878167', 500, '2018-12-17'),
(5, '03475878167', 400, '2018-12-20'),
(6, '03475878167', 200, '2018-12-20'),
(7, '03475878167', 19, '2018-12-21'),
(8, '03475878167', 170, '2018-12-22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustomerId`);

--
-- Indexes for table `deal`
--
ALTER TABLE `deal`
  ADD KEY `fk_12` (`Deal_Id`);

--
-- Indexes for table `deals`
--
ALTER TABLE `deals`
  ADD PRIMARY KEY (`Deal_Id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`Item_Name`);

--
-- Indexes for table `operator`
--
ALTER TABLE `operator`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `saleperitem`
--
ALTER TABLE `saleperitem`
  ADD KEY `fk_11` (`OrderId`);

--
-- Indexes for table `sales_per_item`
--
ALTER TABLE `sales_per_item`
  ADD PRIMARY KEY (`OrderId`),
  ADD KEY `fk_1` (`CustomerId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sales_per_item`
--
ALTER TABLE `sales_per_item`
  MODIFY `OrderId` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `deal`
--
ALTER TABLE `deal`
  ADD CONSTRAINT `fk_12` FOREIGN KEY (`Deal_Id`) REFERENCES `deals` (`Deal_Id`);

--
-- Constraints for table `saleperitem`
--
ALTER TABLE `saleperitem`
  ADD CONSTRAINT `fk_11` FOREIGN KEY (`OrderId`) REFERENCES `sales_per_item` (`OrderId`);

--
-- Constraints for table `sales_per_item`
--
ALTER TABLE `sales_per_item`
  ADD CONSTRAINT `fk_1` FOREIGN KEY (`CustomerId`) REFERENCES `customer` (`CustomerId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
