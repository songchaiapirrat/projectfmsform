-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Feb 13, 2020 at 10:18 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `630213_db_assess`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `admin_user` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `admin_pass` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_name`, `admin_user`, `admin_pass`) VALUES
(1, 'เจ้าหน้าที่', 'admin', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_assess`
--

CREATE TABLE `tbl_assess` (
  `assess_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `assess_date` date NOT NULL,
  `assess_full_total` int(11) NOT NULL,
  `assess_total` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_assess`
--

INSERT INTO `tbl_assess` (`assess_id`, `member_id`, `subject_id`, `assess_date`, `assess_full_total`, `assess_total`) VALUES
(1, 1, 2, '2020-02-13', 20, 4),
(2, 1, 3, '2020-02-13', 20, 4),
(3, 1, 3, '2020-02-13', 20, 4),
(4, 1, 3, '2020-02-13', 20, 4),
(5, 62000001, 3, '2020-02-13', 20, 14),
(6, 62000001, 2, '2020-02-13', 60, 12);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_assess_detail`
--

CREATE TABLE `tbl_assess_detail` (
  `assess_detail_id` int(11) NOT NULL,
  `assess_id` int(11) NOT NULL,
  `detail_id` int(11) NOT NULL,
  `assess_detail_score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_assess_detail`
--

INSERT INTO `tbl_assess_detail` (`assess_detail_id`, `assess_id`, `detail_id`, `assess_detail_score`) VALUES
(1, 4, 13, 1),
(2, 4, 14, 1),
(3, 4, 15, 1),
(4, 4, 16, 1),
(5, 5, 13, 5),
(6, 5, 14, 4),
(7, 5, 15, 3),
(8, 5, 16, 2),
(9, 6, 1, 1),
(10, 6, 2, 1),
(11, 6, 3, 1),
(12, 6, 4, 1),
(13, 6, 5, 1),
(14, 6, 6, 1),
(15, 6, 7, 1),
(16, 6, 8, 1),
(17, 6, 9, 1),
(18, 6, 10, 1),
(19, 6, 11, 1),
(20, 6, 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail`
--

CREATE TABLE `tbl_detail` (
  `detail_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `detail_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_detail`
--

INSERT INTO `tbl_detail` (`detail_id`, `topic_id`, `detail_name`) VALUES
(1, 1, 'เจ้าหน้าที่ให้บริการด้วยความสุภาพ เป็นมิตร'),
(2, 1, 'เจ้าหน้าที่ให้บริการด้วยความสะดวก รวดเร็ว '),
(3, 1, 'เจ้าหน้าที่ดูแลเอาใจใส่ กระตือรือร้น เต็มใจให้บริการ'),
(4, 1, 'เจ้าหน้าที่ให้คำแนะนำ หรือตอบข้อซักถามได้เป็นอย่างดี'),
(5, 2, 'การให้บริการเป็นระบบและมีขั้นตอนที่เหมาะสม'),
(6, 2, 'การให้ข้อมูล / รายละเอียดชัดเจนและเข้าใจง่าย'),
(7, 2, 'มีการให้บริการเป็นไปตามลำดับก่อน – หลัง อย่างยุติธรรม'),
(8, 2, 'แบบฟอร์มเข้าใจง่ายและสะดวกในการกรอกข้อมูล'),
(9, 3, 'เครื่องมือ อุปกรณ์ ทันสมัยและทำให้เกิดความสะดวกมากขึ้น'),
(10, 3, 'ช่องทางในการให้บริการของสำนักงาน'),
(11, 4, 'ได้รับการบริการที่ตรงกับความต้องการ (ความถูกต้อง ครบถ้วน ไม่ผิดพลาด)'),
(12, 4, 'ได้รับบริการที่เป็นประโยชน์'),
(13, 5, 'เจ้าหน้าที่ให้บริการด้วยความสุภาพ เป็นมิตร'),
(14, 6, 'เจ้าหน้าที่ให้บริการด้วยความสะดวก รวดเร็ว '),
(15, 6, 'เจ้าหน้าที่ดูแลเอาใจใส่ กระตือรือร้น เต็มใจให้บริการ'),
(16, 7, 'การให้ข้อมูล / รายละเอียดชัดเจนและเข้าใจง่าย');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_member`
--

CREATE TABLE `tbl_member` (
  `member_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `member_full_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `member_class` int(11) NOT NULL,
  `member_sex` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `member_pass` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_member`
--

INSERT INTO `tbl_member` (`member_id`, `member_full_name`, `member_class`, `member_sex`, `member_pass`) VALUES
('62000001', 'songchai apirat', 4, 'male', '62000001'),
('62000002', 'sukanya', 1, 'female', '62000002'),
('62000003', '22222', 2, 'male', '62000003'),
('62000004', '44444', 2, 'male', '62000004');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subject`
--

CREATE TABLE `tbl_subject` (
  `subject_id` int(11) NOT NULL,
  `subject_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_subject`
--

INSERT INTO `tbl_subject` (`subject_id`, `subject_name`) VALUES
(2, 'แบบประเมินความพึงพอใจผู้รับบริการ '),
(3, 'โครงการไหว้ครู');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_topic`
--

CREATE TABLE `tbl_topic` (
  `topic_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `topic_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_topic`
--

INSERT INTO `tbl_topic` (`topic_id`, `subject_id`, `topic_name`) VALUES
(1, 2, 'ด้านการให้บริการของเจ้าหน้าที่/บุคลากรที่ให้บริการ'),
(2, 2, 'ด้านกระบวนการ ขั้นตอนการให้บริการ'),
(3, 2, 'ด้านสิ่งอำนวยความสะดวก'),
(4, 2, 'ด้านผลจากการให้บริการ'),
(5, 3, 'ด้านการบริหารจัดการ'),
(6, 3, 'ด้านกิจกรรม'),
(7, 3, 'ผลที่ได้รับ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_assess`
--
ALTER TABLE `tbl_assess`
  ADD PRIMARY KEY (`assess_id`);

--
-- Indexes for table `tbl_assess_detail`
--
ALTER TABLE `tbl_assess_detail`
  ADD PRIMARY KEY (`assess_detail_id`);

--
-- Indexes for table `tbl_detail`
--
ALTER TABLE `tbl_detail`
  ADD PRIMARY KEY (`detail_id`);

--
-- Indexes for table `tbl_member`
--
ALTER TABLE `tbl_member`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `tbl_subject`
--
ALTER TABLE `tbl_subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `tbl_topic`
--
ALTER TABLE `tbl_topic`
  ADD PRIMARY KEY (`topic_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_assess`
--
ALTER TABLE `tbl_assess`
  MODIFY `assess_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_assess_detail`
--
ALTER TABLE `tbl_assess_detail`
  MODIFY `assess_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_detail`
--
ALTER TABLE `tbl_detail`
  MODIFY `detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_subject`
--
ALTER TABLE `tbl_subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_topic`
--
ALTER TABLE `tbl_topic`
  MODIFY `topic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
