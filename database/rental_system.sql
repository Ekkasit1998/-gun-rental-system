-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2020 at 11:42 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rental_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_detail`
--

CREATE TABLE `tb_detail` (
  `detail_id` int(11) NOT NULL,
  `history_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `status_lend` int(11) NOT NULL,
  `fine` int(11) NOT NULL,
  `lent_date_strat` datetime NOT NULL,
  `lend_date_end` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_detail`
--

INSERT INTO `tb_detail` (`detail_id`, `history_id`, `book_id`, `status_lend`, `fine`, `lent_date_strat`, `lend_date_end`) VALUES
(1, 1, 1, 1, 0, '2020-10-01 08:58:09', '2020-10-31 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tb_gun`
--

CREATE TABLE `tb_gun` (
  `book_id` int(11) NOT NULL,
  `book_name` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `book_detail` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `book_user` text CHARACTER SET utf8mb4 NOT NULL,
  `book_techer` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `book_year` int(11) NOT NULL,
  `book_date` datetime NOT NULL,
  `book_status` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `book_code` varchar(50) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_gun`
--

INSERT INTO `tb_gun` (`book_id`, `book_name`, `book_detail`, `book_user`, `book_techer`, `book_year`, `book_date`, `book_status`, `book_code`) VALUES
(1, 'm16', './file/1600157837.jpg', 'm16+อุปรกณ์เสริม', 'นาย a ดูแล', 0, '2020-09-15 00:00:00', 'ปกติ', 'm16'),
(2, 'ak', '', 'เอเค-47 เป็นที่รู้จักกันอย่างเป็นทางการว่า อัฟโตแม็ท คาลาชนิคอฟ (รัสเซีย: Автома́т Кала́шникова, อักษรโรมัน: Avtomát Kaláshnikova; ยังเป็นที่รู้จักกันคือ คาลาชนิคอฟ และ เอเค) เป็นปืนไรเฟิลจู่โจมด้วยกระสุนขนาด 7.62×39มม. ทำงานด้วยระบบแรงดันแก๊ส(gas-operated) ที่ถูกพัฒนาขึ้นในสหภาพโซเวียตโดยนาย มีฮาอิล คาลาชนิคอฟ เป็นอาวุธปืนรุ่นต้นกำเนิดของปืนไรเฟิลตระกูลคาลาชนิคอฟ(หรือ \"เอเค\") ส่วนตัวเลขท้ายว่า 47 หมายถึงปีที่สร้างปืนรุ่นนี้จนเสร็จสิ้น', 'นาย b ดูแล', 0, '2020-10-01 00:00:00', 'ปกติ', '002');

-- --------------------------------------------------------

--
-- Table structure for table `tb_history`
--

CREATE TABLE `tb_history` (
  `history_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `history_date` datetime NOT NULL,
  `history_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_history`
--

INSERT INTO `tb_history` (`history_id`, `user_id`, `history_date`, `history_status`) VALUES
(1, 25, '2020-10-01 08:58:09', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `user_id` int(11) NOT NULL,
  `student_id` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`user_id`, `student_id`, `password`, `name`, `lastname`, `status`) VALUES
(1, 'admin', 'admin', 'admin', '', 1),
(25, 'test', 'test', 'test', 'test', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_detail`
--
ALTER TABLE `tb_detail`
  ADD PRIMARY KEY (`detail_id`);

--
-- Indexes for table `tb_gun`
--
ALTER TABLE `tb_gun`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `tb_history`
--
ALTER TABLE `tb_history`
  ADD PRIMARY KEY (`history_id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_detail`
--
ALTER TABLE `tb_detail`
  MODIFY `detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_gun`
--
ALTER TABLE `tb_gun`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_history`
--
ALTER TABLE `tb_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
