-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2022 at 07:55 PM
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
-- Database: `mybank`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branchId` int(11) NOT NULL,
  `branchNo` varchar(111) NOT NULL,
  `branchName` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branchId`, `branchNo`, `branchName`) VALUES
(1, '040166', 'Manasagangothri Campus'),
(2, '016500', 'Vijayanagar 2nd stage'),
(3, '041098', 'JSS Layout\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedbackId` int(11) NOT NULL,
  `message` text NOT NULL,
  `userId` double NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `email` varchar(111) NOT NULL,
  `password` varchar(111) NOT NULL,
  `type` varchar(111) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `email`, `password`, `type`, `date`) VALUES
(1, 'cashier1@cashier.com', 'cashier1', 'cashier', '2017-12-15 04:36:27'),
(2, 'manager@manager.com', 'manager', 'manager', '2017-12-15 04:36:27'),
(3, 'cashier2@cashier.com', 'cashier2', 'cashier', '2017-12-16 07:14:47'),
(4, 'manager2@gmail.com', 'manager2', 'manager', '2022-06-14 14:29:02');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `userId` varchar(111) NOT NULL,
  `notice` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `userId`, `notice`, `date`) VALUES
(1, '1', 'Dear Sidhi ! <br> Our privacy policy is changed for account information get new prospectus from your nearest branch.', '2017-12-14 13:11:46'),
(2, '2', 'Dear Yash !<br> Our privacy policy has been changed please visit nearest MCB branch for new prospectus.', '2017-12-16 06:29:23'),
(3, '3', 'Dear Apoorva ! <br> Our privacy policy is changed for account information get new prospectus from your nearest branch.', '2022-06-14 17:17:18'),
(8, '3', 'Hey Apoorva, we noticed that there is unusual bank transactions from your account.', '2022-06-14 17:46:40');

-- --------------------------------------------------------

--
-- Table structure for table `otheraccounts`
--

CREATE TABLE `otheraccounts` (
  `id` int(11) NOT NULL,
  `accountNo` varchar(111) NOT NULL,
  `bankName` varchar(111) NOT NULL,
  `holderName` varchar(111) NOT NULL,
  `balance` varchar(111) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `otheraccounts`
--

INSERT INTO `otheraccounts` (`id`, `accountNo`, `bankName`, `holderName`, `balance`, `date`) VALUES
(1, '12001122', 'UBL', 'Yaqoob Quraishi', '40800', '2017-12-14 11:55:07'),
(2, '12001123', 'HBL', 'Yousaf Khan', '71000', '2017-12-14 11:55:07'),
(3, '12001124', 'HBL', 'Yousaf Khan', '71000', '2017-12-14 11:55:07');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transactionId` int(11) NOT NULL,
  `action` varchar(111) NOT NULL,
  `credit` varchar(111) NOT NULL,
  `debit` varchar(111) NOT NULL,
  `other` varchar(111) NOT NULL,
  `userId` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transactionId`, `action`, `credit`, `debit`, `other`, `userId`, `date`) VALUES
(32, 'withdraw', '', '200', '1513410739', 3, '2022-06-14 17:25:21'),
(33, 'withdraw', '', '2800', '1513410736', 2, '2022-06-14 17:26:04'),
(34, 'deposit', '2000', '', '1513410732', 1, '2022-06-14 17:26:30'),
(35, 'transfer', '', '2700', '1513410739', 1, '2022-06-14 17:27:42'),
(36, 'transfer', '', '200', '1513410736', 2, '2022-06-14 17:29:55'),
(37, 'transfer', '', '100', '1513410739', 2, '2022-06-14 17:30:07');

-- --------------------------------------------------------

--
-- Table structure for table `useraccounts`
--

CREATE TABLE `useraccounts` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `name` varchar(111) NOT NULL,
  `balance` varchar(111) NOT NULL,
  `cnic` varchar(111) NOT NULL,
  `number` varchar(111) NOT NULL,
  `city` varchar(111) NOT NULL,
  `address` varchar(111) NOT NULL,
  `source` varchar(111) NOT NULL,
  `accountNo` varchar(111) NOT NULL,
  `branch` varchar(111) NOT NULL,
  `accountType` varchar(111) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `useraccounts`
--

INSERT INTO `useraccounts` (`id`, `email`, `password`, `name`, `balance`, `cnic`, `number`, `city`, `address`, `source`, `accountNo`, `branch`, `accountType`, `date`) VALUES
(1, 'sidhi_raj@gmail.com', 'sidhi123', 'Sidhi Raj', '7300', '414512986629', '03356910260', 'Mysuru', 'Flat 201,Raj buildings, Vijayanagr 2nd stage,Mysuru ', 'IT company', '1513410732', '2', 'Current', '2017-12-14 05:50:06'),
(2, 'yash@gmail.com', 'yash1234', 'Yash Deshmukh', '9900', '423198745321', '03356910260', 'Mysuru', 'House no 98, 1st cross street, JSS layout, Mysuru', 'Pilot', '1513410736', '3', 'Saving', '2017-12-14 04:50:06'),
(3, 'apoorva@gmail.com', 'apoorva1', 'Apoorva Kumari', '11800', '675198231245', '03356910260', 'Mysuru', 'Jss girls hostel,SJCE campus roads, Manasagangothri , Mysuru', 'Software Job', '1513410739', '1', 'Saving', '2017-12-16 07:52:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branchId`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedbackId`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otheraccounts`
--
ALTER TABLE `otheraccounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transactionId`);

--
-- Indexes for table `useraccounts`
--
ALTER TABLE `useraccounts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `branchId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedbackId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `otheraccounts`
--
ALTER TABLE `otheraccounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transactionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `useraccounts`
--
ALTER TABLE `useraccounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
