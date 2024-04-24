-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 31, 2022 at 08:45 AM
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
-- Database: `medical shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `Cat_ID` int(11) NOT NULL,
  `Cat_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`Cat_ID`, `Cat_Name`) VALUES
(1, 'TABLET'),
(2, 'CAPSULE'),
(3, 'SYRUP'),
(4, 'OILMENT'),
(5, 'OTHER');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `Compony_ID` int(11) NOT NULL,
  `Company_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`Compony_ID`, `Company_Name`) VALUES
(1, 'Abbott'),
(2, 'Centaur'),
(4, 'Himalaya'),
(5, 'Cipla'),
(6, 'Mankind'),
(7, 'Dr reddy');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `CustID` int(11) NOT NULL,
  `CustName` varchar(100) NOT NULL,
  `MobileNo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`CustID`, `CustName`, `MobileNo`) VALUES
(1, 'abhi', '7378329329'),
(2, 'affaf', '8754213690'),
(3, 'Bilal', '8754123690'),
(4, 'navin', '7845963210'),
(5, 'aayesha', '0987654321');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` int(50) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `pass`) VALUES
(1, 'abhi');

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `Medicine_ID` int(11) NOT NULL,
  `medicine_Name` varchar(100) NOT NULL,
  `Cat_ID` int(11) NOT NULL,
  `Company_ID` int(11) NOT NULL,
  `PricePerUnit` float NOT NULL,
  `Quantity` float NOT NULL,
  `MFG_Date` date NOT NULL,
  `EXP_Date` date NOT NULL,
  `Batch_No` varchar(100) NOT NULL,
  `MoleCule_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`Medicine_ID`, `medicine_Name`, `Cat_ID`, `Company_ID`, `PricePerUnit`, `Quantity`, `MFG_Date`, `EXP_Date`, `Batch_No`, `MoleCule_ID`) VALUES
(1, 'Rantac', 1, 2, 5, 10, '2021-03-12', '2023-03-12', '123', 1),
(2, 'Cremaffin', 3, 2, 10, 1, '2022-12-12', '2024-12-12', '34056907', 2),
(3, 'Centamol', 3, 2, 100, 1, '2022-11-12', '2024-12-11', 'AL047', 3),
(4, 'dolo', 1, 2, 10, 1, '2022-12-11', '2024-12-11', '123', 1),
(5, 'Metstmlo', 1, 2, 10, 1, '2022-12-11', '2024-12-11', '12a', 3);

-- --------------------------------------------------------

--
-- Table structure for table `molecule`
--

CREATE TABLE `molecule` (
  `Molecule_ID` int(11) NOT NULL,
  `Molecule_Name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `molecule`
--

INSERT INTO `molecule` (`Molecule_ID`, `Molecule_Name`) VALUES
(1, 'Paracetamol'),
(2, 'Liquid Paraffin'),
(3, 'Paracetamol Paediatric Oral Suspension IP'),
(4, 'Ondansetron Orally Disintegrating Tablets IP'),
(5, 'B-com Complex Forth With Vitamin C And Zinc'),
(6, 'Cefpodoxime Proxetil Tablets IP'),
(7, 'Amlodipine Tablets IP'),
(8, 'Cefixime Tablets IP'),
(9, 'Calcium Tablets');

-- --------------------------------------------------------

--
-- Table structure for table `sellchild`
--

CREATE TABLE `sellchild` (
  `ID` int(11) NOT NULL,
  `SellID` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `Qty` int(11) NOT NULL,
  `Price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sellchild`
--

INSERT INTO `sellchild` (`ID`, `SellID`, `ProductID`, `Qty`, `Price`) VALUES
(1, 5, 8, 2, 200),
(2, 6, 8, 10, 100),
(3, 6, 8, 1, 10),
(4, 7, 8, 10, 100),
(5, 8, 8, 10, 100),
(6, 2, 10, 1, 1000),
(7, 2, 10, 1, 100),
(8, 2, 8, 1, 100),
(9, 2, 8, 10, 100),
(10, 2, 10, 1, 100),
(11, 2, 10, 1, 100),
(12, 2, 8, 1, 100),
(13, 2, 8, 5, 10),
(14, 2, 10, 1, 100),
(15, 32, 10, 1, 100),
(16, 35, 1, 10, 5),
(17, 35, 1, 20, 5),
(18, 36, 1, 10, 50),
(19, 66, 1, 90, 90),
(20, 67, 1, 10, 10),
(21, 67, 4, 10, 100),
(22, 68, 1, 10, 10),
(23, 70, 1, 10, 10),
(24, 71, 1, 5, 5),
(25, 71, 4, 5, 10),
(26, 72, 1, 5, 5),
(27, 72, 4, 5, 10),
(28, 73, 1, 5, 5),
(29, 73, 4, 5, 10),
(30, 74, 1, 5, 5),
(31, 74, 4, 5, 10),
(32, 75, 1, 5, 5),
(33, 75, 4, 5, 10),
(34, 76, 5, 5, 5),
(35, 76, 4, 5, 10),
(36, 77, 5, 5, 5),
(37, 78, 1, 5, 5),
(38, 79, 1, 5, 5),
(39, 80, 1, 5, 5),
(40, 81, 1, 5, 5),
(41, 81, 4, 5, 10),
(42, 82, 1, 5, 5),
(43, 82, 4, 5, 10),
(44, 83, 1, 5, 5),
(45, 83, 4, 5, 5),
(46, 84, 1, 5, 5),
(47, 84, 4, 5, 10),
(48, 85, 1, 5, 5),
(49, 85, 4, 5, 10),
(50, 86, 1, 10, 5),
(51, 87, 1, 10, 5),
(52, 88, 1, 10, 5),
(53, 89, 1, 10, 5);

-- --------------------------------------------------------

--
-- Table structure for table `sellparent`
--

CREATE TABLE `sellparent` (
  `SellID` int(11) NOT NULL,
  `CustID` int(11) NOT NULL,
  `Dated` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sellparent`
--

INSERT INTO `sellparent` (`SellID`, `CustID`, `Dated`) VALUES
(1, 1, '2022-12-27'),
(2, 2, '2022-12-27'),
(3, 2, '2022-12-27'),
(4, 2, '2022-12-27'),
(5, 1, '2022-12-27'),
(6, 2, '2022-12-27'),
(7, 1, '2022-12-27'),
(8, 1, '2022-12-27'),
(9, 1, '2022-12-27'),
(10, 1, '2022-12-27'),
(11, 1, '2022-12-27'),
(12, 1, '2022-12-27'),
(13, 1, '2022-12-27'),
(14, 1, '2022-12-27'),
(15, 1, '2022-12-27'),
(16, 1, '2022-12-27'),
(17, 1, '2022-12-27'),
(18, 1, '2022-12-27'),
(19, 1, '2022-12-27'),
(20, 1, '2022-12-27'),
(21, 1, '2022-12-27'),
(22, 1, '2022-12-27'),
(23, 1, '2022-12-27'),
(24, 1, '2022-12-27'),
(25, 2, '2022-12-28'),
(26, 2, '2022-12-28'),
(27, 1, '2022-12-28'),
(28, 1, '2022-12-28'),
(29, 1, '2022-12-28'),
(30, 3, '2022-12-28'),
(31, 4, '2022-12-28'),
(32, 1, '2022-12-28'),
(33, 5, '2022-12-29'),
(34, 5, '2022-12-29'),
(35, 5, '2022-12-29'),
(36, 3, '2022-12-29'),
(37, 1, '2022-12-29'),
(38, 1, '2022-12-29'),
(39, 1, '2022-12-29'),
(40, 1, '2022-12-29'),
(41, 1, '2022-12-29'),
(42, 1, '2022-12-29'),
(43, 1, '2022-12-29'),
(44, 1, '2022-12-29'),
(45, 1, '2022-12-29'),
(46, 1, '2022-12-29'),
(47, 1, '2022-12-29'),
(48, 1, '2022-12-29'),
(49, 1, '2022-12-29'),
(50, 1, '2022-12-29'),
(51, 1, '2022-12-30'),
(52, 1, '2022-12-30'),
(53, 1, '2022-12-30'),
(54, 1, '2022-12-30'),
(55, 1, '2022-12-30'),
(56, 1, '2022-12-30'),
(57, 1, '2022-12-30'),
(58, 1, '2022-12-30'),
(59, 1, '2022-12-30'),
(60, 1, '2022-12-30'),
(61, 1, '2022-12-30'),
(62, 1, '2022-12-30'),
(63, 1, '2022-12-30'),
(64, 1, '2022-12-30'),
(65, 1, '2022-12-30'),
(66, 1, '2022-12-30'),
(67, 1, '2022-12-30'),
(68, 1, '2022-12-30'),
(69, 1, '2022-12-31'),
(70, 3, '2022-12-31'),
(71, 1, '2022-12-31'),
(72, 1, '2022-12-31'),
(73, 1, '2022-12-31'),
(74, 1, '2022-12-31'),
(75, 1, '2022-12-31'),
(76, 1, '2022-12-31'),
(77, 1, '2022-12-31'),
(78, 5, '2022-12-31'),
(79, 1, '2022-12-31'),
(80, 2, '2022-12-31'),
(81, 1, '2022-12-31'),
(82, 2, '2022-12-31'),
(83, 1, '2022-12-31'),
(84, 1, '2022-12-31'),
(85, 1, '2022-12-31'),
(86, 1, '2022-12-31'),
(87, 1, '2022-12-31'),
(88, 1, '2022-12-31'),
(89, 1, '2022-12-31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`Cat_ID`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`Compony_ID`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`CustID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`Medicine_ID`);

--
-- Indexes for table `molecule`
--
ALTER TABLE `molecule`
  ADD PRIMARY KEY (`Molecule_ID`);

--
-- Indexes for table `sellchild`
--
ALTER TABLE `sellchild`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `sellparent`
--
ALTER TABLE `sellparent`
  ADD PRIMARY KEY (`SellID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `Cat_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `Compony_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `CustID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `username` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `Medicine_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `molecule`
--
ALTER TABLE `molecule`
  MODIFY `Molecule_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sellchild`
--
ALTER TABLE `sellchild`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `sellparent`
--
ALTER TABLE `sellparent`
  MODIFY `SellID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
