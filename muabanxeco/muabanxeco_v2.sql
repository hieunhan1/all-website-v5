-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2016 at 12:42 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `muabanxeco_v2`
--

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
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_admin`
--

INSERT INTO `web_admin` (`id`, `name`, `url`, `_table`, `parameter`, `file`, `img`, `_order`, `ajax`, `type`, `parent`, `status`) VALUES
(1, 'Trang chủ', 'home', '', '', 'home', 'adIconHome', 0, '0', 0, 0, 1),
(2, 'Cấu hình website', 'config', 'web_config', '', 'web_config', 'adIconConfig', 49, '0', 1, 0, 1),
(3, 'Danh mục menu', 'listmenu', 'web_header', '?properties=1', 'web_menu', 'adIconMenu', 7, '0', 1, 0, 1),
(4, 'Quản lý bài viết', 'article', 'web_header', '?properties=2&type_id=2', 'web_article', 'adIconArticle', 1, '1', 1, 0, 1),
(5, 'Quản lý xe cổ', 'cars', 'web_header', '?properties=2&type_id=3', 'web_cars', 'adIconCourse', 2, '0', 1, 0, 1),
(6, 'Thư viện ảnh', 'picture', 'web_picture', '', 'web_picture', 'adIconPhoto', 5, '0', 1, 0, 0),
(7, 'Entry test', 'entrytest', 'web_entrytest', '', 'web_entrytest', 'adIconEdit', 6, '0', 1, 0, 0),
(8, 'Slider & banner', 'sliderbanner', 'web_header', '?properties=2&type_id=16', 'web_slider', 'adIconAds', 9, '0', 1, 0, 1),
(9, 'DS Tỉnh - Thành', 'listcity', 'web_listcity', '', 'web_listcity', 'icon-city.jpg', 20, '0', 1, 0, 0),
(10, 'DS Quận - Huyện', 'listdistricts', 'web_listdistricts', '', 'web_listdistricts', 'icon-districts.jpg', 21, '0', 1, 0, 0),
(11, 'Đơn đặt hàng', 'order', 'web_order', '', 'web_order', 'icon-order.jpg', 22, '<span id="web_product_order" class="ajax_thongtin"></span>', 1, 0, 0),
(12, 'Đơn đặt hàng chi tiết', 'order_detail', 'web_order_detail', '', 'web_order_detail', 'icon-order-detail.jpg', 23, '0', 1, 0, 0),
(13, 'Menu admin', 'web_admin', 'web_admin', '', 'web_admin', 'adIconMenu', 50, '0', 2, 0, 1),
(14, 'Danh sách ngôn ngữ', 'language', 'web_language', '', 'web_language', 'adIconLang', 51, '0', 2, 0, 1),
(15, 'Vị trí thông tin', 'web_position', 'web_position', '', 'web_position', 'adIconPosition', 54, '0', 2, 0, 1),
(16, 'Biến môi trường', 'languagevar', 'web_language_var', '', 'web_language_var', 'adIconVar', 52, '0', 2, 0, 1),
(17, 'Group user', 'users_group', 'web_users_group', '', 'web_users_group', 'adIconGroup', 55, '0', 2, 0, 1),
(18, 'Add tags keyword', 'web_tags', 'web_tags', '', 'web_tags', 'adIconTags', 0, '0', 0, 0, 1),
(19, 'Team building', 'teambuilding', 'web_header', '?properties=2&type_id=6', 'web_teambuilding', 'adIconOpinion', 3, '1', 1, 0, 0),
(20, 'Loại thông tin', 'web_type', 'web_type', '', 'web_type', 'adIconType', 53, '0', 2, 0, 1),
(21, 'Liên hệ trực tuyến', 'web_contact', 'web_contact', '', 'web_contact', 'adIconContact', 10, '1', 1, 0, 1),
(22, 'Event logs', 'web_logs', 'web_logs', '', 'web_logs', 'adIconLog', 56, '0', 2, 0, 1),
(23, 'Tài khoản', 'web_users', 'web_users', '', 'web_users', 'adIconSetting', 100, '0', 2, 0, 1),
(24, 'Thông tin tài khoản', 'user', 'account', '?infomation=1', 'account', 'adIconUser', 0, '0', 0, 0, 1),
(25, 'Web Header', 'web_header', 'web_header', '', 'web_header', 'adIconOther', 57, '0', 2, 0, 1),
(26, 'Danh sách chi nhánh', 'branch', 'web_branch', '', 'web_branch', 'adIconOpening', 4, '0', 1, 0, 0),
(27, 'Phân quyền', 'users_role', 'web_users_role', '', 'web_users_role', 'adIconUserRole', 99, '0', 2, 0, 1),
(29, 'Quản lý hợp đồng', 'contract', 'mn_contract', '', 'mn_contract', 'adIconGroup', 2, '0', 3, 0, 0),
(28, 'Quản lý khách hàng', 'customer', 'mn_customer', '', 'mn_customer', 'adIconUser', 1, '0', 3, 0, 0),
(30, 'Quản lý môn học', 'mn_course', 'mn_course', '', 'mn_course', 'adIconCourse', 3, '0', 3, 0, 0),
(31, 'Quản lý lớp', 'mn_class', 'mn_class', '', 'mn_class', 'adIconOther', 4, '0', 3, 0, 0),
(32, 'Quản lý học phí', 'mn_fee', 'mn_fee', '', 'mn_fee', 'adIconMoney', 5, '0', 3, 0, 0),
(33, 'Quản lý bộ phận', 'mn_parts', 'mn_parts', '', 'mn_parts', 'adIconParts', 6, '0', 3, 0, 0),
(34, 'Quản lý nhân viên', 'mn_staff', 'mn_staff', '', 'mn_staff', 'adIconUser', 7, '0', 3, 0, 0),
(35, 'Quản lý sự kiện', 'event_form', 'web_event_form', '', 'web_event_form', 'adIconOpinion', 8, '0', 1, 0, 1),
(36, 'Quản lý quy trình', 'mn_action', 'mn_action', '', 'mn_action', 'adIconProcedure', 9, '0', 3, 0, 0),
(37, 'Quản lý giảng viên', 'trainer', 'mn_trainer', '', 'mn_trainer', 'adIconOther', 4, '1', 3, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `web_branch`
--

CREATE TABLE IF NOT EXISTS `web_branch` (
`id` int(3) NOT NULL,
  `name` varchar(50) NOT NULL,
  `shorten` varchar(20) DEFAULT NULL,
  `email` varchar(60) NOT NULL,
  `tel` varchar(50) NOT NULL,
  `fax` varchar(30) DEFAULT NULL,
  `address` varchar(200) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `googlemap` varchar(50) DEFAULT NULL,
  `_order` int(3) NOT NULL DEFAULT '0',
  `lang` varchar(2) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_branch`
--

INSERT INTO `web_branch` (`id`, `name`, `shorten`, `email`, `tel`, `fax`, `address`, `phone`, `googlemap`, `_order`, `lang`, `status`) VALUES
(1, 'Văn phòng chính', 'VP chính', 'webdulichhoaviet@gmail.com', '08 3765 0115', '08 3765 0115', 'F13/41V, Vĩnh Lộc A, H.Bình Chánh, Tp.HCM', '090 844 40 82', '', 1, 'vi', 1),
(2, 'Chi nhánh Hà Nội', 'CN Hà Nội', '', '04 3956 1450', '04 3956 1451', 'Đường 2-3 B, Khu Cầu Lớn, Lam Hồng, Đông Anh, Hà Nội', '098 318 54 82', NULL, 2, 'vi', 1),
(3, 'Văn phòng đại diện', 'VP đại diện', 'webdulichhoaviet@gmail.com', '08 3765 0115', '08 3765 0115', '69 đường số 20, P.Bình Hưng Hóa, Q.Bình Tân, Tp.HCM', '090 844 40 82', '10.817966, 106.608815', 3, 'vi', 1);

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
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_config`
--

INSERT INTO `web_config` (`id`, `name`, `name_var`, `value`, `_order`, `lang`, `status`) VALUES
(5, 'Số tin / trang', 'limit_1', '5', 10, 'vi', 1),
(6, 'Xe cổ / trang', 'limit_2', '12', 11, 'vi', 1),
(7, 'Hình ảnh / trang', 'limit_3', '10', 12, 'vi', 1),
(8, 'Video / trang', 'limit_4', '10', 13, 'vi', 1),
(11, 'Điện thoại', 'tel', '08 3765 0115', 3, 'vi', 1),
(12, 'Hotline', 'hotline', '0908 444 082', 6, 'vi', 1),
(14, 'Copyright', 'copyright', 'Copyright © 2016 by muabanxeco.vn', 5, 'vi', 1),
(32, 'Google map', 'googlemap', '10.8048863,106.6610537', 6, 'vi', 1),
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
(27, 'Tên trang website', 'sitename', 'Mua bán xe cổ Hồng Cường', 1, 'vi', 1),
(28, 'Site name', 'sitename', 'Dịch vụ thiết kế website iAppsCode', 1, 'en', 1),
(29, 'Số xe cổ trang home', 'limit_5', '8', 14, 'vi', 1),
(30, 'Địa chỉ', 'address', '195 Quốc lộ 13, P. Hiệp Bình Chánh, Thủ Đức, TP.HCM', 2, 'vi', 1),
(31, 'Email', 'email', 'muabanxeco@gmail.com', 4, 'vi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_contact`
--

CREATE TABLE IF NOT EXISTS `web_contact` (
`id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `address` varchar(200) DEFAULT NULL,
  `visitors` int(3) DEFAULT NULL,
  `children` int(3) DEFAULT NULL,
  `baby` int(2) DEFAULT NULL,
  `company` varchar(150) DEFAULT NULL,
  `destination` varchar(150) DEFAULT NULL,
  `date_khoihanh` bigint(10) DEFAULT NULL,
  `message` text NOT NULL,
  `datetime` bigint(10) NOT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '0',
  `type` int(11) NOT NULL,
  `header_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `web_content`
--

CREATE TABLE IF NOT EXISTS `web_content` (
`id` int(11) NOT NULL,
  `content` text NOT NULL,
  `more1` text,
  `header_id` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_content`
--

INSERT INTO `web_content` (`id`, `content`, `more1`, `header_id`) VALUES
(1, '<h2>Ngay cả các cơ quan hành pháp của Mỹ cũng dần rời bỏ dòng xe Harley-Davidson và chuyển sang mô tô BMW.</h2>\n\n<p>Tương lai tươi sáng đang chờ đón chi nhánh sản xuất mô tô của tập đoàn BMW khi ngày càng có nhiều lực lượng chức năng chọn xe của họ làm phương tiện phục vụ công tác. Ngay cả các cơ quan hành pháp của Mỹ cũng dần rời bỏ dòng xe Harley-Davidson và chuyển sang môtô BMW. Sở dĩ môtô BMW ngày càng được các cơ quan hành pháp ưa chuộng vì chúng sở hữu khả năng vận hành vượt trội, công nghệ kỹ thuật hiện đại và cho phép nâng cấp dễ dàng.</p>\n\n<p>Dòng môtô dành cho lực lượng chức năng của BMW hiện vẫn đang được sản xuất tại nhà máy ở Berline-Spandau, Đức. Có 4 dòng môtô BMW đi kèm phiên bản dành cho lực lượng chức năng, bao gồm R1200RT, F800GT, F800GS và F650GS. Trong đó, xe được lựa chọn nhiều nhất là BMW R1200RT.</p>', '<p>Zin 100%</p>\n\n<p>Bảo hành 12 tháng</p>\n\n<p>Miễn phí sữa chữa</p>', 14),
(2, '<h2><span style="font-size:18px;">Ngay cả các cơ quan hành pháp của Mỹ cũng dần rời bỏ dòng xe Harley-Davidson và chuyển sang mô tô BMW.</span></h2>\n\n<p>Tương lai tươi sáng đang chờ đón chi nhánh sản xuất mô tô của tập đoàn BMW khi ngày càng có nhiều lực lượng chức năng chọn xe của họ làm phương tiện phục vụ công tác. Ngay cả các cơ quan hành pháp của Mỹ cũng dần rời bỏ dòng xe Harley-Davidson và chuyển sang môtô BMW. Sở dĩ môtô BMW ngày càng được các cơ quan hành pháp ưa chuộng vì chúng sở hữu khả năng vận hành vượt trội, công nghệ kỹ thuật hiện đại và cho phép nâng cấp dễ dàng.</p>\n\n<p>Dòng môtô dành cho lực lượng chức năng của BMW hiện vẫn đang được sản xuất tại nhà máy ở Berline-Spandau, Đức. Có 4 dòng môtô BMW đi kèm phiên bản dành cho lực lượng chức năng, bao gồm R1200RT, F800GT, F800GS và F650GS. Trong đó, xe được lựa chọn nhiều nhất là BMW R1200RT.</p>', '<p>Zin 100%</p>\n\n<p>Bảo hành 24 tháng</p>', 15),
(3, '<h2><span style="font-size:18px;">Ngay cả các cơ quan hành pháp của Mỹ cũng dần rời bỏ dòng xe Harley-Davidson và chuyển sang mô tô BMW.</span></h2>\n\n<p>Tương lai tươi sáng đang chờ đón chi nhánh sản xuất mô tô của tập đoàn BMW khi ngày càng có nhiều lực lượng chức năng chọn xe của họ làm phương tiện phục vụ công tác. Ngay cả các cơ quan hành pháp của Mỹ cũng dần rời bỏ dòng xe Harley-Davidson và chuyển sang môtô BMW. Sở dĩ môtô BMW ngày càng được các cơ quan hành pháp ưa chuộng vì chúng sở hữu khả năng vận hành vượt trội, công nghệ kỹ thuật hiện đại và cho phép nâng cấp dễ dàng.</p>\n\n<p>Dòng môtô dành cho lực lượng chức năng của BMW hiện vẫn đang được sản xuất tại nhà máy ở Berline-Spandau, Đức. Có 4 dòng môtô BMW đi kèm phiên bản dành cho lực lượng chức năng, bao gồm R1200RT, F800GT, F800GS và F650GS. Trong đó, xe được lựa chọn nhiều nhất là BMW R1200RT.</p>', '<p>Zin 98%</p>\n\n<p>Bảo hành 12 tháng</p>', 16),
(4, '<h2><span style="font-size:18px;">Ngay cả các cơ quan hành pháp của Mỹ cũng dần rời bỏ dòng xe Harley-Davidson và chuyển sang mô tô BMW.</span></h2>\n\n<p>Tương lai tươi sáng đang chờ đón chi nhánh sản xuất mô tô của tập đoàn BMW khi ngày càng có nhiều lực lượng chức năng chọn xe của họ làm phương tiện phục vụ công tác. Ngay cả các cơ quan hành pháp của Mỹ cũng dần rời bỏ dòng xe Harley-Davidson và chuyển sang môtô BMW. Sở dĩ môtô BMW ngày càng được các cơ quan hành pháp ưa chuộng vì chúng sở hữu khả năng vận hành vượt trội, công nghệ kỹ thuật hiện đại và cho phép nâng cấp dễ dàng.</p>\n\n<p>Dòng môtô dành cho lực lượng chức năng của BMW hiện vẫn đang được sản xuất tại nhà máy ở Berline-Spandau, Đức. Có 4 dòng môtô BMW đi kèm phiên bản dành cho lực lượng chức năng, bao gồm R1200RT, F800GT, F800GS và F650GS. Trong đó, xe được lựa chọn nhiều nhất là BMW R1200RT.</p>', '<p>Zin 98%</p>\n\n<p>Bảo hành 12 tháng</p>', 17),
(5, '<h2><span style="font-size:18px;">Ngay cả các cơ quan hành pháp của Mỹ cũng dần rời bỏ dòng xe Harley-Davidson và chuyển sang mô tô BMW.</span></h2>\n\n<p>Tương lai tươi sáng đang chờ đón chi nhánh sản xuất mô tô của tập đoàn BMW khi ngày càng có nhiều lực lượng chức năng chọn xe của họ làm phương tiện phục vụ công tác. Ngay cả các cơ quan hành pháp của Mỹ cũng dần rời bỏ dòng xe Harley-Davidson và chuyển sang môtô BMW. Sở dĩ môtô BMW ngày càng được các cơ quan hành pháp ưa chuộng vì chúng sở hữu khả năng vận hành vượt trội, công nghệ kỹ thuật hiện đại và cho phép nâng cấp dễ dàng.</p>\n\n<p>Dòng môtô dành cho lực lượng chức năng của BMW hiện vẫn đang được sản xuất tại nhà máy ở Berline-Spandau, Đức. Có 4 dòng môtô BMW đi kèm phiên bản dành cho lực lượng chức năng, bao gồm R1200RT, F800GT, F800GS và F650GS. Trong đó, xe được lựa chọn nhiều nhất là BMW R1200RT.</p>', '<p>Zin 98%</p>\n\n<p>Bảo hành 12 tháng</p>', 18),
(6, '<h2><span style="font-size:18px;">Ngay cả các cơ quan hành pháp của Mỹ cũng dần rời bỏ dòng xe Harley-Davidson và chuyển sang mô tô BMW.</span></h2>\n\n<p>Tương lai tươi sáng đang chờ đón chi nhánh sản xuất mô tô của tập đoàn BMW khi ngày càng có nhiều lực lượng chức năng chọn xe của họ làm phương tiện phục vụ công tác. Ngay cả các cơ quan hành pháp của Mỹ cũng dần rời bỏ dòng xe Harley-Davidson và chuyển sang môtô BMW. Sở dĩ môtô BMW ngày càng được các cơ quan hành pháp ưa chuộng vì chúng sở hữu khả năng vận hành vượt trội, công nghệ kỹ thuật hiện đại và cho phép nâng cấp dễ dàng.</p>\n\n<p>Dòng môtô dành cho lực lượng chức năng của BMW hiện vẫn đang được sản xuất tại nhà máy ở Berline-Spandau, Đức. Có 4 dòng môtô BMW đi kèm phiên bản dành cho lực lượng chức năng, bao gồm R1200RT, F800GT, F800GS và F650GS. Trong đó, xe được lựa chọn nhiều nhất là BMW R1200RT.</p>', '<p>Zin 98%</p>\n\n<p>Bảo hành 12 tháng</p>', 19),
(7, '<h2><span style="font-size:18px;">Ngay cả các cơ quan hành pháp của Mỹ cũng dần rời bỏ dòng xe Harley-Davidson và chuyển sang mô tô BMW.</span></h2>\n\n<p>Tương lai tươi sáng đang chờ đón chi nhánh sản xuất mô tô của tập đoàn BMW khi ngày càng có nhiều lực lượng chức năng chọn xe của họ làm phương tiện phục vụ công tác. Ngay cả các cơ quan hành pháp của Mỹ cũng dần rời bỏ dòng xe Harley-Davidson và chuyển sang môtô BMW. Sở dĩ môtô BMW ngày càng được các cơ quan hành pháp ưa chuộng vì chúng sở hữu khả năng vận hành vượt trội, công nghệ kỹ thuật hiện đại và cho phép nâng cấp dễ dàng.</p>\n\n<p>Dòng môtô dành cho lực lượng chức năng của BMW hiện vẫn đang được sản xuất tại nhà máy ở Berline-Spandau, Đức. Có 4 dòng môtô BMW đi kèm phiên bản dành cho lực lượng chức năng, bao gồm R1200RT, F800GT, F800GS và F650GS. Trong đó, xe được lựa chọn nhiều nhất là BMW R1200RT.</p>', '<p>Zin 98%</p>\n\n<p>Bảo hành 12 tháng</p>', 20),
(8, '<h2><span style="font-size:18px;">Ngay cả các cơ quan hành pháp của Mỹ cũng dần rời bỏ dòng xe Harley-Davidson và chuyển sang mô tô BMW.</span></h2>\n\n<p>Tương lai tươi sáng đang chờ đón chi nhánh sản xuất mô tô của tập đoàn BMW khi ngày càng có nhiều lực lượng chức năng chọn xe của họ làm phương tiện phục vụ công tác. Ngay cả các cơ quan hành pháp của Mỹ cũng dần rời bỏ dòng xe Harley-Davidson và chuyển sang môtô BMW. Sở dĩ môtô BMW ngày càng được các cơ quan hành pháp ưa chuộng vì chúng sở hữu khả năng vận hành vượt trội, công nghệ kỹ thuật hiện đại và cho phép nâng cấp dễ dàng.</p>\n\n<p>Dòng môtô dành cho lực lượng chức năng của BMW hiện vẫn đang được sản xuất tại nhà máy ở Berline-Spandau, Đức. Có 4 dòng môtô BMW đi kèm phiên bản dành cho lực lượng chức năng, bao gồm R1200RT, F800GT, F800GS và F650GS. Trong đó, xe được lựa chọn nhiều nhất là BMW R1200RT.</p>', '<p>Zin 68%</p>\n\n<p>Bảo hành 10 tháng</p>', 21),
(9, '<p>Đã một năm rồi gắn bó và chia sẻ, cùng nhau vượt qua những vui bùn, trăn trở và phát triển. Đến ngày hôm nay SSC đã chính thức lớn mạnh, với một website có uy tín, một page hội với hơn 2,400 thành viên và một tập thể anh em đoàn kết và vững mạnh. Buổi tiệc big off mừng sinh nhật thành công đã khép lại, một trang nhật kí cho một năm đã trôi qua, nhưng đối với SSC mà nói nó chỉ là một bước mở đầu cho sự phát triển mạnh hơn nữa về sự gắn kết và chia sẽ đam mê.</p>\n\n<p style="text-align: center;"><img alt="" src="http://localhost/all_v5/muabanxeco_v2/public/images/1458017745.jpg" style="width: 600px; height: 399px;" /></p>\n\n<p><strong>HONGCUONGCLUB&nbsp;chúc CLB Sài Gòn SH Club thêm 1 tuổi mới, ngày càng gắn kết và phát triển.</strong></p>', NULL, 25),
(10, '<p>Trong khuôn khổ "Ngày hội siêu xe lần 2" đang diễn ra tại TP.HCM, bộ sưu tập xe cổ Hồng Cường đã thu hút nhiều sự chú ý của những người tham dự với những mẫu xe quý và hiếm.</p>\n\n<p style="text-align: center;"><img alt="" src="http://localhost/all_v5/muabanxeco_v2/public/images/1458017808.jpg" style="width: 600px; height: 337px;" /></p>\n\n<p>Tại "Ngày hội siêu xe lần 2", bộ sưu tập gần 30 mẫu xe cổ của Hồng Cường Club là một trong những điểm sáng của sự kiện này. Đa số những chiếc xe được trưng bày là những mẫu quý hiếm, vừa lạ vừa quen thuộc với người Việt Nam. Theo đại diện của Hồng Cường, bộ sưu tập này sẽ xác lập kỉ lục Việt Nam trong năm nay.</p>\n\n<p>Đây là mẫu Lambretta TV 175 của Ý, được sản xuất từ năm 1959, sử dụng động cơ 2 kì 175 cc. Xe đã được phục chế lại màu sơn và một vài chi tiết nhỏ.</p>\n\n<p>Những chiếc xe cup "huyền thoại" một thời của thế hệ trước giờ vẫn có thể hoạt động tốt.</p>\n\n<p>Đây là mẫu Honda CL 90, sản xuất năm 1967 - 1969 tại Nhật Bản.&nbsp;</p>\n\n<p>Chiếc Berlin Roller SR 50 sản xuất tại Đức vào năm 1959 là mẫu xe "đinh" của bộ sưu tập này. Chiếc xe này vẫn giữ được các chi tiết và đường nét nguyên bản sau nhiều thập kỉ.</p>\n\n<p>Cùng với chiếc&nbsp;Berlin Roller SR 50, chiếc Lambretta LD 150 sản xuất từ năm 1955 đến 1958 cũng là mẫu xe nguyên bản được đánh giá cao.&nbsp;</p>\n\n<p>Chiếc Vespa ACMA này được Piaggio sản xuất sau chiến tranh thế giới thứ 2.</p>\n\n<p>Một chiếc Honda Super Cub khá quen thuộc với người Việt Nam.</p>', NULL, 26),
(11, '<p>Thú chơi xe cổ đã trở thành một iữa những dòng xe hiện đại trên phố, chiếc xe cổ vẫn luôn thu hút mọi ánh nhìn tò mò và ngưỡng mộ của mọi người dù là thanh niên trẻ hay các ông cụ lão.</p>\n\n<p>Không giống như nhiều “đại gia” khác thể hiện độ giàu có của mình bằng bộ sưu tập các loại ô tô đắt tiền, Nguyễn Hiển Tuấn chọn cho mình một lối đi riêng, khiến nhiều đại gia có “máu mặt” khác cũng phải ghen tị.</p>\n\n<p>Hàng ngày, Tuấn tranh thủ giải quyết công việc rồi lân la ra khu chợ gần nhà tìm mua, bán xe máy cũ. Lúc đầu, nhiều tiểu thương thấy lạ, đâm ra nghi hoặc về căn bệnh “khác người” này của Tuấn và gọi anh bằng cái tên chẳng mấy tốt đẹp: Tuấn “hâm”.</p>\n\n<p style="text-align: center;"><img alt="" src="http://localhost/all_v5/muabanxeco_v2/public/images/1458027315.jpg" style="width: 1024px; height: 756px;" /></p>', NULL, 28);

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_event_form`
--

INSERT INTO `web_event_form` (`id`, `name`, `img`, `subject`, `content`, `notification`, `email`, `type`, `type_id`, `status`) VALUES
(1, 'Liên hệ', '', 'Thông báo liên hệ đến Hoa Việt Travel®', '<p>Kính gởi bạn {_name},</p>\n\n<p>Cảm ơn bạn đã quan tâm đến các tour du lịch&nbsp;của Hoa Việt Travel®.</p>\n\n<p>Xin thông báo bạn đã liên hệ đến&nbsp;Hoa Việt Travel®&nbsp;<strong>thành công.</strong></p>\n\n<p>Nội dung liên hệ:</p>\n\n<p style="margin-left: 40px;"><em>{_message}</em></p>\n\n<p>Một lần nữa, cảm ơn bạn đã quan tâm đến các tour du lịch&nbsp;của Hoa Việt Travel®.<br />\n<span>Trân trọng,</span></p>', '<p>Contact Success</p>\n\n<p>Please notify that you have contacted successfully to <strong>Hoa Việt Travel®</strong>. We will reply to you soon.</p>\n\n<p>Respect,</p>', '', 1, 17, 1),
(7, 'Đặt tour', '', 'Thông báo đặt tour du lịch tại Hoa Việt Travel®', '<p>Kính gởi bạn {_name},</p>\n\n<p>Cảm ơn bạn đã quan tâm đến các tour du lịch&nbsp;của Hoa Việt Travel®.</p>\n\n<p>Xin thông báo bạn đã đặt tour du&nbsp;lịch của&nbsp;Hoa Việt Travel®&nbsp;<strong>thành công</strong>.</p>\n\n<p style="margin-left: 40px;">Tour du lịch: <em><strong>{_tour}</strong></em><br />\nGiá tour cho 1 người: <strong>{_price}</strong> VNĐ<br />\nThời gian: <strong>{_duration}</strong></p>\n\n<p>Hoa Việt Travel® sẽ liên hệ đến&nbsp;bạn sớm nhất có thể.</p>\n\n<p>Một lần nữa, cảm ơn bạn đã quan tâm đến các tour du lịch của&nbsp;Hoa Việt Travel®.<br />\nTrân trọng,</p>\n\n<p>&nbsp;</p>\n\n<p><span style="font-size:18px;"><span style="color:#808080;"><strong>&nbsp;HOA VIỆT TRAVEL® - Hotline: 0908 444 082</strong></span></span></p>\n\n<table border="0" cellpadding="5" cellspacing="0" style="width:100%;">\n	<tbody>\n		<tr>\n			<td style="width: 32%;"><span style="color:#808080;"><em><strong>Văn phòng chính</strong></em></span></td>\n			<td style="width: 32%;"><span style="color:#808080;"><em><strong>Chi nhánh Hà Nội</strong></em></span></td>\n			<td><span style="color:#808080;"><em><strong>Văn phòng đại diện</strong></em></span></td>\n		</tr>\n		<tr>\n			<td><span style="color:#808080;"><em>Địa chỉ:&nbsp;F13/41V, Vĩnh Lộc A, H.Bình Chánh, Tp.HCM</em></span></td>\n			<td><span style="color:#808080;"><em>Đường 2-3 B, Khu Cầu Lớn, Lam Hồng, Đông Anh, Hà Nội</em></span></td>\n			<td><span style="color:#808080;"><em>69 đường số 20, P.Bình Hưng Hóa, Q.Bình Tân, Tp.HCM</em></span></td>\n		</tr>\n		<tr>\n			<td><span style="color:#808080;"><em>Điện thoại:&nbsp;08 3765 0115 - FAX: 08 3765 0115</em></span></td>\n			<td><span style="color:#808080;"><em>Điện thoại:&nbsp;04 3956 1450 - FAX:&nbsp;04 3956 1451</em></span></td>\n			<td><span style="color:#808080;"><em>Điện thoại:&nbsp;08 3765 0115 - FAX:&nbsp;08 3765 0115</em></span></td>\n		</tr>\n	</tbody>\n</table>', '<p><strong>Đặt tour&nbsp;thành công</strong></p>\n\n<p>Bạn đã đặt tourcủa Hoa&nbsp;Việt Travel® thành công. Chúng tôi sẽ liên hệ với bạn chậm nhất trong 24 giờ.<span style="line-height: 20.8px;">&nbsp;</span><em style="line-height: 20.8px;"><strong>{_tour}</strong></em><span style="line-height: 20.8px;">&nbsp;</span></p>\n\n<p>Thân chào,</p>', '', 1, 3, 1),
(8, 'Yêu cầu dịch vụ', '', 'Thông báo yêu cầu dịch vụ tour của Hoa Việt Travel®', '<p>Kính gởi bạn {_name},</p>\n\n<p>Cảm ơn bạn đã quan tâm đến các tour du lịch&nbsp;của <em><strong>Hoa Việt Travel®</strong></em>.</p>\n\n<p>Xin thông báo bạn đã yêu cầu&nbsp;dịch vụ&nbsp;tour&nbsp;của&nbsp;Hoa Việt Travel®&nbsp;<strong>thành công</strong>.</p>\n\n<p style="margin-left: 40px;">Ngày khởi hành: <strong>{_date}</strong><br />\nĐiểm khởi hành: <strong>{_address}</strong><br />\nĐiểm đến: <strong>{_destination}</strong><br />\nSố khách: <strong>{_visitors}&nbsp;</strong><em>(từ 12 tuổi trở lên)</em><br />\n{_children}<br />\n{_baby}</p>\n\n<p>Hoa Việt Travel® sẽ trả&nbsp;lời cho bạn sớm nhất có thể.</p>\n\n<p>Một lần nữa, cảm ơn bạn đã quan tâm đến các tour du lịch của&nbsp;Hoa Việt Travel®.<br />\nTrân trọng,</p>\n\n<p>&nbsp;</p>\n\n<p><span style="font-size:18px;"><span style="color:#808080;"><strong>&nbsp;HOA VIỆT TRAVEL® - Hotline: 0908 444 082</strong></span></span></p>\n\n<table border="0" cellpadding="5" cellspacing="0" style="width:100%;">\n	<tbody>\n		<tr>\n			<td style="width: 32%;"><span style="color:#808080;"><em><strong>Văn phòng chính</strong></em></span></td>\n			<td style="width: 32%;"><span style="color:#808080;"><em><strong>Chi nhánh Hà Nội</strong></em></span></td>\n			<td><span style="color:#808080;"><em><strong>Văn phòng đại diện</strong></em></span></td>\n		</tr>\n		<tr>\n			<td><span style="color:#808080;"><em>Địa chỉ:&nbsp;F13/41V, Vĩnh Lộc A, H.Bình Chánh, Tp.HCM</em></span></td>\n			<td><span style="color:#808080;"><em>Đường 2-3 B, Khu Cầu Lớn, Lam Hồng, Đông Anh, Hà Nội</em></span></td>\n			<td><span style="color:#808080;"><em>69 đường số 20, P.Bình Hưng Hóa, Q.Bình Tân, Tp.HCM</em></span></td>\n		</tr>\n		<tr>\n			<td><span style="color:#808080;"><em>Điện thoại:&nbsp;08 6268 9046 - FAX:&nbsp;08 6268 9013</em></span></td>\n			<td><span style="color:#808080;"><em>Điện thoại:&nbsp;04 3956 1450 - FAX:&nbsp;04 3956 1451</em></span></td>\n			<td><span style="color:#808080;"><em>Điện thoại:&nbsp;08 3765 0115 - FAX:&nbsp;08 3765 0115</em></span></td>\n		</tr>\n	</tbody>\n</table>', '<p><strong>Yêu cầu dịch vụ của bạn đến Hoa Việt Travel®&nbsp;thành công</strong></p>\n\n<p>Bạn đã yêu cầu dịch vụ&nbsp;đặt tour của Hoa&nbsp;Việt Travel® thành công. Chúng tôi sẽ liên hệ với bạn chậm nhất trong 24 giờ.</p>\n\n<p>Thân chào,</p>', '', 1, 22, 1);

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
  `duration` varchar(100) DEFAULT NULL,
  `means` varchar(10) DEFAULT NULL,
  `hotel` tinyint(1) DEFAULT NULL,
  `depart` varchar(100) DEFAULT NULL,
  `destination` varchar(150) DEFAULT NULL,
  `schedule` varchar(200) DEFAULT NULL,
  `price` bigint(10) DEFAULT NULL,
  `parent` int(5) NOT NULL DEFAULT '0',
  `_order` int(5) NOT NULL DEFAULT '0',
  `other` varchar(200) DEFAULT NULL,
  `datetime` bigint(10) NOT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `properties` tinyint(1) NOT NULL DEFAULT '0',
  `type_id` int(2) NOT NULL,
  `position_id` varchar(20) DEFAULT NULL,
  `menu_id` varchar(50) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_header`
--

INSERT INTO `web_header` (`id`, `name`, `name_alias`, `url`, `img`, `title`, `description`, `tags`, `code`, `duration`, `means`, `hotel`, `depart`, `destination`, `schedule`, `price`, `parent`, `_order`, `other`, `datetime`, `lang`, `status`, `properties`, `type_id`, `position_id`, `menu_id`) VALUES
(1, 'Trang chủ', 'trang-chu', 'http://localhost/all_v5/muabanxeco_v2/', '', 'Mua bán xe cổ Hồng Cường | Mua ban xe co', 'Hồng Cường chuyên kinh doanh mua bán, trao đổi, ký gửi xe cổ', 'mua bán xe cổ,mua ban xe co,hồng cường,hong cuong,mua ban,xe co', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 1457944020, 'vi', 1, 1, 1, ',2,3,', NULL),
(2, 'Xe cổ', 'xe-co', '', '', 'Xe cổ', 'Nơi mua bán, chia sẻ, trao đổi và thảo luận về thú vui sưu tầm xe cổ, đồ cổ...', 'xe cổ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, NULL, 1457944140, 'vi', 1, 1, 3, ',7,2,', NULL),
(3, 'Xe độ', 'xe-do', '', '', 'Xe độ', 'Chuyên bán buôn, trao đổi, độ xe, các loại phụ tùng độ xe, đồ chơi xe các loại', 'xe độ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 2, NULL, 1457944260, 'vi', 1, 1, 3, ',7,2,', NULL),
(4, 'Giới thiệu', 'gioi-thieu', '', '', 'Giới thiệu mua bán xe cổ Hồng Cường', 'Giới thiệu mua bán xe cổ Hồng Cường', 'giới thiệu mua bán xe cổ,gioi thieu mua ban xe co', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, NULL, 1457944260, 'vi', 1, 1, 2, ',2,3,', NULL),
(5, 'Mua bán', 'mua-ban', '', '', 'Mua bán xe cổ Hồng Cường', 'Mua bán xe cổ Hồng Cường', 'mua bán xe cổ hồng cường,mua ban xe co hong cuong,mua ban xe co', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, 1457944320, 'vi', 1, 1, 3, ',2,3,', NULL),
(6, 'Bệnh viện', 'benh-vien-xe-co', '', '', 'Bệnh viện xe cổ', 'Bệnh viện xe cổ', 'bệnh viện xe cổ,benh vien xe co', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, 1457944380, 'vi', 1, 1, 2, ',8,2,3,', NULL),
(7, 'Kiến thức', 'kien-thuc-xe-co', '', '', 'Kiến thức xe cổ', 'Kiến thức xe cổ', 'kiến thức xe cổ,kien thuc xe co', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 5, NULL, 1457944440, 'vi', 1, 1, 2, ',2,3,', NULL),
(8, 'Tin tức - Sự kiện', 'tin-tuc-su-kien', '', '', 'Tin tức - Sự kiện xe cổ Hồng Cường', 'Tin tức - Sự kiện xe cổ Hồng Cường', 'tin tức xe cổ,sự kiện xe cổ,tin tuc xe co,su kien xe co', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 6, NULL, 1457944440, 'vi', 1, 1, 2, ',8,2,3,', NULL),
(9, 'Liên hệ', 'lien-he', '', '', 'Liên hệ mua bán xe cổ', 'Liên hệ mua bán xe cổ', 'liên hệ mua bán xe cổ,lien he mua ban xe co', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 7, NULL, 1457944500, 'vi', 1, 1, 17, ',2,3,', NULL),
(10, 'Honda', 'mua-ban-xe-co-honda', '', '', 'Mua bán xe cổ Honda', 'Mua bán xe cổ Honda', 'mua bán xe cổ honda,mua bán xe co honda,honda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 3, NULL, 1457944620, 'vi', 1, 1, 3, ',2,', NULL),
(11, 'Vespa', 'mua-ban-xe-co-vespa', '', '', 'Mua bán xe cổ Vespa', 'Mua bán xe cổ Vespa', 'mua bán xe cổ vespa,mua ban xe co vespa,vespa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 4, NULL, 1457944680, 'vi', 1, 1, 3, ',2,', NULL),
(12, 'BMW', 'mua-ban-xe-co-bmw', '', '', 'Mua bán xe cổ BMW', 'Mua bán xe cổ BMW', 'mua bán xe cổ bmw,mua ban xe co bmw,bmw', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 5, NULL, 1457944740, 'vi', 1, 1, 3, ',2,', NULL),
(13, 'Các loại xe khác', 'cac-loai-xe-co-khac', '', '', 'Các loại xe cổ khác', 'Các loại xe cổ khác', 'các loại xe cổ khác,cac loai xe co khac,cac loai xe co', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 10, NULL, 1457944740, 'vi', 1, 1, 3, ',2,', NULL),
(14, 'Vespa trắng đời 1945', 'vespa-trang-doi-1945', '', '1457945344.jpg', 'Vespa trắng đời 1945', '', 'vespa trắng đời 1945', '', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 1457945160, 'vi', 1, 2, 3, NULL, ',2,5,11,'),
(15, 'Vespa cam đời 1955', 'vespa-cam-doi-1955', '', '1457945994.jpg', 'Vespa cam đời 1955', '', 'vespa cam đời 1955', '', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 1457945880, 'vi', 1, 2, 3, NULL, ',27,2,5,11,'),
(16, 'Lam Vespa màu trắng Zin', 'lam-vespa-mau-trang-zin', '', '1457946087.jpg', 'Lam Vespa màu trắng Zin', 'Ngay cả các cơ quan hành pháp của Mỹ cũng dần rời bỏ dòng xe Harley-Davidson và chuyển sang mô tô BMW.', 'lam vespa màu trắng zin', '', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 1457946000, 'vi', 1, 2, 3, NULL, ',2,5,11,'),
(17, 'Xe Honda 67 trắng đen', 'xe-honda-67-trang-den', '', '1457946160.jpg', 'Xe Honda 67 trắng đen', 'Ngay cả các cơ quan hành pháp của Mỹ cũng dần rời bỏ dòng xe Harley-Davidson và chuyển sang mô tô BMW.', 'xe honda 67 trắng đen', '', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 1457946060, 'vi', 1, 2, 3, NULL, ',3,5,10,'),
(18, 'Xe Honda 67 xanh đen', 'xe-honda-67-xanh-den', '', '1457946234.jpg', 'Xe Honda 67 xanh đen', '', 'xe honda 67 xanh đen', '', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 1457946120, 'vi', 1, 2, 3, NULL, ',27,3,5,10,'),
(19, 'Môtô BMW đời 1975', 'moto-bmw-doi-1975', '', '1457946313.jpg', 'Môtô BMW đời 1975', '', 'môtô bmw đời 1975', '', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 1457946240, 'vi', 1, 2, 3, NULL, ',2,5,12,'),
(20, 'Môtô cảnh sát BMW', 'moto-canh-sat-bmw', '', '1457946358.jpg', 'Môtô cảnh sát BMW', '', 'môtô cảnh sát bmw', '', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 1457946300, 'vi', 1, 2, 3, NULL, ',27,3,5,12,'),
(21, 'Môtô BMW đời 1965', 'moto-bmw-doi-1965', '', '1457946410.jpg', 'Môtô BMW đời 1965', '', 'môtô bmw đời 1965', '', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 1457946360, 'vi', 1, 2, 3, NULL, ',3,5,12,'),
(22, 'Facebook', 'facebook', '', '1458014546.gif', 'Facebook', '', 'facebook', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 51, NULL, 1458014520, 'vi', 1, 1, 20, ',6,', NULL),
(23, 'Youtube', 'youtube', '', '1458014619.gif', 'Youtube', '', 'youtube', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 52, NULL, 1458014580, 'vi', 1, 1, 20, ',6,', NULL),
(24, 'Google plus', 'google-plus', '', '1458014640.gif', 'Google plus', '', 'google plus', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 53, NULL, 1458014580, 'vi', 1, 1, 20, ',6,', NULL),
(25, 'Sinh Nhật 01 năm tuổi SH Club', 'sinh-nhat-01-nam-tuoi-sh-club', '', '1458017745.jpg', 'Sinh Nhật 01 năm tuổi SH Club', 'Đã một năm rồi gắn bó và chia sẻ, cùng nhau vượt qua những vui bùn, trăn trở và phát triển.', 'sinh nhật 01 năm tuổi sh club', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 1458017700, 'vi', 1, 2, 2, NULL, ',8,'),
(26, 'Dàn xe cổ hiếm trưng bày ở Sài Gòn', 'dan-xe-co-hiem-trung-bay-o-sai-gon', '', '1458017808.jpg', 'Dàn xe cổ hiếm trưng bày ở Sài Gòn', 'Trong khuôn khổ Ngày hội siêu xe lần 2 đang diễn ra tại TP.HCM, bộ sưu tập xe cổ Hồng Cường đã thu hút nhiều sự chú ý của những người tham dự với những mẫu xe quý và hiếm.', 'dàn xe cổ hiếm trưng bày ở sài gòn', 'bN4hdMsreBg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 1458017760, 'vi', 1, 2, 2, NULL, ',6,8,'),
(27, 'Xe cổ HOT', 'xe-co-hot', '', '', 'Xe cổ HOT', '', 'xe cổ hot', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 1458025260, 'vi', 1, 1, 3, ',5,', NULL),
(28, 'Giới thiệu mua bán xe cổ Hồng Cường', 'gioi-thieu-mua-ban-xe-co-hong-cuong', '', '1458027315.jpg', 'Giới thiệu mua bán xe cổ Hồng Cường', 'Thú chơi xe cổ đã trở thành một iữa những dòng xe hiện đại trên phố, chiếc xe cổ vẫn luôn thu hút mọi ánh nhìn tò mò và ngưỡng mộ của mọi người dù là thanh niên trẻ hay các ông cụ lão.', 'giới thiệu mua bán xe cổ hồng cường', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 1458027240, 'vi', 1, 2, 2, NULL, ',4,');

-- --------------------------------------------------------

--
-- Table structure for table `web_ip_address`
--

CREATE TABLE IF NOT EXISTS `web_ip_address` (
`id` int(11) NOT NULL,
  `ip_address` varchar(20) NOT NULL,
  `datetime` bigint(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_ip_address`
--

INSERT INTO `web_ip_address` (`id`, `ip_address`, `datetime`) VALUES
(2, '115.78.128.150', 1453771522),
(3, '115.78.128.150', 1453771608),
(4, '115.78.128.150', 1453771760),
(5, '115.78.128.150', 1453772350),
(6, '115.78.128.150', 1453772470),
(7, '115.78.128.150', 1453772570),
(8, '115.78.128.150', 1454529151);

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
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_logs`
--

INSERT INTO `web_logs` (`id`, `name`, `action`, `_table`, `table_id`, `datetime`, `username`, `content`, `lang`, `status`, `date_restore`, `user_restore`) VALUES
(1, 'Trang chủ', 'update', 'web_header', 1, 1453771470, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1%%%Trang chủ%%%trang-chu%%%%%%%%%Hoa Việt Travel | Du lịch trong nước - Du lịch ngoài nước - Du lịch Hoa Việt - Website du lịch%%%Hoa Việt Travel - Cung cấp các chương trình tour du lịch  trong nước và ngoài nước, các dịch vụ du lịch, du lịch giá rẻ, tour du lịch khuyến mãi%%%hoa việt travel,du lịch trong nước,du lịch ngoài nước,du lịch hoa việt,website du lịch,du lich,trong nuoc,ngoai nuoc,hoa viet travel%%%%%%%%%%%%%%%%%%%%%%%%%%%0%%%1%%%%%%1452827040%%%vi%%%1%%%1%%%1%%%,20,', 'vi', 0, NULL, NULL),
(2, 'Trang chủ', 'update', 'web_header', 1, 1453771490, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1%%%Trang chủ%%%trang-chu%%%%%%%%%1 Hoa Việt Travel | Du lịch trong nước - Du lịch ngoài nước - Du lịch Hoa Việt - Website du lịch%%%Hoa Việt Travel - Cung cấp các chương trình tour du lịch  trong nước và ngoài nước, các dịch vụ du lịch, du lịch giá rẻ, tour du lịch khuyến mãi%%%hoa việt travel,du lịch trong nước,du lịch ngoài nước,du lịch hoa việt,website du lịch,du lich,trong nuoc,ngoai nuoc,hoa viet travel%%%%%%%%%%%%%%%%%%%%%%%%%%%0%%%1%%%%%%1452827040%%%vi%%%1%%%1%%%1%%%,20,', 'vi', 0, NULL, NULL),
(3, 'Trần Hiếu Nhân', 'create', 'web_contact', 12, 1453771522, 'admin', '', 'vi', 0, NULL, NULL),
(4, 'Trần Hiếu Nhân', 'create', 'web_contact', 13, 1453771609, 'admin', '', 'vi', 0, NULL, NULL),
(5, 'Trần Hiếu Nhân', 'create', 'web_contact', 14, 1453771760, 'admin', '', 'vi', 0, NULL, NULL),
(6, 'Đặt tour', 'update', 'web_event_form', 7, 1453772069, 'admin', 'id,name,img,subject,content,notification,email,type,type_id,statusfields%%%values7%%%Đặt tour%%%%%%Thông báo đặt tour du lịch tại Hoa Việt Travel®%%%<p>Kính gởi bạn {_name},</p>\n\n<p>Cảm ơn bạn đã quan tâm đến các tour du lịch&nbsp;của Hoa Việt Travel®.</p>\n\n<p>Xin thông báo bạn đã đặt tour du lịch của&nbsp;Hoa Việt Travel®&nbsp;<strong>thành công</strong>.</p>\n\n<p style="margin-left: 40px;">Tour du lịch: {_tour}<br />\nGiá tour cho 1 người: {_price}<br />\nThời gian: {_duration}</p>\n\n<p>Hoa Việt Travel® sẽ trả&nbsp;lời cho bạn sớm nhất có thể.</p>\n\n<p>Một lần nữa, cảm ơn bạn đã quan tâm đến các tour du lịch của&nbsp;Hoa Việt Travel®.<br />\nTrân trọng,</p>\n\n<p>&nbsp;</p>\n\n<p><span style="font-size:18px;"><span style="color:#808080;"><strong>&nbsp;HOA VIỆT TRAVEL® - Hotline: 0908 444 082</strong></span></span></p>\n\n<table border="0" cellpadding="5" cellspacing="0" style="width:100%;">\n	<tbody>\n		<tr>\n			<td style="width: 32%;"><span style="color:#808080;"><em><strong>Văn phòng chính</strong></em></span></td>\n			<td style="width: 32%;"><span style="color:#808080;"><em><strong>Chi nhánh Hà Nội</strong></em></span></td>\n			<td><span style="color:#808080;"><em><strong>Văn phòng đại diện</strong></em></span></td>\n		</tr>\n		<tr>\n			<td><span style="color:#808080;"><em>Địa chỉ:&nbsp;F13/41V, Vĩnh Lộc A, H.Bình Chánh, Tp.HCM</em></span></td>\n			<td><span style="color:#808080;"><em>Đường 2-3 B, Khu Cầu Lớn, Lam Hồng, Đông Anh, Hà Nội</em></span></td>\n			<td><span style="color:#808080;"><em>69 đường số 20, P.Bình Hưng Hóa, Q.Bình Tân, Tp.HCM</em></span></td>\n		</tr>\n		<tr>\n			<td><span style="color:#808080;"><em>Điện thoại:&nbsp;08 6268 9046 - FAX:&nbsp;08 6268 9013</em></span></td>\n			<td><span style="color:#808080;"><em>Điện thoại:&nbsp;04 3956 1450 - FAX:&nbsp;04 3956 1451</em></span></td>\n			<td><span style="color:#808080;"><em>Điện thoại:&nbsp;08 3765 0115 - FAX:&nbsp;08 3765 0115</em></span></td>\n		</tr>\n	</tbody>\n</table>%%%<p><strong>Đặt tour&nbsp;thành công</strong></p>\n\n<p>Bạn đã đặt tour <em><strong>{_tour}</strong></em> của Hoa&nbsp;Việt Travel® thành công. Chúng tôi sẽ liên hệ với bạn chậm nhất trong 24 giờ.</p>\n\n<p>Thân chào,</p>%%%%%%1%%%3%%%1', 'vi', 0, NULL, NULL),
(7, 'Yêu cầu dịch vụ', 'update', 'web_event_form', 8, 1453772111, 'admin', 'id,name,img,subject,content,notification,email,type,type_id,statusfields%%%values8%%%Yêu cầu dịch vụ%%%%%%Thông báo yêu cầu dịch vụ tour của Hoa Việt Travel®%%%<p>Kính gởi bạn {_name},</p>\n\n<p>Cảm ơn bạn đã quan tâm đến các tour du lịch&nbsp;của <em><strong>Hoa Việt Travel®</strong></em>.</p>\n\n<p>Xin thông báo bạn đã yêu cầu&nbsp;dịch vụ&nbsp;tour&nbsp;của&nbsp;Hoa Việt Travel®&nbsp;<strong>thành công</strong>.</p>\n\n<p style="margin-left: 40px;">Ngày khởi hành: {_date}<br />\nĐiểm khởi hành: {_address}<br />\nĐiểm đến: {_destination}<br />\nSố khách: {_visitors}<br />\nTrẻ em: {_children}<br />\nTrẻ nhỏ: {_baby}</p>\n\n<p>Hoa Việt Travel® sẽ trả&nbsp;lời cho bạn sớm nhất có thể.</p>\n\n<p>Một lần nữa, cảm ơn bạn đã quan tâm đến các tour du lịch của&nbsp;Hoa Việt Travel®.<br />\nTrân trọng,</p>\n\n<p>&nbsp;</p>\n\n<p><span style="font-size:18px;"><span style="color:#808080;"><strong>&nbsp;HOA VIỆT TRAVEL® - Hotline: 0908 444 082</strong></span></span></p>\n\n<table border="0" cellpadding="5" cellspacing="0" style="width:100%;">\n	<tbody>\n		<tr>\n			<td style="width: 32%;"><span style="color:#808080;"><em><strong>Văn phòng chính</strong></em></span></td>\n			<td style="width: 32%;"><span style="color:#808080;"><em><strong>Chi nhánh Hà Nội</strong></em></span></td>\n			<td><span style="color:#808080;"><em><strong>Văn phòng đại diện</strong></em></span></td>\n		</tr>\n		<tr>\n			<td><span style="color:#808080;"><em>Địa chỉ:&nbsp;F13/41V, Vĩnh Lộc A, H.Bình Chánh, Tp.HCM</em></span></td>\n			<td><span style="color:#808080;"><em>Đường 2-3 B, Khu Cầu Lớn, Lam Hồng, Đông Anh, Hà Nội</em></span></td>\n			<td><span style="color:#808080;"><em>69 đường số 20, P.Bình Hưng Hóa, Q.Bình Tân, Tp.HCM</em></span></td>\n		</tr>\n		<tr>\n			<td><span style="color:#808080;"><em>Điện thoại:&nbsp;08 6268 9046 - FAX:&nbsp;08 6268 9013</em></span></td>\n			<td><span style="color:#808080;"><em>Điện thoại:&nbsp;04 3956 1450 - FAX:&nbsp;04 3956 1451</em></span></td>\n			<td><span style="color:#808080;"><em>Điện thoại:&nbsp;08 3765 0115 - FAX:&nbsp;08 3765 0115</em></span></td>\n		</tr>\n	</tbody>\n</table>%%%<p><strong>Yêu cầu dịch vụ của bạn đến Hoa Việt Travel®&nbsp;thành công</strong></p>\n\n<p>Bạn đã yêu cầu dịch vụ&nbsp;đặt tour của Hoa&nbsp;Việt Travel® thành công. Chúng tôi sẽ liên hệ với bạn chậm nhất trong 24 giờ.</p>\n\n<p>Thân chào,</p>%%%%%%1%%%22%%%1', 'vi', 0, NULL, NULL),
(8, 'Yêu cầu dịch vụ', 'update', 'web_event_form', 8, 1453772178, 'admin', 'id,name,img,subject,content,notification,email,type,type_id,statusfields%%%values8%%%Yêu cầu dịch vụ%%%%%%Thông báo yêu cầu dịch vụ tour của Hoa Việt Travel®%%%<p>Kính gởi bạn {_name},</p>\n\n<p>Cảm ơn bạn đã quan tâm đến các tour du lịch&nbsp;của <em><strong>Hoa Việt Travel®</strong></em>.</p>\n\n<p>Xin thông báo bạn đã yêu cầu&nbsp;dịch vụ&nbsp;tour&nbsp;của&nbsp;Hoa Việt Travel®&nbsp;<strong>thành công</strong>.</p>\n\n<p style="margin-left: 40px;">Ngày khởi hành: <strong>{_date}</strong><br />\nĐiểm khởi hành: <strong>{_address}</strong><br />\nĐiểm đến: <strong>{_destination}</strong><br />\nSố khách: <strong>{_visitors}</strong><br />\n<strong>{_children}</strong><br />\n<strong>{_baby}</strong></p>\n\n<p>Hoa Việt Travel® sẽ trả&nbsp;lời cho bạn sớm nhất có thể.</p>\n\n<p>Một lần nữa, cảm ơn bạn đã quan tâm đến các tour du lịch của&nbsp;Hoa Việt Travel®.<br />\nTrân trọng,</p>\n\n<p>&nbsp;</p>\n\n<p><span style="font-size:18px;"><span style="color:#808080;"><strong>&nbsp;HOA VIỆT TRAVEL® - Hotline: 0908 444 082</strong></span></span></p>\n\n<table border="0" cellpadding="5" cellspacing="0" style="width:100%;">\n	<tbody>\n		<tr>\n			<td style="width: 32%;"><span style="color:#808080;"><em><strong>Văn phòng chính</strong></em></span></td>\n			<td style="width: 32%;"><span style="color:#808080;"><em><strong>Chi nhánh Hà Nội</strong></em></span></td>\n			<td><span style="color:#808080;"><em><strong>Văn phòng đại diện</strong></em></span></td>\n		</tr>\n		<tr>\n			<td><span style="color:#808080;"><em>Địa chỉ:&nbsp;F13/41V, Vĩnh Lộc A, H.Bình Chánh, Tp.HCM</em></span></td>\n			<td><span style="color:#808080;"><em>Đường 2-3 B, Khu Cầu Lớn, Lam Hồng, Đông Anh, Hà Nội</em></span></td>\n			<td><span style="color:#808080;"><em>69 đường số 20, P.Bình Hưng Hóa, Q.Bình Tân, Tp.HCM</em></span></td>\n		</tr>\n		<tr>\n			<td><span style="color:#808080;"><em>Điện thoại:&nbsp;08 6268 9046 - FAX:&nbsp;08 6268 9013</em></span></td>\n			<td><span style="color:#808080;"><em>Điện thoại:&nbsp;04 3956 1450 - FAX:&nbsp;04 3956 1451</em></span></td>\n			<td><span style="color:#808080;"><em>Điện thoại:&nbsp;08 3765 0115 - FAX:&nbsp;08 3765 0115</em></span></td>\n		</tr>\n	</tbody>\n</table>%%%<p><strong>Yêu cầu dịch vụ của bạn đến Hoa Việt Travel®&nbsp;thành công</strong></p>\n\n<p>Bạn đã yêu cầu dịch vụ&nbsp;đặt tour của Hoa&nbsp;Việt Travel® thành công. Chúng tôi sẽ liên hệ với bạn chậm nhất trong 24 giờ.</p>\n\n<p>Thân chào,</p>%%%%%%1%%%22%%%1', 'vi', 0, NULL, NULL),
(9, 'Yêu cầu dịch vụ', 'update', 'web_event_form', 8, 1453772304, 'admin', 'id,name,img,subject,content,notification,email,type,type_id,statusfields%%%values8%%%Yêu cầu dịch vụ%%%%%%Thông báo yêu cầu dịch vụ tour của Hoa Việt Travel®%%%<p>Kính gởi bạn {_name},</p>\n\n<p>Cảm ơn bạn đã quan tâm đến các tour du lịch&nbsp;của <em><strong>Hoa Việt Travel®</strong></em>.</p>\n\n<p>Xin thông báo bạn đã yêu cầu&nbsp;dịch vụ&nbsp;tour&nbsp;của&nbsp;Hoa Việt Travel®&nbsp;<strong>thành công</strong>.</p>\n\n<p style="margin-left: 40px;">Ngày khởi hành: <strong>{_date}</strong><br />\nĐiểm khởi hành: <strong>{_address}</strong><br />\nĐiểm đến: <strong>{_destination}</strong><br />\nSố khách: <strong>{_visitors}</strong><br />\n{_children}<br />\n{_baby}</p>\n\n<p>Hoa Việt Travel® sẽ trả&nbsp;lời cho bạn sớm nhất có thể.</p>\n\n<p>Một lần nữa, cảm ơn bạn đã quan tâm đến các tour du lịch của&nbsp;Hoa Việt Travel®.<br />\nTrân trọng,</p>\n\n<p>&nbsp;</p>\n\n<p><span style="font-size:18px;"><span style="color:#808080;"><strong>&nbsp;HOA VIỆT TRAVEL® - Hotline: 0908 444 082</strong></span></span></p>\n\n<table border="0" cellpadding="5" cellspacing="0" style="width:100%;">\n	<tbody>\n		<tr>\n			<td style="width: 32%;"><span style="color:#808080;"><em><strong>Văn phòng chính</strong></em></span></td>\n			<td style="width: 32%;"><span style="color:#808080;"><em><strong>Chi nhánh Hà Nội</strong></em></span></td>\n			<td><span style="color:#808080;"><em><strong>Văn phòng đại diện</strong></em></span></td>\n		</tr>\n		<tr>\n			<td><span style="color:#808080;"><em>Địa chỉ:&nbsp;F13/41V, Vĩnh Lộc A, H.Bình Chánh, Tp.HCM</em></span></td>\n			<td><span style="color:#808080;"><em>Đường 2-3 B, Khu Cầu Lớn, Lam Hồng, Đông Anh, Hà Nội</em></span></td>\n			<td><span style="color:#808080;"><em>69 đường số 20, P.Bình Hưng Hóa, Q.Bình Tân, Tp.HCM</em></span></td>\n		</tr>\n		<tr>\n			<td><span style="color:#808080;"><em>Điện thoại:&nbsp;08 6268 9046 - FAX:&nbsp;08 6268 9013</em></span></td>\n			<td><span style="color:#808080;"><em>Điện thoại:&nbsp;04 3956 1450 - FAX:&nbsp;04 3956 1451</em></span></td>\n			<td><span style="color:#808080;"><em>Điện thoại:&nbsp;08 3765 0115 - FAX:&nbsp;08 3765 0115</em></span></td>\n		</tr>\n	</tbody>\n</table>%%%<p><strong>Yêu cầu dịch vụ của bạn đến Hoa Việt Travel®&nbsp;thành công</strong></p>\n\n<p>Bạn đã yêu cầu dịch vụ&nbsp;đặt tour của Hoa&nbsp;Việt Travel® thành công. Chúng tôi sẽ liên hệ với bạn chậm nhất trong 24 giờ.</p>\n\n<p>Thân chào,</p>%%%%%%1%%%22%%%1', 'vi', 0, NULL, NULL),
(10, 'Trần Hiếu Nhân', 'create', 'web_contact', 15, 1453772350, 'admin', '', 'vi', 0, NULL, NULL),
(11, 'Trần Hiếu Nhân', 'create', 'web_contact', 16, 1453772470, 'admin', '', 'vi', 0, NULL, NULL),
(12, 'Trần Hiếu Nhân', 'create', 'web_contact', 17, 1453772570, 'admin', '', 'vi', 0, NULL, NULL),
(13, 'Trần Hiếu Nhân', 'create', 'web_contact', 18, 1454529151, 'customer', '', 'vi', 0, NULL, NULL),
(14, 'Tour du lich tết 2016 Cần Thơ - Sóc Trăng - Bạc Liêu - Cà Mau', 'update', 'web_header', 20, 1456205324, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values20%%%Tour du lich tết 2016 Cần Thơ - Sóc Trăng - Bạc Liêu - Cà Mau%%%tour-du-lich-tet-2016-can-tho-soc-trang-bac-lieu-ca-mau%%%%%%1452928240.jpg%%%Tour du lich tết 2016 Cần Thơ - Sóc Trăng - Bạc Liêu - Cà Mau%%%Khám phá miền tây sông nước 4 ngày 3 đêm Cần Thơ - Sóc Trăng - Bạc Liêu - Cà Mau%%%tour du lich tết 2016 cần thơ – sóc trăng – bạc liêu – cà mau%%%MT102%%%4 ngày 3 đêm%%%,1,%%%3%%%sáng 09,11/02/2016 (M2,4 Tết)%%%Cần Thơ - Sóc Trăng - Bạc Liêu - Cà Mau%%%Chùa Vĩnh Tràng - bến Ninh Kiều - chợ nổi Cái Răng - chùa Dơi - chùa Đất Sét - nhà thờ cha Diệp - Đất Mũi - Mỹ Khánh%%%3500000%%%0%%%0%%%%%%1452928080%%%vi%%%1%%%2%%%3%%%%%%,2,3,30,37,', 'vi', 0, NULL, NULL),
(15, 'Tour du lich tết 2016 Cần Thơ - Sóc Trăng - Bạc Liêu - Cà Mau', 'update', 'web_header', 20, 1456205350, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values20%%%Tour du lich tết 2016 Cần Thơ - Sóc Trăng - Bạc Liêu - Cà Mau%%%tour-du-lich-tet-2016-can-tho-soc-trang-bac-lieu-ca-mau%%%%%%1452928240.jpg%%%Tour du lich tết 2016 Cần Thơ - Sóc Trăng - Bạc Liêu - Cà Mau%%%Khám phá miền tây sông nước 4 ngày 3 đêm Cần Thơ - Sóc Trăng - Bạc Liêu - Cà Mau%%%tour du lich tết 2016 cần thơ,,tour du lich tet 2016 can tho%%%MT102%%%4 ngày 3 đêm%%%,1,%%%3%%%sáng 09,11/02/2016 (M2,4 Tết)%%%Cần Thơ - Sóc Trăng - Bạc Liêu - Cà Mau%%%Chùa Vĩnh Tràng - bến Ninh Kiều - chợ nổi Cái Răng - chùa Dơi - chùa Đất Sét - nhà thờ cha Diệp - Đất Mũi - Mỹ Khánh%%%3500000%%%0%%%0%%%%%%1452928080%%%vi%%%1%%%2%%%3%%%%%%,2,3,30,37,', 'vi', 0, NULL, NULL),
(16, 'Tour: Hà Nội - Lào Cai - Sapa - Chợ Phiên Bắc Hà - Yên Tử - Hạ Long', 'update', 'web_header', 19, 1456206129, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values19%%%Tour: Hà Nội - Lào Cai - Sapa - Chợ Phiên Bắc Hà - Yên Tử - Hạ Long%%%tour-ha-noi-lao-cai-sapa-cho-phien-bac-ha-yen-tu-ha-long%%%%%%1452926016.jpg%%%Tour: Hà Nội - Lào Cai - Sapa - Chợ Phiên Bắc Hà - Yên Tử - Hạ Long%%%Khởi hành vào thứ 2 hàng tuần, khám phá Miền Bắc trong 5 ngày 5 đêm%%%tour hà nội lào cai sapa chợ phiên bắc hà yên tử hạ long%%%MB101%%%5 ngày 5 đêm%%%,1,2,%%%3%%%sáng 7h 22/01/2016%%%Hà Nội%%%Hà Nội - Lào Cai - Sapa - Chợ Phiên Bắc Hà - Yên Tử - Hạ Long%%%7900000%%%0%%%0%%%%%%1452925620%%%vi%%%1%%%2%%%3%%%%%%,11,2,3,28,40,4,', 'vi', 0, NULL, NULL),
(17, 'Tour: Hà Nội - Lào Cai - Sapa - Chợ Phiên Bắc Hà - Yên Tử - Hạ Long', 'update', 'web_header', 19, 1456206176, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values19%%%Tour: Hà Nội - Lào Cai - Sapa - Chợ Phiên Bắc Hà - Yên Tử - Hạ Long%%%tour-ha-noi-lao-cai-sapa-cho-phien-bac-ha-yen-tu-ha-long%%%%%%1452926016.jpg%%%Tour: Hà Nội - Lào Cai - Sapa - Chợ Phiên Bắc Hà - Yên Tử - Hạ Long%%%Khởi hành vào thứ 2 hàng tuần, khám phá Miền Bắc trong 5 ngày 5 đêm%%%tour hà nội lào cai sapa chợ phiên bắc hà yên tử hạ long%%%MB101%%%5 ngày 5 đêm%%%,1,2,%%%3%%%sáng 7h 22/01/2016%%%Hà Nội%%%Hà Nội - Lào Cai - Sapa - Chợ Phiên Bắc Hà - Yên Tử - Hạ Long%%%7900000%%%0%%%0%%%%%%1452925620%%%vi%%%0%%%2%%%3%%%%%%,11,2,3,28,40,4,', 'vi', 0, NULL, NULL),
(18, 'Đặt tour', 'update', 'web_event_form', 7, 1456206610, 'admin', 'id,name,img,subject,content,notification,email,type,type_id,statusfields%%%values7%%%Đặt tour%%%%%%Thông báo đặt tour du lịch tại Hoa Việt Travel®%%%<p>Kính gởi bạn {_name},</p>\n\n<p>Cảm ơn bạn đã quan tâm đến các tour du lịch&nbsp;của Hoa Việt Travel®.</p>\n\n<p>Xin thông báo bạn đã đặt tour du lịch của&nbsp;Hoa Việt Travel®&nbsp;<strong>thành công</strong>.</p>\n\n<p style="margin-left: 40px;">Tour du lịch: <em><strong>{_tour}</strong></em><br />\nGiá tour cho 1 người: <strong>{_price}</strong> VNĐ<br />\nThời gian: <strong>{_duration}</strong></p>\n\n<p>Hoa Việt Travel® sẽ liên hệ đến&nbsp;bạn sớm nhất có thể.</p>\n\n<p>Một lần nữa, cảm ơn bạn đã quan tâm đến các tour du lịch của&nbsp;Hoa Việt Travel®.<br />\nTrân trọng,</p>\n\n<p>&nbsp;</p>\n\n<p><span style="font-size:18px;"><span style="color:#808080;"><strong>&nbsp;HOA VIỆT TRAVEL® - Hotline: 0908 444 082</strong></span></span></p>\n\n<table border="0" cellpadding="5" cellspacing="0" style="width:100%;">\n	<tbody>\n		<tr>\n			<td style="width: 32%;"><span style="color:#808080;"><em><strong>Văn phòng chính</strong></em></span></td>\n			<td style="width: 32%;"><span style="color:#808080;"><em><strong>Chi nhánh Hà Nội</strong></em></span></td>\n			<td><span style="color:#808080;"><em><strong>Văn phòng đại diện</strong></em></span></td>\n		</tr>\n		<tr>\n			<td><span style="color:#808080;"><em>Địa chỉ:&nbsp;F13/41V, Vĩnh Lộc A, H.Bình Chánh, Tp.HCM</em></span></td>\n			<td><span style="color:#808080;"><em>Đường 2-3 B, Khu Cầu Lớn, Lam Hồng, Đông Anh, Hà Nội</em></span></td>\n			<td><span style="color:#808080;"><em>69 đường số 20, P.Bình Hưng Hóa, Q.Bình Tân, Tp.HCM</em></span></td>\n		</tr>\n		<tr>\n			<td><span style="color:#808080;"><em>Điện thoại:&nbsp;08 6268 9046 - FAX:&nbsp;08 6268 9013</em></span></td>\n			<td><span style="color:#808080;"><em>Điện thoại:&nbsp;04 3956 1450 - FAX:&nbsp;04 3956 1451</em></span></td>\n			<td><span style="color:#808080;"><em>Điện thoại:&nbsp;08 3765 0115 - FAX:&nbsp;08 3765 0115</em></span></td>\n		</tr>\n	</tbody>\n</table>%%%<p><strong>Đặt tour&nbsp;thành công</strong></p>\n\n<p>Bạn đã đặt tour <em><strong>{_tour}</strong></em> của Hoa&nbsp;Việt Travel® thành công. Chúng tôi sẽ liên hệ với bạn chậm nhất trong 24 giờ.</p>\n\n<p>Thân chào,</p>%%%%%%1%%%3%%%1', 'vi', 0, NULL, NULL),
(19, 'Trang chủ', 'update', 'web_header', 1, 1456477119, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1%%%Trang chủ%%%trang-chu%%%%%%%%%Hoa Việt Travel | Du lịch trong nước - Du lịch ngoài nước - Du lịch Hoa Việt - Website du lịch%%%Hoa Việt Travel - Cung cấp các chương trình tour du lịch  trong nước và ngoài nước, các dịch vụ du lịch, du lịch giá rẻ, tour du lịch khuyến mãi%%%hoa việt travel,du lịch trong nước,du lịch ngoài nước,du lịch hoa việt,website du lịch,du lich,trong nuoc,ngoai nuoc,hoa viet travel%%%%%%%%%%%%%%%%%%%%%%%%%%%0%%%1%%%%%%1452827040%%%vi%%%1%%%1%%%1%%%,20,', 'vi', 0, NULL, NULL),
(20, 'Thuê xe', 'create', 'web_header', 75, 1456477162, 'admin', '', 'vi', 0, NULL, NULL),
(21, 'Điện thoại', 'update', 'web_config', 11, 1456477242, 'admin', 'id,name,name_var,value,_order,lang,statusfields%%%values11%%%Điện thoại%%%tel%%%0908 444 082%%%3%%%vi%%%0', 'vi', 0, NULL, NULL),
(22, 'Điện thoại', 'update', 'web_config', 11, 1456477255, 'admin', 'id,name,name_var,value,_order,lang,statusfields%%%values11%%%Điện thoại%%%tel%%%0908 444 082%%%3%%%vi%%%1', 'vi', 0, NULL, NULL),
(23, 'Địa chỉ', 'delete', 'web_config', 15, 1456477270, 'admin', 'id,name,name_var,value,_order,lang,statusfields%%%values15%%%Địa chỉ%%%address%%%Lầu 7, CMARD2, 45 Đinh Tiên Hoàng, P. Bến Nghé, Q. 1, Tp. HCM.%%%2%%%vi%%%0', 'vi', 0, NULL, NULL),
(24, 'Copyright', 'delete', 'web_config', 9, 1456477299, 'admin', 'id,name,name_var,value,_order,lang,statusfields%%%values9%%%Copyright%%%copyright%%%©2016 Stevbros Training and Consultancy. All rights reserved. | PMI, PMBOK®, PMP®, PgMP, PMI-ACP are registered marks of the Project Management Institute, Inc.%%%4%%%vi%%%0', 'vi', 0, NULL, NULL),
(25, 'Email', 'delete', 'web_config', 10, 1456477310, 'admin', 'id,name,name_var,value,_order,lang,statusfields%%%values10%%%Email%%%email%%%support@stevbros.com%%%6%%%vi%%%0', 'vi', 0, NULL, NULL),
(26, 'Tên viết tắt', 'delete', 'web_config', 13, 1456477325, 'admin', 'id,name,name_var,value,_order,lang,statusfields%%%values13%%%Tên viết tắt%%%name%%%Stevbros%%%8%%%vi%%%0', 'vi', 0, NULL, NULL),
(27, 'Tour: Hà Nội - Lào Cai - Sapa - Chợ Phiên Bắc Hà - Yên Tử - Hạ Long', 'update', 'web_header', 19, 1456477474, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values19%%%Tour: Hà Nội - Lào Cai - Sapa - Chợ Phiên Bắc Hà - Yên Tử - Hạ Long%%%tour-ha-noi-lao-cai-sapa-cho-phien-bac-ha-yen-tu-ha-long%%%%%%1452926016.jpg%%%Tour: Hà Nội - Lào Cai - Sapa - Chợ Phiên Bắc Hà - Yên Tử - Hạ Long%%%Khởi hành vào thứ 2 hàng tuần, khám phá Miền Bắc trong 5 ngày 5 đêm%%%tour hà nội lào cai sapa chợ phiên bắc hà yên tử hạ long%%%MB101%%%5 ngày 5 đêm%%%,1,2,%%%3%%%sáng 7h 22/01/2016%%%Hà Nội%%%Hà Nội - Lào Cai - Sapa - Chợ Phiên Bắc Hà - Yên Tử - Hạ Long%%%7900000%%%0%%%0%%%%%%1452925620%%%vi%%%1%%%2%%%3%%%%%%,11,2,3,28,40,4,', 'vi', 0, NULL, NULL),
(28, 'Tour du lịch tết 2016 đảo Bình Ba 2 ngày 2 đêm', 'update', 'web_header', 18, 1456477492, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values18%%%Tour du lịch tết 2016 đảo Bình Ba 2 ngày 2 đêm%%%tour-du-lich-tet-2016-dao-binh-ba-2-ngay-2-dem%%%%%%1452925095.jpg%%%Tour du lịch tết 2016 đảo Bình Ba 2 ngày 2 đêm%%%Khởi hành: Thứ 5 hằng tuần. Một chuyến du lịch đảo Bình Ba hoang sơ sẽ vô cùng ý nghĩa và thú vị để đón mừng năm mới 2016.%%%tour du lịch tết 2016,đảo bình ba 2 ngày 2 đêm%%%BB100%%%2 ngày 2 đêm%%%,1,%%%0%%%Tối 09,11/02/2016 (M2,4 Tết)%%%Đảo Bình Ba%%%Bãi Nhà Cũ - Hòn Rùa - chùa Địa Tạng - Lăng Ông Nam Hải - Đình thần - Bãi Nồm - Chùa Ốc%%%1550000%%%0%%%0%%%%%%1452924840%%%vi%%%1%%%2%%%3%%%%%%,11,2,3,29,24,4,', 'vi', 0, NULL, NULL),
(29, 'Tour: Hà Nội - Lào Cai - Sapa - Chợ Phiên Bắc Hà - Yên Tử - Hạ Long', 'update', 'web_header', 19, 1456477720, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values19%%%Tour: Hà Nội - Lào Cai - Sapa - Chợ Phiên Bắc Hà - Yên Tử - Hạ Long%%%tour-ha-noi-lao-cai-sapa-cho-phien-bac-ha-yen-tu-ha-long%%%%%%1452926016.jpg%%%Tour: Hà Nội - Lào Cai - Sapa - Chợ Phiên Bắc Hà - Yên Tử - Hạ Long%%%Khởi hành vào thứ 2 hàng tuần, khám phá Miền Bắc trong 5 ngày 5 đêm%%%tour hà nội lào cai sapa chợ phiên bắc hà yên tử hạ long%%%MB101%%%5 ngày 5 đêm%%%,1,2,%%%3%%%sáng 7h 22/01/2016%%%Hà Nội%%%Hà Nội - Lào Cai - Sapa - Chợ Phiên Bắc Hà - Yên Tử - Hạ Long%%%7900000%%%0%%%0%%%%%%1452925620%%%vi%%%1%%%2%%%3%%%%%%,11,2,3,28,40,', 'vi', 0, NULL, NULL),
(30, 'Văn phòng đại diện', 'update', 'web_branch', 3, 1456477879, 'admin', 'id,name,shorten,email,tel,fax,address,phone,googlemap,_order,lang,statusfields%%%values3%%%Văn phòng đại diện%%%VP đại diện%%%%%%08 3765 0115%%%08 3765 0115%%%69 đường số 20, P.Bình Hưng Hóa, Q.Bình Tân, Tp.HCM%%%%%%%%%3%%%vi%%%1', 'vi', 0, NULL, NULL),
(31, 'Văn phòng chính', 'update', 'web_branch', 1, 1456477897, 'admin', 'id,name,shorten,email,tel,fax,address,phone,googlemap,_order,lang,statusfields%%%values1%%%Văn phòng chính%%%VP chính%%%hoaviet.travel01@gmail.com%%%08 6268 9046%%%08 6268 9013%%%F13/41V, Vĩnh Lộc A, H.Bình Chánh, Tp.HCM%%%090 844 40 82%%%%%%1%%%vi%%%1', 'vi', 0, NULL, NULL),
(32, 'Văn phòng đại diện', 'update', 'web_branch', 3, 1456477936, 'admin', 'id,name,shorten,email,tel,fax,address,phone,googlemap,_order,lang,statusfields%%%values3%%%Văn phòng đại diện%%%VP đại diện%%%%%%08 3765 0115%%%08 3765 0115%%%69 đường số 20, P.Bình Hưng Hóa, Q.Bình Tân, Tp.HCM%%%%%%10.817966, 106.608815%%%3%%%vi%%%1', 'vi', 0, NULL, NULL),
(33, 'Văn phòng đại diện', 'update', 'web_branch', 3, 1456477951, 'admin', 'id,name,shorten,email,tel,fax,address,phone,googlemap,_order,lang,statusfields%%%values3%%%Văn phòng đại diện%%%VP đại diện%%%%%%08 3765 0115%%%08 3765 0115%%%69 đường số 20, P.Bình Hưng Hóa, Q.Bình Tân, Tp.HCM%%%090 844 40 82%%%10.817966, 106.608815%%%3%%%vi%%%1', 'vi', 0, NULL, NULL),
(34, 'Văn phòng chính', 'update', 'web_branch', 1, 1456477960, 'admin', 'id,name,shorten,email,tel,fax,address,phone,googlemap,_order,lang,statusfields%%%values1%%%Văn phòng chính%%%VP chính%%%hoaviet.travel01@gmail.com%%%08 3765 0115%%%08 3765 0115%%%F13/41V, Vĩnh Lộc A, H.Bình Chánh, Tp.HCM%%%090 844 40 82%%%%%%1%%%vi%%%1', 'vi', 0, NULL, NULL),
(35, 'Trang chủ', 'update', 'web_header', 1, 1456478777, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1%%%Trang chủ%%%trang-chu%%%%%%%%%Hoa Việt Travel | Du lịch trong nước - Du lịch ngoài nước - Du lịch Hoa Việt - Website du lịch%%%Hoa Việt Travel - Cung cấp các chương trình tour du lịch  trong nước và ngoài nước, các dịch vụ du lịch, du lịch giá rẻ, tour du lịch khuyến mãi%%%hoa việt travel,du lịch trong nước,du lịch ngoài nước,du lịch hoa việt,website du lịch,du lich,trong nuoc,ngoai nuoc,hoa viet travel%%%%%%%%%%%%%%%%%%%%%%%%%%%0%%%1%%%%%%1452827040%%%vi%%%1%%%1%%%1%%%,1,20,', 'vi', 0, NULL, NULL),
(36, 'Logo', 'update', 'web_position', 14, 1456478970, 'admin', 'id,name,themes,_order,type,statusfields%%%values14%%%Logo%%%%%%14%%%1%%%0', 'vi', 0, NULL, NULL),
(37, 'Header nhân viên sale', 'create', 'web_header', 76, 1456479146, 'admin', '', 'vi', 0, NULL, NULL),
(38, 'Nội địa khách đoàn', 'create', 'web_header', 77, 1456479215, 'admin', '', 'vi', 0, NULL, NULL),
(39, 'Nội địa khách lẻ', 'create', 'web_header', 78, 1456479241, 'admin', '', 'vi', 0, NULL, NULL),
(40, 'Du lịch Quốc tế', 'create', 'web_header', 79, 1456479266, 'admin', '', 'vi', 0, NULL, NULL),
(41, 'Nội địa khách đoàn', 'update', 'web_header', 77, 1456480627, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values77%%%Nội địa khách đoàn%%%noi-dia-khach-doan%%%%%%%%%Nội địa khách đoàn%%%%%%nội địa khách đoàn%%%%%%%%%%%%%%%%%%%%%%%%%%%76%%%1%%%%%%1456479180%%%vi%%%1%%%1%%%20%%%,14,', 'vi', 0, NULL, NULL),
(42, 'Nội địa khách lẻ', 'update', 'web_header', 78, 1456480645, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values78%%%Nội địa khách lẻ%%%noi-dia-khach-le%%%%%%%%%Nội địa khách lẻ%%%%%%nội địa khách lẻ%%%%%%%%%%%%%%%%%%%%%%%%%%%76%%%2%%%%%%1456479180%%%vi%%%1%%%1%%%20%%%,14,', 'vi', 0, NULL, NULL),
(43, 'Du lịch Quốc tế', 'update', 'web_header', 79, 1456480660, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values79%%%Du lịch Quốc tế%%%du-lich-quoc-te%%%%%%%%%Du lịch Quốc tế%%%%%%du lịch quốc tế%%%%%%%%%%%%%%%%%%%%%%%%%%%76%%%3%%%%%%1456479240%%%vi%%%1%%%1%%%20%%%,14,', 'vi', 0, NULL, NULL),
(44, 'Header nhân viên sale', 'delete', 'web_header', 76, 1456480667, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values76%%%Header nhân viên sale%%%header-nhan-vien-sale%%%%%%%%%Header nhân viên sale%%%%%%header nhân viên sale%%%%%%%%%%%%%%%%%%%%%%%%%%%0%%%30%%%%%%1456479060%%%vi%%%1%%%1%%%20%%%,14,', 'vi', 0, NULL, NULL),
(45, 'Nội địa khách đoàn', 'update', 'web_header', 77, 1456482014, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values77%%%Nội địa khách đoàn%%%noi-dia-khach-doan%%%%%%%%%Nội địa khách đoàn%%%%%%nội địa khách đoàn%%%%%%%%%%%%%%%%%%%%%%%%%%%0%%%31%%%%%%1456479180%%%vi%%%1%%%1%%%20%%%,14,', 'vi', 0, NULL, NULL),
(46, 'Nội địa khách đoàn', 'update', 'web_header', 77, 1456482024, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values77%%%Nội địa khách đoàn%%%noi-dia-khach-doan%%%%%%%%%Nội địa khách đoàn%%%%%%nội địa khách đoàn%%%%%%%%%%%%%%%%%%%%%%%%%%%0%%%31%%%%%%1456479180%%%vi%%%1%%%1%%%20%%%,14,', 'vi', 0, NULL, NULL),
(47, 'Nội địa khách đoàn', 'update', 'web_header', 77, 1456482050, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values77%%%Nội địa khách đoàn%%%noi-dia-khach-doan%%%%%%%%%Nội địa khách đoàn%%%%%%nội địa khách đoàn%%%%%%%%%%%%%%%%%%%%%%%%%%%0%%%31%%%%%%1456479180%%%vi%%%1%%%1%%%20%%%,14,', 'vi', 0, NULL, NULL),
(48, 'Nội địa khách lẻ', 'update', 'web_header', 78, 1456482074, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values78%%%Nội địa khách lẻ%%%noi-dia-khach-le%%%%%%%%%Nội địa khách lẻ%%%%%%nội địa khách lẻ%%%%%%%%%%%%%%%%%%%%%%%%%%%0%%%32%%%%%%1456479180%%%vi%%%1%%%1%%%20%%%,14,', 'vi', 0, NULL, NULL),
(49, 'Du lịch Quốc tế', 'update', 'web_header', 79, 1456482088, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values79%%%Du lịch Quốc tế%%%du-lich-quoc-te%%%%%%%%%Du lịch Quốc tế%%%%%%du lịch quốc tế%%%%%%%%%%%%%%%%%%%%%%%%%%%0%%%33%%%%%%1456479240%%%vi%%%1%%%1%%%20%%%,14,', 'vi', 0, NULL, NULL),
(50, 'Nội địa khách đoàn', 'update', 'web_header', 77, 1456538984, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values77%%%Nội địa khách đoàn%%%noi-dia-khach-doan%%%%%%%%%Nội địa khách đoàn%%%%%%nội địa khách đoàn%%%%%%%%%%%%%%%%%%%%%%%%%%%0%%%31%%%%%%1456479180%%%vi%%%1%%%1%%%20%%%,14,', 'vi', 0, NULL, NULL),
(51, 'Nội địa khách lẻ', 'update', 'web_header', 78, 1456539019, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values78%%%Nội địa khách lẻ%%%noi-dia-khach-le%%%%%%%%%Nội địa khách lẻ%%%%%%nội địa khách lẻ%%%%%%%%%%%%%%%%%%%%%%%%%%%0%%%32%%%%%%1456479180%%%vi%%%1%%%1%%%20%%%,14,', 'vi', 0, NULL, NULL),
(52, 'Du lịch Quốc tế', 'update', 'web_header', 79, 1456539065, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values79%%%Du lịch Quốc tế%%%du-lich-quoc-te%%%%%%%%%Du lịch Quốc tế%%%%%%du lịch quốc tế%%%%%%%%%%%%%%%%%%%%%%%%%%%0%%%33%%%%%%1456479240%%%vi%%%1%%%1%%%20%%%,14,', 'vi', 0, NULL, NULL),
(53, 'Ms.Tiên 0933 833 855 (khách lẻ)', 'update', 'web_header', 78, 1456540532, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values78%%%Ms.Tiên 0933 833 855 (khách lẻ)%%%noi-dia-khach-le%%%%%%%%%Nội địa khách lẻ%%%%%%nội địa khách lẻ%%%%%%%%%%%%%%%%%%%%%%%%%%%0%%%32%%%%%%1456479180%%%vi%%%1%%%1%%%20%%%,14,', 'vi', 0, NULL, NULL),
(54, 'Mr.Hưng 0988 388 399 (khách đoàn)', 'update', 'web_header', 77, 1456540576, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values77%%%Mr.Hưng 0988 388 399 (khách đoàn)%%%noi-dia-khach-doan%%%%%%%%%Nội địa khách đoàn%%%%%%nội địa khách đoàn%%%%%%%%%%%%%%%%%%%%%%%%%%%0%%%31%%%%%%1456479180%%%vi%%%1%%%1%%%20%%%,14,', 'vi', 0, NULL, NULL),
(55, 'Ms.Tiên 0933 833 855 (khách lẻ)', 'delete', 'web_header', 78, 1456540584, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values78%%%Ms.Tiên 0933 833 855 (khách lẻ)%%%noi-dia-khach-le%%%%%%%%%Nội địa khách lẻ%%%%%%nội địa khách lẻ%%%%%%%%%%%%%%%%%%%%%%%%%%%0%%%32%%%%%%1456479180%%%vi%%%0%%%1%%%20%%%,14,', 'vi', 0, NULL, NULL),
(56, 'Mr.Nghĩa 0977 277 288 (Quốc tế)', 'delete', 'web_header', 79, 1456540586, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values79%%%Mr.Nghĩa 0977 277 288 (Quốc tế)%%%du-lich-quoc-te%%%%%%%%%Du lịch Quốc tế%%%%%%du lịch quốc tế%%%%%%%%%%%%%%%%%%%%%%%%%%%0%%%33%%%%%%1456479240%%%vi%%%0%%%1%%%20%%%,14,', 'vi', 0, NULL, NULL),
(57, 'Mr.Hưng 0988 388 399 (khách đoàn)', 'update', 'web_header', 77, 1456540609, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values77%%%Mr.Hưng 0988 388 399 (khách đoàn)%%%noi-dia-khach-doan%%%%%%%%%Nội địa khách đoàn%%%%%%nội địa khách đoàn%%%%%%%%%%%%%%%%%%%%%%%%%%%0%%%31%%%%%%1456479180%%%vi%%%1%%%1%%%20%%%,14,', 'vi', 0, NULL, NULL),
(58, 'Header nhân viên sale', 'update', 'web_position', 14, 1456540628, 'admin', 'id,name,themes,_order,type,statusfields%%%values14%%%Header nhân viên sale%%%%%%14%%%1%%%1', 'vi', 0, NULL, NULL),
(59, 'Thuê xe', 'update', 'web_header', 75, 1456540812, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values75%%%Thuê xe%%%thue-xe%%%%%%%%%Thuê xe du lịch | Thue xe du lich%%%%%%thuê xe du lịch,thue xe du lich%%%%%%%%%%%%%%%%%%%%%%%%%%%0%%%22%%%%%%1456477080%%%vi%%%1%%%1%%%2%%%,1,', 'vi', 0, NULL, NULL),
(60, 'Box liên kết', 'update', 'web_position', 15, 1456541530, 'admin', 'id,name,themes,_order,type,statusfields%%%values15%%%Box liên kết%%%%%%15%%%1%%%0', 'vi', 0, NULL, NULL),
(61, 'Cho thuê xe', 'update', 'web_header', 75, 1456541630, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values75%%%Cho thuê xe%%%cho-thue-xe%%%%%%%%%Cho thuê xe du lịch | Cho thue xe du lich%%%%%%cho thuê xe du lịch,cho thue xe du lich%%%%%%%%%%%%%%%%%%%%%%%%%%%0%%%22%%%%%%1456477080%%%vi%%%1%%%1%%%2%%%,1,', 'vi', 0, NULL, NULL),
(62, 'Du lịch tết Campuchia khám phá những ngồi đền Angkor huyền bí', 'update', 'web_header', 70, 1456541773, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values70%%%Du lịch tết Campuchia khám phá những ngồi đền Angkor huyền bí%%%du-lich-tet-campuchia-kham-pha-nhung-ngoi-den-angkor-huyen-bi%%%%%%1453260438.jpg%%%Du lịch tết Campuchia khám phá những ngồi đền Angkor huyền bí%%%Du lịch Tết Campuchia, đến với thành phố Siem Reap du khách sẽ có cơ hội chiêm ngưỡng quần thể công trình kiến trúc thể hiện đỉnh cao trong nghệ thuật kiến trúc Khmer đó là quần thể Angkor hùng vỹ.%%%du lịch tết campuchia,khám phá những ngồi đền angkor%%%%%%%%%%%%%%%%%%%%%%%%%%%0%%%0%%%%%%1453259640%%%vi%%%1%%%2%%%2%%%%%%,7,8,', 'vi', 0, NULL, NULL),
(63, 'Du lịch tết Campuchia khám phá những ngồi đền Angkor huyền bí', 'update', 'web_header', 70, 1456541798, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values70%%%Du lịch tết Campuchia khám phá những ngồi đền Angkor huyền bí%%%du-lich-tet-campuchia-kham-pha-nhung-ngoi-den-angkor-huyen-bi%%%%%%1453260438.jpg%%%Du lịch tết Campuchia khám phá những ngồi đền Angkor huyền bí%%%Du lịch Tết Campuchia, đến với thành phố Siem Reap du khách sẽ có cơ hội chiêm ngưỡng quần thể công trình kiến trúc thể hiện đỉnh cao trong nghệ thuật kiến trúc Khmer đó là quần thể Angkor hùng vỹ.%%%du lịch tết campuchia,khám phá những ngồi đền angkor%%%%%%%%%%%%%%%%%%%%%%%%%%%0%%%0%%%%%%1453259640%%%vi%%%1%%%2%%%2%%%%%%,7,75,8,', 'vi', 0, NULL, NULL),
(64, 'Hoa Việt', 'create', 'web_users', 45, 1456542158, 'admin', '', 'vi', 0, NULL, NULL),
(65, '', 'create', 'web_users_role', 25, 1456542210, 'admin', '', 'vi', 0, NULL, NULL),
(66, '', 'create', 'web_users_role', 26, 1456542210, 'admin', '', 'vi', 0, NULL, NULL),
(67, '', 'create', 'web_users_role', 27, 1456542210, 'admin', '', 'vi', 0, NULL, NULL),
(68, '', 'create', 'web_users_role', 28, 1456542210, 'admin', '', 'vi', 0, NULL, NULL),
(69, '', 'create', 'web_users_role', 29, 1456542210, 'admin', '', 'vi', 0, NULL, NULL),
(70, '', 'create', 'web_users_role', 30, 1456542210, 'admin', '', 'vi', 0, NULL, NULL),
(71, '', 'create', 'web_users_role', 31, 1456542210, 'admin', '', 'vi', 0, NULL, NULL),
(72, '', 'create', 'web_users_role', 32, 1456542210, 'admin', '', 'vi', 0, NULL, NULL),
(73, '', 'create', 'web_users_role', 33, 1456542210, 'admin', '', 'vi', 0, NULL, NULL),
(74, '', 'create', 'web_users_role', 34, 1456542210, 'admin', '', 'vi', 0, NULL, NULL),
(75, '', 'create', 'web_users_role', 35, 1456542211, 'admin', '', 'vi', 0, NULL, NULL),
(76, '', 'create', 'web_users_role', 36, 1456542211, 'admin', '', 'vi', 0, NULL, NULL),
(77, 'Cấu hình website', 'update', 'web_admin', 2, 1457943630, 'admin', 'id,name,url,_table,parameter,file,img,_order,ajax,type,parent,statusfields%%%values2%%%Cấu hình website%%%config%%%web_config%%%%%%web_config%%%adIconConfig%%%49%%%0%%%2%%%0%%%1', 'vi', 0, NULL, NULL),
(78, 'Tour du lịch', 'update', 'web_type', 3, 1457943756, 'admin', 'id,name,type,_table,url_img,url_img_thumb,_order,other,statusfields%%%values3%%%Tour du lịch%%%tour%%%web_header%%%public/images/articles/%%%public/_thumbs/Images/articles/%%%3%%%1%%%1', 'vi', 0, NULL, NULL),
(79, 'Team building', 'update', 'web_type', 6, 1457943781, 'admin', 'id,name,type,_table,url_img,url_img_thumb,_order,other,statusfields%%%values6%%%Team building%%%team_building%%%web_header%%%public/images/videos/%%%public/_thumbs/Images/videos/%%%6%%%1%%%1', 'vi', 0, NULL, NULL),
(80, 'Hình ảnh', 'update', 'web_type', 7, 1457943784, 'admin', 'id,name,type,_table,url_img,url_img_thumb,_order,other,statusfields%%%values7%%%Hình ảnh%%%photos%%%web_header%%%%%%%%%7%%%1%%%0', 'vi', 0, NULL, NULL),
(81, 'Tuyển dụng', 'update', 'web_type', 8, 1457943787, 'admin', 'id,name,type,_table,url_img,url_img_thumb,_order,other,statusfields%%%values8%%%Tuyển dụng%%%recruit%%%web_header%%%%%%%%%8%%%1%%%0', 'vi', 0, NULL, NULL),
(82, 'Tuyển dụng', 'update', 'web_type', 8, 1457943811, 'admin', 'id,name,type,_table,url_img,url_img_thumb,_order,other,statusfields%%%values8%%%Tuyển dụng%%%recruit%%%web_header%%%%%%%%%8%%%1%%%1', 'vi', 0, NULL, NULL),
(83, 'Menu Top', 'update', 'web_position', 1, 1457943846, 'admin', 'id,name,themes,_order,type,statusfields%%%values1%%%Menu Top%%%%%%1%%%1%%%1', 'vi', 0, NULL, NULL),
(84, 'Menu bên trái', 'update', 'web_position', 4, 1457943875, 'admin', 'id,name,themes,_order,type,statusfields%%%values4%%%Menu bên trái%%%%%%4%%%1%%%1', 'vi', 0, NULL, NULL),
(85, 'Home tour nổi bật', 'update', 'web_position', 7, 1457943903, 'admin', 'id,name,themes,_order,type,statusfields%%%values7%%%Home tour nổi bật%%%%%%7%%%2%%%1', 'vi', 0, NULL, NULL),
(86, 'Home tour', 'update', 'web_position', 8, 1457943983, 'admin', 'id,name,themes,_order,type,statusfields%%%values8%%%Home tour%%%%%%8%%%2%%%1', 'vi', 0, NULL, NULL),
(87, 'Home yêu cầu dịch vụ tour', 'update', 'web_position', 9, 1457943986, 'admin', 'id,name,themes,_order,type,statusfields%%%values9%%%Home yêu cầu dịch vụ tour%%%%%%9%%%2%%%1', 'vi', 0, NULL, NULL),
(88, 'Home tại sao chọn chúng tôi', 'update', 'web_position', 10, 1457943988, 'admin', 'id,name,themes,_order,type,statusfields%%%values10%%%Home tại sao chọn chúng tôi%%%%%%10%%%2%%%1', 'vi', 0, NULL, NULL),
(89, 'Home team building', 'update', 'web_position', 11, 1457943991, 'admin', 'id,name,themes,_order,type,statusfields%%%values11%%%Home team building%%%%%%11%%%2%%%1', 'vi', 0, NULL, NULL),
(90, 'Home các điểm du lịch', 'update', 'web_position', 12, 1457943994, 'admin', 'id,name,themes,_order,type,statusfields%%%values12%%%Home các điểm du lịch%%%%%%12%%%2%%%1', 'vi', 0, NULL, NULL),
(91, 'Home khách hàng', 'update', 'web_position', 13, 1457943997, 'admin', 'id,name,themes,_order,type,statusfields%%%values13%%%Home khách hàng%%%%%%13%%%2%%%1', 'vi', 0, NULL, NULL),
(92, 'Support nhân viên sale', 'update', 'web_position', 14, 1457944000, 'admin', 'id,name,themes,_order,type,statusfields%%%values14%%%Support nhân viên sale%%%%%%14%%%1%%%1', 'vi', 0, NULL, NULL),
(93, 'Home cho thuê xe', 'update', 'web_position', 15, 1457944003, 'admin', 'id,name,themes,_order,type,statusfields%%%values15%%%Home cho thuê xe%%%%%%15%%%2%%%1', 'vi', 0, NULL, NULL),
(94, 'Quản lý Tour', 'update', 'web_admin', 5, 1457944042, 'admin', 'id,name,url,_table,parameter,file,img,_order,ajax,type,parent,statusfields%%%values5%%%Quản lý Tour%%%tour%%%web_header%%%?properties=2&type_id=3%%%web_tour%%%adIconCourse%%%2%%%0%%%1%%%0%%%1', 'vi', 0, NULL, NULL),
(95, 'Team building', 'update', 'web_admin', 19, 1457944049, 'admin', 'id,name,url,_table,parameter,file,img,_order,ajax,type,parent,statusfields%%%values19%%%Team building%%%teambuilding%%%web_header%%%?properties=2&type_id=6%%%web_teambuilding%%%adIconOpinion%%%3%%%1%%%1%%%0%%%1', 'vi', 0, NULL, NULL),
(96, 'Danh sách chi nhánh', 'update', 'web_admin', 26, 1457944051, 'admin', 'id,name,url,_table,parameter,file,img,_order,ajax,type,parent,statusfields%%%values26%%%Danh sách chi nhánh%%%branch%%%web_branch%%%%%%web_branch%%%adIconOpening%%%4%%%0%%%1%%%0%%%1', 'vi', 0, NULL, NULL),
(97, 'Trang chủ', 'create', 'web_header', 1, 1457944183, 'admin', '', 'vi', 0, NULL, NULL),
(98, 'Xe cổ', 'create', 'web_header', 2, 1457944263, 'admin', '', 'vi', 0, NULL, NULL),
(99, 'Xe độ', 'create', 'web_header', 3, 1457944277, 'admin', '', 'vi', 0, NULL, NULL),
(100, 'Giới thiệu', 'create', 'web_header', 4, 1457944326, 'admin', '', 'vi', 0, NULL, NULL),
(101, 'Mua bán', 'create', 'web_header', 5, 1457944391, 'admin', '', 'vi', 0, NULL, NULL),
(102, 'Bệnh viện', 'create', 'web_header', 6, 1457944445, 'admin', '', 'vi', 0, NULL, NULL),
(103, 'Kiến thức', 'create', 'web_header', 7, 1457944481, 'admin', '', 'vi', 0, NULL, NULL),
(104, 'Tin tức - Sự kiện', 'create', 'web_header', 8, 1457944537, 'admin', '', 'vi', 0, NULL, NULL),
(105, 'Liên hệ', 'create', 'web_header', 9, 1457944588, 'admin', '', 'vi', 0, NULL, NULL),
(106, 'Honda', 'create', 'web_header', 10, 1457944687, 'admin', '', 'vi', 0, NULL, NULL),
(107, 'Vespa', 'create', 'web_header', 11, 1457944745, 'admin', '', 'vi', 0, NULL, NULL),
(108, 'BMW', 'create', 'web_header', 12, 1457944783, 'admin', '', 'vi', 0, NULL, NULL),
(109, 'Các loại xe khác', 'create', 'web_header', 13, 1457944842, 'admin', '', 'vi', 0, NULL, NULL),
(110, 'Các loại xe khác', 'update', 'web_header', 13, 1457944846, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values13%%%Các loại xe khác%%%cac-loai-xe-co-khac%%%%%%%%%Các loại xe cổ khác%%%Các loại xe cổ khác%%%các loại xe cổ khác,cac loai xe co khac,cac loai xe co%%%%%%%%%%%%%%%%%%%%%%%%%%%5%%%3%%%%%%1457944740%%%vi%%%1%%%1%%%3%%%,2,', 'vi', 0, NULL, NULL),
(111, 'Vespa trắng đời 1945', 'create', 'web_header', 14, 1457945343, 'admin', '', 'vi', 0, NULL, NULL),
(112, 'Vespa trắng đời 1945', 'update', 'web_header', 14, 1457945355, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values14%%%Vespa trắng đời 1945%%%vespa-trang-doi-1945%%%%%%%%%Vespa trắng đời 1945%%%%%%vespa trắng đời 1945%%%%%%%%%%%%%%%%%%%%%%%%0%%%0%%%0%%%%%%1457945160%%%vi%%%1%%%2%%%3%%%%%%,2,5,11,', 'vi', 0, NULL, NULL),
(113, 'Vespa trắng đời 1945', 'update', 'web_header', 14, 1457945412, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values14%%%Vespa trắng đời 1945%%%vespa-trang-doi-1945%%%%%%1457945344.jpg%%%Vespa trắng đời 1945%%%%%%vespa trắng đời 1945%%%%%%%%%%%%%%%%%%%%%%%%0%%%0%%%0%%%%%%1457945160%%%vi%%%1%%%2%%%3%%%%%%,2,5,11,', 'vi', 0, NULL, NULL),
(114, 'Vespa cam đời 1955', 'create', 'web_header', 15, 1457945992, 'admin', '', 'vi', 0, NULL, NULL);
INSERT INTO `web_logs` (`id`, `name`, `action`, `_table`, `table_id`, `datetime`, `username`, `content`, `lang`, `status`, `date_restore`, `user_restore`) VALUES
(115, 'Vespa cam đời 1955', 'update', 'web_header', 15, 1457946014, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values15%%%Vespa cam đời 1955%%%vespa-cam-doi-1955%%%%%%%%%Vespa cam đời 1955%%%%%%vespa cam đời 1955%%%%%%%%%%%%%%%%%%%%%%%%0%%%0%%%0%%%%%%1457945880%%%vi%%%1%%%2%%%3%%%%%%,2,5,11,', 'vi', 0, NULL, NULL),
(116, 'Lam Vespa màu trắng Zin', 'create', 'web_header', 16, 1457946085, 'admin', '', 'vi', 0, NULL, NULL),
(117, 'Lam Vespa màu trắng Zin', 'update', 'web_header', 16, 1457946087, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values16%%%Lam Vespa màu trắng Zin%%%lam-vespa-mau-trang-zin%%%%%%%%%Lam Vespa màu trắng Zin%%%Ngay cả các cơ quan hành pháp của Mỹ cũng dần rời bỏ dòng xe Harley-Davidson và chuyển sang mô tô BMW.%%%lam vespa màu trắng zin%%%%%%%%%%%%%%%%%%%%%%%%0%%%0%%%0%%%%%%1457946000%%%vi%%%1%%%2%%%3%%%%%%,2,5,11,', 'vi', 0, NULL, NULL),
(118, 'Xe Honda 67 trắng đen', 'create', 'web_header', 17, 1457946158, 'admin', '', 'vi', 0, NULL, NULL),
(119, 'Xe Honda 67 trắng đen', 'update', 'web_header', 17, 1457946160, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values17%%%Xe Honda 67 trắng đen%%%xe-honda-67-trang-den%%%%%%%%%Xe Honda 67 trắng đen%%%Ngay cả các cơ quan hành pháp của Mỹ cũng dần rời bỏ dòng xe Harley-Davidson và chuyển sang mô tô BMW.%%%xe honda 67 trắng đen%%%%%%%%%%%%%%%%%%%%%%%%0%%%0%%%0%%%%%%1457946060%%%vi%%%1%%%2%%%3%%%%%%,3,5,10,', 'vi', 0, NULL, NULL),
(120, 'Xe Honda 67 xanh đen', 'create', 'web_header', 18, 1457946232, 'admin', '', 'vi', 0, NULL, NULL),
(121, 'Xe Honda 67 xanh đen', 'update', 'web_header', 18, 1457946234, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values18%%%Xe Honda 67 xanh đen%%%xe-honda-67-xanh-den%%%%%%%%%Xe Honda 67 xanh đen%%%%%%xe honda 67 xanh đen%%%%%%%%%%%%%%%%%%%%%%%%0%%%0%%%0%%%%%%1457946120%%%vi%%%1%%%2%%%3%%%%%%,3,5,10,', 'vi', 0, NULL, NULL),
(122, 'Môtô BMW đời 1975', 'create', 'web_header', 19, 1457946311, 'admin', '', 'vi', 0, NULL, NULL),
(123, 'Môtô BMW đời 1975', 'update', 'web_header', 19, 1457946313, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values19%%%Môtô BMW đời 1975%%%moto-bmw-doi-1975%%%%%%%%%Môtô BMW đời 1975%%%%%%môtô bmw đời 1975%%%%%%%%%%%%%%%%%%%%%%%%0%%%0%%%0%%%%%%1457946240%%%vi%%%1%%%2%%%3%%%%%%,2,5,12,', 'vi', 0, NULL, NULL),
(124, 'Môtô cảnh sát BMW', 'create', 'web_header', 20, 1457946357, 'admin', '', 'vi', 0, NULL, NULL),
(125, 'Môtô cảnh sát BMW', 'update', 'web_header', 20, 1457946359, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values20%%%Môtô cảnh sát BMW%%%moto-canh-sat-bmw%%%%%%%%%Môtô cảnh sát BMW%%%%%%môtô cảnh sát bmw%%%%%%%%%%%%%%%%%%%%%%%%0%%%0%%%0%%%%%%1457946300%%%vi%%%1%%%2%%%3%%%%%%,2,5,12,', 'vi', 0, NULL, NULL),
(126, 'Môtô cảnh sát BMW', 'update', 'web_header', 20, 1457946361, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values20%%%Môtô cảnh sát BMW%%%moto-canh-sat-bmw%%%%%%1457946358.jpg%%%Môtô cảnh sát BMW%%%%%%môtô cảnh sát bmw%%%%%%%%%%%%%%%%%%%%%%%%0%%%0%%%0%%%%%%1457946300%%%vi%%%1%%%2%%%3%%%%%%,2,5,12,', 'vi', 0, NULL, NULL),
(127, 'Môtô BMW đời 1965', 'create', 'web_header', 21, 1457946408, 'admin', '', 'vi', 0, NULL, NULL),
(128, 'Môtô BMW đời 1965', 'update', 'web_header', 21, 1457946410, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values21%%%Môtô BMW đời 1965%%%moto-bmw-doi-1965%%%%%%%%%Môtô BMW đời 1965%%%%%%môtô bmw đời 1965%%%%%%%%%%%%%%%%%%%%%%%%0%%%0%%%0%%%%%%1457946360%%%vi%%%1%%%2%%%3%%%%%%,3,5,12,', 'vi', 0, NULL, NULL),
(129, 'Môtô cảnh sát BMW', 'update', 'web_header', 20, 1457946426, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values20%%%Môtô cảnh sát BMW%%%moto-canh-sat-bmw%%%%%%1457946358.jpg%%%Môtô cảnh sát BMW%%%%%%môtô cảnh sát bmw%%%%%%%%%%%%%%%%%%%%%%%%0%%%0%%%0%%%%%%1457946300%%%vi%%%1%%%2%%%3%%%%%%,2,5,12,', 'vi', 0, NULL, NULL),
(130, 'Trang chủ', 'update', 'web_header', 1, 1457948810, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1%%%Trang chủ%%%trang-chu%%%%%%%%%Mua bán xe cổ Hồng Cường | Mua ban xe co%%%Hồng Cường chuyên kinh doanh mua bán, trao đổi, ký gửi xe cổ%%%mua bán xe cổ,mua ban xe co,hồng cường,hong cuong,mua ban,xe co%%%%%%%%%%%%%%%%%%%%%%%%%%%0%%%1%%%%%%1457944020%%%vi%%%1%%%1%%%1%%%,2,', 'vi', 0, NULL, NULL),
(131, 'Xe cổ', 'update', 'web_header', 2, 1458011240, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values2%%%Xe cổ%%%xe-co%%%%%%%%%Xe cổ%%%%%%xe cổ%%%%%%%%%%%%%%%%%%%%%%%%%%%1%%%1%%%%%%1457944140%%%vi%%%1%%%1%%%3%%%,20,', 'vi', 0, NULL, NULL),
(132, 'Xe độ', 'update', 'web_header', 3, 1458011246, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values3%%%Xe độ%%%xe-do%%%%%%%%%Xe độ%%%%%%xe độ%%%%%%%%%%%%%%%%%%%%%%%%%%%1%%%2%%%%%%1457944260%%%vi%%%1%%%1%%%3', 'vi', 0, NULL, NULL),
(133, 'Số tour trang home', 'update', 'web_config', 29, 1458011490, 'admin', 'id,name,name_var,value,_order,lang,statusfields%%%values29%%%Số tour trang home%%%limit_5%%%3%%%14%%%vi%%%1', 'vi', 0, NULL, NULL),
(134, 'Số xe cổ trang home', 'update', 'web_config', 29, 1458011496, 'admin', 'id,name,name_var,value,_order,lang,statusfields%%%values29%%%Số xe cổ trang home%%%limit_5%%%3%%%14%%%vi%%%1', 'vi', 0, NULL, NULL),
(135, 'Vespa cam đời 1955', 'update', 'web_header', 15, 1458012933, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values15%%%Vespa cam đời 1955%%%vespa-cam-doi-1955%%%%%%1457945994.jpg%%%Vespa cam đời 1955%%%%%%vespa cam đời 1955%%%%%%%%%%%%%%%%%%%%%%%%0%%%0%%%0%%%%%%1457945880%%%vi%%%1%%%2%%%3%%%%%%,2,5,11,', 'vi', 0, NULL, NULL),
(136, 'Vespa cam đời 1955', 'update', 'web_header', 15, 1458013280, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values15%%%Vespa cam đời 1955%%%vespa-cam-doi-1955%%%%%%1457945994.jpg%%%Vespa cam đời 1955%%%%%%vespa cam đời 1955%%%%%%%%%%%%%%%%%%%%%%%%30000000%%%0%%%0%%%%%%1457945880%%%vi%%%1%%%2%%%3%%%%%%,2,5,11,', 'vi', 0, NULL, NULL),
(137, 'Trang chủ', 'update', 'web_header', 1, 1458013734, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1%%%Trang chủ%%%trang-chu%%%http://localhost/all_v5/muabanxeco_v2/%%%%%%Mua bán xe cổ Hồng Cường | Mua ban xe co%%%Hồng Cường chuyên kinh doanh mua bán, trao đổi, ký gửi xe cổ%%%mua bán xe cổ,mua ban xe co,hồng cường,hong cuong,mua ban,xe co%%%%%%%%%%%%%%%%%%%%%%%%%%%0%%%1%%%%%%1457944020%%%vi%%%1%%%1%%%1%%%,2,', 'vi', 0, NULL, NULL),
(138, 'Mua bán', 'update', 'web_header', 5, 1458013759, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values5%%%Mua bán%%%mua-ban%%%%%%%%%Mua bán xe cổ Hồng Cường%%%Mua bán xe cổ Hồng Cường%%%mua bán xe cổ hồng cường,mua ban xe co hong cuong,mua ban xe co%%%%%%%%%%%%%%%%%%%%%%%%%%%0%%%3%%%%%%1457944320%%%vi%%%1%%%1%%%3%%%,2,', 'vi', 0, NULL, NULL),
(139, 'Giới thiệu', 'update', 'web_header', 4, 1458013761, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values4%%%Giới thiệu%%%gioi-thieu%%%%%%%%%Giới thiệu mua bán xe cổ Hồng Cường%%%Giới thiệu mua bán xe cổ Hồng Cường%%%giới thiệu mua bán xe cổ,gioi thieu mua ban xe co%%%%%%%%%%%%%%%%%%%%%%%%%%%0%%%2%%%%%%1457944260%%%vi%%%1%%%1%%%2%%%,2,', 'vi', 0, NULL, NULL),
(140, 'Số tour / trang', 'update', 'web_config', 6, 1458014209, 'admin', 'id,name,name_var,value,_order,lang,statusfields%%%values6%%%Số tour / trang%%%limit_2%%%18%%%11%%%vi%%%1', 'vi', 0, NULL, NULL),
(141, 'Teambuilding / trang', 'update', 'web_config', 7, 1458014229, 'admin', 'id,name,name_var,value,_order,lang,statusfields%%%values7%%%Teambuilding / trang%%%limit_3%%%10%%%12%%%vi%%%1', 'vi', 0, NULL, NULL),
(142, 'Số video / trang', 'update', 'web_config', 8, 1458014239, 'admin', 'id,name,name_var,value,_order,lang,statusfields%%%values8%%%Số video / trang%%%limit_4%%%10%%%13%%%vi%%%0', 'vi', 0, NULL, NULL),
(143, 'Số xe cổ / trang', 'update', 'web_config', 6, 1458014247, 'admin', 'id,name,name_var,value,_order,lang,statusfields%%%values6%%%Số xe cổ / trang%%%limit_2%%%18%%%11%%%vi%%%1', 'vi', 0, NULL, NULL),
(144, 'Tên trang website', 'update', 'web_config', 27, 1458014279, 'admin', 'id,name,name_var,value,_order,lang,statusfields%%%values27%%%Tên trang website%%%sitename%%%HOA VIỆT TRAVEL®%%%1%%%vi%%%1', 'vi', 0, NULL, NULL),
(145, 'Địa chỉ', 'create', 'web_config', 30, 1458014305, 'admin', '', 'vi', 0, NULL, NULL),
(146, 'Email', 'create', 'web_config', 31, 1458014328, 'admin', '', 'vi', 0, NULL, NULL),
(147, 'Email', 'update', 'web_config', 31, 1458014333, 'admin', 'id,name,name_var,value,_order,lang,statusfields%%%values31%%%Email%%%email%%%muabanxeco@gmail.com%%%0%%%vi%%%1', 'vi', 0, NULL, NULL),
(148, 'Facebook', 'create', 'web_header', 22, 1458014545, 'admin', '', 'vi', 0, NULL, NULL),
(149, 'Facebook', 'update', 'web_header', 22, 1458014548, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values22%%%Facebook%%%facebook%%%%%%%%%Facebook%%%%%%facebook%%%%%%%%%%%%%%%%%%%%%%%%%%%0%%%50%%%%%%1458014520%%%vi%%%1%%%1%%%20%%%,6,', 'vi', 0, NULL, NULL),
(150, 'Youtube', 'create', 'web_header', 23, 1458014618, 'admin', '', 'vi', 0, NULL, NULL),
(151, 'Youtube', 'update', 'web_header', 23, 1458014620, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values23%%%Youtube%%%youtube%%%%%%%%%Youtube%%%%%%youtube%%%%%%%%%%%%%%%%%%%%%%%%%%%0%%%52%%%%%%1458014580%%%vi%%%1%%%1%%%20%%%,6,', 'vi', 0, NULL, NULL),
(152, 'Google plus', 'create', 'web_header', 24, 1458014638, 'admin', '', 'vi', 0, NULL, NULL),
(153, 'Google plus', 'update', 'web_header', 24, 1458014643, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values24%%%Google plus%%%google-plus%%%%%%%%%Google plus%%%%%%google plus%%%%%%%%%%%%%%%%%%%%%%%%%%%0%%%0%%%%%%1458014580%%%vi%%%1%%%1%%%20%%%,6,', 'vi', 0, NULL, NULL),
(154, 'Facebook', 'update', 'web_header', 22, 1458014650, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values22%%%Facebook%%%facebook%%%%%%1458014546.gif%%%Facebook%%%%%%facebook%%%%%%%%%%%%%%%%%%%%%%%%%%%0%%%50%%%%%%1458014520%%%vi%%%1%%%1%%%20%%%,6,', 'vi', 0, NULL, NULL),
(155, 'Mô tả khác', 'update', 'web_config', 14, 1458014828, 'admin', 'id,name,name_var,value,_order,lang,statusfields%%%values14%%%Mô tả khác%%%other%%%GP ĐKKD số 0302556989 ngày cấp 08/03/2002 được sửa đổi lần thứ 18 ngày 22/05/2015%%%5%%%vi%%%1', 'vi', 0, NULL, NULL),
(156, 'Mô tả khác', 'update', 'web_config', 14, 1458014833, 'admin', 'id,name,name_var,value,_order,lang,statusfields%%%values14%%%Mô tả khác%%%other%%%Copyright © 2016 by muabanxeco.com%%%5%%%vi%%%1', 'vi', 0, NULL, NULL),
(157, 'Mô tả khác', 'update', 'web_config', 14, 1458014875, 'admin', 'id,name,name_var,value,_order,lang,statusfields%%%values14%%%Mô tả khác%%%other%%%Copyright © 2016 by muabanxeco.vn%%%5%%%vi%%%1', 'vi', 0, NULL, NULL),
(158, 'Số xe cổ trang home', 'update', 'web_config', 29, 1458015518, 'admin', 'id,name,name_var,value,_order,lang,statusfields%%%values29%%%Số xe cổ trang home%%%limit_5%%%4%%%14%%%vi%%%1', 'vi', 0, NULL, NULL),
(159, 'Bệnh viện', 'update', 'web_header', 6, 1458015571, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values6%%%Bệnh viện%%%benh-vien-xe-co%%%%%%%%%Bệnh viện xe cổ%%%Bệnh viện xe cổ%%%bệnh viện xe cổ,benh vien xe co%%%%%%%%%%%%%%%%%%%%%%%%%%%0%%%4%%%%%%1457944380%%%vi%%%1%%%1%%%2%%%,2,', 'vi', 0, NULL, NULL),
(160, 'Kiến thức', 'update', 'web_header', 7, 1458015574, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values7%%%Kiến thức%%%kien-thuc-xe-co%%%%%%%%%Kiến thức xe cổ%%%Kiến thức xe cổ%%%kiến thức xe cổ,kien thuc xe co%%%%%%%%%%%%%%%%%%%%%%%%%%%0%%%5%%%%%%1457944440%%%vi%%%1%%%1%%%2%%%,2,', 'vi', 0, NULL, NULL),
(161, 'Tin tức - Sự kiện', 'update', 'web_header', 8, 1458015576, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values8%%%Tin tức - Sự kiện%%%tin-tuc-su-kien%%%%%%%%%Tin tức - Sự kiện xe cổ Hồng Cường%%%Tin tức - Sự kiện xe cổ Hồng Cường%%%tin tức xe cổ,sự kiện xe cổ,tin tuc xe co,su kien xe co%%%%%%%%%%%%%%%%%%%%%%%%%%%0%%%6%%%%%%1457944440%%%vi%%%1%%%1%%%2%%%,2,', 'vi', 0, NULL, NULL),
(162, 'Liên hệ', 'update', 'web_header', 9, 1458015578, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values9%%%Liên hệ%%%lien-he%%%%%%%%%Liên hệ mua bán xe cổ%%%Liên hệ mua bán xe cổ%%%liên hệ mua bán xe cổ,lien he mua ban xe co%%%%%%%%%%%%%%%%%%%%%%%%%%%0%%%7%%%%%%1457944500%%%vi%%%1%%%1%%%17%%%,2,', 'vi', 0, NULL, NULL),
(163, 'Hotline', 'update', 'web_config', 12, 1458016531, 'admin', 'id,name,name_var,value,_order,lang,statusfields%%%values12%%%Hotline%%%hotline%%%0908 444 082%%%7%%%vi%%%1', 'vi', 0, NULL, NULL),
(164, 'Google map', 'create', 'web_config', 32, 1458016552, 'admin', '', 'vi', 0, NULL, NULL),
(165, 'Google map', 'update', 'web_config', 32, 1458016644, 'admin', 'id,name,name_var,value,_order,lang,statusfields%%%values32%%%Google map%%%googlemap%%%%%%6%%%vi%%%1', 'vi', 0, NULL, NULL),
(166, 'Sinh Nhật 01 năm tuổi SH Club', 'create', 'web_header', 25, 1458017744, 'admin', '', 'vi', 0, NULL, NULL),
(167, 'Sinh Nhật 01 năm tuổi SH Club', 'update', 'web_header', 25, 1458017756, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values25%%%Sinh Nhật 01 năm tuổi SH Club%%%sinh-nhat-01-nam-tuoi-sh-club%%%%%%%%%Sinh Nhật 01 năm tuổi SH Club%%%Đã một năm rồi gắn bó và chia sẻ, cùng nhau vượt qua những vui bùn, trăn trở và phát triển.%%%sinh nhật 01 năm tuổi sh club%%%%%%%%%%%%%%%%%%%%%%%%%%%0%%%0%%%%%%1458017700%%%vi%%%1%%%2%%%2%%%%%%,8,', 'vi', 0, NULL, NULL),
(168, 'Dàn xe cổ hiếm trưng bày ở Sài Gòn', 'create', 'web_header', 26, 1458017806, 'admin', '', 'vi', 0, NULL, NULL),
(169, 'Dàn xe cổ hiếm trưng bày ở Sài Gòn', 'update', 'web_header', 26, 1458017808, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values26%%%Dàn xe cổ hiếm trưng bày ở Sài Gòn%%%dan-xe-co-hiem-trung-bay-o-sai-gon%%%%%%%%%Dàn xe cổ hiếm trưng bày ở Sài Gòn%%%Trong khuôn khổ Ngày hội siêu xe lần 2 đang diễn ra tại TP.HCM, bộ sưu tập xe cổ Hồng Cường đã thu hút nhiều sự chú ý của những người tham dự với những mẫu xe quý và hiếm.%%%dàn xe cổ hiếm trưng bày ở sài gòn%%%%%%%%%%%%%%%%%%%%%%%%%%%0%%%0%%%%%%1458017760%%%vi%%%1%%%2%%%2%%%%%%,8,', 'vi', 0, NULL, NULL),
(170, 'Dàn xe cổ hiếm trưng bày ở Sài Gòn', 'update', 'web_header', 26, 1458017820, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values26%%%Dàn xe cổ hiếm trưng bày ở Sài Gòn%%%dan-xe-co-hiem-trung-bay-o-sai-gon%%%%%%1458017808.jpg%%%Dàn xe cổ hiếm trưng bày ở Sài Gòn%%%Trong khuôn khổ Ngày hội siêu xe lần 2 đang diễn ra tại TP.HCM, bộ sưu tập xe cổ Hồng Cường đã thu hút nhiều sự chú ý của những người tham dự với những mẫu xe quý và hiếm.%%%dàn xe cổ hiếm trưng bày ở sài gòn%%%%%%%%%%%%%%%%%%%%%%%%%%%0%%%0%%%%%%1458017760%%%vi%%%1%%%2%%%2%%%%%%,8,', 'vi', 0, NULL, NULL),
(171, 'Xe cổ HOT', 'create', 'web_header', 27, 1458025328, 'admin', '', 'vi', 0, NULL, NULL),
(172, 'Môtô cảnh sát BMW', 'update', 'web_header', 20, 1458026113, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values20%%%Môtô cảnh sát BMW%%%moto-canh-sat-bmw%%%%%%1457946358.jpg%%%Môtô cảnh sát BMW%%%%%%môtô cảnh sát bmw%%%%%%%%%%%%%%%%%%%%%%%%0%%%0%%%0%%%%%%1457946300%%%vi%%%1%%%2%%%3%%%%%%,3,5,12,', 'vi', 0, NULL, NULL),
(173, 'Xe Honda 67 xanh đen', 'update', 'web_header', 18, 1458026120, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values18%%%Xe Honda 67 xanh đen%%%xe-honda-67-xanh-den%%%%%%1457946234.jpg%%%Xe Honda 67 xanh đen%%%%%%xe honda 67 xanh đen%%%%%%%%%%%%%%%%%%%%%%%%0%%%0%%%0%%%%%%1457946120%%%vi%%%1%%%2%%%3%%%%%%,3,5,10,', 'vi', 0, NULL, NULL),
(174, 'Vespa cam đời 1955', 'update', 'web_header', 15, 1458026126, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values15%%%Vespa cam đời 1955%%%vespa-cam-doi-1955%%%%%%1457945994.jpg%%%Vespa cam đời 1955%%%%%%vespa cam đời 1955%%%%%%%%%%%%%%%%%%%%%%%%0%%%0%%%0%%%%%%1457945880%%%vi%%%1%%%2%%%3%%%%%%,2,5,11,', 'vi', 0, NULL, NULL),
(175, 'Giới thiệu mua bán xe cổ Hồng Cường', 'create', 'web_header', 28, 1458027314, 'admin', '', 'vi', 0, NULL, NULL),
(176, 'Giới thiệu mua bán xe cổ Hồng Cường', 'update', 'web_header', 28, 1458027340, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values28%%%Giới thiệu mua bán xe cổ Hồng Cường%%%gioi-thieu-mua-ban-xe-co-hong-cuong%%%%%%%%%Giới thiệu mua bán xe cổ Hồng Cường%%%Thú chơi xe cổ đã trở thành một iữa những dòng xe hiện đại trên phố, chiếc xe cổ vẫn luôn thu hút mọi ánh nhìn tò mò và ngưỡng mộ của mọi người dù là thanh niên trẻ hay các ông cụ lão.%%%giới thiệu mua bán xe cổ hồng cường%%%%%%%%%%%%%%%%%%%%%%%%%%%0%%%0%%%%%%1458027240%%%vi%%%1%%%2%%%2%%%%%%,4,', 'vi', 0, NULL, NULL),
(177, 'Xe cổ', 'update', 'web_header', 2, 1458028891, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values2%%%Xe cổ%%%xe-co%%%%%%%%%Xe cổ%%%%%%xe cổ%%%%%%%%%%%%%%%%%%%%%%%%%%%1%%%1%%%%%%1457944140%%%vi%%%1%%%1%%%3%%%,7,', 'vi', 0, NULL, NULL),
(178, 'Xe độ', 'update', 'web_header', 3, 1458028904, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values3%%%Xe độ%%%xe-do%%%%%%%%%Xe độ%%%%%%xe độ%%%%%%%%%%%%%%%%%%%%%%%%%%%1%%%2%%%%%%1457944260%%%vi%%%1%%%1%%%3%%%,7,', 'vi', 0, NULL, NULL),
(179, 'Honda', 'update', 'web_header', 10, 1458028912, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values10%%%Honda%%%mua-ban-xe-co-honda%%%%%%%%%Mua bán xe cổ Honda%%%Mua bán xe cổ Honda%%%mua bán xe cổ honda,mua bán xe co honda,honda%%%%%%%%%%%%%%%%%%%%%%%%%%%5%%%1%%%%%%1457944620%%%vi%%%1%%%1%%%3%%%,2,', 'vi', 0, NULL, NULL),
(180, 'Vespa', 'update', 'web_header', 11, 1458028922, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values11%%%Vespa%%%mua-ban-xe-co-vespa%%%%%%%%%Mua bán xe cổ Vespa%%%Mua bán xe cổ Vespa%%%mua bán xe cổ vespa,mua ban xe co vespa,vespa%%%%%%%%%%%%%%%%%%%%%%%%%%%5%%%2%%%%%%1457944680%%%vi%%%1%%%1%%%3%%%,2,', 'vi', 0, NULL, NULL),
(181, 'BMW', 'update', 'web_header', 12, 1458028929, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values12%%%BMW%%%mua-ban-xe-co-bmw%%%%%%%%%Mua bán xe cổ BMW%%%Mua bán xe cổ BMW%%%mua bán xe cổ bmw,mua ban xe co bmw,bmw%%%%%%%%%%%%%%%%%%%%%%%%%%%5%%%3%%%%%%1457944740%%%vi%%%1%%%1%%%3%%%,2,', 'vi', 0, NULL, NULL),
(182, 'Xe cổ', 'update', 'web_header', 2, 1458028942, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values2%%%Xe cổ%%%xe-co%%%%%%%%%Xe cổ%%%%%%xe cổ%%%%%%%%%%%%%%%%%%%%%%%%%%%5%%%1%%%%%%1457944140%%%vi%%%1%%%1%%%3%%%,7,', 'vi', 0, NULL, NULL),
(183, 'Xe độ', 'update', 'web_header', 3, 1458028945, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values3%%%Xe độ%%%xe-do%%%%%%%%%Xe độ%%%%%%xe độ%%%%%%%%%%%%%%%%%%%%%%%%%%%5%%%2%%%%%%1457944260%%%vi%%%1%%%1%%%3%%%,7,', 'vi', 0, NULL, NULL),
(184, 'Xe độ', 'update', 'web_header', 3, 1458029085, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values3%%%Xe độ%%%xe-do%%%%%%%%%Xe độ%%%%%%xe độ%%%%%%%%%%%%%%%%%%%%%%%%%%%5%%%2%%%%%%1457944260%%%vi%%%1%%%1%%%3%%%,7,2,', 'vi', 0, NULL, NULL),
(185, 'Xe cổ', 'update', 'web_header', 2, 1458029340, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values2%%%Xe cổ%%%xe-co%%%%%%%%%Xe cổ%%%%%%xe cổ%%%%%%%%%%%%%%%%%%%%%%%%%%%5%%%1%%%%%%1457944140%%%vi%%%1%%%1%%%3%%%,7,2,', 'vi', 0, NULL, NULL),
(186, 'Home tour', 'update', 'web_position', 8, 1458034256, 'admin', 'id,name,themes,_order,type,statusfields%%%values8%%%Home tour%%%%%%8%%%2%%%0', 'vi', 0, NULL, NULL),
(187, 'Bệnh viện', 'update', 'web_header', 6, 1458034278, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values6%%%Bệnh viện%%%benh-vien-xe-co%%%%%%%%%Bệnh viện xe cổ%%%Bệnh viện xe cổ%%%bệnh viện xe cổ,benh vien xe co%%%%%%%%%%%%%%%%%%%%%%%%%%%0%%%4%%%%%%1457944380%%%vi%%%1%%%1%%%2%%%,2,3,', 'vi', 0, NULL, NULL),
(188, 'Tin tức - Sự kiện', 'update', 'web_header', 8, 1458034286, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values8%%%Tin tức - Sự kiện%%%tin-tuc-su-kien%%%%%%%%%Tin tức - Sự kiện xe cổ Hồng Cường%%%Tin tức - Sự kiện xe cổ Hồng Cường%%%tin tức xe cổ,sự kiện xe cổ,tin tuc xe co,su kien xe co%%%%%%%%%%%%%%%%%%%%%%%%%%%0%%%6%%%%%%1457944440%%%vi%%%1%%%1%%%2%%%,2,3,', 'vi', 0, NULL, NULL),
(189, 'Dàn xe cổ hiếm trưng bày ở Sài Gòn', 'update', 'web_header', 26, 1458034614, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values26%%%Dàn xe cổ hiếm trưng bày ở Sài Gòn%%%dan-xe-co-hiem-trung-bay-o-sai-gon%%%%%%1458017808.jpg%%%Dàn xe cổ hiếm trưng bày ở Sài Gòn%%%Trong khuôn khổ Ngày hội siêu xe lần 2 đang diễn ra tại TP.HCM, bộ sưu tập xe cổ Hồng Cường đã thu hút nhiều sự chú ý của những người tham dự với những mẫu xe quý và hiếm.%%%dàn xe cổ hiếm trưng bày ở sài gòn%%%%%%%%%%%%%%%%%%%%%%%%%%%0%%%0%%%%%%1458017760%%%vi%%%1%%%2%%%2%%%%%%,8,', 'vi', 0, NULL, NULL),
(190, 'Bệnh viện', 'update', 'web_header', 6, 1458034710, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values6%%%Bệnh viện%%%benh-vien-xe-co%%%%%%%%%Bệnh viện xe cổ%%%Bệnh viện xe cổ%%%bệnh viện xe cổ,benh vien xe co%%%%%%%%%%%%%%%%%%%%%%%%%%%0%%%4%%%%%%1457944380%%%vi%%%1%%%1%%%2%%%,8,2,3,', 'vi', 0, NULL, NULL),
(191, 'Tin tức - Sự kiện', 'update', 'web_header', 8, 1458034722, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values8%%%Tin tức - Sự kiện%%%tin-tuc-su-kien%%%%%%%%%Tin tức - Sự kiện xe cổ Hồng Cường%%%Tin tức - Sự kiện xe cổ Hồng Cường%%%tin tức xe cổ,sự kiện xe cổ,tin tuc xe co,su kien xe co%%%%%%%%%%%%%%%%%%%%%%%%%%%0%%%6%%%%%%1457944440%%%vi%%%1%%%1%%%2%%%,8,2,3,', 'vi', 0, NULL, NULL),
(192, 'Tin tức - Sự kiện', 'update', 'web_header', 8, 1458034735, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values8%%%Tin tức - Sự kiện%%%tin-tuc-su-kien%%%%%%%%%Tin tức - Sự kiện xe cổ Hồng Cường%%%Tin tức - Sự kiện xe cổ Hồng Cường%%%tin tức xe cổ,sự kiện xe cổ,tin tuc xe co,su kien xe co%%%%%%%%%%%%%%%%%%%%%%%%%%%0%%%6%%%%%%1457944440%%%vi%%%1%%%1%%%2%%%,2,3,', 'vi', 0, NULL, NULL),
(193, 'Bệnh viện', 'update', 'web_header', 6, 1458034741, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values6%%%Bệnh viện%%%benh-vien-xe-co%%%%%%%%%Bệnh viện xe cổ%%%Bệnh viện xe cổ%%%bệnh viện xe cổ,benh vien xe co%%%%%%%%%%%%%%%%%%%%%%%%%%%0%%%4%%%%%%1457944380%%%vi%%%1%%%1%%%2%%%,2,3,', 'vi', 0, NULL, NULL),
(194, 'Xe cổ / trang', 'update', 'web_config', 6, 1458035181, 'admin', 'id,name,name_var,value,_order,lang,statusfields%%%values6%%%Xe cổ / trang%%%limit_2%%%18%%%11%%%vi%%%1', 'vi', 0, NULL, NULL),
(195, 'Hình ảnh', 'update', 'web_type', 7, 1458035202, 'admin', 'id,name,type,_table,url_img,url_img_thumb,_order,other,statusfields%%%values7%%%Hình ảnh%%%photos%%%web_header%%%%%%%%%7%%%1%%%1', 'vi', 0, NULL, NULL),
(196, 'Quản lý video', 'update', 'web_type', 8, 1458035204, 'admin', 'id,name,type,_table,url_img,url_img_thumb,_order,other,statusfields%%%values8%%%Quản lý video%%%video%%%web_header%%%%%%%%%8%%%1%%%1', 'vi', 0, NULL, NULL),
(197, 'Giới thiệu', 'update', 'web_type', 5, 1458035245, 'admin', 'id,name,type,_table,url_img,url_img_thumb,_order,other,statusfields%%%values5%%%Giới thiệu%%%about%%%web_header%%%public/images/articles/%%%public/_thumbs/Images/articles/%%%5%%%1%%%1', 'vi', 0, NULL, NULL),
(198, 'Giới thiệu mua bán xe cổ Hồng Cường', 'update', 'web_header', 28, 1458035316, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values28%%%Giới thiệu mua bán xe cổ Hồng Cường%%%gioi-thieu-mua-ban-xe-co-hong-cuong%%%%%%1458027315.jpg%%%Giới thiệu mua bán xe cổ Hồng Cường%%%Thú chơi xe cổ đã trở thành một iữa những dòng xe hiện đại trên phố, chiếc xe cổ vẫn luôn thu hút mọi ánh nhìn tò mò và ngưỡng mộ của mọi người dù là thanh niên trẻ hay các ông cụ lão.%%%giới thiệu mua bán xe cổ hồng cường%%%%%%%%%%%%%%%%%%%%%%%%%%%0%%%0%%%%%%1458027240%%%vi%%%1%%%2%%%2%%%%%%,4,', 'vi', 0, NULL, NULL),
(199, 'Dàn xe cổ hiếm trưng bày ở Sài Gòn', 'update', 'web_header', 26, 1458035455, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,duration,means,hotel,depart,destination,schedule,price,parent,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values26%%%Dàn xe cổ hiếm trưng bày ở Sài Gòn%%%dan-xe-co-hiem-trung-bay-o-sai-gon%%%%%%1458017808.jpg%%%Dàn xe cổ hiếm trưng bày ở Sài Gòn%%%Trong khuôn khổ Ngày hội siêu xe lần 2 đang diễn ra tại TP.HCM, bộ sưu tập xe cổ Hồng Cường đã thu hút nhiều sự chú ý của những người tham dự với những mẫu xe quý và hiếm.%%%dàn xe cổ hiếm trưng bày ở sài gòn%%%%%%%%%%%%%%%%%%%%%%%%%%%0%%%0%%%%%%1458017760%%%vi%%%1%%%2%%%2%%%%%%,6,8,', 'vi', 0, NULL, NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_picture`
--

INSERT INTO `web_picture` (`id`, `name`, `img`, `datetime`, `_order`, `_table`, `table_id`) VALUES
(1, 'Vespa trắng đời 1945', '1457945344.jpg', 1457945344, 0, 'web_header', 14),
(2, 'Vespa cam đời 1955', '1457945994.jpg', 1457945993, 0, 'web_header', 15),
(3, 'Lam Vespa màu trắng Zin', '1457946087.jpg', 1457946086, 0, 'web_header', 16),
(4, 'Xe Honda 67 trắng đen', '1457946160.jpg', 1457946159, 0, 'web_header', 17),
(5, 'Xe Honda 67 xanh đen', '1457946234.jpg', 1457946233, 0, 'web_header', 18),
(6, 'Môtô BMW đời 1975', '1457946313.jpg', 1457946312, 0, 'web_header', 19),
(7, 'Môtô cảnh sát BMW', '1457946358.jpg', 1457946357, 0, 'web_header', 20),
(8, 'Môtô BMW đời 1965', '1457946410.jpg', 1457946409, 0, 'web_header', 21),
(9, 'Facebook', '1458014546.gif', 1458014545, 0, 'web_header', 22),
(10, 'Youtube', '1458014619.gif', 1458014618, 0, 'web_header', 23),
(11, 'Google plus', '1458014640.gif', 1458014639, 0, 'web_header', 24),
(12, 'Sinh Nhật 01 năm tuổi SH Club', '1458017745.jpg', 1458017744, 0, 'web_header', 25),
(13, 'Dàn xe cổ hiếm trưng bày ở Sài Gòn', '1458017808.jpg', 1458017807, 0, 'web_header', 26),
(14, 'Giới thiệu mua bán xe cổ Hồng Cường', '1458027315.jpg', 1458027314, 0, 'web_header', 28);

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
(4, 'Menu bên trái', '', 4, 1, 0),
(5, 'Menu bên phải', '', 5, 1, 1),
(6, 'Box mạng xã hội', '', 6, 1, 1),
(7, 'Home xe cổ', '', 7, 2, 1),
(8, 'Home tin tức - thông tin', '', 8, 2, 1),
(9, 'Home yêu cầu dịch vụ tour', '', 9, 2, 0),
(10, 'Home tại sao chọn chúng tôi', '', 10, 2, 0),
(11, 'Home team building', '', 11, 2, 0),
(12, 'Home các điểm du lịch', '', 12, 2, 0),
(13, 'Home khách hàng', '', 13, 2, 0),
(14, 'Support nhân viên sale', '', 14, 1, 0),
(15, 'Home cho thuê xe', '', 15, 2, 0),
(16, 'Slider', '', 16, 3, 1),
(17, 'Event 400px x 200px', '', 17, 3, 1),
(18, 'Khách hàng height 160px', '', 18, 3, 1),
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
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_sendmail`
--

INSERT INTO `web_sendmail` (`id`, `name`, `email`, `content`, `datetime`, `event_id`, `_table`, `table_id`) VALUES
(16, 'Trần Hiếu Nhân', 'nhan300489@gmail.com', '<div style="line-height:180%">\n<p>Kính gởi bạn Trần Hiếu Nhân,</p>\n\n<p><strong>Công ty đào tạo và tư vấn Stevbros</strong> - uỷ quyền đào tạo của <em>Viện Quản Lý Dự Án Hoa Kỳ (PMI) mã số 3807 -&nbsp;</em>kính chào bạn.&nbsp;Cảm ơn bạn đã quan tâm đến các khoá học của Stevbros.</p>\n\n<p>Thông báo&nbsp;bạn phải làm&nbsp;bài kiểm tra đầu vào của khoá học:</p>\n\n<p style="margin-left: 40px;">Bài kiểm tra đầu vào của khoá học Quản Lý Dự Án Theo Tiêu Chuẩn Quốc Tế PMBOK® (PMF) (Entry Test of Project Management Fundamentals)<br />\nLàm bài kiểm tra, <a href="http://www.iappscode.com/stevbros/ajax/?entrytest=1&amp;menu_id=286&amp;type=web_contact&amp;date=1452226180">ấn vào đây</a></p>\n\n<p>Một lần nữa, cảm ơn bạn đã quan tâm đến các khoá học của Stevbros.<br />\n<span>Trân trọng,</span></p>\n\n<p><span>​</span></p>\n\n<p><span style="color:#808080;"><strong>Stevbros Training &amp; Consultancy</strong></span><br />\n<span style="color: rgb(128, 128, 128); line-height: 1.6em;">Hotline: +84 907 857746 - Phone: +84 8 3911 7362</span><br />\n<span style="color: rgb(128, 128, 128); line-height: 1.6em;">Office: Lầu 7, CMARD2, 45 Đinh Tiên Hoàng, Phường Bến Nghé, Quận 1, TP. Hồ Chí Minh, Việt Nam</span><br />\n<span style="color: rgb(128, 128, 128); line-height: 1.6em;">Website: www.stevbros.edu.vn<br />\n​</span><em style="line-height: 1.6em;"><span style="color:#808080;">Email này được gửi tự động. Xin đừng trả lời. Liên hệ với chúng tôi </span><a href="mailto:support@stevbros.com"><span style="color:#808080;">support@stevbros.com</span></a><span style="color:#808080;"> để biết thêm thông tin.</span></em></p>\n</div>', 1452570183, 11, 'web_contact', 11),
(15, 'Trần Hiếu Nhân', 'nhan300489@gmail.com', '<div style="line-height:180%">\n<p>Kính gởi bạn Trần Hiếu Nhân,</p>\n\n<p><strong>Công ty đào tạo và tư vấn Stevbros</strong> - uỷ quyền đào tạo của <em>Viện Quản Lý Dự Án Hoa Kỳ (PMI) mã số 3807 -&nbsp;</em>kính chào bạn.&nbsp;Cảm ơn bạn đã quan tâm đến các khoá học của Stevbros.</p>\n\n<p>Thông báo&nbsp;bạn phải làm&nbsp;bài kiểm tra đầu vào của khoá học:</p>\n\n<p style="margin-left: 40px;">Bài kiểm tra đầu vào của khoá học Luyện Thi PMP® (Entry Test of PMP® Exam Prep Pass For Sure )<br />\nLàm bài kiểm tra, <a href="http://www.iappscode.com/stevbros/ajax/?entrytest=1&amp;menu_id=286&amp;type=web_contact&amp;date=1452226180">ấn vào đây</a></p>\n\n<p>Một lần nữa, cảm ơn bạn đã quan tâm đến các khoá học của Stevbros.<br />\n<span>Trân trọng,</span></p>\n\n<p><span>​</span></p>\n\n<p><span style="color:#808080;"><strong>Stevbros Training &amp; Consultancy</strong></span><br />\n<span style="color: rgb(128, 128, 128); line-height: 1.6em;">Hotline: +84 907 857746 - Phone: +84 8 3911 7362</span><br />\n<span style="color: rgb(128, 128, 128); line-height: 1.6em;">Office: Lầu 7, CMARD2, 45 Đinh Tiên Hoàng, Phường Bến Nghé, Quận 1, TP. Hồ Chí Minh, Việt Nam</span><br />\n<span style="color: rgb(128, 128, 128); line-height: 1.6em;">Website: www.stevbros.edu.vn<br />\n​</span><em style="line-height: 1.6em;"><span style="color:#808080;">Email này được gửi tự động. Xin đừng trả lời. Liên hệ với chúng tôi </span><a href="mailto:support@stevbros.com"><span style="color:#808080;">support@stevbros.com</span></a><span style="color:#808080;"> để biết thêm thông tin.</span></em></p>\n</div>', 1452569101, 11, 'web_contact', 11),
(14, 'Trần Hiếu Nhân', 'nhan300489@gmail.com', '<div style="line-height:180%">\n<p>Kính gởi bạn Trần Hiếu Nhân,</p>\n\n<p><strong>Công ty đào tạo và tư vấn Stevbros</strong> - uỷ quyền đào tạo của <em>Viện Quản Lý Dự Án Hoa Kỳ (PMI) mã số 3807 -&nbsp;</em>kính chào bạn.&nbsp;Cảm ơn bạn đã quan tâm đến các khoá học của Stevbros.</p>\n\n<p>Xin thông báo báo giá học phí</p>\n\n<p style="margin-left: 40px;">Khóa học: Quản Lý Dự Án theo Tiêu Chuẩn Quốc Tế PMBOK®<br />\nGiá: 3.000.000đ</p>\n\n<p>Một lần nữa, cảm ơn bạn đã quan tâm đến các khoá học của Stevbros.<br />\n<span>Trân trọng,</span></p>\n\n<p><span>​</span></p>\n\n<p><span style="color:#808080;"><strong>Stevbros Training &amp; Consultancy</strong></span><br />\n<span style="color: rgb(128, 128, 128); line-height: 1.6em;">Hotline: +84 907 857746 - Phone: +84 8 3911 7362</span><br />\n<span style="color: rgb(128, 128, 128); line-height: 1.6em;">Office: Lầu 7, CMARD2, 45 Đinh Tiên Hoàng, Phường Bến Nghé, Quận 1, TP. Hồ Chí Minh, Việt Nam</span><br />\n<span style="color: rgb(128, 128, 128); line-height: 1.6em;">Website: www.stevbros.edu.vn<br />\n​</span><em style="line-height: 1.6em;"><span style="color:#808080;">Email này được gửi tự động. Xin đừng trả lời. Liên hệ với chúng tôi </span><a href="mailto:support@stevbros.com"><span style="color:#808080;">support@stevbros.com</span></a><span style="color:#808080;"> để biết thêm thông tin.</span></em></p>\n</div>', 1452569054, 9, 'web_contact', 11);

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
(3, 'Xe cổ', 'cars', 'web_header', 'public/images/articles/', 'public/_thumbs/Images/articles/', 3, 1, 1),
(4, 'Ý kiến', 'opinion', 'web_header', 'public/images/articles/', 'public/_thumbs/Images/articles/', 4, 1, 0),
(5, 'Giới thiệu', 'about', 'web_header', 'public/images/articles/', 'public/_thumbs/Images/articles/', 5, 1, 0),
(6, 'Team building', 'team_building', 'web_header', 'public/images/videos/', 'public/_thumbs/Images/videos/', 6, 1, 0),
(7, 'Hình ảnh', 'photos', 'web_header', '', '', 7, 1, 0),
(8, 'Quản lý video', 'video', 'web_header', '', '', 8, 1, 0),
(9, 'Hợp tác kinh doanh', 'cooperate', '', '', '', 9, 1, 0),
(10, 'Khai giảng', 'opening', 'web_header', '', '', 10, 1, 0),
(11, 'Viết Blog', 'submit_blog', 'web_header', '', '', 11, 1, 0),
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
  `address` varchar(250) NOT NULL,
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
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_users`
--

INSERT INTO `web_users` (`id`, `name`, `address`, `phone`, `email`, `birthday`, `gender`, `img`, `salt`, `page`, `username`, `password`, `random_key`, `date_expiration`, `lang`, `datetime`, `status`, `group_id`) VALUES
(25, 'Admin', '123 CMT 8', '0988 388 003', 'admin@localhost.com', 0, 1, '', '', 1, 'admin', '52e4ab92c412c5aadf3a0970779da825', NULL, 0, 'vi', 0, 1, 3),
(34, 'Hiếu Nhân', '123 CMT 8', '0988 388 003', 'trannhan@localhost.com', 609872400, 1, '', '', 1, 'trannhan', '867e1a36d190000d2f266d80889683fc', NULL, 0, 'vi', 1425093180, 1, 3),
(45, 'Hoa Việt', '69 đường số 20, P.Bình Hưng Hóa, Q.Bình Tân, Tp.HCM', '08 3765 0115', 'webdulichhoaviet@gmail.com', 0, NULL, '', '', 1, 'hoaviet', '867e1a36d190000d2f266d80889683fc', NULL, 0, 'vi', 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_users_group`
--

CREATE TABLE IF NOT EXISTS `web_users_group` (
`id` int(2) NOT NULL,
  `name` varchar(50) NOT NULL,
  `_order` int(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_users_group`
--

INSERT INTO `web_users_group` (`id`, `name`, `_order`, `status`) VALUES
(1, 'Khách hàng', 1, 1),
(2, 'Quản lý Apps Facebook', 2, 1),
(3, 'Quản trị website', 3, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_users_lock_ip`
--

INSERT INTO `web_users_lock_ip` (`id`, `ip_address`, `login_number`, `disable_date`, `datetime`) VALUES
(6, '::1', 2, 0, 1458034228),
(7, '115.78.128.150', 2, 0, 1456542242);

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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_users_role`
--

INSERT INTO `web_users_role` (`id`, `action_view`, `action_create`, `action_edit`, `action_delete`, `admin_id`, `users_id`, `status`) VALUES
(1, 1, 1, 1, 1, 4, 25, 1),
(2, 1, 1, 1, 1, 18, 25, 1),
(3, 1, 1, 1, 1, 24, 25, 1),
(4, 1, 1, 1, 1, 5, 25, 1),
(5, 1, 1, 1, 1, 1, 25, 1),
(6, 1, 1, 1, 1, 19, 25, 1),
(7, 1, 1, 1, 1, 26, 25, 1),
(8, 1, 1, 1, 1, 6, 25, 1),
(9, 1, 1, 1, 1, 7, 25, 1),
(10, 1, 1, 1, 1, 3, 25, 1),
(11, 1, 1, 1, 1, 8, 25, 1),
(12, 1, 1, 1, 1, 21, 25, 1),
(13, 1, 1, 1, 1, 2, 25, 1),
(14, 1, 1, 1, 1, 13, 25, 1),
(15, 1, 1, 1, 1, 14, 25, 1),
(16, 1, 1, 1, 1, 16, 25, 1),
(17, 1, 1, 1, 1, 20, 25, 1),
(18, 1, 1, 1, 1, 15, 25, 1),
(19, 1, 1, 1, 1, 17, 25, 1),
(20, 1, 1, 1, 1, 22, 25, 1),
(21, 1, 1, 1, 1, 25, 25, 1),
(22, 1, 1, 1, 1, 27, 25, 1),
(23, 1, 1, 1, 1, 23, 25, 1),
(24, 1, 1, 1, 1, 35, 25, 1),
(25, 1, 1, 1, 1, 4, 45, 1),
(26, 1, 1, 1, 1, 24, 45, 1),
(27, 1, 1, 1, 1, 19, 45, 1),
(28, 1, 1, 1, 1, 18, 45, 1),
(29, 1, 1, 1, 1, 1, 45, 1),
(30, 1, 1, 1, 1, 35, 45, 1),
(31, 1, 1, 1, 1, 3, 45, 1),
(32, 1, 1, 1, 1, 26, 45, 1),
(33, 1, 1, 1, 1, 2, 45, 1),
(34, 1, 1, 1, 1, 5, 45, 1),
(35, 1, 1, 1, 1, 21, 45, 1),
(36, 1, 1, 1, 1, 8, 45, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `web_admin`
--
ALTER TABLE `web_admin`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `url` (`url`);

--
-- Indexes for table `web_branch`
--
ALTER TABLE `web_branch`
 ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `web_admin`
--
ALTER TABLE `web_admin`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `web_branch`
--
ALTER TABLE `web_branch`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `web_config`
--
ALTER TABLE `web_config`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `web_contact`
--
ALTER TABLE `web_contact`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `web_content`
--
ALTER TABLE `web_content`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `web_event_form`
--
ALTER TABLE `web_event_form`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `web_header`
--
ALTER TABLE `web_header`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `web_ip_address`
--
ALTER TABLE `web_ip_address`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=200;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `web_position`
--
ALTER TABLE `web_position`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `web_sendmail`
--
ALTER TABLE `web_sendmail`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `web_users_group`
--
ALTER TABLE `web_users_group`
MODIFY `id` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `web_users_lock_ip`
--
ALTER TABLE `web_users_lock_ip`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
