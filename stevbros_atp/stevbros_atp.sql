-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2016 at 09:15 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `stevbros_atp`
--

-- --------------------------------------------------------

--
-- Table structure for table `mn_action`
--

CREATE TABLE IF NOT EXISTS `mn_action` (
`id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `send_to` int(11) NOT NULL,
  `datetime` bigint(10) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mn_class`
--

CREATE TABLE IF NOT EXISTS `mn_class` (
`id` int(11) NOT NULL,
  `code` varchar(30) NOT NULL,
  `name` varchar(150) NOT NULL,
  `date_start` bigint(10) NOT NULL,
  `date_end` bigint(10) NOT NULL,
  `notes` varchar(100) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `datetime` bigint(10) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `trainer_id` int(11) NOT NULL,
  `header_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mn_class`
--

INSERT INTO `mn_class` (`id`, `code`, `name`, `date_start`, `date_end`, `notes`, `img`, `datetime`, `status`, `trainer_id`, `header_id`) VALUES
(1, 'AS-16-YOKO-1', 'Agile/Scrum cho doanh nghiệp YOKO 01', 1456559460, 1456559460, '', '', 1456559484, 1, 6, 2),
(2, 'stevbros-PMP35-16-1', 'PMP Exam Prep - Khóa 1', 1459070220, 1459070220, '', '', 1459070251, 1, 43, 2);

-- --------------------------------------------------------

--
-- Table structure for table `mn_class_info`
--

CREATE TABLE IF NOT EXISTS `mn_class_info` (
`id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `_table` varchar(30) NOT NULL,
  `table_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mn_contract`
--

CREATE TABLE IF NOT EXISTS `mn_contract` (
`id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `name_vi` varchar(200) NOT NULL,
  `represented` varchar(60) NOT NULL,
  `represented_vi` varchar(60) NOT NULL,
  `position` varchar(30) NOT NULL,
  `position_vi` varchar(30) NOT NULL,
  `address` varchar(200) NOT NULL,
  `address_vi` varchar(200) NOT NULL,
  `taxcode` bigint(10) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(60) NOT NULL,
  `fax` varchar(15) DEFAULT NULL,
  `web` varchar(50) DEFAULT NULL,
  `course_id` int(11) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `quantity_vi` varchar(100) NOT NULL,
  `duration` varchar(150) NOT NULL,
  `duration_vi` varchar(150) NOT NULL,
  `trainer_id` int(11) NOT NULL,
  `price` bigint(10) NOT NULL,
  `typeform` tinyint(1) NOT NULL DEFAULT '1',
  `datetime` bigint(10) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mn_contract`
--

INSERT INTO `mn_contract` (`id`, `code`, `name`, `name_vi`, `represented`, `represented_vi`, `position`, `position_vi`, `address`, `address_vi`, `taxcode`, `phone`, `email`, `fax`, `web`, `course_id`, `quantity`, `quantity_vi`, `duration`, `duration_vi`, `trainer_id`, `price`, `typeform`, `datetime`, `status`) VALUES
(1, '1001-2016', 'Yokogawa Vietnam Company Limited', 'Công ty TNHH Yokogawa Việt Nam', 'Mr. Quah Soon Chye', 'Mr. Quah Soon Chye', 'General Director', 'Tổng giám đốc', 'Level 10, Hoa Binh Tower, 106 Hoang Quoc Viet, Cau Giay, Hanoi', 'Tầng 10, Tháp Hòa Bình, 106 Hoàng Quốc Việt, Cầu Giấy, Hà Nội', 102033861, '0437635115', '', '0437635111', '', 0, '20 people/course', 'tối đa 20 người/lớp', 'A three-day training workshop (November 15-16-17, 2015)', '3 ngày (ngày 15-16-17 tháng 12 năm 2015)', 6, 72900000, 1, 1452678600, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mn_contract_customer`
--

CREATE TABLE IF NOT EXISTS `mn_contract_customer` (
`id` int(11) NOT NULL,
  `contract_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mn_course`
--

CREATE TABLE IF NOT EXISTS `mn_course` (
`id` int(5) NOT NULL,
  `code` varchar(10) NOT NULL,
  `name` varchar(150) NOT NULL,
  `content` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mn_course`
--

INSERT INTO `mn_course` (`id`, `code`, `name`, `content`, `status`) VALUES
(1, 'PMP45', 'PMP 45 pdus', '<p>Nội dung abc</p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mn_customer`
--

CREATE TABLE IF NOT EXISTS `mn_customer` (
`id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(60) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(100) NOT NULL,
  `country` varchar(2) NOT NULL,
  `date_birthday` bigint(10) DEFAULT NULL,
  `birthplace` varchar(50) DEFAULT NULL,
  `identity_card` bigint(10) DEFAULT NULL,
  `img` varchar(15) DEFAULT NULL,
  `company` varchar(150) DEFAULT NULL,
  `datetime` bigint(10) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `contact_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mn_customer_module`
--

CREATE TABLE IF NOT EXISTS `mn_customer_module` (
`id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `course_id` int(3) NOT NULL,
  `course_name` varchar(200) NOT NULL,
  `datetime` bigint(10) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mn_customer_module`
--

INSERT INTO `mn_customer_module` (`id`, `customer_id`, `course_id`, `course_name`, `datetime`) VALUES
(1, 1, 2, '60 PDUs for PMP®/PgMP® Certificate Renewal', 1456555000),
(2, 1, 2, '60 PDUs for PMP®/PgMP® Certificate Renewal', 1456559752),
(3, 3, 2, '60 PDUs for PMP®/PgMP® Certificate Renewal', 1456559783),
(4, 2, 2, '60 PDUs for PMP®/PgMP® Certificate Renewal', 1456559789),
(5, 1, 2, '60 PDUs for PMP®/PgMP® Certificate Renewal', 1456639851),
(6, 2, 2, '60 PDUs for PMP®/PgMP® Certificate Renewal', 1456639985),
(7, 3, 2, '60 PDUs for PMP®/PgMP® Certificate Renewal', 1456639991),
(8, 1, 3, '30 PDUs for PMI Credential Renewal', 1456650629),
(9, 3, 2, '60 PDUs for PMP®/PgMP® Certificate Renewal', 1456650717),
(10, 1, 2, '60 PDUs for PMP®/PgMP® Certificate Renewal', 1456650722),
(11, 2, 2, '60 PDUs for PMP®/PgMP® Certificate Renewal', 1456650727),
(12, 1, 2, '60 PDUs for PMP®/PgMP® Certificate Renewal', 1456650815);

-- --------------------------------------------------------

--
-- Table structure for table `mn_fee`
--

CREATE TABLE IF NOT EXISTS `mn_fee` (
`id` int(11) NOT NULL,
  `_table` varchar(30) NOT NULL,
  `table_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `datetime` bigint(10) NOT NULL,
  `notes` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `class_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mn_license`
--

CREATE TABLE IF NOT EXISTS `mn_license` (
`id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `datetime` bigint(10) NOT NULL,
  `course_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `trainer_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mn_license`
--

INSERT INTO `mn_license` (`id`, `code`, `datetime`, `course_id`, `customer_id`, `trainer_id`, `status`) VALUES
(2, 'VN000001', 1458535740, 294, 15, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mn_parts`
--

CREATE TABLE IF NOT EXISTS `mn_parts` (
`id` int(2) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(60) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mn_payment`
--

CREATE TABLE IF NOT EXISTS `mn_payment` (
`id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `price` float NOT NULL,
  `info` varchar(150) NOT NULL,
  `code` varchar(20) NOT NULL,
  `datetime` bigint(10) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mn_payment`
--

INSERT INTO `mn_payment` (`id`, `name`, `email`, `price`, `info`, `code`, `datetime`, `status`) VALUES
(2, 'Mohammed Hammo', 'mohammed.hammo@engineer.com', 800, 'Annual Licence Fee', 'stevbros1458117072', 1458117072, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mn_staff`
--

CREATE TABLE IF NOT EXISTS `mn_staff` (
`id` int(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` int(60) NOT NULL,
  `parts_id` int(2) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mn_trainer`
--

CREATE TABLE IF NOT EXISTS `mn_trainer` (
`id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `position` varchar(150) DEFAULT NULL,
  `email` varchar(60) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `address` varchar(200) NOT NULL,
  `img` varchar(20) DEFAULT NULL,
  `date_birthday` bigint(10) NOT NULL,
  `exp_work` int(3) NOT NULL,
  `courses_id` varchar(30) NOT NULL,
  `yourself` text NOT NULL,
  `diploma` text NOT NULL,
  `certificate` text NOT NULL,
  `experience` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `price_public` int(11) NOT NULL,
  `price_business` int(11) NOT NULL,
  `datetime` bigint(10) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mn_trainer`
--

INSERT INTO `mn_trainer` (`id`, `name`, `position`, `email`, `phone`, `address`, `img`, `date_birthday`, `exp_work`, `courses_id`, `yourself`, `diploma`, `certificate`, `experience`, `type`, `price_public`, `price_business`, `datetime`, `status`) VALUES
(6, 'Nguyễn Bình Phương', 'Instructor', 'bryan@stevbros.com', '0988388388', '123 CMT 8', '1458630876.png', 283971600, 15, ',279,280,281,289,290,', '<h4>GIỚI THIỆU BẢN THÂN&nbsp;(giới thiệu chung, ít hơn 250 từ)</h4>', '<h4>BẰNG CẤP&nbsp;(ví dụ: Tiến sỹ, Thạc sỹ,...)</h4>', '<h4>CHỨNG CHỈ&nbsp;(ví dụ: PMP, CSM, CSPO, CSP,...)</h4>', '<h4>KINH NGHIỆM&nbsp;(giới thiệu chi tiết quá trình làm việc và nghiên cứu)</h4>', 5, 3, 0, 0, 1),
(7, 'Lam Quoc Tuan', NULL, 'tuan.lam@dispatchingsolutions.com', '0902337505', '29 Nguyen Thai Binh, Quan 1, tphcm', NULL, 458931600, 10, ',279,', '<p>Với 10 năm kinh nghiệm làm việc ở các công ty Nhật (Individual Systems), Anh (Harvey Nash), Mỹ (DispatchingSolutions) và hiện tại đang là Head of PMO. Tôi tin tưởng mình có đầy đủ kinh nghiệm và kiến thức để giảng dạy PMP.</p>', '<p>Bằng cấp kỹ sư công nghệ phần mềm (tốt nghiệp đại học)</p>', '<p>Bằng cấp PMP certification</p>', '<p><span style="font-size: 13px; line-height: 20.8px;">Với 10 năm kinh nghiệm làm việc ở các công ty Nhật (Individual Systems), Anh (Harvey Nash), Mỹ (DispatchingSolutions) và hiện tại đang là Head of PMO. Tôi tin tưởng mình có đầy đủ kinh nghiệm và kiến thức để giảng dạy PMP.</span></p>', 1, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mn_trainer_rate`
--

CREATE TABLE IF NOT EXISTS `mn_trainer_rate` (
`id` int(11) NOT NULL,
  `trainer_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `rate` int(1) NOT NULL,
  `datetime` bigint(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mn_trainer_rate`
--

INSERT INTO `mn_trainer_rate` (`id`, `trainer_id`, `class_id`, `rate`, `datetime`) VALUES
(1, 6, 1, 5, 1456827247);

-- --------------------------------------------------------

--
-- Table structure for table `web_admin`
--

CREATE TABLE IF NOT EXISTS `web_admin` (
`id` int(3) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` varchar(30) NOT NULL,
  `_table` varchar(20) NOT NULL,
  `parameter` varchar(100) NOT NULL DEFAULT '/',
  `file` varchar(20) NOT NULL,
  `img` varchar(150) DEFAULT NULL,
  `_order` int(3) DEFAULT '0',
  `ajax` varchar(100) DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `parent` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_admin`
--

INSERT INTO `web_admin` (`id`, `name`, `url`, `_table`, `parameter`, `file`, `img`, `_order`, `ajax`, `type`, `parent`, `status`) VALUES
(1, 'Trang chủ', 'home', '', '', 'home', 'adIconHome', 0, '0', 0, 0, 1),
(2, 'Cấu hình website', 'config', 'web_config', '', 'web_config', 'adIconConfig', 49, '0', 2, 0, 1),
(3, 'Danh mục menu', 'listmenu', 'web_header', '?properties=1', 'web_menu', 'adIconMenu', 7, '0', 3, 0, 1),
(5, 'Course managerment', 'course', 'web_header', '?properties=2&type_id=3', 'web_course', 'adIconCourse', 2, '0', 3, 0, 1),
(7, 'Final test', 'finaltest', 'web_entrytest', '', 'web_entrytest', 'adIconEdit', 6, '0', 3, 0, 1),
(13, 'Menu admin', 'web_admin', 'web_admin', '', 'web_admin', 'adIconMenu', 50, '0', 2, 0, 1),
(14, 'Danh sách ngôn ngữ', 'language', 'web_language', '', 'web_language', 'adIconLang', 51, '0', 2, 0, 1),
(15, 'Vị trí thông tin', 'web_position', 'web_position', '', 'web_position', 'adIconPosition', 54, '0', 2, 0, 1),
(16, 'Biến môi trường', 'languagevar', 'web_language_var', '', 'web_language_var', 'adIconVar', 52, '0', 2, 0, 1),
(17, 'Group user', 'users_group', 'web_users_group', '', 'web_users_group', 'adIconGroup', 55, '0', 2, 0, 1),
(18, 'Add tags keyword', 'web_tags', 'web_tags', '', 'web_tags', 'adIconTags', 0, '0', 0, 0, 1),
(20, 'Loại thông tin', 'web_type', 'web_type', '', 'web_type', 'adIconType', 53, '0', 2, 0, 1),
(22, 'Event logs', 'web_logs', 'web_logs', '', 'web_logs', 'adIconLog', 56, '0', 2, 0, 1),
(23, 'Tài khoản', 'web_users', 'web_users', '', 'web_users', 'adIconSetting', 100, '0', 2, 0, 1),
(24, 'Thông tin tài khoản', 'user', 'account', '?infomation=1', 'account', 'adIconUser', 0, '0', 0, 0, 1),
(25, 'Web Header', 'web_header', 'web_header', '', 'web_header', 'adIconOther', 57, '0', 2, 0, 1),
(27, 'Phân quyền', 'users_role', 'web_users_role', '', 'web_users_role', 'adIconUserRole', 99, '0', 2, 0, 1),
(28, 'Student managerment', 'students', 'mn_customer', '', 'mn_customer', 'adIconUser', 1, '0', 3, 0, 1),
(31, 'Class managerment', 'class', 'mn_class', '', 'mn_class', 'adIconOther', 4, '0', 3, 0, 1),
(35, 'Quản lý sự kiện', 'event_form', 'web_event_form', '', 'web_event_form', 'adIconOpinion', 8, '0', 3, 0, 1),
(37, 'Trainer managerment', 'trainer', 'mn_trainer', '', 'mn_trainer', 'adIconOther', 4, '1', 3, 0, 1),
(38, 'Cert managerment', 'certificate', 'mn_license', '', 'mn_license', 'adIconOther', 5, '0', 3, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_config`
--

CREATE TABLE IF NOT EXISTS `web_config` (
`id` int(3) NOT NULL,
  `name` varchar(30) NOT NULL,
  `name_var` varchar(30) NOT NULL,
  `value` varchar(250) NOT NULL,
  `_order` int(3) NOT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_config`
--

INSERT INTO `web_config` (`id`, `name`, `name_var`, `value`, `_order`, `lang`, `status`) VALUES
(5, 'Số tin &#47; trang', 'limit_1', '5', 10, 'vi', 1),
(6, 'Số ý kiến / trang', 'limit_2', '8', 11, 'vi', 1),
(7, 'Số photo / trang', 'limit_3', '18', 12, 'vi', 1),
(8, 'Số video / trang', 'limit_4', '10', 13, 'vi', 1),
(9, 'Copyright', 'copyright', '©2016 Stevbros Training and Consultancy. All rights reserved. | PMI, PMP, CAPM, PgMP, PfMP, PMI-ACP, PMBOK and the PMI Registered Education Provider logo are registered marks of the Project Management Institute, Inc.', 4, 'vi', 1),
(10, 'Email', 'email', 'support@stevbros.com', 6, 'vi', 1),
(11, 'Điện thoại', 'tel', '+84 8 3911 7362', 3, 'vi', 1),
(12, 'Hotline', 'hotline', '+84 (0) 93 899 7663', 7, 'vi', 1),
(13, 'Tên viết tắt', 'name', 'Stevbros', 8, 'vi', 1),
(14, 'Mô tả khác', 'other', 'Stevbros đang cung cấp khóa học qua mạng cho các chuyên gia quản lý dự án ở 168 nước trên thế giới và đào tạo chuyên gia quản lý dự án cho các doanh nghiệp và cá nhân trong khu vực châu Á', 5, 'vi', 1),
(15, 'Địa chỉ', 'address', 'Lầu 7, CMARD2, 45 Đinh Tiên Hoàng, P. Bến Nghé, Q. 1, Tp. HCM.', 2, 'vi', 1),
(16, 'News number / page', 'limit_1', '5', 10, 'en', 1),
(17, 'Product number / page', 'limit_2', '12', 11, 'en', 1),
(18, 'Photos number / page', 'limit_3', '18', 12, 'en', 1),
(19, 'Videos number / page', 'limit_4', '10', 13, 'en', 1),
(20, 'Copyright', 'copyright', 'Copyright © 2015 by iAppsCode.Com', 6, 'en', 1),
(21, 'Email', 'email', 'hieunhan112@gmail.com', 5, 'en', 1),
(22, 'Telephone', 'tel', '0938 27 27 35', 3, 'en', 1),
(23, 'Hotline', 'hotline', '0938 27 27 35 | 0988 388 003', 7, 'en', 1),
(24, 'Tên viết tắt', 'name', 'iAppsCode', 8, 'en', 1),
(25, 'Fax', 'fax', '+84 3765 2055', 4, 'en', 0),
(26, 'Address', 'address', 'Số 9&#47;9 Đường 3A, Khu Phố 21, P.Bình Hưng Hòa A, Q.Bình Tân', 2, 'en', 1),
(27, 'Tên trang website', 'sitename', 'STEVBROS TRAINING & CONSULTANCY', 1, 'vi', 1),
(28, 'Site name', 'sitename', 'Dịch vụ thiết kế website iAppsCode', 1, 'en', 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_contact`
--

CREATE TABLE IF NOT EXISTS `web_contact` (
`id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `name2` varchar(60) DEFAULT NULL,
  `email` varchar(60) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `address` varchar(200) DEFAULT NULL,
  `address2` varchar(200) DEFAULT NULL,
  `company` varchar(150) DEFAULT NULL,
  `taxcode` varchar(20) DEFAULT NULL,
  `website` varchar(50) DEFAULT NULL,
  `parts` varchar(50) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `number` int(2) NOT NULL,
  `date_khaosat` bigint(10) DEFAULT NULL,
  `date_trienkhai` bigint(10) DEFAULT NULL,
  `payment_option` varchar(30) DEFAULT NULL,
  `red_invoice` tinyint(1) DEFAULT NULL,
  `message` text NOT NULL,
  `content` text,
  `datetime` bigint(10) NOT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '0',
  `type` int(11) NOT NULL,
  `header_id` int(11) DEFAULT NULL,
  `courses_id` varchar(30) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_contact`
--

INSERT INTO `web_contact` (`id`, `name`, `name2`, `email`, `phone`, `address`, `address2`, `company`, `taxcode`, `website`, `parts`, `position`, `number`, `date_khaosat`, `date_trienkhai`, `payment_option`, `red_invoice`, `message`, `content`, `datetime`, `lang`, `status`, `type`, `header_id`, `courses_id`) VALUES
(9, 'TRUONG THI AI PHUONG', NULL, 'truongaiphuong@icloud.com', '+84938334522', '', NULL, '', '', NULL, NULL, NULL, 1, 1454086800, 1456506000, 'Chuyển khoản', NULL, 'Xin vui lòng cung cấp thêm thông chi tiết về lịch học, thời gian, thời lượng và tài liệu học tập.\nCảm ơn.', NULL, 1452916162, 'vi', 1, 2, 297, NULL),
(8, 'Cao Ba Thuy', NULL, 'thuy_caoba@yahoo.com', '0913015368', 'E-learning', NULL, 'Oracle Vietnam', NULL, 'www.oracle.com', 'Tu Van', NULL, 11, 1452618000, 1453222800, NULL, NULL, '', NULL, 1452595689, 'vi', 1, 3, 82, NULL),
(10, 'Nguyễn Thị Thẩm', NULL, 'thitham.nguyen@gmail.com', '0914836279', 'TP Cần Thơ', NULL, 'Ban QLDA Nâng cấp đô thị TP Cà Mau', NULL, '', 'Phòng Kế hoạch & Đấu thầu', NULL, 11, 1453136400, 1458320400, NULL, NULL, 'Học phí bao nhiêu/học viên', NULL, 1453189946, 'vi', 1, 3, 106, NULL),
(11, 'Chu Anh Tuấn', NULL, 'chu.anh.tuan@framgia.com', '01682364335', '13F, KeangNam LandMark 72 Building, E6 Pham Hung, Tu Liem, HN', NULL, 'Framgia Viet Nam Co.,Ltd', NULL, 'http://recruit.framgia.vn/', 'Education', NULL, 12, 1454950800, 1455469200, NULL, NULL, 'Training in-house tại Hà Nội', NULL, 1453221466, 'vi', 1, 3, 83, NULL),
(12, 'Tô Thị Xuân Hương', NULL, 'toxuanhuong1506@gmail.com', '0978829545', '', NULL, '', '', NULL, NULL, NULL, 1, 1453222800, 1456506000, 'Tại văn phòng Stevbros', NULL, '', NULL, 1453262610, 'vi', 1, 2, 297, NULL),
(13, 'DƯƠNG TÔN QUỐC TRƯỜNG', NULL, 'quanvu_ce@yahoo.com', '+84907279687', '', NULL, '', '', NULL, NULL, NULL, 1, 1455642000, 1458320400, 'Tại văn phòng Stevbros', NULL, '', NULL, 1453952230, 'vi', 1, 2, 296, NULL),
(14, 'Tran nhat minh chau', NULL, 'nhatminhchau@gmail.com', '0916603693', '', NULL, '', '', NULL, NULL, NULL, 1, 1454864400, 1456506000, 'Chuyển khoản', NULL, 'Cho toi hoi hoc phi bao nhieu.', NULL, 1454946996, 'vi', 1, 2, 297, NULL),
(15, 'Lê Anh Lộc', NULL, 'lebakong2014@gmail.com', '01286650090', '', NULL, '', '', NULL, NULL, NULL, 1, 1456938000, 1456506000, 'Tại văn phòng Stevbros', NULL, 'Học phí cho khóa học này là bao nhiêu ? và tầm quan trọng của chứng chỉ PROJECT MANAGEMENT FUNDAMENTALS có tác dụng gì khi đi xin việc ?', NULL, 1455336560, 'vi', 1, 2, 297, NULL),
(16, 'Test test', NULL, 'tesrtest@yahoo.com', '0908765543', '', NULL, '', '', NULL, NULL, NULL, 1, 1455382800, 1456506000, 'Chuyển khoản', NULL, '', NULL, 1455382561, 'vi', 1, 2, 297, NULL),
(17, 'Phước', NULL, 'nguyendinhphuoc.pro@gmail.com', '0973330150', '', NULL, '', '', NULL, NULL, NULL, 3, 1455901200, 1456506000, 'Tại văn phòng Stevbros', NULL, 'cho mình hỏi học phí?', NULL, 1455545388, 'vi', 1, 2, 297, NULL),
(18, 'Tran Tan Thanh', NULL, 'thanhspktk04@gmail.com', '0908719066', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'Chao Stev\nCho hoi Stev co dao tao hoc vien ca nhan khong? neu co xin thong tin giup khoa hoc &quot;Quang ly du an nang cao&quot;:\n   Hoc Phi\n   Dia diem hoc (Tai TPHCM)\n   Lich khai Giang (hoc T7&CN)\n\nNeu can them thogn tin gi xin lien he.\n\nXin cam on!T.Thanh', NULL, 1455701562, 'vi', 1, 1, NULL, NULL),
(19, 'ỳtrefds', NULL, 'dfgdgfdgf@dfggdfg.vn', '0904888888', 'tyutyututyuty', NULL, 'rty', NULL, 'ry', 'rỷyry', NULL, 11, 1455728400, 1455728400, NULL, NULL, '', NULL, 1455786435, 'vi', 1, 3, 86, NULL),
(20, 'Nguyễn Thị Lụa', NULL, 'luant2@techcombank.com.vn', '0987899595', '', NULL, 'Ngân hàng TMCP Kỹ thương Việt Nam', '', NULL, NULL, NULL, 1, 1466269200, 1456506000, 'Chuyển khoản', NULL, 'Thông tin học phí, muốn học tại Hà Nội.', NULL, 1455849781, 'vi', 1, 2, 297, NULL),
(21, 'Hoàng Anh Nhật', NULL, 'nhatha@eurowindow.biz', '0988789433', 'Tp HCM', NULL, 'EUROWINDOW JSC', NULL, 'www.eurowindow.biz', 'Ban quản lý các dự án phía nam - PMU', NULL, 11, 1455814800, 1456765200, NULL, NULL, '', NULL, 1455853572, 'vi', 1, 3, 82, NULL),
(22, 'NGUYỄN THỊ MINH THƯ', NULL, 'nguyenthiminhthu@nng.vn', '01699007398', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'Dear admin,\n\nCho em hỏi:\n- Entry test thực hiện online hay đến trụ sở của Stevbros?\n- Entry test đóng vai trò gì trong khóa học? Ví dụ như để xếp lớp theo trình độ hay để ra quyết định có cung cấp khoa học hay không?\n\nMong nhận được phản hồi sớm,\n\nCảm ơn,\n\nNguyễn Thị Minh Thư', NULL, 1456114980, 'vi', 1, 1, NULL, NULL),
(23, 'NGUYỄN THỊ MINH THƯ', NULL, 'nguyenthiminhthu@nng.vn', '01699007398', '', NULL, '', '', NULL, NULL, NULL, 1, 1456506000, 1456506000, 'Chuyển khoản', NULL, '', NULL, 1456114680, 'vi', 1, 2, 297, NULL),
(24, 'Le Khanh Thanh', NULL, 'lekhatha@gmail.com', '0938200489', '', NULL, '', '', NULL, NULL, NULL, 1, 1456160400, 1456506000, 'Chuyển khoản', NULL, '', NULL, 1456159911, 'vi', 1, 2, 297, NULL),
(25, 'Nguyen Bao Phong', NULL, 'phong.nguyen@usgboral.com', '+84 908 984 948', 'TP. HCM', NULL, 'USG BORAL VIET NAM', NULL, 'www.usgboral.com', 'Maintenance', NULL, 11, 1456160400, 1456160400, NULL, NULL, '', NULL, 1456202675, 'vi', 1, 3, 83, NULL),
(26, 'Nguyễn Thị Minh Thư', NULL, 'nguyenthiminhthu@nng.vn', '01699 007 398', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'Dear admin,\n\nHôm qua mình đã đăng ký Khóa học: Quản Lý Dự Án theo Tiêu Chuẩn Quốc Tế PMBOK® Guide\nNgày khai giảng: 27/02/2016\nĐã nhận được e-mail confirm đăng ký thành công\nTuy nhiên, chưa nhận được thông tin tiếp theo về Học phí, E-learning, ..Vì thời gian học cũng gần kề, nên mình cần tài liệu để đọc trước.\n\nMong nhận được phản hồi,\n\nCảm ơn,\n\nNguyễn Thị Minh Thư', NULL, 1456216038, 'vi', 1, 1, NULL, NULL),
(27, 'Hien', NULL, 'hiennt13@fpt.com.vn', '0974410736', 'Hà Nội', NULL, 'FPT', NULL, '', 'QA', NULL, 11, 1456160400, 1456160400, NULL, NULL, '', NULL, 1456218268, 'vi', 1, 3, 86, NULL),
(28, 'Phan Trọng Nghĩa', NULL, 'ptn1611@yahoo.com.vn', '01645496390', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'Chào trung tâm, tôi muốn biết rõ hơn về khóa học Quản Lý Dự Án theo Tiêu Chuẩn Quốc Tế PMBOK® Guide, cụ thể là về học phí và thời gian diễn ra các buổi học Workshop. Xin cảm ơn !', NULL, 1456282446, 'vi', 1, 1, NULL, NULL),
(29, 'phạm thị báu', NULL, 'baupt@sieuchungky.vn', '0976248822', 'Hà nội hoặc Tp HCM', NULL, 'Công ty cổ phần Siêu Chung Kỳ', NULL, 'www.sieuchungky.com.vn', 'Dự án', NULL, 12, 1459443600, 1460221200, NULL, NULL, '', NULL, 1456311161, 'vi', 1, 3, 83, NULL),
(30, 'Vu Hoang Tung', NULL, 'htungvu@gmail.com', '0908093499', '', NULL, '', '', NULL, NULL, NULL, 1, 1457629200, 1458320400, 'Chuyển khoản', NULL, 'Tôi muốn biết chi phí học bao nhiêu?', NULL, 1456323935, 'vi', 1, 2, 296, NULL),
(31, 'Doan Vi Kim Khanh', NULL, 'Khanh.doan@konecranes.com', '0938269121', '', NULL, 'Timeframes Viet Nam', '', NULL, NULL, NULL, 1, 1456419600, 1456506000, 'Chuyển khoản', NULL, 'In Online Training, do we have teacher to discuss  and ask question ? Or just reading document.', NULL, 1456324808, 'vi', 1, 2, 297, NULL),
(32, 'Trinh Minh Truong', NULL, 'truongbtk2000@gmail.com', '0987674079', 'công ty anh chị', NULL, 'HoangLam', NULL, 'www.hoanglam.com.vn', 'R&D', NULL, 11, 1456506000, 1457283600, NULL, NULL, 'mong muốn tham gia khoa hoc pmbok ?\nnhưng chủa biết yêu cầu như thế nào đẻ dc đăng ký ?\nnhờ bên anh chị tư vấn giúp ?', NULL, 1456363810, 'vi', 1, 3, 106, NULL),
(33, 'Nguyễn Duy Trinh', NULL, 'nguyenduytrinh78@yahoo.com', '0913151211', '', NULL, '', '', NULL, NULL, NULL, 1, 1457024400, 1458320400, 'Tại văn phòng Stevbros', NULL, '', NULL, 1456718843, 'vi', 1, 2, 296, NULL),
(34, 'Nguyen Minh Duc', NULL, 'ducnm@acb.com.vn', '0919977907', '', NULL, '', '', NULL, NULL, NULL, 2, 1457110800, 1458320400, 'Chuyển khoản', NULL, '', NULL, 1456741222, 'vi', 1, 2, 296, NULL),
(35, 'Pham Thi My Linh', NULL, 'linh.pham@thegrandhotram.com', '0984430107', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'Thong tin khoa hoc PMBOK cho ca nhan, muc dich hoc de di lam.', NULL, 1456888745, 'vi', 1, 1, NULL, NULL),
(36, 'Trần Thế Vương', NULL, 'mrking268@gmail.com', '0908235554', '', NULL, '', '', NULL, NULL, NULL, 1, 1457110800, 1458320400, 'Chuyển khoản', NULL, '', NULL, 1456976867, 'vi', 1, 2, 296, NULL),
(37, 'Nguyễn Mạnh Hà', NULL, 'hanm@vivas.vn', '0936211113', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'Hi\nTôi muốn tham gia lớp quản trị dự án.\nBan cho Tôi xin thông tin:\n1. tiền học\n2. thời gian học: (Tôi đang đi làm nên muốn tham gia ngoài giờ hành chính)\n3. địa điểm học:\n4.Plan học(giáo trình)\n5. Thi lấy chứng chỉ.', NULL, 1457944733, 'vi', 1, 1, NULL, NULL),
(38, 'Lê Minh Lan', NULL, 'lanle@insightstud.io', '01663151382', 'Triệu Việt Vương, Hà Nội', NULL, 'Insight Studio', NULL, '', 'Marketing', NULL, 11, 1457974800, 1459357200, NULL, NULL, '', NULL, 1457950982, 'vi', 1, 3, 86, NULL),
(39, 'Lê Minh Lan', NULL, 'lanle@insightstud.io', '01663151382', 'Xã Đàn 2', NULL, 'Insight Studio', NULL, '', 'Marketing', NULL, 12, 1457974800, 1459357200, NULL, NULL, '', NULL, 1457951770, 'vi', 1, 3, 86, NULL),
(40, 'test', NULL, 'test@yahoo.com', '0915687456', '', NULL, 'test', '', NULL, NULL, NULL, 1, 1458320400, 1458320400, 'Chuyển khoản', NULL, 'test', NULL, 1457971118, 'vi', 1, 2, 296, NULL),
(41, 'Trần Hoàng Ý Yên', NULL, 'thyyen@vinamilk.com.vn', '0908434782', '10 Tân Trào, P. Tân Phú, Quận 7', NULL, 'Vinamilk', '', NULL, NULL, NULL, 1, 1459789200, 1463158800, 'Chuyển khoản', NULL, 'xin cho biết học phi của khóa học này. cảm ơn', NULL, 1458011904, 'vi', 1, 2, 297, NULL),
(42, 'Nguyễn Thừa Minh', NULL, 'nguyenthuaminh@gmail.com', '0908037984', '', NULL, '', '', NULL, NULL, NULL, 1, 1458406800, 1460134800, 'Tại văn phòng Stevbros', NULL, '', NULL, 1458221759, 'vi', 1, 2, 296, NULL),
(43, 'Nam Nguyen', NULL, 'nguyenduynamk@gmail.com', '0902935767', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'Tôi quan tâm đến khóa học QLDA của trung tâm. Nhưng tìm hiểu trên website thì không thấy thông tin về học phí. Trung tâm có thể cung cấp cho tôi thông tin về học phí các khóa học được không?\nXin cảm ơn.', NULL, 1458548686, 'vi', 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `web_content`
--

CREATE TABLE IF NOT EXISTS `web_content` (
`id` int(11) NOT NULL,
  `arr_img` varchar(350) NOT NULL,
  `content` text NOT NULL,
  `more` text,
  `more2` text NOT NULL,
  `more3` text,
  `more4` text,
  `more5` text,
  `price_cost` varchar(10) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL,
  `header_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `web_entrytest`
--

CREATE TABLE IF NOT EXISTS `web_entrytest` (
`id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `question` text NOT NULL,
  `correct` int(1) NOT NULL,
  `notes` varchar(250) NOT NULL,
  `answers_1` varchar(250) NOT NULL,
  `answers_2` varchar(250) NOT NULL,
  `answers_3` varchar(250) NOT NULL,
  `answers_4` varchar(250) NOT NULL,
  `_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `menu_id` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_entrytest`
--

INSERT INTO `web_entrytest` (`id`, `name`, `question`, `correct`, `notes`, `answers_1`, `answers_2`, `answers_3`, `answers_4`, `_order`, `status`, `menu_id`) VALUES
(105, 'A45', '<p>A buyer and seller have a teaming agreement. Which of the following BEST describes their relationship?</p>', 4, '<p>Correct answer is D.</p>', 'The seller and buyer both have team members on every project team.', 'The buyer can dictate the structure of the seller’s project teams.', 'The seller is free to dictate deliverables and contract terms.', 'The seller has input into project decisions, and representation in the buyer’s management structure.', 0, 1, ',1,'),
(106, 'A46', '<p>You’re a project manager planning a project that requires that you hire a contractor. Before you can find sellers, you need to develop a document that defines the portion of the work that the contractor will do. Which of the following is NOT true about this document?</p>', 3, '<p>Correct answer is C.</p>', 'It’s based on the project scope baseline.', 'It includes exact specifications for the deliverables the contract will produce.', 'Its terms are either fixed price or cost reimbursable.', 'It must completely define the work that the contractor must do.', 0, 1, ',1,'),
(107, 'A47', '<p>Tom, a stakeholder in an IT project, has asked to be included in all of the status meetings and team communications. While he is not actually on the team or accountable for any deliverables, he cares about the outcome of the project and wants to be kept in the loop. Where would you plot him on a power/interest grid?</p>', 3, '<p>Correct answer is C.</p>', 'High power, high interest', 'High power, low interest', 'Low power, high interest', 'Low power, low interest', 0, 1, ',1,'),
(108, 'A48', '<p>A project manager for an industrial design project is reviewing the work performance data that’s being produced by his project team to determine whether or not changes need to be made in Stakeholder Management. When he finds a change, he writes up a request and incorporates all approved requests into the Project Management plan, project documents, and lessons learned. What process is he performing?</p>', 4, '<p>Correct answer is D.</p>', 'Plan Stakeholder Management', 'Identify Stakeholders', 'Manage Stakeholder Engagement', 'Control Stakeholder Engagement', 0, 1, ',1,'),
(109, 'A49', '<p>Joanne, the sponsor for a software project, has been working with the senior management team in her company to cancel the project even though it’s only just begun its planning processes. Which is the BEST classification for Joanne’s engagement with the project?</p>', 2, '<p>Correct answer is B.</p>', 'Unaware', 'Resistant', 'Supportive', 'Leading', 0, 1, ',1,'),
(110, 'A50', '<p>You’ve given a presentation for your local PMI chapter meeting. This is an example of what?</p>', 2, '<p>Correct answer is B</p>', 'A PDU', 'Contributing to the Project Management Body of Knowledge', 'Donating to charity', 'Volunteering', 0, 1, ',1,');

-- --------------------------------------------------------

--
-- Table structure for table `web_entrytest_data`
--

CREATE TABLE IF NOT EXISTS `web_entrytest_data` (
`id` int(11) NOT NULL,
  `entrytest_id` int(11) NOT NULL,
  `answers` int(1) NOT NULL,
  `datetime` bigint(10) NOT NULL,
  `random_key` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `web_entrytest_user`
--

CREATE TABLE IF NOT EXISTS `web_entrytest_user` (
`id` int(11) NOT NULL,
  `_table` varchar(30) NOT NULL,
  `table_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `random_key` bigint(11) NOT NULL,
  `result` float DEFAULT NULL,
  `sendmail` tinyint(1) NOT NULL DEFAULT '0',
  `datetime` bigint(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `web_event_form`
--

CREATE TABLE IF NOT EXISTS `web_event_form` (
`id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `img` varchar(20) DEFAULT NULL,
  `subject` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `notification` text NOT NULL,
  `email` varchar(60) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `type_id` int(2) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_event_form`
--

INSERT INTO `web_event_form` (`id`, `name`, `img`, `subject`, `content`, `notification`, `email`, `type`, `type_id`, `status`) VALUES
(20, 'Final test', '', 'Announcement: Final test', '<p>Dear {_name},</p>\n\n<p>Greetings from Stevbros Training and Consultancy - Global PMI® Registered Education Provider ID 3807.</p>\n\n<p><span style="line-height: 1.6em;">Please&nbsp;access the following link to do Final Test&nbsp;as soon as you can:&nbsp;</span></p>\n\n<p style="margin-left: 40px;"><strong><span style="font-size: 13px; line-height: 20.8px;">{_link}</span></strong></p>\n\n<p>Once again, thank you very much and wish you great success in your professional career.</p>\n\n<p>Best regards,<br />\n&nbsp;</p>\n\n<p><span style="color:#808080;"><em>Stevbros Training &amp; Consultancy, Global PMI R.E.P</em><br />\n<span style="line-height: 1.6em;">Email: support@stevbros.com&nbsp;</span><br />\n<span style="line-height: 1.6em;">Office: 7th Floor, CMARD2, 45 Dinh Tien Hoang Street, Ben Nghe Ward, District 1, HCMC, Vietnam</span><br />\n<span style="line-height: 1.6em;">Phone: +84 8 3911 7362 -&nbsp;</span></span><span style="line-height: 1.6em;"><span style="color:#808080;">Website:&nbsp;</span><a href="http://www.stevbros.com"><span style="color:#808080;">www.stevbros.com</span></a></span></p>\n\n<p>Making Project Management Indispensable for Business Results.®</p>\n\n<p><span style="font-size:10px;"><span style="line-height: 1.6em;">This email is sent automatically. Please do not reply. Contact us at <a href="mailto:support@stevbros.com">support@stevbros.com</a> for further information</span></span></p>\n\n<p>&nbsp;</p>', '', 'support@dayamthuc.vn', 2, 3, 1),
(21, 'Pass: Hoàn thành bài test', '', 'Pass: Hoàn thành bài test', '<p>Dear {_name},</p>\n\n<p>Hoàn thành bài final test</p>\n\n<p>Kết quả: {_result}</p>', '', '', 2, 3, 1),
(22, 'Fail final test', '', 'Fail final test', '<p>Dear {_name},</p>\n\n<p>Fail final test</p>\n\n<p>Kết quả: {_result}</p>\n\n<p>Link làm lại bài test: {_link}</p>', '', '', 2, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_header`
--

CREATE TABLE IF NOT EXISTS `web_header` (
`id` int(3) NOT NULL,
  `name` varchar(200) NOT NULL,
  `name_alias` varchar(200) NOT NULL,
  `url` varchar(250) NOT NULL,
  `img` varchar(50) DEFAULT NULL,
  `title` varchar(200) NOT NULL,
  `description` varchar(300) NOT NULL,
  `tags` varchar(150) NOT NULL,
  `code` varchar(30) DEFAULT NULL,
  `course_code` varchar(20) DEFAULT NULL,
  `pdu` varchar(10) DEFAULT NULL,
  `parent` int(5) NOT NULL DEFAULT '0',
  `_order` int(5) NOT NULL DEFAULT '0',
  `other` varchar(200) DEFAULT NULL,
  `authors` varchar(50) DEFAULT NULL,
  `datetime` bigint(10) NOT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `properties` tinyint(1) NOT NULL DEFAULT '0',
  `type_id` int(2) NOT NULL,
  `position_id` varchar(20) DEFAULT NULL,
  `menu_id` varchar(50) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_header`
--

INSERT INTO `web_header` (`id`, `name`, `name_alias`, `url`, `img`, `title`, `description`, `tags`, `code`, `course_code`, `pdu`, `parent`, `_order`, `other`, `authors`, `datetime`, `lang`, `status`, `properties`, `type_id`, `position_id`, `menu_id`) VALUES
(1, 'Final test', 'final-test', '', '', 'Final test', '', 'final test', NULL, NULL, NULL, 0, 0, NULL, NULL, 1459064400, 'vi', 1, 1, 6, ',20,', NULL),
(2, 'PMP® Exam Prep', 'pmp-exam-prep', '', '', 'PMP® Exam Prep', '', 'pmp® exam prep', '', 'PMP35', '35', 0, 0, NULL, NULL, 1459065240, 'vi', 1, 2, 3, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `web_ip_address`
--

CREATE TABLE IF NOT EXISTS `web_ip_address` (
`id` int(11) NOT NULL,
  `ip_address` varchar(20) NOT NULL,
  `datetime` bigint(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_ip_address`
--

INSERT INTO `web_ip_address` (`id`, `ip_address`, `datetime`) VALUES
(29, '115.78.128.150', 1451968066),
(30, '115.78.128.150', 1451968119),
(31, '115.78.128.150', 1451968222),
(32, '115.78.128.150', 1451982804),
(33, '115.78.128.150', 1451983791),
(34, '115.78.128.150', 1452070084),
(35, '115.78.128.150', 1452070185),
(36, '115.78.128.150', 1452070232),
(39, '115.78.128.150', 1452070399),
(40, '115.78.128.150', 1452070504),
(41, '115.78.128.150', 1452252448),
(42, '115.78.128.150', 1452252533),
(43, '115.78.128.150', 1452252603),
(44, '115.78.128.150', 1452252715),
(45, '115.78.128.150', 1452252803),
(46, '115.78.128.150', 1452252875),
(47, '115.78.128.150', 1452316976),
(48, '115.78.128.150', 1452320031),
(49, '115.78.128.150', 1452320158),
(50, '115.78.128.150', 1452512436),
(51, '148.87.19.206', 1452596092),
(52, '115.78.128.150', 1452678431),
(53, '14.161.8.56', 1452928134),
(54, '113.163.122.239', 1453190145),
(55, '42.114.38.219', 1453221817),
(56, '210.245.31.7', 1453262661),
(57, '115.135.55.21', 1453952538),
(58, '58.186.62.32', 1454947079),
(59, '42.119.97.92', 1455337097),
(60, '27.2.128.4', 1455382928),
(61, '42.115.136.99', 1455545546),
(62, '202.68.209.208', 1455701716),
(63, '42.114.197.170', 1455786766),
(64, '203.162.164.102', 1455849944),
(65, '115.78.128.89', 1455853869),
(66, '113.161.74.196', 1456115247),
(67, '113.20.115.13', 1456121694),
(68, '1.52.27.253', 1456160118),
(69, '14.161.2.63', 1456202860),
(70, '113.20.115.49', 1456216253),
(71, '118.70.16.71', 1456218393),
(72, '115.78.232.159', 1456282600),
(73, '222.252.14.164', 1456311285),
(74, '116.100.67.251', 1456324070),
(75, '14.169.190.46', 1456325507),
(76, '115.78.165.239', 1456368093),
(77, '115.78.236.84', 1456718916),
(78, '182.237.20.126', 1456741385),
(79, '115.75.22.203', 1456888799),
(80, '203.205.63.8', 1456976947),
(81, '42.119.164.161', 1457628744),
(82, '113.190.240.238', 1457945096),
(83, '42.116.47.21', 1457951083),
(84, '42.116.47.21', 1457951870),
(85, '183.81.15.243', 1457971428),
(86, '222.255.206.105', 1458012273),
(87, '115.78.128.150', 1458118180),
(88, '14.186.208.147', 1458221912),
(89, '27.3.238.199', 1458548958);

-- --------------------------------------------------------

--
-- Table structure for table `web_khaosat`
--

CREATE TABLE IF NOT EXISTS `web_khaosat` (
`id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `answer` text NOT NULL,
  `_table` varchar(30) NOT NULL,
  `table_date` bigint(10) NOT NULL,
  `datetime` bigint(10) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_khaosat`
--

INSERT INTO `web_khaosat` (`id`, `name`, `answer`, `_table`, `table_date`, `datetime`) VALUES
(1, 'question1', 'Question 1', 'web_contact', 1452226368, 1453689485),
(2, 'question2', 'Question 2', 'web_contact', 1452226368, 1453689485),
(3, 'question3', 'Yes (có)', 'web_contact', 1452226368, 1453689485),
(4, 'question4_1', ',For promotion (Để thăng tiến),New project management methodology (Phương pháp luận quản lý dự án mới),Need basic job skills (Cần kỹ năng công việc cơ bản),', 'web_contact', 1452226368, 1453689485),
(5, 'question4_2', 'Question 4 other', 'web_contact', 1452226368, 1453689485),
(6, 'question5_1', 'Average (Vừa)', 'web_contact', 1452226368, 1453689485),
(7, 'question5_2', 'Average (Vừa)', 'web_contact', 1452226368, 1453689485),
(8, 'question5_3', 'Average (Vừa)', 'web_contact', 1452226368, 1453689485),
(9, 'question5_4', 'Average (Vừa)', 'web_contact', 1452226368, 1453689485),
(10, 'question5_5', 'Average (Vừa)', 'web_contact', 1452226368, 1453689485),
(11, 'question5_6', 'Average (Vừa)', 'web_contact', 1452226368, 1453689485),
(12, 'question6', 'Question 6', 'web_contact', 1452226368, 1453689485),
(13, 'question7', 'Question 7', 'web_contact', 1452226368, 1453689485),
(14, 'question8', 'Question 8', 'web_contact', 1452226368, 1453689485),
(15, 'question1', 'Question 1', 'web_contact', 1453262610, 1453717064),
(16, 'question2', 'Question 2', 'web_contact', 1453262610, 1453717064),
(17, 'question3', 'Yes (có)', 'web_contact', 1453262610, 1453717064),
(18, 'question4_1', ',For promotion (Để thăng tiến),New project management methodology (Phương pháp luận quản lý dự án mới),Need basic job skills (Cần kỹ năng công việc cơ bản),', 'web_contact', 1453262610, 1453717064),
(19, 'question4_2', 'Question 4 other', 'web_contact', 1453262610, 1453717064),
(20, 'question5_1', 'Good (Tốt)', 'web_contact', 1453262610, 1453717064),
(21, 'question5_2', 'Average (Vừa)', 'web_contact', 1453262610, 1453717064),
(22, 'question5_3', 'Average (Vừa)', 'web_contact', 1453262610, 1453717064),
(23, 'question5_4', 'Average (Vừa)', 'web_contact', 1453262610, 1453717064),
(24, 'question5_5', 'Average (Vừa)', 'web_contact', 1453262610, 1453717064),
(25, 'question5_6', 'Average (Vừa)', 'web_contact', 1453262610, 1453717064),
(26, 'question6', 'Question 6', 'web_contact', 1453262610, 1453717064),
(27, 'question7', 'Question 7', 'web_contact', 1453262610, 1453717064),
(28, 'question8', 'Question 8', 'web_contact', 1453262610, 1453717064),
(29, 'question1', 'Question 1', 'mn_customer', 0, 1456635315),
(30, 'question2', 'Question 2', 'mn_customer', 0, 1456635315),
(31, 'question3', 'Yes (có)', 'mn_customer', 0, 1456635315),
(32, 'question4_1', ',New project management methodology (Phương pháp luận quản lý dự án mới),Need basic job skills (Cần kỹ năng công việc cơ bản),', 'mn_customer', 0, 1456635315),
(33, 'question4_2', 'test', 'mn_customer', 0, 1456635315),
(34, 'question5_1', 'Good (Tốt)', 'mn_customer', 0, 1456635315),
(35, 'question5_2', 'Average (Vừa)', 'mn_customer', 0, 1456635315),
(36, 'question5_3', 'Poor (Không tốt)', 'mn_customer', 0, 1456635315),
(37, 'question5_4', 'Average (Vừa)', 'mn_customer', 0, 1456635315),
(38, 'question5_5', 'Good (Tốt)', 'mn_customer', 0, 1456635315),
(39, 'question5_6', 'Average (Vừa)', 'mn_customer', 0, 1456635315),
(40, 'question6', 'Question 6', 'mn_customer', 0, 1456635315),
(41, 'question7', 'Question 7', 'mn_customer', 0, 1456635315),
(42, 'question8', 'Question 8', 'mn_customer', 0, 1456635315),
(43, 'question1', 'tra loi cau 1', 'mn_customer', 1456387659, 1456636071),
(44, 'question2', 'tra loi cau 2', 'mn_customer', 1456387659, 1456636071),
(45, 'question3', 'Yes (có)', 'mn_customer', 1456387659, 1456636071),
(46, 'question4_1', ',For promotion (Để thăng tiến),New project management methodology (Phương pháp luận quản lý dự án mới),Need basic job skills (Cần kỹ năng công việc cơ bản),Want additional skills (Muốn học thêm kỹ năng bổ sung),Need skills for job (Cần kỹ năng cho công việc),', 'mn_customer', 1456387659, 1456636071),
(47, 'question4_2', 'test', 'mn_customer', 1456387659, 1456636071),
(48, 'question5_1', 'Good (Tốt)', 'mn_customer', 1456387659, 1456636071),
(49, 'question5_2', 'Average (Vừa)', 'mn_customer', 1456387659, 1456636071),
(50, 'question5_3', 'Poor (Không tốt)', 'mn_customer', 1456387659, 1456636071),
(51, 'question5_4', 'Average (Vừa)', 'mn_customer', 1456387659, 1456636071),
(52, 'question5_5', 'Good (Tốt)', 'mn_customer', 1456387659, 1456636071),
(53, 'question5_6', 'Average (Vừa)', 'mn_customer', 1456387659, 1456636071),
(54, 'question6', 'tra loi cau 6', 'mn_customer', 1456387659, 1456636071),
(55, 'question7', 'tra loi cau 7', 'mn_customer', 1456387659, 1456636071),
(56, 'question8', 'tra loi cau 8', 'mn_customer', 1456387659, 1456636071);

-- --------------------------------------------------------

--
-- Table structure for table `web_language`
--

CREATE TABLE IF NOT EXISTS `web_language` (
`id` int(3) NOT NULL,
  `name` varchar(20) NOT NULL,
  `code` varchar(10) NOT NULL,
  `_order` int(3) DEFAULT '0',
  `status` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_language`
--

INSERT INTO `web_language` (`id`, `name`, `code`, `_order`, `status`) VALUES
(1, 'Việt Nam', 'vi', 1, 1),
(2, 'English', 'en', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `web_language_var`
--

CREATE TABLE IF NOT EXISTS `web_language_var` (
`id` int(3) NOT NULL,
  `name` varchar(30) NOT NULL,
  `value` varchar(200) NOT NULL,
  `_order` int(3) NOT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_language_var`
--

INSERT INTO `web_language_var` (`id`, `name`, `value`, `_order`, `lang`, `status`) VALUES
(1, 'viewmore', 'Chi tiết', 0, 'vi', 1),
(2, 'address', 'Địa chỉ', 0, 'vi', 1),
(3, 'tel', 'Điện thoại', 0, 'vi', 1),
(4, 'viewmore', 'View more', 0, 'en', 1),
(5, 'address', 'Address', 0, 'en', 1),
(6, 'tel', 'Phone', 0, 'en', 1),
(7, 'name', 'Tên đầy đủ', 0, 'vi', 1),
(8, 'name', 'Name', 0, 'en', 1),
(9, 'message', 'Message', 0, 'en', 1),
(10, 'message', 'Nội dung', 0, 'vi', 1),
(11, 'customer_info', 'Thông tin khách hàng', 0, 'vi', 1),
(12, 'customer_info', 'Customer information', 0, 'en', 1),
(13, 'send', 'Gửi', 0, 'vi', 1),
(14, 'send', 'Send', 0, 'en', 1),
(15, 'update', 'Đang cập nhật...', 0, 'vi', 1),
(16, 'update', 'Update...', 0, 'en', 1),
(17, 'other_post', 'Bài viết khác', 0, 'vi', 1),
(18, 'other_post', 'Other post', 0, 'en', 1),
(19, 'other_course', 'Các khóa học liên quan', 0, 'vi', 1),
(20, 'other_course', 'Other course', 0, 'en', 1),
(21, 'login', 'Login', 0, 'en', 1),
(22, 'logout', 'Logout', 0, 'en', 1),
(23, 'username', 'Username', 0, 'en', 1),
(24, 'password', 'Password', 0, 'en', 1),
(25, 'remember', 'Remember', 0, 'en', 1),
(26, 'register', 'Register', 0, 'en', 1),
(27, 'forgot_password', 'Forgot password', 0, 'en', 1),
(28, 'change_password', 'Change password', 0, 'en', 1),
(29, 'error_name', 'Input name', 0, 'en', 1),
(30, 'error_phone', 'Phone is not correct', 0, 'en', 1),
(31, 'error_email', 'Wrong email address', 0, 'en', 1),
(32, 'error_address', 'Input address', 0, 'en', 1),
(33, 'error_message', 'Your comment should be more than 10 characters', 0, 'en', 1),
(34, 'login', 'Đăng nhập', 0, 'vi', 1),
(35, 'logout', 'Thoát', 0, 'vi', 1),
(36, 'username', 'Tên đăng nhập', 0, 'vi', 1),
(37, 'password', 'Mật khẩu', 0, 'vi', 1),
(38, 'remember', 'Ghi nhớ', 0, 'vi', 1),
(39, 'register', 'Đăng ký', 0, 'vi', 1),
(40, 'forgot_password', 'Quên mật khẩu', 0, 'vi', 1),
(41, 'change_password', 'Đổi mật khẩu', 0, 'vi', 1),
(42, 'error_name', 'Nhập tên đầy đủ', 0, 'vi', 1),
(43, 'error_phone', 'Điện thoại chưa đúng', 0, 'vi', 1),
(44, 'error_email', 'Email chưa đúng', 0, 'vi', 1),
(45, 'error_address', 'Nhập địa chỉ', 0, 'vi', 1),
(46, 'error_message', 'Nội dung phải hơn 10 ký tự', 0, 'vi', 1),
(47, 'phone', 'Di động', 0, 'vi', 1),
(48, 'phone', 'Mobile', 0, 'en', 1),
(49, 'bottom_title', 'STEVBROS TRAINING & CONSULTANCY', 0, 'vi', 1),
(50, 'bottom_news', 'Bài viết mới', 0, 'vi', 1),
(51, 'bottom_link', 'Liên kết', 0, 'vi', 1),
(52, 'bottom_photo', 'FLICKR WIDGET', 0, 'vi', 1),
(53, 'bottom_title', 'STEVBROS TRAINING & CONSULTANCY', 0, 'en', 1),
(54, 'bottom_news', 'News post', 0, 'en', 1),
(55, 'bottom_link', 'Link', 0, 'en', 1),
(56, 'bottom_photo', 'FLICKR WIDGET', 0, 'en', 1),
(57, 'all_courses', 'Tất cả khóa học', 0, 'vi', 1),
(58, 'submission', 'Nộp hồ sơ dự tuyển', 0, 'vi', 1),
(59, 'request_for_service', 'Yêu cầu dịch vụ', 0, 'vi', 1),
(60, 'info_cv', 'Điền thông tin hồ sơ CV', 0, 'vi', 0),
(61, 'popular', 'Khóa học phổ biến', 0, 'vi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_listcity`
--

CREATE TABLE IF NOT EXISTS `web_listcity` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `deliverycosts` int(8) NOT NULL DEFAULT '0',
  `_order` int(2) DEFAULT '0',
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_listcity`
--

INSERT INTO `web_listcity` (`id`, `name`, `deliverycosts`, `_order`, `lang`, `status`) VALUES
(3, 'Hồ Chí Minh', 5000, 1, 'vi', 1),
(2, 'Hà Nội', 30000, 1, 'vi', 1),
(10, 'Yên Bái', 0, 0, 'vi', 1),
(11, 'Vĩnh Phúc', 0, 0, 'vi', 1),
(12, 'Vĩnh Long', 0, 0, 'vi', 1),
(13, 'Tuyên Quang', 0, 0, 'vi', 1),
(14, 'Trà Vinh', 0, 0, 'vi', 1),
(15, 'Tiền Giang', 0, 0, 'vi', 1),
(16, 'Thừa Thiên Huế', 0, 0, 'vi', 1),
(17, 'Thanh Hóa', 0, 0, 'vi', 1),
(18, 'Thái Nguyên', 0, 0, 'vi', 1),
(19, 'Thái Bình', 0, 0, 'vi', 1),
(21, 'Tây Ninh', 0, 0, 'vi', 1),
(22, 'Sơn La', 0, 0, 'vi', 1),
(23, 'Sóc Trăng', 0, 0, 'vi', 1),
(24, 'Quảng Trị', 0, 0, 'vi', 1),
(25, 'Quảng Ninh', 0, 0, 'vi', 1),
(26, 'Quảng Ngãi', 0, 0, 'vi', 1),
(27, 'Quảng Nam', 0, 0, 'vi', 1),
(28, 'Quảng Bình', 0, 0, 'vi', 1),
(29, 'Phú Yên', 0, 0, 'vi', 1),
(30, 'Phú Thọ', 0, 0, 'vi', 1),
(31, 'Ninh Thuận', 0, 0, 'vi', 1),
(32, 'Ninh Bình', 0, 0, 'vi', 1),
(33, 'Nghệ An', 0, 0, 'vi', 1),
(34, 'Nam Định', 0, 0, 'vi', 1),
(35, 'Long An', 0, 0, 'vi', 1),
(36, 'Lào Cai', 0, 0, 'vi', 1),
(37, 'Lạng Sơn', 0, 0, 'vi', 1),
(38, 'Lâm Đồng', 0, 0, 'vi', 1),
(39, 'Lai Châu', 0, 0, 'vi', 1),
(40, 'Kon Tum', 0, 0, 'vi', 1),
(41, 'Kiên Giang', 0, 0, 'vi', 1),
(42, 'Khánh Hòa', 0, 0, 'vi', 1),
(43, 'Hưng Yên', 0, 0, 'vi', 1),
(44, 'Hòa Bình', 0, 0, 'vi', 1),
(45, 'Hậu Giang', 0, 0, 'vi', 1),
(46, 'Hải Dương', 0, 0, 'vi', 1),
(47, 'Hà Tĩnh', 0, 0, 'vi', 1),
(49, 'Hà Nam ', 0, 0, 'vi', 1),
(50, 'Hà Giang', 0, 0, 'vi', 1),
(51, 'Gia Lai', 0, 0, 'vi', 1),
(52, 'Đồng Tháp', 0, 0, 'vi', 1),
(53, 'Đồng Nai', 0, 0, 'vi', 1),
(54, 'Điện Biên', 0, 0, 'vi', 1),
(55, 'Đắk Nông', 0, 0, 'vi', 1),
(56, 'Đắk Lắk', 0, 0, 'vi', 1),
(57, 'Cao Bằng', 0, 0, 'vi', 1),
(58, 'Cà Mau', 0, 0, 'vi', 1),
(59, 'Bình Thuận', 0, 0, 'vi', 1),
(60, 'Bình Phước', 0, 0, 'vi', 1),
(61, 'Bình Dương', 0, 0, 'vi', 1),
(62, 'Bình Định', 0, 0, 'vi', 1),
(63, 'Bến Tre', 0, 0, 'vi', 1),
(64, 'Bắc Ninh', 0, 0, 'vi', 1),
(65, 'Bạc Liêu', 0, 0, 'vi', 1),
(66, 'Bắc Kạn', 0, 0, 'vi', 1),
(67, 'Bắc Giang', 0, 0, 'vi', 1),
(68, 'Bà Rịa - Vũng Tàu', 0, 0, 'vi', 1),
(69, 'An Giang', 0, 0, 'vi', 1),
(70, 'Hải Phòng', 0, 0, 'vi', 1),
(71, 'Đà Nẵng', 0, 0, 'vi', 1),
(72, 'Cần Thơ', 30000, 0, 'vi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_listdistricts`
--

CREATE TABLE IF NOT EXISTS `web_listdistricts` (
`id` int(3) NOT NULL,
  `name` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `deliverycosts` int(8) NOT NULL DEFAULT '0',
  `city_id` int(11) NOT NULL,
  `_order` int(3) DEFAULT '0',
  `lang` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=901 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `web_listdistricts`
--

INSERT INTO `web_listdistricts` (`id`, `name`, `deliverycosts`, `city_id`, `_order`, `lang`, `status`) VALUES
(127, 'Quận 1', 0, 3, 1, 'vi', 1),
(128, 'Quận 2', 0, 3, 2, 'vi', 1),
(129, 'Quận 3', 0, 3, 3, 'vi', 1),
(130, 'Quận 4', 0, 3, 4, 'vi', 1),
(131, 'Quận 5', 0, 3, 5, 'vi', 1),
(132, 'Quận 6', 0, 3, 6, 'vi', 1),
(133, 'Quận 7', 0, 3, 7, 'vi', 1),
(134, 'Quận 8', 0, 3, 8, 'vi', 1),
(135, 'Quận 9', 0, 3, 9, 'vi', 1),
(136, 'Quận 10', 0, 3, 10, 'vi', 1),
(137, 'Quận 11', 0, 3, 11, 'vi', 1),
(138, 'Quận 12', 0, 3, 12, 'vi', 1),
(139, 'Quận Phú Nhuận', 0, 3, 13, 'vi', 1),
(140, 'Quận Bình Thạnh', 0, 3, 14, 'vi', 1),
(141, 'Quận Tân Bình', 0, 3, 15, 'vi', 1),
(142, 'Quận Tân Phú', 0, 3, 16, 'vi', 1),
(143, 'Quận Gò Vấp', 0, 3, 17, 'vi', 1),
(144, 'Quận Thủ Đức', 0, 3, 18, 'vi', 1),
(145, 'Quận Bình Tân', 0, 3, 19, 'vi', 1),
(146, 'Huyện Bình Chánh', 10000, 3, 20, 'vi', 1),
(147, 'Huyện Củ Chi', 0, 3, 21, 'vi', 1),
(149, 'Huyện Nhà Bè', 0, 3, 22, 'vi', 1),
(150, 'Huyện Cần Giờ', 0, 3, 23, 'vi', 1),
(856, 'Huyện Hóc Môn', 5000, 3, 24, 'vi', 1),
(113, 'Từ Liêm', 10000, 2, 1, 'vi', 1),
(114, 'Thanh Trì', 0, 2, 2, 'vi', 1),
(115, 'Sóc Sơn', 0, 2, 3, 'vi', 1),
(116, 'Gia Lâm', 0, 2, 4, 'vi', 1),
(117, 'Đông Anh', 0, 2, 5, 'vi', 1),
(118, 'Long Biên', 0, 2, 6, 'vi', 1),
(119, 'Hoàng Mai', 0, 2, 7, 'vi', 1),
(120, 'Cầu Giấy', 0, 2, 8, 'vi', 1),
(121, 'Tây Hồ', 0, 2, 9, 'vi', 1),
(122, 'Thanh Xuân', 0, 2, 10, 'vi', 1),
(123, 'Hai Bà Trưng', 0, 2, 11, 'vi', 1),
(124, 'Đống Đa', 0, 2, 12, 'vi', 1),
(125, 'Ba Đình', 0, 2, 13, 'vi', 1),
(126, 'Hoàn Kiếm', 0, 2, 14, 'vi', 1),
(450, 'Mê Linh', 0, 2, 15, 'vi', 1),
(840, 'Vân Điền', 0, 2, 16, 'vi', 1),
(857, 'Ba Vì', 0, 2, 17, 'vi', 1),
(858, 'Chương Mỹ', 0, 2, 18, 'vi', 1),
(859, 'Đan Phượng', 0, 2, 19, 'vi', 1),
(860, 'Hà Đông', 0, 2, 20, 'vi', 1),
(861, 'Hoài Đức', 0, 2, 21, 'vi', 1),
(862, 'Mỹ Đức', 0, 2, 22, 'vi', 1),
(863, 'Phú Xuyên', 0, 2, 23, 'vi', 1),
(864, 'Phúc Thọ', 0, 2, 24, 'vi', 1),
(865, 'Quốc Oai', 0, 2, 25, 'vi', 1),
(866, 'Sơn Tây', 0, 2, 26, 'vi', 1),
(867, 'Thạch Thất', 0, 2, 27, 'vi', 1),
(868, 'Thanh Oai', 0, 2, 28, 'vi', 1),
(869, 'Thường Tín', 0, 2, 29, 'vi', 1),
(871, 'Ứng Hòa', 0, 2, 30, 'vi', 1),
(626, 'Lục Yên', 0, 10, 1, 'vi', 1),
(627, 'Mù Căng Chải', 0, 10, 2, 'vi', 1),
(628, 'Trạm Tấu', 0, 10, 3, 'vi', 1),
(629, 'Trấn Yên', 0, 10, 4, 'vi', 1),
(630, 'Văn Chấn', 0, 10, 5, 'vi', 1),
(631, 'Văn Yên', 0, 10, 6, 'vi', 1),
(632, 'Yên Bái', 0, 10, 7, 'vi', 1),
(633, 'Yên Bình', 0, 10, 8, 'vi', 1),
(448, 'Bình Xuyên', 0, 11, 1, 'vi', 1),
(449, 'Lập Thạch', 0, 11, 2, 'vi', 1),
(451, 'Tam Dương', 0, 11, 3, 'vi', 1),
(452, 'Vĩnh Tường', 0, 11, 4, 'vi', 1),
(453, 'Vĩnh Yên', 0, 11, 5, 'vi', 1),
(454, 'Yên Lạc', 0, 11, 6, 'vi', 1),
(850, 'Phúc Yên', 0, 11, 7, 'vi', 1),
(853, 'Tam Đảo', 0, 11, 8, 'vi', 1),
(812, 'Bình Minh', 0, 12, 1, 'vi', 1),
(813, 'Long Hồ', 0, 12, 2, 'vi', 1),
(814, 'Mang Thít', 0, 12, 3, 'vi', 1),
(815, 'Tam Bình', 0, 12, 4, 'vi', 1),
(816, 'Trà Ôn', 0, 12, 5, 'vi', 1),
(817, 'Vĩnh Long', 0, 12, 6, 'vi', 1),
(818, 'Vũng Liêm', 0, 12, 7, 'vi', 1),
(620, 'Chiêm Hóa', 0, 13, 1, 'vi', 1),
(621, 'Hàm Yên', 0, 13, 2, 'vi', 1),
(622, 'Na Hang', 0, 13, 3, 'vi', 1),
(623, 'Sơn Dương', 0, 13, 4, 'vi', 1),
(624, 'Tuyên Quang', 0, 13, 5, 'vi', 1),
(625, 'Yên Sơn', 0, 13, 6, 'vi', 1),
(440, 'Càng Long', 0, 14, 1, 'vi', 1),
(441, 'Cầu Kè', 0, 14, 2, 'vi', 1),
(442, 'Cầu Ngang', 0, 14, 3, 'vi', 1),
(443, 'Châu Thành', 0, 14, 4, 'vi', 1),
(444, 'Duyên Hải', 0, 14, 5, 'vi', 1),
(445, 'Tiểu Cần', 0, 14, 6, 'vi', 1),
(446, 'Trà Cú', 0, 14, 7, 'vi', 1),
(447, 'Trà Vinh', 0, 14, 8, 'vi', 1),
(803, 'Cái Bè', 0, 15, 1, 'vi', 1),
(804, 'Cai Lậy', 0, 15, 2, 'vi', 1),
(805, 'Châu Thành', 0, 15, 3, 'vi', 1),
(806, 'Chợ Gạo', 0, 15, 4, 'vi', 1),
(807, 'Gò Công', 0, 15, 5, 'vi', 1),
(808, 'Gò Công Đông', 0, 15, 6, 'vi', 1),
(809, 'Gò Công Tây', 0, 15, 7, 'vi', 1),
(810, 'Mỹ Tho', 0, 15, 8, 'vi', 1),
(811, 'Tân Phước', 0, 15, 9, 'vi', 1),
(423, 'A Lưới', 0, 16, 1, 'vi', 1),
(424, 'Huế', 0, 16, 2, 'vi', 1),
(425, 'Hương Thủy', 0, 16, 3, 'vi', 1),
(426, 'Hương Trà', 0, 16, 4, 'vi', 1),
(427, 'Nam Đông', 0, 16, 5, 'vi', 1),
(428, 'Phong Điền', 0, 16, 6, 'vi', 1),
(429, 'Phú Lộc', 0, 16, 7, 'vi', 1),
(430, 'Phú Vang', 0, 16, 8, 'vi', 1),
(431, 'Quảng Điền', 0, 16, 9, 'vi', 1),
(776, 'Bá Thước', 0, 17, 1, 'vi', 1),
(777, 'Bỉm Sơn', 0, 17, 2, 'vi', 1),
(778, 'Cẩm Thủy', 0, 17, 3, 'vi', 1),
(779, 'Đông Sơn', 0, 17, 4, 'vi', 1),
(780, 'Hà Trung', 0, 17, 5, 'vi', 1),
(781, 'Hậu Lộc', 0, 17, 6, 'vi', 1),
(782, 'Hoằng Hóa', 0, 17, 7, 'vi', 1),
(783, 'Lang Chánh', 0, 17, 8, 'vi', 1),
(784, 'Mường Lát', 0, 17, 9, 'vi', 1),
(785, 'Nga Sơn', 0, 17, 10, 'vi', 1),
(786, 'Ngọc Lặc', 0, 17, 11, 'vi', 1),
(787, 'Như Thanh', 0, 17, 12, 'vi', 1),
(788, 'Như Xuân', 0, 17, 13, 'vi', 1),
(789, 'Nông Cống', 0, 17, 14, 'vi', 1),
(790, 'Quan Hóa', 0, 17, 15, 'vi', 1),
(791, 'Quan Sơn', 0, 17, 16, 'vi', 1),
(792, 'Quảng Xương', 0, 17, 17, 'vi', 1),
(793, 'Sầm Sơn', 0, 17, 18, 'vi', 1),
(794, 'Thạch Thành', 0, 17, 19, 'vi', 1),
(795, 'Thanh Hóa', 0, 17, 20, 'vi', 1),
(796, 'Thọ Xuân', 0, 17, 21, 'vi', 1),
(797, 'Thường Xuân', 0, 17, 22, 'vi', 1),
(798, 'Tĩnh Gia', 0, 17, 23, 'vi', 1),
(799, 'Thiệu Hóa', 0, 17, 24, 'vi', 1),
(800, 'Triệu Sơn', 0, 17, 25, 'vi', 1),
(801, 'Vĩnh Lộc', 0, 17, 26, 'vi', 1),
(802, 'Yên Định', 0, 17, 27, 'vi', 1),
(611, 'Đại Từ', 0, 18, 1, 'vi', 1),
(612, 'Định Hóa', 0, 18, 2, 'vi', 1),
(613, 'Đồng Hỷ', 0, 18, 3, 'vi', 1),
(614, 'Phổ Yên', 0, 18, 4, 'vi', 1),
(615, 'Phú Bình', 0, 18, 5, 'vi', 1),
(616, 'Phú Lương', 0, 18, 6, 'vi', 1),
(617, 'Sông Công', 0, 18, 7, 'vi', 1),
(618, 'Thái Nguyên', 0, 18, 8, 'vi', 1),
(619, 'Võ Nhai', 0, 18, 9, 'vi', 1),
(432, 'Đông Hưng', 0, 19, 1, 'vi', 1),
(433, 'Hưng Hà', 0, 19, 2, 'vi', 1),
(434, 'Kiến Xương', 0, 19, 3, 'vi', 1),
(435, 'Quỳnh Phụ', 0, 19, 4, 'vi', 1),
(436, 'Thái Bình', 0, 19, 5, 'vi', 1),
(437, 'Thái Thụy', 0, 19, 6, 'vi', 1),
(438, 'Tiền Hải', 0, 19, 7, 'vi', 1),
(439, 'Vũ Thư', 0, 19, 8, 'vi', 1),
(602, 'Bến Cầu', 0, 21, 1, 'vi', 1),
(603, 'Châu Thành', 0, 21, 2, 'vi', 1),
(604, 'Dương Minh Châu', 0, 21, 3, 'vi', 1),
(605, 'Gò Dầu', 0, 21, 4, 'vi', 1),
(606, 'Hòa Thành', 0, 21, 5, 'vi', 1),
(607, 'Tân Biên', 0, 21, 6, 'vi', 1),
(608, 'Tân Châu', 0, 21, 7, 'vi', 1),
(609, 'Tây Ninh', 0, 21, 8, 'vi', 1),
(610, 'Trảng Bàng', 0, 21, 9, 'vi', 1),
(766, 'Bắc Yên', 0, 22, 1, 'vi', 1),
(767, 'Mai Sơn', 0, 22, 2, 'vi', 1),
(768, 'Mộc Châu', 0, 22, 3, 'vi', 1),
(769, 'Muờng La', 0, 22, 4, 'vi', 1),
(770, 'Phù Yên', 0, 22, 5, 'vi', 1),
(771, 'Quỳnh Nhai', 0, 22, 6, 'vi', 1),
(772, 'Sơn La', 0, 22, 7, 'vi', 1),
(773, 'Sông Mã', 0, 22, 8, 'vi', 1),
(774, 'Thuận Châu', 0, 22, 9, 'vi', 1),
(775, 'Yên Châu', 0, 22, 10, 'vi', 1),
(874, 'Sốp Cộp', 0, 22, 11, 'vi', 1),
(595, 'Kế Sách', 0, 23, 1, 'vi', 1),
(596, 'Long Phú', 0, 23, 2, 'vi', 1),
(597, 'Mỹ Tú', 0, 23, 3, 'vi', 1),
(598, 'Mỹ Xuyên', 0, 23, 4, 'vi', 1),
(599, 'Sóc Trăng', 0, 23, 5, 'vi', 1),
(600, 'Thanh Trị', 0, 23, 6, 'vi', 1),
(601, 'Vĩnh Châu', 0, 23, 7, 'vi', 1),
(414, 'Cam Lộ', 0, 24, 1, 'vi', 1),
(415, 'Đa Krông', 0, 24, 2, 'vi', 1),
(416, 'Đông Hà', 0, 24, 3, 'vi', 1),
(417, 'Gio Linh', 0, 24, 4, 'vi', 1),
(418, 'Hải Lăng', 0, 24, 5, 'vi', 1),
(419, 'Hướng Hóa', 0, 24, 6, 'vi', 1),
(420, 'Quảng Trị', 0, 24, 7, 'vi', 1),
(421, 'Triệu Phong', 0, 24, 8, 'vi', 1),
(422, 'Vĩnh Linh', 0, 24, 9, 'vi', 1),
(753, 'Ba Chế', 0, 25, 1, 'vi', 1),
(754, 'Bình Liêu', 0, 25, 2, 'vi', 1),
(755, 'Cẩm Phả', 0, 25, 3, 'vi', 1),
(756, 'Cô Tô', 0, 25, 4, 'vi', 1),
(757, 'Đông Triều', 0, 25, 5, 'vi', 1),
(758, 'Hạ Long', 0, 25, 6, 'vi', 1),
(759, 'Hoành Bồ', 0, 25, 7, 'vi', 1),
(760, 'Móng Cái', 0, 25, 8, 'vi', 1),
(761, 'Quảng Hà', 0, 25, 9, 'vi', 1),
(762, 'Tiên Yên', 0, 25, 10, 'vi', 1),
(763, 'Uông Bí', 0, 25, 11, 'vi', 1),
(764, 'Vân Đồn', 0, 25, 12, 'vi', 1),
(765, 'Yên Hưng', 0, 25, 13, 'vi', 1),
(582, 'Ba Tơ', 0, 26, 1, 'vi', 1),
(583, 'Bình Sơn', 0, 26, 2, 'vi', 1),
(584, 'Đức Phổ', 0, 26, 3, 'vi', 1),
(585, 'Lý Sơn', 0, 26, 4, 'vi', 1),
(586, 'Minh Long', 0, 26, 5, 'vi', 1),
(587, 'Mộ Đức', 0, 26, 6, 'vi', 1),
(588, 'Nghĩa Hành', 0, 26, 7, 'vi', 1),
(589, 'Quãng Ngãi', 0, 26, 8, 'vi', 1),
(590, 'Sơn Hà', 0, 26, 9, 'vi', 1),
(591, 'Sơn Tây', 0, 26, 10, 'vi', 1),
(592, 'Sơn Tịnh', 0, 26, 11, 'vi', 1),
(593, 'Trà Bồng', 0, 26, 12, 'vi', 1),
(594, 'Tư Nghĩa', 0, 26, 13, 'vi', 1),
(400, 'Đại Lộc', 0, 27, 1, 'vi', 1),
(401, 'Điện Bàn', 0, 27, 2, 'vi', 1),
(402, 'Duy Xuyên', 0, 27, 3, 'vi', 1),
(403, 'Hiên', 0, 27, 4, 'vi', 1),
(404, 'Hiệp Đức', 0, 27, 5, 'vi', 1),
(405, 'Hội An', 0, 27, 6, 'vi', 1),
(406, 'Nam Giang', 0, 27, 7, 'vi', 1),
(407, 'Núi Thành', 0, 27, 8, 'vi', 1),
(408, 'Phước Sơn', 0, 27, 9, 'vi', 1),
(409, 'Quế Sơn', 0, 27, 10, 'vi', 1),
(410, 'Tam Kỳ', 0, 27, 11, 'vi', 1),
(411, 'Thăng Bình', 0, 27, 12, 'vi', 1),
(412, 'Tiên Phước', 0, 27, 13, 'vi', 1),
(413, 'Trà My', 0, 27, 14, 'vi', 1),
(747, 'Bố Trạch', 0, 28, 1, 'vi', 1),
(748, 'Đồng Hới', 0, 28, 2, 'vi', 1),
(749, 'Lệ Thủy', 0, 28, 3, 'vi', 1),
(750, 'Quảng Ninh', 0, 28, 4, 'vi', 1),
(751, 'Quảng Trạch', 0, 28, 5, 'vi', 1),
(752, 'Tuyên Hóa', 0, 28, 6, 'vi', 1),
(880, 'Minh Hóa', 0, 28, 7, 'vi', 1),
(576, 'Đồng Xuân', 0, 29, 1, 'vi', 1),
(577, 'Sơn Hòa', 0, 29, 2, 'vi', 1),
(578, 'Sông Cầu', 0, 29, 3, 'vi', 1),
(579, 'Sông Hinh', 0, 29, 4, 'vi', 1),
(580, 'Tuy An', 0, 29, 5, 'vi', 1),
(581, 'Tuy Hòa', 0, 29, 6, 'vi', 1),
(877, 'Đông Hòa', 0, 29, 7, 'vi', 1),
(878, 'Tây Hòa', 0, 29, 8, 'vi', 1),
(879, 'Phú Hòa', 0, 29, 9, 'vi', 1),
(388, 'Đoan Hùng', 0, 30, 1, 'vi', 1),
(389, 'Hạ Hòa', 0, 30, 2, 'vi', 1),
(390, 'Lâm Thao', 0, 30, 3, 'vi', 1),
(391, 'Phù Ninh', 0, 30, 4, 'vi', 1),
(392, 'Phú Thọ', 0, 30, 5, 'vi', 1),
(393, 'Sông Thao', 0, 30, 6, 'vi', 1),
(394, 'Tam Nông', 0, 30, 7, 'vi', 1),
(395, 'Thanh Ba', 0, 30, 8, 'vi', 1),
(396, 'Thanh Sơn', 0, 30, 9, 'vi', 1),
(397, 'Thanh Thủy', 0, 30, 10, 'vi', 1),
(398, 'Việt Trì', 0, 30, 11, 'vi', 1),
(399, 'Yên Lập', 0, 30, 12, 'vi', 1),
(875, 'Cẩm Khê', 0, 30, 13, 'vi', 1),
(876, 'Tân Sơn', 0, 30, 14, 'vi', 1),
(743, 'Ninh Hải', 0, 31, 1, 'vi', 1),
(744, 'Ninh Phước', 0, 31, 2, 'vi', 1),
(745, 'Ninh Sơn', 0, 31, 3, 'vi', 1),
(746, 'Phan Rang - Tháp Chàm', 0, 31, 4, 'vi', 1),
(568, 'Hoa Lư', 0, 32, 1, 'vi', 1),
(569, 'Kim Sơn', 0, 32, 2, 'vi', 1),
(571, 'Nho Quan', 0, 32, 3, 'vi', 1),
(572, 'Ninh Bình', 0, 32, 4, 'vi', 1),
(573, 'Tam Điệp', 0, 32, 5, 'vi', 1),
(574, 'Yên Khánh', 0, 32, 6, 'vi', 1),
(575, 'Yên Mô', 0, 32, 7, 'vi', 1),
(872, 'Gia Viễn', 0, 32, 8, 'vi', 1),
(369, 'Anh Sơn', 0, 33, 1, 'vi', 1),
(370, 'Con Cuông', 0, 33, 2, 'vi', 1),
(371, 'Cửa Lò', 0, 33, 3, 'vi', 1),
(372, 'Diễn Châu', 0, 33, 4, 'vi', 1),
(373, 'Đô Lương', 0, 33, 5, 'vi', 1),
(374, 'Hưng Nguyên', 0, 33, 6, 'vi', 1),
(375, 'Kỳ Sơn', 0, 33, 7, 'vi', 1),
(376, 'Nam Đàn', 0, 33, 8, 'vi', 1),
(377, 'Nghi Lộc', 0, 33, 9, 'vi', 1),
(378, 'Nghĩa Đàn', 0, 33, 10, 'vi', 1),
(379, 'Quế Phong', 0, 33, 11, 'vi', 1),
(380, 'Quỳ Châu', 0, 33, 12, 'vi', 1),
(381, 'Quỳ Hợp', 0, 33, 13, 'vi', 1),
(382, 'Quỳnh Lưu', 0, 33, 14, 'vi', 1),
(383, 'Tân Kỳ', 0, 33, 15, 'vi', 1),
(384, 'Thanh Chương', 0, 33, 16, 'vi', 1),
(385, 'Tương Dương', 0, 33, 17, 'vi', 1),
(386, 'Vinh', 0, 33, 18, 'vi', 1),
(387, 'Yên Thành', 0, 33, 19, 'vi', 1),
(883, 'Thái Hòa', 0, 33, 20, 'vi', 1),
(358, 'Giao Thủy', 0, 34, 1, 'vi', 1),
(360, 'Hải Hậu', 0, 34, 2, 'vi', 1),
(361, 'Mỹ Lộc', 0, 34, 3, 'vi', 1),
(362, 'Nam Định', 0, 34, 4, 'vi', 1),
(363, 'Nam Trực', 0, 34, 5, 'vi', 1),
(364, 'Nghĩa Hưng', 0, 34, 6, 'vi', 1),
(365, 'Trực Ninh', 0, 34, 7, 'vi', 1),
(366, 'Vụ Bản', 0, 34, 8, 'vi', 1),
(367, 'Xuân Trường', 0, 34, 9, 'vi', 1),
(368, 'Ý Yên', 0, 34, 10, 'vi', 1),
(341, 'Bến Lức', 0, 35, 1, 'vi', 1),
(344, 'Cần Đước', 0, 35, 2, 'vi', 1),
(345, 'Cần Giuộc', 0, 35, 3, 'vi', 1),
(346, 'Châu Thành', 0, 35, 4, 'vi', 1),
(347, 'Đức Hòa', 0, 35, 5, 'vi', 1),
(348, 'Đức Huệ', 0, 35, 6, 'vi', 1),
(349, 'Mộc Hóa', 0, 35, 7, 'vi', 1),
(350, 'Tân An', 0, 35, 8, 'vi', 1),
(351, 'Tân Hưng', 0, 35, 9, 'vi', 1),
(352, 'Tân Thạnh', 0, 35, 10, 'vi', 1),
(354, 'Tân Trụ', 0, 35, 11, 'vi', 1),
(355, 'Thạnh Hóa', 0, 35, 12, 'vi', 1),
(356, 'Thủ Thừa', 0, 35, 13, 'vi', 1),
(357, 'Vĩnh Hưng', 0, 35, 14, 'vi', 1),
(849, 'Liên Hưng', 0, 35, 15, 'vi', 1),
(306, 'Bắc Hà', 0, 36, 1, 'vi', 1),
(307, 'Bảo Thắng', 0, 36, 2, 'vi', 1),
(308, 'Bảo Yên', 0, 36, 3, 'vi', 1),
(309, 'Bát Xát', 0, 36, 4, 'vi', 1),
(310, 'Cam Đường', 0, 36, 5, 'vi', 1),
(311, 'Lào Cai', 0, 36, 6, 'vi', 1),
(312, 'Mường Khương', 0, 36, 7, 'vi', 1),
(313, 'Sa Pa', 0, 36, 8, 'vi', 1),
(314, 'Than Uyên', 0, 36, 9, 'vi', 1),
(315, 'Văn Bàn', 0, 36, 10, 'vi', 1),
(316, 'Xi Ma Cai', 0, 36, 11, 'vi', 1),
(328, 'Bắc Sơn', 0, 37, 1, 'vi', 1),
(329, 'Bình Gia', 0, 37, 2, 'vi', 1),
(330, 'Cao Lăng', 0, 37, 3, 'vi', 1),
(331, 'Cao Lộc', 0, 37, 4, 'vi', 1),
(332, 'Đình Lập', 0, 37, 5, 'vi', 1),
(333, 'Hữu Lũng', 0, 37, 6, 'vi', 1),
(334, 'Lạng Sơn', 0, 37, 7, 'vi', 1),
(336, 'Lộc Bình', 0, 37, 8, 'vi', 1),
(337, 'Tràng Định', 0, 37, 9, 'vi', 1),
(342, 'Văn Lãng', 0, 37, 10, 'vi', 1),
(343, 'Văn Quang', 0, 37, 11, 'vi', 1),
(317, 'Bảo Lâm', 0, 38, 1, 'vi', 1),
(318, 'Bảo Lộc', 0, 38, 2, 'vi', 1),
(319, 'Cát Tiên', 0, 38, 3, 'vi', 1),
(320, 'Đà Lạt', 0, 38, 4, 'vi', 1),
(321, 'Đạ Tẻh', 0, 38, 5, 'vi', 1),
(322, 'Đạ Huoai', 0, 38, 6, 'vi', 1),
(323, 'Di Linh', 0, 38, 7, 'vi', 1),
(324, 'Đơn Dương', 0, 38, 8, 'vi', 1),
(325, 'Đức Trọng', 0, 38, 9, 'vi', 1),
(326, 'Lạc Dương', 0, 38, 10, 'vi', 1),
(327, 'Lâm Hà', 0, 38, 11, 'vi', 1),
(296, 'Điện Biên', 0, 39, 1, 'vi', 1),
(297, 'Điện Biên Đông', 0, 39, 2, 'vi', 1),
(298, 'Điện Biên Phủ', 0, 39, 3, 'vi', 1),
(299, 'Lai Châu', 0, 39, 4, 'vi', 1),
(300, 'Mường Lay', 0, 39, 5, 'vi', 1),
(301, 'Mường Tè', 0, 39, 6, 'vi', 1),
(302, 'Phong Thổ', 0, 39, 7, 'vi', 1),
(303, 'Sìn Hồ', 0, 39, 8, 'vi', 1),
(304, 'Tủa Chùa', 0, 39, 9, 'vi', 1),
(305, 'Tuần Giáo', 0, 39, 10, 'vi', 1),
(290, 'Đắk Glei', 0, 40, 1, 'vi', 1),
(291, 'Đắk Tô', 0, 40, 2, 'vi', 1),
(292, 'Kon Plông', 0, 40, 3, 'vi', 1),
(293, 'Kon Tum', 0, 40, 4, 'vi', 1),
(294, 'Ngọc Hồi', 0, 40, 5, 'vi', 1),
(295, 'Sa Thầy', 0, 40, 6, 'vi', 1),
(715, 'Đắk Glei', 0, 40, 7, 'vi', 1),
(716, 'Đắk Hà', 0, 40, 8, 'vi', 1),
(717, 'Đắk Tô', 0, 40, 9, 'vi', 1),
(718, 'Kon Plông', 0, 40, 10, 'vi', 1),
(719, 'Kon Tum', 0, 40, 11, 'vi', 1),
(720, 'Ngọc Hồi', 0, 40, 12, 'vi', 1),
(721, 'Sa Thầy', 0, 40, 13, 'vi', 1),
(277, 'An Biên', 0, 41, 1, 'vi', 1),
(278, 'An Minh', 0, 41, 2, 'vi', 1),
(279, 'Châu Thành', 0, 41, 3, 'vi', 1),
(280, 'Gò Quao', 0, 41, 4, 'vi', 1),
(281, 'Gồng Giềng', 0, 41, 5, 'vi', 1),
(282, 'Hà Tiên', 0, 41, 6, 'vi', 1),
(283, 'Hòn Đất', 0, 41, 7, 'vi', 1),
(284, 'Kiên Hải', 0, 41, 8, 'vi', 1),
(285, 'Phú Quốc', 0, 41, 9, 'vi', 1),
(286, 'Rạch Giá', 0, 41, 10, 'vi', 1),
(287, 'Tân Hiệp', 0, 41, 11, 'vi', 1),
(288, 'Vĩnh Thuận', 0, 41, 12, 'vi', 1),
(269, 'Nha Trang', 0, 42, 1, 'vi', 1),
(270, 'Khánh Vĩnh', 0, 42, 2, 'vi', 1),
(271, 'Diên Khánh', 0, 42, 3, 'vi', 1),
(272, 'Ninh Hòa', 0, 42, 4, 'vi', 1),
(273, 'Khánh Sơn', 0, 42, 5, 'vi', 1),
(274, 'Cam Ranh', 0, 42, 6, 'vi', 1),
(275, 'Trường Sa', 0, 42, 7, 'vi', 1),
(276, 'Vạn Ninh', 0, 42, 8, 'vi', 1),
(262, 'Ân Thi', 0, 43, 1, 'vi', 1),
(263, 'Hưng Yên', 0, 43, 2, 'vi', 1),
(264, 'Khoái Châu', 0, 43, 3, 'vi', 1),
(265, 'Tiên Lữ', 0, 43, 4, 'vi', 1),
(266, 'Văn Giang', 0, 43, 5, 'vi', 1),
(267, 'Văn Lâm', 0, 43, 6, 'vi', 1),
(268, 'Yên Mỹ', 0, 43, 7, 'vi', 1),
(705, 'Ân Thi', 0, 43, 8, 'vi', 1),
(706, 'Hưng Yên', 0, 43, 9, 'vi', 1),
(707, 'Khoái Châu', 0, 43, 10, 'vi', 1),
(708, 'Kim Động', 0, 43, 11, 'vi', 1),
(709, 'Mỹ Hào', 0, 43, 12, 'vi', 1),
(710, 'Phù Cừ', 0, 43, 13, 'vi', 1),
(224, 'Đà Bắc', 0, 44, 1, 'vi', 1),
(225, 'Hòa Bình', 0, 44, 2, 'vi', 1),
(226, 'Kim Bôi', 0, 44, 3, 'vi', 1),
(227, 'Kỳ Sơn', 0, 44, 4, 'vi', 1),
(228, 'Lạc Sơn', 0, 44, 5, 'vi', 1),
(229, 'Lạc Thủy', 0, 44, 6, 'vi', 1),
(230, 'Lương Sơn', 0, 44, 7, 'vi', 1),
(231, 'Mai Châu', 0, 44, 8, 'vi', 1),
(232, 'Tân Lạc', 0, 44, 9, 'vi', 1),
(233, 'Yên Thủy', 0, 44, 10, 'vi', 1),
(873, 'Cao Phong', 0, 44, 11, 'vi', 1),
(682, 'Châu Thành', 0, 45, 1, 'vi', 1),
(683, 'Long Mỹ', 0, 45, 2, 'vi', 1),
(685, 'Phụng Hiệp', 0, 45, 3, 'vi', 1),
(687, 'Vị Thanh', 0, 45, 4, 'vi', 1),
(688, 'Vị Thủy', 0, 45, 5, 'vi', 1),
(890, 'Châu Thành A', 0, 45, 6, 'vi', 1),
(891, 'Ngã Bảy', 0, 45, 7, 'vi', 1),
(234, 'Bình Giang', 0, 46, 1, 'vi', 1),
(235, 'Cẩm Giàng', 0, 46, 2, 'vi', 1),
(236, 'Chí Linh', 0, 46, 3, 'vi', 1),
(238, 'Gia Lộc', 0, 46, 4, 'vi', 1),
(239, 'Hải Dương', 0, 46, 5, 'vi', 1),
(241, 'Kim Thành', 0, 46, 6, 'vi', 1),
(242, 'Nam Sách', 0, 46, 7, 'vi', 1),
(243, 'Ninh Giang', 0, 46, 8, 'vi', 1),
(244, 'Kinh Môn', 0, 46, 9, 'vi', 1),
(245, 'Ninh Giang', 0, 46, 10, 'vi', 1),
(246, 'Thanh Hà', 0, 46, 11, 'vi', 1),
(247, 'Thanh Miện', 0, 46, 12, 'vi', 1),
(248, 'Từ Kỳ', 0, 46, 13, 'vi', 1),
(214, 'Cẩm Xuyên', 0, 47, 1, 'vi', 1),
(215, 'Can Lộc', 0, 47, 2, 'vi', 1),
(216, 'Đức Thọ', 0, 47, 3, 'vi', 1),
(217, 'Hà Tĩnh', 0, 47, 4, 'vi', 1),
(218, 'Hồng Lĩnh', 0, 47, 5, 'vi', 1),
(219, 'Hương Khê', 0, 47, 6, 'vi', 1),
(220, 'Hương Sơn', 0, 47, 7, 'vi', 1),
(221, 'Kỳ Anh', 0, 47, 8, 'vi', 1),
(222, 'Nghi Xuân', 0, 47, 9, 'vi', 1),
(223, 'Thạch Hà', 0, 47, 10, 'vi', 1),
(881, 'Vũ Quang', 0, 47, 11, 'vi', 1),
(882, 'Lộc Hà', 0, 47, 12, 'vi', 1),
(689, 'Bình Lục', 0, 49, 1, 'vi', 1),
(690, 'Duy Tiên', 0, 49, 2, 'vi', 1),
(691, 'Kim Bảng', 0, 49, 3, 'vi', 1),
(692, 'Lý Nhân', 0, 49, 4, 'vi', 1),
(693, 'Phủ Lý', 0, 49, 5, 'vi', 1),
(694, 'Thanh Liêm', 0, 49, 6, 'vi', 1),
(498, 'Bắc Mê', 0, 50, 1, 'vi', 1),
(499, 'Bắc Quang', 0, 50, 2, 'vi', 1),
(500, 'Đồng Văn', 0, 50, 3, 'vi', 1),
(501, 'Hà Giang', 0, 50, 4, 'vi', 1),
(502, 'Hoàng Su Phì', 0, 50, 5, 'vi', 1),
(503, 'Mèo Vạt', 0, 50, 6, 'vi', 1),
(504, 'Quản Bạ', 0, 50, 7, 'vi', 1),
(505, 'Vị Xuyên', 0, 50, 8, 'vi', 1),
(506, 'Xín Mần', 0, 50, 9, 'vi', 1),
(507, 'Yên Minh', 0, 50, 10, 'vi', 1),
(187, 'An Khê', 0, 51, 1, 'vi', 1),
(188, 'Ayun Pa ', 0, 51, 2, 'vi', 1),
(189, 'Chư Păh', 0, 51, 3, 'vi', 1),
(190, 'Chư Prông  ', 0, 51, 4, 'vi', 1),
(191, 'Chư Sê ', 0, 51, 5, 'vi', 1),
(192, 'Đức Cơ  ', 0, 51, 6, 'vi', 1),
(193, 'KBang  ', 0, 51, 7, 'vi', 1),
(194, 'Krông Chro', 0, 51, 8, 'vi', 1),
(195, 'Krông Pa ', 0, 51, 9, 'vi', 1),
(196, 'La Grai  ', 0, 51, 10, 'vi', 1),
(197, 'Mang Yang ', 0, 51, 11, 'vi', 1),
(198, 'Pleiku', 0, 51, 12, 'vi', 1),
(826, 'Cao Lãnh', 0, 52, 1, 'vi', 1),
(827, 'Châu Thành', 0, 52, 2, 'vi', 1),
(828, 'Hồng Ngự', 0, 52, 3, 'vi', 1),
(829, 'Lai Vung', 0, 52, 4, 'vi', 1),
(830, 'Lấp Vò', 0, 52, 5, 'vi', 1),
(831, 'Tam Nông', 0, 52, 6, 'vi', 1),
(832, 'Tân Hồng', 0, 52, 7, 'vi', 1),
(833, 'Thanh Bình', 0, 52, 8, 'vi', 1),
(834, 'Tháp Mười', 0, 52, 9, 'vi', 1),
(835, 'Xa Đéc', 0, 52, 10, 'vi', 1),
(634, 'Biên Hòa', 0, 53, 1, 'vi', 1),
(635, 'Định Quán', 0, 53, 2, 'vi', 1),
(636, 'Long Khánh', 0, 53, 3, 'vi', 1),
(637, 'Long Thành', 0, 53, 4, 'vi', 1),
(638, 'Nhơn Trạch', 0, 53, 5, 'vi', 1),
(639, 'Tân Phú', 0, 53, 6, 'vi', 1),
(640, 'Thống Nhất', 0, 53, 7, 'vi', 1),
(641, 'Vĩnh Cừu', 0, 53, 8, 'vi', 1),
(642, 'Xuân Lộc', 0, 53, 9, 'vi', 1),
(838, 'Trảng Bom', 0, 53, 10, 'vi', 1),
(455, 'Buôn Đôn', 0, 56, 1, 'vi', 1),
(456, 'Buôn Ma Thuột', 0, 56, 2, 'vi', 1),
(457, 'Cư Jút', 0, 56, 3, 'vi', 1),
(458, 'Cư M''gar', 0, 56, 4, 'vi', 1),
(459, 'Đắk Mil', 0, 56, 5, 'vi', 1),
(460, 'Đắk Nông', 0, 56, 6, 'vi', 1),
(461, 'Đắk R''lấp', 0, 56, 7, 'vi', 1),
(462, 'Ea H''leo', 0, 56, 8, 'vi', 1),
(463, 'Ea Kra', 0, 56, 9, 'vi', 1),
(464, 'Ea Súp', 0, 56, 10, 'vi', 1),
(465, 'Krông A Na', 0, 56, 11, 'vi', 1),
(466, 'Krông Bông', 0, 56, 12, 'vi', 1),
(467, 'Krông Búk', 0, 56, 13, 'vi', 1),
(468, 'Krông Năng', 0, 56, 14, 'vi', 1),
(469, 'Krông Nô', 0, 56, 15, 'vi', 1),
(470, 'Krông Pắc', 0, 56, 16, 'vi', 1),
(471, 'Lắk', 0, 56, 17, 'vi', 1),
(472, 'M''Đrắt', 0, 56, 18, 'vi', 1),
(176, 'Bảo Lạc', 0, 57, 1, 'vi', 1),
(177, 'Cao Bắng', 0, 57, 2, 'vi', 1),
(178, 'Hạ Lang', 0, 57, 3, 'vi', 1),
(179, 'Hà Quảng', 0, 57, 4, 'vi', 1),
(180, 'Hòa An', 0, 57, 5, 'vi', 1),
(181, 'Nguyên Bình', 0, 57, 6, 'vi', 1),
(182, 'Quảng Hòa', 0, 57, 7, 'vi', 1),
(183, 'Thạch An', 0, 57, 8, 'vi', 1),
(184, 'Thông Nông', 0, 57, 9, 'vi', 1),
(185, 'Trà Lĩnh', 0, 57, 10, 'vi', 1),
(186, 'Trùng Khánh', 0, 57, 11, 'vi', 1),
(491, 'Cà Mau', 0, 58, 1, 'vi', 1),
(492, 'Cái Nước', 0, 58, 2, 'vi', 1),
(493, 'Đầm Dơi', 0, 58, 3, 'vi', 1),
(494, 'Ngọc Hiển', 0, 58, 4, 'vi', 1),
(495, 'Thới Bình', 0, 58, 5, 'vi', 1),
(496, 'Trần Văn Thời', 0, 58, 6, 'vi', 1),
(497, 'U Minh', 0, 58, 7, 'vi', 1),
(887, 'Năm Căn', 0, 58, 8, 'vi', 1),
(888, 'Phú Tân', 0, 58, 9, 'vi', 1),
(654, 'Bắc Bình', 0, 59, 1, 'vi', 1),
(655, 'Đức Linh', 0, 59, 2, 'vi', 1),
(656, 'Hàm Tân', 0, 59, 3, 'vi', 1),
(657, 'Hàm Thuận Bắc', 0, 59, 4, 'vi', 1),
(658, 'Hàm Thuận Nam', 0, 59, 5, 'vi', 1),
(659, 'Phan Thiết', 0, 59, 6, 'vi', 1),
(660, 'Phú Quí', 0, 59, 7, 'vi', 1),
(661, 'Tánh Linh', 0, 59, 8, 'vi', 1),
(662, 'Tuy Phong', 0, 59, 9, 'vi', 1),
(897, 'La Gi', 0, 59, 10, 'vi', 1),
(836, 'Bình Long', 0, 60, 1, 'vi', 1),
(839, 'Phước Long', 0, 60, 2, 'vi', 1),
(851, 'Bù Ðăng', 0, 60, 3, 'vi', 1),
(852, 'Chơn Thành', 0, 60, 4, 'vi', 1),
(473, 'Bến Cát', 0, 61, 1, 'vi', 1),
(474, 'Dầu Tiếng', 0, 61, 2, 'vi', 1),
(475, 'Dĩ An', 0, 61, 3, 'vi', 1),
(476, 'Tân Uyên', 0, 61, 4, 'vi', 1),
(477, 'Thủ Dầu Một', 0, 61, 5, 'vi', 1),
(478, 'Thuận An', 0, 61, 6, 'vi', 1),
(841, 'Lái Thiêu', 0, 61, 7, 'vi', 1),
(896, 'Phú Giáo', 0, 61, 8, 'vi', 1),
(158, 'An Lão', 0, 62, 1, 'vi', 1),
(159, 'An Nhơn', 0, 62, 2, 'vi', 1),
(160, 'Hoài Ân', 0, 62, 3, 'vi', 1),
(161, 'Hoài Nhơn', 0, 62, 4, 'vi', 1),
(162, 'Phù Cát', 0, 62, 5, 'vi', 1),
(163, 'Phù Mỹ', 0, 62, 6, 'vi', 1),
(164, 'Qui Nhơn', 0, 62, 7, 'vi', 1),
(165, 'Tây Sơn', 0, 62, 8, 'vi', 1),
(166, 'Tuy Phước', 0, 62, 9, 'vi', 1),
(167, 'Vân Canh', 0, 62, 10, 'vi', 1),
(168, 'Vĩnh Thạnh', 0, 62, 11, 'vi', 1),
(673, 'Ba Tri', 0, 63, 1, 'vi', 1),
(674, 'Bến Tre', 0, 63, 2, 'vi', 1),
(675, 'Bình Đại', 0, 63, 3, 'vi', 1),
(676, 'Châu Thành', 0, 63, 4, 'vi', 1),
(677, 'Chợ Lách', 0, 63, 5, 'vi', 1),
(678, 'Giồng Trôm', 0, 63, 6, 'vi', 1),
(679, 'Mỏ Cày', 0, 63, 7, 'vi', 1),
(680, 'Thạnh Phú', 0, 63, 8, 'vi', 1),
(483, 'Bắc Ninh', 0, 64, 1, 'vi', 1),
(484, 'Gia Bình', 0, 64, 2, 'vi', 1),
(485, 'Lương Tài', 0, 64, 3, 'vi', 1),
(486, 'Quế Võ', 0, 64, 4, 'vi', 1),
(487, 'Thuận Thành', 0, 64, 5, 'vi', 1),
(488, 'Tiên Du', 0, 64, 6, 'vi', 1),
(489, 'Từ Sơn', 0, 64, 7, 'vi', 1),
(490, 'Yên Phong', 0, 64, 8, 'vi', 1),
(479, 'Bạc Liêu', 0, 65, 1, 'vi', 1),
(480, 'Giá Rai', 0, 65, 2, 'vi', 1),
(481, 'Hồng Dân', 0, 65, 3, 'vi', 1),
(482, 'Vĩnh Lợi', 0, 65, 4, 'vi', 1),
(884, 'Phước Long', 0, 65, 5, 'vi', 1),
(885, 'Đông Hải', 0, 65, 6, 'vi', 1),
(886, 'Hòa Bình', 0, 65, 7, 'vi', 1),
(169, 'Ba Bể', 0, 66, 1, 'vi', 1),
(170, 'Bắc Kạn', 0, 66, 2, 'vi', 1),
(171, 'Bạch Thông ', 0, 66, 3, 'vi', 1),
(172, 'Chợ Đồn', 0, 66, 4, 'vi', 1),
(173, 'Chợ Mới', 0, 66, 5, 'vi', 1),
(174, 'Na Rì', 0, 66, 6, 'vi', 1),
(175, 'Ngân Sơn', 0, 66, 7, 'vi', 1),
(663, 'Bắc Giang', 0, 67, 1, 'vi', 1),
(664, 'Hiệp Hòa', 0, 67, 2, 'vi', 1),
(665, 'Lạng Giang', 0, 67, 3, 'vi', 1),
(666, 'Lục Nam', 0, 67, 4, 'vi', 1),
(667, 'Lục Ngạn', 0, 67, 5, 'vi', 1),
(668, 'Sơn Động', 0, 67, 6, 'vi', 1),
(669, 'Tân Yên', 0, 67, 7, 'vi', 1),
(670, 'Việt Yên', 0, 67, 8, 'vi', 1),
(671, 'Yên Dũng', 0, 67, 9, 'vi', 1),
(672, 'Yên Thế', 0, 67, 10, 'vi', 1),
(151, 'Bà Rịa', 0, 68, 1, 'vi', 1),
(152, 'Châu Đất', 0, 68, 2, 'vi', 1),
(153, 'Côn Đảo', 0, 68, 3, 'vi', 1),
(154, 'Long Đất', 0, 68, 4, 'vi', 1),
(155, 'Tân Thành', 0, 68, 5, 'vi', 1),
(156, 'Vũng Tàu', 0, 68, 6, 'vi', 1),
(157, 'Xuyên Mộc', 0, 68, 7, 'vi', 1),
(898, 'Long Điền', 0, 68, 8, 'vi', 1),
(899, 'Đất Đỏ', 0, 68, 9, 'vi', 1),
(643, 'An Phú', 0, 69, 1, 'vi', 1),
(644, 'Châu Đốc', 0, 69, 2, 'vi', 1),
(645, 'Châu Phú', 0, 69, 3, 'vi', 1),
(646, 'Châu Thành', 0, 69, 4, 'vi', 1),
(647, 'Chợ Mới', 0, 69, 5, 'vi', 1),
(648, 'Long Xuyên', 0, 69, 6, 'vi', 1),
(649, 'Phú Tân', 0, 69, 7, 'vi', 1),
(650, 'Tân Châu', 0, 69, 8, 'vi', 1),
(651, 'Thoại Sơn', 0, 69, 9, 'vi', 1),
(652, 'Tịnh Biên', 0, 69, 10, 'vi', 1),
(653, 'Tri Tôn', 0, 69, 11, 'vi', 1),
(249, 'An Hải', 0, 70, 1, 'vi', 1),
(250, 'An Lão', 0, 70, 2, 'vi', 1),
(251, 'Bạch Long Vỹ', 0, 70, 3, 'vi', 1),
(253, 'Đồ Sơn', 0, 70, 4, 'vi', 1),
(254, 'Hồng Bàng', 0, 70, 5, 'vi', 1),
(255, 'Kiến An', 0, 70, 6, 'vi', 1),
(256, 'Kiến Thụy', 0, 70, 7, 'vi', 1),
(257, 'Lê Chân', 0, 70, 8, 'vi', 1),
(258, 'Ngô Quyền', 0, 70, 9, 'vi', 1),
(259, 'Thủy Nguyên', 0, 70, 10, 'vi', 1),
(260, 'Tiên Lãng', 0, 70, 11, 'vi', 1),
(261, 'Vĩnh Bảo', 0, 70, 12, 'vi', 1),
(854, 'Cát Bà', 0, 70, 13, 'vi', 1),
(900, 'Dương Kinh', 0, 70, 14, 'vi', 1),
(819, 'Đảo Hòang Sa', 0, 71, 1, 'vi', 1),
(820, 'Hải Châu', 0, 71, 2, 'vi', 1),
(821, 'Hòa Vang', 0, 71, 3, 'vi', 1),
(822, 'Liên Chiểu', 0, 71, 4, 'vi', 1),
(823, 'Ngũ Hành Sơn', 0, 71, 5, 'vi', 1),
(824, 'Sơn Trà', 0, 71, 6, 'vi', 1),
(825, 'Thanh Khê', 0, 71, 7, 'vi', 1),
(844, 'Cẩm Lệ', 0, 71, 8, 'vi', 1),
(681, 'Cần Thơ', 0, 72, 1, 'vi', 1),
(684, 'Ô Môn', 0, 72, 2, 'vi', 1),
(686, 'Thốt Nốt', 0, 72, 3, 'vi', 1),
(837, 'Ninh Kiều', 0, 72, 4, 'vi', 1),
(848, 'Cái Răng', 0, 72, 5, 'vi', 1),
(855, 'Bình Thủy', 0, 72, 6, 'vi', 1),
(892, 'Phong Điền', 0, 72, 7, 'vi', 1),
(893, 'Cờ Đỏ', 0, 72, 8, 'vi', 1),
(894, 'Thới Lai', 0, 72, 9, 'vi', 1),
(895, 'Vĩnh Thạnh', 0, 72, 10, 'vi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_listsendmail`
--

CREATE TABLE IF NOT EXISTS `web_listsendmail` (
`id` int(2) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `lang` varchar(3) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_listsendmail`
--

INSERT INTO `web_listsendmail` (`id`, `name`, `email`, `lang`, `status`) VALUES
(1, 'Tú', 'consultant1@netspace.edu.vn', 'vi', 1),
(2, 'Thanh', 'consultant2@netspace.edu.vn', 'vi', 1),
(3, 'Khắc', 'consultant3@netspace.edu.vn', 'vi', 1),
(4, 'Tiên', 'consultant4@netspace.edu.vn', 'vi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_logs`
--

CREATE TABLE IF NOT EXISTS `web_logs` (
`id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `action` varchar(30) NOT NULL,
  `_table` varchar(30) NOT NULL,
  `table_id` int(11) NOT NULL,
  `datetime` bigint(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `content` text,
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_restore` bigint(10) DEFAULT NULL,
  `user_restore` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `web_opening`
--

CREATE TABLE IF NOT EXISTS `web_opening` (
`id` int(3) NOT NULL,
  `name` varchar(200) NOT NULL,
  `date_opening` bigint(10) NOT NULL,
  `schedule` text NOT NULL,
  `_order` int(2) NOT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `menu_id` varchar(20) NOT NULL,
  `header_id` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_opening`
--

INSERT INTO `web_opening` (`id`, `name`, `date_opening`, `schedule`, `_order`, `lang`, `status`, `menu_id`, `header_id`) VALUES
(1, 'Luyện Thi Chứng Chỉ Chuyên Gia Quản Lý Dự Án PMP®', 1465057800, '<ul>\n	<li>Sáng 04&nbsp;tháng 06: 9:00 - 12:00</li>\n	<li>Chiều 04&nbsp;tháng 06: 13:30 - 16:30</li>\n	<li>Sáng 05&nbsp;tháng 06:&nbsp;9:00 - 12:00</li>\n	<li>Chiều 05&nbsp;tháng 06:&nbsp;13:30 - 16:30</li>\n	<li>Sáng 11&nbsp;tháng 06: 9:00 - 12:00</li>\n	<li>Chiều 11&nbsp;tháng 06:&nbsp;13:30 - 16:30</li>\n	<li>Sáng 12&nbsp;tháng 06:&nbsp;9:00 - 12:00</li>\n	<li>Chiều 12&nbsp;tháng 06:&nbsp;13:30 - 16:30</li>\n	<li>Sáng 18&nbsp;tháng 06:&nbsp;9:00 - 12:00</li>\n	<li>Chiều 18&nbsp;tháng 06:&nbsp;13:30 - 16:30</li>\n</ul>', 1, 'vi', 1, ',284,', 0),
(4, 'Quản Lý Dự Án theo Tiêu Chuẩn Quốc Tế PMBOK®', 1463243400, '<ul>\n	<li>Sáng 14&nbsp;tháng 05: 9:00 - 12:00</li>\n	<li>Chiều 14&nbsp;tháng 05: 13:30 - 16:30</li>\n	<li>Sáng 15&nbsp;tháng 05: 9:00 - 12:00</li>\n	<li>Chiều 15&nbsp;tháng 05:&nbsp;13:30 - 16:30</li>\n	<li>Sáng 21&nbsp;tháng 05:&nbsp;9:00 - 12:00</li>\n	<li>Chiều 21&nbsp;tháng 05:&nbsp;13:30 - 16:30</li>\n</ul>', 0, 'vi', 1, ',283,', 0);

-- --------------------------------------------------------

--
-- Table structure for table `web_order`
--

CREATE TABLE IF NOT EXISTS `web_order` (
`id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(80) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `total_current` int(9) NOT NULL,
  `total_number` int(4) NOT NULL,
  `deliverycosts` int(8) NOT NULL DEFAULT '0',
  `discounts` int(8) NOT NULL DEFAULT '0',
  `total` int(8) NOT NULL,
  `datetime` bigint(10) NOT NULL,
  `ip_address` varchar(20) NOT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `city_id` int(3) NOT NULL,
  `districts_id` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `web_order_detail`
--

CREATE TABLE IF NOT EXISTS `web_order_detail` (
`id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `number` int(4) NOT NULL,
  `price` int(8) NOT NULL,
  `discounts` int(8) NOT NULL DEFAULT '0',
  `total` int(8) NOT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `header_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `web_photo`
--

CREATE TABLE IF NOT EXISTS `web_photo` (
`id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `img` varchar(150) DEFAULT NULL,
  `_order` int(3) NOT NULL DEFAULT '0',
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `datetime` bigint(10) NOT NULL,
  `menu_id` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `web_picture`
--

CREATE TABLE IF NOT EXISTS `web_picture` (
`id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `img` varchar(15) NOT NULL,
  `datetime` bigint(10) NOT NULL,
  `_order` int(11) NOT NULL DEFAULT '0',
  `_table` varchar(30) NOT NULL,
  `table_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `web_position`
--

CREATE TABLE IF NOT EXISTS `web_position` (
`id` int(3) NOT NULL,
  `name` varchar(100) NOT NULL,
  `themes` varchar(100) NOT NULL,
  `_order` int(2) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_position`
--

INSERT INTO `web_position` (`id`, `name`, `themes`, `_order`, `type`, `status`) VALUES
(1, 'Menu Top', '', 1, 1, 0),
(2, 'Menu chính', '', 2, 1, 1),
(3, 'Menu footer', '', 3, 1, 1),
(4, 'Menu bên trái', '', 4, 1, 1),
(5, 'Menu bên phải', '', 5, 1, 1),
(6, 'Box mạng xã hội', '', 6, 1, 1),
(7, 'Home đào tạo khóa học', '', 7, 2, 1),
(8, 'Home contact', '', 8, 2, 1),
(9, 'Home tạo sao chọn chúng tôi', '', 9, 2, 1),
(10, 'Home các khóa sắp khai giảng', '', 10, 2, 1),
(11, 'Home ý kiến khách hàng', '', 11, 2, 1),
(12, 'Home footer', '', 12, 2, 1),
(13, 'Content box right', '', 13, 1, 0),
(14, 'Logo', '', 14, 1, 1),
(15, 'Box liên kết', '', 15, 1, 0),
(16, 'Slider width 1000px', '', 16, 3, 1),
(17, 'Event 400px x 200px', '', 17, 3, 1),
(18, 'Đối tác 150px x 90px', '', 18, 3, 1),
(19, 'Other 6', '', 19, 3, 0),
(20, 'Không', '', 20, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_sendmail`
--

CREATE TABLE IF NOT EXISTS `web_sendmail` (
`id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `content` text NOT NULL,
  `datetime` bigint(10) NOT NULL,
  `event_id` int(11) NOT NULL,
  `_table` varchar(20) NOT NULL,
  `table_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `web_tags`
--

CREATE TABLE IF NOT EXISTS `web_tags` (
`id` int(3) NOT NULL,
  `name` varchar(50) NOT NULL,
  `title` varchar(60) NOT NULL,
  `url` varchar(200) NOT NULL,
  `_order` int(3) NOT NULL DEFAULT '0',
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_tags`
--

INSERT INTO `web_tags` (`id`, `name`, `title`, `url`, `_order`, `lang`, `status`) VALUES
(2, 'Tags keyword', 'Title', 'link', 2, 'vi', 0),
(3, 'Home', 'Website bán hàng', 'http://www.google.com', 1, 'en', 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_type`
--

CREATE TABLE IF NOT EXISTS `web_type` (
`id` int(3) NOT NULL,
  `name` varchar(30) NOT NULL,
  `type` varchar(20) NOT NULL,
  `_table` varchar(20) NOT NULL,
  `url_img` varchar(100) NOT NULL,
  `url_img_thumb` varchar(100) NOT NULL,
  `_order` int(2) NOT NULL,
  `other` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_type`
--

INSERT INTO `web_type` (`id`, `name`, `type`, `_table`, `url_img`, `url_img_thumb`, `_order`, `other`, `status`) VALUES
(1, 'Trang chủ', 'home', '', 'public/images/catalog/', 'public/_thumbs/Images/catalog/', 1, 1, 1),
(2, 'Thông tin bài viết', 'articles', 'web_header', 'public/images/articles/', 'public/_thumbs/Images/articles/', 2, 1, 1),
(3, 'Khóa học - Sale page', 'course', 'web_header', 'public/images/articles/', 'public/_thumbs/Images/articles/', 3, 1, 1),
(4, 'Ý kiến', 'opinion', 'web_header', 'public/images/articles/', 'public/_thumbs/Images/articles/', 4, 1, 1),
(5, 'Giới thiệu', 'about', 'web_header', 'public/images/articles/', 'public/_thumbs/Images/articles/', 5, 1, 1),
(6, 'Entry test', 'entry_test', 'web_header', 'public/images/videos/', 'public/_thumbs/Images/videos/', 6, 1, 1),
(7, 'Hình ảnh', 'photos', 'web_header', '', '', 7, 1, 1),
(8, 'Tuyển dụng', 'recruit', 'web_header', '', '', 8, 1, 1),
(9, 'Hợp tác kinh doanh', 'cooperate', '', '', '', 9, 1, 1),
(10, 'Khai giảng', 'opening', 'web_header', '', '', 10, 1, 1),
(11, 'Viết Blog', 'submit_blog', 'web_header', '', '', 11, 1, 1),
(20, 'Không', 'no', '', '', '', 20, 1, 1),
(12, 'Item 6', 'item_6', '', '', '', 12, 0, 0),
(19, 'Item 10', 'item_10', '', '', '', 19, 0, 0),
(13, 'Item 7', 'item_7', '', '', '', 13, 0, 0),
(18, 'Search', 'search', '', '', '', 18, 1, 1),
(14, 'Item 8', 'item_8', '', '', '', 14, 0, 0),
(15, 'Danh mục menu', 'catalog', '', 'public/images/catalog/', 'public/_thumbs/Images/catalog/', 15, 0, 1),
(16, 'Slider - Banner', 'slider-banner', '', 'public/images/slider-banner/', 'public/_thumbs/Images/slider-banner/', 16, 0, 1),
(17, 'Liên hệ', 'contact', '', 'public/images/catalog/', 'public/_thumbs/Images/catalog/', 17, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_users`
--

CREATE TABLE IF NOT EXISTS `web_users` (
`id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `address` varchar(200) NOT NULL,
  `country` varchar(3) DEFAULT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(60) NOT NULL,
  `birthday` bigint(10) NOT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `img` varchar(150) NOT NULL,
  `salt` varchar(3) NOT NULL,
  `page` int(1) NOT NULL DEFAULT '1',
  `username` char(32) NOT NULL,
  `password` char(32) NOT NULL,
  `random_key` varchar(255) DEFAULT NULL,
  `date_expiration` bigint(10) NOT NULL,
  `lang` varchar(3) NOT NULL DEFAULT 'vi',
  `datetime` bigint(10) NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `group_id` int(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_users`
--

INSERT INTO `web_users` (`id`, `name`, `address`, `country`, `phone`, `email`, `birthday`, `gender`, `img`, `salt`, `page`, `username`, `password`, `random_key`, `date_expiration`, `lang`, `datetime`, `status`, `group_id`) VALUES
(25, 'Admin', '123 CMT 8', 'VN', '0988 388 003', 'admin@localhost.com', 0, 1, '', '', 3, 'admin', '52e4ab92c412c5aadf3a0970779da825', NULL, 0, 'vi', 0, 1, 6),
(43, 'Nguyễn Bình Phương', '', 'VN', '', 'support@dayamthuc.vn', 0, NULL, '', '', 3, 'stevbros', '867e1a36d190000d2f266d80889683fc', NULL, 0, 'vi', 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_users_group`
--

CREATE TABLE IF NOT EXISTS `web_users_group` (
`id` int(2) NOT NULL,
  `name` varchar(50) NOT NULL,
  `_order` int(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_users_group`
--

INSERT INTO `web_users_group` (`id`, `name`, `_order`, `status`) VALUES
(1, 'Trainer', 1, 1),
(6, 'Admin', 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_users_lock_ip`
--

CREATE TABLE IF NOT EXISTS `web_users_lock_ip` (
`id` int(11) NOT NULL,
  `ip_address` varchar(20) NOT NULL,
  `login_number` int(2) NOT NULL,
  `disable_date` bigint(10) NOT NULL,
  `datetime` bigint(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_users_lock_ip`
--

INSERT INTO `web_users_lock_ip` (`id`, `ip_address`, `login_number`, `disable_date`, `datetime`) VALUES
(6, '::1', 2, 0, 1459103498),
(7, '115.78.128.150', 2, 0, 1459050734),
(8, '115.76.101.63', 2, 0, 1453172860),
(9, '115.76.102.62', 2, 0, 1454256324),
(10, '14.161.21.189', 2, 0, 1458613677);

-- --------------------------------------------------------

--
-- Table structure for table `web_users_login`
--

CREATE TABLE IF NOT EXISTS `web_users_login` (
`id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip_address` varchar(20) NOT NULL,
  `datetime` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `web_users_reset`
--

CREATE TABLE IF NOT EXISTS `web_users_reset` (
`id` int(9) NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `ip_address` varchar(20) NOT NULL,
  `_key` char(10) NOT NULL,
  `datetime` bigint(10) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `web_users_role`
--

CREATE TABLE IF NOT EXISTS `web_users_role` (
`id` int(11) NOT NULL,
  `action_view` tinyint(1) NOT NULL DEFAULT '1',
  `action_create` tinyint(1) NOT NULL DEFAULT '1',
  `action_edit` tinyint(1) DEFAULT '1',
  `action_delete` tinyint(1) NOT NULL DEFAULT '1',
  `admin_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_users_role`
--

INSERT INTO `web_users_role` (`id`, `action_view`, `action_create`, `action_edit`, `action_delete`, `admin_id`, `users_id`, `status`) VALUES
(1, 1, 1, 1, 1, 1, 25, 1),
(2, 1, 1, 1, 1, 24, 25, 1),
(3, 1, 1, 1, 1, 2, 25, 1),
(4, 1, 1, 1, 1, 13, 25, 1),
(5, 1, 1, 1, 1, 14, 25, 1),
(6, 1, 1, 1, 1, 16, 25, 1),
(7, 1, 1, 1, 1, 20, 25, 1),
(8, 1, 1, 1, 1, 15, 25, 1),
(9, 1, 1, 1, 1, 17, 25, 1),
(10, 1, 1, 1, 1, 22, 25, 1),
(11, 1, 1, 1, 1, 25, 25, 1),
(12, 1, 1, 1, 1, 27, 25, 1),
(13, 1, 1, 1, 1, 23, 25, 1),
(14, 1, 1, 1, 1, 28, 25, 1),
(15, 1, 1, 1, 1, 5, 25, 1),
(16, 1, 1, 1, 1, 31, 25, 1),
(17, 1, 1, 1, 1, 37, 25, 1),
(18, 1, 1, 1, 1, 38, 25, 1),
(19, 1, 1, 1, 1, 7, 25, 1),
(20, 1, 1, 1, 1, 3, 25, 1),
(21, 1, 1, 1, 1, 35, 25, 1),
(22, 1, 1, 1, 0, 31, 43, 1),
(23, 1, 1, 1, 0, 24, 43, 1),
(24, 1, 1, 1, 0, 38, 43, 1),
(25, 1, 1, 1, 0, 1, 43, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mn_action`
--
ALTER TABLE `mn_action`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mn_class`
--
ALTER TABLE `mn_class`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `mn_class_info`
--
ALTER TABLE `mn_class_info`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mn_contract`
--
ALTER TABLE `mn_contract`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `mn_contract_customer`
--
ALTER TABLE `mn_contract_customer`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mn_course`
--
ALTER TABLE `mn_course`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `mn_customer`
--
ALTER TABLE `mn_customer`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mn_customer_module`
--
ALTER TABLE `mn_customer_module`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mn_fee`
--
ALTER TABLE `mn_fee`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mn_license`
--
ALTER TABLE `mn_license`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mn_parts`
--
ALTER TABLE `mn_parts`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mn_payment`
--
ALTER TABLE `mn_payment`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mn_staff`
--
ALTER TABLE `mn_staff`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mn_trainer`
--
ALTER TABLE `mn_trainer`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mn_trainer_rate`
--
ALTER TABLE `mn_trainer_rate`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_admin`
--
ALTER TABLE `web_admin`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `url` (`url`);

--
-- Indexes for table `web_config`
--
ALTER TABLE `web_config`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_contact`
--
ALTER TABLE `web_contact`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_content`
--
ALTER TABLE `web_content`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_entrytest`
--
ALTER TABLE `web_entrytest`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_entrytest_data`
--
ALTER TABLE `web_entrytest_data`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_entrytest_user`
--
ALTER TABLE `web_entrytest_user`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_event_form`
--
ALTER TABLE `web_event_form`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_header`
--
ALTER TABLE `web_header`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_ip_address`
--
ALTER TABLE `web_ip_address`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_khaosat`
--
ALTER TABLE `web_khaosat`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_language`
--
ALTER TABLE `web_language`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_language_var`
--
ALTER TABLE `web_language_var`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_listcity`
--
ALTER TABLE `web_listcity`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_listdistricts`
--
ALTER TABLE `web_listdistricts`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_listsendmail`
--
ALTER TABLE `web_listsendmail`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_logs`
--
ALTER TABLE `web_logs`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_opening`
--
ALTER TABLE `web_opening`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_order`
--
ALTER TABLE `web_order`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_order_detail`
--
ALTER TABLE `web_order_detail`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_photo`
--
ALTER TABLE `web_photo`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_picture`
--
ALTER TABLE `web_picture`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `img` (`img`);

--
-- Indexes for table `web_position`
--
ALTER TABLE `web_position`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_sendmail`
--
ALTER TABLE `web_sendmail`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_tags`
--
ALTER TABLE `web_tags`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_type`
--
ALTER TABLE `web_type`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_users`
--
ALTER TABLE `web_users`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_users_group`
--
ALTER TABLE `web_users_group`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_users_lock_ip`
--
ALTER TABLE `web_users_lock_ip`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_users_login`
--
ALTER TABLE `web_users_login`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_users_reset`
--
ALTER TABLE `web_users_reset`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_users_role`
--
ALTER TABLE `web_users_role`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mn_action`
--
ALTER TABLE `mn_action`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mn_class`
--
ALTER TABLE `mn_class`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mn_class_info`
--
ALTER TABLE `mn_class_info`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `mn_contract`
--
ALTER TABLE `mn_contract`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mn_contract_customer`
--
ALTER TABLE `mn_contract_customer`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mn_course`
--
ALTER TABLE `mn_course`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mn_customer`
--
ALTER TABLE `mn_customer`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `mn_customer_module`
--
ALTER TABLE `mn_customer_module`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `mn_fee`
--
ALTER TABLE `mn_fee`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mn_license`
--
ALTER TABLE `mn_license`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mn_parts`
--
ALTER TABLE `mn_parts`
MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mn_payment`
--
ALTER TABLE `mn_payment`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mn_staff`
--
ALTER TABLE `mn_staff`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mn_trainer`
--
ALTER TABLE `mn_trainer`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `mn_trainer_rate`
--
ALTER TABLE `mn_trainer_rate`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `web_admin`
--
ALTER TABLE `web_admin`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `web_config`
--
ALTER TABLE `web_config`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `web_contact`
--
ALTER TABLE `web_contact`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `web_content`
--
ALTER TABLE `web_content`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `web_entrytest`
--
ALTER TABLE `web_entrytest`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=111;
--
-- AUTO_INCREMENT for table `web_entrytest_data`
--
ALTER TABLE `web_entrytest_data`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `web_entrytest_user`
--
ALTER TABLE `web_entrytest_user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `web_event_form`
--
ALTER TABLE `web_event_form`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `web_header`
--
ALTER TABLE `web_header`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `web_ip_address`
--
ALTER TABLE `web_ip_address`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=90;
--
-- AUTO_INCREMENT for table `web_khaosat`
--
ALTER TABLE `web_khaosat`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `web_language`
--
ALTER TABLE `web_language`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `web_language_var`
--
ALTER TABLE `web_language_var`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `web_listdistricts`
--
ALTER TABLE `web_listdistricts`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=901;
--
-- AUTO_INCREMENT for table `web_listsendmail`
--
ALTER TABLE `web_listsendmail`
MODIFY `id` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `web_logs`
--
ALTER TABLE `web_logs`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `web_opening`
--
ALTER TABLE `web_opening`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `web_order`
--
ALTER TABLE `web_order`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `web_order_detail`
--
ALTER TABLE `web_order_detail`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `web_photo`
--
ALTER TABLE `web_photo`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `web_picture`
--
ALTER TABLE `web_picture`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `web_position`
--
ALTER TABLE `web_position`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `web_sendmail`
--
ALTER TABLE `web_sendmail`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `web_tags`
--
ALTER TABLE `web_tags`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `web_type`
--
ALTER TABLE `web_type`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `web_users`
--
ALTER TABLE `web_users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `web_users_group`
--
ALTER TABLE `web_users_group`
MODIFY `id` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `web_users_lock_ip`
--
ALTER TABLE `web_users_lock_ip`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `web_users_login`
--
ALTER TABLE `web_users_login`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `web_users_reset`
--
ALTER TABLE `web_users_reset`
MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `web_users_role`
--
ALTER TABLE `web_users_role`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
