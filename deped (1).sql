-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2022 at 06:41 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `deped`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cat`
--

CREATE TABLE `tbl_cat` (
  `cat_id` int(11) NOT NULL,
  `cat_desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_cat`
--

INSERT INTO `tbl_cat` (`cat_id`, `cat_desc`) VALUES
(1, 'Equipment'),
(2, 'Furniture And Fixture'),
(3, 'Machinery'),
(4, 'Appliances'),
(5, 'Computer Parts'),
(6, 'Tools'),
(7, 'Vehicle'),
(8, 'Utensil'),
(9, 'Sports Equipment');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_con`
--

CREATE TABLE `tbl_con` (
  `con_id` int(11) NOT NULL,
  `con_desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_con`
--

INSERT INTO `tbl_con` (`con_id`, `con_desc`) VALUES
(1, 'Good'),
(2, 'Condemed'),
(3, 'For repair'),
(4, 'Lost'),
(5, 'Defective'),
(6, 'Missing');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee`
--

CREATE TABLE `tbl_employee` (
  `emp_id` int(11) NOT NULL,
  `emp_fname` varchar(100) NOT NULL,
  `emp_mname` varchar(100) NOT NULL,
  `emp_lname` varchar(100) NOT NULL,
  `pos_id` int(11) NOT NULL,
  `rm_id` int(11) NOT NULL,
  `emp_un` varchar(100) NOT NULL,
  `emp_pass` varchar(40) NOT NULL,
  `type_id` int(11) NOT NULL,
  `emp_at_deped` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_employee`
--

INSERT INTO `tbl_employee` (`emp_id`, `emp_fname`, `emp_mname`, `emp_lname`, `pos_id`, `rm_id`, `emp_un`, `emp_pass`, `type_id`, `emp_at_deped`) VALUES
(49, 'Leonel', 'Dulay', 'Lanot', 9, 1, 'Leonel_Lanot', '886fb8d2515255a66516203a829d94f4', 2, 1),
(50, 'Marlon ', 'M', 'Sumait', 5, 11, 'Marlon _Sumait', 'db1ef9161a5f8df16e486e011aa26de5', 1, 1),
(51, 'Michluke', '.', 'Sarmiento', 6, 11, 'Michluke_Sarmiento', '6e037221e540988801e7ab6ace0d9075', 1, 1),
(52, 'Kuya', '.', 'Toni', 7, 13, 'Kuya_Toni', '15dc005b68b9ff24faf64ce582a7888e', 2, 1),
(53, 'Jerico', '.', 'Namoro', 4, 10, 'Jerico_Namoro', '120c2f56f6bb5a54200b7ad8992e7be9', 1, 1),
(54, 'Recom', '.', 'Valdez', 8, 12, 'Recom_Valdez', '13b32b0141c9b31943b2bcf250aea247', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_emp_type`
--

CREATE TABLE `tbl_emp_type` (
  `type_id` int(11) NOT NULL,
  `type_desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_emp_type`
--

INSERT INTO `tbl_emp_type` (`type_id`, `type_desc`) VALUES
(1, 'User'),
(2, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_item`
--

CREATE TABLE `tbl_item` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `item_prtyno` varchar(50) NOT NULL,
  `item_modno` varchar(50) NOT NULL,
  `item_brand` varchar(50) NOT NULL,
  `item_quantity` double NOT NULL,
  `item_rcvdate` date NOT NULL,
  `emp_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `con_id` int(11) NOT NULL DEFAULT 4,
  `status_id` int(11) NOT NULL DEFAULT 4
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_item`
--

INSERT INTO `tbl_item` (`item_id`, `item_name`, `item_prtyno`, `item_modno`, `item_brand`, `item_quantity`, `item_rcvdate`, `emp_id`, `cat_id`, `con_id`, `status_id`) VALUES
(25, 'Yellow Monoblock', '1-1', '..', '..', 2, '2022-11-20', 53, 2, 1, 4),
(26, 'Yellow Monoblock', '1-2', '..', '..', 10, '2022-11-20', 50, 2, 1, 4),
(27, 'Computer Monitor', '5-1', '..', 'Toshiba', 4, '2022-11-20', 50, 5, 1, 4),
(28, 'Yellow Armchair', '2-1', '..', '..', 30, '2022-11-20', 54, 2, 1, 4),
(29, 'Computer Monitor', '1-1', '..', 'Toshiba', 1, '2022-11-20', 53, 5, 1, 4),
(30, '12 Inch Smart Tv', '3-1', '..', 'Toshiba', 4, '2022-11-20', 50, 4, 1, 4),
(31, '12 Inch Smart Tv', '3-2', '..', 'Toshiba', 0, '2022-11-20', 54, 1, 1, 4),
(32, 'Computer Table', '4-1', '..', 'Kahoy', 2, '2022-11-20', 50, 2, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_item_status`
--

CREATE TABLE `tbl_item_status` (
  `status_id` int(11) NOT NULL,
  `status_desc` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_item_status`
--

INSERT INTO `tbl_item_status` (`status_id`, `status_desc`) VALUES
(1, 'for repair'),
(2, 'for transfer'),
(3, 'for condemned'),
(4, 'lost'),
(5, 'missing'),
(7, 'defective'),
(8, 'none');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pos`
--

CREATE TABLE `tbl_pos` (
  `pos_id` int(11) NOT NULL,
  `pos_desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pos`
--

INSERT INTO `tbl_pos` (`pos_id`, `pos_desc`) VALUES
(4, 'Treasurer'),
(5, 'Principal'),
(6, 'Coordinator'),
(7, 'Property Custodian'),
(8, 'Teacher'),
(9, 'Test admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_request`
--

CREATE TABLE `tbl_request` (
  `req_id` int(11) NOT NULL,
  `req_date` date NOT NULL,
  `item_id` int(11) NOT NULL,
  `req_type_id` int(11) NOT NULL,
  `req_status_id` int(11) NOT NULL DEFAULT 1,
  `req_is_done` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_req_status`
--

CREATE TABLE `tbl_req_status` (
  `req_status_id` int(11) NOT NULL,
  `req_status_desc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_req_status`
--

INSERT INTO `tbl_req_status` (`req_status_id`, `req_status_desc`) VALUES
(1, 'pending'),
(2, 'accepted'),
(3, 'rejected');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_req_type`
--

CREATE TABLE `tbl_req_type` (
  `req_type_id` int(11) NOT NULL,
  `req_type_desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_req_type`
--

INSERT INTO `tbl_req_type` (`req_type_id`, `req_type_desc`) VALUES
(5, 'for repair'),
(6, 'for transfer'),
(9, 'condemned');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rm`
--

CREATE TABLE `tbl_rm` (
  `rm_id` int(11) NOT NULL,
  `rm_desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_rm`
--

INSERT INTO `tbl_rm` (`rm_id`, `rm_desc`) VALUES
(1, 'Test admin'),
(10, 'Treasurer\'s Office'),
(11, 'Principal\'s Office'),
(12, 'Tp 102'),
(13, 'Guard House');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_cat`
--
ALTER TABLE `tbl_cat`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `tbl_con`
--
ALTER TABLE `tbl_con`
  ADD PRIMARY KEY (`con_id`);

--
-- Indexes for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  ADD PRIMARY KEY (`emp_id`),
  ADD KEY `type_id` (`type_id`),
  ADD KEY `pos_id` (`pos_id`),
  ADD KEY `off_id` (`rm_id`);

--
-- Indexes for table `tbl_emp_type`
--
ALTER TABLE `tbl_emp_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `tbl_item`
--
ALTER TABLE `tbl_item`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `emp_id` (`emp_id`),
  ADD KEY `cat_id` (`cat_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `con_id` (`con_id`);

--
-- Indexes for table `tbl_item_status`
--
ALTER TABLE `tbl_item_status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `tbl_pos`
--
ALTER TABLE `tbl_pos`
  ADD PRIMARY KEY (`pos_id`);

--
-- Indexes for table `tbl_request`
--
ALTER TABLE `tbl_request`
  ADD PRIMARY KEY (`req_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `req_type_id` (`req_type_id`),
  ADD KEY `req_status_id` (`req_status_id`);

--
-- Indexes for table `tbl_req_status`
--
ALTER TABLE `tbl_req_status`
  ADD PRIMARY KEY (`req_status_id`);

--
-- Indexes for table `tbl_req_type`
--
ALTER TABLE `tbl_req_type`
  ADD PRIMARY KEY (`req_type_id`);

--
-- Indexes for table `tbl_rm`
--
ALTER TABLE `tbl_rm`
  ADD PRIMARY KEY (`rm_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_cat`
--
ALTER TABLE `tbl_cat`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_con`
--
ALTER TABLE `tbl_con`
  MODIFY `con_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `tbl_emp_type`
--
ALTER TABLE `tbl_emp_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_item`
--
ALTER TABLE `tbl_item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tbl_item_status`
--
ALTER TABLE `tbl_item_status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_pos`
--
ALTER TABLE `tbl_pos`
  MODIFY `pos_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_request`
--
ALTER TABLE `tbl_request`
  MODIFY `req_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `tbl_req_status`
--
ALTER TABLE `tbl_req_status`
  MODIFY `req_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_req_type`
--
ALTER TABLE `tbl_req_type`
  MODIFY `req_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_rm`
--
ALTER TABLE `tbl_rm`
  MODIFY `rm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  ADD CONSTRAINT `tbl_employee_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `tbl_emp_type` (`type_id`),
  ADD CONSTRAINT `tbl_employee_ibfk_2` FOREIGN KEY (`pos_id`) REFERENCES `tbl_pos` (`pos_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_employee_ibfk_3` FOREIGN KEY (`rm_id`) REFERENCES `tbl_rm` (`rm_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
