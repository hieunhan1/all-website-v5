-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2016 at 07:47 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `minhnhatland`
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
(3, 'Danh mục menu', 'listmenu', 'web_header', '?properties=1', 'web_menu', 'adIconMenu', 8, '0', 1, 0, 1),
(4, 'Quản lý bài viết', 'article', 'web_header', '?properties=2&type_id=2', 'web_article', 'adIconArticle', 1, '0', 1, 0, 1),
(5, 'Quản lý dự án', 'project', 'web_header', '?properties=2&type_id=3', 'web_project', 'adIconCourse', 2, '0', 1, 0, 1),
(6, 'Quản lý hình ảnh', 'photos', 'web_header', '?properties=2&type_id=8', 'web_photos', 'adIconPhoto', 5, '0', 1, 0, 0),
(7, 'Danh sách chi nhánh', 'branch', 'web_branch', '', 'web_branch', 'adIconOther', 7, '0', 1, 0, 0),
(8, 'Slider & banner', 'sliderbanner', 'web_header', '?properties=2&type_id=16', 'web_slider', 'adIconAds', 10, '0', 1, 0, 1),
(9, 'Danh sách Tỉnh - Thành', 'listcity', 'web_listcity', '', 'web_listcity', 'adIconOther', 20, '0', 1, 0, 0),
(10, 'DS Quận - Huyện', 'listdistricts', 'web_listdistricts', '', 'web_listdistricts', 'icon-districts.jpg', 21, '0', 1, 0, 0),
(11, 'Đơn đặt hàng', 'order', 'web_order', '', 'web_order', 'icon-order.jpg', 22, '<span id="web_product_order" class="ajax_thongtin"></span>', 1, 0, 0),
(12, 'Đơn đặt hàng chi tiết', 'order_detail', 'web_order_detail', '', 'web_order_detail', 'icon-order-detail.jpg', 23, '0', 1, 0, 0),
(13, 'Menu admin', 'web_admin', 'web_admin', '', 'web_admin', 'adIconMenu', 50, '0', 2, 0, 1),
(14, 'Danh sách ngôn ngữ', 'language', 'web_language', '', 'web_language', 'adIconLang', 51, '0', 2, 0, 1),
(15, 'Vị trí thông tin', 'web_position', 'web_position', '', 'web_position', 'adIconPosition', 54, '0', 2, 0, 1),
(16, 'Biến môi trường', 'languagevar', 'web_language_var', '', 'web_language_var', 'adIconVar', 52, '0', 2, 0, 1),
(17, 'Group user', 'users_group', 'web_users_group', '', 'web_users_group', 'adIconGroup', 55, '0', 2, 0, 1),
(18, 'Add tags keyword', 'web_tags', 'web_tags', '', 'web_tags', 'adIconTags', 0, '0', 0, 0, 1),
(19, 'Quản lý tuyển dụng', 'recruit', 'web_header', '?properties=2&type_id=7', 'web_recruit', 'adIconOpinion', 3, '1', 1, 0, 0),
(20, 'Loại thông tin', 'web_type', 'web_type', '', 'web_type', 'adIconType', 53, '0', 2, 0, 1),
(21, 'Liên hệ trực tuyến', 'web_contact', 'web_contact', '', 'web_contact', 'adIconContact', 11, '1', 1, 0, 1),
(22, 'Event logs', 'web_logs', 'web_logs', '', 'web_logs', 'adIconLog', 56, '0', 2, 0, 1),
(23, 'Tài khoản', 'web_users', 'web_users', '', 'web_users', 'adIconSetting', 100, '0', 2, 0, 1),
(24, 'Thông tin tài khoản', 'user', 'account', '?infomation=1', 'account', 'adIconUser', 0, '0', 0, 0, 1),
(25, 'Web Header', 'web_header', 'web_header', '', 'web_header', 'adIconOther', 57, '0', 2, 0, 1),
(26, 'Quản lý videos', 'videos', 'web_header', '?properties=2&type_id=9', 'web_videos', 'adIconVideo', 6, '0', 1, 0, 0),
(27, 'Phân quyền', 'users_role', 'web_users_role', '', 'web_users_role', 'adIconUserRole', 99, '0', 2, 0, 1),
(29, 'Quản lý hợp đồng', 'contract', 'mn_contract', '', 'mn_contract', 'adIconGroup', 2, '0', 3, 0, 0),
(28, 'Quản lý học viên', 'student', 'mn_student', '', 'mn_student', 'adIconUser', 103, '0', 3, 0, 0),
(30, 'Quản lý khóa học', 'courses', 'mn_courses', '', 'mn_courses', 'adIconCourse', 101, '0', 3, 0, 0),
(31, 'Quản lý lớp học', 'class', 'mn_class', '', 'mn_class', 'adIconOther', 102, '0', 3, 0, 0),
(32, 'Quản lý học phí', 'mn_fee', 'mn_fee', '', 'mn_fee', 'adIconMoney', 5, '0', 3, 0, 0),
(33, 'Quản lý công ty', 'company', 'web_company', '', 'web_company', 'adIconParts', 4, '0', 1, 0, 0),
(34, 'Quản lý nhân viên', 'mn_staff', 'mn_staff', '', 'mn_staff', 'adIconUser', 7, '0', 3, 0, 0),
(35, 'Quản lý sự kiện', 'event_form', 'web_event_form', '', 'web_event_form', 'adIconOpinion', 54, '0', 2, 0, 1),
(36, 'Khách hàng liên hệ', 'viewContact', 'web_contact', '', 'mn_view_contact', 'adIconProcedure', 100, '0', 3, 0, 0),
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
  `phone` varchar(50) NOT NULL,
  `fax` varchar(30) DEFAULT NULL,
  `address` varchar(200) NOT NULL,
  `hotline` varchar(50) DEFAULT NULL,
  `googlemap` varchar(50) DEFAULT NULL,
  `_order` int(3) NOT NULL DEFAULT '0',
  `lang` varchar(2) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `web_company`
--

CREATE TABLE IF NOT EXISTS `web_company` (
`id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(250) NOT NULL,
  `phone` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `website` varchar(200) DEFAULT NULL,
  `fax` varchar(30) DEFAULT NULL,
  `img` varchar(20) DEFAULT NULL,
  `content` text NOT NULL,
  `datetime` bigint(10) NOT NULL,
  `lang` varchar(3) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_config`
--

INSERT INTO `web_config` (`id`, `name`, `name_var`, `value`, `_order`, `lang`, `status`) VALUES
(5, 'Số tin / trang', 'limit_1', '6', 10, 'vi', 1),
(6, 'Số project / trang', 'limit_2', '12', 11, 'vi', 1),
(7, 'Số project / trang home', 'limit_3', '4', 12, 'vi', 1),
(8, 'Số video / trang', 'limit_4', '15', 13, 'vi', 0),
(9, 'Copyright', 'copyright', 'Bản quyền © 2016 thuộc về Công ty TNHH Minh Nhật', 4, 'vi', 1),
(10, 'Email', 'email', 'support@minhnhatland.com', 6, 'vi', 1),
(11, 'Điện thoại', 'tel', '072226257', 3, 'vi', 1),
(12, 'Google map', 'googlemap', '10.895298, 106.310292', 7, 'vi', 1),
(13, 'Tên viết tắt', 'name', 'MINHNHAT', 8, 'vi', 1),
(14, 'Giấy phép', 'license', 'Số GPĐKKD: 033123123 do Sở Thương Binh Lao Động TP.HCM cấp ngày 02/04/2010', 5, 'vi', 1),
(15, 'Địa chỉ', 'address', 'Khu vực 1, Thị trấn Đông Thành, Huyện Đức Huệ, Long An', 2, 'vi', 1),
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
(27, 'Tên trang website', 'sitename', 'CÔNG TY TNHH MINH NHẬT', 1, 'vi', 1),
(28, 'Site name', 'sitename', 'Dịch vụ thiết kế website iAppsCode', 1, 'en', 1),
(29, 'Số photos / trang', 'limit_5', '12', 14, 'vi', 0);

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
  `message` text NOT NULL,
  `date_birthday` bigint(10) DEFAULT NULL,
  `branch` varchar(20) DEFAULT NULL,
  `course_name` varchar(150) DEFAULT NULL,
  `datetime` bigint(10) NOT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '0',
  `type` int(11) NOT NULL,
  `user` int(5) DEFAULT NULL,
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
  `more2` text,
  `more3` text,
  `more4` text,
  `header_id` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_content`
--

INSERT INTO `web_content` (`id`, `content`, `more1`, `more2`, `more3`, `more4`, `header_id`) VALUES
(1, '<p><strong>Website chính thức:&nbsp;<a href="http://melodyresidences.com.vn/" target="_blank">http://melodyresidences.com.vn</a></strong></p>\n\n<p style="text-align: center;"><img alt="" src="http://hungthinhland.com/land/attachment/image/a(8).jpg" /></p>\n\n<p>Được kiến tạo từ sự kết hợp hài hòa giữa nhịp sống hiện đại cùng thiên nhiên xanh mát trong lành,Melody Residences&nbsp;không chỉ đem đến sự tiện nghi và sang trọng mà còn là nơi lý tưởng để bạn làm mới mình mỗi ngày và sẵn sàng cho một ngày mới tràn đầy năng lượng.</p>\n\n<p><strong>Tổng quan dự án:</strong></p>\n\n<p>Vị trí:&nbsp;Số 16 Âu Cơ, phường Tân Sơn Nhì, quận Tân Phú, TP.HCM</p>\n\n<ul>\n	<li>Diện tích khu đất: 1.07 ha</li>\n	<li>Mật độ xây dựng: 40%</li>\n	<li>Số block: 02<br />\n	&nbsp;</li>\n	<li>Tầng cao: 19 tầng&nbsp;</li>\n	<li>Số căn hộ: 704 căn.</li>\n	<li>Diện tích căn hộ:&nbsp;Từ 66.9 m2 – 97.13 m2.</li>\n</ul>', '<p><img alt="" src="http://hungthinhland.com/land/attachment/image/vi_tri(2).gif" style="width: 830px; height: 540px;" /></p>\n\n<p>Sở hữu vị trí đẹp trong khu dân cư hiện hữu,<strong>&nbsp;Melody Residences</strong>&nbsp;tọa lạc ngay mặt tiền đường Âu Cơ – trục đường chính đến các quận Tân Bình, Q.10, Q.11, quận Phú Nhuận và Q.3. Từ đây, cư dân dễ dàng tận hưởng các tiện ích khu vực cũng như kết nối đến trung tâm thành phố và các quận lân cận trên những tuyến đường huyết mạch như Trường Chinh, Cộng Hòa và 3/2.</p>\n\n<p>Với tất cả những lợi thế về ví trí,&nbsp;Melody Residences&nbsp;không chỉ mang đến cuộc sống thuận tiện tối đa cho cư dân mà còn góp phần làm gia tăng giá trị cho mỗi căn hộ.&nbsp;</p>\n\n<p>- Co.op Mart BMC : 3 phút</p>\n\n<p>- Lotte Mart Tân Bình : 5 phút</p>\n\n<p>- Pandora City : 5 phút</p>\n\n<p>- E.Town : 5 phút&nbsp;</p>\n\n<p>- Bệnh viện quận Tân Phú : 5 phút</p>\n\n<p>- Đại học Kinh tế Tài chính : 5 phút</p>\n\n<p>- Công viên Đầm Sen : 10 phút</p>\n\n<p>- Sân bay Tân Sơn Nhất : 10 phút</p>', '<p>Melody Residences&nbsp;là minh chứng cho sự tích hợp những tiện ích tuyệt vời nhằm phục vụ trọn vẹn mọi nhu cầu của mỗi cư dân như: trung tâm thương mại, shop house, nhà trẻ, gym, spa…&nbsp;</p>\n\n<p>Với những tiện ích ngay ngưỡng cửa, chỉ cần vài bước chân, bạn có thể thả mình trong làn nước trong xanh mát lạnh của hồ bơi hay thư giãn cùng gia đình và bạn bè tại cafe tầng 3 của khu căn hộ.&nbsp;</p>\n\n<p>Đặc biệt, công viên nội khu với cỏ cây hoa lá sẽ là sân chơi lý tưởng để con trẻ vui đùa và thỏa sức sáng tạo.</p>\n\n<p style="text-align: center;"><img alt="" src="http://hungthinhland.com/land/attachment/image/HBOI.jpg" /><br />\n<span style="line-height: 1.6em;">Hồ bơi nội khu</span></p>\n\n<p style="text-align: center;"><img alt="" src="http://hungthinhland.com/land/attachment/image/tttm(1).jpg" /><br />\n<span style="line-height: 1.6em;">Trung tâm thương mại</span></p>\n\n<p style="text-align: center;"><img alt="" src="http://hungthinhland.com/land/attachment/image/ti2(2).jpg" /><br />\n<span style="line-height: 1.6em;">Khu mua sắm</span></p>\n\n<p style="text-align: center;"><img alt="" src="http://hungthinhland.com/land/attachment/image/ti3(4).jpg" /><br />\n<span style="line-height: 1.6em;">Siêu thị</span></p>\n\n<p style="text-align: center;"><img alt="" src="http://hungthinhland.com/land/attachment/image/ti5.jpg" /><br />\n<span style="line-height: 1.6em;">Phòng GYM</span></p>\n\n<p style="text-align: center;"><img alt="" src="http://hungthinhland.com/land/attachment/image/ti6(2).jpg" /><br />\n<span style="line-height: 1.6em;">Nhà trẻ</span></p>', '', '<p><span style="color:#008000;"><strong>SÀN GIAO DỊCH BẤT ĐỘNG SẢN HƯNG THỊNH</strong></span></p>\n\n<ul>\n	<li>163 Hoa Lan, P.2, Q.Phú Nhuận&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\n	<li>Điện thoại:&nbsp;(08) 3517 8181</li>\n	<li>Hotline: 0934 578 578 - 0909 976 976&nbsp;<br />\n	&nbsp;</li>\n	<li>1A Phạm Viết Chánh, P.Nguyễn Cư Trinh, Q.1</li>\n	<li>Điện Thoại:&nbsp;(08) 3926 0296 - 3926 0297</li>\n	<li>Hotline: 0937 565 565 - 0937 026 026&nbsp;<br />\n	&nbsp;</li>\n	<li>526 Nguyễn Chí Thanh, P.7, Q.10</li>\n	<li>Điện thoại:&nbsp;(08) 3.957.3235 - 3.957.3236</li>\n	<li>Hotline: 0938 726 726 - 0932 086 086&nbsp;<br />\n	&nbsp;</li>\n	<li>527 Điện Biên Phủ, P.25, Q.Bình Thạnh</li>\n	<li>Điện thoại:&nbsp;(08) 3513 6031</li>\n	<li>Hotline: 0908 026 046 - 0908 90 47 46&nbsp;<br />\n	&nbsp;</li>\n	<li>45 Hoàng Việt, P.4, Q.Tân Bình</li>\n	<li>Điện thoại:&nbsp;(08) 3948 1076</li>\n	<li>Hotline: 0914 067 742</li>\n</ul>', 11),
(2, '<p>Đến với&nbsp;<strong>Lavita Garden</strong>, bạn sẽ đắm chìm trong không gian thơ mộng của một khu vườn tràn đầy sức sống. Hãy để một chồi non vừa hé thơm dịu, một nhành hoa nở rộ ngát hương của khu vườn dẫn lối cho tâm hồn bạn. Tại&nbsp;Lavita Garden, bạn sẽ được bình yên bên tách trà chiều, cùng trò chuyện và tận hưởng một cuộc sống thanh bình đáng mơ ước.</p>\n\n<p><a href="http://lavitagarden.com.vn/" target="_blank"><img alt="Lavita Garden" src="http://lavitagarden.com.vn/official/images/pop-up.jpg" /></a></p>\n\n<p>&nbsp;&nbsp;&nbsp;</p>\n\n<p><strong>THÔNG TIN DỰ ÁN:&nbsp;</strong></p>\n\n<ul>\n	<li>Vị trí:&nbsp;Đường số 3, P.Trường Thọ, Q.Thủ Đức, TP.HCM&nbsp;</li>\n	<li>Diện tích khu đất:&nbsp;9.581,70m2&nbsp;</li>\n	<li>Số block:&nbsp;02</li>\n	<li>Tầng cao:&nbsp;20&nbsp;</li>\n	<li>Tổng số căn hộ:&nbsp;648 căn</li>\n</ul>', '<p><img alt="" src="http://hungthinhland.com/land/attachment/image/vitri_lavita(1).jpg" /></p>\n\n<p>Tại&nbsp;Lavita Garden, chỉ vài bước chân là cư dân đã đến ngay ga số 10 - Bình Thái của tuyến metro Bến Thành - Suối Tiên. Khi tuyến metro này được đưa vào sử dụng sẽ kết nối Q.Thủ Đức, Q.2, Q.9 với trung tâm thành phố và các quận lân cận trong vài phút di chuyển. Tuyến metro được so sánh như mạch máu giao thông của TP.HCM sẽ giúp cư dân&nbsp;Lavita Garden&nbsp;dễ dàng tiếp cận các tiện ích hiện đại như: siêu thị Metro An Phú, Big C Cantavil, Parkson Cantavil, trường quốc tế BIS,... và nhanh chóng hòa mình vào nhịp sống năng động của thành phố.</p>', '<p>Sống trong một căn hộ cao tầng không có nghĩa là bạn không thể thưởng thức được vẻ đẹp và sự tươi mát của thiên nhiên. Một cuộc sống văn minh với hồ bơi, khu vui chơi trẻ em, siêu thị, gym, spa,…được bao bọc bởi môi trường trong lành và sắc màu sống động của cỏ cây hoa lá sẽ đáp ứng tiêu chuẩn sống hàng đầu cho các cư dân.</p>\n\n<div>\n<h2 style="text-align: center;">TIỆN ÍCH NỘI KHU</h2>\n</div>\n\n<div>\n<p style="text-align: center;"><span style="line-height: 1.6em;">Hồ bơi tràn bờ hiện đại ngay tầng 2 của dự án với tầm nhìn thoáng đãng, trải dài theo tuyến metro sẽ mang đến cho bạn không gian sống nghỉ dưỡng đẳng cấp ngay tại khu căn hộ</span></p>\n</div>\n\n<div>\n<div>\n<p style="text-align: center;"><img alt="" src="http://lavitagarden.com.vn/official/images/1.jpg" /></p>\n\n<p style="text-align: center;">Khu vui chơi trẻ em chuẩn Singapore</p>\n</div>\n\n<div>\n<p style="text-align: center;">Với các thiết bị nhập từ Singapore, khu vui chơi rộng hơn 1.000m2 sẽ giúp trẻ thỏa sức khám phá thế giới xung quanh mình, rèn luyện thể lực và phát triển trí tuệ.</p>\n</div>\n</div>\n\n<div>\n<p style="text-align: center;">Phòng tập gym nâng cao sức khỏe&nbsp;</p>\n\n<p style="text-align: center;">&nbsp;</p>\n</div>\n\n<div>\n<p style="text-align: center;"><img alt="" src="http://lavitagarden.com.vn/official/images/4.jpg" /></p>\n\n<p style="text-align: center;">Spa liệu pháp thư giãn cho tinh thần &nbsp;</p>\n</div>\n\n<div>\n<p style="text-align: center;"><img alt="" src="http://lavitagarden.com.vn/official/images/5.jpg" /></p>\n\n<p style="text-align: center;">Khu mua sắm sầm uất&nbsp;</p>\n</div>\n\n<p style="text-align: center;"><img alt="" src="http://lavitagarden.com.vn/official/images/6.jpg" /></p>\n\n<p style="text-align: center;">Nhà trẻ tiêu chuẩn ươm mầm tương lai&nbsp;</p>\n\n<div>\n<h2 style="text-align: center;">TIỆN ÍCH NGOẠI KHU</h2>\n</div>\n\n<div>\n<p style="text-align: center;"><img alt="" src="http://lavitagarden.com.vn/official/images/8.jpg" /></p>\n\n<p style="text-align: center;">Hệ thống siêu thị đa dạng hàng hóa&nbsp;</p>\n\n<p style="text-align: center;">&nbsp;</p>\n</div>\n\n<div>\n<p style="text-align: center;"><img alt="" src="http://lavitagarden.com.vn/official/images/9.jpg" /></p>\n\n<p style="text-align: center;">Trường học quốc tế danh tiếng</p>\n</div>\n\n<div>\n<p style="text-align: center;"><img alt="" src="http://lavitagarden.com.vn/official/images/10.jpg" /></p>\n\n<p style="text-align: center;">Trung tâm thương mại với những thương hiệu hàng đầu</p>\n</div>', '', '<p><span style="color:#008000;"><strong>SÀN GIAO DỊCH BẤT ĐỘNG SẢN HƯNG THỊNH</strong></span></p>\n\n<ul>\n	<li>163 Hoa Lan, P.2, Q.Phú Nhuận&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\n	<li>Điện thoại:&nbsp;(08) 3517 8181</li>\n	<li>Hotline: 0934 578 578 - 0909 976 976&nbsp;<br />\n	&nbsp;</li>\n	<li>1A Phạm Viết Chánh, P.Nguyễn Cư Trinh, Q.1</li>\n	<li>Điện Thoại:&nbsp;(08) 3926 0296 - 3926 0297</li>\n	<li>Hotline: 0937 565 565 - 0937 026 026&nbsp;<br />\n	&nbsp;</li>\n	<li>526 Nguyễn Chí Thanh, P.7, Q.10</li>\n	<li>Điện thoại:&nbsp;(08) 3.957.3235 - 3.957.3236</li>\n	<li>Hotline: 0938 726 726 - 0932 086 086&nbsp;<br />\n	&nbsp;</li>\n	<li>527 Điện Biên Phủ, P.25, Q.Bình Thạnh</li>\n	<li>Điện thoại:&nbsp;(08) 3513 6031</li>\n	<li>Hotline: 0908 026 046 - 0908 90 47 46&nbsp;<br />\n	&nbsp;</li>\n	<li>45 Hoàng Việt, P.4, Q.Tân Bình</li>\n	<li>Điện thoại:&nbsp;(08) 3948 1076</li>\n	<li>Hotline: 0914 067 742</li>\n</ul>', 12),
(6, '<p style="text-align: center;"><img alt="" src="http://localhost/all_v5/minhnhatland/public/images/1456739302.jpg" style="width: 570px; height: 453px;" /></p>', '<p>Giai Việt Residence&nbsp;sở hữu vị trí đắc địa, 3 mặt tiền đường lớn, trong khu quy hoạch đồng bộ: Trung tâm hành chính, Trung tâm thể dục thể thao, bệnh viện, trường học, siêu thị... Với vị trí cách trung tâm quận 1 chỉ 7 phút qua đại lộ Võ Văn Kiệt.&nbsp;Giai Việt Residence&nbsp;là một trong những lựa chọn lý tưởng cho những cư dân thành đạt, đặc biệt dành cho những ai làm việc tại trung tâm thành phố.</p>\n\n<p style="text-align: center;"><img alt="" src="http://hungthinhland.com/land/attachment/image/vt.jpg" />​</p>\n\n<p>&nbsp;</p>', '<p><strong>TIỆN ÍCH HIỆN HỮU</strong></p>\n\n<p>Công viên rộng 1000 m2, khu thương mại, phòng Gym, hồ bơi, Spa, nhà trẻ,…</p>', '', '<p><span style="color:#008000;"><strong>SÀN GIAO DỊCH BẤT ĐỘNG SẢN HƯNG THỊNH</strong></span></p>\n\n<ul>\n	<li>163 Hoa Lan, P.2, Q.Phú Nhuận&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\n	<li>Điện thoại:&nbsp;(08) 3517 8181</li>\n	<li>Hotline: 0934 578 578 - 0909 976 976&nbsp;<br />\n	&nbsp;</li>\n	<li>1A Phạm Viết Chánh, P.Nguyễn Cư Trinh, Q.1</li>\n	<li>Điện Thoại:&nbsp;(08) 3926 0296 - 3926 0297</li>\n	<li>Hotline: 0937 565 565 - 0937 026 026&nbsp;<br />\n	&nbsp;</li>\n	<li>526 Nguyễn Chí Thanh, P.7, Q.10</li>\n	<li>Điện thoại:&nbsp;(08) 3.957.3235 - 3.957.3236</li>\n	<li>Hotline: 0938 726 726 - 0932 086 086&nbsp;<br />\n	&nbsp;</li>\n	<li>527 Điện Biên Phủ, P.25, Q.Bình Thạnh</li>\n	<li>Điện thoại:&nbsp;(08) 3513 6031</li>\n	<li>Hotline: 0908 026 046 - 0908 90 47 46&nbsp;<br />\n	&nbsp;</li>\n	<li>45 Hoàng Việt, P.4, Q.Tân Bình</li>\n	<li>Điện thoại:&nbsp;(08) 3948 1076</li>\n	<li>Hotline: 0914 067 742</li>\n</ul>', 16),
(7, '<p><strong>CÔNG&nbsp;TY TNHH MINH NHẬT</strong>&nbsp;là một trong những sàn giao dịch hàng đầu tại Tp.HCM về tư vấn và dịch vụ địa ốc hiện nay. Với tiêu chí hoạt động&nbsp;"<strong>UY TÍN - HIỆU QUẢ - CHÍNH XÁC</strong>", cùng đội ngũ chuyên viên giàu kinh nghiệm. Thời gian qua, Chúng tôi đã đáp ứng được nhu cầu giao dịch về bất động sản của Khách hàng một cách nhanh chóng và hiệu quả.</p>\n\n<p style="text-align: center;"><img alt="" src="http://localhost/all_v5/minhnhatland/public/images/1456740182.jpg" style="width: 231px; height: 228px;" /></p>', NULL, NULL, NULL, NULL, 18),
(8, '<ol>\n	<li>Môi giới kinh doanh, đầu tư đất dự án.</li>\n	<li>Tư vấn và hỗ trợ khách hàng thủ tục nhà đất.</li>\n	<li>Dịch vụ rao bán, cho thuê bất động sản.</li>\n	<li>Thẩm định giá trị bất động sản và dự án đầu tư.</li>\n</ol>\n\n<p style="text-align: center;">&nbsp;<img alt="" src="http://localhost/all_v5/minhnhatland/public/images/1456740290.jpg" style="width: 226px; height: 209px;" /></p>', NULL, NULL, NULL, NULL, 19),
(3, '<p><strong>Website:&nbsp;<a href="http://8xrainbow.com.vn/" target="_blank">http://8xrainbow.com.vn/</a></strong></p>\n\n<p>Giữa dòng người tấp nập của thành phố, cư dân khu căn hộ&nbsp;8X Rainbow&nbsp;hòa mình vào lòng phố thị nhộn nhịp và sôi động bởi sắc màu tươi trẻ và không gian căng tràn sức sống.</p>\n\n<p><img alt="căn hộ 8x rainbow" src="http://hungthinhland.com/land/attachment/image/1(77).jpg" /></p>\n\n<p><strong>8X Rainbow</strong>&nbsp;gồm 1 block căn hộ cao 18 tầng được thiết kế với diện tích phù hợp, 2 mặt thoáng đãng tạo không gian sống thoải mái và dễ dàng tận hưởng tiện ích toàn khu.&nbsp;</p>\n\n<ul>\n	<li>Diện tích khu đất: 5.123,5 m2</li>\n	<li>Diện tích đất cây xanh – TDTT: 1.768 m2</li>\n	<li>Diện tích xây dựng: 2.050 m2</li>\n	<li>Mật độ xây dựng: 40%</li>\n	<li>Tầng cao:&nbsp;18 tầng</li>\n	<li>Số căn hộ: 408 căn</li>\n</ul>', '<p><a href="http://hungthinhcorp.com.vn/land/attachment/image/vt.gif" rel="flowers" title="Vị trí căn hộ 8x Rainbow"><img alt="căn hộ 8x Rainbow" src="http://hungthinhcorp.com.vn/land/attachment/image/vt.gif" /></a></p>\n\n<p>8X Rainbow&nbsp;bật lên giữa khu Tây thành phố với lợi thế nổi trội ngay mặt tiền đường Bình Long lộ giới 30m, con đường thông thoáng thuận tiện di chuyển đến Quận 10, Quận 11 và khu trung tâm.</p>', '<p><strong>Tiện ích tích hợp, nâng tầm cuộc sống</strong></p>\n\n<p>Những tiện ích tích hợp ngay tại&nbsp;8X Rainbow&nbsp;sẵn sàng phục vụ cho chủ nhân căn hộ một cuộc sống tiện nghi và hiện đại nhất. Từ công viên, phòng tập Gym, nhà trẻ đến trung tâm thương mại, spa, café,…, mỗi một tiện ích đều được tận dụng tối đa để lưu giữ mọi khoảnh khắc cuộc sống.</p>\n\n<div>\n<p><img alt="Công viên" src="http://hungthinhland.com/land/attachment/image/img21.jpg" /></p>\n\n<p>&nbsp;</p>\n\n<p><img alt="Shopping" src="http://hungthinhland.com/land/attachment/image/ti2(3).jpg" /></p>\n\n<p>&nbsp;</p>\n\n<p><img alt="Bệnh viện" src="http://hungthinhland.com/land/attachment/image/ti3(5).jpg" /></p>\n\n<p>&nbsp;</p>\n\n<p><img alt="Trường học" src="http://hungthinhland.com/land/attachment/image/ti4(3).jpg" /></p>\n\n<p>&nbsp;</p>\n\n<p><img alt="GYM" src="http://hungthinhland.com/land/attachment/image/ti5(1).jpg" /></p>\n\n<p>&nbsp;</p>\n\n<p><img alt="Siêu thị" src="http://hungthinhland.com/land/attachment/image/ti6(3).jpg" /></p>\n\n<p>&nbsp;</p>\n\n<p><img alt="Spa" src="http://hungthinhland.com/land/attachment/image/ti7.jpg" /></p>\n</div>', '', '<p><span style="color:#008000;"><strong>SÀN GIAO DỊCH BẤT ĐỘNG SẢN HƯNG THỊNH</strong></span></p>\n\n<ul>\n	<li>163 Hoa Lan, P.2, Q.Phú Nhuận&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\n	<li>Điện thoại:&nbsp;(08) 3517 8181</li>\n	<li>Hotline: 0934 578 578 - 0909 976 976&nbsp;<br />\n	&nbsp;</li>\n	<li>1A Phạm Viết Chánh, P.Nguyễn Cư Trinh, Q.1</li>\n	<li>Điện Thoại:&nbsp;(08) 3926 0296 - 3926 0297</li>\n	<li>Hotline: 0937 565 565 - 0937 026 026&nbsp;<br />\n	&nbsp;</li>\n	<li>526 Nguyễn Chí Thanh, P.7, Q.10</li>\n	<li>Điện thoại:&nbsp;(08) 3.957.3235 - 3.957.3236</li>\n	<li>Hotline: 0938 726 726 - 0932 086 086&nbsp;<br />\n	&nbsp;</li>\n	<li>527 Điện Biên Phủ, P.25, Q.Bình Thạnh</li>\n	<li>Điện thoại:&nbsp;(08) 3513 6031</li>\n	<li>Hotline: 0908 026 046 - 0908 90 47 46&nbsp;<br />\n	&nbsp;</li>\n	<li>45 Hoàng Việt, P.4, Q.Tân Bình</li>\n	<li>Điện thoại:&nbsp;(08) 3948 1076</li>\n	<li>Hotline: 0914 067 742</li>\n</ul>', 13),
(4, '<p><strong>Website chính thức:&nbsp;<a href="http://florita.com.vn/" target="_blank">http://florita.com.vn</a></strong></p>\n\n<p style="text-align: center;"><img alt="" src="http://hungthinhland.com/land/attachment/image/Untitled-1(9).jpg" /></p>\n\n<p>Tọa lạc ngay khu đô thị Him Lam Tân Hưng,&nbsp;Florita&nbsp;như một đóa hoa rực rỡ và đầy cuốn hút bởi vị trí nổi bật, thuận tiện kết nối toàn khu vực thành phố. Là cư dân&nbsp;Florita, bạn sẽ dễ dàng di chuyển đến Q.1, Q.4, Q.7, Q.8 hay Q.5 chỉ với vài phút.&nbsp;<br />\n<br />\nVới lợi thế về vị trí, <strong>khu căn hộ&nbsp;Florita</strong>&nbsp;còn khiến chủ nhân hài lòng với không gian trong lành khi nằm hiền hòa ngay cạnh dòng sông Ông Lớn - nơi bạn có thể thả mình và buông tầm nhìn về khu trung tâm thành phố ngay tại căn hộ của mình.</p>\n\n<p><strong>Tổng quan dự án:</strong></p>\n\n<ul>\n	<li>Vị trí:&nbsp;Lô A1, Khu đô thị Him Lam, phường Tân Hưng, Quận 7, Tp.HCM</li>\n	<li>Diện tích khu đất:&nbsp;10.451,5 m2</li>\n	<li>Mật độ xây dựng:&nbsp;40%</li>\n	<li>Số block:&nbsp;04</li>\n	<li>Tầng cao:&nbsp;19 tầng</li>\n	<li>Tổng số căn hộ:&nbsp;570 căn</li>\n	<li>Diện tích:&nbsp;57 - 103,49 m2</li>\n</ul>', '<p>Nằm trong lòng khu dân cư cao cấp hiện hữu và liền kề khu đô thị Phú Mỹ Hưng,&nbsp;Florita&nbsp;thừa hưởng các giá trị tiện ích vượt trội như Khu vui chơi trẻ em Vietopia; Siêu thị Lotte Mart; Đại học RMIT; Trung tâm mua sắm SC Vivo City;…</p>\n\n<p>Florita&nbsp;xứng đáng trở thành một trong những khu căn hộ có vị trí đắc địa bậc nhất Sài Gòn bởi các tiện ích hàng đầu của khu vực.</p>\n\n<p><img alt="" src="http://hungthinhland.com/land/attachment/image/map(7).jpg" /></p>', '<p>Tại&nbsp;Florita, từng khoảng không đều được tận dụng nhằm đem đến cho chủ nhân những tiện ích hiện đại nhất như hồ bơi, gym, spa, trung tâm thương mại, nhà trẻ,…</p>\n\n<p>Đặc biệt, với 60% diện tích dành cho không gian xanh,&nbsp;Florita&nbsp;sẽ là không gian sống bình yên giúp xóa tan những ồn ào nơi phố thị.</p>\n\n<p style="text-align: center;"><img alt="" src="http://hungthinhland.com/land/attachment/image/1(71).jpg" /><br />\nHồ bơi</p>\n\n<p style="text-align: center;"><img alt="" src="http://hungthinhland.com/land/attachment/image/3(51).jpg" /><br />\nGYM</p>', '', '<p><span style="color:#008000;"><strong>SÀN GIAO DỊCH BẤT ĐỘNG SẢN HƯNG THỊNH</strong></span></p>\n\n<ul>\n	<li>163 Hoa Lan, P.2, Q.Phú Nhuận&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\n	<li>Điện thoại:&nbsp;(08) 3517 8181</li>\n	<li>Hotline: 0934 578 578 - 0909 976 976&nbsp;<br />\n	&nbsp;</li>\n	<li>1A Phạm Viết Chánh, P.Nguyễn Cư Trinh, Q.1</li>\n	<li>Điện Thoại:&nbsp;(08) 3926 0296 - 3926 0297</li>\n	<li>Hotline: 0937 565 565 - 0937 026 026&nbsp;<br />\n	&nbsp;</li>\n	<li>526 Nguyễn Chí Thanh, P.7, Q.10</li>\n	<li>Điện thoại:&nbsp;(08) 3.957.3235 - 3.957.3236</li>\n	<li>Hotline: 0938 726 726 - 0932 086 086&nbsp;<br />\n	&nbsp;</li>\n	<li>527 Điện Biên Phủ, P.25, Q.Bình Thạnh</li>\n	<li>Điện thoại:&nbsp;(08) 3513 6031</li>\n	<li>Hotline: 0908 026 046 - 0908 90 47 46&nbsp;<br />\n	&nbsp;</li>\n	<li>45 Hoàng Việt, P.4, Q.Tân Bình</li>\n	<li>Điện thoại:&nbsp;(08) 3948 1076</li>\n	<li>Hotline: 0914 067 742</li>\n</ul>', 14),
(5, '<p><strong>Website chính thức:<a href="http://skycenter.com.vn/" target="_blank">&nbsp;skycenter.com.vn</a></strong></p>\n\n<p style="text-align: center;"><img alt="" src="http://hungthinhland.com/land/attachment/image/11(21).jpg" /></p>\n\n<p><strong>QUY MÔ DỰ ÁN:</strong></p>\n\n<p>Sky Center&nbsp;gồm 04 block (03 block căn hộ và 01 block officetel) được thiết kế theo phong cách hiện đại, kết hợp nghệ thuật tạo hình cảnh quan và bố trí hợp lý giúp các tất cả các căn hộ đều có tầm nhìn thoáng đãng.</p>\n\n<div>\n<p><strong>TỔNG QUAN DỰ ÁN:</strong></p>\n\n<ul>\n	<li>Vị trí: Số 10 Phổ Quang, phường 2,quận Tân Bình, TP.HCM</li>\n	<li>Diện tích khu đất:&nbsp;11.997,2 m2</li>\n	<li>Loại hình :&nbsp; Căn hộ, Trung tâm thương mại, Office-tel, Shop house</li>\n	<li>Mật độ XD:&nbsp;39,8%&nbsp;&nbsp;</li>\n	<li>Tầng cao:&nbsp;16 tầng + 2 tầng hầm</li>\n	<li>Số lượng office-tel:&nbsp;360 căn (33,2 - 69,93 m2)&nbsp;&nbsp;&nbsp;</li>\n	<li>Tổng số căn hộ:&nbsp;495 căn</li>\n</ul>\n</div>', '<p><strong>Vị trí:</strong>&nbsp;Số 10 Phổ Quang, Phường 2, Quận Tân Bình, TP.HCM</p>\n\n<p><strong>SKY CENTER</strong>&nbsp;thừa hưởng tất cả những lợi thế về hạ tầng và tiện ích khi tọa lạc ngay khu vực kết nối sân bay Tân Sơn Nhất.</p>\n\n<p>Chỉ 3 - 5 phút cho mọi điểm đến!</p>\n\n<p><img alt="" src="http://hungthinhland.com/land/attachment/image/vi_tri_hinhanh1(2).gif" /></p>', '<p>Sky Center&nbsp;là khu tích hợp đầy đủ các tiện ích, đáp ứng cho nhu cầu của một cuộc sống hiện đại như: TTTM, shop house, công viên xanh, nhà giữ trẻ, phòng tập gym, nhà hàng, café, hồ bơi...&nbsp;</p>\n\n<p>Đặc biệt khối officetel đa năng sẽ mang đến môi trường sống và làm việc lý tưởng cho cộng đồng cư dânSky Center.</p>\n\n<p><img alt="" src="http://hungthinhland.com/land/attachment/image/lkv(1).jpg" /></p>', '', '<p><span style="color:#008000;"><strong>SÀN GIAO DỊCH BẤT ĐỘNG SẢN HƯNG THỊNH</strong></span></p>\n\n<ul>\n	<li>163 Hoa Lan, P.2, Q.Phú Nhuận&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\n	<li>Điện thoại:&nbsp;(08) 3517 8181</li>\n	<li>Hotline: 0934 578 578 - 0909 976 976&nbsp;<br />\n	&nbsp;</li>\n	<li>1A Phạm Viết Chánh, P.Nguyễn Cư Trinh, Q.1</li>\n	<li>Điện Thoại:&nbsp;(08) 3926 0296 - 3926 0297</li>\n	<li>Hotline: 0937 565 565 - 0937 026 026&nbsp;<br />\n	&nbsp;</li>\n	<li>526 Nguyễn Chí Thanh, P.7, Q.10</li>\n	<li>Điện thoại:&nbsp;(08) 3.957.3235 - 3.957.3236</li>\n	<li>Hotline: 0938 726 726 - 0932 086 086&nbsp;<br />\n	&nbsp;</li>\n	<li>527 Điện Biên Phủ, P.25, Q.Bình Thạnh</li>\n	<li>Điện thoại:&nbsp;(08) 3513 6031</li>\n	<li>Hotline: 0908 026 046 - 0908 90 47 46&nbsp;<br />\n	&nbsp;</li>\n	<li>45 Hoàng Việt, P.4, Q.Tân Bình</li>\n	<li>Điện thoại:&nbsp;(08) 3948 1076</li>\n	<li>Hotline: 0914 067 742</li>\n</ul>', 15),
(9, '<ul>\n	<li>Cung cấp sản phẩm có tính thanh khoản cao nhất, bảo mật tối đa, cung cấp nhiều dịch vụ tốt nhất cho khách hàng.</li>\n	<li>Hoạt động với phương châm: "Uy tín, Hiệu quả, Chính xác" nhằm chăm sóc khách hàng một cách tốt nhất.</li>\n	<li>Cải thiện, thiết lập, tạo mối quan hệ tốt và thân thiết với các đối tác, khách hàng.</li>\n	<li>Những chương trình đảm bảo chất lượng toàn diện, những phương pháp tiên tiến, uy tín hàng đầu là những cam kết hướng tới sự đổi mới và cải tiến để ngày càng đưa uy tín công ty lên tầm cao mới.</li>\n</ul>\n\n<p style="text-align: center;"><img alt="" src="http://localhost/all_v5/minhnhatland/public/images/1456740365.jpg" style="width: 296px; height: 221px;" />&nbsp;</p>', NULL, NULL, NULL, NULL, 20),
(10, '<p><strong>CÔNG&nbsp;TY TNHH MINH NHẬT</strong>&nbsp;là một trong những sàn giao dịch hàng đầu tại Tp.HCM về tư vấn và dịch vụ địa ốc hiện nay. Với tiêu chí hoạt động&nbsp;"<strong>UY TÍN - HIỆU QUẢ - CHÍNH XÁC</strong>", cùng đội ngũ chuyên viên giàu kinh nghiệm. Thời gian qua, Chúng tôi đã đáp ứng được nhu cầu giao dịch về bất động sản của Khách hàng một cách nhanh chóng và hiệu quả.</p>\n\n<p style="text-align: center;"><img alt="" src="http://localhost/all_v5/minhnhatland/public/images/1456740182.jpg" style="width: 231px; height: 228px;" /></p>\n\n<p><strong>CÔNG&nbsp;TY TNHH MINH NHẬT</strong>&nbsp;đã sàng lọc qua hàng trăm dự án tại Thành Phố Hồ Chí Minh, các Tỉnh lân cận và hân hạnh giới thiệu đến Quý khách một số dự án hấp dẫn, với vị trí đẹp, hồ sơ pháp lý hoàn chỉnh, giá rẻ, phương thức thanh toán linh hoạt, khả năng sinh lợi cao để Quý khách đầu tư hay an cư.</p>\n\n<p style="text-align: center;"><img alt="" src="http://localhost/all_v5/minhnhatland/public/images/1456740729.jpg" style="width: 342px; height: 222px;" /></p>', NULL, NULL, NULL, NULL, 17),
(11, '<div>Tham dự tọa đàm do Công ty Orient &amp; Pacific Vietnam tổ chức, khách hàng sẽ được tìm hiểu về cơ hội đầu tư vào dự án bất động sản trọng điểm của Mỹ.&nbsp;</div>\n\n<p style="text-align: center;"><img alt="polyad" data-natural-width="500" src="http://img.f25.kinhdoanh.vnecdn.net/2016/02/24/24-2-201654-4118-1456286876.png" /></p>\n\n<p>Orient &amp; Pacific Vietnam, đại diện tại Việt Nam của Golden Gate Global (3G) - một trong những công ty hàng đầu của Mỹ trong lĩnh vực đầu tư để có thẻ xanh diện EB-5 sẽ tổ chức tọa đàm tìm hiểu về việc đầu tư vào các dự án bất động sản thuộc các vùng trọng điểm tại Mỹ. Chương trình diễn ra tại 2 địa điểm:</p>\n\n<p>Tại Hà Nội:&nbsp;9h, thứ bảy, ngày 27/2 tại khách Sạn Metropole Hanoi, 15 Ngô Quyền, quận Hoàn Kiếm.<br />\nTại TP HCM: 9h, thứ bảy, ngày 5/3 tại khách Sạn Park Hyatt Saigon, số 2 Công Trường Lam Sơn, phường Bến Nghé, quận 1.</p>\n\n<p>Khách tham dự toạ đàm đăng ký qua email:&nbsp;<a href="mailto:tamvan@orientpacificvietnam.com">tamvan@orientpacificvietnam.com</a>&nbsp;hoặc hotline: 0932 759 188.</p>\n\n<p style="text-align: center;"><img alt="polyad" data-natural-width="500" src="http://img.f25.kinhdoanh.vnecdn.net/2016/02/24/24-2-201654-570430738-5356-1456286876.png" /></p>\n\n<p>Orient &amp; Pacific Vietnam là công ty tư vấn dịch vụ đầu tư, định cư cho các khách hàng cá nhân uy tín. Đơn vị sẽ hợp tác với công ty luật định cư và các dự án hàng đầu để cung cấp thông tin các chương trình đầu tư, định cư và xin quốc tịch ưu việt tại các quốc gia có chất lượng cuộc sống hàng đầu thế giới. Tuỳ theo tình hình và yêu cầu thực tế của khách hàng, công ty sẽ chọn lọc và có kế hoạch triển khai hồ sơ cụ thể cho từng khách hàng, giai đoạn và toàn bộ quá trình.</p>\n\n<p style="text-align: center;"><img alt="polyad" data-natural-width="500" src="http://img.f25.kinhdoanh.vnecdn.net/2016/02/24/24-2-201655-1942-1456286877.png" /></p>\n\n<p>Golden Gate Global (3G) là công ty của Mỹ trong lĩnh vực đầu tư để có thẻ xanh diện EB-5 thông qua các dự án thuộc vùng đầu tư trọng điểm. 3G có trụ sở chính tại thành phố San Francisco và được Sở Di trú Mỹ (USCIS) cấp giấy phép đầu tư các dự án thu hút các nhà đầu tư nước ngoài trên toàn bộ lãnh thổ nước Mỹ. 3G được sáng lập bởi một nhóm cựu lãnh đạo cao cấp, với tầm nhìn chiến lược giúp đảm bảo sự thành công của dự án với khả năng sinh lợi cao.</p>', NULL, NULL, NULL, NULL, 29),
(12, '<div>Khách đến thăm quan hoặc đặt cọc mua nhà khu đô thị EcoXuân sẽ nhận được nhiều ưu đãi.</div>\n\n<p>Theo đó, khách hàng có cơ hội nhận những phần quà có giá trị như phiếu mua sắm một triệu đồng, tivi Led 32 inch LG, lò vi sóng Electrolux, quạt tháp Nikko Kendo từ 1/3 đến 30/6.&nbsp;Riêng trong tháng 3 này, khách hàng đặt cọc mua từ 3 căn hộ Sky B trở lên sẽ được chủ đầu tư chiết khấu với mức từ 3% trở lên.</p>\n\n<p>Đặc biệt từ nay đến 30/4, người mua chỉ cần thanh toán 30% giá trị căn hộ trong&nbsp;8 tháng đầu và không cần thanh toán bất cứ khoản nào cho đến khi tháp Sky B hoàn thành.</p>\n\n<p style="text-align: center;"><img alt="polyad" data-natural-width="500" data-pwidth="470.40625" data-width="500" src="http://img.f25.kinhdoanh.vnecdn.net/2016/02/27/25-2-201652-8118-1456546221.jpg" style="line-height:20.8px;" /><br />\n<span style="line-height: 1.6em;">EcoXuân là khu đô thị biệt lập đảm bảo an ninh.</span></p>\n\n<p><span style="line-height: 1.6em;">EcoXuân là khu đô thị biệt lập đảm bảo an ninh, nơi cư dân có thể tận hưởng cuộc sống chất lượng đẳng cấp, tiện nghi. Cư dân có thể&nbsp;đi bộ từ nhà ra hồ bơi, khu tiệc nướng ngoài trời, sân chơi trẻ em, sân tenis và sân tập golf mini.</span></p>\n\n<p>EcoXuân rất gần với các&nbsp;trung tâm mua sắm như Lotte Mart và siêu thị Aeon, với nhiều dịch vụ ăn uống, mua sắm và vui chơi giải trí. Dân cư nơi đây dễ dàng tiếp cận với các dịch vụ chăm sóc sức khỏe của bệnh viện quốc tế Hạnh Phúc, bệnh viện quốc tế Becamex, bệnh viện quốc tế Colombia.</p>\n\n<p>Chỉ cách TP HCM 16 km, nơi đây trở thành một khu đô thị sầm uất với 140 căn nhà phố vườn và biệt thự đã được bàn giao và có nhiều cư dân dọn về sinh sống.</p>\n\n<p style="text-align: center;"><img alt="polyad" data-natural-width="500" data-pwidth="470.40625" data-width="500" src="http://img.f25.kinhdoanh.vnecdn.net/2016/02/27/25-2-201657-663873454-5856-1456546221.jpg" style="line-height:20.8px;" /></p>\n\n<p><span style="line-height: 1.6em;">Với chương trình ưu đãi này, chủ đầu tư hy vọng sẽ giúp các cư dân dễ dàng sở hữu căn hộ cho riêng mình.</span>Ngoài những sản phẩm nhà phố và biệt thự phong cách Singapore đã hoàn thiện với số lượng hạn chế, EcoXuân đang giới thiệu sản phẩm mới là tòa tháp Sky B cao 23 tầng thuộc khu vực Sky Residences với các căn hộ thiết kế hiện đại có một đến 3 phòng ngủ với mức giá chỉ từ 830 triệu đồng mỗi căn cùng lịch thanh toán linh hoạt trong 42 tháng (mỗi tháng chỉ thanh toán 1%).</p>\n\n<p style="text-align: right;">Thanh Thư</p>', NULL, NULL, NULL, NULL, 30),
(13, '<p>Bộ phận Tư vấn cung cấp nhiều dịch vụ đa dạng như nghiên cứu thị trường, tư vấn ý tưởng phát triển, nghiên cứu nhân khẩu học, nghiên cứu khả thi&nbsp;</p>\n\n<table border="0" cellpadding="0" cellspacing="5" style="width:100%;">\n	<tbody>\n		<tr>\n			<td colspan="2">\n			<p><span style="font-size: 12px;">Dịch Vụ Nghiên Cứu và Tư Vấn</span></p>\n			</td>\n		</tr>\n		<tr>\n			<td style="width: 90px;"><span style="font-size: 12px;"><img alt="" src="http://vn.savills.com.vn/_images/service-research-jpg(2).jpg" style="width: 90px; height: 90px;" /></span></td>\n			<td style="vertical-align: top;"><span style="font-size: 12px;">Với vô số các biến số vĩ mô không chắc chắn tại Việt Nam, điều này là rất quan trọng trong việc giảm thiểu rủi ro thông qua các nghiên cứu về thị trường bất động sản, Minh Nhật cung cấp các nghiên cứu tinh tế để đảm bảo rằng tất cả các biến số này sẽ được định lượng nhằm tối đa hóa tỷ lệ thành công của dự án.</span></td>\n		</tr>\n		<tr>\n			<td colspan="2">\n			<p><span style="font-size: 12px;">Dịch Vụ Định Giá và Tư Vấn Tài Chính</span></p>\n			</td>\n		</tr>\n		<tr>\n			<td><span style="font-size: 12px;"><img alt="" src="http://vn.savills.com.vn/_images/service-valuations-jpg(2).jpg" style="width: 90px; height: 90px;" /></span></td>\n			<td style="vertical-align: top;"><span style="font-size: 12px;">Với sự hiểu biết chuyên sâu về thị trường từ đội ngũ định giá hoạt động lâu năm nhất tại Việt Nam, Minh Nhật luôn sẵn sàng cung cấp những lời tư vấn khách quan đến khách hàng với các báo cáo hoàn toàn minh bạch và phù hợp theo tiêu chuẩn quốc tế. Báo cáo Minh Nhật cung cấp những kết quả bảo đảm tính chuyên nghiệp, hợp lý và xác thực cao có thể vượt qua các kiểm chứng nghiêm ngặt.</span></td>\n		</tr>\n		<tr>\n			<td colspan="2">\n			<p><span style="font-size: 12px;">Dịch Vụ Ngân Hàng Và Doanh Nghiệp</span></p>\n			</td>\n		</tr>\n		<tr>\n			<td><span style="font-size: 12px;"><img alt="" src="http://vn.savills.com.vn/_images/calculator-and-pen(2).jpg" style="width: 90px; height: 90px;" /></span></td>\n			<td style="vertical-align: top;"><span style="font-size: 12px;">Các chuyên viên định giá chuyên nghiệp của chúng tôi cung cấp các dịch vụ định giá hàng đầu giúp các ngân hàng có thể đưa ra quyết định đối với bất động sản trong phạm vi toàn khu vực. Hệ thống và quy trình làm việc của Minh Nhật theo tiêu chuẩn quốc tế và phát triển nhất trong khu vực. Các biện pháp phòng ngừa rủi ro được áp dụng nhằm giảm thiểu các yếu tố không lường trước được.</span></td>\n		</tr>\n	</tbody>\n</table>', NULL, NULL, NULL, NULL, 31),
(14, '<p>&nbsp;Minh Nhật mang đến cho khách hàng các dịch vụ bất động sản toàn diện: Văn phòng, Bán lẻ, Nhà ở (cho thuê) và Dịch vụ Công nghiệp.</p>\n\n<table border="0" cellpadding="0" cellspacing="5" style="width:100%;">\n	<colgroup>\n		<col />\n		<col />\n	</colgroup>\n	<tbody>\n		<tr>\n			<td colspan="2">\n			<p><strong><span style="font-size: 12px;">Dịch Vụ&nbsp;Văn Phòng</span></strong></p>\n			</td>\n		</tr>\n		<tr>\n			<td style="width: 90px;"><span style="font-size: 12px;"><img alt="" src="http://vn.savills.com.vn/_images/service-capital-transactions-jpg(1).jpg" style="width: 90px; height: 90px;" /></span></td>\n			<td><span style="font-size: 12px;">Minh Nhật là nhà cung cấp các dịch vụ văn phòng hàng đầu tại Việt Nam. Đội ngũ nhân viên của chúng tôi đảm bảo sẽ làm hài lòng khách hàng bằng sự tận tâm và chuyên nghiệp trong công việc. Khách hàng của Minh Nhật đến từ nhiều thành phố lớn trong khu vực Đông Nam Á.</span></td>\n		</tr>\n		<tr>\n			<td colspan="2">\n			<p><strong><span style="font-size: 12px;">Dịch Vụ Cho Thuê Nhà Ở</span></strong></p>\n			</td>\n		</tr>\n		<tr>\n			<td><span style="font-size: 12px;"><img alt="" src="http://vn.savills.com.vn/_images/the-waterfront-pmh.jpg" style="width: 90px; height: 90px;" /></span></td>\n			<td><span style="font-size: 12px;">Bộ phận cho thuê nhà của chúng tôi cung cấp cho các nhà đầu tư và các nhà phát triển đầy đủ các dịch vụ hỗ trợ nhằm tối đa hóa lợi nhuận từ tất cả các tài sản nhà ở cho thuê, từ các dự án mới cho đến các tòa nhà đã được hoàn thiện.</span></td>\n		</tr>\n		<tr>\n			<td colspan="2">\n			<p><strong><span style="font-size: 12px;">Dịch Vụ Tư Vấn Bán Lẻ</span></strong></p>\n			</td>\n		</tr>\n		<tr>\n			<td><span style="font-size: 12px;"><img alt="" src="http://vn.savills.com.vn/_images/4(6).jpg" style="width: 90px; height: 90px;" /></span></td>\n			<td><span style="font-size: 12px;">Minh Nhật cung cấp dịch vụ tư vấn toàn diện trên lĩnh vực bán lẻ. Các nhà bán lẻ, chủ tòa nhà cũng như các nhà đầu tư tiếp tục thu được nhiều lợi nhuận dựa vào dịch vụ tư vấn giàu kinh nghiệm thực tế và nghiên cứu tình hình thị trường sâu rộng của Minh Nhật.</span></td>\n		</tr>\n		<tr>\n			<td colspan="2">\n			<p><strong><span style="font-size: 12px;">Dịch Vụ Công Nghiệp</span></strong></p>\n			</td>\n		</tr>\n		<tr>\n			<td><span style="font-size: 12px;"><img alt="" src="http://vn.savills.com.vn/_images/l-110729-n2711(1).jpg" style="width: 90px; height: 90px;" /></span></td>\n			<td><span style="font-size: 12px;">Chúng tôi đã nhìn ra được tiềm năng đáng kể trên tất cả các lĩnh vực công nghiệp kể cả những lĩnh vực mà chủ đầu tư lần đầu gia nhập thị trường Việt Nam hay những lĩnh vực mà chủ đầu tư kỳ vọng việc đa dạng hóa danh mục đầu tư trong khu vực.</span></td>\n		</tr>\n	</tbody>\n</table>', NULL, NULL, NULL, NULL, 32),
(15, '<p>Chúng tôi dẫn đầu thị trường trong lĩnh vực Bất động sản Nhà ở và hiện đang là đại lý bán và cung cấp một loạt các dự án bất động sản nhà ở chất lượng cao trên thị trường Việt Nam và trong khu vực Châu Á Thái Bình Dương.</p>\n\n<p>MINH NHẬT&nbsp;Việt nam đứng trong danh sách các công ty có chiến lược tiếp thị dự án hàng đầu tại Việt Nam. Thành công chúng tôi đã đạt được xứng đáng với danh tiếng một công tư vấn phát triển bất động sản hàng đầu và không công ty nào có thể so sánh được. Chúng tôi cung cấp cho các nhà đầu tư dự án những kiến thức chuyên môn sâu rộng, các dịch vụ bất động sản chất lượng cao, kinh nghiệm thực tiễn bán hàng tại Việt Nam, thực tiễn trên thế giới từ những nhà đầu tư địa phương, sơ cấp và đặc biệt là cơ sở dữ liệu khách hàng tiềm năng lớn nhất tại Việt Nam.</p>\n\n<p>Trong năm 2008 và 2009, chúng tôi đã trực tiếp quản lý bán các dự án bất động sản có giá trị từ 180 triệu đến 200 triệu USD.</p>\n\n<p><strong>Chúng tôi cung cấp cho các chủ đầu tư:</strong></p>\n\n<ul>\n	<li>Kiến thức tổng quan và bao quát thị trường trong nước, khu vực và quốc tế.</li>\n	<li>Bao quát thị trường quốc tế thông qua mạng lưới xuyên quốc gia.</li>\n	<li>Truy cập vào cơ sở dữ liệu lớn nhất về các khách hàng tiềm năng.</li>\n	<li>Chuyên viên tư vấn chuyên nghiệp.</li>\n	<li>Các nhân viên chuyên nghiệp với kỹ năng bán hàng giúp tối đa hóa giá bán.</li>\n	<li>Toàn vẹn, chuyên nghiệp và đúng nhu cầu.</li>\n	<li>Đầu tư lớn vào các công nghệ tiên tiến.</li>\n	<li>Cơ sở dữ liệu về người mua tiềm năng với tính năng cập nhật tự động địa chỉ email khách hàng.</li>\n	<li>Nhóm nghiên cứu hàng đầu thị trường Việt Nam.</li>\n	<li>Đội ngũ tiếp thị và quan hệ công chúng chuyên nghiệp.</li>\n	<li>Các tài liệu tiếp thị chất lượng cao.</li>\n</ul>\n\n<table border="0" cellpadding="0" cellspacing="5" style="width:100%;">\n	<colgroup>\n		<col />\n		<col />\n	</colgroup>\n	<tbody>\n		<tr>\n			<td colspan="2">\n			<p><strong>Tiếp Thị Và Bán Dự Án Nhà Ở</strong></p>\n			</td>\n		</tr>\n		<tr>\n			<td style="width: 90px;"><img alt="" src="http://vn.savills.com.vn/_images/gw---3br-master-bedroom(2).jpg" style="width: 90px; height: 90px;" /></td>\n			<td>Minh Nhật đã xây dựng và phát triển bộ phận bán hàng đầy nhiệt huyết về các mảng chính: Quản lý bán hàng, Q.lý khách hàng, Đại diện bán trực tiếp, Lập kế hoạch &amp; thực hiện tiếp thị, Tư vấn tiền phát triển.</td>\n		</tr>\n		<tr>\n			<td colspan="2">\n			<p><strong>Bán Hàng Và Môi Giới</strong></p>\n			</td>\n		</tr>\n		<tr>\n			<td><img alt="" src="http://vn.savills.com.vn/_images/front-view-resize(2).jpg" style="width: 90px; height: 90px;" /></td>\n			<td>Đội bán hàng của Minh Nhật có thể tìm kiếm và tiếp thị mọi loại hình bất động sản nhà ở tại Việt Nam bao gồm nhà ở, căn hộ bán lại, biệt thự, biệt thự/căn hộ áp mái, khu nghỉ dưỡng, đất và biệt thự sân gôn.</td>\n		</tr>\n		<tr>\n			<td colspan="2">\n			<p><strong>Bất Động Sản Quốc Tế</strong></p>\n			</td>\n		</tr>\n		<tr>\n			<td><img alt="" src="http://vn.savills.com.vn/_images/fitzroy-home-main-page(2).jpg" style="width: 90px; height: 90px;" /></td>\n			<td>Chúng tôi có đội ngũ kinh doanh tập trung chủ yếu vào việc phân phối các bất động sản cao cấp trên phạm vi toàn cầu.</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>&nbsp;</p>', NULL, NULL, NULL, NULL, 33),
(16, '<p>Minh Nhật là nhà cung cấp dịch vụ hàng đầu về lĩnh vực dịch vụ quản lý chuyên nghiệp tại Châu Á – Thái Bình Dương với hơn 65 triệu m2 diện tích thương mại, nhà ở cao cấp, trung tâm mua sắm và các diện tích công nghiệp khác. Ở Việt Nam, chúng tôi hiện nay quản lý khoảng (2,5 triệu m2), bao gồm trung tâm thương mại cao cấp và khu căn hộ cao cấp.</p>\n\n<table border="0" cellpadding="0" cellspacing="5" style="width:100%;">\n	<colgroup>\n		<col />\n		<col />\n	</colgroup>\n	<tbody>\n		<tr>\n			<td colspan="2">\n			<p><strong>Quản Lý Tòa Nhà</strong></p>\n			</td>\n		</tr>\n		<tr>\n			<td style="width: 90px;"><img alt="" src="http://vn.savills.com.vn/_images/diamond-island-dao-kim-cuong(5).png" style="width: 90px; height: 90px;" /></td>\n			<td>Chúng tôi nhìn nhận việc quản lý bất động sản là một dịch vụ hướng về khách hàng, trong đó Minh Nhật cung cấp những dịch vụ cao hơn tiêu chuẩn thông thường.</td>\n		</tr>\n		<tr>\n			<td colspan="2">\n			<p><strong>Kiểm Toán Các Trang Thiết Bị Và Khâu Vận Hành</strong></p>\n			</td>\n		</tr>\n		<tr>\n			<td><img alt="" src="http://vn.savills.com.vn/_images/diamondplaza---night(2).jpg" style="width: 90px; height: 90px;" /></td>\n			<td>Chúng tôi tập trung vào việc cung cấp những dịch vụ chuyên nghiệp cho tất cả những khách hàng đang sử dụng diện tích bất động sản tại Việt Nam và khu vực Châu Á Thái Bình Dương.</td>\n		</tr>\n		<tr>\n			<td colspan="2">\n			<p><strong>Quản Lý Tài Chính</strong></p>\n			</td>\n		</tr>\n		<tr>\n			<td><img alt="" src="http://vn.savills.com.vn/_images/4(12).jpg" style="width: 90px; height: 90px;" /></td>\n			<td>Dịch vụ quản lý tài chính chuyên nghiệp và có tính chính xác cao của chúng tôi được cung cấp cho những chủ đầu tư cá nhân, quản lý quỹ…</td>\n		</tr>\n		<tr>\n			<td colspan="2">\n			<p><strong>Tư Vấn Tiền Dự Án</strong></p>\n			</td>\n		</tr>\n		<tr>\n			<td><img alt="" src="http://vn.savills.com.vn/_images/apartment-for-sales-goden-land-1(5).jpg" style="width: 90px; height: 90px;" /></td>\n			<td>Những khách hàng của chúng tôi chủ yếu là các chủ đầu tư, bao gồm chủ đầu tư trong nước đến các quỹ đầu tư và các nhà đầu tư cá nhân khác.</td>\n		</tr>\n		<tr>\n			<td colspan="2">\n			<p><strong>Các Dịch Vụ Kỹ Thuật</strong></p>\n			</td>\n		</tr>\n		<tr>\n			<td><img alt="" src="http://vn.savills.com.vn/_images/riviera-point-2(6).jpg" style="width: 90px; height: 90px;" /></td>\n			<td>Chúng tôi đảm trách việc bảo trì, bảo dưỡng và sửa chữa định kì cho các khu vực và các trang thiết bị.</td>\n		</tr>\n	</tbody>\n</table>', NULL, NULL, NULL, NULL, 34);
INSERT INTO `web_content` (`id`, `content`, `more1`, `more2`, `more3`, `more4`, `header_id`) VALUES
(17, '<p style="text-align: center;"><img alt="Oasis Bình Dương" src="http://hungthinhland.com/land/attachment/image/img1(4)(1).jpg" /></p>\n\n<p><strong>1. Ốc Đảo Xanh “The Oasis”</strong></p>\n\n<div>Tọa lạc tại cửa ngõ phía Bắc của Thành phố Hồ Chí Minh, kết nối với thị xã Thủ Dầu Một, thành phố mới Bình Dương cũng như thành phố Biên Hòa và Bà Rịa Vũng Tàu, dự án Làng chuyên gia The Oasis được quy hoạch theo phong cách nghỉ dưỡng, trải rộng trên diện tích 22,2ha với 652 căn biệt thự và nhà phố sang trọng. The Oasis là một cộng đồng biệt lập với tường rào và bảo vệ 24/7, mang đến cho cư dân một đẳng cấp sống đích thực.</div>\n\n<p><strong>2. Cộng đồng đa văn hóa, văn minh và thân thiện</strong></p>\n\n<div>The Oasis tự hào là dự án đầu tiên tại Bình Dương sở hữu một cộng đồng dân cư đa văn hóa, văn minh và thân thiện với hơn 300 chuyên gia đến từ hơn 17 quốc gia trên thế giới đang sinh sống. Tất cả cư dân nơi đây đang tạo nên một bức tranh sống động, đầy màu sắc, góp phần tô điểm và nâng tầm giá trị cho The Oasis.<br />\nVới lợi thế tọa lạc tại Bình Dương&nbsp; – một vùng kinh tế trọng điểm của phía Nam, thu hút đầu tư lớn và hơn 20.000 chuyên gia đang làm việc tại đây – The Oasis đang trở thành một mái ấm đích thực mà các chuyên gia luôn chọn để an cư. &nbsp;</div>\n\n<p><strong>3. Tận hưởng phong cách sống nghỉ dưỡng &nbsp;</strong></p>\n\n<p>Với việc dành phần lớn diện tích cho mảng xanh của dự án, cư dân The Oasis được trở về với thiên nhiên, cảm nhận hương thơm của cỏ cây hoa lá, tận hưởng bầu không khí trong lành, xanh mát.</p>\n\n<div>Đội ngũ quản lý và nhân viên giàu kinh nghiệm và nhiệt huyết, luôn sẵn sàng phục vụ 24/7 các vấn đề về sữa chữa, bảo trì, an ninh, sinh hoạt cộng đồng và các dịch vụ khác. Tất cả những điều này góp phần tạo nên thành công lớn cho The Oasis, thu hút ngày càng nhiều các chuyên gia đến đây sinh sống.</div>\n\n<p><strong>4. Tiện nghi cuộc sống</strong></p>\n\n<p>The Oasis đúng nghĩa là một khu “resort” thật sự với tiêu chuẩn sống cao cấp. Bên cạnh mội trường xanh, sạch, an ninh, The Oasis còn mang đến cho cư dân những tiện ích tuyệt vời cho cuộc sống như hồ bơi, công viên, khu vui chơi trẻ em, sân tennis, phòng tập thể dục, phòng xông hơi, cà phê sân vườn, khu vực chạy bộ. Tất cả đều nằm trong khuôn viên của dự án.</p>\n\n<div>Chỉ cần 5 – 20 phút là cư dân sống tại The Oasis có thể đến với tất cả các trung tâm giáo dục, vui chơi giải trí, chăm sóc sức khỏe và ẩm thực xung quanh như sân Golf Sông Bé, Bệnh viện Nhi Phụ Sản Quốc tế Hạnh Phúc, Bệnh viện Quốc tế Columbia, Bệnh viện Quốc tế Miền Đông, Trung tâm ăn uống và mua sắm Minh Sáng, Trung tâm mua sắm Hồng Phú Thảo, Trường Quốc tế Kinder World, Trường Đại Học Quốc tế Miền Đông, Siêu thị Metro, Siêu thị Coop Mart,…</div>\n\n<p><strong>5. Triết lý thiết kế</strong></p>\n\n<div>The Oasis được thiết kế hài hòa giữa thiên nhiên và con người, thể hiện đúng bản chất là “màu xanh, sự sống và nước”. Sự kết hợp tuyệt vời trong triết lý thiết kế giữa phong cách hiện đại của phương Tây và mái ngói đỏ theo truyền thống Việt Nam tạo nên điểm nhấn cho toàn dự án. Những căn biệt thự sang trọng được bố trí theo hai hướng Bắc – Nam để tránh nắng. Các phòng bên trong được bố trí hợp lý và thoáng mát với rất nhiều cửa sổ để đón gió và ánh sáng thiên nhiên, tạo không gian mở tối đa. Sân trước và sân sau rộng và liên kết với nhau cho một mảng&nbsp; sân vườn tuyệt đẹp. Tất cả đều tạo nên sự đặc sắc nhằm tôn vinh gia chủ.</div>\n\n<p><strong>6. Chủ đầu tư</strong></p>\n\n<p>Công ty Cổ phần quốc tế Bắc Sài Gòn (SNI)</p>\n\n<div>\n<p>SNI là một công ty phát triển bất động sản rất năng động của Bình Dương, với thế mạnh dựa trên sự am hiểu địa phương cùng với đội ngũ nhân viên trẻ và nhiệt tình. Trải qua 7 năm hình thành và phát triển với dự án The Oasis, SNI luôn thể hiện là một chủ đầu tư có trách nhiệm khi tiếp tục gắn bó với khách hàng trong việc quản lý dự án sau khi nhà đã được bàn giao. Bên cạnh đó, SNI đã hoàn thành hơn 200 sổ hồng đúng tiến độ cam kết đối với khách hàng. SNI đã, đang và luôn nỗ lực để phát triển The Oasis trở thành một dự án biệt thự mang phong cách nghỉ dưỡng điển hình tại Bình Dương.</p>\n\n<p>Tổng công ty Đầu tư và Phát triển công nghiệp Became IDC</p>\n</div>\n\n<p>Becamex IDC được thành lập từ năm 1976, sau hơn 30 năm xây dựng và phát triển đến nay Becamex IDC đã trở thành thương hiệu có uy tín nhất trên lĩnh vực đầu tư và xây dựng Khu dân cư, đô thị và hạ tầng giao thông, hạ tầng khu công nghiệp. Becamex IDC hiện có 28 công ty thành viên hoạt động trong các lĩnh vực: chứng khoán, tài chính, bảo hiểm, ngân hàng, xây dựng, thương mại, bất động sản, dịch vụ, viễn thông – công nghệ thông tin, sản xuất bê tông, vật liệu xây dựng, khai thác khoáng sản, dược phẩm, y tế và giáo dục.</p>\n\n<p style="text-align: center;"><img alt="" src="http://hungthinhland.com/land/attachment/image/_DSC9259_web.jpg" /></p>\n\n<p style="text-align: center;"><img alt="" src="http://hungthinhland.com/land/attachment/image/pool%201_web(2).jpg" /></p>', '<p>Tọa lạc ngoại ô TPHCM, kết nối với Thành Phố Mới Bình Dương, Đồng Nai và Bà Rịa Vũng Tàu.</p>\n\n<p>- 25 phút đến TP.HCM</p>\n\n<p>- 10 phút đến Thành phố mới Bình Dương</p>\n\n<p>- và gần nhiều khu vực dịch vụ tiện ích xung quanh</p>\n\n<p style="text-align: center;"><img alt="" src="http://hungthinhland.com/land/attachment/image/so%20do%20vi%20tri%20The%20Oasis.jpg" /><br />\nSơ đồ vị trí dự án Oasis</p>', '<p><img alt="" src="http://hungthinhland.com/land/attachment/image/tien%20ich%20xung%20quanh%20The%20Oasis.jpg" /></p>\n\n<p><img alt="" src="http://hungthinhland.com/land/attachment/image/tien%20ich%20xung%20quanh%202%20The%20Oasis.jpg" /></p>\n\n<p>&nbsp;</p>', '<p>Đã hoàn thiện giai đoạn 1, 2, 3 (giao nhà ngay)</p>\n\n<p>Cổng an ninh: bảo vệ 24/7</p>', '<p><span style="color:#008000;"><strong>SÀN GIAO DỊCH BẤT ĐỘNG SẢN HƯNG THỊNH</strong></span></p>\n\n<ul>\n	<li>163 Hoa Lan, P.2, Q.Phú Nhuận&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\n	<li>Điện thoại:&nbsp;(08) 3517 8181</li>\n	<li>Hotline: 0934 578 578 - 0909 976 976&nbsp;<br />\n	&nbsp;</li>\n	<li>1A Phạm Viết Chánh, P.Nguyễn Cư Trinh, Q.1</li>\n	<li>Điện Thoại:&nbsp;(08) 3926 0296 - 3926 0297</li>\n	<li>Hotline: 0937 565 565 - 0937 026 026&nbsp;<br />\n	&nbsp;</li>\n	<li>526 Nguyễn Chí Thanh, P.7, Q.10</li>\n	<li>Điện thoại:&nbsp;(08) 3.957.3235 - 3.957.3236</li>\n	<li>Hotline: 0938 726 726 - 0932 086 086&nbsp;<br />\n	&nbsp;</li>\n	<li>527 Điện Biên Phủ, P.25, Q.Bình Thạnh</li>\n	<li>Điện thoại:&nbsp;(08) 3513 6031</li>\n	<li>Hotline: 0908 026 046 - 0908 90 47 46&nbsp;<br />\n	&nbsp;</li>\n	<li>45 Hoàng Việt, P.4, Q.Tân Bình</li>\n	<li>Điện thoại:&nbsp;(08) 3948 1076</li>\n	<li>Hotline: 0914 067 742</li>\n</ul>', 35),
(18, '<div>\n<p style="text-align: center;"><img alt="" src="http://hungthinhland.com/land/attachment/image/dalat(2).jpg" /></p>\n\n<p>Hài hòa bên đồi thông của Đà Lạt ở độ cao cách mặt nước biển 1.500m, khu biệt thự cao cấp Hưng Thịnh với 11 ngôi biệt thự lãng mạn, huyền ảo theo phong cách kiến trúc Châu Âu. Từ lâu Đà Lạt đã được biết đến như là nơi hưởng thụ của các vị vua chúa và giới hoàng tộc quyền quý. Đây là nơi ẩn cư hoàn hảo cho giới thượng lưu đang tìm kiếm vẻ đẹp của thiên nhiên cùng sự thư giãn cho riêng mình. Với nhiệt độ trung bình là 20 độ C vào mùa hè và khoảng 15 độ C vào mùa đông, thời tiết Đà Lạt luôn thoáng mát cùng bầu không khí trong lành, bầu trời trong xanh, với những rừng thông bạt ngàn, vườn hoa muôn sắc ẩn hiện trong màn sương huyền ảo đã làm đắm say lòng người qua biết bao thế hệ để được gọi là Thành phố của tình yêu và hoa.</p>\n</div>\n\n<div>\n<p style="text-align: center;"><img alt="Biệt thự Đà Lạt" src="http://hungthinhland.com/land/attachment/image/Untitled-1(2).jpg" /></p>\n\n<p><strong>Tổng quan dự án:</strong></p>\n\n<ul>\n	<li>Chủ đầu tư: Công ty CP Bất Động Sản Hưng Thịnh Đà Lạt là thành viên của Hung Thinh corp.</li>\n	<li>Địa chỉ: 30 – 31 Trạng Trình, Phường 9, TP Đà Lạt, Việt Nam</li>\n	<li>Đơn vị tư vấn thiết kế: Công ty CP Thiết kế - Xây dựng Hưng Thịnh</li>\n</ul>\n\n<p><strong>Pháp lý:</strong></p>\n\n<ul>\n	<li>Văn bản số 3088/UBND ngày 15/6/2011 của UBND Tỉnh Lâm Đồng v/v chủ trương điều chỉnh quy hoạch, kiến trúc Khu thương mại – dịch vụ – căn hộ Capella.</li>\n	<li>Văn bản số 92/ SXD – KTQH về việc thẩm định quy hoạch chi tiết 1/500 xây dựng khu dân cư Song lập và Biệt lập Hưng Thịnh</li>\n	<li>Giấy chứng nhận quyền sử dụng đất trong khu vực dự án</li>\n	<li>Hợp đồng mẫu.</li>\n</ul>\n\n<p><strong>Vị trí dự án:</strong></p>\n\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;Hướng Bắc&nbsp;&nbsp;&nbsp; : giáp đường Trạng Trình</p>\n\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;Hướng Đông&nbsp;: giáp Nhà dân hiện hữu</p>\n\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;Hướng Tây&nbsp;&nbsp;&nbsp; : giáp Nhà dân hiện hữu</p>\n\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;Hướng Nam&nbsp; : giáp đường Sương Nguyệt Ánh.</p>\n</div>\n\n<p><strong>Quy mô dự án:</strong></p>\n\n<p>-&nbsp;&nbsp;&nbsp; Diện tích toàn khu đất: 3205 m2</p>\n\n<p>-&nbsp;&nbsp;&nbsp; Số lượng: 11 căn (bao gồm 3 căn biệt thự đơn lập, và 8 căn biệt thự song lập)</p>\n\n<p>-&nbsp;&nbsp;&nbsp; Mật độ xây dựng 50%</p>\n\n<p>-&nbsp;&nbsp;&nbsp; Tầng cao xây dựng: 1 hầm, 2 tầng + áp mái</p>', '<p><strong>Vị trí dự án:</strong></p>\n\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;Hướng Bắc&nbsp;&nbsp;&nbsp; : giáp đường Trạng Trình</p>\n\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;Hướng Đông&nbsp;: giáp Nhà dân hiện hữu</p>\n\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;Hướng Tây&nbsp;&nbsp;&nbsp; : giáp Nhà dân hiện hữu</p>\n\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;Hướng Nam&nbsp; : giáp đường Sương Nguyệt Ánh.</p>', '<p style="text-align: center;"><img alt="" src="http://hungthinhland.com/land/attachment/image/Untitled-1(1).jpg" style="width: 640px; height: 517px;" /></p>', '', '<p><span style="color:#008000;"><strong>SÀN GIAO DỊCH BẤT ĐỘNG SẢN HƯNG THỊNH</strong></span></p>\n\n<ul>\n	<li>163 Hoa Lan, P.2, Q.Phú Nhuận&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\n	<li>Điện thoại:&nbsp;(08) 3517 8181</li>\n	<li>Hotline: 0934 578 578 - 0909 976 976&nbsp;<br />\n	&nbsp;</li>\n	<li>1A Phạm Viết Chánh, P.Nguyễn Cư Trinh, Q.1</li>\n	<li>Điện Thoại:&nbsp;(08) 3926 0296 - 3926 0297</li>\n	<li>Hotline: 0937 565 565 - 0937 026 026&nbsp;<br />\n	&nbsp;</li>\n	<li>526 Nguyễn Chí Thanh, P.7, Q.10</li>\n	<li>Điện thoại:&nbsp;(08) 3.957.3235 - 3.957.3236</li>\n	<li>Hotline: 0938 726 726 - 0932 086 086&nbsp;<br />\n	&nbsp;</li>\n	<li>527 Điện Biên Phủ, P.25, Q.Bình Thạnh</li>\n	<li>Điện thoại:&nbsp;(08) 3513 6031</li>\n	<li>Hotline: 0908 026 046 - 0908 90 47 46&nbsp;<br />\n	&nbsp;</li>\n	<li>45 Hoàng Việt, P.4, Q.Tân Bình</li>\n	<li>Điện thoại:&nbsp;(08) 3948 1076</li>\n	<li>Hotline: 0914 067 742</li>\n</ul>', 37),
(19, '<div style="text-align: center;"><img alt="" src="http://hungthinhland.com/land/attachment/image/15_Diaoconline_GolfValley_Tongthe(1).jpg" /><br />\n<em><span style="line-height: 1.6em;">Phối cảnh tổng thể</span></em></div>\n\n<p><strong>Golf Valley</strong>, điểm nhấn tại trung tâm thành phố Đà Lạt, là một thể thống nhất hoàn hảo gồm các phức hợp kiến trúc cao tầng, hiện đại, đa chức năng với trung tâm thương mại dịch vụ và hội nghị, chuỗi nhà hàng, cà phê, khách sạn, căn hộ cao cấp kết hợp với khu biệt thự nghỉ dưỡng thấp tầng sang trọng, riêng tư nằm giữa khu công viên mở trong không gian xanh, thơ mộng của những loài cây và hoa đặc trưng của xứ sở sương mù.</p>', '<p style="text-align: center;"><img alt="" src="http://hungthinhland.com/land/attachment/image/7406959980_5cfac1cc9e_z.jpg" style="width: 640px; height: 512px;" />​</p>\n\n<p><strong>Vị trí đất vàng</strong></p>\n\n<p>Có thể gọi đây là đất "kim cương" bởi dự án tọa lạc ngay giữa trung tâm của thành phố Đà Lạt với tổng diện tích 19,7 hecta.</p>\n\n<p>- Mặt tiền hướng đông giáp với đường Đinh Tiên Hoàng kề bên sân golf xanh mướt của Đà Lạt Palace;</p>\n\n<p>- Hướng tây giáp với đường Bùi Thị Xuân;</p>\n\n<p>- Và đặc biệt hướng nam nhìn thẳng ra Hồ Xuân Hương thơ mộng.</p>', '<div align="center">\n<p><img alt="" height="338" src="http://hungthinhland.com/land/attachment/image/15_Diaoconline_GolfValley_Villa(2).jpg" style="border:none;" width="450" /></p>\n\n<p><img alt="" height="338" src="http://hungthinhland.com/land/attachment/image/15_Diaoconline_GolfValley_Condo(1).jpg" style="border:none;" width="450" /></p>\n\n<p style="text-align: left;"><strong>Khách sạn</strong></p>\n\n<p style="text-align: left;">Bầu không khí thân thiện, phong cách phục vụ chuyên nghiệp của đội ngũ nhân viên giàu kinh nghiệm cùng những dịch vụ hoàn hảo với sự hòa hợp trong từng hơi thở của thiên nhiên tươi xanh và cả cái lạnh se se ngòn ngọt đủ để du khách luyến lưu… Hệ thống khách sạn 5 sao và nhà hàng cao cấp của Golf Valley luôn là điểm hẹn tuyệt vời của đẳng cấp sống để nghỉ ngơi, trăng mật, nghỉ dưỡng và phù hợp với những đôi bạn trẻ mong muốn được tổ chức tiệc cưới trong một không gian ấm cúng, sang trọng, tiện nghi nhưng vẫn không mất đi nét lãng mạn như tranh của cao nguyên huyền bí.</p>\n</div>\n\n<p><strong>Trung tâm thương mại</strong></p>\n\n<p>Bạn sẽ hài lòng với những tiện ích đẳng cấp cho bạn cảm nhận sự thư thái khi bách bộ trong không gian trong lành, mua sắm tại các trung tâm thương mại sang trọng tiện nghi hay thưởng thức ẩm thực trong không gian ấm cúng lãng mạng. Nơi đây còn tạo nên nhiều vận hội cho kinh doanh và thăng tiến trong sự nghiệp.</p>\n\n<p><strong>Cao ốc văn phòng</strong></p>\n\n<p>Cao ốc văn phòng với quy mô 14 tầng được trang bị các tiện ích tốt nhất như: hầm để xe, thang máy, sảnh và hành lang chung rộng rãi thoáng mát, hệ thống điều hòa, hệ thống truyền thông... Đồng thời được lắp đặt hệ thống camera và đội ngũ bảo vệ chuyên nghiệp, hệ thống PCCC sử dụng các thiết bị hiện đại...</p>\n\n<p style="text-align: center;"><img alt="" height="357" src="http://hungthinhland.com/land/attachment/image/15_Diaoconline_GolfValley_Commercial.jpg" style="border:none;" width="600" /></p>\n\n<p><strong>Biệt thự cao cấp</strong></p>\n\n<p>Bạn là một doanh nhân thành đạt đang ngự trị trong những ngôi biệt thự bức bối giữa thành phố công nghiệp? Hãy cảm nhận đỉnh cao của sự khác biệt khi sống trong một ngôi biệt thự sang trọng, kiến trúc tuyệt mỹ nằm trọn trong vòng tay tạo hóa với những hoa, những lá, những cỏ cây thiên nhiên cùng màu xanh bất tận của núi rừng trùng điệp, hay cái nắng vàng ươm ngọt ngào của một buổi bình minh cao nguyên…</p>\n\n<p><strong>Căn hộ cao cấp</strong></p>\n\n<p>Bạn yêu thiên nhiên? Bạn không muốn từ bỏ sự năng động tiện nghi trong cuộc sống đời thường? Bạn muốn có một ngôi nhà lý tưởng nhưng khả năng tài chính chưa mạnh? Khu cao ốc căn hộ cao cấp của GolfValley là nơi lý tưởng cho các bạn trẻ sống làm việc và thậm chí kinh doanh qua việc cho thuê căn hộ trong thời gian bạn không sử dụng với:</p>\n\n<p>+ Nội thất hiện đại, tiện nghi;</p>\n\n<p>+ Trang thiết bị được bố trí hài hòa, hợp lý và mang giá trị thẩm mỹ cao dựa trên tư duy sáng tạo của các kiến trúc sư tài hoa, chuyên nghiệp;</p>\n\n<p>+ Cuộc sống năng động trong không gian khoáng đãng tràn ngập màu xanh của thiên nhiên, của sức sống mới.</p>\n\n<p style="text-align: center;"><img alt="" height="450" src="http://hungthinhland.com/land/attachment/image/15_Diaoconline_GolfValley_Hotel.jpg" style="border:none;" width="600" /></p>\n\n<p style="text-align: center;"><em><img alt="" height="300" src="http://hungthinhland.com/land/attachment/image/15_Diaoconline_GolfValley_TN(1).jpg" style="border:none;" width="450" /></em></p>\n\n<p style="text-align: center;"><em><img alt="" height="300" src="http://hungthinhland.com/land/attachment/image/15_Diaoconline_GolfValley_CD(1).jpg" style="border:none;" width="450" /></em></p>\n\n<p><strong>Thỏa sức giải trí</strong></p>\n\n<p>Hãy tận hưởng giá trị của cuộc sống và thư giãn lành mạnh tại khu vui chơi giải trí của Golf Valley để giũ bỏ những lo toan muộn phiền. Những trò chơi giải trí vui tươi, sôi động và đầy lôi cuốn lần đầu tiên xuất hiện tại Đà Lạt. Bên cạnh đó là những thảm cỏ xanh êm như nhung của khoảng không gian công viên trong lành sẽ giúp bạn thêm yêu cuộc sống.</p>', '<p style="text-align: center;"><img alt="" src="http://hungthinhland.com/land/attachment/image/mapvillas.png" /><br />\nBản đồ phân lô dự án</p>', '<p><span style="color:#008000;"><strong>SÀN GIAO DỊCH BẤT ĐỘNG SẢN HƯNG THỊNH</strong></span></p>\n\n<ul>\n	<li>163 Hoa Lan, P.2, Q.Phú Nhuận&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\n	<li>Điện thoại:&nbsp;(08) 3517 8181</li>\n	<li>Hotline: 0934 578 578 - 0909 976 976&nbsp;<br />\n	&nbsp;</li>\n	<li>1A Phạm Viết Chánh, P.Nguyễn Cư Trinh, Q.1</li>\n	<li>Điện Thoại:&nbsp;(08) 3926 0296 - 3926 0297</li>\n	<li>Hotline: 0937 565 565 - 0937 026 026&nbsp;<br />\n	&nbsp;</li>\n	<li>526 Nguyễn Chí Thanh, P.7, Q.10</li>\n	<li>Điện thoại:&nbsp;(08) 3.957.3235 - 3.957.3236</li>\n	<li>Hotline: 0938 726 726 - 0932 086 086&nbsp;<br />\n	&nbsp;</li>\n	<li>527 Điện Biên Phủ, P.25, Q.Bình Thạnh</li>\n	<li>Điện thoại:&nbsp;(08) 3513 6031</li>\n	<li>Hotline: 0908 026 046 - 0908 90 47 46&nbsp;<br />\n	&nbsp;</li>\n	<li>45 Hoàng Việt, P.4, Q.Tân Bình</li>\n	<li>Điện thoại:&nbsp;(08) 3948 1076</li>\n	<li>Hotline: 0914 067 742</li>\n</ul>', 38),
(20, '<p><img alt="" src="http://hungthinhland.com/land/attachment/image/1(69)(1).jpg" /></p>\n\n<p><strong>Căn hộ 12 View:</strong></p>\n\n<p>Tọa lạc tại khu đô thị được quy hoạch đồng bộ của quận 12, đồng thời&nbsp; giáp ranh vùng dân cư sầm uất của các quận lân cận - căn hộ 12 View hội tụ những tiêu chí thiết yếu của một dự án bất động sản có tiềm năng cao.</p>\n\n<p><strong>Thiết kế hợp lý đến từng&nbsp;&nbsp;chi tiết:</strong></p>\n\n<p>Căn hộ 12 View được thiết kế độc đáo và hợp lý đến từng chi tiết nhằm tối đa hóa&nbsp;tầm nhìn và giúp bạn gần gũi hơn với thiên nhiên.Nơi đây, mỗi khoảng không đều được sắp xếp khoa học và khéo léo để tận dụng tốt nhất diện tích sử dụng. Các cửa sổ luôn rộng mở để đón gió, ánh sáng tự nhiên và đem không khí trong lành vào nhà. Căn bếp ấm hơn để mọi người quây quần bên nhau trong những bữa cơm gia đình. Phòng khách tiện nghi và hiện đại luôn là niềm tự hào của mỗi chủ nhân. Phòng ngủ ấm áp và dịu dàng luôn là khoảng trời hạnh phúc của gia đình bạn.</p>\n\n<p><strong>Căn hộ 12 View</strong> - Nét riêng độc đáo khiến bạn không thể quên ngay từ cái nhìn đầu tiên.</p>\n\n<p>Sau những căng thẳng và mệt mỏi trong công việc, ngôi nhà là nơi bạn nghỉ ngơi, thư giãn và nạp năng lượng để sẵn sàng cho một ngày mới. Với không gian sống yên bình cùng mọi tiện nghi của cuộc sống hiện đại, căn hộ 12 View là nơi an cư&nbsp;&nbsp;lý tưởng cho những gia đình trẻ đang làm việc tại trung tâm, là lựa chọn hoàn hảo cho những bậc phụ huynh muốn mua nhà cho con học tập tại TP. HCM và cho những ai đang ước mơ sở hữu một căn hộ hiện đại trong cộng đồng văn minh.</p>\n\n<p><strong>Quy mô dự án:</strong></p>\n\n<table border="0" cellpadding="7" cellspacing="7">\n	<tbody>\n		<tr>\n			<td>Vị trí</td>\n			<td>&nbsp;: Phường Tân Thới Nhất, Quận 12, TP.HCM</td>\n		</tr>\n		<tr>\n			<td>Diện tích đất</td>\n			<td>: 8.769,3 m2&nbsp;&nbsp;&nbsp;</td>\n		</tr>\n		<tr>\n			<td>Diện tích xây dựng</td>\n			<td>: 4.850,6 m2&nbsp;&nbsp;&nbsp;</td>\n		</tr>\n		<tr>\n			<td>Mật độ xây dựng</td>\n			<td>: 31,4%</td>\n		</tr>\n		<tr>\n			<td>Hệ số sử dụng đất</td>\n			<td>: 4.75</td>\n		</tr>\n		<tr>\n			<td>Số block</td>\n			<td>: 02</td>\n		</tr>\n		<tr>\n			<td>Số tầng</td>\n			<td>: 18</td>\n		</tr>\n		<tr>\n			<td>Số căn hộ</td>\n			<td>: 408 căn</td>\n		</tr>\n		<tr>\n			<td>Diện tích căn hộ</td>\n			<td>: 55 – 92 m2</td>\n		</tr>\n	</tbody>\n</table>', '<p><img alt="Vị trí căn hộ 12 View" src="http://hungthinhland.com/land/attachment/image/map(6).jpg" /></p>\n\n<p><img alt="" src="http://hungthinhland.com/land/attachment/image/bdo.jpg" /><strong><span style="line-height: 1.6em;">Vị trí đắc địa, thuận tiện kết nối:</span></strong></p>\n\n<p>Nằm cạnh Tân Bình - một trong những khu vực trọng điểm kinh tế phát triển ổn định nhất Tp.HCM, căn hộ 12 View thừa hưởng nhiều ưu thế lớn từ giá trị của những hạ tầng quan trọng đã được xây dựng phục vụ sự phát triển kinh tế khu vực phía Nam: sân bay Tân Sơn Nhất, quốc lộ 22A, quốc lộ 1A, đường Trường Chinh 60m, KCN Tân Bình, cụm cao ốc văn phòng và các siêu thị lớn…</p>\n\n<p>Đặc biệt hơn cả, dự án liền kề ngay ga tàu điện ngầm tuyến Bến Thành – Tham Lương, một phương tiện di chuyển hiện đại, an toàn và phổ biến đang được ưa chuộng tại các nước phát triển trên thế giới. Từ đây, cư dân căn hộ 12 View chỉ mất 5 - 7 phút là đến trung tâm thành phố hoặc các quận nội thành, khu vui chơi, giải trí....&nbsp;</p>\n\n<p><strong>Ngay ga tàu đện ngầm Metro</strong></p>\n\n<p><img alt="" src="http://hungthinhland.com/land/attachment/image/ga_dn.jpg" /></p>', '<p>Tận hưởng cuộc sống, thư giãn thực sự:</p>\n\n<p>Ngoài những tiện ích được thừa hưởng từ khu vực như gần siêu thị, bệnh viện, trường học…, căn hộ 12 View còn được chú trọng phát triển các tiện ích nội khu nhằm đáp ứng tối đa nhu cầu của cộng đồng dân cư trong việc tận hưởng cuộc sống trong lành, hiện đại: trung tâm thương mại, spa, café, nhà trẻ, dịch vụ an ninh 24/24…</p>\n\n<p style="text-align: center;"><img alt="" src="http://hungthinhland.com/land/attachment/image/ga_dn.jpg" style="line-height: 1.6em;" /></p>\n\n<p style="text-align: center;">Ga điện ngầm Metro</p>\n\n<p style="text-align: center;"><img alt="" src="http://hungthinhland.com/land/attachment/image/shutterstock_28847675.jpg" style="line-height: 1.6em;" /></p>\n\n<p style="text-align: center;">Bệnh viện</p>\n\n<p style="text-align: center;"><img alt="" src="http://hungthinhland.com/land/attachment/image/th.jpg" style="line-height: 1.6em;" /></p>\n\n<p style="text-align: center;">Trường học</p>\n\n<p style="text-align: center;"><img alt="" src="http://hungthinhland.com/land/attachment/image/st.jpg" style="line-height: 1.6em;" /></p>\n\n<p style="text-align: center;">Siêu thị</p>\n\n<p style="text-align: center;"><img alt="" src="http://hungthinhland.com/land/attachment/image/tttm.jpg" style="line-height: 1.6em;" /></p>\n\n<p style="text-align: center;">Trung tâm thương mại</p>\n\n<p style="text-align: center;"><img alt="" src="http://hungthinhland.com/land/attachment/image/ti2(1).jpg" style="line-height: 1.6em;" /></p>\n\n<p style="text-align: center;">Nhà hàng</p>\n\n<p style="text-align: center;"><img alt="" src="http://hungthinhland.com/land/attachment/image/ti3(3).jpg" style="line-height: 1.6em;" /></p>\n\n<p style="text-align: center;">Spa</p>\n\n<p>Với hồ bơi tuyệt đẹp ngay tại căn hộ 12 View, bạn và gia đình sẽ được thư giãn thoải mái khi hòa mình vào làn nước mát lạnh, trong vắt hoặc có thể rèn luyện sức khỏe tại phòng tập thể dục hiện đại với đầy đủ thiết bị chỉ dành riêng cho cư dân nơi đây.</p>\n\n<p style="text-align: center;"><img alt="Căn hộ 12 View" src="http://hungthinhland.com/land/attachment/image/tien_ich1(1).jpg" /></p>', '', '<p><span style="color:#008000;"><strong>SÀN GIAO DỊCH BẤT ĐỘNG SẢN HƯNG THỊNH</strong></span></p>\n\n<ul>\n	<li>163 Hoa Lan, P.2, Q.Phú Nhuận&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\n	<li>Điện thoại:&nbsp;(08) 3517 8181</li>\n	<li>Hotline: 0934 578 578 - 0909 976 976&nbsp;<br />\n	&nbsp;</li>\n	<li>1A Phạm Viết Chánh, P.Nguyễn Cư Trinh, Q.1</li>\n	<li>Điện Thoại:&nbsp;(08) 3926 0296 - 3926 0297</li>\n	<li>Hotline: 0937 565 565 - 0937 026 026&nbsp;<br />\n	&nbsp;</li>\n	<li>526 Nguyễn Chí Thanh, P.7, Q.10</li>\n	<li>Điện thoại:&nbsp;(08) 3.957.3235 - 3.957.3236</li>\n	<li>Hotline: 0938 726 726 - 0932 086 086&nbsp;<br />\n	&nbsp;</li>\n	<li>527 Điện Biên Phủ, P.25, Q.Bình Thạnh</li>\n	<li>Điện thoại:&nbsp;(08) 3513 6031</li>\n	<li>Hotline: 0908 026 046 - 0908 90 47 46&nbsp;<br />\n	&nbsp;</li>\n	<li>45 Hoàng Việt, P.4, Q.Tân Bình</li>\n	<li>Điện thoại:&nbsp;(08) 3948 1076</li>\n	<li>Hotline: 0914 067 742</li>\n</ul>', 39);

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_event_form`
--

INSERT INTO `web_event_form` (`id`, `name`, `img`, `subject`, `content`, `notification`, `email`, `type`, `type_id`, `status`) VALUES
(1, 'Liên hệ', '', 'Thông báo liên hệ đến Trường dạy nghề Ẩm Thực Netspace', '<p>Kính gởi bạn {_name},</p>\n\n<p>Cảm ơn bạn đã quan tâm đến các khóa học của&nbsp;Trường dạy nghề Ẩm Thực Netspace.</p>\n\n<p>Xin thông báo bạn đã liên hệ đến&nbsp;Netspace&nbsp;<strong>thành công.</strong></p>\n\n<p>Nội dung liên hệ:</p>\n\n<p style="margin-left: 40px;"><em>{_message}</em></p>\n\n<p>Một lần nữa, cảm ơn bạn đã quan tâm đến các khóa học của&nbsp;Trường dạy nghề Ẩm Thực Netspace.<br />\n<span>Trân trọng,</span></p>\n\n<p>&nbsp;</p>\n\n<hr />\n<p><em><span style="font-size:16px;"><span style="color:#808080;"><strong>Trường dạy nghề Ẩm Thực Netspace</strong></span></span><br />\n<span style="color:#808080;"><strong>Website:</strong>&nbsp;<a href="http://www.dayamthuc.vn">www.dayamthuc.vn</a> - <a href="http://www.netspace.edu.vn">www.netspace.edu.vn</a></span></em></p>\n\n<table border="0" cellpadding="5" cellspacing="0" style="width:100%;">\n	<tbody>\n		<tr>\n			<td style="width: 32%; vertical-align: top;"><em><span style="color:#808080;"><span style="font-size: 12px;"><strong>Cơ sở chính:</strong>&nbsp;30 Nguyễn Huy Tự, Phường ĐaKao, Quận 1, Tp.HCM<br />\n			Tel: (08) 6291 2698‎<br />\n			Hotline: 0987 937 938 - 0947 333 488 - 09 8333 8333</span></span></em></td>\n			<td style="width: 32%; vertical-align: top;"><em><span style="color:#808080;"><span style="font-size: 12px;"><strong>CN Hà Nội:&nbsp;</strong>Tầng 5 số 9 Hồ Tùng Mậu, Q. Cầu Giấy, Hà Nội<br />\n			Tel: (04) 36 856 888<br />\n			Hotline: 0989 166 875 - 0985 777 989</span></span></em></td>\n		</tr>\n		<tr>\n			<td style="vertical-align: top; width: 32%;"><em><span style="color:#808080;"><span style="font-size: 12px;"><strong>CN Tp.HCM:</strong>&nbsp;Số 19 Đường Đặng Tất, Phường Tân Định, Quận 1, Tp.HCM<br />\n			Tel: (08) 6291 2698‎<br />\n			Hotline: 0987 937 938 - 0947 333 488 - 09 8333 8333</span></span></em></td>\n			<td style="vertical-align: top; width: 32%;"><em><span style="color:#808080;"><span style="font-size: 12px;"><strong>CN Đà Lạt:&nbsp;</strong>51D Hùng Vương, Phường 9, Tp.Đà Lạt<br />\n			Tel: (0633) 811 199 - (0633) 811 166<br />\n			Hotline: 0905 362 809 - 0965 82 83 88 - 0965 79 73 88</span></span></em></td>\n		</tr>\n		<tr>\n			<td style="vertical-align: top; width: 32%;"><em><span style="color:#808080;"><span style="font-size: 12px;"><strong>CN Đà Nẵng:</strong>&nbsp;Số 3 Phan Thành Tài, Q.Hải Châu, Tp.Đà Nẵng<br />\n			Tel: (051) 1363 4879<br />\n			Hotline: 0979 391 391 - 0932 743 799</span></span></em></td>\n			<td style="vertical-align: top; width: 32%;"><em><span style="color:#808080;"><span style="font-size: 12px;"><strong>CN Cần Thơ:</strong>&nbsp;140 Xô Viết Nghệ Tĩnh, P.An Hội, Q.Ninh Kiều, Tp.Cần Thơ<br />\n			Tel: (071) 0373 4371<br />\n			Hotline: 0912 187 489 - 0912 287 489</span></span></em></td>\n		</tr>\n	</tbody>\n</table>', '<p><strong>Liên hệ thành công</strong></p>\n\n<p>Xin thông báo bạn đã liên hệ&nbsp;thành công đến&nbsp;Trường dạy nghề Ẩm Thực Netspace.&nbsp;Chúng tôi sẽ trả lời cho bạn sớm nhất có thể.</p>\n\n<p>Thân chào,</p>', '', 1, 17, 1),
(7, 'Đăng ký học', '', 'Thông báo đăng ký khóa học của Trường Netspace', '<p>Kính gởi bạn {_name},</p>\n\n<p>Cảm ơn bạn đã quan tâm đến các khóa học của Trường dạy nghề Ẩm Thực Netspace.</p>\n\n<p>Xin thông báo bạn đã đăng ký khóa học của Trường dạy nghề Ẩm Thực Netspace&nbsp;thành công.</p>\n\n<p style="margin-left: 40px;">Khóa học: <strong>{_course}</strong></p>\n\n<p>Trường dạy nghề Ẩm Thực Netspace sẽ kiểm tra và thông báo lịch khai giảng cho bạn sớm nhất.</p>\n\n<p>Một lần nữa, cảm ơn bạn đã quan tâm đến các khóa học của Trường dạy nghề Ẩm Thực Netspace.<br />\nTrân trọng,<br />\n&nbsp;</p>\n\n<hr />\n<p><em><span style="font-size:16px;"><span style="color:#808080;"><strong>Trường dạy nghề Ẩm Thực Netspace</strong></span></span><br />\n<span style="color:#808080;"><strong>Website:</strong>&nbsp;<a href="http://www.dayamthuc.vn">www.dayamthuc.vn</a> - <a href="http://www.netspace.edu.vn">www.netspace.edu.vn</a></span></em></p>\n\n<table border="0" cellpadding="5" cellspacing="0" style="width:100%;">\n	<tbody>\n		<tr>\n			<td style="width: 32%; vertical-align: top;"><em><span style="color:#808080;"><span style="font-size: 12px;"><strong>Cơ sở chính:</strong>&nbsp;30 Nguyễn Huy Tự, Phường ĐaKao, Quận 1, Tp.HCM<br />\n			Tel: (08) 6291 2698‎<br />\n			Hotline: 0987 937 938 - 0947 333 488 - 09 8333 8333</span></span></em></td>\n			<td style="width: 32%; vertical-align: top;"><em><span style="color:#808080;"><span style="font-size: 12px;"><strong>CN Hà Nội:&nbsp;</strong>Tầng 5 số 9 Hồ Tùng Mậu, Q. Cầu Giấy, Hà Nội<br />\n			Tel: (04) 36 856 888<br />\n			Hotline: 0989 166 875 - 0985 777 989</span></span></em></td>\n		</tr>\n		<tr>\n			<td style="vertical-align: top; width: 32%;"><em><span style="color:#808080;"><span style="font-size: 12px;"><strong>CN Tp.HCM:</strong>&nbsp;Số 19 Đường Đặng Tất, Phường Tân Định, Quận 1, Tp.HCM<br />\n			Tel: (08) 6291 2698‎<br />\n			Hotline: 0987 937 938 - 0947 333 488 - 09 8333 8333</span></span></em></td>\n			<td style="vertical-align: top; width: 32%;"><em><span style="color:#808080;"><span style="font-size: 12px;"><strong>CN Đà Lạt:&nbsp;</strong>51D Hùng Vương, Phường 9, Tp.Đà Lạt<br />\n			Tel: (0633) 811 199 - (0633) 811 166<br />\n			Hotline: 0905 362 809 - 0965 82 83 88 - 0965 79 73 88</span></span></em></td>\n		</tr>\n		<tr>\n			<td style="vertical-align: top; width: 32%;"><em><span style="color:#808080;"><span style="font-size: 12px;"><strong>CN Đà Nẵng:</strong>&nbsp;Số 3 Phan Thành Tài, Q.Hải Châu, Tp.Đà Nẵng<br />\n			Tel: (051) 1363 4879<br />\n			Hotline: 0979 391 391 - 0932 743 799</span></span></em></td>\n			<td style="vertical-align: top; width: 32%;"><em><span style="color:#808080;"><span style="font-size: 12px;"><strong>CN Cần Thơ:</strong>&nbsp;140 Xô Viết Nghệ Tĩnh, P.An Hội, Q.Ninh Kiều, Tp.Cần Thơ<br />\n			Tel: (071) 0373 4371<br />\n			Hotline: 0912 187 489 - 0912 287 489</span></span></em></td>\n		</tr>\n	</tbody>\n</table>', '<p><strong>Đăng ký khóa học&nbsp;thành công</strong></p>\n\n<p>Bạn đã đăng ký&nbsp;<em><strong>{_course}</strong></em> của Trường dạy nghề Ẩm Thực Netspace thành công. Chúng tôi sẽ kiểm tra và thông báo lịch khai giảng cho bạn sớm nhất.</p>\n\n<p>Thân chào,</p>', '', 1, 3, 1),
(8, 'Yêu cầu đào tạo', '', 'Thông báo yêu cầu đào tạo của Trường Netspace', '<p>Kính gởi bạn {_name},</p>\n\n<p>Cảm ơn bạn đã quan tâm đến các khóa học của Trường dạy nghề Ẩm Thực Netspace.</p>\n\n<p>Xin thông báo bạn <em><strong>yêu cầu đào tạo</strong></em> đến&nbsp;Trường dạy nghề Ẩm Thực Netspace&nbsp;thành công.</p>\n\n<p>Trường dạy nghề Ẩm Thực Netspace sẽ kiểm tra và thông báo&nbsp;cho bạn sớm nhất.</p>\n\n<p>Một lần nữa, cảm ơn bạn đã quan tâm đến các khóa học của Trường dạy nghề Ẩm Thực Netspace.<br />\nTrân trọng,<br />\n&nbsp;</p>\n\n<hr />\n<p><em><span style="font-size:16px;"><span style="color:#808080;"><strong>Trường dạy nghề Ẩm Thực Netspace</strong></span></span><br />\n<span style="color:#808080;"><strong>Website:</strong>&nbsp;<a href="http://www.dayamthuc.vn">www.dayamthuc.vn</a> - <a href="http://www.netspace.edu.vn">www.netspace.edu.vn</a></span></em></p>\n\n<table border="0" cellpadding="5" cellspacing="0" style="width:100%;">\n	<tbody>\n		<tr>\n			<td style="width: 32%; vertical-align: top;"><em><span style="color:#808080;"><span style="font-size: 12px;"><strong>Cơ sở chính:</strong>&nbsp;30 Nguyễn Huy Tự, Phường ĐaKao, Quận 1, Tp.HCM<br />\n			Tel: (08) 6291 2698‎<br />\n			Hotline: 0987 937 938 - 0947 333 488 - 09 8333 8333</span></span></em></td>\n			<td style="width: 32%; vertical-align: top;"><em><span style="color:#808080;"><span style="font-size: 12px;"><strong>CN Hà Nội:&nbsp;</strong>Tầng 5 số 9 Hồ Tùng Mậu, Q. Cầu Giấy, Hà Nội<br />\n			Tel: (04) 36 856 888<br />\n			Hotline: 0989 166 875 - 0985 777 989</span></span></em></td>\n		</tr>\n		<tr>\n			<td style="vertical-align: top; width: 32%;"><em><span style="color:#808080;"><span style="font-size: 12px;"><strong>CN Tp.HCM:</strong>&nbsp;Số 19 Đường Đặng Tất, Phường Tân Định, Quận 1, Tp.HCM<br />\n			Tel: (08) 6291 2698‎<br />\n			Hotline: 0987 937 938 - 0947 333 488 - 09 8333 8333</span></span></em></td>\n			<td style="vertical-align: top; width: 32%;"><em><span style="color:#808080;"><span style="font-size: 12px;"><strong>CN Đà Lạt:&nbsp;</strong>51D Hùng Vương, Phường 9, Tp.Đà Lạt<br />\n			Tel: (0633) 811 199 - (0633) 811 166<br />\n			Hotline: 0905 362 809 - 0965 82 83 88 - 0965 79 73 88</span></span></em></td>\n		</tr>\n		<tr>\n			<td style="vertical-align: top; width: 32%;"><em><span style="color:#808080;"><span style="font-size: 12px;"><strong>CN Đà Nẵng:</strong>&nbsp;Số 3 Phan Thành Tài, Q.Hải Châu, Tp.Đà Nẵng<br />\n			Tel: (051) 1363 4879<br />\n			Hotline: 0979 391 391 - 0932 743 799</span></span></em></td>\n			<td style="vertical-align: top; width: 32%;"><em><span style="color:#808080;"><span style="font-size: 12px;"><strong>CN Cần Thơ:</strong>&nbsp;140 Xô Viết Nghệ Tĩnh, P.An Hội, Q.Ninh Kiều, Tp.Cần Thơ<br />\n			Tel: (071) 0373 4371<br />\n			Hotline: 0912 187 489 - 0912 287 489</span></span></em></td>\n		</tr>\n	</tbody>\n</table>', '<p><strong>Yêu cầu đào tạo&nbsp;thành công</strong></p>\n\n<p>Bạn đã yêu cầu đào tạo đến&nbsp;Trường dạy nghề Ẩm Thực Netspace thành công. Chúng tôi sẽ kiểm tra và thông báo cho bạn sớm nhất.</p>\n\n<p>Thân chào,</p>', '', 1, 22, 1),
(9, 'Thông báo cho nhân viên', '', 'Thông báo học viên đăng ký hoặc liên hệ', '<p>Gửi bộ phận tư vấn,</p>\n\n<p>Học viên đăng ký trực tuyến từ website <a href="http://www.dayamthuc.vn">www.dayamthuc.vn</a> nhờ tư vấn giúp:</p>\n\n<p style="margin-left: 40px;">Họ tên: <strong>{_name}.&nbsp;{_course}</strong><br />\nVui lòng đăng nhập vào quản trị để biết thông tin học viên&nbsp;<a href="http://www.dayamthuc.vn/cp_admin"><em>http://www.dayamthuc.vn/cp_admin</em></a></p>\n\n<p>Thân chào,<br />\nQuản trị website</p>', '', '', 1, 0, 1),
(10, 'Thông báo liên hệ cho chi nhánh', '', 'Thông báo học viên đăng ký hoặc liên hệ', '<p>Gửi {_branch},</p>\n\n<p>Học viên đăng ký trực tuyến từ website <a href="http://www.dayamthuc.vn">www.dayamthuc.vn</a> nhờ tư vấn giúp:</p>\n\n<p style="margin-left: 40px;">Ngày liên hệ: {_date}<br />\nHọ tên: {_name}<br />\nĐiện thoại: {_phone}<br />\nEmail: {_email}<br />\nĐịa chỉ: {_address}<br />\n<strong>{_course}</strong></p>\n\n<p>Thân chào,<br />\nQuản trị website</p>', '', '', 1, 0, 1);

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
  `parent` int(5) NOT NULL DEFAULT '0',
  `workplaces` int(2) DEFAULT NULL,
  `wage` varchar(50) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `date_duration` bigint(10) DEFAULT NULL,
  `company_id` int(8) DEFAULT NULL,
  `_order` int(5) NOT NULL DEFAULT '0',
  `other` varchar(200) DEFAULT NULL,
  `datetime` bigint(10) NOT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `properties` tinyint(1) NOT NULL DEFAULT '0',
  `type_id` int(2) NOT NULL,
  `position_id` varchar(20) DEFAULT NULL,
  `menu_id` varchar(50) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_header`
--

INSERT INTO `web_header` (`id`, `name`, `name_alias`, `url`, `img`, `title`, `description`, `tags`, `code`, `parent`, `workplaces`, `wage`, `number`, `date_duration`, `company_id`, `_order`, `other`, `datetime`, `lang`, `status`, `properties`, `type_id`, `position_id`, `menu_id`) VALUES
(1, 'Trang chủ', 'trang-chu', 'http://localhost/all_v5/minhnhatland/', '', 'Công ty TNHH Minh Nhật - Bất động sản Minh Nhật', 'Công ty TNHH Minh Nhật - Bất động sản Minh Nhật chuyên kinh doanh bất động sản', 'bất động sản,minh nhật,bat dong san,minh nhat', NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1456732980, 'vi', 1, 1, 1, ',2,', NULL),
(2, 'Giới thiệu', 'gioi-thieu', 'gioi-thieu-minh-nhat', '', 'Giới thiệu', 'Giới thiệu bất động sản Minh Nhật', 'giới thiệu', NULL, 0, NULL, NULL, NULL, NULL, NULL, 2, NULL, 1456734840, 'vi', 1, 1, 5, ',2,', NULL),
(3, 'Slider home', '', '', '1456738157.jpg', '', '', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1456735140, 'vi', 1, 2, 16, ',16,', ',1,'),
(4, 'Dự án', 'du-an', '', '', 'Dự án', 'MINH NHẬT là một trong những sàn giao dịch hàng đầu về tư vấn và dịch vụ địa ốc, đáp ứng nhu cầu giao dịch về bất động sản của Khách hàng một cách nhanh chóng và hiệu quả.', 'dự án', NULL, 0, NULL, NULL, NULL, NULL, NULL, 3, NULL, 1456735860, 'vi', 1, 1, 3, ',2,', NULL),
(8, 'Dự án mới', 'du-an-moi', '', '', 'Dự án mới', 'Minh Nhật là thông tin bất động sản hàng đầu tại Việt Nam tổng hợp dự án Bất động sản, dự án cao ốc văn phòng, dự án khu đô thị,...', 'dự án mới,du an moi', NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1456737060, 'vi', 1, 1, 3, ',8,20,', NULL),
(5, 'Dịch vụ', 'dich-vu', '', '', 'Dịch vụ', 'MINH NHẬT được cung cấp bởi đội ngũ nhân viên với sự kết hợp tinh thần kinh doanh và sự hiểu biết sâu sắc về lĩnh vực bất động sản, được đào tạo theo tiêu chuẩn cao trong lĩnh vực chăm sóc khách hàng', 'dịch vụ,dich vu', NULL, 0, NULL, NULL, NULL, NULL, NULL, 4, NULL, 1456735860, 'vi', 1, 1, 2, ',2,', NULL),
(6, 'Tin tức', 'tin-tuc', '', '', 'Tin tức', '', 'tin tức,tin tuc', NULL, 0, NULL, NULL, NULL, NULL, NULL, 5, NULL, 1456735920, 'vi', 1, 1, 2, ',2,5,', NULL),
(7, 'Liên hệ', 'lien-he', '', '', 'Liên hệ', '', 'liên hệ,lien he', NULL, 0, NULL, NULL, NULL, NULL, NULL, 6, NULL, 1456735980, 'vi', 1, 1, 17, ',2,', NULL),
(9, 'Dự án đầu tư', 'du-an-dau-tu', '', '', 'Dự án đầu tư', 'Tộng hợp thông tin tiến độ các dự án bất động sản, cập nhật quy hoạch hạ tầng các tỉnh, thành. Các dự án bất động sản sắp mở được Minh Nhật cập nhật chi tiết', 'dự án đầu tư', NULL, 1, NULL, NULL, NULL, NULL, NULL, 2, NULL, 1456737120, 'vi', 1, 1, 3, ',8,20,', NULL),
(10, 'Dự án giá tốt', 'du-an-gia-tot', '', '', 'Dự án giá tốt', 'Thông tin chuyên sâu về thị trường nhà đất, quy hoạch khu dân cư, dự án giảm giá, dự án bất động sản, chính sách quy hoạch mới với các nhận định bất động sản Minh Nhật', 'dự án giá tốt', NULL, 1, NULL, NULL, NULL, NULL, NULL, 3, NULL, 1456737120, 'vi', 1, 1, 3, ',8,20,', NULL),
(11, 'Căn hộ Melody Residences', 'melody-residences', '', '1456738109.jpg', 'Căn hộ Melody Residences', 'Cùng thiên nhiên xanh mát trong lành, Melody Residences không chỉ đem đến sự tiện nghi và sang trọng mà còn là nơi lý tưởng', 'căn hộ melody residences,can ho melody residences', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1456737360, 'vi', 1, 2, 3, NULL, ',8,10,4,21,'),
(12, 'Lavita Garden -  Khu vườn điểm tô cho cuộc sống tràn đầy', 'lavita-garden', '', '1456739043.jpg', 'Lavita Garden -  Khu vườn điểm tô cho cuộc sống tràn đầy', 'Đến với Lavita Garden, bạn sẽ đắm chìm trong không gian thơ mộng của một khu vườn tràn đầy sức sống', 'lavita garden,khu vườn điểm tô cho cuộc sống tràn đầy', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1456738200, 'vi', 1, 2, 3, NULL, ',8,10,4,21,'),
(13, 'Căn hộ 8x Rainbow - Chỉ 5 phút đến công viên văn hóa Đầm Sen', 'can-ho-8x-rainbow', '', '1456738793.jpg', 'Căn hộ 8x Rainbow - Chỉ 5 phút đến công viên văn hóa Đầm Sen', 'Giữa dòng người tấp nập của thành phố, cư dân khu căn hộ 8X Rainbow hòa mình vào lòng phố thị nhộn nhịp và sôi động bởi sắc màu tươi trẻ và không gian căng tràn sức sống.', 'căn hộ 8x rainbow,can ho 8x rainbow', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1456738500, 'vi', 1, 2, 3, NULL, ',8,4,21,'),
(14, 'Căn hộ florita - Quận 7', 'can-ho-florita', '', '1456799940.jpg', 'Căn hộ florita - Quận 7', 'Tọa lạc ngay khu đô thị Him Lam Tân Hưng, Florita như một đóa hoa rực rỡ và đầy cuốn hút bởi vị trí nổi bật, thuận tiện kết nối toàn khu vực thành phố', 'căn hộ florita,quận 7,can ho florita', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1456738800, 'vi', 1, 2, 3, NULL, ',8,4,21,'),
(15, 'Căn hộ cao cấp Sky Center - Quận Tân Bình', 'can-ho-cao-cap-sky-center', '', '1456739121.jpg', 'Căn hộ cao cấp Sky Center - Quận Tân Bình', 'Sky Center gồm 04 block (03 block căn hộ và 01 block officetel) được thiết kế theo phong cách hiện đại, kết hợp nghệ thuật tạo hình cảnh quan và bố trí hợp lý', 'căn hộ cao cấp,sky center,quận tân bình,can ho cao cap', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1456738980, 'vi', 1, 2, 3, NULL, ',9,4,21,'),
(16, 'Giai Việt Residence - Quận 8  TpHCM', 'giai-viet-residence', '', '1456739302.jpg', 'Giai Việt Residence - Quận 8  TpHCM', 'Giai Việt Residence sở hữu vị trí đắc địa, 3 mặt tiền đường lớn, trong khu quy hoạch đồng bộ: Trung tâm hành chính, Trung tâm thể dục thể thao, bệnh viện, trường học, siêu thị..', 'giai việt residence,quận 8 hcm,giai viet residence', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1456739220, 'vi', 1, 2, 3, NULL, ',9,4,21,'),
(17, 'Giới thiệu Minh Nhật', 'gioi-thieu-minh-nhat', '', '1456740729.jpg', 'Giới thiệu công ty Minh Nhật', '', 'giới thiệu công ty minh nhật', NULL, 2, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1456739820, 'vi', 1, 1, 5, ',20,', NULL),
(18, 'Quá trình thành lập', 'qua-trinh-thanh-lap', '', '1456740182.jpg', 'Quá trình thành lập', '', 'quá trình thành lập', NULL, 2, NULL, NULL, NULL, NULL, NULL, 2, NULL, 1456739880, 'vi', 1, 1, 5, ',20,', NULL),
(19, 'Lĩnh vực hoạt động', 'linh-vuc-hoat-dong', '', '1456740290.jpg', 'Lĩnh vực hoạt động', '', 'lĩnh vực hoạt động', NULL, 2, NULL, NULL, NULL, NULL, NULL, 3, NULL, 1456739880, 'vi', 1, 1, 5, ',20,', NULL),
(20, 'Chính sách chất lượng', 'chinh-sach-chat-luong', '', '1456740365.jpg', 'Chính sách chất lượng', '', 'chính sách chất lượng', NULL, 2, NULL, NULL, NULL, NULL, NULL, 4, NULL, 1456739880, 'vi', 1, 1, 5, ',20,', NULL),
(21, 'Dự án Tp.HCM', 'du-an-tp-hcm', '', '', 'Dự án Tp.HCM', '', 'dự án tp hcm', NULL, 4, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1456801320, 'vi', 1, 1, 3, ',5,', NULL),
(22, 'Dự án Hà Nội', 'du-an-ha-noi', '', '', 'Dự án Hà Nội', '', 'dự án hà nội', NULL, 4, NULL, NULL, NULL, NULL, NULL, 2, NULL, 1456801380, 'vi', 1, 1, 3, ',5,', NULL),
(23, 'Dự án Đà Nẵng', 'du-an-da-nang', '', '', 'Dự án Đà Nẵng', '', 'dự án đà nẵng', NULL, 4, NULL, NULL, NULL, NULL, NULL, 3, NULL, 1456801380, 'vi', 1, 1, 3, ',5,', NULL),
(24, 'Dự án Bình Dương', 'du-an-binh-duong', '', '', 'Dự án Bình Dương', '', 'dự án bình dương', NULL, 4, NULL, NULL, NULL, NULL, NULL, 4, NULL, 1456801440, 'vi', 1, 1, 3, ',5,', NULL),
(25, 'Dự án Đồng Nai', 'du-an-dong-nai', '', '', 'Dự án Đồng Nai', '', 'dự án đồng nai', NULL, 4, NULL, NULL, NULL, NULL, NULL, 5, NULL, 1456801440, 'vi', 1, 1, 3, ',5,', NULL),
(26, 'Các dự án khác', 'cac-du-an-khac', '', '', 'Các dự án khác', '', 'các dự án khác', NULL, 4, NULL, NULL, NULL, NULL, NULL, 10, NULL, 1456801500, 'vi', 1, 1, 3, ',5,', NULL),
(27, 'Event banner right', '', 'javascript:;', '1456801840.jpg', '', '', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1456801740, 'vi', 0, 2, 16, ',18,', ''),
(28, 'Event banner right 2', '', 'javascript:;', '1456801888.jpg', '', '', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1456801860, 'vi', 1, 2, 16, ',18,', ''),
(29, 'Cơ hội đầu tư bất động sản tại Mỹ', 'co-hoi-dau-tu-bat-dong-san-tai-my', '', '1456803245.png', 'Cơ hội đầu tư bất động sản tại Mỹ', 'Tham dự tọa đàm do Công ty Orient & Pacific Vietnam tổ chức, khách hàng sẽ được tìm hiểu về cơ hội đầu tư vào dự án bất động sản trọng điểm của Mỹ', 'cơ hội đầu tư bất động sản tại mỹ', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1456803000, 'vi', 1, 2, 2, NULL, ',6,'),
(30, 'Thăm quan, nhận quà tặng giá trị tại EcoXuân', 'tham-quan-nhan-qua-tang-gia-tri-tai-ecoxuan', '', '1456803409.jpg', 'Thăm quan, nhận quà tặng giá trị tại EcoXuân', 'Khách đến thăm quan hoặc đặt cọc mua nhà khu đô thị EcoXuân sẽ nhận được nhiều ưu đãi.', 'thăm quan nhận quà tặng giá trị tại ecoxuân', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1456803240, 'vi', 1, 2, 2, NULL, ',6,'),
(35, 'Khu biệt thự The Oasis - Thuận An, Bình Dương', 'khu-biet-thu-the-oasis-thuan-an-binh-duong', '', '1456810217.jpg', 'Khu biệt thự The Oasis - Thuận An, Bình Dương', 'Tọa lạc tại cửa ngõ phía Bắc của TpHCM, kết nối với thị xã Thủ Dầu Một, Bình Dương cũng như thành phố Biên Hòa và Bà Rịa Vũng Tàu, dự án Làng chuyên gia The Oasis được quy hoạch theo phong cách nghỉ dưỡng', 'khu biệt thự the oasis thuận an bình dương,khu biệt thự the oasis', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1456809840, 'vi', 1, 2, 3, NULL, ',9,4,24,'),
(31, 'Dịch Vụ Tư Vấn', 'dich-vu-tu-van', '', '1456805949.jpg', 'Dịch Vụ Tư Vấn', 'Bộ phận Tư vấn cung cấp nhiều dịch vụ đa dạng như nghiên cứu thị trường, tư vấn ý tưởng phát triển, nghiên cứu nhân khẩu học, nghiên cứu khả thi', 'dịch vụ tư vấn', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1456805520, 'vi', 1, 2, 2, NULL, ',5,'),
(32, 'Đại Lý Thương Mại', 'dai-ly-thuong-mai', '', '1456806432.jpg', 'Đại Lý Thương Mại', 'Minh Nhật mang đến cho khách hàng các dịch vụ bất động sản toàn diện: Văn phòng, Bán lẻ, Nhà ở (cho thuê) và Dịch vụ Công nghiệp.', 'đại lý thương mại', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1456806240, 'vi', 1, 2, 2, NULL, ',5,'),
(33, 'Dịch Vụ Kinh Doanh Nhà Ở', 'dich-vu-kinh-doanh-nha-o', '', '1456806791.jpg', 'Dịch Vụ Kinh Doanh Nhà Ở', 'Chúng tôi dẫn đầu thị trường trong lĩnh vực Bất động sản Nhà ở và hiện đang là đại lý bán và cung cấp một loạt các dự án bất động sản nhà ở chất lượng cao trên thị trường Việt Nam và trong khu vực Châu Á Thái Bình Dương', 'dịch vụ kinh doanh nhà ở', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1456806420, 'vi', 1, 2, 2, NULL, ',5,'),
(34, 'Quản Lý Bất Động Sản', 'quan-ly-bat-dong-san', '', '1456807140.jpg', 'Quản Lý Bất Động Sản', 'Minh Nhật là nhà cung cấp dịch vụ hàng đầu về lĩnh vực dịch vụ quản lý chuyên nghiệp tại Châu Á – Thái Bình Dương', 'quản lý bất động sản', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1456806780, 'vi', 1, 2, 2, NULL, ',5,'),
(36, 'Dự án Đà Lạt', 'du-an-da-lat', '', '', 'Dự án Đà Lạt', '', 'dự án đà lạt', NULL, 4, NULL, NULL, NULL, NULL, NULL, 6, NULL, 1456810560, 'vi', 1, 1, 3, ',5,', NULL),
(37, 'Khu biệt thự Hưng Thịnh thành phố Đà Lạt', 'khu-biet-thu-hung-thinh-tp-da-lat', '', '1456810869.jpg', 'Khu biệt thự Hưng Thịnh thành phố Đà Lạt', 'Hài hòa bên đồi thông của Đà Lạt ở độ cao cách mặt nước biển 1.500m, khu biệt thự cao cấp Hưng Thịnh với 11 ngôi biệt thự lãng mạn, huyền ảo theo phong cách kiến trúc Châu Âu.', 'khu biệt thự hưng thịnh,tp đà lạt,khu biet thu hung thinh', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1456810560, 'vi', 1, 2, 3, NULL, ',9,4,36,'),
(38, 'Golf Valley - Phường 2, Thành phố Đà Lạt', 'golf-valley-phuong-2-thanh-pho-da-lat', '', '1456811261.jpg', 'Golf Valley - Phường 2, Thành phố Đà Lạt', 'Golf Valley, điểm nhấn tại trung tâm thành phố Đà Lạt, là một thể thống nhất hoàn hảo gồm các phức hợp kiến trúc cao tầng, hiện đại, đa chức năng với trung tâm thương mại dịch vụ và hội nghị, chuỗi nhà hàng, cà phê, khách sạn', 'golf valley,thành phố đà lạt,golf valley,thanh pho da lat', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1456810920, 'vi', 1, 2, 3, NULL, ',10,4,36,'),
(39, 'Căn hộ 12 View - Căn hộ ngay khu phức hợp thương mại dịch vụ 38HA', 'can-ho-12-view-can-ho-ngay-khu-phuc-hop-thuong-mai-dich-vu-38ha', '', '1456811641.jpg', 'Căn hộ 12 View - Căn hộ ngay khu phức hợp thương mại dịch vụ 38HA', 'Tọa lạc tại khu đô thị được quy hoạch đồng bộ của quận 12, đồng thời  giáp ranh vùng dân cư sầm uất của các quận lân cận - căn hộ 12 View hội tụ những tiêu chí thiết yếu của một dự án bất động sản có tiềm năng cao', 'căn hộ 12 view,căn hộ ngay khu phức hợp thương mại dịch vụ 38ha', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1456811340, 'vi', 1, 2, 3, NULL, ',10,4,21,'),
(40, 'Facebook', 'facebook', 'javascript:;', '1456814153.png', 'Facebook', '', 'facebook', NULL, 0, NULL, NULL, NULL, NULL, NULL, 51, NULL, 1456814100, 'vi', 1, 1, 20, ',6,', NULL),
(41, 'Youtube', 'youtube', 'javascript:;', '1456814176.png', 'Youtube', '', 'youtube', NULL, 0, NULL, NULL, NULL, NULL, NULL, 52, NULL, 1456814160, 'vi', 1, 1, 20, ',6,', NULL),
(42, 'Google plus', 'google-plus', 'javascript:;', '1456814196.png', 'Google plus', '', 'google plus', NULL, 0, NULL, NULL, NULL, NULL, NULL, 53, NULL, 1456814160, 'vi', 1, 1, 20, ',6,', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `web_ip_address`
--

CREATE TABLE IF NOT EXISTS `web_ip_address` (
`id` int(11) NOT NULL,
  `ip_address` varchar(20) NOT NULL,
  `datetime` bigint(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_ip_address`
--

INSERT INTO `web_ip_address` (`id`, `ip_address`, `datetime`) VALUES
(1, '::1', 1454328892),
(2, '115.78.128.150', 1454526238),
(3, '115.78.128.150', 1454526841),
(4, '115.78.128.150', 1454527283),
(5, '115.78.128.150', 1454527460),
(6, '115.78.128.150', 1454528704),
(7, '115.78.128.150', 1454528872),
(8, '115.78.128.150', 1454529066),
(9, '115.78.128.150', 1454529680),
(10, '115.78.128.150', 1454530127),
(11, '115.78.128.150', 1454530580),
(12, '115.78.128.150', 1454530715),
(13, '115.78.128.150', 1454531315),
(14, '27.75.119.240', 1454729040),
(15, '42.116.215.38', 1454888207),
(16, '42.116.215.38', 1454888390),
(17, '42.116.215.38', 1454888470),
(18, '42.116.215.38', 1454888512),
(19, '42.116.215.38', 1454888557),
(20, '42.116.215.38', 1454888615),
(21, '14.185.69.157', 1454962553),
(22, '116.110.245.126', 1454996229),
(23, '116.110.245.126', 1454996391),
(24, '116.110.245.126', 1454996932),
(25, '123.26.110.142', 1455008337),
(26, '14.176.207.247', 1455065250),
(27, '8.37.230.33', 1455068919),
(28, '117.5.85.125', 1455086650),
(29, '27.66.139.145', 1455098634),
(30, '171.248.145.46', 1455146580),
(31, '14.162.201.255', 1455188898),
(32, '168.235.206.164', 1455221770),
(33, '14.173.96.201', 1455231167),
(34, '171.255.143.72', 1455253890),
(35, '171.255.143.72', 1455253965),
(36, '27.77.154.49', 1455272897),
(37, '116.105.234.113', 1455304278),
(38, '113.174.139.157', 1455305216),
(39, '115.78.128.150', 1455305734),
(40, '115.78.128.150', 1455305836),
(41, '115.78.128.150', 1455305972),
(42, '115.78.128.150', 1455306528),
(43, '42.112.83.223', 1455320532),
(44, '42.114.38.140', 1455331904),
(45, '118.71.98.55', 1455356199),
(46, '118.69.57.60', 1455358980),
(47, '118.69.57.60', 1455359224),
(48, '171.251.41.131', 1455396526),
(49, '27.3.32.43', 1455401434),
(50, '220.71.229.153', 1455404783),
(51, '14.186.188.227', 1455417762),
(52, '113.176.152.161', 1455431835),
(53, '171.255.150.94', 1455433287),
(54, '42.113.167.39', 1455440610),
(55, '14.186.144.70', 1455506699),
(56, '42.117.66.4', 1455522790),
(57, '116.107.3.94', 1455586286),
(58, '113.174.174.158', 1455602485),
(59, '113.189.185.170', 1455608199),
(60, '14.165.240.169', 1455653144),
(61, '118.70.60.253', 1455654367),
(62, '113.190.253.17', 1455656464),
(63, '14.182.135.155', 1455660478),
(64, '180.148.3.190', 1455671758),
(65, '58.187.163.238', 1455685558),
(66, '113.190.233.146', 1455688203),
(67, '42.116.71.90', 1455695795),
(68, '113.166.250.40', 1455716848),
(69, '113.166.250.40', 1455717196),
(70, '171.253.10.47', 1455736963),
(71, '1.54.60.67', 1455739650),
(72, '115.73.247.201', 1455742660),
(73, '42.119.34.145', 1455743979),
(74, '115.79.49.70', 1455747622),
(75, '115.78.128.150', 1455753565),
(76, '115.78.11.63', 1455758513),
(77, '118.70.60.253', 1455774361),
(78, '171.232.131.96', 1455774745),
(79, '171.232.131.96', 1455774996),
(80, '171.232.131.96', 1455775258),
(81, '1.53.176.173', 1455775440),
(82, '14.175.162.158', 1455780108),
(83, '66.249.82.72', 1455780651),
(84, '113.189.4.252', 1455786591),
(85, '116.100.163.86', 1455817274),
(86, '115.78.162.143', 1455840185),
(87, '123.20.54.98', 1455840793),
(88, '117.2.227.236', 1455843557),
(89, '14.186.136.160', 1455844015),
(90, '113.185.25.35', 1455853677),
(91, '42.115.190.148', 1455879384),
(92, '14.186.156.119', 1455932393),
(93, '42.115.190.148', 1455949532),
(94, '27.69.85.220', 1455960660),
(95, '115.78.122.233', 1456034682),
(96, '115.78.122.233', 1456034900),
(97, '8.37.233.187', 1456034961),
(98, '117.6.113.85', 1456046036),
(99, '117.6.113.85', 1456046258),
(100, '115.76.202.98', 1456077159),
(101, '115.76.202.98', 1456077260),
(102, '117.6.49.194', 1456119597),
(103, '183.81.12.83', 1456139548),
(104, '183.81.12.83', 1456139764),
(105, '113.161.91.167', 1456165239),
(106, '113.161.70.212', 1456175139),
(107, '1.52.230.15', 1456177913),
(108, '171.248.10.42', 1456178991),
(109, '14.169.102.103', 1456186955),
(110, '113.161.102.129', 1456189557),
(111, '14.186.42.227', 1456253615),
(112, '171.255.167.195', 1456258076),
(113, '115.75.209.148', 1456261196),
(114, '171.248.40.18', 1456300725),
(115, '113.184.77.187', 1456357396),
(116, '116.102.197.33', 1456393959),
(117, '113.162.77.110', 1456395596),
(118, '116.106.5.158', 1456459462),
(119, '113.163.8.245', 1456547061),
(120, '113.161.83.254', 1456549918),
(121, '118.68.15.166', 1456554047),
(122, '14.188.211.147', 1456568090),
(123, '113.170.12.216', 1456584798),
(124, '115.76.14.184', 1456590613),
(125, '113.166.159.9', 1456624856),
(126, '171.255.0.10', 1456713805),
(127, '118.69.62.131', 1456714380);

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
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_listcity`
--

INSERT INTO `web_listcity` (`id`, `name`, `deliverycosts`, `_order`, `lang`, `status`) VALUES
(3, 'Hồ Chí Minh', 5000, 10, 'vi', 1),
(2, 'Hà Nội', 30000, 9, 'vi', 1),
(10, 'Yên Bái', 0, 0, 'vi', 1),
(11, 'Vĩnh Phúc', 0, 0, 'vi', 1),
(12, 'Vĩnh Long', 0, 0, 'vi', 1),
(13, 'Tuyên Quang', 0, 0, 'vi', 1),
(14, 'Trà Vinh', 0, 0, 'vi', 1),
(15, 'Tiền Giang', 0, 0, 'vi', 1),
(16, 'Thừa Thiên Huế', 0, 8, 'vi', 1),
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
(53, 'Đồng Nai', 0, 6, 'vi', 1),
(54, 'Điện Biên', 0, 0, 'vi', 1),
(55, 'Đắk Nông', 0, 0, 'vi', 1),
(56, 'Đắk Lắk', 0, 0, 'vi', 1),
(57, 'Cao Bằng', 0, 0, 'vi', 1),
(58, 'Cà Mau', 0, 0, 'vi', 1),
(59, 'Bình Thuận', 0, 0, 'vi', 1),
(60, 'Bình Phước', 0, 0, 'vi', 1),
(61, 'Bình Dương', 0, 5, 'vi', 1),
(62, 'Bình Định', 0, 0, 'vi', 1),
(63, 'Bến Tre', 0, 0, 'vi', 1),
(64, 'Bắc Ninh', 0, 0, 'vi', 1),
(65, 'Bạc Liêu', 0, 0, 'vi', 1),
(66, 'Bắc Kạn', 0, 0, 'vi', 1),
(67, 'Bắc Giang', 0, 0, 'vi', 1),
(68, 'Bà Rịa - Vũng Tàu', 0, 0, 'vi', 1),
(69, 'An Giang', 0, 0, 'vi', 1),
(70, 'Hải Phòng', 0, 3, 'vi', 1),
(71, 'Đà Nẵng', 0, 7, 'vi', 1),
(72, 'Cần Thơ', 30000, 4, 'vi', 1),
(73, 'Nước ngoài', 0, 2, 'vi', 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=996 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_logs`
--

INSERT INTO `web_logs` (`id`, `name`, `action`, `_table`, `table_id`, `datetime`, `username`, `content`, `lang`, `status`, `date_restore`, `user_restore`) VALUES
(1, 'Dương Văn Sử', 'create', 'web_contact', 4283, 1454729040, 'customer', '', 'vi', 0, NULL, NULL),
(2, 'gia huy', 'create', 'web_contact', 4284, 1454888207, 'admin', '', 'vi', 0, NULL, NULL),
(3, 'Nguyễn Ngọc Ái Khanh', 'create', 'web_contact', 4285, 1454888390, 'admin', '', 'vi', 0, NULL, NULL),
(4, 'Huỳnh Diểm Phúc', 'create', 'web_contact', 4286, 1454888470, 'admin', '', 'vi', 0, NULL, NULL),
(5, 'Phan Thị Minh Anh', 'create', 'web_contact', 4287, 1454888512, 'admin', '', 'vi', 0, NULL, NULL),
(6, 'Trần quang Hoàng', 'create', 'web_contact', 4288, 1454888557, 'admin', '', 'vi', 0, NULL, NULL),
(7, 'Nguyễn Trung Kiên', 'create', 'web_contact', 4289, 1454888615, 'admin', '', 'vi', 0, NULL, NULL),
(8, 'Trần quang Hoàng', 'update', 'web_contact', 4288, 1454888629, 'admin', 'id,name,email,phone,address,message,date_birthday,branch,course_name,datetime,lang,status,type,staff_id,header_idfields%%%values4288%%%Trần quang Hoàng%%%nhan300489@gmail.com%%%0968321995%%%Thọ đa-kim nỗ-đông anh-hà nội%%%E muốn trung tâm tư vấn giúp em ạ....trong quá trình học e muốn đi thực tập tại các quán do học viên của netspa mở ạ để thực tế hơn, nhà e ở hà nội nhưng e muốn vào trong HCM học hơn, để tiếp cận mô hình kinh doanh trong ý ạ..\nHoc o TpHCM%%%%%%%%%%%%1454888527%%%vi%%%0%%%2%%%%%%589', 'vi', 0, NULL, NULL),
(9, 'Nguyễn Ngọc Ái Khanh', 'update', 'web_contact', 4285, 1454888636, 'admin', 'id,name,email,phone,address,message,date_birthday,branch,course_name,datetime,lang,status,type,staff_id,header_idfields%%%values4285%%%Nguyễn Ngọc Ái Khanh%%%nhan300489@gmail.com%%%0986274222%%%TpHCM%%%%%%%%%%%%%%%1454888297%%%vi%%%0%%%2%%%%%%477', 'vi', 0, NULL, NULL),
(10, 'Phan Thị Minh Anh', 'update', 'web_contact', 4287, 1454888659, 'admin', 'id,name,email,phone,address,message,date_birthday,branch,course_name,datetime,lang,status,type,staff_id,header_idfields%%%values4287%%%Phan Thị Minh Anh%%%Minhanh304@gmail.com%%%0901123153%%%K235/h65/10 Tiểu La%%%hoc o DaNang%%%%%%%%%%%%1454888483%%%vi%%%0%%%2%%%%%%22', 'vi', 0, NULL, NULL),
(11, 'Học bí quyết nấu bún riêu', 'create', 'web_header', 1422, 1454889303, 'admin', '', 'vi', 0, NULL, NULL),
(12, 'Học bí quyết nấu bún riêu', 'update', 'web_header', 1422, 1454889503, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1422%%%Học bí quyết nấu bún riêu%%%hoc-nau-bun-rieu%%%%%%%%%Học nấu bún riêu - Bí quyết nấu bún riêu | Hoc nau bun tieu%%%Bún Riêu là món dân dã nổi tiếng trong kho tàng ẩm thực Việt Nam có suất xứ từ miền Bắc Việt Nam và đây là món ăn đường phố rẻ, ngon vì nhiều người yêu thích%%%học nấu bún riêu,bí quyết nấu bún riêu,hoc nau bun rieu%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1454889000%%%vi%%%1%%%2%%%3%%%%%%,32,', 'vi', 0, NULL, NULL),
(13, 'Học bí quyết nấu bún riêu', 'update', 'web_header', 1422, 1454889542, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1422%%%Học bí quyết nấu bún riêu%%%hoc-nau-bun-rieu%%%%%%1454889308.jpg%%%Học nấu bún riêu - Bí quyết nấu bún riêu | Hoc nau bun tieu%%%Bún Riêu là món dân dã nổi tiếng trong kho tàng ẩm thực Việt Nam có suất xứ từ miền Bắc Việt Nam và đây là món ăn đường phố rẻ, ngon vì nhiều người yêu thích%%%học nấu bún riêu,bí quyết nấu bún riêu,hoc nau bun rieu%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1454889000%%%vi%%%1%%%2%%%3%%%%%%,32,', 'vi', 0, NULL, NULL),
(14, 'Học nấu Bánh canh', 'create', 'web_header', 1423, 1454889788, 'admin', '', 'vi', 0, NULL, NULL),
(15, 'Học nấu Bánh canh', 'update', 'web_header', 1423, 1454889954, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1423%%%Học nấu Bánh canh%%%hoc-nau-banh-canh%%%%%%%%%Học nấu Bánh canh | Hoc nau banh canh%%%Món bánh canh là món ăn đa dạng, rất nhiều chủng loại như: bánh canh giò heo, bánh canh cá lóc, bánh canh cua, bánh canh ghẹ%%%học nấu bánh canh,hoc nau banh canh%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1454889540%%%vi%%%1%%%2%%%3%%%%%%,32,', 'vi', 0, NULL, NULL),
(16, 'Học nấu Bánh canh', 'update', 'web_header', 1423, 1454889989, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1423%%%Học nấu Bánh canh%%%hoc-nau-banh-canh%%%%%%1454889793.jpg%%%Học nấu Bánh canh | Hoc nau banh canh%%%Món bánh canh là món ăn đa dạng, rất nhiều chủng loại như: bánh canh giò heo, bánh canh cá lóc, bánh canh cua, bánh canh ghẹ%%%học nấu bánh canh,hoc nau banh canh%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1454889540%%%vi%%%1%%%2%%%3%%%%%%,32,', 'vi', 0, NULL, NULL),
(17, 'Học bí quyết làm bánh cuốn', 'create', 'web_header', 1424, 1454890139, 'admin', '', 'vi', 0, NULL, NULL),
(18, 'Học bí quyết làm bánh cuốn', 'update', 'web_header', 1424, 1454890267, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1424%%%Học bí quyết làm bánh cuốn%%%hoc-banh-cuon%%%%%%%%%Học bí quyết làm bánh cuốn | Hoc banh cuon%%%Bánh cuốn là một món ăn quen thuộc của người Việt. Món bánh cuốn truyền thống, phổ biến được nhiều người ưa thích nhất là bánh cuốn nhân thịt ăn kèm với nem, chả%%%học bí quyết làm bánh cuốn,hoc banh cuon%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1454890020%%%vi%%%1%%%2%%%3%%%%%%,32,', 'vi', 0, NULL, NULL),
(19, 'Học bí quyết làm bánh cuốn', 'update', 'web_header', 1424, 1454890294, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1424%%%Học bí quyết làm bánh cuốn%%%hoc-banh-cuon%%%%%%1454890143.jpg%%%Học bí quyết làm bánh cuốn | Hoc banh cuon%%%Bánh cuốn là một món ăn quen thuộc của người Việt. Món bánh cuốn truyền thống, phổ biến được nhiều người ưa thích nhất là bánh cuốn nhân thịt ăn kèm với nem, chả%%%học bí quyết làm bánh cuốn,hoc banh cuon%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1454890020%%%vi%%%1%%%2%%%3%%%%%%,32,', 'vi', 0, NULL, NULL),
(20, 'Học nấu Bánh canh', 'update', 'web_header', 1423, 1454890350, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1423%%%Học nấu Bánh canh%%%hoc-nau-banh-canh%%%%%%1454889793.jpg%%%Học nấu Bánh canh | Hoc nau banh canh%%%Món bánh canh là món ăn đa dạng, rất nhiều chủng loại như: bánh canh giò heo, bánh canh cá lóc, bánh canh cua, bánh canh ghẹ%%%học nấu bánh canh,hoc nau banh canh%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1454889540%%%vi%%%1%%%2%%%3%%%%%%,32,', 'vi', 0, NULL, NULL),
(21, 'Học bí quyết nấu Bún dọc mùng (Bún Bung)', 'create', 'web_header', 1425, 1454890582, 'admin', '', 'vi', 0, NULL, NULL),
(22, 'Học bí quyết nấu Bún dọc mùng (Bún Bung)', 'update', 'web_header', 1425, 1454890711, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1425%%%Học bí quyết nấu Bún dọc mùng (Bún Bung)%%%hoc-nau-bun-bung%%%%%%%%%Học bí quyết nấu Bún dọc mùng | Bun doc mung | Nau Bun Bung%%%Bún dọc mùng (Bún Bung) là một trong những món (bún) ăn sáng phổ biến nhất tại Hà Nội, rất dễ làm có thể ăn vào Xuân, Hạ, Thu, Đông, mùa nào ăn cũng hợp cả%%%học bí quyết,nấu bún dọc mùng,bún bung,bun doc mung,bun bung%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1454890380%%%vi%%%1%%%2%%%3%%%%%%,32,', 'vi', 0, NULL, NULL),
(23, 'Học bí quyết nấu Bún dọc mùng (Bún Bung)', 'update', 'web_header', 1425, 1454890734, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1425%%%Học bí quyết nấu Bún dọc mùng (Bún Bung)%%%hoc-nau-bun-bung%%%%%%1454890585.jpg%%%Học bí quyết nấu Bún dọc mùng | Bun doc mung | Nau Bun Bung%%%Bún dọc mùng (Bún Bung) là một trong những món (bún) ăn sáng phổ biến nhất tại Hà Nội, rất dễ làm có thể ăn vào Xuân, Hạ, Thu, Đông, mùa nào ăn cũng hợp cả%%%học bí quyết,nấu bún dọc mùng,bún bung,bun doc mung,bun bung%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1454890380%%%vi%%%1%%%2%%%3%%%%%%,32,', 'vi', 0, NULL, NULL),
(24, 'Học bí quyết nấu Bún mọc', 'create', 'web_header', 1426, 1454890909, 'admin', '', 'vi', 0, NULL, NULL),
(25, 'Học bí quyết nấu Bún mọc', 'update', 'web_header', 1426, 1454891081, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1426%%%Học bí quyết nấu Bún mọc%%%hoc-nau-bun-moc%%%%%%%%%Học nấu Bún mọc - Bí quyết nấu Bún mọc | Hoc nau bun moc%%%Món bún mọc đã rất quen thuộc trong đời sống hằng ngày kinh doanh món bún mọc đòi hỏi bí quyết nấu riêng để có hương vị đậm đà.%%%học nấu bún mọc,nấu bún mọc,hoc nau bun moc,nau bun moc%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1454890740%%%vi%%%1%%%2%%%3%%%%%%,32,', 'vi', 0, NULL, NULL),
(26, 'Học bí quyết nấu Bún mọc', 'update', 'web_header', 1426, 1454891100, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1426%%%Học bí quyết nấu Bún mọc%%%hoc-nau-bun-moc%%%%%%1454890912.jpg%%%Học nấu Bún mọc - Bí quyết nấu Bún mọc | Hoc nau bun moc%%%Món bún mọc đã rất quen thuộc trong đời sống hằng ngày kinh doanh món bún mọc đòi hỏi bí quyết nấu riêng để có hương vị đậm đà.%%%học nấu bún mọc,nấu bún mọc,hoc nau bun moc,nau bun moc%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1454890740%%%vi%%%1%%%2%%%3%%%%%%,32,', 'vi', 0, NULL, NULL),
(27, 'Học bí quyết làm bún chả Hà Nội', 'create', 'web_header', 1427, 1454891216, 'admin', '', 'vi', 0, NULL, NULL),
(28, 'Học bí quyết làm bún chả Hà Nội', 'update', 'web_header', 1427, 1454891350, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1427%%%Học bí quyết làm bún chả Hà Nội%%%hoc-bun-cha%%%%%%%%%Học bí quyết làm bún chả Hà Nội | Hoc lam bun cha%%%Nhắc đến bún chả Hà Nội thì ai cũng có thể biết đó là món ăn phổ biến và nổi tiếng của Người Hà Nội. Nhưng để tìm được một quán bún chả Hà Nội ngon thì không phải dễ%%%học bí quyết,làm bún chả hà nội,hoc lam bun cha%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1454891100%%%vi%%%1%%%2%%%3%%%%%%,32,', 'vi', 0, NULL, NULL),
(29, 'Học bí quyết làm bún chả Hà Nội', 'update', 'web_header', 1427, 1454891378, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1427%%%Học bí quyết làm bún chả Hà Nội%%%hoc-bun-cha%%%%%%1454891220.jpg%%%Học bí quyết làm bún chả Hà Nội | Hoc lam bun cha%%%Nhắc đến bún chả Hà Nội thì ai cũng có thể biết đó là món ăn phổ biến và nổi tiếng của Người Hà Nội. Nhưng để tìm được một quán bún chả Hà Nội ngon thì không phải dễ%%%học bí quyết,làm bún chả hà nội,hoc lam bun cha%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1454891100%%%vi%%%1%%%2%%%3%%%%%%,32,', 'vi', 0, NULL, NULL),
(30, 'Học làm giò lụa', 'create', 'web_header', 1428, 1454891507, 'admin', '', 'vi', 0, NULL, NULL),
(31, 'Học làm giò lụa', 'update', 'web_header', 1428, 1454891778, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1428%%%Học làm giò lụa%%%hoc-lam-gio-lua%%%%%%%%%Học làm giò lụa%%%Dạy bí quyết làm chả lụa, làm chả bò, làm giò thủ, làm chà bông, làm bò viên, làm giò sống, làm jambon%%%học làm giò lụa,hoc lam gio lua%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1454891400%%%vi%%%1%%%2%%%3%%%%%%,32,', 'vi', 0, NULL, NULL),
(32, 'Học làm giò lụa', 'update', 'web_header', 1428, 1454891802, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1428%%%Học làm giò lụa%%%hoc-lam-gio-lua%%%%%%1454891512.jpg%%%Học làm giò lụa%%%Dạy bí quyết làm chả lụa, làm chả bò, làm giò thủ, làm chà bông, làm bò viên, làm giò sống, làm jambon%%%học làm giò lụa,hoc lam gio lua%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1454891400%%%vi%%%1%%%2%%%3%%%%%%,32,', 'vi', 0, NULL, NULL),
(33, 'Học làm giò lụa', 'update', 'web_header', 1428, 1454891863, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1428%%%Học làm giò lụa%%%hoc-lam-gio-lua%%%%%%1454891512.jpg%%%Học làm giò lụa%%%Dạy bí quyết làm chả lụa, làm chả bò, làm giò thủ, làm chà bông, làm bò viên, làm giò sống, làm jambon%%%học làm giò lụa,hoc lam gio lua%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1454891400%%%vi%%%1%%%2%%%3%%%%%%,32,', 'vi', 0, NULL, NULL),
(34, 'Học rang xay cà phê', 'update', 'web_header', 672, 1454892148, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values672%%%Học rang xay cà phê%%%hoc-rang-xay-ca-phe-364%%%%%%1389702490.jpg%%%Học rang xay cà phê%%%Học rang xay cà phê ngon để kinh doanh là cả một quá trình mang tính kỹ thuật và nghệ thuật cao để tạo nên những hạt cà phê, giọt cà phê thơm ngon, đặc sắc, gieo vào tâm hồn người thưởng thức%%%Học rang xay cà phê,hoc rang xay ca phe%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1389701880%%%vi%%%1%%%2%%%2%%%%%%,6,68,', 'vi', 0, NULL, NULL),
(35, 'Học rang xay cà phê', 'update', 'web_header', 672, 1454892169, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values672%%%Học rang xay cà phê%%%hoc-rang-xay-ca-phe-364%%%%%%1389702490.jpg%%%Học rang xay cà phê | Hoc rang xay ca phe%%%Hoàn tất khóa học học viên có thể tự mở Cơ sở rang xay cafe và Chế biến cà phê theo quy trình, Công nghệ khép kín từ cà phê thô đến đóng bao thành phẩm%%%Học rang xay cà phê,hoc rang xay ca phe%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1389701880%%%vi%%%1%%%2%%%2%%%%%%,6,68,', 'vi', 0, NULL, NULL),
(36, 'Học rang xay cà phê', 'update', 'web_header', 672, 1454892327, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values672%%%Học rang xay cà phê%%%hoc-rang-xay-ca-phe-364%%%%%%1389702490.jpg%%%Học rang xay cà phê | Hoc rang xay ca phe%%%Hoàn tất khóa học học viên có thể tự mở Cơ sở rang xay cafe và Chế biến cà phê theo quy trình, Công nghệ khép kín từ cà phê thô đến đóng bao thành phẩm%%%Học rang xay cà phê,hoc rang xay ca phe%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1389701880%%%vi%%%1%%%2%%%3%%%%%%,', 'vi', 0, NULL, NULL),
(37, 'Học rang xay cà phê', 'update', 'web_header', 485, 1454892342, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values485%%%Học rang xay cà phê%%%hoc-rang-xay-ca-phe%%%%%%1430105823.jpg%%%Học rang xay cà phê%%%Học viên sẽ được học cách sản xuất và chế biến 40kg cà phê chất lượng cao với những máy móc, thiết bị chuẩn và được hướng dẫn những kỹ năng và bí quyết trong nghề.%%%học rang cà phê,hoc rang ca phe,xay cafe,xay ca phe%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1430105400%%%vi%%%1%%%2%%%3%%%%%%,210,', 'vi', 0, NULL, NULL),
(38, 'Học bí quyết rang, xay cà phê', 'update', 'web_header', 672, 1454892452, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values672%%%Học bí quyết rang, xay cà phê%%%hoc-rang-xay-ca-phe-364%%%%%%1389702490.jpg%%%Học rang xay cà phê - Bí quyết rang xay cà phê | Rang xay ca phe%%%Hoàn tất khóa học học viên có thể tự mở Cơ sở rang xay cafe và Chế biến cà phê theo quy trình, Công nghệ khép kín từ cà phê thô đến đóng bao thành phẩm%%%Học rang xay cà phê,hoc rang xay ca phe%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1389701880%%%vi%%%1%%%2%%%3%%%%%%,32,', 'vi', 0, NULL, NULL),
(39, 'Admin', 'update', 'web_users', 25, 1454894719, 'admin', 'id,name,address,phone,email,birthday,gender,img,salt,page,username,password,random_key,date_expiration,lang,datetime,status,group_idfields%%%values25%%%Admin%%%123 CMT 8%%%0988 388 003%%%admin@localhost.com%%%0%%%1%%%%%%%%%3%%%admin%%%52e4ab92c412c5aadf3a0970779da825%%%%%%0%%%vi%%%0%%%1%%%3', 'vi', 0, NULL, NULL),
(40, 'Admin', 'update', 'web_users', 25, 1454894811, 'admin', 'id,name,address,phone,email,birthday,gender,img,salt,page,username,password,random_key,date_expiration,lang,datetime,status,group_idfields%%%values25%%%Admin%%%123 CMT 8%%%0988 388 003%%%admin@localhost.com%%%0%%%1%%%%%%%%%1%%%admin%%%52e4ab92c412c5aadf3a0970779da825%%%%%%0%%%vi%%%0%%%1%%%3', 'vi', 0, NULL, NULL),
(41, 'Admin', 'update', 'web_users', 25, 1454896074, 'admin', 'id,name,address,phone,email,birthday,gender,img,salt,page,username,password,random_key,date_expiration,lang,datetime,status,group_idfields%%%values25%%%Admin%%%123 CMT 8%%%0988 388 003%%%admin@localhost.com%%%0%%%1%%%%%%%%%1%%%admin%%%52e4ab92c412c5aadf3a0970779da825%%%%%%0%%%vi%%%0%%%1%%%3', 'vi', 0, NULL, NULL),
(42, 'Admin', 'update', 'web_users', 25, 1454896085, 'admin', 'id,name,address,phone,email,birthday,gender,img,salt,page,username,password,random_key,date_expiration,lang,datetime,status,group_idfields%%%values25%%%Admin%%%123 CMT 8%%%0988 388 003%%%admin@localhost.com%%%0%%%1%%%%%%%%%1%%%admin%%%52e4ab92c412c5aadf3a0970779da825%%%%%%0%%%vi%%%0%%%1%%%3', 'vi', 0, NULL, NULL),
(43, 'trần văn công', 'create', 'web_contact', 4290, 1454962553, 'customer', '', 'vi', 0, NULL, NULL),
(44, 'mai thị phương', 'create', 'web_contact', 4291, 1454996229, 'customer', '', 'vi', 0, NULL, NULL),
(45, 'mai thị phương', 'create', 'web_contact', 4292, 1454996391, 'customer', '', 'vi', 0, NULL, NULL),
(46, 'mai thị phương', 'create', 'web_contact', 4293, 1454996932, 'customer', '', 'vi', 0, NULL, NULL),
(47, 'nguyen van tu', 'create', 'web_contact', 4294, 1455008337, 'customer', '', 'vi', 0, NULL, NULL),
(48, 'lâm văn an', 'create', 'web_contact', 4295, 1455065250, 'customer', '', 'vi', 0, NULL, NULL),
(49, 'Nguyen xuân dung', 'create', 'web_contact', 4296, 1455068919, 'customer', '', 'vi', 0, NULL, NULL),
(50, 'le dieu oanh', 'create', 'web_contact', 4297, 1455086650, 'customer', '', 'vi', 0, NULL, NULL),
(51, 'Phùng Thị Biên', 'create', 'web_contact', 4298, 1455098634, 'customer', '', 'vi', 0, NULL, NULL),
(52, 'le minh tri', 'create', 'web_contact', 4299, 1455146580, 'customer', '', 'vi', 0, NULL, NULL),
(53, 'Bài Ca Phở Trường dạy học nấu ăn', 'update', 'web_header', 1177, 1455160591, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1177%%%Bài Ca Phở Trường dạy học nấu ăn%%%bai-ca-pho-truong-day-hoc-nau-an%%%%%%1388639313.JPG%%%Bài Ca Phở Trường dạy học nấu ăn%%%Bài Ca Phở Trường dạy học nấu ăn%%%netspace%%%48HDCdBcasU%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1388638140%%%vi%%%1%%%2%%%2%%%%%%,45,46,72,', 'vi', 0, NULL, NULL),
(54, 'Vũ Ngọc Lam', 'create', 'web_contact', 4300, 1455188898, 'customer', '', 'vi', 0, NULL, NULL),
(55, 'hoàng xuân hưng', 'create', 'web_contact', 4301, 1455221770, 'customer', '', 'vi', 0, NULL, NULL),
(56, 'Hoàng Thùy Anh', 'create', 'web_contact', 4302, 1455231167, 'customer', '', 'vi', 0, NULL, NULL),
(57, 'Hoàng Minh Tuấn', 'create', 'web_contact', 4303, 1455253890, 'customer', '', 'vi', 0, NULL, NULL),
(58, 'Hoàng Minh Tuấn', 'create', 'web_contact', 4304, 1455253965, 'customer', '', 'vi', 0, NULL, NULL),
(59, 'Thuy trang', 'create', 'web_contact', 4305, 1455272897, 'customer', '', 'vi', 0, NULL, NULL),
(60, 'Trang chủ', 'update', 'web_header', 378, 1455304049, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values378%%%Trang chủ%%%trang-chu%%%http://www.dayamthuc.vn/dayamthuc%%%%%%Trường dạy nấu ăn - mở quán ăn - học nấu ăn - Học pha chế - Dạy pha chế%%%Trường dạy nấu ăn NetSpace chuyên đào tạo bếp chính, bếp trưởng, đào tạo mở quán ăn, học pha chế và các khóa học nấu ăn chuyên sâu.%%%trường dạy nấu ăn,học nấu ăn,mở quán ăn,học bếp chính,bếp trưởng,học pha chế,dạy pha chế,day nau an,pha che,netspace%%%%%%0%%%%%%%%%%%%%%%%%%30%%%%%%1453974480%%%vi%%%1%%%1%%%1%%%,2,', 'vi', 0, NULL, NULL),
(61, 'Trang chủ', 'update', 'web_header', 378, 1455304139, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values378%%%Trang chủ%%%trang-chu%%%http://www.dayamthuc.vn%%%%%%Trường dạy nấu ăn - mở quán ăn - học nấu ăn - Học pha chế - Dạy pha chế%%%Trường dạy nấu ăn NetSpace chuyên đào tạo bếp chính, bếp trưởng, đào tạo mở quán ăn, học pha chế và các khóa học nấu ăn chuyên sâu.%%%trường dạy nấu ăn,học nấu ăn,mở quán ăn,học bếp chính,bếp trưởng,học pha chế,dạy pha chế,day nau an,pha che,netspace%%%%%%0%%%%%%%%%%%%%%%%%%30%%%%%%1453974480%%%vi%%%1%%%1%%%1%%%,2,', 'vi', 0, NULL, NULL),
(62, 'nguyễn văn thanh', 'create', 'web_contact', 4306, 1455304278, 'customer', '', 'vi', 0, NULL, NULL),
(63, 'Khóa học', 'update', 'web_event_form', 7, 1455304404, 'admin', 'id,name,img,subject,content,notification,email,type,type_id,statusfields%%%values7%%%Khóa học%%%%%%Thông báo đăng ký khóa học của Trường Netspace%%%<p>Kính gởi bạn {_name},</p>\n\n<p>Cảm ơn bạn đã quan tâm đến các khóa học của Trường dạy nghề Ẩm Thực Netspace.</p>\n\n<p>Xin thông báo bạn đã đăng ký khóa học của Trường dạy nghề Ẩm Thực Netspace&nbsp;thành công.</p>\n\n<p style="margin-left: 40px;">Khóa học: <strong>{_course}</strong></p>\n\n<p>Trường dạy nghề Ẩm Thực Netspace sẽ kiểm tra và thông báo lịch khai giảng cho bạn sớm nhất.</p>\n\n<p>Một lần nữa, cảm ơn bạn đã quan tâm đến các khóa học của Trường dạy nghề Ẩm Thực Netspace.<br />\nTrân trọng,<br />\n&nbsp;</p>\n\n<hr />\n<p><em><span style="font-size:16px;"><span style="color:#808080;"><strong>Trường dạy nghề Ẩm Thực Netspace</strong></span></span><br />\n<span style="color:#808080;"><strong>Website:</strong>&nbsp;<a href="http://www.dayamthuc.vn">www.dayamthuc.vn</a> - <a href="http://www.netspace.edu.vn">www.netspace.edu.vn</a></span></em></p>\n\n<table border="0" cellpadding="5" cellspacing="0" style="width:100%;">\n	<tbody>\n		<tr>\n			<td style="width: 32%; vertical-align: top;"><em><span style="color:#808080;"><span style="font-size: 12px;"><strong>Cơ sở chính:</strong>&nbsp;30 Nguyễn Huy Tự, Phường ĐaKao, Quận 1, Tp.HCM<br />\n			Tel: (08) 6291 2698‎<br />\n			Hotline: 0987 937 938 - 0947 333 488 - 09 8333 8333</span></span></em></td>\n			<td style="width: 32%; vertical-align: top;"><em><span style="color:#808080;"><span style="font-size: 12px;"><strong>CN Hà Nội:&nbsp;</strong>Tầng 5 số 9 Hồ Tùng Mậu, Q. Cầu Giấy, Hà Nội<br />\n			Tel: (04) 36 856 888<br />\n			Hotline: 0989 166 875 - 0985 777 989</span></span></em></td>\n		</tr>\n		<tr>\n			<td style="vertical-align: top; width: 32%;"><em><span style="color:#808080;"><span style="font-size: 12px;"><strong>CN Tp.HCM:</strong>&nbsp;Số 19 Đường Đặng Tất, Phường Tân Định, Quận 1, Tp.HCM<br />\n			Tel: (08) 6291 2698‎<br />\n			Hotline: 0987 937 938 - 0947 333 488 - 09 8333 8333</span></span></em></td>\n			<td style="vertical-align: top; width: 32%;"><em><span style="color:#808080;"><span style="font-size: 12px;"><strong>CN Đà Lạt:&nbsp;</strong>51D Hùng Vương, Phường 9, Tp.Đà Lạt<br />\n			Tel: (0633) 811 199 - (0633) 811 166<br />\n			Hotline: 0905 362 809 - 0965 82 83 88 - 0965 79 73 88</span></span></em></td>\n		</tr>\n		<tr>\n			<td style="vertical-align: top; width: 32%;"><em><span style="color:#808080;"><span style="font-size: 12px;"><strong>CN Đà Nẵng:</strong>&nbsp;Số 3 Phan Thành Tài, Q.Hải Châu, Tp.Đà Nẵng<br />\n			Tel: (051) 1363 4879<br />\n			Hotline: 0979 391 391 - 0932 743 799</span></span></em></td>\n			<td style="vertical-align: top; width: 32%;"><em><span style="color:#808080;"><span style="font-size: 12px;"><strong>CN Cần Thơ:</strong>&nbsp;140 Xô Viết Nghệ Tĩnh, P.An Hội, Q.Ninh Kiều, Tp.Cần Thơ<br />\n			Tel: (071) 0373 4371<br />\n			Hotline: 0912 187 489 - 0912 287 489</span></span></em></td>\n		</tr>\n	</tbody>\n</table>%%%<p><strong>Đăng ký khóa học&nbsp;thành công</strong></p>\n\n<p>Bạn đã đăng ký&nbsp;<em><strong>{_course}</strong></em> của Trường dạy nghề Ẩm Thực Netspace thành công. Chúng tôi sẽ kiểm tra và thông báo lịch khai giảng cho bạn sớm nhất.</p>\n\n<p>Thân chào,</p>%%%%%%1%%%3%%%1', 'vi', 0, NULL, NULL),
(64, 'Bài Ca Phở Trường dạy học nấu ăn', 'update', 'web_header', 1174, 1455304557, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1174%%%Bài Ca Phở Trường dạy học nấu ăn%%%bai-ca-pho-truong-day-hoc-nau-an%%%%%%%%%Bài Ca Phở Trường dạy học nấu ăn%%%Bài Ca Phở Trường dạy học nấu ăn%%%netspace,%%%48HDCdBcasU%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1388635662%%%vi%%%1%%%2%%%9%%%%%%,45,46,72,', 'vi', 0, NULL, NULL),
(65, 'Bài Ca Phở Trường dạy học nấu ăn', 'delete', 'web_header', 1177, 1455304564, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1177%%%Bài Ca Phở Trường dạy học nấu ăn%%%bai-ca-pho-truong-day-hoc-nau-an%%%%%%1388639313.JPG%%%Bài Ca Phở Trường dạy học nấu ăn%%%Bài Ca Phở Trường dạy học nấu ăn%%%netspace%%%48HDCdBcasU%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1388638140%%%vi%%%1%%%2%%%2%%%%%%,45,46,72,', 'vi', 0, NULL, NULL),
(66, 'Đặng ANh Tuấn', 'create', 'web_contact', 4307, 1455305216, 'customer', '', 'vi', 0, NULL, NULL),
(67, 'Thông báo cho nhân viên', 'create', 'web_event_form', 9, 1455305263, 'admin', '', 'vi', 0, NULL, NULL),
(68, 'Thông báo cho nhân viên', 'update', 'web_event_form', 9, 1455305284, 'admin', 'id,name,img,subject,content,notification,email,type,type_id,statusfields%%%values9%%%Thông báo cho nhân viên%%%%%%Thông báo học viên đăng ký%%%<p>Gửi bộ phận tư vấn,</p>\n\n<p>Học viên đăng ký trực tuyến từ website <a href="http://www.dayamthuc.vn">www.dayamthuc.vn</a> nhờ tư vấn giúp:</p>\n\n<p style="margin-left: 40px;">Họ tên: {_name}<br />\n{_course}<br />\nThông tin học viên vui lòng xem tại đây: {_link}</p>\n\n<p>Thân chào,<br />\nQuản trị website</p>%%%%%%%%%1%%%0%%%1', 'vi', 0, NULL, NULL),
(69, 'Trần Hiếu Nhân', 'create', 'web_contact', 4308, 1455305734, 'admin', '', 'vi', 0, NULL, NULL),
(70, 'Trần Hiếu Nhân', 'delete', 'web_contact', 4308, 1455305812, 'admin', 'id,name,email,phone,address,message,date_birthday,branch,course_name,datetime,lang,status,type,staff_id,header_idfields%%%values4308%%%Trần Hiếu Nhân%%%nhan300489@gmail.com%%%0988388003%%%123 cmt 8%%%Test dang ky%%%%%%2%%%%%%1455305703%%%vi%%%0%%%2%%%%%%40', 'vi', 0, NULL, NULL),
(71, 'Trần Hiếu Nhân', 'create', 'web_contact', 4309, 1455305836, 'admin', '', 'vi', 0, NULL, NULL),
(72, 'Trần Hiếu Nhân', 'delete', 'web_contact', 4309, 1455305959, 'admin', 'id,name,email,phone,address,message,date_birthday,branch,course_name,datetime,lang,status,type,staff_id,header_idfields%%%values4309%%%Trần Hiếu Nhân%%%nhan300489@gmail.com%%%0988388003%%%123 cmt 8%%%test dang ky%%%%%%2%%%%%%1455305819%%%vi%%%0%%%2%%%%%%40', 'vi', 0, NULL, NULL),
(73, 'Trần Hiếu Nhân', 'create', 'web_contact', 4310, 1455305972, 'admin', '', 'vi', 0, NULL, NULL),
(74, 'Trần Hiếu Nhân', 'delete', 'web_contact', 4310, 1455306513, 'admin', 'id,name,email,phone,address,message,date_birthday,branch,course_name,datetime,lang,status,type,staff_id,header_idfields%%%values4310%%%Trần Hiếu Nhân%%%nhan300489@gmail.com%%%0988388003%%%%%%%%%%%%2%%%%%%1455305961%%%vi%%%0%%%2%%%%%%40', 'vi', 0, NULL, NULL),
(75, 'Trần Hiếu Nhân', 'create', 'web_contact', 4311, 1455306528, 'admin', '', 'vi', 0, NULL, NULL),
(76, 'Trần Hiếu Nhân', 'delete', 'web_contact', 4311, 1455306637, 'admin', 'id,name,email,phone,address,message,date_birthday,branch,course_name,datetime,lang,status,type,staff_id,header_idfields%%%values4311%%%Trần Hiếu Nhân%%%nhan300489@gmail.com%%%0988388003%%%%%%%%%%%%2%%%%%%1455306519%%%vi%%%0%%%2%%%%%%619', 'vi', 0, NULL, NULL),
(77, 'Thông báo cho nhân viên', 'update', 'web_event_form', 9, 1455306789, 'admin', 'id,name,img,subject,content,notification,email,type,type_id,statusfields%%%values9%%%Thông báo cho nhân viên%%%%%%Thông báo học viên đăng ký hoặc liên hệ%%%<p>Gửi bộ phận tư vấn,</p>\n\n<p>Học viên đăng ký trực tuyến từ website <a href="http://www.dayamthuc.vn">www.dayamthuc.vn</a> nhờ tư vấn giúp:</p>\n\n<p style="margin-left: 40px;">Họ tên: {_name}<br />\n{_course}<br />\nThông tin học viên vui lòng xem tại đây: {_link}</p>\n\n<p>Thân chào,<br />\nQuản trị website</p>%%%%%%%%%1%%%0%%%1', 'vi', 0, NULL, NULL),
(78, 'Thông báo cho nhân viên', 'update', 'web_event_form', 9, 1455306854, 'admin', 'id,name,img,subject,content,notification,email,type,type_id,statusfields%%%values9%%%Thông báo cho nhân viên%%%%%%Thông báo học viên đăng ký hoặc liên hệ%%%<p>Gửi bộ phận tư vấn,</p>\n\n<p>Học viên đăng ký trực tuyến từ website <a href="http://www.dayamthuc.vn">www.dayamthuc.vn</a> nhờ tư vấn giúp:</p>\n\n<p style="margin-left: 40px;">Họ tên: <strong>{_name}.&nbsp;{_course}</strong><br />\nThông tin học viên vui lòng xem tại đây: <em>{_link}</em></p>\n\n<p>Thân chào,<br />\nQuản trị website</p>%%%%%%%%%1%%%0%%%1', 'vi', 0, NULL, NULL),
(79, 'Thông báo cho nhân viên', 'update', 'web_event_form', 9, 1455306870, 'admin', 'id,name,img,subject,content,notification,email,type,type_id,statusfields%%%values9%%%Thông báo cho nhân viên%%%%%%Thông báo học viên đăng ký hoặc liên hệ%%%<p>Gửi bộ phận tư vấn,</p>\n\n<p>Học viên đăng ký trực tuyến từ website <a href="http://www.dayamthuc.vn">www.dayamthuc.vn</a> nhờ tư vấn giúp:</p>\n\n<p style="margin-left: 40px;">Họ tên: <strong>{_name}.&nbsp;{_course}</strong><br />\nThông tin học viên vui lòng xem tại đây: http://www.dayamthuc.vn/ajax/?viewContact=1</p>\n\n<p>Thân chào,<br />\nQuản trị website</p>%%%%%%%%%1%%%0%%%1', 'vi', 0, NULL, NULL),
(80, 'Nguyễn Quốc Y', 'update', 'web_users', 45, 1455312620, 'admin', 'id,name,address,phone,email,birthday,gender,img,salt,page,username,password,random_key,date_expiration,lang,datetime,status,group_idfields%%%values45%%%Nguyễn Quốc Y%%%%%%0903 646 893%%%ceo@netspace.edu.vn%%%0%%%%%%%%%%%%3%%%quocy%%%867e1a36d190000d2f266d80889683fc%%%%%%0%%%vi%%%0%%%1%%%3', 'vi', 0, NULL, NULL),
(81, 'Nguyễn Hữu Phát', 'update', 'web_users', 46, 1455312630, 'admin', 'id,name,address,phone,email,birthday,gender,img,salt,page,username,password,random_key,date_expiration,lang,datetime,status,group_idfields%%%values46%%%Nguyễn Hữu Phát%%%%%%0903 616 698%%%phatnguyenhuu@gmail.com%%%0%%%%%%%%%%%%3%%%phatnguyen%%%867e1a36d190000d2f266d80889683fc%%%%%%0%%%vi%%%0%%%1%%%3', 'vi', 0, NULL, NULL),
(82, 'Nguyễn Thị Hường', 'update', 'web_users', 59, 1455312652, 'admin', 'id,name,address,phone,email,birthday,gender,img,salt,page,username,password,random_key,date_expiration,lang,datetime,status,group_idfields%%%values59%%%Nguyễn Thị Hường%%%%%%0975 801 851%%%marketing3@netspace.edu.vn%%%0%%%%%%%%%%%%3%%%huongnguyen%%%867e1a36d190000d2f266d80889683fc%%%%%%0%%%vi%%%0%%%1%%%3', 'vi', 0, NULL, NULL),
(83, 'Nguyễn Thị Thu Trang', 'update', 'web_users', 57, 1455312659, 'admin', 'id,name,address,phone,email,birthday,gender,img,salt,page,username,password,random_key,date_expiration,lang,datetime,status,group_idfields%%%values57%%%Nguyễn Thị Thu Trang%%%%%%0933 606 798%%%marketingofficer1@netspace.edu.vn%%%0%%%%%%%%%%%%3%%%trangnguyen%%%867e1a36d190000d2f266d80889683fc%%%%%%0%%%vi%%%0%%%1%%%3', 'vi', 0, NULL, NULL),
(84, 'Đặng ANh Tuấn', 'update', 'web_contact', 4307, 1455312692, 'admin', 'id,name,email,phone,address,message,date_birthday,branch,course_name,datetime,lang,status,type,user,header_idfields%%%values4307%%%Đặng ANh Tuấn%%%tuan_da@qtttc.edu.vn%%%0935314555%%%Trường CĐSP Quảng Trị%%%%%%%%%4%%%%%%1455304147%%%vi%%%1%%%2%%%25%%%392', 'vi', 0, NULL, NULL),
(85, 'Phan Thị Minh Anh', 'update', 'web_contact', 4287, 1455312808, 'admin', 'id,name,email,phone,address,message,date_birthday,branch,course_name,datetime,lang,status,type,user,header_idfields%%%values4287%%%Phan Thị Minh Anh%%%Minhanh304@gmail.com%%%0901123153%%%K235/h65/10 Tiểu La%%%hoc o DaNang%%%%%%3%%%%%%1454888483%%%vi%%%1%%%2%%%%%%22', 'vi', 0, NULL, NULL),
(86, 'Phan Thị Minh Anh', 'update', 'web_contact', 4287, 1455312855, 'admin', 'id,name,email,phone,address,message,date_birthday,branch,course_name,datetime,lang,status,type,user,header_idfields%%%values4287%%%Phan Thị Minh Anh%%%Minhanh304@gmail.com%%%0901123153%%%K235/h65/10 Tiểu La%%%hoc o DaNang%%%%%%3%%%%%%1454888483%%%vi%%%0%%%2%%%%%%22', 'vi', 0, NULL, NULL),
(87, 'Thông báo cho nhân viên', 'update', 'web_event_form', 9, 1455313843, 'admin', 'id,name,img,subject,content,notification,email,type,type_id,statusfields%%%values9%%%Thông báo cho nhân viên%%%%%%Thông báo học viên đăng ký hoặc liên hệ%%%<p>Gửi bộ phận tư vấn,</p>\n\n<p>Học viên đăng ký trực tuyến từ website <a href="http://www.dayamthuc.vn">www.dayamthuc.vn</a> nhờ tư vấn giúp:</p>\n\n<p style="margin-left: 40px;">Họ tên: <strong>{_name}.&nbsp;{_course}</strong><br />\nThông tin học viên vui lòng xem tại đây: <em><a href="http://www.dayamthuc.vn/ajax/?viewContact=1">http://www.dayamthuc.vn/ajax/?viewContact=1</a></em></p>\n\n<p>Thân chào,<br />\nQuản trị website</p>%%%%%%%%%1%%%0%%%1', 'vi', 0, NULL, NULL),
(88, 'ĐINH THỊ THÚY NGA', 'create', 'web_contact', 4312, 1455320532, 'customer', '', 'vi', 0, NULL, NULL),
(89, 'nguyễn hương giang', 'create', 'web_contact', 4313, 1455331904, 'customer', '', 'vi', 0, NULL, NULL),
(90, 'Trường dạy nấu ăn nổi tiếng', 'update', 'web_header', 998, 1455336094, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values998%%%Trường dạy nấu ăn nổi tiếng%%%truong-day-nau-an-noi-tieng%%%%%%1425436536.jpg%%%Trường dạy nấu ăn nổi tiếng%%%Trường dạy nấu ăn nổi tiếng tại thành phố Hồ Chí Minh phải kể đến Trường dạy nghề ẩm thực NetSpace.%%%Trường dạy nấu ăn nổi tiếng,truong day nau an noi tieng%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1425435600%%%vi%%%1%%%2%%%2%%%%%%,6,204,', 'vi', 0, NULL, NULL),
(91, 'Trường dạy nấu ăn nổi tiếng', 'update', 'web_header', 998, 1455336899, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values998%%%Trường dạy nấu ăn nổi tiếng%%%truong-day-nau-an-noi-tieng%%%%%%1425436536.jpg%%%Trường dạy nấu ăn nổi tiếng%%%Trường dạy nấu ăn nổi tiếng tại thành phố Hồ Chí Minh phải kể đến Trường dạy nghề ẩm thực NetSpace.%%%Trường dạy nấu ăn nổi tiếng,truong day nau an noi tieng%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1425435600%%%vi%%%1%%%2%%%2%%%%%%,6,204,', 'vi', 0, NULL, NULL),
(92, 'Trường dạy nấu ăn nổi tiếng', 'update', 'web_header', 998, 1455337840, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values998%%%Trường dạy nấu ăn nổi tiếng%%%truong-day-nau-an-noi-tieng%%%%%%1425436536.jpg%%%Trường dạy nấu ăn nổi tiếng%%%Trường dạy nấu ăn nổi tiếng tại thành phố Hồ Chí Minh phải kể đến Trường dạy nghề ẩm thực NetSpace.%%%Trường dạy nấu ăn nổi tiếng,truong day nau an noi tieng%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1425435600%%%vi%%%1%%%2%%%2%%%%%%,6,204,', 'vi', 0, NULL, NULL),
(93, 'Trường dạy nấu ăn NetSpace', 'update', 'web_header', 998, 1455338119, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values998%%%Trường dạy nấu ăn NetSpace%%%truong-day-nau-an-noi-tieng%%%%%%1425436536.jpg%%%Trường dạy nấu ăn%%%Trong số các trường dạy nấu ăn uy tín, chuyên nghiệp tại Việt Nam, phải kể đến Trường dạy nấu ăn NetSpace.%%%Trường dạy nấu ăn ,truong day nau an%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1425435600%%%vi%%%1%%%2%%%2%%%%%%,6,204,', 'vi', 0, NULL, NULL),
(94, 'Trường dạy nấu ăn NetSpace', 'update', 'web_header', 998, 1455338333, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values998%%%Trường dạy nấu ăn NetSpace%%%truong-day-nau-an-noi-tieng%%%%%%1425436536.jpg%%%Trường dạy nấu ăn%%%Trong số các trường dạy nấu ăn uy tín, chuyên nghiệp tại Việt Nam, phải kể đến Trường dạy nấu ăn NetSpace.%%%Trường dạy nấu ăn ,truong day nau an%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1425435600%%%vi%%%1%%%2%%%2%%%%%%,6,204,', 'vi', 0, NULL, NULL),
(95, 'Trường dạy nấu ăn NetSpace', 'update', 'web_header', 998, 1455338827, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values998%%%Trường dạy nấu ăn NetSpace%%%truong-day-nau-an-noi-tieng%%%%%%1425436536.jpg%%%Trường dạy nấu ăn%%%Trong số các trường dạy nấu ăn uy tín, chuyên nghiệp tại Việt Nam, phải kể đến Trường dạy nấu ăn NetSpace.%%%Trường dạy nấu ăn ,truong day nau an%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1425435600%%%vi%%%1%%%2%%%2%%%%%%,6,204,', 'vi', 0, NULL, NULL),
(96, 'Trường dạy nấu ăn NetSpace', 'update', 'web_header', 998, 1455339488, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values998%%%Trường dạy nấu ăn NetSpace%%%truong-day-nau-an-noi-tieng%%%%%%%%%Trường dạy nấu ăn%%%Trong số các trường dạy nấu ăn uy tín, chuyên nghiệp tại Việt Nam, phải kể đến Trường dạy nấu ăn NetSpace.%%%Trường dạy nấu ăn ,truong day nau an%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1425435600%%%vi%%%1%%%2%%%2%%%%%%,6,204,', 'vi', 0, NULL, NULL),
(97, 'Trường dạy nấu ăn NetSpace', 'update', 'web_header', 998, 1455339610, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values998%%%Trường dạy nấu ăn NetSpace%%%truong-day-nau-an-noi-tieng%%%%%%%%%Trường dạy nấu ăn%%%Trong số các trường dạy nấu ăn uy tín, chuyên nghiệp tại Việt Nam, phải kể đến Trường dạy nấu ăn NetSpace.%%%Trường dạy nấu ăn ,truong day nau an%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1425435600%%%vi%%%1%%%2%%%2%%%%%%,6,204,', 'vi', 0, NULL, NULL),
(98, 'Học nấu ăn ở Đà Nẵng', 'update', 'web_header', 549, 1455340588, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values549%%%Học nấu ăn ở Đà Nẵng%%%hoc-nau-an-o-da-nang-240%%%%%%%%%Học nấu ăn ở Đà Nẵng%%%Học nấu ăn ở Đà Nẵng chưa đáp ứng được nhu cầu học nghề bếp làm cho Đà Nẵng mất đi nhiều cơ hội phát triển và chưa có sự khai thác triệt để tiềm năng tại mảnh đất đang phát triển ngành du lịch rất mạnh mẽ này.%%%Học nấu ăn ở Đà Nẵng,hoc nau an o da nang%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1372296780%%%vi%%%1%%%2%%%2%%%%%%,6,361,', 'vi', 0, NULL, NULL),
(99, 'Học nấu ăn ở Đà Nẵng', 'update', 'web_header', 549, 1455341185, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values549%%%Học nấu ăn ở Đà Nẵng%%%hoc-nau-an-o-da-nang-240%%%%%%%%%Học nấu ăn ở Đà Nẵng%%%Học nấu ăn ở Đà Nẵng tại Trường NetSpace là cơ hội cho nhiều Bạn trẻ khi chọn nghề bếp.%%%học nấu ăn ở Đà Nẵng, hoc nau an o da nang%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1372296780%%%vi%%%1%%%2%%%2%%%%%%,6,361,', 'vi', 0, NULL, NULL),
(100, 'Học nấu ăn ở Đà Nẵng', 'update', 'web_header', 549, 1455341425, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values549%%%Học nấu ăn ở Đà Nẵng%%%hoc-nau-an-o-da-nang-240%%%%%%1455340620.jpg%%%Học nấu ăn ở Đà Nẵng%%%Học nấu ăn ở Đà Nẵng tại Trường NetSpace là cơ hội cho nhiều Bạn trẻ khi chọn nghề bếp.%%%học nấu ăn ở Đà Nẵng, hoc nau an o da nang%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1372296780%%%vi%%%1%%%2%%%2%%%%%%,6,361,', 'vi', 0, NULL, NULL),
(101, 'Trường dạy nấu ăn tại Đà Nẵng', 'update', 'web_header', 557, 1455342671, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values557%%%Trường dạy nấu ăn tại Đà Nẵng%%%truong-day-nau-an-tai-da-nang-248%%%%%%1372989675.jpg%%%Trường dạy nấu ăn tại Đà Nẵng%%%Trường dạy nấu ăn tại Đà Nẵng không còn là ước mơ của nhiều bạn trẻ  với mong muốn chọn Đà Nẵng là nơi học nấu ăn nữa mà bây giờ nó đã trở thành hiện thực%%%Trường dạy nấu ăn tại Đà Nẵng,truong day nau an tai da nang%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1372989180%%%vi%%%1%%%2%%%2%%%%%%,6,204,', 'vi', 0, NULL, NULL),
(102, 'Trường dạy nấu ăn tại Đà Nẵng', 'update', 'web_header', 557, 1455342909, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values557%%%Trường dạy nấu ăn tại Đà Nẵng%%%truong-day-nau-an-tai-da-nang-248%%%%%%1372989675.jpg%%%Trường dạy nấu ăn tại Đà Nẵng%%%Trường dạy nấu ăn tại Đà Nẵng chuyên nghiệp và uy tín là Trường NetSpace- một trong những lựa chọn sáng suốt của các bạn trẻ mong muốn theo nghề bếp%%%trường dạy nấu ăn tại Đà Nẵng, truong day nau an tai da nang%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1372989180%%%vi%%%1%%%2%%%2%%%%%%,6,204,', 'vi', 0, NULL, NULL),
(103, 'Trường dạy nấu ăn tại Đà Nẵng', 'update', 'web_header', 557, 1455342940, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values557%%%Trường dạy nấu ăn tại Đà Nẵng%%%truong-day-nau-an-tai-da-nang-248%%%%%%1372989675.jpg%%%Trường dạy nấu ăn tại Đà Nẵng%%%Trường dạy nấu ăn tại Đà Nẵng chuyên nghiệp và uy tín là Trường NetSpace- một trong những lựa chọn sáng suốt của các bạn trẻ mong muốn theo nghề bếp%%%trường dạy nấu ăn tại Đà Nẵng, truong day nau an tai da nang%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1372989180%%%vi%%%1%%%2%%%2%%%%%%,6,204,', 'vi', 0, NULL, NULL),
(104, 'Cách làm bánh xèo', 'create', 'web_header', 1429, 1455343515, 'quocy', '', 'vi', 0, NULL, NULL),
(105, 'Cách làm bánh xèo', 'update', 'web_header', 1429, 1455344095, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1429%%%Cách làm bánh xèo%%%cach-lam-banh-xeo%%%%%%%%%Cách làm bánh xèo%%%Cách làm bánh xèo ngon 3 miền%%%cách làm bánh xèo, cach lam banh xeo%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1455343260%%%vi%%%1%%%2%%%2%%%%%%,226,', 'vi', 0, NULL, NULL),
(106, 'Cách làm bánh xèo', 'update', 'web_header', 1429, 1455344208, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1429%%%Cách làm bánh xèo%%%cach-lam-banh-xeo%%%%%%%%%Cách làm bánh xèo%%%Cách làm bánh xèo ngon 3 miền%%%cách làm bánh xèo, cach lam banh xeo%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1455343260%%%vi%%%1%%%2%%%2%%%%%%,226,', 'vi', 0, NULL, NULL);
INSERT INTO `web_logs` (`id`, `name`, `action`, `_table`, `table_id`, `datetime`, `username`, `content`, `lang`, `status`, `date_restore`, `user_restore`) VALUES
(107, 'Cách làm bánh xèo', 'update', 'web_header', 1429, 1455344236, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1429%%%Cách làm bánh xèo%%%cach-lam-banh-xeo%%%%%%1455344166.jpg%%%Cách làm bánh xèo%%%Cách làm bánh xèo ngon 3 miền%%%cách làm bánh xèo, cach lam banh xeo%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1455343260%%%vi%%%1%%%2%%%2%%%%%%,226,', 'vi', 0, NULL, NULL),
(108, 'Cách làm bánh xèo', 'update', 'web_header', 1429, 1455344316, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1429%%%Cách làm bánh xèo%%%cach-lam-banh-xeo%%%%%%1455343677.jpg%%%Cách làm bánh xèo%%%Cách làm bánh xèo ngon 3 miền%%%cách làm bánh xèo, cach lam banh xeo%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1455343260%%%vi%%%1%%%2%%%2%%%%%%,226,', 'vi', 0, NULL, NULL),
(109, 'Cách làm bánh xèo', 'update', 'web_header', 1429, 1455344529, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1429%%%Cách làm bánh xèo%%%cach-lam-banh-xeo%%%%%%1455343677.jpg%%%Cách làm bánh xèo%%%Cách làm bánh xèo ngon 3 miền Bắc,Trung,Nam tuy có những hương vị đặc trưng riêng nhưng đều có một nguyên tắc chế biến chung.%%%cách làm bánh xèo, cach lam banh xeo%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1455343260%%%vi%%%1%%%2%%%2%%%%%%,226,', 'vi', 0, NULL, NULL),
(110, 'Cách làm bánh xèo', 'update', 'web_header', 1429, 1455344590, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1429%%%Cách làm bánh xèo%%%cach-lam-banh-xeo%%%%%%1455343677.jpg%%%Cách làm bánh xèo%%%Cách làm bánh xèo ngon 3 miền Bắc,Trung,Nam tuy có những hương vị đặc trưng riêng nhưng đều có một nguyên tắc chế biến chung.%%%cách làm bánh xèo, cach lam banh xeo%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1455343260%%%vi%%%1%%%2%%%2%%%%%%,226,', 'vi', 0, NULL, NULL),
(111, 'Nguyễn Thu Hiền', 'create', 'web_contact', 4314, 1455356199, 'customer', '', 'vi', 0, NULL, NULL),
(112, 'Luong thi thuy tien', 'create', 'web_contact', 4315, 1455358980, 'customer', '', 'vi', 0, NULL, NULL),
(113, 'Luong thi thuy tien', 'create', 'web_contact', 4316, 1455359225, 'customer', '', 'vi', 0, NULL, NULL),
(114, 'Thông báo cho nhân viên', 'update', 'web_event_form', 9, 1455392163, 'admin', 'id,name,img,subject,content,notification,email,type,type_id,statusfields%%%values9%%%Thông báo cho nhân viên%%%%%%Thông báo học viên đăng ký hoặc liên hệ%%%<p>Gửi bộ phận tư vấn,</p>\n\n<p>Học viên đăng ký trực tuyến từ website <a href="http://www.dayamthuc.vn">www.dayamthuc.vn</a> nhờ tư vấn giúp:</p>\n\n<p style="margin-left: 40px;">Họ tên: <strong>{_name}.&nbsp;{_course}</strong><br />\nThông tin học viên vui lòng xem tại đây: <em><a href="http://www.dayamthuc.vn/ajax/?viewContact">http://www.dayamthuc.vn/ajax/?viewContact</a></em></p>\n\n<p>Thân chào,<br />\nQuản trị website</p>%%%%%%%%%1%%%0%%%1', 'vi', 0, NULL, NULL),
(115, 'Thông báo cho nhân viên', 'update', 'web_event_form', 9, 1455392244, 'admin', 'id,name,img,subject,content,notification,email,type,type_id,statusfields%%%values9%%%Thông báo cho nhân viên%%%%%%Thông báo học viên đăng ký hoặc liên hệ%%%<p>Gửi bộ phận tư vấn,</p>\n\n<p>Học viên đăng ký trực tuyến từ website <a href="http://www.dayamthuc.vn">www.dayamthuc.vn</a> nhờ tư vấn giúp:</p>\n\n<p style="margin-left: 40px;">Họ tên: <strong>{_name}.&nbsp;{_course}</strong><br />\nThông tin học viên vui lòng đăng nhập vào quản trị để xem&nbsp;<a href="http://www.dayamthuc.vn/cp_admin"><em>http://www.dayamthuc.vn/cp_admin</em></a></p>\n\n<p>Thân chào,<br />\nQuản trị website</p>%%%%%%%%%1%%%0%%%1', 'vi', 0, NULL, NULL),
(116, 'Quản lý quy trình', 'update', 'web_admin', 36, 1455392735, 'admin', 'id,name,url,_table,parameter,file,img,_order,ajax,type,parent,statusfields%%%values36%%%Quản lý quy trình%%%mn_action%%%mn_action%%%%%%mn_action%%%adIconProcedure%%%9%%%0%%%3%%%0%%%0', 'vi', 0, NULL, NULL),
(117, '', 'create', 'web_users_role', 133, 1455392757, 'admin', '', 'vi', 0, NULL, NULL),
(118, 'Luong thi thuy tien', 'update', 'web_contact', 4315, 1455393380, 'admin', 'id,name,email,phone,address,message,date_birthday,branch,course_name,datetime,lang,status,type,user,header_idfields%%%values4315%%%Luong thi thuy tien%%%Luongthithuytien@gmail.com%%%0903369772%%%33 truong cong dinh, p14, q tan binh%%%%%%%%%2%%%%%%1455358149%%%vi%%%1%%%2%%%25%%%619', 'vi', 0, NULL, NULL),
(119, 'Luong thi thuy tien', 'update', 'web_contact', 4316, 1455393387, 'admin', 'id,name,email,phone,address,message,date_birthday,branch,course_name,datetime,lang,status,type,user,header_idfields%%%values4316%%%Luong thi thuy tien%%%Luongthithuytien@gmail.com%%%0903369772%%%33 truong cong dinh, p14, qbtan binh%%%%%%%%%2%%%%%%1455358149%%%vi%%%1%%%2%%%25%%%624', 'vi', 0, NULL, NULL),
(120, '', 'create', 'web_users_role', 134, 1455393496, 'admin', '', 'vi', 0, NULL, NULL),
(121, '', 'create', 'web_users_role', 135, 1455393523, 'admin', '', 'vi', 0, NULL, NULL),
(122, '', 'create', 'web_users_role', 136, 1455393540, 'admin', '', 'vi', 0, NULL, NULL),
(123, 'Đầu bếp nổi tiếng Jack Lee – Đại sứ ẩm thực Netspace', 'update', 'web_header', 1418, 1455394216, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1418%%%Đầu bếp nổi tiếng Jack Lee – Đại sứ ẩm thực Netspace%%%dau-bep-noi-tieng-jack-lee-dai-su-am-thuc-netspace%%%%%%1454402256.jpg%%%Đầu bếp nổi tiếng Jack Lee – Đại sứ ẩm thực Netspace%%%Chef Jack Lee, một đầu bếp người Mỹ gốc Việt nổi tiếng, chuyên nấu những món ăn cho nhiều ngôi sao Hollywood%%%đầu bếp nổi tiếng jack lee – đại sứ ẩm thực netspace%%%iP0udSx2E70%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1454402040%%%vi%%%1%%%2%%%9%%%%%%,1399,1411,1413,', 'vi', 0, NULL, NULL),
(124, 'Cách làm bánh xèo', 'update', 'web_header', 1429, 1455394730, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1429%%%Cách làm bánh xèo%%%cach-lam-banh-xeo%%%%%%1455343677.jpg%%%Cách làm bánh xèo%%%Cách làm bánh xèo ngon 3 miền Bắc,Trung,Nam tuy có những hương vị đặc trưng riêng nhưng đều có một nguyên tắc chế biến chung.%%%cách làm bánh xèo, cach lam banh xeo%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1455343260%%%vi%%%1%%%2%%%2%%%%%%,226,', 'vi', 0, NULL, NULL),
(125, 'Học Bartender biểu diễn - Bartender Flair', 'update', 'web_header', 744, 1455395562, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values744%%%Học Bartender biểu diễn - Bartender Flair%%%hoc-bartender-bieu-dien-bartender-flair%%%%%%%%%Học Bartender biểu diễn - Bartender Flair%%%Bartender là một nghề và đó là nhân viên làm việc trong quầy Bar - có trong các nhà hàng, vũ trường và các club%%%học bartender biểu diễn,bartender flair,hoc bartender bieu dien%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1432696560%%%vi%%%1%%%2%%%3%%%%%%,210,', 'vi', 0, NULL, NULL),
(126, 'Đoàn viết Quốc', 'create', 'web_contact', 4317, 1455396526, 'customer', '', 'vi', 0, NULL, NULL),
(127, '', 'update', 'web_users_role', 54, 1455399627, 'admin', 'id,action_view,action_create,action_edit,action_delete,admin_id,users_id,statusfields%%%values54%%%1%%%1%%%1%%%1%%%30%%%46%%%1', 'vi', 0, NULL, NULL),
(128, '', 'update', 'web_users_role', 85, 1455399642, 'admin', 'id,action_view,action_create,action_edit,action_delete,admin_id,users_id,statusfields%%%values85%%%1%%%1%%%1%%%1%%%30%%%47%%%1', 'vi', 0, NULL, NULL),
(129, '', 'update', 'web_users_role', 89, 1455399651, 'admin', 'id,action_view,action_create,action_edit,action_delete,admin_id,users_id,statusfields%%%values89%%%1%%%1%%%1%%%1%%%30%%%49%%%1', 'vi', 0, NULL, NULL),
(130, '', 'update', 'web_users_role', 131, 1455399666, 'admin', 'id,action_view,action_create,action_edit,action_delete,admin_id,users_id,statusfields%%%values131%%%1%%%1%%%1%%%1%%%30%%%58%%%1', 'vi', 0, NULL, NULL),
(131, '', 'update', 'web_users_role', 94, 1455399668, 'admin', 'id,action_view,action_create,action_edit,action_delete,admin_id,users_id,statusfields%%%values94%%%1%%%1%%%1%%%1%%%30%%%50%%%1', 'vi', 0, NULL, NULL),
(132, '', 'update', 'web_users_role', 101, 1455399669, 'admin', 'id,action_view,action_create,action_edit,action_delete,admin_id,users_id,statusfields%%%values101%%%1%%%1%%%1%%%1%%%30%%%51%%%1', 'vi', 0, NULL, NULL),
(133, '', 'update', 'web_users_role', 101, 1455399673, 'admin', 'id,action_view,action_create,action_edit,action_delete,admin_id,users_id,statusfields%%%values101%%%1%%%1%%%1%%%1%%%30%%%51%%%1', 'vi', 0, NULL, NULL),
(134, '', 'update', 'web_users_role', 105, 1455399675, 'admin', 'id,action_view,action_create,action_edit,action_delete,admin_id,users_id,statusfields%%%values105%%%1%%%1%%%1%%%1%%%30%%%52%%%1', 'vi', 0, NULL, NULL),
(135, '', 'update', 'web_users_role', 112, 1455399677, 'admin', 'id,action_view,action_create,action_edit,action_delete,admin_id,users_id,statusfields%%%values112%%%1%%%1%%%1%%%1%%%30%%%53%%%1', 'vi', 0, NULL, NULL),
(136, '', 'update', 'web_users_role', 113, 1455399679, 'admin', 'id,action_view,action_create,action_edit,action_delete,admin_id,users_id,statusfields%%%values113%%%1%%%1%%%1%%%1%%%30%%%54%%%1', 'vi', 0, NULL, NULL),
(137, '', 'update', 'web_users_role', 122, 1455399682, 'admin', 'id,action_view,action_create,action_edit,action_delete,admin_id,users_id,statusfields%%%values122%%%1%%%1%%%1%%%1%%%30%%%55%%%1', 'vi', 0, NULL, NULL),
(138, '', 'update', 'web_users_role', 126, 1455399686, 'admin', 'id,action_view,action_create,action_edit,action_delete,admin_id,users_id,statusfields%%%values126%%%1%%%1%%%1%%%1%%%30%%%56%%%1', 'vi', 0, NULL, NULL),
(139, '', 'update', 'web_users_role', 68, 1455399688, 'admin', 'id,action_view,action_create,action_edit,action_delete,admin_id,users_id,statusfields%%%values68%%%1%%%1%%%1%%%1%%%30%%%57%%%1', 'vi', 0, NULL, NULL),
(140, '', 'update', 'web_users_role', 40, 1455399733, 'admin', 'id,action_view,action_create,action_edit,action_delete,admin_id,users_id,statusfields%%%values40%%%1%%%1%%%1%%%1%%%31%%%25%%%1', 'vi', 0, NULL, NULL),
(141, '', 'update', 'web_users_role', 57, 1455399736, 'admin', 'id,action_view,action_create,action_edit,action_delete,admin_id,users_id,statusfields%%%values57%%%1%%%1%%%1%%%1%%%31%%%46%%%1', 'vi', 0, NULL, NULL),
(142, '', 'update', 'web_users_role', 87, 1455399737, 'admin', 'id,action_view,action_create,action_edit,action_delete,admin_id,users_id,statusfields%%%values87%%%1%%%1%%%1%%%1%%%31%%%47%%%1', 'vi', 0, NULL, NULL),
(143, '', 'update', 'web_users_role', 91, 1455399740, 'admin', 'id,action_view,action_create,action_edit,action_delete,admin_id,users_id,statusfields%%%values91%%%1%%%1%%%1%%%1%%%31%%%49%%%1', 'vi', 0, NULL, NULL),
(144, '', 'update', 'web_users_role', 95, 1455399742, 'admin', 'id,action_view,action_create,action_edit,action_delete,admin_id,users_id,statusfields%%%values95%%%1%%%1%%%1%%%1%%%31%%%50%%%1', 'vi', 0, NULL, NULL),
(145, '', 'update', 'web_users_role', 100, 1455399744, 'admin', 'id,action_view,action_create,action_edit,action_delete,admin_id,users_id,statusfields%%%values100%%%1%%%1%%%1%%%1%%%31%%%51%%%1', 'vi', 0, NULL, NULL),
(146, '', 'update', 'web_users_role', 107, 1455399746, 'admin', 'id,action_view,action_create,action_edit,action_delete,admin_id,users_id,statusfields%%%values107%%%1%%%1%%%1%%%1%%%31%%%52%%%1', 'vi', 0, NULL, NULL),
(147, '', 'update', 'web_users_role', 111, 1455399748, 'admin', 'id,action_view,action_create,action_edit,action_delete,admin_id,users_id,statusfields%%%values111%%%1%%%1%%%1%%%1%%%31%%%53%%%1', 'vi', 0, NULL, NULL),
(148, '', 'update', 'web_users_role', 116, 1455399750, 'admin', 'id,action_view,action_create,action_edit,action_delete,admin_id,users_id,statusfields%%%values116%%%1%%%1%%%1%%%1%%%31%%%54%%%1', 'vi', 0, NULL, NULL),
(149, '', 'update', 'web_users_role', 120, 1455399753, 'admin', 'id,action_view,action_create,action_edit,action_delete,admin_id,users_id,statusfields%%%values120%%%1%%%1%%%1%%%1%%%31%%%55%%%1', 'vi', 0, NULL, NULL),
(150, '', 'update', 'web_users_role', 125, 1455399755, 'admin', 'id,action_view,action_create,action_edit,action_delete,admin_id,users_id,statusfields%%%values125%%%1%%%1%%%1%%%1%%%31%%%56%%%1', 'vi', 0, NULL, NULL),
(151, '', 'update', 'web_users_role', 69, 1455399757, 'admin', 'id,action_view,action_create,action_edit,action_delete,admin_id,users_id,statusfields%%%values69%%%1%%%1%%%1%%%1%%%31%%%57%%%1', 'vi', 0, NULL, NULL),
(152, '', 'update', 'web_users_role', 69, 1455399760, 'admin', 'id,action_view,action_create,action_edit,action_delete,admin_id,users_id,statusfields%%%values69%%%1%%%1%%%1%%%0%%%31%%%57%%%1', 'vi', 0, NULL, NULL),
(153, '', 'update', 'web_users_role', 130, 1455399762, 'admin', 'id,action_view,action_create,action_edit,action_delete,admin_id,users_id,statusfields%%%values130%%%1%%%1%%%1%%%1%%%31%%%58%%%1', 'vi', 0, NULL, NULL),
(154, '', 'update', 'web_users_role', 40, 1455399782, 'admin', 'id,action_view,action_create,action_edit,action_delete,admin_id,users_id,statusfields%%%values40%%%1%%%1%%%1%%%0%%%31%%%25%%%1', 'vi', 0, NULL, NULL),
(155, '', 'update', 'web_users_role', 132, 1455399802, 'admin', 'id,action_view,action_create,action_edit,action_delete,admin_id,users_id,statusfields%%%values132%%%1%%%1%%%1%%%1%%%28%%%58%%%1', 'vi', 0, NULL, NULL),
(156, '', 'update', 'web_users_role', 70, 1455399804, 'admin', 'id,action_view,action_create,action_edit,action_delete,admin_id,users_id,statusfields%%%values70%%%1%%%1%%%1%%%1%%%28%%%57%%%1', 'vi', 0, NULL, NULL),
(157, '', 'update', 'web_users_role', 127, 1455399806, 'admin', 'id,action_view,action_create,action_edit,action_delete,admin_id,users_id,statusfields%%%values127%%%1%%%1%%%1%%%1%%%28%%%56%%%1', 'vi', 0, NULL, NULL),
(158, '', 'update', 'web_users_role', 121, 1455399808, 'admin', 'id,action_view,action_create,action_edit,action_delete,admin_id,users_id,statusfields%%%values121%%%1%%%1%%%1%%%1%%%28%%%55%%%1', 'vi', 0, NULL, NULL),
(159, '', 'update', 'web_users_role', 115, 1455399811, 'admin', 'id,action_view,action_create,action_edit,action_delete,admin_id,users_id,statusfields%%%values115%%%1%%%1%%%1%%%1%%%28%%%54%%%1', 'vi', 0, NULL, NULL),
(160, '', 'update', 'web_users_role', 110, 1455399813, 'admin', 'id,action_view,action_create,action_edit,action_delete,admin_id,users_id,statusfields%%%values110%%%1%%%1%%%1%%%1%%%28%%%53%%%1', 'vi', 0, NULL, NULL),
(161, '', 'update', 'web_users_role', 106, 1455399815, 'admin', 'id,action_view,action_create,action_edit,action_delete,admin_id,users_id,statusfields%%%values106%%%1%%%1%%%1%%%1%%%28%%%52%%%1', 'vi', 0, NULL, NULL),
(162, '', 'update', 'web_users_role', 99, 1455399818, 'admin', 'id,action_view,action_create,action_edit,action_delete,admin_id,users_id,statusfields%%%values99%%%1%%%1%%%1%%%1%%%28%%%51%%%1', 'vi', 0, NULL, NULL),
(163, '', 'update', 'web_users_role', 96, 1455399820, 'admin', 'id,action_view,action_create,action_edit,action_delete,admin_id,users_id,statusfields%%%values96%%%1%%%1%%%1%%%1%%%28%%%50%%%1', 'vi', 0, NULL, NULL),
(164, '', 'update', 'web_users_role', 90, 1455399823, 'admin', 'id,action_view,action_create,action_edit,action_delete,admin_id,users_id,statusfields%%%values90%%%1%%%1%%%1%%%1%%%28%%%49%%%1', 'vi', 0, NULL, NULL),
(165, '', 'update', 'web_users_role', 86, 1455399825, 'admin', 'id,action_view,action_create,action_edit,action_delete,admin_id,users_id,statusfields%%%values86%%%1%%%1%%%1%%%1%%%28%%%47%%%1', 'vi', 0, NULL, NULL),
(166, '', 'update', 'web_users_role', 55, 1455399850, 'admin', 'id,action_view,action_create,action_edit,action_delete,admin_id,users_id,statusfields%%%values55%%%1%%%1%%%1%%%1%%%28%%%46%%%1', 'vi', 0, NULL, NULL),
(167, '', 'update', 'web_users_role', 57, 1455399859, 'admin', 'id,action_view,action_create,action_edit,action_delete,admin_id,users_id,statusfields%%%values57%%%1%%%1%%%1%%%0%%%31%%%46%%%1', 'vi', 0, NULL, NULL),
(168, 'Vũ thị hiên', 'create', 'web_contact', 4318, 1455401434, 'customer', '', 'vi', 0, NULL, NULL),
(169, 'Trường dạy nấu ăn tại Đà Nẵng', 'update', 'web_header', 557, 1455401719, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values557%%%Trường dạy nấu ăn tại Đà Nẵng%%%truong-day-nau-an-tai-da-nang-248%%%%%%1372989675.jpg%%%Trường dạy nấu ăn tại Đà Nẵng%%%Trường dạy nấu ăn tại Đà Nẵng chuyên nghiệp và uy tín là Trường NetSpace- một trong những lựa chọn sáng suốt của các bạn trẻ mong muốn theo nghề bếp%%%trường dạy nấu ăn tại Đà Nẵng, truong day nau an tai da nang%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1372989180%%%vi%%%1%%%2%%%2%%%%%%,6,204,', 'vi', 0, NULL, NULL),
(170, 'Học nấu ăn ở Đà Nẵng', 'update', 'web_header', 549, 1455401789, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values549%%%Học nấu ăn ở Đà Nẵng%%%hoc-nau-an-o-da-nang-240%%%%%%1455340620.jpg%%%Học nấu ăn ở Đà Nẵng%%%Học nấu ăn ở Đà Nẵng tại Trường NetSpace là cơ hội cho nhiều Bạn trẻ khi chọn nghề bếp.%%%học nấu ăn ở Đà Nẵng, hoc nau an o da nang%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1372296780%%%vi%%%1%%%2%%%2%%%%%%,6,361,', 'vi', 0, NULL, NULL),
(171, 'Trường dạy nấu ăn NetSpace', 'update', 'web_header', 998, 1455401825, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values998%%%Trường dạy nấu ăn NetSpace%%%truong-day-nau-an-noi-tieng%%%%%%%%%Trường dạy nấu ăn%%%Trong số các trường dạy nấu ăn uy tín, chuyên nghiệp tại Việt Nam, phải kể đến Trường dạy nấu ăn NetSpace.%%%Trường dạy nấu ăn ,truong day nau an%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1425435600%%%vi%%%1%%%2%%%2%%%%%%,6,204,', 'vi', 0, NULL, NULL),
(172, 'Trường dạy nấu ăn NetSpace', 'update', 'web_header', 998, 1455401967, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values998%%%Trường dạy nấu ăn NetSpace%%%truong-day-nau-an-noi-tieng%%%%%%1455337569.jpg%%%Trường dạy nấu ăn%%%Trong số các trường dạy nấu ăn uy tín, chuyên nghiệp tại Việt Nam, phải kể đến Trường dạy nấu ăn NetSpace.%%%Trường dạy nấu ăn ,truong day nau an%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1425435600%%%vi%%%1%%%2%%%2%%%%%%,6,204,', 'vi', 0, NULL, NULL),
(173, 'Trường dạy nấu ăn NetSpace', 'update', 'web_header', 998, 1455402007, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values998%%%Trường dạy nấu ăn NetSpace%%%truong-day-nau-an-noi-tieng%%%%%%1455337569.jpg%%%Trường dạy nấu ăn%%%Trong số các trường dạy nấu ăn uy tín, chuyên nghiệp tại Việt Nam, phải kể đến Trường dạy nấu ăn NetSpace.%%%Trường dạy nấu ăn ,truong day nau an%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1425435600%%%vi%%%1%%%2%%%2%%%%%%,6,204,', 'vi', 0, NULL, NULL),
(174, 'Nguyen van tu', 'create', 'web_contact', 4319, 1455404783, 'customer', '', 'vi', 0, NULL, NULL),
(175, 'Học pha chế ở Đà Nẵng - Thỏa sức sáng tạo', 'update', 'web_header', 559, 1455405630, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values559%%%Học pha chế ở Đà Nẵng - Thỏa sức sáng tạo%%%hoc-pha-che-o-da-nang-thoa-suc-sang-tao-250%%%%%%%%%Học pha chế ở Đà Nẵng - Thỏa sức sáng tạo%%%Học pha chế ở Đà Nẵng tại Trường Dạy nghề Ẩm thực Netspace là nơi lý tưởng để mọi người yêu thích pha chế đồ uống thỏa sức học tập và sáng tạo với hàng trăm các loại thức uống khác nhau%%%Học pha chế ở Đà Nẵng,Thỏa sức sáng tạo,hoc pha che o da nang%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1373352240%%%vi%%%1%%%2%%%2%%%%%%,6,205,', 'vi', 0, NULL, NULL),
(176, 'Học pha chế ở Đà Nẵng - Thỏa sức sáng tạo', 'update', 'web_header', 559, 1455405978, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values559%%%Học pha chế ở Đà Nẵng - Thỏa sức sáng tạo%%%hoc-pha-che-o-da-nang-thoa-suc-sang-tao-250%%%%%%%%%Học pha chế ở Đà Nẵng - Thỏa sức sáng tạo%%%Học pha chế ở Đà Nẵng tại Trường Dạy nghề Ẩm thực Netspace là nơi lý tưởng để mọi người yêu thích nghề  pha chế có thể học tập và sáng tạo với hàng trăm loại thức uống khác nhau%%%Học pha chế ở Đà Nẵng,Thỏa sức sáng tạo,hoc pha che o da nang%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1373352240%%%vi%%%1%%%2%%%2%%%%%%,6,205,', 'vi', 0, NULL, NULL),
(177, 'Học pha chế ở Đà Nẵng - Thỏa sức sáng tạo', 'update', 'web_header', 559, 1455406231, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values559%%%Học pha chế ở Đà Nẵng - Thỏa sức sáng tạo%%%hoc-pha-che-o-da-nang-thoa-suc-sang-tao-250%%%%%%%%%Học pha chế ở Đà Nẵng - Thỏa sức sáng tạo%%%Học pha chế ở Đà Nẵng tại Trường Dạy nghề Ẩm thực Netspace là nơi lý tưởng để mọi người yêu thích nghề  pha chế có thể học tập và sáng tạo với hàng trăm loại thức uống khác nhau%%%Học pha chế ở Đà Nẵng,Thỏa sức sáng tạo,hoc pha che o da nang%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1373352240%%%vi%%%1%%%2%%%2%%%%%%,6,205,', 'vi', 0, NULL, NULL),
(178, 'Học pha chế ở Đà Nẵng - Thỏa sức sáng tạo', 'update', 'web_header', 559, 1455406285, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values559%%%Học pha chế ở Đà Nẵng - Thỏa sức sáng tạo%%%hoc-pha-che-o-da-nang-thoa-suc-sang-tao-250%%%%%%1455406023.jpg%%%Học pha chế ở Đà Nẵng - Thỏa sức sáng tạo%%%Học pha chế ở Đà Nẵng tại Trường Dạy nghề Ẩm thực Netspace là nơi lý tưởng để mọi người yêu thích nghề  pha chế có thể học tập và sáng tạo với hàng trăm loại thức uống khác nhau%%%Học pha chế ở Đà Nẵng,Thỏa sức sáng tạo,hoc pha che o da nang%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1373352240%%%vi%%%1%%%2%%%2%%%%%%,6,205,', 'vi', 0, NULL, NULL),
(179, 'Học pha chế ở Đà Nẵng', 'update', 'web_header', 559, 1455406307, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values559%%%Học pha chế ở Đà Nẵng%%%hoc-pha-che-o-da-nang-thoa-suc-sang-tao-250%%%%%%1455406023.jpg%%%Học pha chế ở Đà Nẵng%%%Học pha chế ở Đà Nẵng tại Trường Dạy nghề Ẩm thực Netspace là nơi lý tưởng để mọi người yêu thích nghề  pha chế có thể học tập và sáng tạo với hàng trăm loại thức uống khác nhau%%%Học pha chế ở Đà Nẵng,hoc pha che o da nang%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1373352240%%%vi%%%1%%%2%%%2%%%%%%,6,205,', 'vi', 0, NULL, NULL),
(180, 'Học pha chế ở Đà Nẵng', 'update', 'web_header', 559, 1455406381, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values559%%%Học pha chế ở Đà Nẵng%%%hoc-pha-che-o-da-nang-thoa-suc-sang-tao-250%%%%%%1455406141.jpg%%%Học pha chế ở Đà Nẵng%%%Học pha chế ở Đà Nẵng tại Trường Dạy nghề Ẩm thực Netspace là nơi lý tưởng để mọi người yêu thích nghề  pha chế có thể học tập và sáng tạo với hàng trăm loại thức uống khác nhau%%%Học pha chế ở Đà Nẵng,hoc pha che o da nang%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1373352240%%%vi%%%1%%%2%%%2%%%%%%,6,205,', 'vi', 0, NULL, NULL),
(181, 'Học pha chế đồ uống hấp dẫn phụ nữ', 'update', 'web_header', 542, 1455407211, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values542%%%Học pha chế đồ uống hấp dẫn phụ nữ%%%Hoc-Pha-Che-Do-Uong-Hap-Dan-Phu-Nu-222%%%%%%%%%Học pha chế đồ uống hấp dẫn phụ nữ%%%Học pha chế đồ uống ngày càng hấp dẫn phụ nữ, rất nhiều chị em đi tìm nơi học pha chế để về phục vụ làm đẹp cho bản thân và cho gia đình hàng ngày.%%%Học pha chế đồ uống hấp dẫn phụ nữ,hoc pha che do uong hap dan phu nu%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1432550460%%%vi%%%1%%%2%%%2%%%%%%,6,205,356,', 'vi', 0, NULL, NULL),
(182, 'Học pha chế đồ uống hấp dẫn phụ nữ', 'update', 'web_header', 542, 1455407288, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values542%%%Học pha chế đồ uống hấp dẫn phụ nữ%%%Hoc-Pha-Che-Do-Uong-Hap-Dan-Phu-Nu-222%%%%%%1455406847.jpg%%%Học pha chế đồ uống hấp dẫn phụ nữ%%%Học pha chế đồ uống ngày càng hấp dẫn phụ nữ, rất nhiều chị em đi tìm nơi học pha chế để về phục vụ cho gia đình, làm đẹp cho bản thân .%%%Học pha chế đồ uống, hoc pha che do uong%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1432550460%%%vi%%%1%%%2%%%2%%%%%%,6,205,356,', 'vi', 0, NULL, NULL),
(183, 'Học pha chế đồ uống hấp dẫn phụ nữ', 'update', 'web_header', 542, 1455407323, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values542%%%Học pha chế đồ uống hấp dẫn phụ nữ%%%Hoc-Pha-Che-Do-Uong-Hap-Dan-Phu-Nu-222%%%%%%1455406847.jpg%%%Học pha chế đồ uống hấp dẫn phụ nữ%%%Học pha chế đồ uống ngày càng hấp dẫn phụ nữ, rất nhiều chị em đi tìm nơi học pha chế để về phục vụ cho gia đình, làm đẹp cho bản thân .%%%Học pha chế đồ uống, hoc pha che do uong%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1432550460%%%vi%%%1%%%2%%%2%%%%%%,6,205,356,', 'vi', 0, NULL, NULL),
(184, 'Học pha chế, học nấu ăn ở Đà Nẵng - Chìa khóa thành công', 'update', 'web_header', 554, 1455408684, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values554%%%Học pha chế, học nấu ăn ở Đà Nẵng - Chìa khóa thành công%%%hoc-pha-che-hoc-nau-an-o-da-nang-chia-khoa-thanh-cong-245%%%%%%1372648812.jpg%%%Học pha chế, học nấu ăn ở Đà Nẵng - Chìa khóa thành công%%%Sự hiện diện của Trường dạy ẩm thực NetSpace tại Đà Nẵng với các chương trình dạy học pha chế, dạy học nấu ăn ở Đà Nẵng. Đây sẽ là cơ hội học tập, là chìa khóa thành công trong nghề pha chế, nghề đầu bếp.%%%Học pha chế,học nấu ăn ở Đà Nẵng,Chìa khóa thành công%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1372648320%%%vi%%%1%%%2%%%2%%%%%%,6,361,', 'vi', 0, NULL, NULL),
(185, 'Học nấu ăn ở Đà Nẵng cơ hội cho các bạn trẻ', 'update', 'web_header', 548, 1455409564, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values548%%%Học nấu ăn ở Đà Nẵng cơ hội cho các bạn trẻ%%%hoc-nau-an-o-da-nang-co-hoi-cho-cac-ban-tre-239%%%%%%1372296666.jpg%%%Học nấu ăn ở Đà Nẵng cơ hội cho các bạn trẻ%%%Chào mừng tất cả các bạn đến học nấu ăn ở Đà Nẵng tại Trường dạy nghề ẩm thực Netspace để bắt đầu một tương lai tươi sáng với nghề đầu bếp đang hấp dẫn rất nhiều người.%%%Học nấu ăn ở Đà Nẵng cơ hội cho các bạn trẻ,hoc nau an o da nang co hoi cho cac ban tre%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1372296180%%%vi%%%1%%%2%%%2%%%%%%,6,361,', 'vi', 0, NULL, NULL),
(186, 'Học nấu món Hoa cơ bản', 'update', 'web_header', 624, 1455410171, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values624%%%Học nấu món Hoa cơ bản%%%bep-hoa-can-ban%%%%%%1454548475.jpg%%%Học nấu ăn - Bếp Hoa căn bản | Hoc nau mon Hoa%%%Học nấu ăn Bếp Hoa căn bản là chương trình được thiết kế đặc biệt dành cho các học viên mong muốn tìm hiểu và nắm bắt những tinh hoa Ẩm thực Trung Hoa%%%học nấu món hoa cơ bản,hoc nau mon hoa,hoc bep hoa%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1432694040%%%vi%%%1%%%2%%%3%%%%%%,390,22,', 'vi', 0, NULL, NULL),
(187, 'Học bếp Việt Cao Cấp', 'update', 'web_header', 910, 1455410272, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values910%%%Học bếp Việt Cao Cấp%%%chuong-trinh-bep-viet-cao-cap%%%%%%1433488808.jpg%%%Học bếp Việt Cao Cấp%%%Trường dạy nghề ẩm thực NetSpace đã xây dựng chương trình Bếp Việt cao cấp, chuyên về các món đặc sản, hải sản để phục vụ các món ăn ngon cho khách hàng cao cấp%%%học bếp việt cao cấp,hoc bep viet cao cap%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1433487960%%%vi%%%1%%%2%%%3%%%%%%,386,390,38,', 'vi', 0, NULL, NULL),
(188, 'Học làm bánh tổng hợp', 'update', 'web_header', 1100, 1455410519, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1100%%%Học làm bánh tổng hợp%%%hoc-lam-banh-tong-hop%%%%%%1442564178.jpg%%%Học làm bánh tổng hợp%%%Khóa học làm bánh tổng hợp được trường dạy làm bánh Netspace thiết kế gồm các dòng bánh phổ biến, hiện đại bánh ngọt kiểu Á, bánh ngọt kiểu Âu%%%học làm bánh tổng hợp,hoc lam banh tong hop,hoc lam banh%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1442563140%%%vi%%%1%%%2%%%3%%%%%%,386,389,400,', 'vi', 0, NULL, NULL),
(189, 'Học làm bánh tổng hợp', 'update', 'web_header', 1100, 1455410567, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1100%%%Học làm bánh tổng hợp%%%hoc-lam-banh-tong-hop%%%%%%1442564178.jpg%%%Bánh tổng hợp%%%Khóa học Bánh tổng hợp được trường dạy làm bánh Netspace thiết kế gồm các dòng bánh phổ biến, hiện đại bánh ngọt kiểu Á, bánh ngọt kiểu Âu%%%học làm bánh tổng hợp,hoc lam banh tong hop, học làm bánh, hoc lam banh%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1442563140%%%vi%%%1%%%2%%%3%%%%%%,386,389,400,', 'vi', 0, NULL, NULL),
(190, 'Học làm bánh lạnh', 'update', 'web_header', 1116, 1455413214, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1116%%%Học làm bánh lạnh%%%hoc-lam-banh-lanh%%%%%%1441428634.jpg%%%Học làm bánh lạnh | Hoc lam banh lanh%%%Chương trình Học làm bánh lạnh hay còn gọi là học làm bánh không cần lò nướng được trường Netspace thiết kế đặc biệt, chọn lọc%%%học làm bánh lạnh,hoc lam banh lanh%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1441427580%%%vi%%%1%%%2%%%3%%%%%%,386,389,400,', 'vi', 0, NULL, NULL),
(191, 'Học làm bánh lạnh', 'update', 'web_header', 1116, 1455413247, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1116%%%Học làm bánh lạnh%%%hoc-lam-banh-lanh%%%%%%1441428634.jpg%%%Bánh lạnh%%%Chương trình &quot;Bánh lạnh&quot; hay còn gọi là học làm bánh không cần lò nướng được trường Netspace thiết kế đặc biệt, chọn lọc%%%học làm bánh lạnh,hoc lam banh lanh%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1441427580%%%vi%%%1%%%2%%%3%%%%%%,386,389,400,', 'vi', 0, NULL, NULL),
(192, 'Học làm bánh mì Âu', 'update', 'web_header', 1115, 1455413533, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1115%%%Học làm bánh mì Âu%%%hoc-lam-banh-mi-au%%%%%%1441428093.jpg%%%Học làm bánh mì Âu%%%Học làm bánh mì Âu là chương trình được trường dạy làm bánh Netspace cung cấp các kiến thức cơ bản về cách tồn trữ, bảo quản và cách lựa chọn nguyên vật liệu%%%học làm bánh mì âu,hoc lam banh mi au%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1441427040%%%vi%%%1%%%2%%%3%%%%%%,386,389,400,', 'vi', 0, NULL, NULL),
(193, 'Học làm bánh hiện đại', 'update', 'web_header', 743, 1455413933, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values743%%%Học làm bánh hiện đại%%%hoc-lam-banh-hien-dai%%%%%%1445824401.jpg%%%Học làm bánh hiện đại | Hoc lam banh hien dai%%%Chương trình Học làm bánh hiện đại đào tạo học viên làm bánh để làm những loại bánh phù hợp phân khúc khách hàng cao hiện nay.%%%học làm bánh hiện đại,hoc lam banh hien dai,hoc lam banh%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1445823720%%%vi%%%1%%%2%%%3%%%%%%,397,386,389,400,', 'vi', 0, NULL, NULL),
(194, 'Học nấu Bánh canh', 'update', 'web_header', 1423, 1455414860, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1423%%%Học nấu Bánh canh%%%hoc-nau-banh-canh%%%%%%1454889793.jpg%%%Học nấu Bánh canh | Hoc nau banh canh%%%Món bánh canh là món ăn đa dạng, rất nhiều chủng loại như: bánh canh giò heo, bánh canh cá lóc, bánh canh cua, bánh canh ghẹ%%%học nấu bánh canh,hoc nau banh canh%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1454889540%%%vi%%%1%%%2%%%3%%%%%%,32,', 'vi', 0, NULL, NULL),
(195, 'Học làm giò lụa', 'update', 'web_header', 1428, 1455415123, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1428%%%Học làm giò lụa%%%hoc-lam-gio-lua%%%%%%1454891512.jpg%%%Học làm giò lụa%%%Dạy bí quyết làm chả lụa, làm chả bò, làm giò thủ, làm chà bông, làm bò viên, làm giò sống, làm jambon%%%học làm giò lụa,hoc lam gio lua%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1454891400%%%vi%%%1%%%2%%%3%%%%%%,32,', 'vi', 0, NULL, NULL),
(196, 'Học món chay nâng cao', 'update', 'web_header', 1007, 1455415461, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1007%%%Học món chay nâng cao%%%hoc-mon-chay-nang-cao%%%%%%1432693605.jpg%%%Học món chay nâng cao | Hoc mon chay%%%Nhằm nâng cao tay nghề và đẳng cấp các Đầu bếp chay tại các Quán ăn chay, Nhà hàng. NetSpace đã xây dựng chương trình bếp chay nâng cao.%%%học món chay nâng cao,hoc mon chay nang cao,hoc mon chay%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1432692660%%%vi%%%1%%%2%%%3%%%%%%,390,225,', 'vi', 0, NULL, NULL),
(197, 'Học nấu món chay căn bản', 'update', 'web_header', 742, 1455415884, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values742%%%Học nấu món chay căn bản%%%bep-chay-can-ban%%%%%%1432697600.jpg%%%Học nấu món chay căn bản | Hoc mon chay%%%Món chay là một nét đặc trưng riêng của Phật giáo, ăn chay ngoài vấn đề tín ngưỡng còn có tác dụng giữ sức khỏe, tránh bệnh tật. Nhiều Quán ăn chay%%%học nấu món chay căn bản,hoc nau mon chay,hoc mon chay%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1432696920%%%vi%%%1%%%2%%%3%%%%%%,390,22,', 'vi', 0, NULL, NULL),
(198, 'Bếp chính bếp Việt nâng cao', 'update', 'web_header', 474, 1455416164, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values474%%%Bếp chính bếp Việt nâng cao%%%bep-chinh-bep-viet-nha-hang%%%%%%1432694512.jpg%%%Học nấu ăn món Việt nâng cao%%%Học nấu ăn đang là nhu cầu rất lớn của nhiều bạn trẻ và những người quan tâm đến việc tìm kiếm một nghề ổn định và phát triển%%%học nấu bếp việt nâng cao,hoc nau bep viet,hoc nau an,hoc nau mon viet nang cao%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1432694100%%%vi%%%1%%%2%%%3%%%%%%,397,390,225,', 'vi', 0, NULL, NULL),
(199, 'Lê Thị Thiên Lý', 'create', 'web_contact', 4320, 1455417762, 'customer', '', 'vi', 0, NULL, NULL),
(200, 'Bếp chính bếp Việt', 'update', 'web_header', 474, 1455418424, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values474%%%Bếp chính bếp Việt%%%bep-chinh-bep-viet-nha-hang%%%%%%1432694512.jpg%%%Bếp chính bếp Việt%%%Học nấu ăn đang là nhu cầu rất lớn của nhiều bạn trẻ và những người quan tâm đến việc tìm kiếm một nghề ổn định và phát triển%%%học nấu bếp việt,hoc nau bep viet,hoc nau an,hoc nau mon viet nang cao%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1432694100%%%vi%%%1%%%2%%%3%%%%%%,397,390,225,', 'vi', 0, NULL, NULL),
(201, 'Học pha chế tổng hợp', 'update', 'web_header', 462, 1455418938, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values462%%%Học pha chế tổng hợp%%%hoc-pha-che-tong-hop%%%%%%1432697200.jpg%%%Học pha chế - Chuyên viên pha chế tổng hợp%%%Chương trình đào tạo những Nhân viên Pha chế tổng hợp có khả năng làm việc tại các mô hình quán cà phê, Nhà hàng, Khách sạn, Khu Du lịch hoặc làm Chủ các loại mô hình quán cà phê, sinh tố, nước ép...%%%học pha chế,chuyên viên pha chế tổng hợp,hoc pha che%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1432696800%%%vi%%%1%%%2%%%3%%%%%%,210,', 'vi', 0, NULL, NULL),
(202, 'Học nấu ăn - Đầu bếp chuyên nghiệp quốc tế', 'update', 'web_header', 526, 1455419527, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values526%%%Học nấu ăn - Đầu bếp chuyên nghiệp quốc tế%%%hoc-nau-an-quoc-te%%%%%%1432700084.jpg%%%Học nấu ăn - Đầu bếp chuyên nghiệp quốc tế%%%Chương trình Bếp chuyên nghiệp Quốc tế được thiết kế dành cho những người đam mê nấu ăn mong muốn trở thành Đầu bếp chuyên nghiệp đẳng cấp%%%đầu bếp chuyên nghiệp,đầu bếp quốc tế,học bếp,dau bep chuyen nghiep,dau bep quoc te%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1432699620%%%vi%%%1%%%2%%%3%%%%%%,390,40,', 'vi', 0, NULL, NULL),
(203, 'Học nấu món Việt cơ bản - Nghề Phụ Bếp', 'update', 'web_header', 619, 1455422336, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values619%%%Học nấu món Việt cơ bản - Nghề Phụ Bếp%%%bep-viet-co-ban-nghe-phu-bep%%%%%%1432697657.jpg%%%Học nấu món Việt cơ bản - Nghề Phụ Bếp%%%Học nấu ăn món Việt căn bản là chương trình đào tạo dành cho các bạn bắt đầu nghề bếp, là tiền đề quan trọng để các bạn có thể trở thành đầu bếp giỏi sau này%%%học nấu món việt cơ bản,nghề phụ bếp,hoc nau mon viet,phu bep%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1432697100%%%vi%%%1%%%2%%%3%%%%%%,390,22,', 'vi', 0, NULL, NULL),
(204, 'Học nấu món Âu - Bếp Âu căn bản', 'update', 'web_header', 622, 1455422731, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values622%%%Học nấu món Âu - Bếp Âu căn bản%%%bep-au-can-ban%%%%%%1432694600.jpg%%%Học nấu món Âu - Bếp Âu căn bản | Hoc nau mon au%%%Học nấu món Âu - Bếp Âu căn bản là chương trình được thiết kế đặc biệt dành cho các học viên yêu thích các món ăn châu Âu đẳng cấp%%%học nấu món âu cơ bản,hoc nau mon au,bếp âu cơ bản,bep au co ban%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1432694040%%%vi%%%1%%%2%%%3%%%%%%,390,22,', 'vi', 0, NULL, NULL),
(205, 'Học nấu ăn - Bếp Âu nâng cao', 'update', 'web_header', 623, 1455423289, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values623%%%Học nấu ăn - Bếp Âu nâng cao%%%bep-chinh-bep-au%%%%%%1432692561.jpg%%%Học nấu ăn - Bếp Âu nâng cao | Hoc nau mon Au%%%Bạn là người ưa thích những món ăn Âu, hay chuẩn bị đi sang những nước Châu Âu, bạn muốn tìm hiểu về văn hóa ẩm thực của các nước phương Tây%%%học nấu món âu,món âu nâng cao,hoc nau mon au,mon au%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1432692000%%%vi%%%1%%%2%%%3%%%%%%,390,225,', 'vi', 0, NULL, NULL),
(206, 'Học món Nhật - Bếp chính Bếp Nhật', 'update', 'web_header', 585, 1455423814, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values585%%%Học món Nhật - Bếp chính Bếp Nhật%%%hoc-mon-nhat%%%%%%1432690963.jpg%%%Học nấu món Nhật - Nơi dạy món Nhật - Trường dạy món Nhật | Mon Nhat%%%Học món Nhật tại Trường Netspace, học viên sẽ được học trực tiếp từ các đầu bếp chuyên nghiệp, bếp trưởng Nhà hàng 5 sao chuyên về các món Nhật%%%học món nhật,bếp chính bếp nhật,trường dạy món nhật,hoc mon nhat,truong day mon nhat%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1432690440%%%vi%%%1%%%2%%%3%%%%%%,390,225,', 'vi', 0, NULL, NULL),
(207, 'Dạy nấu ăn gia đình - Học nấu ăn gia đình', 'update', 'web_header', 439, 1455423874, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values439%%%Dạy nấu ăn gia đình - Học nấu ăn gia đình%%%day-nau-an-gia-dinh-hoc-nau-an-gia-dinh%%%%%%1433401517.jpg%%%Dạy nấu ăn gia đình - Học nấu ăn gia đình%%%Cuộc sống ngày càng phát triển, nhu cầu ăn ngon là yêu cầu thiết thực trong các bữa ăn gia đình của mọi người.%%%dạy nấu ăn gia đình,học nấu ăn gia đình,day nau an gia dinh,hoc nau an gia dinh%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1433401140%%%vi%%%1%%%2%%%3%%%%%%,386,390,3,', 'vi', 0, NULL, NULL),
(208, 'Học nghề bếp, pha chế cấp tốc - Có việc làm ngay', 'update', 'web_header', 900, 1455423973, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values900%%%Học nghề bếp, pha chế cấp tốc - Có việc làm ngay%%%hoc-nghe-bep-pha-che-cap-toc-co-viec-lam-ngay%%%%%%1419999658.jpg%%%Học nghề bếp, pha chế cấp tốc - Có việc làm ngay%%%Có thể nói, khó có nghề nào dễ học, thú vị và dễ kiếm việc làm như nghề bếp, nghề pha chế.%%%Học nghề bếp cấp tốc - Có việc làm ngay,hoc nghe bep cap toc - co viec lam ngay%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1419998820%%%vi%%%1%%%2%%%3%%%%%%,390,30,', 'vi', 0, NULL, NULL),
(209, 'Các món ăn sáng ngon', 'update', 'web_header', 919, 1455424005, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values919%%%Các món ăn sáng ngon%%%cac-mon-an-sang-ngon%%%%%%1420626137.jpg%%%Các món ăn sáng ngon%%%Chương trình dành cho Các bạn yêu thích nấu ăn và mong muốn kinh doanh các món ăn sáng tại Quán cà phê, Nhà hàng hoặc nấu những món ăn sáng ngon cho gia đình. %%%Các món ăn sáng ngon,cac mon an sang ngon%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1420625280%%%vi%%%1%%%2%%%3%%%%%%,390,30,', 'vi', 0, NULL, NULL),
(210, 'Các khóa đào tạo cấp tốc', 'update', 'web_header', 30, 1455424059, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values30%%%Các khóa đào tạo cấp tốc%%%cac-khoa-dao-tao-cap-toc%%%%%%1453974498.jpg%%%Các khóa đào tạo cấp tốc, chuyên đề%%%Các khóa đào tạo cấp tốc, chuyên đề%%%Các khóa đào tạo cấp tốc chuyên đề,cac khoa dao tao cap toc chuyen de%%%%%%390%%%%%%%%%%%%%%%%%%5%%%%%%1453974480%%%vi%%%1%%%1%%%3', 'vi', 0, NULL, NULL),
(211, 'Các khóa học nấu ăn khác', 'update', 'web_header', 3, 1455424173, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values3%%%Các khóa học nấu ăn khác%%%cac-khoa-hoc-nau-an-khac%%%%%%1453974482.jpg%%%Các khóa học nấu ăn khác%%%Các khóa học nấu ăn khác như: Biểu diễnTeppanyaki - Nhật Bản, Học nấu các món tiệc đặc sắc,...%%%các khóa học nấu ăn khác,cac khoa hoc nau an khac%%%%%%390%%%%%%%%%%%%%%%%%%10%%%%%%1453974480%%%vi%%%1%%%1%%%3', 'vi', 0, NULL, NULL);
INSERT INTO `web_logs` (`id`, `name`, `action`, `_table`, `table_id`, `datetime`, `username`, `content`, `lang`, `status`, `date_restore`, `user_restore`) VALUES
(212, 'Học pha chế đặc biệt', 'update', 'web_header', 1111, 1455424538, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1111%%%Học pha chế đặc biệt%%%hoc-pha-che-dac-biet%%%%%%1440234749.jpg%%%Học pha chế đặc biệt%%%Học pha chế đặc biệt là Chương trình đào tạo dành cho những Chủ quán cà phê có nhu cầu phục vụ các thức uống tạo sự khác biệt%%%học pha chế đặc biệt,hoc pha che dac biet%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1440233700%%%vi%%%1%%%2%%%3%%%%%%,386,210,', 'vi', 0, NULL, NULL),
(213, 'Học làm bánh nướng', 'update', 'web_header', 1113, 1455424751, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1113%%%Học làm bánh nướng%%%hoc-lam-banh-nuong%%%%%%1440385171.jpg%%%Học làm bánh nướng | Hoc lam banh nuong%%%Các loại bánh nướng có thể biến tấu sáng tạo để bạn dễ dàng làm được chính xác đồng thời lựa chọn được nguyên liệu làm bánh ngon với các chuyên gia bánh hàng đầu.%%%học làm bánh nướng,hoc lam banh nuong%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1440384120%%%vi%%%1%%%2%%%3%%%%%%,386,389,400,', 'vi', 0, NULL, NULL),
(214, 'Học làm bánh mì Á', 'update', 'web_header', 1112, 1455424920, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1112%%%Học làm bánh mì Á%%%hoc-lam-banh-mi-a%%%%%%1440383370.jpg%%%Học làm bánh mì Á | Hoc lam banh mi A%%%Chương trình Học làm bánh mì Á được trường Netspace thiết kế đặc biệt, chọn lọc những loại bánh đặc sắc nhất đưa vào giảng dạy%%%học làm bánh mì,hoc lam banh mi,banh mi a%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1440382320%%%vi%%%1%%%2%%%3%%%%%%,386,389,400,', 'vi', 0, NULL, NULL),
(215, 'Học làm bánh kem', 'update', 'web_header', 1110, 1455425069, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1110%%%Học làm bánh kem%%%hoc-lam-banh-kem%%%%%%1437097408.jpg%%%Học làm bánh kem | Hoc lam banh kem%%%Học làm bánh kem hiện đại là chương trình đào tạo đặc biệt được cập nhật các loại bánh kem mới, đang thịnh hành và được nhiều người yêu thích%%%học làm bánh kem,hoc lam banh kem%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1437096360%%%vi%%%1%%%2%%%3%%%%%%,389,400,', 'vi', 0, NULL, NULL),
(216, 'Bánh kem hiện đại', 'update', 'web_header', 1110, 1455425134, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1110%%%Bánh kem hiện đại%%%hoc-lam-banh-kem%%%%%%1437097408.jpg%%%Bánh kem hiện đại%%%Học làm bánh kem hiện đại là chương trình đào tạo đặc biệt được cập nhật các loại bánh kem mới, đang thịnh hành và được nhiều người yêu thích%%%học làm bánh kem,hoc lam banh kem%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1437096360%%%vi%%%1%%%2%%%3%%%%%%,389,400,', 'vi', 0, NULL, NULL),
(217, 'Cafe Bánh - Học mô hình kinh doanh mới', 'update', 'web_header', 1103, 1455425318, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1103%%%Cafe Bánh - Học mô hình kinh doanh mới%%%cafe-banh%%%%%%1454623103.jpg%%%Học làm bánh kết hợp mô hình bán trong quán café (Café bánh)%%%Quầy bánh kết hợp mô hình quán cafe bánh (bánh café Du Miên, Miền Đồng Thảo, Gloria Jean Coffees…) đang là nhu cầu lớn%%%cafe banh,làm bánh kết hợp,lam banh ket hop%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1435301820%%%vi%%%1%%%2%%%3%%%%%%,389,402,', 'vi', 0, NULL, NULL),
(218, 'Học làm bánh để mở cửa hàng bánh ngọt phổ thông', 'update', 'web_header', 1104, 1455425534, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1104%%%Học làm bánh để mở cửa hàng bánh ngọt phổ thông%%%hoc-lam-banh-de-mo-cua-hang-banh-ngot-pho-thong%%%%%%1454622462.jpg%%%Học làm bánh để mở cửa hàng bánh ngọt phổ thông | Hoc lam banh mo cua hang%%%Cửa hàng bánh ngọt và cà phê là xu hướng phát triển tất yếu của các nhà kinh doanh ẩm thực hiện nay. Trào lưu này đã phát triển ở nhiểu nước Châu Á...%%%học làm bánh để mở cửa hàng,hoc lam banh de mo cua hang%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1435302600%%%vi%%%1%%%2%%%3%%%%%%,389,402,', 'vi', 0, NULL, NULL),
(219, 'Học nấu ăn các món đặc sản, hải sản', 'update', 'web_header', 662, 1455425710, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values662%%%Học nấu ăn các món đặc sản, hải sản%%%hoc-nau-an-cac-mon-dac-san-hai-san%%%%%%1432697340.jpg%%%Học nấu ăn các món đặc sản, hải sản%%%Chương trình học nấu ăn các món đặc sản, hải sản được Trường Dạy nghề Ẩm thực Netspace xây dựng chuyên sâu về các món đặc sản, hải sản cao cấp%%%học nấu ăn,các món đặc sản,hải sản,hoc nau an,cac mon dac san,hai san%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1432696740%%%vi%%%1%%%2%%%3%%%%%%,38,', 'vi', 0, NULL, NULL),
(220, 'Học nấu các món đặc sản Dê', 'update', 'web_header', 572, 1455425801, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values572%%%Học nấu các món đặc sản Dê%%%hoc-nau-cac-mon-dac-san-de%%%%%%1430104110.jpg%%%Học nấu các món đặc sản Dê | Hoc nau mon de%%%Các món dê trong chương trình này là những món dê được chọn lọc từ nhiều vùng miền của Việt Nam và sẽ được giảng dạy từ những Đầu bếp hàng đầu chuyên về món dê%%%học nấu món dê,hoc nau mon de%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1430103600%%%vi%%%1%%%2%%%3%%%%%%,38,', 'vi', 0, NULL, NULL),
(221, 'Chương trình học nấu 100 món chay đặc sắc', 'update', 'web_header', 682, 1455425880, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values682%%%Chương trình học nấu 100 món chay đặc sắc%%%hoc-nau-100-mon-chay%%%%%%1395284840.jpg%%%Học nấu 100 món chay | Hoc mon chay%%%Những món ăn chay đặc sắc nhất của Vua bếp THÁI TÔN, Bạn có thể chọn một số món chay trong thực đơn để học với Người Thầy xuất sắc này.%%%học nấu 100 món chay,hoc nau mon chay%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1395284220%%%vi%%%1%%%2%%%3%%%%%%,38,', 'vi', 0, NULL, NULL),
(222, 'Home tại sao chọn Netspace', 'update', 'web_header', 1391, 1455426161, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1391%%%Home tại sao chọn Netspace%%%home-tai-sao-chon-netspace%%%%%%%%%Tại sao chọn Netspace?%%%NetSpace luôn tự hào là một trong những trường đào tạo nghề bếp tốt với cơ sở vật chất quy mô lớn và hiện đại nhất hiện nay.%%%home tại sao chọn netspace%%%%%%0%%%%%%%%%%%%%%%%%%3%%%%%%1454125080%%%vi%%%1%%%1%%%20%%%,10,', 'vi', 0, NULL, NULL),
(223, 'Home tại sao chọn Netspace', 'update', 'web_header', 1391, 1455426204, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1391%%%Home tại sao chọn Netspace%%%home-tai-sao-chon-netspace%%%%%%%%%Tại sao chọn Netspace?%%%NetSpace luôn tự hào là một trong những trường đào tạo nghề bếp, nghề pha chế, nghề bánh tốt, với quy mô đào tạo lớn trên cả nước và cơ sở vật chất hiện đại nhất hiện nay.%%%home tại sao chọn netspace%%%%%%0%%%%%%%%%%%%%%%%%%3%%%%%%1454125080%%%vi%%%1%%%1%%%20%%%,10,', 'vi', 0, NULL, NULL),
(224, 'duong ngoc tu', 'create', 'web_contact', 4321, 1455431835, 'customer', '', 'vi', 0, NULL, NULL),
(225, 'Hoàng Minh Tuấn', 'create', 'web_contact', 4322, 1455433287, 'customer', '', 'vi', 0, NULL, NULL),
(226, 'Dương Mỹ Chi', 'create', 'web_contact', 4323, 1455440610, 'customer', '', 'vi', 0, NULL, NULL),
(227, 'Trường dạy nấu ăn ở Đà Lạt', 'update', 'web_header', 736, 1455475800, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values736%%%Trường dạy nấu ăn ở Đà Lạt%%%truong-day-nau-an-o-da-lat%%%%%%1422863894.%%%Trường dạy nấu ăn ở Đà Lạt%%%Trường dạy nấu ăn ở Đà Lạt – một chi nhánh mới của trường dạy nghề ẩm thực NetSpace, địa chỉ 51D, Hùng Vương, TP.Đà Lạt đã khai trương và bắt đầu hoạt động từ 12/6/2014 tạo ra một địa điểm mới cho các Học viên miền Trung Nam Bộ có thể tham gia học tập những khoá bếp, khoá pha chế, các khoá kinh doan%%%Trường dạy nấu ăn ở Đà Lạt,truong day nau an o da lat%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1422863220%%%vi%%%1%%%2%%%2%%%%%%,6,204,', 'vi', 0, NULL, NULL),
(228, 'Lựa chọn Trường dạy nấu ăn tốt - yếu tố đủ để thành công với nghề bếp', 'update', 'web_header', 643, 1455475968, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values643%%%Lựa chọn Trường dạy nấu ăn tốt - yếu tố đủ để thành công với nghề bếp%%%lua-chon-truong-day-nau-an-tot-yeu-to-du-de-thanh-cong-voi-nghe-bep-332%%%%%%%%%Lựa chọn Trường dạy nấu ăn tốt - yếu tố đủ để thành công với nghề bếp%%%Để trở thành một đầu bếp thành công thì cần những điều gì? Đó không chỉ là câu hỏi của những người yêu nghề bếp mà còn là thách thức đặt ra cho những trường dạy nấu ăn – nơi ươm mầm cho những tài năng bếp.%%%Lựa chọn Trường dạy nấu ăn tốt,yếu tố đủ để thành công với nghề bếp%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1383527280%%%vi%%%1%%%2%%%2%%%%%%,6,204,', 'vi', 0, NULL, NULL),
(229, 'Học pha chế đồ uống cùng Tường Vy, Hiếu Hiền và Thái Hòa', 'update', 'web_header', 539, 1455476080, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values539%%%Học pha chế đồ uống cùng Tường Vy, Hiếu Hiền và Thái Hòa%%%Hoc-Pha-Che-Do-Uong-Cung-Tuong-Vy-Hieu-Hien-Va-Thai-Hoa-219%%%%%%%%%Học pha chế đồ uống cùng Tường Vy, Hiếu Hiền và Thái Hòa%%%Học pha chế đồ uống cùng các diễn viên Tường Vy, Hiếu Hiền và Thái Hòa trong bộ phim “Bếp của Mẹ” tại trường Dạy nghề Ẩm thực Netspace rất vui vẻ và náo nhiệt.%%%Học pha chế đồ uống, cùng Tường Vy, Hiếu Hiền và Thái Hòa%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1432550460%%%vi%%%1%%%2%%%2%%%%%%,6,205,356,', 'vi', 0, NULL, NULL),
(230, 'Học nấu ăn ở đâu', 'update', 'web_header', 361, 1455476579, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values361%%%Học nấu ăn ở đâu%%%hoc-nau-an-o-dau%%%%%%%%%Học nấu ăn ở đâu%%%Học nấu ăn ở đâu tốt là nhu cầu tìm kiếm của rất nhiều Bạn trẻ, những người yêu thích học nấu ăn và phát huy năng khiếu đam mê của mình trong ngành ẩm thực để vững tay nghề hãy chọn trường NETSPACE là nơi bắt đầu cho cuộc hành trình ẩm thực.%%%Học nấu ăn ở đâu,hoc nau an o dau,học nấu ăn ở tphcm,hoc nau an o tphcm%%%%%%6%%%%%%%%%%%%%%%%%%4%%%%%%1453974480%%%vi%%%1%%%1%%%2%%%,1,', 'vi', 0, NULL, NULL),
(231, 'Bí quyết để có làn da tươi trẻ bằng thực phẩm', 'update', 'web_header', 1020, 1455476640, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1020%%%Bí quyết để có làn da tươi trẻ bằng thực phẩm%%%bi-quyet-de-co-lan-da-tuoi-tre-bang-thuc-pham%%%%%%1426241338.jpg%%%Bí quyết để có làn da tươi trẻ bằng thực phẩm%%%Nhờ tính sền sệt của rau quả, nước sẽ giữ được lâu, làm mục các biểu bì chết trên da mặt. Rau quả tươi xay nhuyễn, khi làm mặt nạ sẽ trả lại cho làn da vài loại vi sinh vật có ích, mà ngày thường xà bông và các chất tẩy rửa đã làm suy thoái. Vì vậy mà sau đó làn da trở nên tươi tắn, bạn trở nên tự t%%%Bí quyết để có làn da tươi trẻ bằng thực phẩm,bi quyet de co lan da tuoi tre bang thuc pham%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1426240380%%%vi%%%1%%%2%%%2%%%%%%,6,361,', 'vi', 0, NULL, NULL),
(232, 'Củ cải thực phẩm phòng chống ung thư', 'update', 'web_header', 1014, 1455476646, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1014%%%Củ cải thực phẩm phòng chống ung thư%%%cu-cai-thuc-pham-phong-chong-ung-thu%%%%%%1425982552.jpg%%%Củ cải thực phẩm phòng chống ung thư%%%Củ cải là thực phẩm tốt nhất trong các loại rau, thành phần dinh dưỡng phong phú, hàm chứa phong phú vitamin B và nhiều loại khoáng chất, trong đó hàm lượng vitamin C nhiều gấp 10 lần so với quả Lê. Củ cải còn có tác dụng chống vi rút, chống ung thư.%%%Củ cải thực phẩm phòng chống ung thư,cu cai thuc pham phong chong ung thu%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1425981600%%%vi%%%1%%%2%%%2%%%%%%,6,361,', 'vi', 0, NULL, NULL),
(233, 'Tái chế vỏ đựng trứng thành bó hoa xinh xinh', 'update', 'web_header', 999, 1455476654, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values999%%%Tái chế vỏ đựng trứng thành bó hoa xinh xinh%%%tai-che-vo-dung-trung-thanh-bo-hoa-xinh-xinh%%%%%%1425373597.jpg%%%Tái chế vỏ đựng trứng thành bó hoa xinh xinh%%%Đừng vội vứt bỏ hộp đựng trứng đi nhé, bạn có thể tái chế vỏ hộp đựng trứng thành cả một bó hoa xinh xắn trang trí nhà đấy.%%%Tái chế vỏ đựng trứng thành bó hoa xinh xinh,tai che vo dung trung thanh bo hoa xinh xinh%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1425372660%%%vi%%%1%%%2%%%2%%%%%%,6,361,', 'vi', 0, NULL, NULL),
(234, 'Sáng tạo với vỏ chai nhựa bỏ đi', 'update', 'web_header', 996, 1455476662, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values996%%%Sáng tạo với vỏ chai nhựa bỏ đi%%%sang-tao-voi-vo-chai-nhua-bo-di%%%%%%1425284494.jpg%%%Sáng tạo với vỏ chai nhựa bỏ đi%%%Hãy đem tới cuộc sống mới cho các loại chai nước bằng cách biến chúng thành đèn trang trí, vườn treo hay rèm cửa sổ.%%%Sáng tạo với vỏ chai nhựa bỏ đi,sang tao voi vo chai nhua bo di%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1425283560%%%vi%%%1%%%2%%%2%%%%%%,6,361,', 'vi', 0, NULL, NULL),
(235, 'Mẹo giảm cân cực nhanh và hiệu quả sau tết', 'update', 'web_header', 990, 1455476669, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values990%%%Mẹo giảm cân cực nhanh và hiệu quả sau tết%%%meo-giam-can-cuc-nhanh-va-hieu-qua-sau-tet%%%%%%1425003268.jpg%%%Mẹo giảm cân cực nhanh và hiệu quả sau tết%%%Nghỉ Tết với khoảng thời gian dài và lượng thực phẩm dồi dào dinh dưỡng nạp vào cơ thể khiến cơ thể bạn tăng cân nhanh chóng, một số mẹo sau sẽ giúp bạn dễ dàng giảm cân sau Tết.%%%Mẹo giảm cân cực nhanh và hiệu quả sau tết,meo giam can cuc nhanh va hieu qua sau tet%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1425002340%%%vi%%%1%%%2%%%2%%%%%%,6,361,', 'vi', 0, NULL, NULL),
(236, 'Mẹo chọn trái cây ngon ', 'update', 'web_header', 972, 1455476677, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values972%%%Mẹo chọn trái cây ngon %%%chon-trai-cay-ngon-cho-ngay-tet-tron-ven%%%%%%1422957310.jpg%%%Mẹo chọn trái cây ngon %%%Trái cây là nguồn cung cấp vitamin dồi dào cho cơ thể của chúng ta. Một vài mẹo nhỏ mách các mem trong việc lựa chọn trái cây khi đi chợ.\r\n%%%Mẹo chọn trái cây ngon,meo chon trai cay ngon%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1422956400%%%vi%%%1%%%2%%%2%%%%%%,6,361,', 'vi', 0, NULL, NULL),
(237, 'Bí quyết để có làn da tươi trẻ bằng thực phẩm', 'update', 'web_header', 1020, 1455476760, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1020%%%Bí quyết để có làn da tươi trẻ bằng thực phẩm%%%bi-quyet-de-co-lan-da-tuoi-tre-bang-thuc-pham%%%%%%1426241338.jpg%%%Bí quyết để có làn da tươi trẻ bằng thực phẩm%%%Nhờ tính sền sệt của rau quả, nước sẽ giữ được lâu, làm mục các biểu bì chết trên da mặt. Rau quả tươi xay nhuyễn, khi làm mặt nạ sẽ trả lại cho làn da vài loại vi sinh vật có ích, mà ngày thường xà bông và các chất tẩy rửa đã làm suy thoái. Vì vậy mà sau đó làn da trở nên tươi tắn, bạn trở nên tự t%%%Bí quyết để có làn da tươi trẻ bằng thực phẩm,bi quyet de co lan da tuoi tre bang thuc pham%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1426240380%%%vi%%%1%%%2%%%2%%%%%%,6,226,', 'vi', 0, NULL, NULL),
(238, 'Củ cải thực phẩm phòng chống ung thư', 'update', 'web_header', 1014, 1455476779, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1014%%%Củ cải thực phẩm phòng chống ung thư%%%cu-cai-thuc-pham-phong-chong-ung-thu%%%%%%1425982552.jpg%%%Củ cải thực phẩm phòng chống ung thư%%%Củ cải là thực phẩm tốt nhất trong các loại rau, thành phần dinh dưỡng phong phú, hàm chứa phong phú vitamin B và nhiều loại khoáng chất, trong đó hàm lượng vitamin C nhiều gấp 10 lần so với quả Lê. Củ cải còn có tác dụng chống vi rút, chống ung thư.%%%Củ cải thực phẩm phòng chống ung thư,cu cai thuc pham phong chong ung thu%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1425981600%%%vi%%%1%%%2%%%2%%%%%%,6,226,', 'vi', 0, NULL, NULL),
(239, 'Tái chế vỏ đựng trứng thành bó hoa xinh xinh', 'update', 'web_header', 999, 1455476831, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values999%%%Tái chế vỏ đựng trứng thành bó hoa xinh xinh%%%tai-che-vo-dung-trung-thanh-bo-hoa-xinh-xinh%%%%%%1425373597.jpg%%%Tái chế vỏ đựng trứng thành bó hoa xinh xinh%%%Đừng vội vứt bỏ hộp đựng trứng đi nhé, bạn có thể tái chế vỏ hộp đựng trứng thành cả một bó hoa xinh xắn trang trí nhà đấy.%%%Tái chế vỏ đựng trứng thành bó hoa xinh xinh,tai che vo dung trung thanh bo hoa xinh xinh%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1425372660%%%vi%%%1%%%2%%%2%%%%%%,6,226,', 'vi', 0, NULL, NULL),
(240, 'Sáng tạo với vỏ chai nhựa bỏ đi', 'update', 'web_header', 996, 1455476863, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values996%%%Sáng tạo với vỏ chai nhựa bỏ đi%%%sang-tao-voi-vo-chai-nhua-bo-di%%%%%%1425284494.jpg%%%Sáng tạo với vỏ chai nhựa bỏ đi%%%Hãy đem tới cuộc sống mới cho các loại chai nước bằng cách biến chúng thành đèn trang trí, vườn treo hay rèm cửa sổ.%%%Sáng tạo với vỏ chai nhựa bỏ đi,sang tao voi vo chai nhua bo di%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1425283560%%%vi%%%1%%%2%%%2%%%%%%,6,226,', 'vi', 0, NULL, NULL),
(241, 'Mẹo giảm cân cực nhanh và hiệu quả sau tết', 'update', 'web_header', 990, 1455476879, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values990%%%Mẹo giảm cân cực nhanh và hiệu quả sau tết%%%meo-giam-can-cuc-nhanh-va-hieu-qua-sau-tet%%%%%%1425003268.jpg%%%Mẹo giảm cân cực nhanh và hiệu quả sau tết%%%Nghỉ Tết với khoảng thời gian dài và lượng thực phẩm dồi dào dinh dưỡng nạp vào cơ thể khiến cơ thể bạn tăng cân nhanh chóng, một số mẹo sau sẽ giúp bạn dễ dàng giảm cân sau Tết.%%%Mẹo giảm cân cực nhanh và hiệu quả sau tết,meo giam can cuc nhanh va hieu qua sau tet%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1425002340%%%vi%%%1%%%2%%%2%%%%%%,6,226,', 'vi', 0, NULL, NULL),
(242, 'Mẹo chọn trái cây ngon', 'update', 'web_header', 972, 1455476893, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values972%%%Mẹo chọn trái cây ngon%%%chon-trai-cay-ngon-cho-ngay-tet-tron-ven%%%%%%1422957310.jpg%%%Mẹo chọn trái cây ngon%%%Trái cây là nguồn cung cấp vitamin dồi dào cho cơ thể của chúng ta. Một vài mẹo nhỏ mách các mem trong việc lựa chọn trái cây khi đi chợ.%%%Mẹo chọn trái cây ngon,meo chon trai cay ngon%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1422956400%%%vi%%%1%%%2%%%2%%%%%%,6,226,', 'vi', 0, NULL, NULL),
(243, 'Học nấu ăn ở Đà Lạt', 'update', 'web_header', 738, 1455477486, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values738%%%Học nấu ăn ở Đà Lạt%%%hoc-nau-an-o-da-lat%%%%%%%%%Học nấu ăn ở Đà Lạt%%%Học nấu ăn ở Đà Lạt đạt một cơ hội mới dành cho tất cả các bạn trẻ và những người yêu thích nấu ăn, đam mê với nghề bếp có thể thực hiện được niềm mơ ước của mình.%%%Học nấu ăn ở Đà Lạt,hoc nau an o da lat%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1422863252%%%vi%%%1%%%2%%%2%%%%%%,6,361,', 'vi', 0, NULL, NULL),
(244, 'Học nấu ăn ở Đà Lạt', 'update', 'web_header', 738, 1455477611, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values738%%%Học nấu ăn ở Đà Lạt%%%hoc-nau-an-o-da-lat%%%%%%%%%Học nấu ăn ở Đà Lạt | Hoc nau an o Da Lat%%%Học nấu ăn ở Đà Lạt đạt một cơ hội mới dành cho tất cả các bạn trẻ và những người yêu thích nấu ăn, đam mê với nghề bếp có thể thực hiện được niềm mơ ước của mình.%%%học nấu ăn ở đà lạt,hoc nau an o da lat%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1422863220%%%vi%%%1%%%2%%%2%%%%%%,6,361,', 'vi', 0, NULL, NULL),
(245, 'Học nấu ăn ở Cần Thơ  ', 'update', 'web_header', 603, 1455477830, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values603%%%Học nấu ăn ở Cần Thơ  %%%hoc-nau-an-o-can-tho-292%%%%%%1422863581.JPG%%%Học nấu ăn ở Cần Thơ  %%%Trước tình hình đó, Trường dạy nghề ẩm thực NetSpace đã mở thêm chi nhánh dạy học nấu ăn ở Cần Thơ.%%%Học nấu ăn ở Cần Thơ,hoc nau an o can tho%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1422863040%%%vi%%%1%%%2%%%2%%%%%%,6,361,', 'vi', 0, NULL, NULL),
(246, 'Học nấu ăn ở Cần Thơ', 'update', 'web_header', 603, 1455477835, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values603%%%Học nấu ăn ở Cần Thơ%%%hoc-nau-an-o-can-tho-292%%%%%%1422863581.JPG%%%Học nấu ăn ở Cần Thơ | Hoc nau an o Can Tho%%%Tình trạng thiếu nhân lực nghề bếp trường dạy nghề ẩm thực NetSpace đã mở thêm chi nhánh dạy học nấu ăn ở Cần Thơ.%%%học nấu ăn ở cần thơ,hoc nau an o can tho%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1422863040%%%vi%%%1%%%2%%%2%%%%%%,6,361,', 'vi', 0, NULL, NULL),
(247, 'Học nấu ăn ở đâu, địa chỉ học nấu ăn', 'update', 'web_header', 490, 1455478054, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values490%%%Học nấu ăn ở đâu, địa chỉ học nấu ăn%%%Hoc-Nau-An-O-Dau-173%%%%%%1419583748.jpg%%%Học nấu ăn ở đâu, địa chỉ học nấu ăn%%%Tại Thành phố Hồ Chí Minh, để tìm một địa chỉ học nấu ăn tốt cho Bạn là điều rất khó khăn. Bởi vì, hầu hết các địa chỉ học nấu ăn, chưa được đầu tư tốt cho cơ sở vật chất, Giảng viên cho ngành dạy nấu ăn.%%%học nấu ăn ở đâu,địa chỉ học nấu ăn,hoc nau an o dau%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1419583320%%%vi%%%1%%%2%%%2%%%%%%,6,361,', 'vi', 0, NULL, NULL),
(248, 'Học nấu ăn ở trường nào', 'update', 'web_header', 512, 1455478227, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values512%%%Học nấu ăn ở trường nào%%%Hoc-Nau-An-O-Truong-Nao-198%%%%%%1419580710.jpg%%%Học nấu ăn ở trường nào%%%Học nấu ăn ở trường nào? Câu hỏi thường được đặt ra cho rất nhiều Bạn trẻ hiện nay.%%%Học nấu ăn ở trường nào,hoc nau an o truong nao%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1419580260%%%vi%%%1%%%2%%%2%%%%%%,6,361,', 'vi', 0, NULL, NULL),
(249, 'Học nấu ăn ở đâu tốt nhất để mở quán ăn, nhà hàng', 'update', 'web_header', 516, 1455478411, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values516%%%Học nấu ăn ở đâu tốt nhất để mở quán ăn, nhà hàng%%%Hoc-Nau-An-O-Dau-Tot-Nhat-De-Mo-Quan-An-Nha-Hang-202%%%%%%1419578554.jpg%%%Học nấu ăn ở đâu tốt nhất để mở quán ăn, nhà hàng%%%Học nấu ăn ở đâu tốt nhất để mở quán ăn, nhà hàng? Hiện nay rất ít Trường có khả năng dạy học nấu ăn, dạy kinh doanh để mở quán ăn, nhà hàng.%%%Học nấu ăn ở đâu tốt nhất để mở quán ăn nhà hàng,hoc nau an o dau tot nhat,mo quan an nha hang%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1419578100%%%vi%%%1%%%2%%%2%%%%%%,6,361,', 'vi', 0, NULL, NULL),
(250, 'Học nấu ăn ở đâu tốt nhất', 'update', 'web_header', 517, 1455478528, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values517%%%Học nấu ăn ở đâu tốt nhất%%%Hoc-Nau-An-O-Dau-Tot-Nhat-203%%%%%%1419580415.jpg%%%Học nấu ăn ở đâu tốt nhất%%%Học nấu ăn ở đâu tốt nhất? Có lẽ tất cả chúng ta những ai đang quan tâm đến nghề bếp đều mong muốn tìm cho mình một môi trường học tập tốt nhất. Vậy học nấu ăn ở đâu tốt nhất?%%%Học nấu ăn ở đâu tốt nhất,hoc nau an o dau tot%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1419579960%%%vi%%%1%%%2%%%2%%%%%%,6,361,', 'vi', 0, NULL, NULL),
(251, 'Nghệ thuật trang trí bánh mùa giáng sinh và năm mới', 'update', 'web_header', 519, 1455478592, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values519%%%Nghệ thuật trang trí bánh mùa giáng sinh và năm mới%%%nghe-thuat-trang-tri-banh-mua-giang-sinh-va-nam-moi%%%%%%%%%Nghệ thuật trang trí bánh mùa giáng sinh và năm mới%%%Nghệ thuật trang trí bánh cần nhiều ý tưởng khác nhau, bạn có thể tham khảo một số ý tưởng sau đây%%%Nghệ thuật trang trí bánh mùa giáng sinh và năm mới,nghe thuat trang tri banh mua giang sinh va nam %%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1419836520%%%vi%%%1%%%2%%%2%%%%%%,6,361,', 'vi', 0, NULL, NULL),
(252, 'Học nấu ăn ở Đà Nẵng cơ hội cho các bạn trẻ', 'update', 'web_header', 548, 1455478713, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values548%%%Học nấu ăn ở Đà Nẵng cơ hội cho các bạn trẻ%%%hoc-nau-an-o-da-nang-co-hoi-cho-cac-ban-tre-239%%%%%%1372296666.jpg%%%Học nấu ăn ở Đà Nẵng cơ hội cho các bạn trẻ%%%Chào mừng tất cả các bạn đến học nấu ăn ở Đà Nẵng tại Trường Netspace, hãy bắt đầu một tương lai tươi sáng với nghề đầu bếp đang cuốn hút rất nhiều người.%%%Học nấu ăn ở Đà Nẵng, hoc nau an o da nang%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1372296180%%%vi%%%1%%%2%%%2%%%%%%,6,361,', 'vi', 0, NULL, NULL),
(253, 'Học nấu ăn ở Đà Nẵng cơ hội cho các bạn trẻ', 'update', 'web_header', 548, 1455478779, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values548%%%Học nấu ăn ở Đà Nẵng cơ hội cho các bạn trẻ%%%hoc-nau-an-o-da-nang-co-hoi-cho-cac-ban-tre-239%%%%%%1372296666.jpg%%%Học nấu ăn ở Đà Nẵng cơ hội cho các bạn trẻ | Hoc nau an o Da Nang%%%Chào mừng tất cả các bạn đến học nấu ăn ở Đà Nẵng tại Trường Netspace, hãy bắt đầu một tương lai tươi sáng với nghề đầu bếp đang cuốn hút rất nhiều người.%%%học nấu ăn ở đà nẵng,cơ hội cho các bạn trẻ,hoc nau an o da nang%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1372296180%%%vi%%%1%%%2%%%2%%%%%%,6,361,', 'vi', 0, NULL, NULL),
(254, 'Học nấu ăn ở Đà Nẵng', 'update', 'web_header', 549, 1455478939, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values549%%%Học nấu ăn ở Đà Nẵng%%%hoc-nau-an-o-da-nang-240%%%%%%1455340620.jpg%%%Học nấu ăn ở Đà Nẵng%%%Học nấu ăn ở Đà Nẵng tại Trường NetSpace là cơ hội cho nhiều Bạn trẻ khi chọn nghề bếp.%%%học nấu ăn ở Đà Nẵng, hoc nau an o da nang%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1372296780%%%vi%%%1%%%2%%%2%%%%%%,6,361,', 'vi', 0, NULL, NULL),
(255, 'Học nấu ăn ở Đà Nẵng', 'update', 'web_header', 549, 1455479000, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values549%%%Học nấu ăn ở Đà Nẵng%%%hoc-nau-an-o-da-nang-240%%%%%%1455340620.jpg%%%Học nấu ăn ở Đà Nẵng%%%Học nấu ăn ở Đà Nẵng tại Trường NetSpace là cơ hội cho nhiều Bạn trẻ khi chọn nghề bếp.%%%học nấu ăn ở Đà Nẵng,hoc nau an o da nang%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1372296780%%%vi%%%1%%%2%%%2%%%%%%,6,361,', 'vi', 0, NULL, NULL),
(256, 'Học nấu ăn ở Đà Nẵng', 'update', 'web_header', 549, 1455479011, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values549%%%Học nấu ăn ở Đà Nẵng%%%hoc-nau-an-o-da-nang-240%%%%%%1455340620.jpg%%%Học nấu ăn ở Đà Nẵng%%%Học nấu ăn ở Đà Nẵng tại Trường NetSpace là cơ hội cho nhiều Bạn trẻ khi chọn nghề bếp.%%%học nấu ăn ở Đà Nẵng,hoc nau an o da nang%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1372296780%%%vi%%%1%%%2%%%2%%%%%%,6,361,', 'vi', 0, NULL, NULL),
(257, 'Dạy học nấu ăn ở Đà Nẵng - Phải đầu tư cho đào tạo nghề', 'update', 'web_header', 553, 1455479438, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values553%%%Dạy học nấu ăn ở Đà Nẵng - Phải đầu tư cho đào tạo nghề%%%day-hoc-nau-an-o-da-nang-phai-dau-tu-cho-dao-tao-nghe-244%%%%%%%%%Dạy học nấu ăn ở Đà Nẵng - Phải đầu tư cho đào tạo nghề%%%Nghề nấu ăn, pha chế là một ngành nghề quan trọng đối với các thành phố lớn đang thu hút sự đầu tư và phát triển nền kinh tế hiện nay.%%%Dạy học nấu ăn ở Đà Nẵng,Phải đầu tư cho đào tạo nghề,day hoc nau an o da nang%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1372656420%%%vi%%%1%%%2%%%2%%%%%%,6,361,', 'vi', 0, NULL, NULL),
(258, 'Dạy học nấu ăn ở Đà Nẵng - Phải đầu tư cho đào tạo nghề', 'update', 'web_header', 553, 1455479504, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values553%%%Dạy học nấu ăn ở Đà Nẵng - Phải đầu tư cho đào tạo nghề%%%day-hoc-nau-an-o-da-nang-phai-dau-tu-cho-dao-tao-nghe-244%%%%%%%%%Dạy nấu ăn ở Đà Nẵng | Day nau an o Da Nang%%%Nghề nấu ăn, pha chế là một ngành nghề quan trọng đối với các thành phố lớn đang thu hút sự đầu tư và phát triển nền kinh tế hiện nay.%%%dạy nấu ăn ở đà nẵng,đầu tư cho đào tạo nghề,day nau an o da nang%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1372656420%%%vi%%%1%%%2%%%2%%%%%%,6,361,', 'vi', 0, NULL, NULL),
(259, 'Học pha chế, học nấu ăn ở Đà Nẵng - Chìa khóa thành công', 'update', 'web_header', 554, 1455479748, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values554%%%Học pha chế, học nấu ăn ở Đà Nẵng - Chìa khóa thành công%%%hoc-pha-che-hoc-nau-an-o-da-nang-chia-khoa-thanh-cong-245%%%%%%1455407993.jpg%%%Học pha chế, học nấu ăn ở Đà Nẵng - Chìa khóa thành công%%%Sự hiện diện của Trường dạy ẩm thực NetSpace tại Đà Nẵng với các chương trình dạy học pha chế, dạy học nấu ăn ở Đà Nẵng. Đây sẽ là cơ hội học tập, là chìa khóa thành công trong nghề pha chế, nghề đầu bếp.%%%Học pha chế, học nấu ăn ở Đà Nẵng, hoc pha che, hoc nau an%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1372648320%%%vi%%%1%%%2%%%2%%%%%%,6,361,', 'vi', 0, NULL, NULL),
(260, 'Học nấu ăn ở đâu tại Đà Nẵng', 'update', 'web_header', 555, 1455480035, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values555%%%Học nấu ăn ở đâu tại Đà Nẵng%%%hoc-nau-an-o-dau-tai-da-nang-246%%%%%%1372994413.jpg%%%Học nấu ăn ở đâu tại Đà Nẵng%%%Bạn thường e ngại rằng các Trung tâm đào tạo tốt thường nằm ở Saigon hay Hà Nội, đặc biệt là các Trung tâm đào tạo nghề bếp, pha chế.  Như vậy, Trung tâm dạy học nấu ăn ở đâu tại Đà Nẵng%%%Học nấu ăn ở đâu tại Đà Nẵng,hoc nau an o dau tai da nang%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1372993920%%%vi%%%1%%%2%%%2%%%%%%,6,361,', 'vi', 0, NULL, NULL),
(261, 'Học nấu ăn ở đâu để vững tay nghề - sáng tương lai', 'update', 'web_header', 599, 1455482610, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values599%%%Học nấu ăn ở đâu để vững tay nghề - sáng tương lai%%%hoc-nau-an-o-dau-de-vung-tay-nghe-sang-tuong-lai-287%%%%%%1378433337.JPG%%%Học nấu ăn ở đâu để vững tay nghề - sáng tương lai%%%Học nấu ăn ở đâu để bạn có một tay nghề vững chắc? Học nấu ăn ở đâu để trở thành đầu bếp chuyên nghiệp?%%%Học nấu ăn ở đâu để vững tay nghề - sáng tương lai,hoc nau an o dau%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1378432800%%%vi%%%1%%%2%%%2%%%%%%,6,361,', 'vi', 0, NULL, NULL),
(262, 'Học nấu ăn ở đâu để vững tay nghề - sáng tương lai', 'update', 'web_header', 599, 1455482633, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values599%%%Học nấu ăn ở đâu để vững tay nghề - sáng tương lai%%%hoc-nau-an-o-dau-de-vung-tay-nghe-sang-tuong-lai-287%%%%%%1378433337.JPG%%%Học nấu ăn ở đâu để vững tay nghề - sáng tương lai | Hoc nau an o dau%%%Học nấu ăn ở đâu để bạn có một tay nghề vững chắc? Học nấu ăn ở đâu để trở thành đầu bếp chuyên nghiệp?%%%học nấu ăn ở đâu,vững tay nghề,sáng tương lai,hoc nau an o dau%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1378432800%%%vi%%%1%%%2%%%2%%%%%%,6,361,', 'vi', 0, NULL, NULL),
(263, 'Trường dạy nấu ăn NetSpace', 'update', 'web_header', 998, 1455482972, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values998%%%Trường dạy nấu ăn NetSpace%%%truong-day-nau-an-noi-tieng%%%%%%1455337569.jpg%%%Trường dạy nấu ăn%%%Trong số các trường dạy nấu ăn uy tín, chuyên nghiệp tại Việt Nam, phải kể đến Trường dạy nấu ăn NetSpace.%%%Trường dạy nấu ăn ,truong day nau an%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1425435600%%%vi%%%1%%%2%%%2%%%%%%,6,204,', 'vi', 0, NULL, NULL),
(264, 'Trường dạy nấu ăn NetSpace', 'update', 'web_header', 998, 1455483032, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values998%%%Trường dạy nấu ăn NetSpace%%%truong-day-nau-an-noi-tieng%%%%%%1455337569.jpg%%%Trường dạy nấu ăn | Truong day nau an%%%Trong số các trường dạy nấu ăn uy tín, chuyên nghiệp tại Việt Nam, phải kể đến Trường dạy nấu ăn NetSpace.%%%trường dạy nấu ăn,truong day nau an%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1425435600%%%vi%%%1%%%2%%%2%%%%%%,6,204,', 'vi', 0, NULL, NULL),
(265, 'Trường dạy nấu ăn NetSpace', 'update', 'web_header', 998, 1455483050, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values998%%%Trường dạy nấu ăn NetSpace%%%truong-day-nau-an-noi-tieng%%%%%%1455337569.jpg%%%Trường dạy nấu ăn | Truong day nau an%%%Trong số các trường dạy nấu ăn uy tín, chuyên nghiệp tại Việt Nam, phải kể đến Trường dạy nấu ăn NetSpace.%%%trường dạy nấu ăn,truong day nau an%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1425435600%%%vi%%%1%%%2%%%2%%%%%%,6,204,', 'vi', 0, NULL, NULL),
(266, 'Học nấu ăn ở Cần Thơ - giải pháp vừa an toàn vừa tiết kiệm chi phí', 'update', 'web_header', 605, 1455483519, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values605%%%Học nấu ăn ở Cần Thơ - giải pháp vừa an toàn vừa tiết kiệm chi phí%%%hoc-nau-an-o-can-tho-giai-phap-vua-an-toan-vua-tiet-kiem-chi-phi-294%%%%%%1422863583.jpg%%%Học nấu ăn ở Cần Thơ - giải pháp vừa an toàn vừa tiết kiệm chi phí%%%Nhưng bây giờ đã khác, Trường dạy ẩm thực NetSpace – trường đào tạo nghề bếp chuyên nghiệp đã mở trường dạy học nấu ăn ở Cần Thơ.%%%Học nấu ăn ở Cần Thơ,giải pháp vừa an toàn vừa tiết kiệm chi phí,hoc nau an o can tho%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1422863040%%%vi%%%1%%%2%%%2%%%%%%,6,361,', 'vi', 0, NULL, NULL),
(267, 'Học nấu ăn ở Cần Thơ - giải pháp vừa an toàn vừa tiết kiệm chi phí', 'update', 'web_header', 605, 1455483732, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values605%%%Học nấu ăn ở Cần Thơ - giải pháp vừa an toàn vừa tiết kiệm chi phí%%%hoc-nau-an-o-can-tho-giai-phap-vua-an-toan-vua-tiet-kiem-chi-phi-294%%%%%%1422863583.jpg%%%Học nấu ăn ở Cần Thơ - giải pháp vừa an toàn vừa tiết kiệm chi phí%%%Trường NetSpace trường đào tạo nghề bếp chuyên nghiệp đã mở trường dạy học nấu ăn ở Cần Thơ giải pháp vừa an toàn vừa tiết kiệm chi phí%%%học nấu ăn ở cần thơ,giải pháp vừa an toàn vừa tiết kiệm chi phí,hoc nau an o can tho%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1422863040%%%vi%%%1%%%2%%%2%%%%%%,6,361,', 'vi', 0, NULL, NULL),
(268, 'Lớp học nấu ăn ở Cần Thơ ', 'update', 'web_header', 625, 1455483948, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values625%%%Lớp học nấu ăn ở Cần Thơ %%%lop-hoc-nau-an-o-can-tho-314%%%%%%1422863603.JPG%%%Lớp học nấu ăn ở Cần Thơ %%%Cùng tham quan 1 buổi học Lớp Bếp Việt tại Trường dạy học nấu ăn tại Cần Thơ%%%Lớp học nấu ăn ở Cần Thơ,lop hoc nau an o can tho%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1422863040%%%vi%%%1%%%2%%%2%%%%%%,6,361,', 'vi', 0, NULL, NULL),
(269, 'Học nấu ăn ở Đà Nẵng cùng với Vua bếp Châu Á', 'update', 'web_header', 636, 1455484205, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values636%%%Học nấu ăn ở Đà Nẵng cùng với Vua bếp Châu Á%%%hoc-nau-an-o-da-nang-cung-voi-vua-bep-chau-a-325%%%%%%1382491234.jpg%%%Học nấu ăn ở Đà Nẵng cùng với Vua bếp Châu Á%%%Thầy Thái Tôn - Vua bếp Châu Á hiện đang là Giảng viên của Trường dạy nghề ẩm thực NetSpace. Từ nay, các bạn trẻ học nấu ăn ở Đà Nẵng sẽ có cơ hội được học với Thầy, được trực tiếp nghe Thầy truyền đạt những kinh nghiệm sau hơn chục năm nghiên cứu những món ăn đặc sắc của nhiều nước trên thế giới.%%%Học nấu ăn ở Đà Nẵng cùng với Vua bếp Châu Á,hoc nau an o da nang%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1382490660%%%vi%%%1%%%2%%%2%%%%%%,6,361,', 'vi', 0, NULL, NULL),
(270, 'Những kiểu trang trí lọ độc đáo', 'update', 'web_header', 896, 1455484254, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values896%%%Những kiểu trang trí lọ độc đáo%%%nhung-kieu-trang-tri-lo-doc-dao%%%%%%1419838494.jpg%%%Những kiểu trang trí lọ độc đáo%%%Những kiểu trang trí lọ độc đáo: Làm đèn dầu, Làm đèn chùm, Trồng cây, Kiểu treo,...%%%Những kiểu trang trí lọ độc đáo,nhung kieu trang tri lo doc dao%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1419837660%%%vi%%%1%%%2%%%2%%%%%%,6,361,', 'vi', 0, NULL, NULL),
(271, 'Mẹo vặt nhà bếp hay và hữu ích  ', 'update', 'web_header', 901, 1455484348, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values901%%%Mẹo vặt nhà bếp hay và hữu ích  %%%meo-vat-nha-bep-hay-va-huu-ich%%%%%%1420001159.png%%%Mẹo vặt nhà bếp hay và hữu ích  %%%21 Mẹo vặt nhà bếp hay và hữu ích sau sẽ hỗ trợ các bà nội trợ rất nhiều đấy %%%Mẹo vặt nhà bếp hay và hữu ích,meo vat nha bep hay va huu ich%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1420000320%%%vi%%%1%%%2%%%2%%%%%%,6,361,', 'vi', 0, NULL, NULL),
(272, 'Những kiểu trang trí lọ độc đáo', 'update', 'web_header', 896, 1455484365, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values896%%%Những kiểu trang trí lọ độc đáo%%%nhung-kieu-trang-tri-lo-doc-dao%%%%%%1419838494.jpg%%%Những kiểu trang trí lọ độc đáo%%%Những kiểu trang trí lọ độc đáo: Làm đèn dầu, Làm đèn chùm, Trồng cây, Kiểu treo,...%%%Những kiểu trang trí lọ độc đáo,nhung kieu trang tri lo doc dao%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1419837660%%%vi%%%1%%%2%%%2%%%%%%,6,', 'vi', 0, NULL, NULL);
INSERT INTO `web_logs` (`id`, `name`, `action`, `_table`, `table_id`, `datetime`, `username`, `content`, `lang`, `status`, `date_restore`, `user_restore`) VALUES
(273, 'Học viên Trường Netspace tham gia lễ hội Hạt Lúa Quê Tôi', 'update', 'web_header', 902, 1455484434, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values902%%%Học viên Trường Netspace tham gia lễ hội Hạt Lúa Quê Tôi%%%hoc-vien-truong-netspace-tham-gia-le-hoi-hat-lua-que-toi%%%%%%1420015800.png%%%Học viên Trường Netspace tham gia lễ hội Hạt Lúa Quê Tôi%%%Hơn 40 học viên trường Netspace cùng tham gia lễ hội văn hóa ẩm thực “Hạt Lúa Quê Tôi” diễn ra trong 3 ngày 25,26,27 -12 vừa qua tại KDL Bình Quới.%%% lễ hội Hạt Lúa Quê Tôi, truong netspace tham gia le hoi hat lua que toi%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1420014960%%%vi%%%1%%%2%%%2%%%%%%,6,361,', 'vi', 0, NULL, NULL),
(274, 'Các thực phẩm kỵ nhau cần lưu ý', 'update', 'web_header', 904, 1455484503, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values904%%%Các thực phẩm kỵ nhau cần lưu ý%%%cac-thuc-pham-ky-nhau-can-luu-y%%%%%%1420185422.jpg%%%Các thực phẩm kỵ nhau cần lưu ý%%%Để bữa ăn gia đình vừa ngon vừa đảm bảo sức khỏe thì việc lựa chọn thực phẩm là điều không thể coi nhẹ. Một số thực phẩm kỵ nhau mà chúng ta không để ý đến, trong quá trình hấp thu và chuyển hóa, giữa các thành phần của thức ăn luôn có những tương tác rất phức tạp. Chúng có thể "hợp đồng tác chiến" %%%Các thực phẩm kỵ nhau cần lưu ý,cac thuc pham ky nhau can luu y%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1420184580%%%vi%%%1%%%2%%%2%%%%%%,6,361,', 'vi', 0, NULL, NULL),
(275, 'Kiến thức Ẩm thực: Thực phẩm làm giảm tác dụng của thuốc', 'update', 'web_header', 908, 1455484513, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values908%%%Kiến thức Ẩm thực: Thực phẩm làm giảm tác dụng của thuốc%%%kien-thuc-am-thuc-thuc-pham-lam-giam-tac-dung-cua-thuoc%%%%%%1420276206.jpg%%%Kiến thức Ẩm thực: Thực phẩm làm giảm tác dụng của thuốc%%%Thực phẩm có rất nhiều vitamin và khoáng chất rất tốt cho cơ thể. Tuy nhiên, nếu không để ý bạn kết hợp khi uống  thuốc thì có thể giảm tác dụng của thuốc, thậm chí gây tổn hại cho sức khỏe của bạn.%%%Kiến thức Ẩm thực, kien thuc am thuc, thuc pham lam giam tac dung cua thuoc%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1420275360%%%vi%%%1%%%2%%%2%%%%%%,6,361,', 'vi', 0, NULL, NULL),
(276, 'Cách phân biệt cơ bản tên của các loại bánh', 'update', 'web_header', 915, 1455484561, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values915%%%Cách phân biệt cơ bản tên của các loại bánh%%%cach-phan-biet-co-ban-ten-cua-cac-loai-banh%%%%%%%%%Cách phân biệt cơ bản tên của các loại bánh%%%Hy vọng sau khi đọc bài viết này, các bạn sẽ có thêm kiến thức về tên gọi cũng như nguyên tắc thực hiện cơ bản của một số loại bánh%%%Cách phân biệt cơ bản tên của các loại bánh,cach phan biet co ban ten cua cac loai banh%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1420451340%%%vi%%%1%%%2%%%2%%%%%%,6,361,', 'vi', 0, NULL, NULL),
(277, 'Cách phân biệt cơ bản tên của các loại bánh', 'update', 'web_header', 915, 1455484588, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values915%%%Cách phân biệt cơ bản tên của các loại bánh%%%cach-phan-biet-co-ban-ten-cua-cac-loai-banh%%%%%%%%%Cách phân biệt cơ bản tên của các loại bánh%%%Hy vọng sau khi đọc bài viết này, các bạn sẽ có thêm kiến thức về tên gọi cũng như nguyên tắc thực hiện cơ bản của một số loại bánh%%%Cách phân biệt cơ bản tên của các loại bánh,cach phan biet co ban ten cua cac loai banh%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1420451340%%%vi%%%1%%%2%%%2%%%%%%,6,226,', 'vi', 0, NULL, NULL),
(278, '30 mẹo hữu ích trong nhà bếp', 'update', 'web_header', 922, 1455484662, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values922%%%30 mẹo hữu ích trong nhà bếp%%%30-meo-huu-ich-trong-nha-bep%%%%%%1420709480.jpg%%%30 mẹo hữu ích trong nhà bếp%%%Tay có mùi hành tỏi, chỉ cần chà lên chiếc thìa bằng thép, làm sạch chiếc ấm dính đầy canxi bằng cách đun với dấm, hay nhúng một viên đá vào nồi súp nếu nó quá nhiều dầu mỡ... Dưới đây là những mẹo cho nhà bếp của bạn.%%%30 mẹo hữu ích trong nhà bếp,30 meo huu ich trong nha bep%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1420708620%%%vi%%%1%%%2%%%2%%%%%%,6,361,', 'vi', 0, NULL, NULL),
(279, 'Thực phẩm làm đẹp: 6 công thức hiệu quả cho tóc chẻ ngọn', 'update', 'web_header', 925, 1455484714, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values925%%%Thực phẩm làm đẹp: 6 công thức hiệu quả cho tóc chẻ ngọn%%%thuc-pham-lam-dep-6-cong-thuc-hieu-qua-cho-toc-che-ngon%%%%%%1420792763.jpg%%%Thực phẩm làm đẹp: 6 công thức hiệu quả cho tóc chẻ ngọn%%%Tóc chẻ ngọn là điều khiến bạn đau đầu, dù bạn đã tới tiệm cắt tóc để cắt bớt đi phần chẻ ngọn nhưng vẫn không hiệu quả, một thời gian ngắn sau tóc lại chẻ ngọn lại. Cắt phần chẻ ngọn thường xuyên làm bạn không vui vì muốn nuôi tóc dài. Hi vọng bài biết này có thể giúp bạn phần nào giảm được nỗi lo %%%Thực phẩm làm đẹp 6 công thức cho tóc chẻ ngọn,thuc pham lam dep 6 cong thuc cho toc che ngon%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1420791900%%%vi%%%1%%%2%%%2%%%%%%,6,361,', 'vi', 0, NULL, NULL),
(280, 'Mẹo luộc 4 loại thịt quen thuộc thơm ngon ', 'update', 'web_header', 950, 1455484746, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values950%%%Mẹo luộc 4 loại thịt quen thuộc thơm ngon %%%meo-luoc-4-loai-thit-quen-thuoc-thom-ngon%%%%%%1421833008.jpg%%%Mẹo luộc 4 loại thịt quen thuộc thơm ngon %%%Để món vịt không bị hôi, trước khi luộc nên bóp với chút muối, tiêu, gừng đập dập để chừng 30 phút rồi rửa sạch, để ráo rồi đem luộc.%%%Mẹo luộc 4 loại thịt quen thuộc thơm ngon,meo luoc 4 loai thit quen thuoc thom ngon%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1421832120%%%vi%%%1%%%2%%%2%%%%%%,6,361,', 'vi', 0, NULL, NULL),
(281, 'Lễ ký kết hợp tác giữa Công ty CPDV cáp treo Bà Nà và Cơ sở dạy nghề Ẩm thực Netspace', 'update', 'web_header', 957, 1455484822, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values957%%%Lễ ký kết hợp tác giữa Công ty CPDV cáp treo Bà Nà và Cơ sở dạy nghề Ẩm thực Netspace%%%le-ky-ket-hop-tac-giua-cong-ty-cpdv-cap-treo-ba-na-va-co-so-day-nghe-am-thuc-netspace%%%%%%1422325735.jpg%%%Lễ ký kết hợp tác giữa Công ty CPDV cáp treo Bà Nà và Cơ sở dạy nghề Ẩm thực Netspace%%%Ngày 24/01/2015  tại Cơ sở dạy nghề ẩm thực Netspace CN Đà Nẵng đã diễn ra buổi lễ ký kết hợp tác giữa cơ sở dạy Nghề Ẩm thực Netspace và Công ty CPDV Cáp Treo Bà Nà. %%%ký kết hợp tác bà na và netspace, cap treo bà nà, trường dạy nghề ẩm thực,%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1422324840%%%vi%%%1%%%2%%%2%%%%%%,6,361,', 'vi', 0, NULL, NULL),
(282, 'Lễ ký kết hợp tác giữa Công ty CPDV cáp treo Bà Nà và Cơ sở dạy nghề Ẩm thực Netspace', 'update', 'web_header', 957, 1455484842, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values957%%%Lễ ký kết hợp tác giữa Công ty CPDV cáp treo Bà Nà và Cơ sở dạy nghề Ẩm thực Netspace%%%le-ky-ket-hop-tac-giua-cong-ty-cpdv-cap-treo-ba-na-va-co-so-day-nghe-am-thuc-netspace%%%%%%1422325735.jpg%%%Lễ ký kết hợp tác giữa Công ty CPDV cáp treo Bà Nà và Cơ sở dạy nghề Ẩm thực Netspace%%%Ngày 24/01/2015  tại Cơ sở dạy nghề ẩm thực Netspace CN Đà Nẵng đã diễn ra buổi lễ ký kết hợp tác giữa cơ sở dạy Nghề Ẩm thực Netspace và Công ty CPDV Cáp Treo Bà Nà.%%%ký kết hợp tác bà na và netspace, cap treo bà nà, trường dạy nghề ẩm thực,%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1422324840%%%vi%%%1%%%2%%%2%%%%%%,6,', 'vi', 0, NULL, NULL),
(283, 'Chương trình tập huấn Kỹ Năng Nghề Bếp', 'update', 'web_header', 966, 1455484912, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values966%%%Chương trình tập huấn Kỹ Năng Nghề Bếp%%%chuong-trinh-tap-huan-ky-nang-nghe-bep%%%%%%1422613684.jpg%%%Chương trình tập huấn Kỹ Năng Nghề Bếp%%%Vừa qua trường dạy nghề Ẩm thực Netspace đã tổ chức chương trình tập huấn “KỸ NĂNG NGHỀ BẾP” hướng dẫn tham gia Vòng chung kết Hội Thi Đầu Bếp Trẻ.%%%Chương trình tập huấn Kỹ Năng Nghề Bếp,chuong trinh tap huan ky nang nghe bep%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1422612780%%%vi%%%1%%%2%%%2%%%%%%,6,361,', 'vi', 0, NULL, NULL),
(284, 'Chương trình tập huấn Kỹ Năng Nghề Bếp', 'update', 'web_header', 966, 1455484941, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values966%%%Chương trình tập huấn Kỹ Năng Nghề Bếp%%%chuong-trinh-tap-huan-ky-nang-nghe-bep%%%%%%1422613684.jpg%%%Chương trình tập huấn Kỹ Năng Nghề Bếp%%%Vừa qua trường dạy nghề Ẩm thực Netspace đã tổ chức chương trình tập huấn “KỸ NĂNG NGHỀ BẾP” hướng dẫn tham gia Vòng chung kết Hội Thi Đầu Bếp Trẻ.%%%tập huấn kỹ năng nghề bếptap huan ky nang nghe bep%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1422612780%%%vi%%%1%%%2%%%2%%%%%%,6,', 'vi', 0, NULL, NULL),
(285, 'Chương trình tập huấn Kỹ Năng Nghề Bếp', 'update', 'web_header', 966, 1455484955, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values966%%%Chương trình tập huấn Kỹ Năng Nghề Bếp%%%chuong-trinh-tap-huan-ky-nang-nghe-bep%%%%%%1422613684.jpg%%%Chương trình tập huấn Kỹ Năng Nghề Bếp%%%Vừa qua trường dạy nghề Ẩm thực Netspace đã tổ chức chương trình tập huấn “KỸ NĂNG NGHỀ BẾP” hướng dẫn tham gia Vòng chung kết Hội Thi Đầu Bếp Trẻ.%%%tập huấn kỹ năng nghề bếptap huan ky nang nghe bep%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1422612780%%%vi%%%1%%%2%%%2%%%%%%,6,', 'vi', 0, NULL, NULL),
(286, 'Học nấu ăn', 'update', 'web_header', 226, 1455485155, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values226%%%Học nấu ăn%%%hoc-nau-an-1%%%%%%%%%Học nấu ăn%%%Trường NetSpace là nơi học nấu ăn tốt với cơ sở vật chất, trang thiết bị được đầu tư  tốt nhất cho người học. Cùng với các giảng viên có nhiều năm kinh nghiệm làm việc tại các khách sạn 4 sao, 5 sao.%%%Học nấu ăn,hoc nau an%%%%%%6%%%%%%%%%%%%%%%%%%3%%%%%%1453974480%%%vi%%%1%%%1%%%2%%%,1,', 'vi', 0, NULL, NULL),
(287, 'Học nấu ăn', 'update', 'web_header', 226, 1455485176, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values226%%%Học nấu ăn%%%hoc-nau-an-1%%%%%%%%%Thư viên học nấu ăn | Hoc nau an%%%Thư viện học nấu ăn được Netspace biên soạn và sưu tầm các bài viết và hướng dẫn nấu ăn, các mẹo nấu ăn, tinh hoa ẩm thực%%%thư viện học nấu ăn,thu vien hoc nau an,học nấu ăn,hoc nau an%%%%%%6%%%%%%%%%%%%%%%%%%3%%%%%%1453974480%%%vi%%%1%%%1%%%2%%%,1,', 'vi', 0, NULL, NULL),
(288, 'Trường Dạy Nghề Ẩm thực NetSpace - Địa chỉ học nấu ăn tốt nhất', 'update', 'web_header', 489, 1455485519, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values489%%%Trường Dạy Nghề Ẩm thực NetSpace - Địa chỉ học nấu ăn tốt nhất%%%Truong-Day-Nghe-Am-Thuc-Netspace-Dia-Chi-Hoc-Nau-An-Tot-Nhat-172%%%%%%%%%Trường Dạy Nghề Ẩm thực NetSpace - Địa chỉ học nấu ăn tốt nhất%%%Hiện nay, tại Thành phố Hồ Chí Minh, để tìm một địa chỉ học nấu ăn tốt cho Bạn là điều rất khó khăn. %%%Trường Dạy Nghề Ẩm thực NetSpace,Địa chỉ học nấu ăn tốt nhất,dia chi hoc nau an tot nhat%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1361725200%%%vi%%%1%%%2%%%2%%%%%%,6,226,', 'vi', 0, NULL, NULL),
(289, 'Học pha chế cà phê - Barista', 'update', 'web_header', 574, 1455485897, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values574%%%Học pha chế cà phê - Barista%%%hoc-pha-che-ca-phe-barista-274%%%%%%1377174272.jpg%%%Học pha chế cà phê - Barista%%%Học pha chế cà phê, một nghề nghiệp hấp dẫn cho các bạn trẻ hiện nay lựa chọn.%%%Học pha chế cà phê Barista,hoc pha che ca phe barista%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1377173760%%%vi%%%1%%%2%%%2%%%%%%,6,68,', 'vi', 0, NULL, NULL),
(290, 'Học pha chế Barista - Cà phê của những nghệ nhân', 'update', 'web_header', 584, 1455486055, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values584%%%Học pha chế Barista - Cà phê của những nghệ nhân%%%hoc-pha-che-barista-ca-phe-cua-nhung-nghe-nhan-273%%%%%%1376536422.jpg%%%Học pha chế Barista - Cà phê của những nghệ nhân%%%Học pha chế Barista để có khả năng sáng tạo ra các thức uống đẹp mắt đầy ấn tượng và ngon miệng.%%%Học pha chế Barista,Cà phê của những nghệ nhân,hoc pha che ca phe%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1376535900%%%vi%%%1%%%2%%%2%%%%%%,6,68,', 'vi', 0, NULL, NULL),
(291, 'Mở quán cà phê - Mô hình kinh doanh không dễ thành công', 'update', 'web_header', 659, 1455486388, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values659%%%Mở quán cà phê - Mô hình kinh doanh không dễ thành công%%%mo-quan-ca-phe-mo-hinh-kinh-doanh-khong-de-thanh-cong-348%%%%%%1385381937.jpg%%%Mở quán cà phê - Mô hình kinh doanh không dễ thành công%%%Để mở quán cà phê, ai cũng nghĩ rất đơn giản là chỉ cần biết pha cà phê phin, biết làm sinh tố và một số loại nước ép là đủ. Đó là những cách nghĩ đơn giản về cách kinh doanh mở quán cà phê như trước đây.%%%Mở quán cà phê,Mô hình kinh doanh không dễ thành công,mo quan ca phe%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1385381340%%%vi%%%1%%%2%%%2%%%%%%,6,68,', 'vi', 0, NULL, NULL),
(292, 'Học pha chế đồ uống - Sự đam mê của các bạn trẻ', 'update', 'web_header', 514, 1455486604, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values514%%%Học pha chế đồ uống - Sự đam mê của các bạn trẻ%%%Hoc-Pha-Che-Do-Uong-Su-Dam-Me-Cua-Cac-Ban-Tre-200%%%%%%1432550792.png%%%Học pha chế đồ uống - Sự đam mê của các bạn trẻ%%%Học pha chế đồ uống của các Học viên Trường dạy nghề ẩm thực Netspace khóa 1 thấm thoát đã bước vào kỳ thi tốt nghiệp đầy hào hứng nhưng không kém phần căng thẳng, lo lắng.%%%học pha chế đồ uống,hoc pha che do uong,học pha chế,pha chế%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1432550340%%%vi%%%1%%%2%%%2%%%%%%,6,205,356,', 'vi', 0, NULL, NULL),
(293, 'Học pha chế đồ uống - Sự đam mê của các bạn trẻ', 'update', 'web_header', 514, 1455486652, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values514%%%Học pha chế đồ uống - Sự đam mê của các bạn trẻ%%%Hoc-Pha-Che-Do-Uong-Su-Dam-Me-Cua-Cac-Ban-Tre-200%%%%%%1432550792.png%%%Học pha chế đồ uống - Sự đam mê của các bạn trẻ | Hoc pha che do uong%%%Học pha chế đồ uống của các Học viên Trường dạy nghề ẩm thực Netspace khóa 1 thấm thoát đã bước vào kỳ thi tốt nghiệp đầy hào hứng nhưng không kém phần căng thẳng%%%học pha chế đồ uống,hoc pha che do uong,học pha chế,pha chế%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1432550340%%%vi%%%1%%%2%%%2%%%%%%,6,205,356,', 'vi', 0, NULL, NULL),
(294, 'Học pha chế đồ uống ở đâu để kinh doanh', 'update', 'web_header', 515, 1455486854, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values515%%%Học pha chế đồ uống ở đâu để kinh doanh%%%Hoc-Pha-Che-Do-Uong-O-Dau-De-Kinh-Doanh-201%%%%%%1432550853.png%%%Học pha chế đồ uống ở đâu để kinh doanh%%%Học pha chế ở đâu để kinh doanh quán nước đó là câu hỏi mà chị Nguyễn Tuyết Hồng ngụ tại Quận Thủ Đức đang đi tìm chỗ học để về mở quán nước kinh doanh.%%%Học pha chế đồ uống ở đâu để kinh doanh,hoc pha che o dau%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1432550400%%%vi%%%1%%%2%%%2%%%%%%,6,205,356,', 'vi', 0, NULL, NULL),
(295, 'Học pha chế thức uống Barista - Sự lựa chọn của nhiều bạn trẻ', 'update', 'web_header', 518, 1455487062, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values518%%%Học pha chế thức uống Barista - Sự lựa chọn của nhiều bạn trẻ%%%Hoc-Pha-Che-Thuc-Uong-Baristasu-Lua-Chon-Cua-Nhieu-Ban-Tre-204%%%%%%1401014976.JPG%%%Học pha chế thức uống Barista - Sự lựa chọn của nhiều bạn trẻ%%%Học pha chế thức uống được chia làm 2 loại: thức uống không cồn-Barista và thức uống có cồn-Bartender. Hiện nay, học pha chế thức uống không cồn-Barista đang phát triển mạnh...%%%học pha chế thức uống,hoc pha che thuc uong%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1401014520%%%vi%%%1%%%2%%%2%%%%%%,6,205,356,', 'vi', 0, NULL, NULL),
(296, 'Học pha chế đồ uống cùng Tường Vy, Hiếu Hiền và Thái Hòa', 'update', 'web_header', 539, 1455487186, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values539%%%Học pha chế đồ uống cùng Tường Vy, Hiếu Hiền và Thái Hòa%%%Hoc-Pha-Che-Do-Uong-Cung-Tuong-Vy-Hieu-Hien-Va-Thai-Hoa-219%%%%%%1455476078.jpg%%%Học pha chế đồ uống cùng Tường Vy, Hiếu Hiền và Thái Hòa%%%Học pha chế đồ uống cùng các diễn viên Tường Vy, Hiếu Hiền và Thái Hòa trong bộ phim “Bếp của Mẹ” tại trường Dạy nghề Ẩm thực Netspace rất vui vẻ và náo nhiệt.%%%Học pha chế đồ uống, cùng Tường Vy, Hiếu Hiền và Thái Hòa%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1432550460%%%vi%%%1%%%2%%%2%%%%%%,6,205,356,', 'vi', 0, NULL, NULL),
(297, 'Học pha chế đồ uống hấp dẫn phụ nữ', 'update', 'web_header', 542, 1455487235, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values542%%%Học pha chế đồ uống hấp dẫn phụ nữ%%%Hoc-Pha-Che-Do-Uong-Hap-Dan-Phu-Nu-222%%%%%%1455406847.jpg%%%Học pha chế đồ uống hấp dẫn phụ nữ%%%Học pha chế đồ uống ngày càng hấp dẫn phụ nữ, rất nhiều chị em đi tìm nơi học pha chế để về phục vụ cho gia đình, làm đẹp cho bản thân .%%%Học pha chế đồ uống, hoc pha che do uong%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1432550460%%%vi%%%1%%%2%%%2%%%%%%,6,205,356,', 'vi', 0, NULL, NULL),
(298, 'Trường nào dạy nấu ăn tốt nhất ở Tp.HCM', 'update', 'web_header', 513, 1455487895, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values513%%%Trường nào dạy nấu ăn tốt nhất ở Tp.HCM%%%Truong-Nao-Day-Nau-An-Tot-Nhat-O-Tphcm-199%%%%%%1424624851.jpg%%%Trường nào dạy nấu ăn tốt nhất ở Tp.HCM%%%Trường nào dạy nấu ăn tốt nhất ở thành phố Hồ Chí Minh, thì Bạn nên tham khảo những thông tin sau đây Trường dạy nấu ăn tốt nhất là những trường dạy nghề nấu ăn đảm bảo các yêu cầu căn bản cho người học và đạt được những mục tiêu nghề nghiệp%%%Trường nào dạy nấu ăn tốt nhất ở Tp.HCM,Truong Nao Day Nau An Tot Nhat O Tphcm%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1424624400%%%vi%%%1%%%2%%%2%%%%%%,6,204,', 'vi', 0, NULL, NULL),
(299, 'Trường nào dạy nấu ăn tốt nhất ở Tp.HCM', 'update', 'web_header', 513, 1455488607, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values513%%%Trường nào dạy nấu ăn tốt nhất ở Tp.HCM%%%Truong-Nao-Day-Nau-An-Tot-Nhat-O-Tphcm-199%%%%%%1424624851.jpg%%%Trường nào dạy nấu ăn tốt nhất ở Tp.HCM%%%Trường nào dạy nấu ăn tốt nhất ở thành phố Hồ Chí Minh? Bạn nên tham khảo kỹ  những Trường dạy nấu ăn tốt nhất là những trường dạy nghề nấu ăn đảm bảo các yêu cầu dạy nghề cho người học và đạt được những mục tiêu nghề nghiệp của Bạn%%%Trường nào dạy nấu ăn tốt nhất ở Tp.HCM,Truong Nao Day Nau An Tot Nhat O Tphcm%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1424624400%%%vi%%%1%%%2%%%2%%%%%%,6,204,', 'vi', 0, NULL, NULL),
(300, 'Học pha chế đồ uống hấp dẫn phụ nữ', 'update', 'web_header', 542, 1455489524, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values542%%%Học pha chế đồ uống hấp dẫn phụ nữ%%%Hoc-Pha-Che-Do-Uong-Hap-Dan-Phu-Nu-222%%%%%%1455406847.jpg%%%Học pha chế đồ uống hấp dẫn phụ nữ | Hoc pha che do uong%%%Học pha chế đồ uống ngày càng hấp dẫn phụ nữ, rất nhiều chị em đi tìm nơi học pha chế để về phục vụ cho gia đình, làm đẹp cho bản thân .%%%Học pha chế đồ uống,hoc pha che do uong%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1432550460%%%vi%%%1%%%2%%%2%%%%%%,6,356,', 'vi', 0, NULL, NULL),
(301, 'Học pha chế đồ uống hấp dẫn phụ nữ', 'update', 'web_header', 542, 1455489555, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values542%%%Học pha chế đồ uống hấp dẫn phụ nữ%%%Hoc-Pha-Che-Do-Uong-Hap-Dan-Phu-Nu-222%%%%%%1455406847.jpg%%%Học pha chế đồ uống hấp dẫn phụ nữ | Hoc pha che do uong%%%Học pha chế đồ uống ngày càng hấp dẫn phụ nữ, rất nhiều chị em đi tìm nơi học pha chế để về phục vụ cho gia đình, làm đẹp cho bản thân .%%%Học pha chế đồ uống,hoc pha che do uong%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1432550460%%%vi%%%1%%%2%%%2%%%%%%,6,356,', 'vi', 0, NULL, NULL),
(302, 'Học pha chế đồ uống hấp dẫn phụ nữ', 'update', 'web_header', 542, 1455489598, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values542%%%Học pha chế đồ uống hấp dẫn phụ nữ%%%Hoc-Pha-Che-Do-Uong-Hap-Dan-Phu-Nu-222%%%%%%1455406847.jpg%%%Học pha chế đồ uống hấp dẫn phụ nữ | Hoc pha che do uong%%%Học pha chế đồ uống ngày càng hấp dẫn phụ nữ, rất nhiều chị em đi tìm nơi học pha chế để về phục vụ cho gia đình, làm đẹp cho bản thân .%%%Học pha chế đồ uống,hoc pha che do uong%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1432550460%%%vi%%%1%%%2%%%2%%%%%%,6,356,', 'vi', 0, NULL, NULL),
(303, 'Học pha chế để trở thành Barista chuyên nghiệp - dễ hay khó?', 'update', 'web_header', 596, 1455489905, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values596%%%Học pha chế để trở thành Barista chuyên nghiệp - dễ hay khó?%%%hoc-pha-che-de-tro-thanh-barista-chuyen-nghiep-de-hay-kho-284%%%%%%1432550994.JPG%%%Học pha chế để trở thành Barista chuyên nghiệp - dễ hay khó?%%%Học pha chế Barista gần đây đã trở nên "hot" hơn bao giờ hết, vì có lẽ sự hào nhoáng bên ngoài của nghề pha chế đã thu hút nhiều bạn trẻ.%%%Học pha chế để trở thành Barista chuyên nghiệp,hoc pha che barista chuyen nghiep%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1432550460%%%vi%%%1%%%2%%%2%%%%%%,6,205,356,', 'vi', 0, NULL, NULL),
(304, 'Học pha chế sinh tố để mở quán kinh doanh', 'update', 'web_header', 681, 1455490113, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values681%%%Học pha chế sinh tố để mở quán kinh doanh%%%hoc-pha-che-sinh-to-de-mo-quan-kinh-doanh-372%%%%%%1432551019.jpg%%%Học pha chế sinh tố để mở quán kinh doanh%%%Học pha chế sinh tố để mở quán kinh doanh là mô hình kinh doanh khá thành công hiện nay. Việc nắm bắt nhu cầu của khách hàng trong ngành ăn uống sẽ quyết định sự thành công hay thất bại của một chủ quán%%%Học pha chế sinh tố,mở quán kinh doanh,hoc pha che sinh to%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1432550400%%%vi%%%1%%%2%%%2%%%%%%,6,205,356,', 'vi', 0, NULL, NULL),
(305, 'Học pha chế thức uống ', 'update', 'web_header', 912, 1455490418, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values912%%%Học pha chế thức uống %%%hoc-pha-che-thuc-uong%%%%%%1432551190.jpg%%%Học pha chế thức uống %%%Để học pha chế thức uống, trước tiên Bạn phải xác định mục tiêu nghề nghiệp: Bạn học pha chế thức uống để mở quán kinh doanh hay Bạn học pha chế thức uống để trở thành Nhân viên pha chế chuyên nghiệp%%%Học pha chế thức uống,hoc pha che thuc uong%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1432550340%%%vi%%%1%%%2%%%2%%%%%%,6,356,', 'vi', 0, NULL, NULL),
(306, 'Học pha chế sinh tố để mở quán kinh doanh', 'update', 'web_header', 681, 1455490477, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values681%%%Học pha chế sinh tố để mở quán kinh doanh%%%hoc-pha-che-sinh-to-de-mo-quan-kinh-doanh-372%%%%%%1432551019.jpg%%%Học pha chế sinh tố để mở quán kinh doanh | Hoc pha che sinh to%%%Học pha chế sinh tố để mở quán kinh doanh là mô hình kinh doanh khá thành công hiện nay nắm bắt nhu cầu khách hàng sẽ quyết định sự thành công hay thất bại của một chủ quán%%%học pha chế sinh tố,mở quán kinh doanh,hoc pha che sinh to%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1432550400%%%vi%%%1%%%2%%%2%%%%%%,6,205,356,', 'vi', 0, NULL, NULL),
(307, 'Hướng dẫn pha soda kem dâu tây ngon tuyệt', 'update', 'web_header', 965, 1455490654, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values965%%%Hướng dẫn pha soda kem dâu tây ngon tuyệt%%%huong-dan-pha-soda-kem-dau-tay-ngon-tuyet%%%%%%1432551243.jpg%%%Hướng dẫn pha soda kem dâu tây ngon tuyệt%%%Từ công thức soda kem dâu này, bạn còn có thể áp dụng với các loại hoa quả khác, tiện lợi vô cùng!%%%Hướng dẫn pha soda kem dâu tây,huong dan pha soda kem dau%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1432550340%%%vi%%%1%%%2%%%2%%%%%%,6,356,', 'vi', 0, NULL, NULL),
(308, 'Học pha chế sinh tố', 'update', 'web_header', 1008, 1455490879, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1008%%%Học pha chế sinh tố%%%hoc-pha-che-sinh-to%%%%%%1432551226.jpg%%%Học pha chế sinh tố%%%Sinh tố không những là thức uống giải khát được đa số các bạn trẻ yêu thích mà còn là thức uống bổ dưỡng, tốt cho sức khoẻ và là trợ thủ đắc lực của việc làm đẹp, chính vì thế, học pha chế sinh tố đang rất được quan tâm.%%%Học pha chế sinh tố,hoc pha che sinh to%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1432550280%%%vi%%%1%%%2%%%2%%%%%%,6,356,', 'vi', 0, NULL, NULL),
(309, 'Học pha chế sinh tố ở đâu?', 'update', 'web_header', 1009, 1455491149, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1009%%%Học pha chế sinh tố ở đâu?%%%hoc-pha-che-sinh-to-o-dau%%%%%%1432551227.jpg%%%Học pha chế sinh tố ở đâu?%%%Pha chế sinh tố đang rất phổ biến, nhiều nhà hàng, quán nước đều có sinh tố trong thực đơn của mình, vì vậy nhân sự biết pha chế sinh tố đang rất được các nhà tuyển dụng quan tâm. Vậy học pha chế sinh tố ở đâu, trường dạy nghề pha chế nào chất lượng%%%Học pha chế sinh tố ở đâu,hoc pha che sinh to o dau%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1432550280%%%vi%%%1%%%2%%%2%%%%%%,6,356,', 'vi', 0, NULL, NULL),
(310, 'Học pha chế sinh tố ở đâu?', 'update', 'web_header', 1009, 1455491165, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1009%%%Học pha chế sinh tố ở đâu?%%%hoc-pha-che-sinh-to-o-dau%%%%%%1432551227.jpg%%%Học pha chế sinh tố ở đâu | Hoc pha che sinh to o dau%%%Pha chế sinh tố đang rất phổ biến, nhiều nhà hàng, quán nước đều có sinh tố trong thực đơn. Trường dạy pha chế sinh tố Netspace%%%học pha chế sinh tố ở đâu,hoc pha che sinh to o dau%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1432550280%%%vi%%%1%%%2%%%2%%%%%%,6,356,', 'vi', 0, NULL, NULL),
(311, 'Học pha chế sinh tố ở đâu?', 'update', 'web_header', 1009, 1455491186, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1009%%%Học pha chế sinh tố ở đâu?%%%hoc-pha-che-sinh-to-o-dau%%%%%%1432551227.jpg%%%Học pha chế sinh tố ở đâu | Hoc pha che sinh to o dau%%%Pha chế sinh tố đang rất phổ biến, nhiều nhà hàng, quán nước đều có sinh tố trong thực đơn. Trường dạy pha chế sinh tố Netspace%%%học pha chế sinh tố ở đâu,hoc pha che sinh to o dau%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1432550280%%%vi%%%1%%%2%%%2%%%%%%,6,356,', 'vi', 0, NULL, NULL),
(312, 'Học pha chế cà phê', 'update', 'web_header', 68, 1455492674, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values68%%%Học pha chế cà phê%%%hoc-pha-che-ca-phe%%%%%%%%%Học pha chế cà phê `cafe` tại trường NetSpace%%%Trường NetSpace chuyên đào tạo pha chế cà phê Barista chuyên nghiệp và cách rang cà phê. Học viên sẽ được trải nghiệm với cafe máy không phải ở trường nào cũng có.%%%Học pha chế cà phê,hoc pha che ca phe,cafe may%%%%%%6%%%%%%%%%%%%%%%%%%7%%%%%%1453974480%%%vi%%%1%%%1%%%2%%%,1,', 'vi', 0, NULL, NULL),
(313, 'Nghề bếp và tương lai tươi sáng - Dạy nấu ăn', 'update', 'web_header', 418, 1455492907, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values418%%%Nghề bếp và tương lai tươi sáng - Dạy nấu ăn%%%Nghe-Bep-Va-Tuong-Lai-Tuoi-Sang-Day-Nau-An-181%%%%%%1362675956.jpg%%%Nghề bếp và tương lai tươi sáng - Dạy nấu ăn%%%Nhu cầu tuyển dụng nhân lực của nghề bếp luôn luôn tăng mạnh cùng với sự phát triển nhanh chóng%%%Nghề bếp và tương lai tươi sáng,nghe bep va tuong lai tuoi sang%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1362675600%%%vi%%%1%%%2%%%2%%%%%%,6,201,', 'vi', 0, NULL, NULL),
(314, 'Học nghề bếp - Nghề hái ra tiền', 'update', 'web_header', 487, 1455493102, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values487%%%Học nghề bếp - Nghề hái ra tiền%%%Hoc-Nghe-Bep-Nghe-Hai-Ra-Tien-170%%%%%%1360977485.jpg%%%Học nghề bếp - Nghề hái ra tiền%%%Thời gian gần đây, các show truyền hình về dạy nấu ăn đang phát triển rầm rộ, điều đó chứng minh rằng nhu cầu nhân sự và sức hút rất lớn của nghề bếp ở Việt Nam hiện nay.%%%Học nghề bếp Nghề hái ra tiền,hoc nghe bep nghe hai ra tien%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1360977060%%%vi%%%1%%%2%%%2%%%%%%,6,201,', 'vi', 0, NULL, NULL),
(315, 'Học nghề bếp chắp cánh những ước mơ', 'update', 'web_header', 505, 1455493212, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values505%%%Học nghề bếp chắp cánh những ước mơ%%%Hoc-Nghe-Bep-Chap-Canh-Nhung-Uoc-Mo-193%%%%%%1364576843.jpg%%%Học nghề bếp chắp cánh những ước mơ%%%Khóa học phụ bếp đầu tiên được thử nghiệm tại Trường dạy nghề Ẩm Thực NetSpace dành cho các bạn gặp hoàn cảnh gia đình khó khăn đam mê học nấu ăn.%%%Học nghề bếp chắp cánh những ước mơ,hoc nghe bep chap canh nhung uoc mo%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1364576400%%%vi%%%1%%%2%%%2%%%%%%,6,201,', 'vi', 0, NULL, NULL),
(316, 'Học nghề bếp ở đâu', 'update', 'web_header', 523, 1455493421, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values523%%%Học nghề bếp ở đâu%%%Hoc-Nghe-Bep-O-Dau-207%%%%%%1367740481.jpg%%%Học nghề bếp ở đâu%%%Học nghề bếp ở đâu? Nơi nào học nghề bếp tốt nhất?  Học nghề bếp ở đâu tốt  nhất?... Hầu hết các câu hỏi này đều  là của các bạn trẻ mong muốn tìm một nơi học nghề bếp...%%%Học nghề bếp ở đâu,hoc nghe bep o dau%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1367740020%%%vi%%%1%%%2%%%2%%%%%%,6,201,', 'vi', 0, NULL, NULL),
(317, 'Học nghề bếp có lợi ích gì', 'update', 'web_header', 534, 1455493623, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values534%%%Học nghề bếp có lợi ích gì%%%Hoc-Nghe-Bep-Co-Loi-Ich-Gi-215%%%%%%%%%Học nghề bếp có lợi ích gì%%%Học nghề bếp có rất nhiều lợi ích cho cuộc sống hàng ngày của chúng ta, nếu chúng ta nắm bắt tốt công việc học nghề bếp thì không những rất có lợi cho sức khỏe gia đình, tiền bạc mà còn cả công danh sự nghiệp của bạn nữa.%%%Học nghề bếp có lợi ích gì,hoc nghe bep co loi ich gi%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1368378000%%%vi%%%1%%%2%%%2%%%%%%,6,201,', 'vi', 0, NULL, NULL),
(318, 'Học nghề bếp học nữa học mãi', 'update', 'web_header', 540, 1455493794, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values540%%%Học nghề bếp học nữa học mãi%%%Hoc-Nghe-Bep-Hoc-Nua-Hoc-Mai-220%%%%%%%%%Học nghề bếp học nữa học mãi%%%Học nghề bếp học nữa học mãi là lời khuyên của một người Thầy luôn luôn đặt giáo dục sự nghiệp và giáo dục con người lên hàng đầu. Đối với Thầy học nghề bếp đang rất được xem trọng%%%Học nghề bếp học nữa học mãi,hoc nghe bep hoc nua hoc mai%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1368982800%%%vi%%%1%%%2%%%2%%%%%%,6,201,', 'vi', 0, NULL, NULL),
(319, 'Trường đào tạo nghề bếp cho tương lai', 'update', 'web_header', 576, 1455494011, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values576%%%Trường đào tạo nghề bếp cho tương lai%%%truong-dao-tao-nghe-bep-cho-tuong-lai-266%%%%%%1374817714.jpg%%%Trường đào tạo nghề bếp cho tương lai%%%Nhiều bạn trẻ không đạt được ước mơ: “Vào học tại các Trường Cao đẳng - Đại học”, tưởng chừng như cánh cửa tương lai đã khép lại, nhưng lại không biết là có một cánh cửa khác rộng mở hơn rất nhiều tại các Trường đào đạo nghề, đặc biệt là nghề bếp.%%%Trường đào tạo nghề bếp cho tương lai,truong dao tao nghe bep cho tuong lai%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1374817200%%%vi%%%1%%%2%%%2%%%%%%,6,201,', 'vi', 0, NULL, NULL),
(320, 'Trường đào tạo nghề bếp - Ưu thế vượt trội', 'update', 'web_header', 577, 1455494150, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values577%%%Trường đào tạo nghề bếp - Ưu thế vượt trội%%%truong-dao-tao-nghe-bep-uu-the-vuot-troi-267%%%%%%1375503935.jpg%%%Trường đào tạo nghề bếp - Ưu thế vượt trội%%%Các Trường đào tạo nghề đặc biệt là nghề bếp đang chiếm ưu thế rất lớn đã thu hút đông đảo các bạn trẻ đăng kí học nghề.%%%Trường đào tạo nghề bếp Ưu thế vượt trội,truong dao tao nghe bep%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1375503420%%%vi%%%1%%%2%%%2%%%%%%,6,201,', 'vi', 0, NULL, NULL),
(321, 'Lựa chọn trường đào tạo nghề bếp uy tín để khởi nghiệp thành công', 'delete', 'web_header', 593, 1455494235, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values593%%%Lựa chọn trường đào tạo nghề bếp uy tín để khởi nghiệp thành công%%%lua-chon-truong-dao-tao-nghe-bep-uy-tin-de-khoi-nghiep-thanh-cong-281%%%%%%1377848991.JPG%%%Lựa chọn trường đào tạo nghề bếp uy tín để khởi nghiệp thành công%%%Xuất phát từ nhu cầu thực tế này, để có một chuyên môn vững chắc, nhiều người đã chọn cho mình học tại Trường dạy ẩm thực NetSpace – một trường đào tạo nghề bếp uy tín. %%%trường đào tạo nghề bếp uy tín,truong dao tao nghe bep uy tin%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1377848460%%%vi%%%1%%%2%%%2%%%%%%,6,201,', 'vi', 0, NULL, NULL),
(322, 'Trường dạy nghề ẩm thực NetSpace - không chỉ là một trường đào tạo nghề bếp', 'delete', 'web_header', 594, 1455494305, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values594%%%Trường dạy nghề ẩm thực NetSpace - không chỉ là một trường đào tạo nghề bếp%%%truong-day-nghe-am-thuc-netspace-khong-chi-la-mot-truong-dao-tao-nghe-bep-282%%%%%%1377942772.JPG%%%Trường dạy nghề ẩm thực NetSpace - không chỉ là một trường đào tạo nghề bếp%%%Tuy nhiên, quá trình tìm kiếm một ngôi trường đào tạo nghề bếp có chất lượng cao, uy tín, hợp với hoàn cảnh kinh tế của gia đình luôn là một thách thức không nhỏ đối với nhiều bậc phụ huynh và học viên.%%%trường đào tạo nghề bếp,truong dao tao nghe bep%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1377942240%%%vi%%%1%%%2%%%2%%%%%%,6,201,', 'vi', 0, NULL, NULL),
(323, 'Trường đào tạo nghề bếp luôn đặt sự nghiệp giáo dục lên trên hết', 'update', 'web_header', 598, 1455494456, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values598%%%Trường đào tạo nghề bếp luôn đặt sự nghiệp giáo dục lên trên hết%%%truong-dao-tao-nghe-bep-luon-dat-su-nghiep-giao-duc-len-tren-het-286%%%%%%1378375136.jpg%%%Trường đào tạo nghề bếp luôn đặt sự nghiệp giáo dục lên trên hết%%%Lựa chọn theo học tại trường đào tạo nghề bếp ngay bây giờ chắc chắn sẽ là một lựa chọn an toàn cho tương lai sau này của bạn.%%%Trường đào tạo nghề bếp luôn đặt sự nghiệp giáo dục lên trên hết,truong dao tao nghe bep%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1378374600%%%vi%%%1%%%2%%%2%%%%%%,6,201,', 'vi', 0, NULL, NULL),
(324, 'Trường đào tạo nghề bếp luôn đặt sự nghiệp giáo dục lên trên hết', 'update', 'web_header', 598, 1455494491, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values598%%%Trường đào tạo nghề bếp luôn đặt sự nghiệp giáo dục lên trên hết%%%truong-dao-tao-nghe-bep-luon-dat-su-nghiep-giao-duc-len-tren-het-286%%%%%%1378375136.jpg%%%Trường đào tạo nghề bếp luôn đặt sự nghiệp giáo dục lên trên hết%%%Lựa chọn theo học tại trường đào tạo nghề bếp ngay bây giờ chắc chắn sẽ là một lựa chọn an toàn cho tương lai sau này của bạn.%%%trường đào tạo nghề bếp,đặt sự nghiệp giáo dục lên trên hết,truong dao tao nghe bep%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1378374600%%%vi%%%1%%%2%%%2%%%%%%,6,201,', 'vi', 0, NULL, NULL),
(325, 'Chia sẻ về nghề bếp với Thầy Nguyễn Văn Lập - Siêu đầu bếp 2013', 'update', 'web_header', 618, 1455494559, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values618%%%Chia sẻ về nghề bếp với Thầy Nguyễn Văn Lập - Siêu đầu bếp 2013%%%chia-se-ve-nghe-bep-voi-thay-nguyen-van-lap-sieu-dau-bep-2013-307%%%%%%1380611416.jpg%%%Chia sẻ về nghề bếp với Thầy Nguyễn Văn Lập - Siêu đầu bếp 2013%%%Thầy Nguyễn Văn Lập (Siêu đầu bếp 2013) hiện đang là giảng viên tại Trường dạy nghề ẩm thực NetSpace đã chia sẻ những lời khuyên hữu ích cho các bạn có niềm đam mê nghề bếp.%%%Chia sẻ nghề bếp,Thầy Nguyễn Văn Lập,siêu đầu bếp%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1380610860%%%vi%%%1%%%2%%%2%%%%%%,6,201,', 'vi', 0, NULL, NULL),
(326, 'Nghề đầu bếp – Cơ hội kinh doanh, cơ hội nghề nghiệp', 'update', 'web_header', 637, 1455494795, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values637%%%Nghề đầu bếp – Cơ hội kinh doanh, cơ hội nghề nghiệp%%%nghe-dau-bep-co-hoi-kinh-doanh-co-hoi-nghe-nghiep-337%%%%%%1384331855.jpg%%%Nghề đầu bếp – Cơ hội kinh doanh, cơ hội nghề nghiệp%%%Với sự phát triển của ẩm thực Việt Nam, nghề đầu bếp ngày càng được vinh danh. So với một sinh viên mới ra trường thì một đầu bếp sau khi hoàn thành khóa đào tạo bếp, có khả năng kiếm việc nhanh hơn, lương cao hơn và ít bị cạnh tranh hơn. Ngoài ra, để chuyển hướng kinh doanh trong ngành ẩm thực sẽ c%%%Nghề đầu bếp,Cơ hội kinh doanh, cơ hội nghề nghiệp%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1384331280%%%vi%%%1%%%2%%%2%%%%%%,6,201,', 'vi', 0, NULL, NULL);
INSERT INTO `web_logs` (`id`, `name`, `action`, `_table`, `table_id`, `datetime`, `username`, `content`, `lang`, `status`, `date_restore`, `user_restore`) VALUES
(327, 'Trường đào tạo nghề bếp NetSpace mang đến cơ hội học tập và khởi nghiệp', 'update', 'web_header', 642, 1455495015, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values642%%%Trường đào tạo nghề bếp NetSpace mang đến cơ hội học tập và khởi nghiệp%%%truong-dao-tao-nghe-bep-netspace-mang-co-hoi-hoc-tap-va-khoi-nghiep-den-voi-nhieu-ban-tre-331%%%%%%%%%Trường đào tạo nghề bếp NetSpace mang đến cơ hội học tập và khởi nghiệp%%%Trường đào tạo nghề bếp NetSpace đã mở ra các chương trình đào tạo phụ bếp và đặc biệt có chương trình đào tạo miễn phí dành cho các bạn trẻ có hoàn cảnh khó khăn và yêu thích nghề bếp. %%%Trường đào tạo nghề bếp NetSpace, mang đến cơ hội học tập và khởi nghiệp%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1383268140%%%vi%%%1%%%2%%%2%%%%%%,6,201,', 'vi', 0, NULL, NULL),
(328, 'Thích làm nghề đầu bếp có cần học đại học?', 'update', 'web_header', 648, 1455495199, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values648%%%Thích làm nghề đầu bếp có cần học đại học?%%%thich-lam-nghe-dau-bep-co-can-hoc-dai-hoc-338%%%%%%1384418266.jpg%%%Thích làm nghề đầu bếp có cần học đại học?%%%Trước thực trạng xã hội đang dư thừa các Cử nhân, Cử nhân tốt nghiệp đại học không có việc làm đang trở thành phổ biến, các bạn trẻ có xu hướng chọn các trường nghề để học, cơ hội việc làm tốt hơn, thời gian học nhanh hơn. Một trong những nghề đang được nhiều bạn quan tâm nhất lại là là nghề đầu bếp%%%Thích làm nghề đầu bếp có cần học đại học,thich lam nghe dau bep co can hoc dai hoc%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1384417680%%%vi%%%1%%%2%%%2%%%%%%,6,201,', 'vi', 0, NULL, NULL),
(329, 'Nghề đầu bếp - nghề nổi tiếng không cần bằng cấp', 'update', 'web_header', 675, 1455495291, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values675%%%Nghề đầu bếp - nghề nổi tiếng không cần bằng cấp%%%nghe-dau-bep-nghe-noi-tieng-khong-can-bang-cap-367%%%%%%1390877893.j%%%Nghề đầu bếp - nghề nổi tiếng không cần bằng cấp%%%Từ bỏ bằng tài chính ở Mỹ để theo nghề đầu bếp, Bobby Chinn đang là chủ của chuỗi nhà hàng 5 sao tại Việt Nam.%%%Nghề đầu bếp,nghề nổi tiếng không cần bằng cấp,​Bobby Chinn,nghe dau bep%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1390877280%%%vi%%%1%%%2%%%2%%%%%%,6,201,', 'vi', 0, NULL, NULL),
(330, 'Ranh giới giữa đại học và học nghề đầu bếp', 'update', 'web_header', 684, 1455495401, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values684%%%Ranh giới giữa đại học và học nghề đầu bếp%%%ranh-gioi-giua-dai-hoc-va-hoc-nghe-dau-bep-375%%%%%%1393821982.jpg%%%Ranh giới giữa đại học và học nghề đầu bếp%%%Ngày khai giảng, mình đã khóc vì mình vẫn không tin lại chọn con đường học nghề đầu bếp bởi vì giấc mơ trở thành một sinh viên Đại Học đã bị nhấn chìm trong nhiều ấm ức. %%%Ranh giới giữa đại học và học nghề đầu bếp,hoc nghe dau bep%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1393821360%%%vi%%%1%%%2%%%2%%%%%%,6,201,', 'vi', 0, NULL, NULL),
(331, 'Học nghề bếp ở Đà Lạt – Cơ hội cho các bạn trẻ', 'update', 'web_header', 737, 1455495646, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values737%%%Học nghề bếp ở Đà Lạt – Cơ hội cho các bạn trẻ%%%hoc-nghe-bep-o-da-lat-co-hoi-cho-cac-ban-tre%%%%%%%%%Học nghề bếp ở Đà Lạt – Cơ hội cho các bạn trẻ%%%Đà Lạt một địa điểm nổi tiếng về du lịch, đồng nghĩa với sự phát triển của dịch vụ ẩm thực và việc học nghề bếp ở Đà Lạt  trở nên hấp dẫn hơn đối với nhiều bạn trẻ đang định hướng nghề nghiệp cho bản thân.%%%Học nghề bếp ở Đà Lạt – Cơ hội cho các bạn trẻ,hoc nghe bep o da lat%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1432377240%%%vi%%%1%%%2%%%2%%%%%%,6,201,', 'vi', 0, NULL, NULL),
(332, 'Đào tạo đầu bếp chay', 'update', 'web_header', 761, 1455495810, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values761%%%Đào tạo đầu bếp chay%%%dao-tao-dau-bep-chay%%%%%%1403756679.jpg%%%Đào tạo đầu bếp chay%%%Chương trình đào tạo đầu bếp chay tại trường dạy nấu ăn NetSpace sẽ là nơi tốt nhất để hoàn thiện và nâng cao tay nghề của Đầu bếp chay.%%%Đào tạo đầu bếp chay,dao tao dau bep chay%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1403755980%%%vi%%%1%%%2%%%2%%%%%%,6,201,', 'vi', 0, NULL, NULL),
(333, 'Nghề nấu ăn', 'update', 'web_header', 1028, 1455495952, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1028%%%Nghề nấu ăn%%%nghe-nau-an%%%%%%1426915386.jpg%%%Nghề nấu ăn%%%Nghề nấu ăn là nghề đang được rất nhiều bạn trẻ yêu thích và chọn lựa. Để có nghề nấu ăn, Bạn phải qua một trường lớp đào tạo chuyên nghiệp%%%Nghề nấu ăn,nghe nau an%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1426914420%%%vi%%%1%%%2%%%2%%%%%%,6,201,', 'vi', 0, NULL, NULL),
(334, 'Trường dạy pha chế', 'update', 'web_header', 205, 1455496119, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values205%%%Trường dạy pha chế%%%truong-day-hoc-pha-che%%%%%%%%%Trường dạy học pha chế NetSpace%%%Trường dạy học pha chế NetSpace chuyên đào tạo các khóa học Barista, Bartender, cà phê Barista, pha chế sinh tố, cà phê,... Với 4 chi nhánh: Tp.HCM, Đà Nẵng, Đà Lạt, Cần Thơ các học viên có thể chọn nơi phù hợp để học.%%%học pha chế,hoc pha che,trường dạy học pha chế,pha chế,pha che%%%%%%6%%%%%%%%%%%%%%%%%%2%%%%%%1453974480%%%vi%%%1%%%1%%%2%%%,1,', 'vi', 0, NULL, NULL),
(335, 'Trường dạy pha chế Barista - Bartender  tốt nhất', 'update', 'web_header', 423, 1455496356, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values423%%%Trường dạy pha chế Barista - Bartender  tốt nhất%%%Truong-Day-Pha-Che-Barista-Bartender-Tot-Nhat-189%%%%%%1364457121.jpg%%%Trường dạy pha chế Barista - Bartender  tốt nhất%%%Dạy pha chế Barista - Bartender tốt nhất. Thức uống luôn là vấn đề quan tâm của rất nhiều người, những sản phẩm thức uống tràn ngập thị trường với những sản phẩm đa dạng, có nhiều sự lựa chọn cho mọi người nhưng cũng là mối lo về vệ sinh, dinh dưỡng, sức %%%Trường dạy pha chế Barista - Bartender,truong day pha che%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1364456760%%%vi%%%1%%%2%%%2%%%%%%,6,205,', 'vi', 0, NULL, NULL),
(336, 'Học nấu ăn - Học pha chế - Học hết mình, chơi hết sức', 'update', 'web_header', 521, 1455496530, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values521%%%Học nấu ăn - Học pha chế - Học hết mình, chơi hết sức%%%Hoc-Nau-Anhoc-Pha-Che-Hoc-Het-Minh-Choi-Het-Suc-205%%%%%%1367255259.jpg%%%Học nấu ăn - Học pha chế - Học hết mình, chơi hết sức%%%“Học nấu ăn - Học pha chế - học hết mình, chơi hết sức” đó là khẩu hiệu của học viên Trường Dạy Nghề Ẩm Thực Netspace trong buổi giao lưu ngoại khóa tại khu du lịch Văn Thánh vào ngày 25/4/2013 vừa qua.%%%Học nấu ăn,Học pha chế,Học hết mình,chơi hết sức%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1367254800%%%vi%%%1%%%2%%%2%%%%%%,6,205,', 'vi', 0, NULL, NULL),
(337, 'Học pha chế ở Đà Nẵng', 'update', 'web_header', 559, 1455496673, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values559%%%Học pha chế ở Đà Nẵng%%%hoc-pha-che-o-da-nang-thoa-suc-sang-tao-250%%%%%%1455406141.jpg%%%Học pha chế ở Đà Nẵng%%%Học pha chế ở Đà Nẵng tại Trường Dạy nghề Ẩm thực Netspace là nơi lý tưởng để mọi người yêu thích nghề  pha chế có thể học tập và sáng tạo với hàng trăm loại thức uống khác nhau%%%Học pha chế ở Đà Nẵng,hoc pha che o da nang%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1373352240%%%vi%%%1%%%2%%%2%%%%%%,6,205,', 'vi', 0, NULL, NULL),
(338, 'Lễ tốt nghiệp khóa đào tạo bếp Việt và dạy pha chế Barista', 'update', 'web_header', 580, 1455496786, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values580%%%Lễ tốt nghiệp khóa đào tạo bếp Việt và dạy pha chế Barista%%%le-tot-nghiep-khoa-dao-tao-bep-viet-va-day-pha-che-barista-270%%%%%%1376289938.JPG%%%Lễ tốt nghiệp khóa đào tạo bếp Việt và dạy pha chế Barista%%%Vừa qua, ngày 08/08/2013 tại Trường dạy ẩm thực NetSpace đã diễn ra Lễ tốt nghiệp các chương trình đào tạo bếp Việt khóa 6 – 7 và dạy pha chế Barista khóa 2 – 3 – 4 của hơn 70 học viên%%%Lễ tốt nghiệp khóa đào tạo bếp Việt và dạy pha chế Barista%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1376289420%%%vi%%%1%%%2%%%2%%%%%%,6,205,', 'vi', 0, NULL, NULL),
(339, 'Trường dạy pha chế xuất phát điểm cho Bartender chuyên nghiệp', 'update', 'web_header', 595, 1455496920, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values595%%%Trường dạy pha chế xuất phát điểm cho Bartender chuyên nghiệp%%%truong-day-pha-che-xuat-phat-diem-cho-bartender-chuyen-nghiep-283%%%%%%1378183433.jpg%%%Trường dạy pha chế xuất phát điểm cho Bartender chuyên nghiệp%%%Nghề Bartender tại Việt Nam đang trở nên thịnh hành với sự xuất hiện của ngày càng nhiều các bar, khách sạn và nhà hàng lớn với thực khách đa phần là người nước ngoài.%%%Trường dạy pha chế xuất phát điểm cho Bartender chuyên nghiệp,truong day pha che bartender%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1378182900%%%vi%%%1%%%2%%%2%%%%%%,6,205,', 'vi', 0, NULL, NULL),
(340, 'Trường dạy pha chế cam kết đảm bảo chất lượng đào tạo', 'update', 'web_header', 601, 1455497172, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values601%%%Trường dạy pha chế cam kết đảm bảo chất lượng đào tạo%%%truong-day-pha-che-cam-ket-dam-bao-chat-luong-dao-tao-290%%%%%%1378800059.png%%%Trường dạy pha chế cam kết đảm bảo chất lượng đào tạo%%%Trường dạy pha chế NetSpace luôn cam kết đảm bảo chất lượng đào tạo tốt nhất Việt Nam%%%Trường dạy pha chế cam kết đảm bảo chất lượng đào tạo%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1378799520%%%vi%%%1%%%2%%%2%%%%%%,6,205,', 'vi', 0, NULL, NULL),
(341, 'Học pha chế tại Cần Thơ - Niềm tự hào là cơ sở đào tạo chuyên nghiệp', 'update', 'web_header', 607, 1455497436, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values607%%%Học pha chế tại Cần Thơ - Niềm tự hào là cơ sở đào tạo chuyên nghiệp%%%hoc-pha-che-tai-can-tho-niem-tu-hao-la-co-so-dao-tao-chuyen-nghiep-296%%%%%%1422863585.jpg%%%Học pha chế tại Cần Thơ - Niềm tự hào là cơ sở đào tạo chuyên nghiệp%%%Trường dạy học pha chế tại Cần Thơ tự hào là cơ sở đầu tiên đào tạo chuyên nghiệp nghề pha chế tại Cần Thơ%%%Học pha chế tại Cần Thơ,Niềm tự hào là cơ sở đào tạo chuyên nghiệp,hoc pha che tai can tho%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1422863040%%%vi%%%1%%%2%%%2%%%%%%,6,205,', 'vi', 0, NULL, NULL),
(342, 'Học pha chế tại Cần Thơ - Niềm tự hào là cơ sở đào tạo chuyên nghiệp', 'update', 'web_header', 607, 1455497481, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values607%%%Học pha chế tại Cần Thơ - Niềm tự hào là cơ sở đào tạo chuyên nghiệp%%%hoc-pha-che-tai-can-tho-niem-tu-hao-la-co-so-dao-tao-chuyen-nghiep-296%%%%%%1422863585.jpg%%%Học pha chế tại Cần Thơ | Hoc pha che tai Can Tho%%%Trường dạy học pha chế tại Cần Thơ tự hào là cơ sở đầu tiên đào tạo chuyên nghiệp nghề pha chế tại Cần Thơ%%%học pha chế tại cần thơ,hoc pha che tai can tho%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1422863040%%%vi%%%1%%%2%%%2%%%%%%,6,205,', 'vi', 0, NULL, NULL),
(343, 'Trường dạy pha chế giới thiệu Nghề độc đáo', 'update', 'web_header', 661, 1455497794, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values661%%%Trường dạy pha chế giới thiệu Nghề độc đáo%%%truong-day-pha-che-gioi-thieu-nghe-doc-dao-351%%%%%%1385641379.jpg%%%Trường dạy pha chế giới thiệu Nghề độc đáo%%%Khi mà các món đá xay (ice blended), espresso, latte, cappucino… dần trở thành những thức uống yêu thích của giới trẻ thì nghề pha chế ngày càng trở nên hấp dẫn. Trường dạy pha chế NetSpace xin giới thiệu với các bạn một nghề mới.%%%Trường dạy pha chế giới thiệu Nghề độc đáo,truong day pha che gioi thieu nghe doc dao%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1385640780%%%vi%%%1%%%2%%%2%%%%%%,6,205,', 'vi', 0, NULL, NULL),
(344, 'Học pha chế đồ uống tại Đà Lạt', 'update', 'web_header', 739, 1455498024, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values739%%%Học pha chế đồ uống tại Đà Lạt%%%hoc-pha-che-do-uong-tai-da-lat%%%%%%1422863921.jpg%%%Học pha chế đồ uống tại Đà Lạt%%%Trong thế giới ẩm thực thì thức uống cũng là một phần không thể thiếu để góp phần tăng thêm sự sinh động của cuộc sống và học pha chế đồ uống tại Đà Lạt của Trường dạy nghề ẩm thực NetSpace cũng góp phần mang lại nhiều màu sắc mới mẻ trên mảnh đất Đà Lạt thơ mộng.%%%Học pha chế đồ uống tại Đà Lạt,hoc pha che do uong tai da lat%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1422863244%%%vi%%%1%%%2%%%2%%%%%%,6,205,', 'vi', 0, NULL, NULL),
(345, 'Trường dạy nấu ăn nổi tiếng ở TpHCM', 'update', 'web_header', 997, 1455498295, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values997%%%Trường dạy nấu ăn nổi tiếng ở TpHCM%%%truong-day-nau-an-noi-tieng-o-tphcm%%%%%%1425550595.jpg%%%Trường dạy nấu ăn nổi tiếng ở TpHCM%%%Trường dạy nấu ăn nổi tiếng ở tphcm phải kể đến Trường dạy nghề ẩm thực NetSpace%%%Trường dạy nấu ăn nổi tiếng ở TpHCM,truong day nau an noi tieng o tphcm%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1425549660%%%vi%%%1%%%2%%%2%%%%%%,6,204,', 'vi', 0, NULL, NULL),
(346, 'Trường dạy nấu ăn nổi tiếng ở TpHCM', 'update', 'web_header', 997, 1455498322, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values997%%%Trường dạy nấu ăn nổi tiếng ở TpHCM%%%truong-day-nau-an-noi-tieng-o-tphcm%%%%%%1425550595.jpg%%%Trường dạy nấu ăn ở TpHCM%%%Trường dạy nấu ăn nổi tiếng ở tphcm phải kể đến Trường dạy nghề ẩm thực NetSpace%%%trường dạy nấu ăn ở tphcm,truong day nau an,tphcm%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1425549660%%%vi%%%1%%%2%%%2%%%%%%,6,204,', 'vi', 0, NULL, NULL),
(347, 'Trường dạy nấu ăn, dễ tìm mà khó chọn', 'update', 'web_header', 764, 1455498463, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values764%%%Trường dạy nấu ăn, dễ tìm mà khó chọn%%%truong-day-nau-an-de-tim-ma-kho-chon%%%%%%1403832282.jpg%%%Trường dạy nấu ăn, dễ tìm mà khó chọn%%%Trường dạy nấu ăn thì nhiều, nhưng chất lượng đào tạo thì một số Trường còn chưa thực sự chú trọng. Những lời hứa hẹn, những quảng cáo đầy cám dỗ về chất lượng đào tạo%%%Trường dạy nấu ăn, dễ tìm mà khó chọn%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1403831580%%%vi%%%1%%%2%%%2%%%%%%,6,204,', 'vi', 0, NULL, NULL),
(348, 'Cuộc thi trổ tài “các món gỏi đẳng cấp” hội tụ tài năng trẻ', 'update', 'web_header', 760, 1455498601, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values760%%%Cuộc thi trổ tài “các món gỏi đẳng cấp” hội tụ tài năng trẻ%%%cuoc-thi-tro-tai-cac-mon-goi-dang-cap-hoi-tu-tai-nang-tre%%%%%%%%%Cuộc thi trổ tài “các món gỏi đẳng cấp” hội tụ tài năng trẻ%%%Trường dạy nấu ăn NetSpace đã tổ chức cuộc thi chung kết trổ tài làm “các món gỏi đẳng cấp” do nhiều tài năng trẻ đang theo học tại NetSpace%%%Cuộc thi trổ tài các món gỏi đẳng cấp hội tụ tài năng trẻ,các món gỏi đẳng cấp%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1403512980%%%vi%%%1%%%2%%%2%%%%%%,6,204,', 'vi', 0, NULL, NULL),
(349, 'Cuộc thi trổ tài “các món gỏi đẳng cấp” hội tụ tài năng trẻ', 'update', 'web_header', 760, 1455498657, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values760%%%Cuộc thi trổ tài “các món gỏi đẳng cấp” hội tụ tài năng trẻ%%%cuoc-thi-tro-tai-cac-mon-goi-dang-cap-hoi-tu-tai-nang-tre%%%%%%%%%Cuộc thi trổ tài các món gỏi đẳng cấp hội tụ tài năng trẻ%%%Trường dạy nấu ăn NetSpace đã tổ chức cuộc thi chung kết trổ tài làm các món gỏi đẳng cấp do nhiều tài năng trẻ đang theo học tại NetSpace%%%các món gỏi đẳng,cac mon goi dang cap%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1403512980%%%vi%%%1%%%2%%%2%%%%%%,6,204,', 'vi', 0, NULL, NULL),
(350, 'Trường dạy nấu ăn ở Đà Lạt', 'update', 'web_header', 736, 1455498841, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values736%%%Trường dạy nấu ăn ở Đà Lạt%%%truong-day-nau-an-o-da-lat%%%%%%1455475732.jpg%%%Trường dạy nấu ăn ở Đà Lạt%%%Trường dạy nấu ăn ở Đà Lạt – một chi nhánh mới của trường dạy nghề ẩm thực NetSpace, địa chỉ 51D, Hùng Vương, TP.Đà Lạt đã khai trương và bắt đầu hoạt động từ 12/6/2014 tạo ra một địa điểm mới cho các Học viên miền Trung Nam Bộ có thể tham gia học tập những khoá bếp, khoá pha chế, các khoá kinh doan%%%Trường dạy nấu ăn ở Đà Lạt,truong day nau an o da lat%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1422863220%%%vi%%%1%%%2%%%2%%%%%%,6,204,', 'vi', 0, NULL, NULL),
(351, 'Trường dạy nấu ăn ở Đà Lạt', 'update', 'web_header', 736, 1455498861, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values736%%%Trường dạy nấu ăn ở Đà Lạt%%%truong-day-nau-an-o-da-lat%%%%%%1455475732.jpg%%%Trường dạy nấu ăn ở Đà Lạt | Truong day nau an o Da Lat%%%Trường dạy nấu ăn ở Đà Lạt – một chi nhánh mới của trường dạy nghề ẩm thực NetSpace, địa chỉ 51D, Hùng Vương, TP.Đà Lạt đã khai trương%%%trường dạy nấu ăn ở đà lạt,truong day nau an o da lat%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1422863220%%%vi%%%1%%%2%%%2%%%%%%,6,204,', 'vi', 0, NULL, NULL),
(352, 'Trường dạy nấu ăn NetSpace - Tình Thầy Trò thắm thiết', 'update', 'web_header', 710, 1455499052, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values710%%%Trường dạy nấu ăn NetSpace - Tình Thầy Trò thắm thiết%%%truong-day-nau-an-netspace-tinh-thay-tro-tham-thiet%%%%%%%%%Trường dạy nấu ăn NetSpace - Tình Thầy Trò thắm thiết%%%Những khoảng khắc vui tươi giữa Thầy và Trò trường dạy nấu ăn NetSpace tại khu du lịch Bình Quới 3, Bình Thạnh, TPHCM vào ngày 28/04/2014%%%Trường dạy nấu ăn NetSpace - Tình Thầy Trò thắm thiết,truong day nau an netspace tinh thay tro tham %%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1398998280%%%vi%%%1%%%2%%%2%%%%%%,6,204,', 'vi', 0, NULL, NULL),
(353, 'Trường dạy nấu ăn - Cầu nối cho những tâm hồn Nghệ sĩ ', 'update', 'web_header', 680, 1455499121, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values680%%%Trường dạy nấu ăn - Cầu nối cho những tâm hồn Nghệ sĩ %%%truong-day-nau-an-cau-noi-cho-nhung-tam-hon-nghe-si-370%%%%%%%%%Trường dạy nấu ăn - Cầu nối cho những tâm hồn Nghệ sĩ %%%Trường dạy nấu ăn tại Thành phố Hồ Chí Minh được xem là một trong những chiếc cầu nối tốt nhất giúp cho những tâm hồn nghệ sĩ yêu thích cái hay cái đẹp từ những món ăn%%%Trường dạy nấu ăn,Cầu nối cho những tâm hồn Nghệ sĩ %%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1392260400%%%vi%%%1%%%2%%%2%%%%%%,6,204,', 'vi', 0, NULL, NULL),
(354, 'Trường dạy nấu ăn - Cầu nối cho những tâm hồn Nghệ sĩ', 'update', 'web_header', 680, 1455499171, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values680%%%Trường dạy nấu ăn - Cầu nối cho những tâm hồn Nghệ sĩ%%%truong-day-nau-an-cau-noi-cho-nhung-tam-hon-nghe-si-370%%%%%%%%%Trường dạy nấu ăn - Cầu nối cho những tâm hồn Nghệ sĩ%%%Trường dạy nấu ăn tại Thành phố Hồ Chí Minh được xem là một trong những chiếc cầu nối tốt nhất giúp cho những tâm hồn nghệ sĩ yêu thích cái hay cái đẹp từ những món ăn%%%trường dạy nấu ăn,cầu nối cho những tâm hồn Nghệ sĩ%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1392260400%%%vi%%%1%%%2%%%2%%%%%%,6,204,', 'vi', 0, NULL, NULL),
(355, 'Lựa chọn Trường dạy nấu ăn tốt - yếu tố đủ để thành công với nghề bếp', 'update', 'web_header', 643, 1455499352, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values643%%%Lựa chọn Trường dạy nấu ăn tốt - yếu tố đủ để thành công với nghề bếp%%%lua-chon-truong-day-nau-an-tot-yeu-to-du-de-thanh-cong-voi-nghe-bep-332%%%%%%1455475861.jpg%%%Lựa chọn Trường dạy nấu ăn tốt - yếu tố đủ để thành công với nghề bếp%%%Để trở thành một đầu bếp thành công đó không chỉ là câu hỏi của những người yêu nghề bếp mà còn là thách thức đặt ra cho những trường dạy nấu ăn%%%Lựa chọn Trường dạy nấu ăn tốt,yếu tố đủ để thành công với nghề bếp%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1383527280%%%vi%%%1%%%2%%%2%%%%%%,6,204,', 'vi', 0, NULL, NULL),
(356, 'Trường dạy nấu ăn tạo ưu thế riêng cho người học', 'update', 'web_header', 631, 1455499599, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values631%%%Trường dạy nấu ăn tạo ưu thế riêng cho người học%%%truong-day-nau-an-tao-uu-the-rieng-cho-nguoi-hoc-320%%%%%%1381972889.jpg%%%Trường dạy nấu ăn tạo ưu thế riêng cho người học%%%Hiên nay, các đơn vị tuyển dụng lao động rất coi trọng việc tuyển dụng những ứng viên có tay nghề thành thạo. Chính vì vậy, các bạn học viên bước ra từ các trường, cơ sở dạy nghề - là những nơi tạo điều kiện cho các bạn thường xuyên thực hành đang là những ứng viên sáng giá và nhận được sự chào đón %%%Trường dạy nấu ăn, tạo ưu thế riêng cho người học%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1381972320%%%vi%%%1%%%2%%%2%%%%%%,6,204,', 'vi', 0, NULL, NULL),
(357, 'Trường dạy nấu ăn tại Cần Thơ - nơi đào tạo những đầu bếp chuyên nghiệp', 'update', 'web_header', 628, 1455499947, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values628%%%Trường dạy nấu ăn tại Cần Thơ - nơi đào tạo những đầu bếp chuyên nghiệp%%%truong-day-nau-an-tai-can-tho-noi-dao-tao-nhung-dau-bep-chuyen-nghiep-317%%%%%%1422863546.JPG%%%Trường dạy nấu ăn tại Cần Thơ - nơi đào tạo những đầu bếp chuyên nghiệp%%%Trường dạy nấu ăn tại Cần Thơ đã và đang nâng cao chất lượng đào tạo của mình tại đây để xứng tầm với uy tín mà Trường dạy nghề ẩm thực NetSpace đã xây dựng trong nhiều năm qua.%%%Trường dạy nấu ăn tại Cần Thơ,nơi đào tạo những đầu bếp chuyên nghiệp%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1422862980%%%vi%%%1%%%2%%%2%%%%%%,6,204,', 'vi', 0, NULL, NULL),
(358, 'Trở thành đầu bếp chuyên nghiệp với Trường dạy nấu ăn tại Cần Thơ', 'update', 'web_header', 615, 1455500229, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values615%%%Trở thành đầu bếp chuyên nghiệp với Trường dạy nấu ăn tại Cần Thơ%%%tro-thanh-dau-bep-chuyen-nghiep-voi-truong-day-nau-an-tai-can-tho-304%%%%%%1422863593.jpg%%%Trở thành đầu bếp chuyên nghiệp với Trường dạy nấu ăn tại Cần Thơ%%%Trường dạy nghề ẩm thực NetSpace đã mở Trường dạy nấu ăn tại Cần Thơ, nhằm trang bị những kiến thức chuyên môn toàn diện cho các bạn yêu và muốn thành công với nghề bếp tại Cần Thơ nói riêng và khu vực miền Tây Nam Bộ nói chung.%%%trường dạy nấu ăn tại Cần Thơ, truong day nau an tai Can Tho%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1422863040%%%vi%%%1%%%2%%%2%%%%%%,6,204,', 'vi', 0, NULL, NULL),
(359, 'Trường dạy nấu ăn tại Cần Thơ viết nên tương lai của bạn', 'update', 'web_header', 614, 1455500451, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values614%%%Trường dạy nấu ăn tại Cần Thơ viết nên tương lai của bạn%%%truong-day-nau-an-tai-can-tho-viet-nen-tuong-lai-cua-ban-303%%%%%%1422863592.jpg%%%Trường dạy nấu ăn tại Cần Thơ viết nên tương lai của bạn%%%Nhưng từ bây giờ mọi chuyện đã khác, Trường dạy nghề ẩm thực NetSpace đã mang chất lượng đào tạo tốt nhất đến với các bạn trẻ ở Tây Nam bộ bằng việc mở Trường dạy nấu ăn tại Cần Thơ. %%%trường dạy nấu ăn tại Cần Thơ, truong day nau an tai Can Tho%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1422863040%%%vi%%%1%%%2%%%2%%%%%%,6,204,', 'vi', 0, NULL, NULL),
(360, 'Trường dạy nấu ăn tại Cần Thơ đào tạo nghề bếp chất lượng cao', 'update', 'web_header', 610, 1455500639, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values610%%%Trường dạy nấu ăn tại Cần Thơ đào tạo nghề bếp chất lượng cao%%%truong-day-nau-an-tai-can-tho-dao-tao-nghe-bep-chat-luong-cao-301%%%%%%1422863588.jpg%%%Trường dạy nấu ăn tại Cần Thơ đào tạo nghề bếp chất lượng cao%%%Việc mở Trường dạy nấu ăn tại Cần Thơ là một điều cần thiết cho một thành phố hiện đang phát triển mạnh với sự xuất hiện của nhiều nhà hàng, khách sạn lớn, khu du lịch lớn.%%%trường dạy nấu ăn tại Cần Thơ, truong day nau an tai Can Tho%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1422863040%%%vi%%%1%%%2%%%2%%%%%%,6,204,', 'vi', 0, NULL, NULL),
(361, 'Trường dạy nấu ăn tốt - Chọn lựa đúng đắn để thành công', 'update', 'web_header', 609, 1455500887, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values609%%%Trường dạy nấu ăn tốt - Chọn lựa đúng đắn để thành công%%%truong-day-nau-an-tot-chon-lua-dung-dan-de-thanh-cong-298%%%%%%1379641087.jpg%%%Trường dạy nấu ăn tốt - Chọn lựa đúng đắn để thành công%%%Chính vì vậy, việc lựa chọn cho mình một trường dạy nấu ăn có chất lượng tốt sẽ tiết kiệm thời gian cho bạn, để tiến nhanh đến đích trở thành đầu bếp chuyên nghiệp.%%%trường dạy nấu ăn, truong day nau an%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1379640540%%%vi%%%1%%%2%%%2%%%%%%,6,204,', 'vi', 0, NULL, NULL),
(362, 'Trường dạy nấu ăn tại Cần Thơ - Cam kết chất lượng đào tạo tốt nhất', 'update', 'web_header', 606, 1455501054, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values606%%%Trường dạy nấu ăn tại Cần Thơ - Cam kết chất lượng đào tạo tốt nhất%%%truong-day-nau-an-tai-can-tho-cam-ket-chat-luong-dao-tao-tot-nhat-295%%%%%%1422863584.jpg%%%Trường dạy nấu ăn tại Cần Thơ - Cam kết chất lượng đào tạo tốt nhất%%%Trường dạy nấu ăn tại Cần Thơ mang lại chất lượng đào tạo nghề bếp tốt nhất đến với các bạn ở miền Tây Nam Bộ%%%trường dạy nấu ăn tại Cần Thơ, truong day nau an tai can tho%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1422863040%%%vi%%%1%%%2%%%2%%%%%%,6,204,', 'vi', 0, NULL, NULL),
(363, 'Trường dạy nấu ăn chuyên nghiệp chắp cánh cho những đầu bếp tương lai', 'update', 'web_header', 592, 1455501276, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values592%%%Trường dạy nấu ăn chuyên nghiệp chắp cánh cho những đầu bếp tương lai%%%truong-day-nau-an-chuyen-nghiep-chap-canh-cho-nhung-dau-bep-tuong-lai-289%%%%%%1381285850.JPG%%%Trường dạy nấu ăn chuyên nghiệp chắp cánh cho những đầu bếp tương lai%%%Trường dạy nghề ẩm thực NetSpace – trường dạy nấu ăn chuyên nghiệp luôn cố gắng định hướng nghề nghiệp, tránh sai lầm khi chọn ngành nghề và luôn nỗ lực để mang lại chất lượng đào tạo tốt nhất cho học viên.%%%Trường dạy nấu ăn chuyên nghiệp,chắp cánh cho những đầu bếp tương lai%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1381285320%%%vi%%%1%%%2%%%2%%%%%%,6,204,', 'vi', 0, NULL, NULL),
(364, 'Trường dạy nấu ăn tại Đà Nẵng', 'update', 'web_header', 557, 1455501386, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values557%%%Trường dạy nấu ăn tại Đà Nẵng%%%truong-day-nau-an-tai-da-nang-248%%%%%%1372989675.jpg%%%Trường dạy nấu ăn tại Đà Nẵng%%%Trường dạy nấu ăn tại Đà Nẵng chuyên nghiệp và uy tín là Trường NetSpace- một trong những lựa chọn sáng suốt của các bạn trẻ mong muốn theo nghề bếp%%%trường dạy nấu ăn tại Đà Nẵng, truong day nau an tai da nang%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1372989180%%%vi%%%1%%%2%%%2%%%%%%,6,204,', 'vi', 0, NULL, NULL),
(365, 'Dạy nấu ăn ở Đà Nẵng - Cơ hội học tập mới', 'update', 'web_header', 552, 1455501561, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values552%%%Dạy nấu ăn ở Đà Nẵng - Cơ hội học tập mới%%%day-nau-an-o-da-nang-co-hoi-hoc-tap-moi-243%%%%%%1372669810.jp%%%Dạy nấu ăn ở Đà Nẵng - Cơ hội học tập mới%%%Dạy nấu ăn ở Đà Nẵng của Trường dạy nghề ẩm Thực Netspace tại Quận Hải Châu sẽ tạo ra môi trường học tập tốt cho các bạn trẻ. Đây sẽ là lò dạy nấu ăn ở Đà Nẵng mang tính chuyên nghiệp, chất lượng cao.%%%Dạy nấu ăn ở Đà Nẵng,Cơ hội học tập mới%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1372669320%%%vi%%%1%%%2%%%2%%%%%%,6,204,', 'vi', 0, NULL, NULL),
(366, 'Trung tâm dạy nấu ăn ở Saigon', 'update', 'web_header', 535, 1455501687, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values535%%%Trung tâm dạy nấu ăn ở Saigon%%%Trung-Tam-Day-Nau-An-O-Saigon-216%%%%%%1368378473.jpg%%%Trung tâm dạy nấu ăn ở Saigon%%%Để tìm một trung tâm dạy nấu ăn tốt nhất ở Saigon, thật là khó. Bởi vì, hiện nay có rất nhiều Trung tâm dạy nấu ăn ở Saigon, thế nhưng để Bạn tìm một nơi để học ra nghề hoặc để làm Chủ một quán ăn, nhà hàng lại rất khó.%%%Trung tâm dạy nấu ăn ở Saigon,trung tam day nau an o saigon%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1368378000%%%vi%%%1%%%2%%%2%%%%%%,6,204,', 'vi', 0, NULL, NULL),
(367, 'Lớp dạy nấu ăn tại tphcm', 'update', 'web_header', 525, 1455501895, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values525%%%Lớp dạy nấu ăn tại tphcm%%%Lop-Day-Nau-An-Tai-Tphcm-208%%%%%%%%%Lớp dạy nấu ăn tại tphcm%%%Lớp dạy nấu ăn tại TpHCM đang được sự quan tâm của đông đảo giới trẻ. Bởi vì, với mức thu nhập và cơ hội việc làm tốt của nghề bếp thì việc đến một lớp dạy nấu ăn tại TpHCM đang là nhu cầu thiết yếu của các bạn trẻ%%%Lớp dạy nấu ăn tại tphcm,Lop Day Nau An Tai Tphcm%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1367686800%%%vi%%%1%%%2%%%2%%%%%%,6,204,', 'vi', 0, NULL, NULL),
(368, 'Tìm nơi dạy nấu ăn', 'update', 'web_header', 524, 1455501988, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values524%%%Tìm nơi dạy nấu ăn%%%Tim-Noi-Day-Nau-An-209%%%%%%1367773662.jpg%%%Tìm nơi dạy nấu ăn%%%Tìm nơi dạy nấu ăn tốt nhất? Bạn Nguyễn Hoàng Phương hiện là Học viên lớp bếp chính bếp Việt nhà hàng đã ghi lại những cảm nhận bằng những dòng lưu bút mà tôi thấy rất xúc động và thấy rất tự hào về ngôi trường tôi đang theo học.%%%Tìm nơi dạy nấu ăn,Tim Noi Day Nau An%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1367773200%%%vi%%%1%%%2%%%2%%%%%%,6,204,', 'vi', 0, NULL, NULL),
(369, 'Nơi nào dạy nấu ăn tốt', 'update', 'web_header', 522, 1455502114, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values522%%%Nơi nào dạy nấu ăn tốt%%%Noi-Nao-Day-Nau-An-Tot-206%%%%%%1367600860.jpg%%%Nơi nào dạy nấu ăn tốt%%%Nơi nào dạy nấu ăn tốt? Chị Phạm Thị Thủy – ngụ tại quận Tân Bình đang rất hứng thú kể chuyện về những món ăn chị đã học tại Trường NetSpace.%%%Nơi nào dạy nấu ăn tốt,Noi Nao Day Nau An Tot%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1367600400%%%vi%%%1%%%2%%%2%%%%%%,6,204,', 'vi', 0, NULL, NULL),
(370, 'Nơi nào dạy nấu ăn tốt', 'update', 'web_header', 522, 1455502141, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values522%%%Nơi nào dạy nấu ăn tốt%%%Noi-Nao-Day-Nau-An-Tot-206%%%%%%1367600860.jpg%%%Nơi nào dạy nấu ăn tốt | Noi nao day nau an tot%%%Nơi nào dạy nấu ăn tốt? Chị Phạm Thị Thủy – ngụ tại quận Tân Bình đang rất hứng thú kể chuyện về những món ăn chị đã học tại Trường NetSpace.%%%nơi nào dạy nấu ăn tốt,noi nao day nau an tot%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1367600400%%%vi%%%1%%%2%%%2%%%%%%,6,204,', 'vi', 0, NULL, NULL),
(371, 'Trường nào dạy nấu ăn tốt nhất ở Tp.HCM', 'update', 'web_header', 513, 1455502534, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values513%%%Trường nào dạy nấu ăn tốt nhất ở Tp.HCM%%%Truong-Nao-Day-Nau-An-Tot-Nhat-O-Tphcm-199%%%%%%1424624851.jpg%%%Trường nào dạy nấu ăn tốt nhất ở Tp.HCM%%%Trường nào dạy nấu ăn tốt nhất ở thành phố Hồ Chí Minh? Bạn nên tham khảo kỹ  những Trường dạy nấu ăn tốt nhất là những trường dạy nghề nấu ăn đảm bảo các yêu cầu dạy nghề cho người học và đạt được những mục tiêu nghề nghiệp của Bạn%%%Trường nào dạy nấu ăn tốt nhất ở Tp.HCM,Truong Nao Day Nau An Tot Nhat O Tphcm%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1424624400%%%vi%%%1%%%2%%%2%%%%%%,6,204,', 'vi', 0, NULL, NULL),
(372, 'Trường dạy nấu ăn tốt tại Tphcm', 'update', 'web_header', 496, 1455502702, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values496%%%Trường dạy nấu ăn tốt tại Tphcm%%%Truong-Day-Nau-An-Tot-Nhat-Tai-Tphcm-179%%%%%%1425224234.jpg%%%Trường dạy nấu ăn tốt tại Tphcm%%%Để tìm một địa chỉ học nấu ăn, trường dạy nấu ăn tốt nhất tại Tphcm là điều rất khó khăn. Trường Dạy Nghề Ẩm Thực NetSpace là địa chỉ học nấu ăn tốt hiện nay tại Tphcm%%%Trường dạy nấu ăn tốt tại Tphcm,truong day nau an%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1425223800%%%vi%%%1%%%2%%%2%%%%%%,6,204,', 'vi', 0, NULL, NULL),
(373, 'Trường dạy nấu ăn tốt tại TpHCM', 'update', 'web_header', 496, 1455502737, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values496%%%Trường dạy nấu ăn tốt tại TpHCM%%%Truong-Day-Nau-An-Tot-Nhat-Tai-Tphcm-179%%%%%%1425224234.jpg%%%Trường dạy nấu ăn tốt tại TpHCM | Truong day nau an%%%Để tìm một địa chỉ học nấu ăn, trường dạy nấu ăn tốt nhất tại Tphcm là điều rất khó khăn. Trường Dạy Nghề Ẩm Thực NetSpace là địa chỉ học nấu ăn tốt hiện nay tại Tphcm%%%trường dạy nấu ăn tốt tại tphcm,truong day nau an,tphcm%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1425223800%%%vi%%%1%%%2%%%2%%%%%%,6,204,', 'vi', 0, NULL, NULL),
(374, 'Dạy nấu ăn ở các trường nghề tại Úc', 'update', 'web_header', 469, 1455502901, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values469%%%Dạy nấu ăn ở các trường nghề tại Úc%%%Day-Nau-An-O-Cac-Truong-Nghe-Tai-Uc-151%%%%%%1353604007.jpg%%%Dạy nấu ăn ở các trường nghề tại Úc%%%Các trường dạy nghề của Úc đều phải đăng ký các Chương trình học, môn học theo những mã số dạy nghề%%%Dạy nấu ăn ở các trường nghề tại Úc%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1353603600%%%vi%%%1%%%2%%%2%%%%%%,6,204,', 'vi', 0, NULL, NULL),
(375, 'Trường Dạy Nghề Ẩm thực NetSpace - Địa chỉ học nấu ăn tốt nhất', 'update', 'web_header', 489, 1455503095, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values489%%%Trường Dạy Nghề Ẩm thực NetSpace - Địa chỉ học nấu ăn tốt nhất%%%Truong-Day-Nghe-Am-Thuc-Netspace-Dia-Chi-Hoc-Nau-An-Tot-Nhat-172%%%%%%%%%Địa chỉ học nấu ăn tốt nhất | Dia chi hoc nau an%%%Hiện nay, tại Thành phố Hồ Chí Minh, để tìm một địa chỉ học nấu ăn tốt cho Bạn là điều rất khó khăn.%%%Trường Dạy Nghề Ẩm thực NetSpace,địa chỉ học nấu ăn tốt nhất,dia chi hoc nau an%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1361725200%%%vi%%%1%%%2%%%2%%%%%%,6,204,', 'vi', 0, NULL, NULL),
(376, 'Trường dạy nghề ẩm thực NetSpace - Địa chỉ học nấu ăn tốt nhất', 'update', 'web_header', 489, 1455503270, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values489%%%Trường dạy nghề ẩm thực NetSpace - Địa chỉ học nấu ăn tốt nhất%%%Truong-Day-Nghe-Am-Thuc-Netspace-Dia-Chi-Hoc-Nau-An-Tot-Nhat-172%%%%%%%%%Địa chỉ học nấu ăn tốt nhất | Dia chi hoc nau an%%%Hiện nay, tại Thành phố Hồ Chí Minh, để tìm một địa chỉ học nấu ăn tốt cho Bạn là điều rất khó khăn.%%%trường dạy nghề ẩm thực netspace,địa chỉ học nấu ăn tốt nhất,dia chi hoc nau an tot%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1361725200%%%vi%%%1%%%2%%%2%%%%%%,6,204,', 'vi', 0, NULL, NULL),
(377, 'Trường dạy nghề ẩm thực NetSpace - Địa chỉ học nấu ăn tốt nhất', 'update', 'web_header', 489, 1455503321, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values489%%%Trường dạy nghề ẩm thực NetSpace - Địa chỉ học nấu ăn tốt nhất%%%Truong-Day-Nghe-Am-Thuc-Netspace-Dia-Chi-Hoc-Nau-An-Tot-Nhat-172%%%%%%1455503227.jpg%%%Địa chỉ học nấu ăn tốt nhất | Dia chi hoc nau an%%%Hiện nay, tại Thành phố Hồ Chí Minh, để tìm một địa chỉ học nấu ăn tốt cho Bạn là điều rất khó khăn.%%%trường dạy nghề ẩm thực netspace,địa chỉ học nấu ăn tốt nhất,dia chi hoc nau an tot%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1361725200%%%vi%%%1%%%2%%%2%%%%%%,6,204,', 'vi', 0, NULL, NULL),
(378, 'Học nấu ăn - Việc của đàn ông?', 'update', 'web_header', 464, 1455503560, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values464%%%Học nấu ăn - Việc của đàn ông?%%%Hoc-Nau-An-Viec-Cua-Dan-Ong-148%%%%%%%%%Học nấu ăn - Việc của đàn ông?%%%Chuyện các “Chàng trai” đi học nấu ăn ngày càng phổ biến. Các lớp Nấu ăn tại Trường Ẩm thực NetSpace có số nam sinh chiếm sỉ số áp đảo so với nữ sinh.%%%Học nấu ăn,Việc của đàn ông,hoc nau an,viec cua dan ong%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1353315360%%%vi%%%1%%%2%%%2%%%%%%,6,226,', 'vi', 0, NULL, NULL),
(379, 'Học nấu ăn - Việc của đàn ông?', 'update', 'web_header', 464, 1455503574, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values464%%%Học nấu ăn - Việc của đàn ông?%%%Hoc-Nau-An-Viec-Cua-Dan-Ong-148%%%%%%1455503401.jpg%%%Học nấu ăn - Việc của đàn ông?%%%Chuyện các “Chàng trai” đi học nấu ăn ngày càng phổ biến. Các lớp Nấu ăn tại Trường Ẩm thực NetSpace có số nam sinh chiếm sỉ số áp đảo so với nữ sinh.%%%Học nấu ăn,Việc của đàn ông,hoc nau an,viec cua dan ong%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1353315360%%%vi%%%1%%%2%%%2%%%%%%,6,226,', 'vi', 0, NULL, NULL);
INSERT INTO `web_logs` (`id`, `name`, `action`, `_table`, `table_id`, `datetime`, `username`, `content`, `lang`, `status`, `date_restore`, `user_restore`) VALUES
(380, 'Học nấu ăn: Tự làm snack khoai tây ăn vặt', 'update', 'web_header', 924, 1455503674, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values924%%%Học nấu ăn: Tự làm snack khoai tây ăn vặt%%%hoc-nau-an-tu-lam-snack-khoai-tay-an-vat%%%%%%862.jpg%%%Học nấu ăn: Tự làm snack khoai tây ăn vặt%%%Cùng Học nấu ăn Netspace tự làm snack khoai tây lát mỏng ngon không thua ngoài tiệm để ăn vặt nhé.%%%học nấu ăn, tự làm snack khoai tây ăn vặt,hoc nau an, tu lam snack khoai tay an vat%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%0%%%vi%%%1%%%2%%%2%%%%%%,6,226,', 'vi', 0, NULL, NULL),
(381, 'Vào bếp học nấu ăn với teen Nhật Bản', 'update', 'web_header', 494, 1455503723, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values494%%%Vào bếp học nấu ăn với teen Nhật Bản%%%Vao-Bep-Hoc-Nau-An-Voi-Teen-Nhat-Ban-177%%%%%%%%%Vào bếp học nấu ăn với teen Nhật Bản%%%Điều quan trọng nhất khi học nấu ăn không phải là nấu ăn mà là biết được thực phẩm từ đâu đến%%%Vào bếp học nấu ăn với teen Nhật Bản,vao bep hoc nau an voi teen nhat ban%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1361898000%%%vi%%%1%%%2%%%2%%%%%%,6,226,', 'vi', 0, NULL, NULL),
(382, 'Học nấu ăn gia đình - Sự cần thiết cho mỗi gia đình', 'update', 'web_header', 544, 1455503778, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values544%%%Học nấu ăn gia đình - Sự cần thiết cho mỗi gia đình%%%hoc-nau-an-gia-dinh-su-can-thiet-cho-moi-gia-dinh-235%%%%%%1372048562.%%%Học nấu ăn gia đình - Sự cần thiết cho mỗi gia đình%%%bữa cơm gia đình truyền thống Việt Nam gần như bị mất đi. Nguyên nhân một phần do sự phát triển nhanh của nền kinh tế mang tính công nghiệp, một phần do khả năng nấu nướng của Người nội trợ%%%Học nấu ăn gia đình,Sự cần thiết cho mỗi gia đình,hoc nau an gia dinh%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1372048080%%%vi%%%1%%%2%%%2%%%%%%,6,226,', 'vi', 0, NULL, NULL),
(383, '6 điều bạn cần biết khi bắt đầu học nấu ăn', 'update', 'web_header', 495, 1455503814, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values495%%%6 điều bạn cần biết khi bắt đầu học nấu ăn%%%6-Dieu-Ban-Can-Biet-Khi-Bat-Dau-Hoc-Nau-An-178%%%%%%%%%6 điều bạn cần biết khi bắt đầu học nấu ăn%%%Nắm được những nguyên tắc cơ bản này, việc học nấu ăn của bạn sẽ trở nên dễ dàng, suôn sẻ và tràn đầy hứng thú%%%6 điều bạn cần biết khi bắt đầu học nấu ăn,6 dieu ban can biet khi bat dau hoc nau an%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1361984400%%%vi%%%1%%%2%%%2%%%%%%,6,226,', 'vi', 0, NULL, NULL),
(384, 'Học nấu ăn thử thách khó xơi với con gái', 'update', 'web_header', 493, 1455503845, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values493%%%Học nấu ăn thử thách khó xơi với con gái%%%Hoc-Nau-An-Thu-Thach-Kho-Xoi-Voi-Con-Gai-176%%%%%%%%%Học nấu ăn thử thách khó xơi với con gái%%%Con gái không biết nấu ăn sẽ bị mất điểm trầm trọng%%%Học nấu ăn thử thách khó xơi với con gái,hoc nau an thu thach kho xoi voi con gai%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1361898000%%%vi%%%1%%%2%%%2%%%%%%,6,226,', 'vi', 0, NULL, NULL),
(385, 'Học nấu ăn thử thách khó xơi với con gái', 'update', 'web_header', 493, 1455503863, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values493%%%Học nấu ăn thử thách khó xơi với con gái%%%Hoc-Nau-An-Thu-Thach-Kho-Xoi-Voi-Con-Gai-176%%%%%%1455503842.jpg%%%Học nấu ăn thử thách khó xơi với con gái%%%Con gái không biết nấu ăn sẽ bị mất điểm trầm trọng%%%Học nấu ăn thử thách khó xơi với con gái,hoc nau an thu thach kho xoi voi con gai%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1361898000%%%vi%%%1%%%2%%%2%%%%%%,6,226,', 'vi', 0, NULL, NULL),
(386, 'Tran anh kiet', 'create', 'web_contact', 4324, 1455506699, 'customer', '', 'vi', 0, NULL, NULL),
(387, 'Cách làm kem tươi', 'create', 'web_header', 1430, 1455511186, 'quocy', '', 'vi', 0, NULL, NULL),
(388, 'Cách làm kem tươi', 'update', 'web_header', 1430, 1455511632, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1430%%%Cách làm kem tươi%%%cach-lam-kem-tuoi%%%%%%%%%Cách làm kem tươi%%%Cách làm kem tươi ngon tại nhà là phương pháp làm rất đơn giản, Bạn sẽ có những ly kem ngon theo ý muốn của mình.%%%cách làm kem tươi, cach lam kem tuoi%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1455510780%%%vi%%%1%%%2%%%2', 'vi', 0, NULL, NULL),
(389, 'Cách làm kem tươi', 'update', 'web_header', 1430, 1455511777, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1430%%%Cách làm kem tươi%%%cach-lam-kem-tuoi%%%%%%1455511294.jpg%%%Cách làm kem tươi%%%Cách làm kem tươi ngon tại nhà là phương pháp làm rất đơn giản, Bạn sẽ có những ly kem ngon theo ý muốn của mình.%%%cách làm kem tươi, cach lam kem tuoi%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1455510780%%%vi%%%1%%%2%%%2', 'vi', 0, NULL, NULL),
(390, 'Cách làm kem tươi', 'update', 'web_header', 1430, 1455511825, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1430%%%Cách làm kem tươi%%%cach-lam-kem-tuoi%%%%%%1455511294.jpg%%%Cách làm kem tươi%%%Cách làm kem tươi ngon tại nhà là phương pháp làm rất đơn giản, Bạn sẽ có những ly kem ngon theo ý muốn của mình.%%%cách làm kem tươi, cach lam kem tuoi%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1455510780%%%vi%%%1%%%2%%%2%%%%%%,356,', 'vi', 0, NULL, NULL),
(391, 'Cách làm kem tươi', 'update', 'web_header', 1430, 1455511841, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1430%%%Cách làm kem tươi%%%cach-lam-kem-tuoi%%%%%%1455511294.jpg%%%Cách làm kem tươi%%%Cách làm kem tươi ngon tại nhà là phương pháp làm rất đơn giản, Bạn sẽ có những ly kem ngon theo ý muốn của mình.%%%cách làm kem tươi, cach lam kem tuoi%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1455510780%%%vi%%%1%%%2%%%2%%%%%%,356,', 'vi', 0, NULL, NULL),
(392, 'Cách làm kem tươi', 'update', 'web_header', 1430, 1455511878, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1430%%%Cách làm kem tươi%%%cach-lam-kem-tuoi%%%%%%1455511294.jpg%%%Cách làm kem tươi%%%Cách làm kem tươi ngon tại nhà là phương pháp làm rất đơn giản, Bạn sẽ có những ly kem ngon theo ý muốn của mình.%%%cách làm kem tươi, cach lam kem tuoi%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1455510780%%%vi%%%1%%%2%%%2%%%%%%,356,', 'vi', 0, NULL, NULL),
(393, 'Cách làm kem chuối', 'create', 'web_header', 1431, 1455512018, 'quocy', '', 'vi', 0, NULL, NULL),
(394, 'Cách làm kem chuối', 'update', 'web_header', 1431, 1455512718, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1431%%%Cách làm kem chuối%%%cach-lam-kem-chuoi%%%%%%%%%Cách làm kem chuối%%%Cách làm kem chuối thơm ngon ngay tại nhà là điều hoàn toàn Bạn có thể làm được theo hướng dẫn của Chúng tôi%%%cách làm kem chuối, cach lam kem chuoi%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1455511860%%%vi%%%1%%%2%%%2%%%%%%,356,', 'vi', 0, NULL, NULL),
(395, 'Trường nào dạy nấu ăn tốt nhất ở Tp.HCM', 'update', 'web_header', 513, 1455513691, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values513%%%Trường nào dạy nấu ăn tốt nhất ở Tp.HCM%%%Truong-Nao-Day-Nau-An-Tot-Nhat-O-Tphcm-199%%%%%%1424624851.jpg%%%Trường nào dạy nấu ăn tốt nhất ở Tp.HCM%%%Trường nào dạy nấu ăn tốt nhất ở thành phố Hồ Chí Minh? Bạn nên tham khảo kỹ những Trường dạy nấu ăn tốt nhất là những trường dạy nghề nấu ăn..%%%trường dạy nấu ăn tốt nhất,truong day nau an tot,tphcm%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1424624400%%%vi%%%1%%%2%%%2%%%%%%,6,204,', 'vi', 0, NULL, NULL),
(396, 'Trường nào dạy nấu ăn tốt nhất ở Tp.HCM', 'update', 'web_header', 513, 1455515062, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values513%%%Trường nào dạy nấu ăn tốt nhất ở Tp.HCM%%%Truong-Nao-Day-Nau-An-Tot-Nhat-O-Tphcm-199%%%%%%1424624851.jpg%%%Trường nào dạy nấu ăn tốt nhất ở Tp.HCM%%%Trường nào dạy nấu ăn tốt nhất ở thành phố Hồ Chí Minh? Bạn nên tham khảo kỹ những Trường dạy nấu ăn tốt nhất là những trường dạy nghề nấu ăn có đủ các điều kiện về cơ sở vật chất, đội ngũ giảng viên...%%%trường nào dạy nấu ăn tốt nhất,truong nao day nau an tot nhat%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1424624400%%%vi%%%1%%%2%%%2%%%%%%,6,204,', 'vi', 0, NULL, NULL),
(397, 'Trường nào dạy nấu ăn tốt nhất ở Tp.HCM', 'update', 'web_header', 513, 1455515098, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values513%%%Trường nào dạy nấu ăn tốt nhất ở Tp.HCM%%%Truong-Nao-Day-Nau-An-Tot-Nhat-O-Tphcm-199%%%%%%1424624851.jpg%%%Trường nào dạy nấu ăn tốt nhất ở Tp.HCM%%%Trường nào dạy nấu ăn tốt nhất ở thành phố Hồ Chí Minh? Bạn nên tham khảo kỹ những Trường dạy nấu ăn tốt nhất là những trường dạy nghề nấu ăn có đủ các điều kiện về cơ sở vật chất, đội ngũ giảng viên...%%%trường nào dạy nấu ăn tốt nhất,truong nao day nau an tot nhat%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1424624400%%%vi%%%1%%%2%%%2%%%%%%,6,204,', 'vi', 0, NULL, NULL),
(398, 'Học Bartender biểu diễn - Bartender Flair', 'update', 'web_header', 744, 1455515339, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values744%%%Học Bartender biểu diễn - Bartender Flair%%%hoc-bartender-bieu-dien-bartender-flair%%%%%%1455395547.jpg%%%Học Bartender biểu diễn - Bartender Flair%%%Bartender là một nghề và đó là nhân viên làm việc trong quầy Bar - có trong các nhà hàng, vũ trường và các club%%%học bartender biểu diễn,bartender flair,hoc bartender bieu dien%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1432696560%%%vi%%%1%%%2%%%3%%%%%%,210,', 'vi', 0, NULL, NULL),
(399, 'Học nấu bún bò Huế - Bí quyết nấu bùn bò Huế ngon', 'update', 'web_header', 1046, 1455515418, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1046%%%Học nấu bún bò Huế - Bí quyết nấu bùn bò Huế ngon%%%hoc-nau-bun-bo-hue%%%%%%1454638431.jpg%%%Học nấu bún bò Huế - Bí quyết nấu bùn bò Huế ngon | Hoc bun bo Hue%%%Học nấu bún bò Huế ngon để có thể kinh doanh, mở quán là việc không dễ dàng, Bạn cần được học với những bậc Thầy nấu ăn chuyên món bún bò Huế%%%học nấu bún bò huế,bí quyết nấu bùn bò huế,bún bò huế,hoc nau bun bo hue,bun bo hue%%%%%%0%%%%%%%%%%%%%%%%%%3%%%%%%1432363620%%%vi%%%1%%%2%%%3%%%%%%,32,', 'vi', 0, NULL, NULL),
(400, 'Học nấu Phở - Bí quyết nấu Phở ngon', 'update', 'web_header', 940, 1455515496, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values940%%%Học nấu Phở - Bí quyết nấu Phở ngon%%%hoc-nau-pho%%%%%%1432376978.jpg%%%Học nấu Phở - Bí quyết nấu Phở ngon | Hoc nau pho%%%Học nấu Phở ngon cần có bí quyết riêng, bạn cần tìm những Bậc Thầy nấu ăn về món phở. Quán phở là mô hình kinh doanh rất tốt tại Việt Nam và tại các nước trên thế giới%%%học nấu phở,bí quyết nấu phở,hoc nau pho,bi quyet nau pho,nau pho%%%%%%0%%%%%%%%%%%%%%%%%%3%%%%%%1432376100%%%vi%%%1%%%2%%%3%%%%%%,32,', 'vi', 0, NULL, NULL),
(401, 'Học bí quyết làm giò chả các loại', 'update', 'web_header', 1428, 1455515605, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1428%%%Học bí quyết làm giò chả các loại%%%hoc-lam-gio-lua%%%%%%1454891512.jpg%%%Học bí quyết làm giò chả các loại%%%Dạy bí quyết làm chả lụa, làm chả bò, làm giò thủ, làm chà bông, làm bò viên, làm giò sống, làm jambon%%%học làm giò lụa,hoc lam gio lua, hoc lam gio cha, học làm giò chả%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1454891400%%%vi%%%1%%%2%%%3%%%%%%,32,', 'vi', 0, NULL, NULL),
(402, 'Món Huế', 'update', 'web_header', 502, 1455515716, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values502%%%Món Huế%%%mon-hue%%%%%%1357532120.jpg%%%Học làm món Huế | Hoc lam mon Hue%%%Xứ Huế được mệnh danh là vùng đất Kinh đô trước đây của Việt Nam với những câu hò, bài hát trữ tình mang đậm bản sắc dân tộc.%%%dạy món huế,day mon hue,hoc lam mon hue,học làm món huế%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1357531680%%%vi%%%1%%%2%%%3%%%%%%,38,', 'vi', 0, NULL, NULL),
(403, 'Nguyễn Thị Bích Thuỷ', 'create', 'web_contact', 4325, 1455522790, 'customer', '', 'vi', 0, NULL, NULL),
(404, 'Cách làm kem tươi', 'update', 'web_header', 1430, 1455566642, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1430%%%Cách làm kem tươi%%%cach-lam-kem-tuoi%%%%%%1455511294.jpg%%%Cách làm kem tươi%%%Cách làm kem tươi ngon tại nhà là phương pháp làm rất đơn giản, Bạn sẽ có những ly kem ngon theo ý muốn của mình.%%%cách làm kem tươi, cach lam kem tuoi%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1455510780%%%vi%%%1%%%2%%%2%%%%%%,356,', 'vi', 0, NULL, NULL),
(405, 'Cách làm kem tươi', 'update', 'web_header', 1430, 1455566684, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1430%%%Cách làm kem tươi%%%cach-lam-kem-tuoi%%%%%%1455511294.jpg%%%Cách làm kem tươi%%%Cách làm kem tươi ngon tại nhà là phương pháp làm rất đơn giản, Bạn sẽ có những ly kem ngon theo ý muốn của mình.%%%cách làm kem tươi,cach lam kem tuoi%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1455510780%%%vi%%%1%%%2%%%2%%%%%%,1398,6,356,', 'vi', 0, NULL, NULL),
(406, 'Cách làm kem chuối', 'update', 'web_header', 1431, 1455566799, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1431%%%Cách làm kem chuối%%%cach-lam-kem-chuoi%%%%%%1455512020.jpg%%%Cách làm kem chuối%%%Cách làm kem chuối thơm ngon ngay tại nhà là điều hoàn toàn Bạn có thể làm được theo hướng dẫn của Chúng tôi%%%cách làm kem chuối, cach lam kem chuoi%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1455511860%%%vi%%%1%%%2%%%2%%%%%%,356,', 'vi', 0, NULL, NULL),
(407, 'Cách làm kem chuối', 'update', 'web_header', 1431, 1455566817, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1431%%%Cách làm kem chuối%%%cach-lam-kem-chuoi%%%%%%1455512020.jpg%%%Cách làm kem chuối | Cach lam kem chuoi%%%Cách làm kem chuối thơm ngon ngay tại nhà là điều hoàn toàn Bạn có thể làm được theo hướng dẫn của Chúng tôi%%%cách làm kem chuối, cach lam kem chuoi%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1455511860%%%vi%%%1%%%2%%%2%%%%%%,356,', 'vi', 0, NULL, NULL),
(408, 'Cách làm kem chuối', 'update', 'web_header', 1431, 1455566849, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1431%%%Cách làm kem chuối%%%cach-lam-kem-chuoi%%%%%%1455512020.jpg%%%Cách làm kem chuối | Cach lam kem chuoi%%%Cách làm kem chuối thơm ngon ngay tại nhà là điều hoàn toàn Bạn có thể làm được theo hướng dẫn của Chúng tôi%%%cách làm kem chuối, cach lam kem chuoi%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1455511860%%%vi%%%1%%%2%%%2%%%%%%,1398,6,356,', 'vi', 0, NULL, NULL),
(409, 'Các món ngon xứ Huế', 'update', 'web_header', 502, 1455567031, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values502%%%Các món ngon xứ Huế%%%mon-hue%%%%%%1357532120.jpg%%%Các món ngon xứ Huế%%%Xứ Huế được mệnh danh là vùng đất Kinh đô trước đây của Việt Nam với những câu hò, bài hát trữ tình mang đậm bản sắc dân tộc.%%%dạy món huế,day mon hue,hoc lam mon hue,học làm món huế%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1357531680%%%vi%%%1%%%2%%%3%%%%%%,38,', 'vi', 0, NULL, NULL),
(410, 'Hoàng Minh Tuấn', 'delete', 'web_contact', 4304, 1455581770, 'admin', 'id,name,email,phone,address,message,date_birthday,branch,course_name,datetime,lang,status,type,user,header_idfields%%%values4304%%%Hoàng Minh Tuấn%%%nhoxbabilon@yahoo.com.vn%%%01696330149%%%Gia Nghĩa Đăk Nông%%%%%%%%%2%%%%%%1455253735%%%vi%%%0%%%2%%%%%%474', 'vi', 0, NULL, NULL),
(411, 'mai thị phương', 'delete', 'web_contact', 4291, 1455581792, 'admin', 'id,name,email,phone,address,message,date_birthday,branch,course_name,datetime,lang,status,type,user,header_idfields%%%values4291%%%mai thị phương%%%timbuon84@gmail.com%%%01699632664%%%kontum%%%%%%%%%2%%%%%%1454995838%%%vi%%%0%%%2%%%%%%619', 'vi', 0, NULL, NULL),
(412, 'mai thị phương', 'delete', 'web_contact', 4292, 1455581807, 'admin', 'id,name,email,phone,address,message,date_birthday,branch,course_name,datetime,lang,status,type,user,header_idfields%%%values4292%%%mai thị phương%%%timbuon84@gmail.com%%%01699632664%%%kon tum%%%%%%%%%2%%%%%%1454996254%%%vi%%%0%%%2%%%%%%1007', 'vi', 0, NULL, NULL),
(413, 'Luong thi thuy tien', 'update', 'web_contact', 4315, 1455581844, 'admin', 'id,name,email,phone,address,message,date_birthday,branch,course_name,datetime,lang,status,type,user,header_idfields%%%values4315%%%Luong thi thuy tien%%%Luongthithuytien@gmail.com%%%0903369772%%%33 truong cong dinh, p14, q tan binh%%%%%%%%%2%%%%%%1455358149%%%vi%%%0%%%2%%%0%%%619', 'vi', 0, NULL, NULL),
(414, 'Luong thi thuy tien', 'update', 'web_contact', 4315, 1455581879, 'admin', 'id,name,email,phone,address,message,date_birthday,branch,course_name,datetime,lang,status,type,user,header_idfields%%%values4315%%%Luong thi thuy tien%%%Luongthithuytien@gmail.com%%%0903369772%%%33 truong cong dinh, p14, q tan binh%%%%%%%%%2%%%%%%1455358149%%%vi%%%0%%%2%%%0%%%619', 'vi', 0, NULL, NULL),
(415, 'Luong thi thuy tien', 'delete', 'web_contact', 4316, 1455581898, 'admin', 'id,name,email,phone,address,message,date_birthday,branch,course_name,datetime,lang,status,type,user,header_idfields%%%values4316%%%Luong thi thuy tien%%%Luongthithuytien@gmail.com%%%0903369772%%%33 truong cong dinh, p14, qbtan binh%%%%%%%%%2%%%%%%1455358149%%%vi%%%0%%%2%%%0%%%624', 'vi', 0, NULL, NULL),
(416, 'phạm thị hiền', 'create', 'web_contact', 4326, 1455586286, 'customer', '', 'vi', 0, NULL, NULL),
(417, 'Đoàn Sương', 'create', 'web_contact', 4327, 1455602485, 'customer', '', 'vi', 0, NULL, NULL),
(418, 'Phạm văn Duy', 'create', 'web_contact', 4328, 1455608199, 'customer', '', 'vi', 0, NULL, NULL),
(419, 'Lương Đức Chính', 'create', 'web_users', 60, 1455646795, 'admin', '', 'vi', 0, NULL, NULL),
(420, '', 'create', 'web_users_role', 137, 1455646823, 'admin', '', 'vi', 0, NULL, NULL),
(421, '', 'create', 'web_users_role', 138, 1455646823, 'admin', '', 'vi', 0, NULL, NULL),
(422, '', 'create', 'web_users_role', 139, 1455646823, 'admin', '', 'vi', 0, NULL, NULL),
(423, '', 'create', 'web_users_role', 140, 1455647029, 'admin', '', 'vi', 0, NULL, NULL),
(424, '', 'create', 'web_users_role', 141, 1455647029, 'admin', '', 'vi', 0, NULL, NULL),
(425, '', 'update', 'web_users_role', 83, 1455647126, 'admin', 'id,action_view,action_create,action_edit,action_delete,admin_id,users_id,statusfields%%%values83%%%1%%%1%%%1%%%1%%%1%%%47%%%1', 'vi', 0, NULL, NULL),
(426, '', 'update', 'web_users_role', 84, 1455647126, 'admin', 'id,action_view,action_create,action_edit,action_delete,admin_id,users_id,statusfields%%%values84%%%1%%%1%%%1%%%1%%%24%%%47%%%1', 'vi', 0, NULL, NULL),
(427, '', 'update', 'web_users_role', 92, 1455647144, 'admin', 'id,action_view,action_create,action_edit,action_delete,admin_id,users_id,statusfields%%%values92%%%1%%%1%%%1%%%1%%%24%%%49%%%1', 'vi', 0, NULL, NULL),
(428, '', 'update', 'web_users_role', 88, 1455647144, 'admin', 'id,action_view,action_create,action_edit,action_delete,admin_id,users_id,statusfields%%%values88%%%1%%%1%%%1%%%1%%%1%%%49%%%1', 'vi', 0, NULL, NULL),
(429, '', 'create', 'web_users_role', 142, 1455647168, 'admin', '', 'vi', 0, NULL, NULL),
(430, '', 'create', 'web_users_role', 143, 1455647168, 'admin', '', 'vi', 0, NULL, NULL),
(431, 'Lương Đức Chính', 'update', 'web_users', 60, 1455647185, 'admin', 'id,name,address,phone,email,birthday,gender,img,salt,page,username,password,random_key,date_expiration,lang,datetime,status,group_idfields%%%values60%%%Lương Đức Chính%%%%%%%%%%%%0%%%%%%%%%%%%1%%%chinhluong%%%867e1a36d190000d2f266d80889683fc%%%%%%0%%%vi%%%0%%%1%%%3', 'vi', 0, NULL, NULL),
(432, 'English', 'update', 'web_language', 2, 1455647906, 'admin', 'id,name,code,_order,statusfields%%%values2%%%English%%%en%%%2%%%0', 'vi', 0, NULL, NULL),
(433, 'nguyễn thị trà ly', 'create', 'web_contact', 4329, 1455653144, 'customer', '', 'vi', 0, NULL, NULL),
(434, 'Vũ Văn Hoan', 'create', 'web_contact', 4330, 1455654367, 'customer', '', 'vi', 0, NULL, NULL),
(435, 'Nguyễn Thị Huyền Trang', 'create', 'web_contact', 4331, 1455656464, 'customer', '', 'vi', 0, NULL, NULL),
(436, 'Hoàng Văn Hưng', 'create', 'web_contact', 4332, 1455660478, 'customer', '', 'vi', 0, NULL, NULL),
(437, 'Huỳnh thị ngọc huệ', 'create', 'web_contact', 4333, 1455671758, 'customer', '', 'vi', 0, NULL, NULL),
(438, 'Lê Công Đức', 'create', 'web_contact', 4334, 1455685559, 'customer', '', 'vi', 0, NULL, NULL),
(439, 'Nguyễn Quang Linh', 'create', 'web_contact', 4335, 1455688203, 'customer', '', 'vi', 0, NULL, NULL),
(440, 'Trần Thị Phong Sương', 'create', 'web_contact', 4336, 1455695795, 'customer', '', 'vi', 0, NULL, NULL),
(441, 'Mai xuân hào', 'create', 'web_contact', 4337, 1455716848, 'customer', '', 'vi', 0, NULL, NULL),
(442, 'Mai xuân hào', 'create', 'web_contact', 4338, 1455717196, 'customer', '', 'vi', 0, NULL, NULL),
(443, 'Đặng Quốc Vinh', 'create', 'web_contact', 4339, 1455736963, 'customer', '', 'vi', 0, NULL, NULL),
(444, 'Phan Thị Hoài Ngọc', 'update', 'web_users', 58, 1455738143, 'admin', 'id,name,address,phone,email,birthday,gender,img,salt,page,username,password,random_key,date_expiration,lang,datetime,status,group_idfields%%%values58%%%Phan Thị Hoài Ngọc%%%%%%%%%%%%0%%%%%%%%%%%%3%%%ngocphan%%%867e1a36d190000d2f266d80889683fc%%%%%%0%%%vi%%%0%%%1%%%3', 'vi', 0, NULL, NULL),
(445, 'Trần Thị Nga', 'update', 'web_users', 53, 1455738153, 'admin', 'id,name,address,phone,email,birthday,gender,img,salt,page,username,password,random_key,date_expiration,lang,datetime,status,group_idfields%%%values53%%%Trần Thị Nga%%%%%%0939 727 479%%%consultant4@netspace.edu.vn%%%0%%%%%%%%%%%%3%%%thinga%%%867e1a36d190000d2f266d80889683fc%%%%%%0%%%vi%%%0%%%1%%%3', 'vi', 0, NULL, NULL),
(446, 'Nguyễn Thị Mơ', 'update', 'web_users', 52, 1455738156, 'admin', 'id,name,address,phone,email,birthday,gender,img,salt,page,username,password,random_key,date_expiration,lang,datetime,status,group_idfields%%%values52%%%Nguyễn Thị Mơ%%%%%%%%%%%%0%%%%%%%%%%%%3%%%nguyenmo%%%867e1a36d190000d2f266d80889683fc%%%%%%0%%%vi%%%0%%%1%%%3', 'vi', 0, NULL, NULL),
(447, 'Trần Hồng Thái', 'update', 'web_users', 51, 1455738160, 'admin', 'id,name,address,phone,email,birthday,gender,img,salt,page,username,password,random_key,date_expiration,lang,datetime,status,group_idfields%%%values51%%%Trần Hồng Thái%%%%%%%%%%%%0%%%%%%%%%%%%3%%%hongthai%%%867e1a36d190000d2f266d80889683fc%%%%%%0%%%vi%%%0%%%1%%%3', 'vi', 0, NULL, NULL),
(448, 'Đỗ Ngọc Cường', 'create', 'web_contact', 4340, 1455739650, 'customer', '', 'vi', 0, NULL, NULL),
(449, 'Đỗ Anh Kiệt', 'create', 'web_contact', 4341, 1455742661, 'customer', '', 'vi', 0, NULL, NULL),
(450, 'Mai Lệ Huyền', 'update', 'web_users', 47, 1455743972, 'admin', 'id,name,address,phone,email,birthday,gender,img,salt,page,username,password,random_key,date_expiration,lang,datetime,status,group_idfields%%%values47%%%Mai Lệ Huyền%%%%%%%%%hr@netspace.edu.vn%%%0%%%%%%%%%%%%3%%%lehuyen%%%867e1a36d190000d2f266d80889683fc%%%%%%0%%%vi%%%0%%%1%%%3', 'vi', 0, NULL, NULL),
(451, 'dang huu phuc', 'create', 'web_contact', 4342, 1455743979, 'customer', '', 'vi', 0, NULL, NULL),
(452, 'Ngọc Thảo', 'update', 'web_users', 48, 1455744023, 'admin', 'id,name,address,phone,email,birthday,gender,img,salt,page,username,password,random_key,date_expiration,lang,datetime,status,group_idfields%%%values48%%%Ngọc Thảo%%%%%%%%%%%%0%%%%%%%%%%%%3%%%ngocthao%%%867e1a36d190000d2f266d80889683fc%%%%%%0%%%vi%%%0%%%1%%%3', 'vi', 0, NULL, NULL),
(453, 'Ngọc Hương', 'update', 'web_users', 49, 1455744061, 'admin', 'id,name,address,phone,email,birthday,gender,img,salt,page,username,password,random_key,date_expiration,lang,datetime,status,group_idfields%%%values49%%%Ngọc Hương%%%%%%%%%%%%0%%%%%%%%%%%%3%%%ngochuong%%%867e1a36d190000d2f266d80889683fc%%%%%%0%%%vi%%%0%%%1%%%3', 'vi', 0, NULL, NULL),
(454, 'Hiếu Nhân', 'update', 'web_users', 34, 1455744303, 'admin', 'id,name,address,phone,email,birthday,gender,img,salt,page,username,password,random_key,date_expiration,lang,datetime,status,group_idfields%%%values34%%%Hiếu Nhân%%%123 CMT 8%%%0988 388 003%%%trannhan@localhost.com%%%609872400%%%1%%%%%%%%%3%%%trannhan%%%867e1a36d190000d2f266d80889683fc%%%%%%0%%%vi%%%1425093180%%%1%%%3', 'vi', 0, NULL, NULL),
(455, '', 'create', 'web_users_role', 144, 1455744333, 'admin', '', 'vi', 0, NULL, NULL),
(456, '', 'create', 'web_users_role', 145, 1455744359, 'admin', '', 'vi', 0, NULL, NULL),
(457, '', 'create', 'web_users_role', 146, 1455744359, 'admin', '', 'vi', 0, NULL, NULL),
(458, 'Khách hàng', 'update', 'web_users_group', 1, 1455746427, 'admin', 'id,name,_order,statusfields%%%values1%%%Khách hàng%%%1%%%1', 'vi', 0, NULL, NULL),
(459, 'Quản lý Apps Facebook', 'update', 'web_users_group', 2, 1455746447, 'admin', 'id,name,_order,statusfields%%%values2%%%Quản lý Apps Facebook%%%2%%%1', 'vi', 0, NULL, NULL),
(460, '', 'update', 'web_users_group', 4, 1455746496, 'admin', 'fields%%%values', 'vi', 0, NULL, NULL),
(461, '', 'update', 'web_users_group', 4, 1455746499, 'admin', 'fields%%%values', 'vi', 0, NULL, NULL),
(462, 'Bộ phận marketing', 'create', 'web_users_group', 4, 1455746551, 'admin', '', 'vi', 0, NULL, NULL),
(463, 'Trần Thị Ngọc Tú', 'update', 'web_users', 54, 1455746570, 'admin', 'id,name,address,phone,email,birthday,gender,img,salt,page,username,password,random_key,date_expiration,lang,datetime,status,group_idfields%%%values54%%%Trần Thị Ngọc Tú%%%%%%0908 876 741%%%consultant1@netspace.edu.vn%%%0%%%%%%%%%%%%3%%%ngoctu%%%867e1a36d190000d2f266d80889683fc%%%%%%0%%%vi%%%0%%%1%%%3', 'vi', 0, NULL, NULL),
(464, 'Nguyễn Nhựt Thành', 'create', 'web_contact', 4343, 1455747622, 'customer', '', 'vi', 0, NULL, NULL),
(465, 'Trần Thị Ngọc Hương', 'update', 'web_users', 49, 1455749139, 'admin', 'id,name,address,phone,email,birthday,gender,img,salt,page,username,password,random_key,date_expiration,lang,datetime,status,group_idfields%%%values49%%%Trần Thị Ngọc Hương%%%%%%0908028202%%%consultant6@netspace.edu.vn%%%0%%%%%%%%%%%%3%%%ngochuong%%%867e1a36d190000d2f266d80889683fc%%%%%%0%%%vi%%%0%%%1%%%3', 'vi', 0, NULL, NULL),
(466, 'Tường Vy', 'update', 'web_users', 56, 1455749184, 'admin', 'id,name,address,phone,email,birthday,gender,img,salt,page,username,password,random_key,date_expiration,lang,datetime,status,group_idfields%%%values56%%%Tường Vy%%%%%%01226 788 578%%%consultant5@netspace.edu.vn%%%0%%%%%%%%%%%%3%%%tuongvy%%%867e1a36d190000d2f266d80889683fc%%%%%%0%%%vi%%%0%%%1%%%3', 'vi', 0, NULL, NULL),
(467, 'Dương Ngọc Thảo', 'update', 'web_users', 48, 1455749203, 'admin', 'id,name,address,phone,email,birthday,gender,img,salt,page,username,password,random_key,date_expiration,lang,datetime,status,group_idfields%%%values48%%%Dương Ngọc Thảo%%%%%%0936222422%%%consultant3@netspace.edu.vn%%%0%%%%%%%%%%%%3%%%ngocthao%%%867e1a36d190000d2f266d80889683fc%%%%%%0%%%vi%%%0%%%1%%%3', 'vi', 0, NULL, NULL),
(468, 'Trần Hồng Thái', 'update', 'web_users', 51, 1455749299, 'admin', 'id,name,address,phone,email,birthday,gender,img,salt,page,username,password,random_key,date_expiration,lang,datetime,status,group_idfields%%%values51%%%Trần Hồng Thái%%%%%%%%%%%%0%%%%%%%%%%%%3%%%hongthai%%%867e1a36d190000d2f266d80889683fc%%%%%%0%%%vi%%%0%%%0%%%3', 'vi', 0, NULL, NULL),
(469, 'Nguyễn Phương Thảo', 'update', 'web_users', 51, 1455749306, 'admin', 'id,name,address,phone,email,birthday,gender,img,salt,page,username,password,random_key,date_expiration,lang,datetime,status,group_idfields%%%values51%%%Nguyễn Phương Thảo%%%%%%0938365688%%%consultant4@netspace.edu.vn%%%0%%%%%%%%%%%%3%%%hongthai%%%867e1a36d190000d2f266d80889683fc%%%%%%0%%%vi%%%0%%%0%%%1', 'vi', 0, NULL, NULL),
(470, 'Nguyễn Thị Hường', 'update', 'web_users', 59, 1455749354, 'admin', 'id,name,address,phone,email,birthday,gender,img,salt,page,username,password,random_key,date_expiration,lang,datetime,status,group_idfields%%%values59%%%Nguyễn Thị Hường%%%%%%0975 801 851%%%marketing3@netspace.edu.vn%%%0%%%%%%%%%%%%1%%%huongnguyen%%%867e1a36d190000d2f266d80889683fc%%%%%%0%%%vi%%%0%%%1%%%3', 'vi', 0, NULL, NULL),
(471, 'Nguyễn Thị Hường', 'update', 'web_users', 59, 1455749379, 'admin', 'id,name,address,phone,email,birthday,gender,img,salt,page,username,password,random_key,date_expiration,lang,datetime,status,group_idfields%%%values59%%%Nguyễn Thị Hường%%%%%%0975 801 851%%%marketing3@netspace.edu.vn%%%0%%%%%%%%%%%%1%%%huongnguyen%%%867e1a36d190000d2f266d80889683fc%%%%%%0%%%vi%%%0%%%1%%%4', 'vi', 0, NULL, NULL),
(472, 'Nguyễn Thị Thu Trang', 'update', 'web_users', 57, 1455749392, 'admin', 'id,name,address,phone,email,birthday,gender,img,salt,page,username,password,random_key,date_expiration,lang,datetime,status,group_idfields%%%values57%%%Nguyễn Thị Thu Trang%%%%%%0933 606 798%%%marketingofficer1@netspace.edu.vn%%%0%%%%%%%%%%%%1%%%trangnguyen%%%867e1a36d190000d2f266d80889683fc%%%%%%0%%%vi%%%0%%%1%%%3', 'vi', 0, NULL, NULL),
(473, 'Nguyễn Hữu Phát', 'update', 'web_users', 46, 1455749408, 'admin', 'id,name,address,phone,email,birthday,gender,img,salt,page,username,password,random_key,date_expiration,lang,datetime,status,group_idfields%%%values46%%%Nguyễn Hữu Phát%%%%%%0903 616 698%%%phatnguyenhuu@gmail.com%%%0%%%%%%%%%%%%1%%%phatnguyen%%%867e1a36d190000d2f266d80889683fc%%%%%%0%%%vi%%%0%%%1%%%3', 'vi', 0, NULL, NULL),
(474, 'Chúc Quỳnh', 'update', 'web_users', 50, 1455749472, 'admin', 'id,name,address,phone,email,birthday,gender,img,salt,page,username,password,random_key,date_expiration,lang,datetime,status,group_idfields%%%values50%%%Chúc Quỳnh%%%%%%%%%%%%0%%%%%%%%%%%%3%%%chucquynh%%%867e1a36d190000d2f266d80889683fc%%%%%%0%%%vi%%%0%%%1%%%3', 'vi', 0, NULL, NULL),
(475, 'Nguyễn Thị Kim Thanh', 'update', 'web_users', 55, 1455749540, 'admin', 'id,name,address,phone,email,birthday,gender,img,salt,page,username,password,random_key,date_expiration,lang,datetime,status,group_idfields%%%values55%%%Nguyễn Thị Kim Thanh%%%%%%0947 444 567%%%%%%0%%%%%%%%%%%%3%%%kimthanh%%%867e1a36d190000d2f266d80889683fc%%%%%%0%%%vi%%%0%%%1%%%3', 'vi', 0, NULL, NULL),
(476, 'Nguyễn Phương Thảo', 'update', 'web_users', 51, 1455749563, 'admin', 'id,name,address,phone,email,birthday,gender,img,salt,page,username,password,random_key,date_expiration,lang,datetime,status,group_idfields%%%values51%%%Nguyễn Phương Thảo%%%%%%0938365688%%%consultant4@netspace.edu.vn%%%0%%%%%%%%%%%%3%%%phuongthao%%%867e1a36d190000d2f266d80889683fc%%%%%%0%%%vi%%%0%%%0%%%1', 'vi', 1, 1455749645, 'admin'),
(477, 'Nguyễn Phương Thảo', 'update', 'web_users', 51, 1455749660, 'admin', 'id,name,address,phone,email,birthday,gender,img,salt,page,username,password,random_key,date_expiration,lang,datetime,status,group_idfields%%%values51%%%Nguyễn Phương Thảo%%%%%%0938365688%%%consultant4@netspace.edu.vn%%%0%%%0%%%%%%%%%3%%%phuongthao%%%867e1a36d190000d2f266d80889683fc%%%%%%0%%%vi%%%0%%%0%%%1', 'vi', 0, NULL, NULL),
(478, 'Trần Chúc Quỳnh', 'update', 'web_users', 50, 1455749695, 'admin', 'id,name,address,phone,email,birthday,gender,img,salt,page,username,password,random_key,date_expiration,lang,datetime,status,group_idfields%%%values50%%%Trần Chúc Quỳnh%%%%%%0946 868 455%%%tuyensinh@netspace.edu.vn%%%0%%%%%%%%%%%%3%%%chucquynh%%%867e1a36d190000d2f266d80889683fc%%%%%%0%%%vi%%%0%%%1%%%3', 'vi', 0, NULL, NULL),
(479, 'Lý Thị Ngọc Sánh', 'create', 'web_users', 61, 1455749771, 'admin', '', 'vi', 0, NULL, NULL),
(480, 'Nguyễn Thị Minh Nhã', 'create', 'web_users', 62, 1455749835, 'admin', '', 'vi', 0, NULL, NULL),
(481, 'Lương Đức Chính', 'update', 'web_users', 60, 1455749890, 'admin', 'id,name,address,phone,email,birthday,gender,img,salt,page,username,password,random_key,date_expiration,lang,datetime,status,group_idfields%%%values60%%%Lương Đức Chính%%%%%%%%%%%%0%%%%%%%%%%%%3%%%chinhluong%%%af08e5dae0ea235d521f8ea328688ba1%%%%%%0%%%vi%%%0%%%1%%%3', 'vi', 0, NULL, NULL),
(482, 'Bộ phận nhân sự', 'create', 'web_users_group', 5, 1455749947, 'admin', '', 'vi', 0, NULL, NULL),
(483, 'Bộ phận kế toán', 'create', 'web_users_group', 6, 1455749966, 'admin', '', 'vi', 0, NULL, NULL),
(484, 'Mai Lệ Huyền', 'update', 'web_users', 47, 1455749983, 'admin', 'id,name,address,phone,email,birthday,gender,img,salt,page,username,password,random_key,date_expiration,lang,datetime,status,group_idfields%%%values47%%%Mai Lệ Huyền%%%%%%0972301435%%%hr@netspace.edu.vn%%%0%%%%%%%%%%%%3%%%lehuyen%%%867e1a36d190000d2f266d80889683fc%%%%%%0%%%vi%%%0%%%1%%%3', 'vi', 0, NULL, NULL),
(485, 'Phan Thị Hoài Ngọc', 'update', 'web_users', 58, 1455750044, 'admin', 'id,name,address,phone,email,birthday,gender,img,salt,page,username,password,random_key,date_expiration,lang,datetime,status,group_idfields%%%values58%%%Phan Thị Hoài Ngọc%%%%%%%%%%%%0%%%%%%%%%%%%3%%%ngocphan%%%867e1a36d190000d2f266d80889683fc%%%%%%0%%%vi%%%0%%%0%%%3', 'vi', 0, NULL, NULL),
(486, '', 'create', 'web_users_role', 147, 1455750637, 'admin', '', 'vi', 0, NULL, NULL),
(487, '', 'create', 'web_users_role', 148, 1455750637, 'admin', '', 'vi', 0, NULL, NULL),
(488, '', 'create', 'web_users_role', 149, 1455750637, 'admin', '', 'vi', 0, NULL, NULL),
(489, '', 'create', 'web_users_role', 150, 1455750637, 'admin', '', 'vi', 0, NULL, NULL),
(490, '', 'create', 'web_users_role', 151, 1455750637, 'admin', '', 'vi', 0, NULL, NULL),
(491, '', 'create', 'web_users_role', 152, 1455750857, 'admin', '', 'vi', 0, NULL, NULL),
(492, '', 'create', 'web_users_role', 153, 1455750902, 'admin', '', 'vi', 0, NULL, NULL),
(493, '', 'create', 'web_users_role', 154, 1455750938, 'admin', '', 'vi', 0, NULL, NULL),
(494, '', 'create', 'web_users_role', 155, 1455750970, 'admin', '', 'vi', 0, NULL, NULL),
(495, '', 'delete', 'web_users_role', 136, 1455751003, 'admin', 'id,action_view,action_create,action_edit,action_delete,admin_id,users_id,statusfields%%%values136%%%1%%%1%%%1%%%1%%%36%%%53%%%1', 'vi', 0, NULL, NULL),
(496, 'Thông báo liên hệ cho chi nhánh', 'create', 'web_event_form', 10, 1455752689, 'admin', '', 'vi', 0, NULL, NULL),
(497, 'Nguyễn Nhựt Thành', 'create', 'web_contact', 4344, 1455753565, 'admin', '', 'vi', 0, NULL, NULL),
(498, 'Nguyễn Nhựt Thành', 'delete', 'web_contact', 4344, 1455753672, 'admin', 'id,name,email,phone,address,message,date_birthday,branch,course_name,datetime,lang,status,type,user,header_idfields%%%values4344%%%Nguyễn Nhựt Thành%%%nguyennhutthanh89@gmail.com%%%0939865875%%%lý tự trọng, quận ninh kiều, tp cấn thơ%%%%%%%%%6%%%%%%1455753497%%%vi%%%0%%%2%%%%%%624', 'vi', 0, NULL, NULL),
(499, 'Chi nhánh: Trường dạy nấu ăn Netspace Đà Lạt', 'update', 'web_branch', 5, 1455754335, 'admin', 'id,name,shorten,email,phone,fax,address,hotline,googlemap,_order,lang,statusfields%%%values5%%%Chi nhánh: Trường dạy nấu ăn Netspace Đà Lạt%%%CN Đà Lạt%%%dalat@dayamthuc.vn%%%(0633) 811 199 - (0633) 811 166%%%%%%51D Hùng Vương, Phường 9, Tp.Đà Lạt%%%0905 362 809 - 0965 82 83 88 - 0965 79 73 88%%%11.9484555,108.4665155%%%6%%%vi%%%1', 'vi', 0, NULL, NULL),
(500, 'Chi nhánh: Trường dạy nấu ăn Netspace Cần Thơ', 'update', 'web_branch', 6, 1455754644, 'admin', 'id,name,shorten,email,phone,fax,address,hotline,googlemap,_order,lang,statusfields%%%values6%%%Chi nhánh: Trường dạy nấu ăn Netspace Cần Thơ%%%CN Cần Thơ%%%cantho@dayamthuc.vn%%%(071) 0373 4371%%%%%%140 Xô Viết Nghệ Tĩnh, P.An Hội, Q.Ninh Kiều, Tp.Cần Thơ%%%0912 187 489 - 0912 287 489%%%10.0288542,105.7715285%%%7%%%vi%%%1', 'vi', 0, NULL, NULL),
(501, 'Chi nhánh: Trường dạy nấu ăn Netspace Đà Nẵng', 'update', 'web_branch', 3, 1455754841, 'admin', 'id,name,shorten,email,phone,fax,address,hotline,googlemap,_order,lang,statusfields%%%values3%%%Chi nhánh: Trường dạy nấu ăn Netspace Đà Nẵng%%%CN Đà Nẵng%%%danang@dayamthuc.vn%%%(051) 1363 4879%%%%%%Số 3 Phan Thành Tài, Q.Hải Châu, Tp.Đà Nẵng%%%0979 391 391 - 0932 743 799%%%16.0539773,108.2211944%%%3%%%vi%%%1', 'vi', 0, NULL, NULL),
(502, 'Nguyễn quốc hoàng', 'update', 'web_contact', 4264, 1455756601, 'admin', 'id,name,email,phone,address,message,date_birthday,branch,course_name,datetime,lang,status,type,user,header_idfields%%%values4264%%%Nguyễn quốc hoàng%%%quochoang1368@yahoo.com%%%0931068606%%%Sóc Trăng%%%%%%0%%%6%%%Mở quán nhậu - Kinh doanh quán nhậu%%%1453392266%%%vi%%%2%%%2%%%6%%%589', 'vi', 0, NULL, NULL),
(503, 'Nguyễn quốc hoàng', 'update', 'web_contact', 4264, 1455756607, 'admin', 'id,name,email,phone,address,message,date_birthday,branch,course_name,datetime,lang,status,type,user,header_idfields%%%values4264%%%Nguyễn quốc hoàng%%%quochoang1368@yahoo.com%%%0931068606%%%Sóc Trăng%%%%%%1455728400%%%6%%%Mở quán nhậu - Kinh doanh quán nhậu%%%1453392266%%%vi%%%1%%%2%%%6%%%589', 'vi', 0, NULL, NULL),
(504, 'Nguyễn quốc hoàng', 'update', 'web_contact', 4264, 1455756633, 'admin', 'id,name,email,phone,address,message,date_birthday,branch,course_name,datetime,lang,status,type,user,header_idfields%%%values4264%%%Nguyễn quốc hoàng%%%quochoang1368@yahoo.com%%%0931068606%%%Sóc Trăng%%%%%%1455728400%%%6%%%Mở quán nhậu - Kinh doanh quán nhậu%%%1453392266%%%vi%%%1%%%2%%%0%%%589', 'vi', 0, NULL, NULL),
(505, 'Trần Minhh Hiền', 'update', 'web_contact', 4235, 1455756655, 'admin', 'id,name,email,phone,address,message,date_birthday,branch,course_name,datetime,lang,status,type,user,header_idfields%%%values4235%%%Trần Minhh Hiền%%%tranminhhien37qtvo@gmail.com%%%01262852129%%%Phú Hưng-Phú Thịnh-Tam Binh-Vĩnh Long%%%%%%0%%%6%%%Chương trình đào tạo Quản Lý Nhà Hàng%%%1449717021%%%vi%%%2%%%2%%%6%%%683', 'vi', 0, NULL, NULL),
(506, 'Trần Minhh Hiền', 'update', 'web_contact', 4235, 1455756666, 'admin', 'id,name,email,phone,address,message,date_birthday,branch,course_name,datetime,lang,status,type,user,header_idfields%%%values4235%%%Trần Minhh Hiền%%%tranminhhien37qtvo@gmail.com%%%01262852129%%%Phú Hưng-Phú Thịnh-Tam Binh-Vĩnh Long%%%%%%1455728400%%%6%%%Chương trình đào tạo Quản Lý Nhà Hàng%%%1449717021%%%vi%%%2%%%2%%%6%%%683', 'vi', 0, NULL, NULL),
(507, 'Bartender Khóa 19', 'create', 'mn_class', 334, 1455757360, 'ngoctu', '', 'vi', 0, NULL, NULL),
(508, 'Nguyễn Hồ Anh Vũ', 'create', 'mn_student', 2936, 1455757399, 'ngochuong', '', 'vi', 0, NULL, NULL),
(509, 'TRẦN THỊ HẢO', 'create', 'web_contact', 4345, 1455758513, 'customer', '', 'vi', 0, NULL, NULL),
(510, 'Bartender Khóa 19', 'update', 'mn_class', 334, 1455759650, 'admin', 'id,name,code_bk,code,date_opening,notes,datetime,status,course_idfields%%%values334%%%Bartender Khóa 19%%%%%%%%%1456333200%%%%%%1455757260%%%1%%%19', 'vi', 0, NULL, NULL),
(511, 'Bartender Khóa 19', 'update', 'mn_class', 334, 1455759667, 'admin', 'id,name,code_bk,code,date_opening,notes,datetime,status,course_idfields%%%values334%%%Bartender Khóa 19%%%%%%PCBT-15-19%%%1456333200%%%%%%1455757260%%%1%%%19', 'vi', 0, NULL, NULL),
(512, 'Bartender Khóa 19', 'update', 'mn_class', 334, 1455759707, 'admin', 'id,name,code_bk,code,date_opening,notes,datetime,status,course_idfields%%%values334%%%Bartender Khóa 19%%%%%%PCBT-15-19%%%1456333200%%%%%%1455757260%%%1%%%19', 'vi', 0, NULL, NULL),
(513, 'Bartender Khóa 19', 'update', 'mn_class', 334, 1455759727, 'admin', 'id,name,code_bk,code,date_opening,notes,datetime,status,course_idfields%%%values334%%%Bartender Khóa 19%%%%%%PCBT-15-19%%%1456333200%%%%%%1455757260%%%1%%%10', 'vi', 0, NULL, NULL),
(514, 'Nguyễn Phương Thảo', 'update', 'web_users', 51, 1455763984, 'admin', 'id,name,address,phone,email,birthday,gender,img,salt,page,username,password,random_key,date_expiration,lang,datetime,status,group_idfields%%%values51%%%Nguyễn Phương Thảo%%%%%%0938365688%%%consultant4@netspace.edu.vn%%%0%%%0%%%%%%%%%3%%%phuongthao%%%867e1a36d190000d2f266d80889683fc%%%%%%0%%%vi%%%0%%%1%%%1', 'vi', 0, NULL, NULL),
(515, 'Nguyễn Hồ Anh Vũ', 'update', 'mn_student', 2936, 1455764728, 'admin', 'id,name,code_bk,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values2936%%%Nguyễn Hồ Anh Vũ%%%%%%%%%0903381539%%%%%%204 Lô A, chung cư 207 Bùi Viện P.Phạm Ngũ Lão Quận 1 HCM%%%1%%%0%%%Giảm 5%%%%1455756840%%%1%%%334', 'vi', 0, NULL, NULL),
(516, 'Bartender Khóa 19', 'update', 'mn_class', 334, 1455764856, 'admin', 'id,name,code_bk,code,date_opening,notes,datetime,status,course_idfields%%%values334%%%Bartender Khóa 19%%%%%%PCBT-16-19%%%1456333200%%%%%%1455757260%%%1%%%10', 'vi', 0, NULL, NULL),
(517, 'Bartender Khoá 15', 'update', 'mn_class', 255, 1455764876, 'admin', 'id,name,code_bk,code,date_opening,notes,datetime,status,course_idfields%%%values255%%%Bartender Khoá 15%%%PCBT15%%%PCBT-15-15%%%0%%%%%%1432692063%%%1%%%10', 'vi', 0, NULL, NULL),
(518, 'Bartender Khoá 07', 'update', 'mn_class', 126, 1455764892, 'admin', 'id,name,code_bk,code,date_opening,notes,datetime,status,course_idfields%%%values126%%%Bartender Khoá 07%%%PCBT07%%%PCBT-14-07%%%1402419600%%%%%%1401954299%%%1%%%10', 'vi', 0, NULL, NULL),
(519, 'Bartender Khoá 04', 'update', 'mn_class', 72, 1455764910, 'admin', 'id,name,code_bk,code,date_opening,notes,datetime,status,course_idfields%%%values72%%%Bartender Khoá 04%%%PCBT-04%%%PCBT-13-04%%%0%%%%%%1388107392%%%1%%%10', 'vi', 0, NULL, NULL),
(520, 'Bartender_k03', 'update', 'mn_class', 60, 1455764917, 'admin', 'id,name,code_bk,code,date_opening,notes,datetime,status,course_idfields%%%values60%%%Bartender_k03%%%PCBT-03%%%PCBT-13-03%%%0%%%%%%1383185650%%%1%%%10', 'vi', 0, NULL, NULL),
(521, 'Batender_khóa 2', 'update', 'mn_class', 43, 1455764922, 'admin', 'id,name,code_bk,code,date_opening,notes,datetime,status,course_idfields%%%values43%%%Batender_khóa 2%%%PCBT02%%%PCBT-13-02%%%1378141200%%%08:00 - 11:00 thứ 3,5,7%%%1377504634%%%1%%%10', 'vi', 0, NULL, NULL),
(522, 'Vũ Văn Hoan', 'create', 'web_contact', 4346, 1455774361, 'customer', '', 'vi', 0, NULL, NULL),
(523, 'duong phuc binh', 'create', 'web_contact', 4347, 1455774745, 'customer', '', 'vi', 0, NULL, NULL),
(524, 'duong phuc binh', 'create', 'web_contact', 4348, 1455774996, 'customer', '', 'vi', 0, NULL, NULL),
(525, 'duong phuc binh', 'create', 'web_contact', 4349, 1455775258, 'customer', '', 'vi', 0, NULL, NULL),
(526, 'Lương Triệu Quang', 'create', 'web_contact', 4350, 1455775440, 'customer', '', 'vi', 0, NULL, NULL),
(527, 'Lê Văn Nhân', 'create', 'web_contact', 4351, 1455780108, 'customer', '', 'vi', 0, NULL, NULL),
(528, 'Hoàng Sỹ Thái Vũ', 'create', 'web_contact', 4352, 1455780651, 'customer', '', 'vi', 0, NULL, NULL),
(529, 'Hồ Hữu Đức', 'create', 'web_contact', 4353, 1455786591, 'customer', '', 'vi', 0, NULL, NULL),
(530, 'nguyễn văn phú', 'create', 'web_contact', 4354, 1455817274, 'customer', '', 'vi', 0, NULL, NULL),
(531, 'Dương Tất Thắng', 'create', 'mn_student', 2937, 1455819707, 'ngoctu', '', 'vi', 0, NULL, NULL),
(532, 'Phan Khải Long', 'create', 'mn_student', 2938, 1455819802, 'ngoctu', '', 'vi', 0, NULL, NULL),
(533, 'Lê Đức Nhân', 'create', 'mn_student', 2939, 1455820400, 'ngoctu', '', 'vi', 0, NULL, NULL),
(534, 'Hứa Trúc Lâm', 'create', 'mn_student', 2940, 1455820523, 'ngoctu', '', 'vi', 0, NULL, NULL),
(535, 'Nguyễn Hồ Anh Vũ', 'update', 'mn_student', 2936, 1455820544, 'ngoctu', 'id,name,code_bk,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values2936%%%Nguyễn Hồ Anh Vũ%%%%%%PCBT-16-19-1%%%0903381539%%%%%%204 Lô A, chung cư 207 Bùi Viện P.Phạm Ngũ Lão Quận 1 HCM%%%1%%%0%%%Giảm 5%%%%1455756840%%%1%%%334', 'vi', 0, NULL, NULL),
(536, 'Đặng Anh Tiến', 'create', 'mn_student', 2941, 1455821797, 'ngoctu', '', 'vi', 0, NULL, NULL),
(537, 'Nguyễn Ngọc Trâm', 'update', 'mn_student', 2934, 1455821875, 'ngoctu', 'id,name,code_bk,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values2934%%%Nguyễn Ngọc Trâm%%%BCBV49-02%%%BCBV-16-49-2%%%01212472473%%%%%%%%%0%%%756666000%%%Giảm 20% học phí%%%1454049728%%%1%%%327', 'vi', 0, NULL, NULL),
(538, 'Đinh Văn Đức', 'update', 'mn_student', 2912, 1455821891, 'ngoctu', 'id,name,code_bk,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values2912%%%Đinh Văn Đức%%%BCBV49-01%%%BCBV-16-49-1%%%0931313329%%%%%%%%%1%%%786992400%%%giảm 20%%%%1453227516%%%1%%%327', 'vi', 0, NULL, NULL),
(539, 'Nguyễn Tấn Lập', 'update', 'mn_student', 2935, 1455821908, 'ngoctu', 'id,name,code_bk,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values2935%%%Nguyễn Tấn Lập%%%ĐBQT28-%%%ĐBQT-16-28-3%%%01268747911%%%%%%135/37A Gò Xoài, P. Bình Hưng Hòa A, BT, TPHCM%%%1%%%1454691600%%%Giảm 20% học phí%%%1454180637%%%1%%%323', 'vi', 0, NULL, NULL);
INSERT INTO `web_logs` (`id`, `name`, `action`, `_table`, `table_id`, `datetime`, `username`, `content`, `lang`, `status`, `date_restore`, `user_restore`) VALUES
(540, 'Huỳnh Lê Hữu Vinh', 'update', 'mn_student', 2932, 1455821928, 'ngoctu', 'id,name,code_bk,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values2932%%%Huỳnh Lê Hữu Vinh%%%ĐBQT27-10%%%ĐBQT-15-27-9%%%0902633373%%%%%%Phường 2 - Thị Xã Vĩnh Long - Tp Vĩnh Long%%%1%%%190832400%%%Giảm 20% , đóng 2 lần%%%1454016131%%%1%%%320', 'vi', 0, NULL, NULL),
(541, 'Nguyễn Phương Quỳnh', 'create', 'mn_student', 2942, 1455822418, 'ngoctu', '', 'vi', 0, NULL, NULL),
(542, 'Phạm Hoàng Ân', 'create', 'mn_student', 2943, 1455822609, 'ngoctu', '', 'vi', 0, NULL, NULL),
(543, 'Nguyễn Thị Mỹ Hoa', 'create', 'web_contact', 4355, 1455840185, 'customer', '', 'vi', 0, NULL, NULL),
(544, 'bùi thị thúy hằng', 'create', 'web_contact', 4356, 1455840793, 'customer', '', 'vi', 0, NULL, NULL),
(545, 'PHẠM THỊ NGỌC QUỲNH', 'create', 'web_contact', 4357, 1455843557, 'customer', '', 'vi', 0, NULL, NULL),
(546, 'ho thi hang', 'create', 'web_contact', 4358, 1455844015, 'customer', '', 'vi', 0, NULL, NULL),
(547, 'Nguyễn Đăng Khoa', 'create', 'mn_student', 2944, 1455850124, 'ngoctu', '', 'vi', 0, NULL, NULL),
(548, 'Nguyễn Thị Thêm', 'create', 'web_contact', 4359, 1455853677, 'customer', '', 'vi', 0, NULL, NULL),
(549, 'đinh văn đức', 'create', 'web_contact', 4360, 1455879384, 'customer', '', 'vi', 0, NULL, NULL),
(550, 'Thái Hùng', 'create', 'web_contact', 4361, 1455932393, 'customer', '', 'vi', 0, NULL, NULL),
(551, 'Cách làm kem chuối', 'update', 'web_header', 1431, 1455940956, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1431%%%Cách làm kem chuối%%%cach-lam-kem-chuoi%%%%%%1455512020.jpg%%%Cách làm kem chuối | Cach lam kem chuoi%%%Cách làm kem chuối thơm ngon ngay tại nhà là điều hoàn toàn Bạn có thể làm được theo hướng dẫn của Chúng tôi%%%cách làm kem chuối, cach lam kem chuoi%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1455511860%%%vi%%%1%%%2%%%2%%%%%%,1398,6,356,', 'vi', 0, NULL, NULL),
(552, 'Giao lưu các Đầu bếp nổi tiếng thế giới', 'create', 'web_header', 1432, 1455941234, 'quocy', '', 'vi', 0, NULL, NULL),
(553, 'Giao lưu các Đầu bếp nổi tiếng thế giới', 'update', 'web_header', 1432, 1455941365, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1432%%%Giao lưu các Đầu bếp nổi tiếng thế giới%%%dau-bep-noi-tieng-the-gioi%%%%%%%%%Giao lưu các Đầu bếp nổi tiếng thế giới%%%Giao lưu các Đầu bếp nổi tiếng thế giới tại Trường NetSpace%%%đầu bếp nổi tiếng thế giới%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1455941040%%%vi%%%1%%%2%%%8%%%%%%,1412,', 'vi', 0, NULL, NULL),
(554, 'Giao lưu các Đầu bếp nổi tiếng thế giới', 'update', 'web_header', 1432, 1455941373, 'quocy', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1432%%%Giao lưu các Đầu bếp nổi tiếng thế giới%%%dau-bep-noi-tieng-the-gioi%%%%%%1455941242.jpg%%%Giao lưu các Đầu bếp nổi tiếng thế giới%%%Giao lưu các Đầu bếp nổi tiếng thế giới tại Trường NetSpace%%%đầu bếp nổi tiếng thế giới%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1455941040%%%vi%%%1%%%2%%%8%%%%%%,1412,', 'vi', 0, NULL, NULL),
(555, 'đinh văn đức', 'create', 'web_contact', 4362, 1455949532, 'customer', '', 'vi', 0, NULL, NULL),
(556, 'phạm thi thùy giang', 'create', 'web_contact', 4363, 1455960660, 'customer', '', 'vi', 0, NULL, NULL),
(557, 'Lê Ngọc Tuấn', 'update', 'mn_student', 2916, 1455990530, 'ngoctu', 'id,name,code_bk,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values2916%%%Lê Ngọc Tuấn%%%ĐBQT27-03%%%ĐBQT-15-27-6%%%0906864517%%%%%%112 CT c/x Bắc Hải, P15, Q10%%%1%%%17078400%%%giảm 20%,đóng 2 lần%%%1453396950%%%1%%%320', 'vi', 0, NULL, NULL),
(558, 'Phạm Hữu Hiếu', 'update', 'mn_student', 2931, 1455990551, 'ngoctu', 'id,name,code_bk,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values2931%%%Phạm Hữu Hiếu%%%ĐBQT27-8%%%ĐBQT-15-27-8%%%0977349443%%%%%%%%%1%%%719168400%%%Giảm 20%, muốn học cấp tốc%%%1453962910%%%1%%%320', 'vi', 0, NULL, NULL),
(559, 'Hà Thị Gấm', 'update', 'mn_student', 2930, 1455990565, 'ngoctu', 'id,name,code_bk,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values2930%%%Hà Thị Gấm%%%BCTP17-3%%%BCTP-16-17-2%%%01204710533%%%%%%%%%0%%%455562000%%%Đặt cọc giàm 20%%%%1453922601%%%1%%%329', 'vi', 0, NULL, NULL),
(560, 'lê hoàng anh', 'create', 'web_contact', 4364, 1456034682, 'customer', '', 'vi', 0, NULL, NULL),
(561, 'lê hoàng anh', 'create', 'web_contact', 4365, 1456034900, 'customer', '', 'vi', 0, NULL, NULL),
(562, 'nguyễn huỳnh phương lâm', 'create', 'web_contact', 4366, 1456034961, 'customer', '', 'vi', 0, NULL, NULL),
(563, 'vi thị sinh', 'create', 'web_contact', 4367, 1456046036, 'customer', '', 'vi', 0, NULL, NULL),
(564, 'vi thị sinh', 'create', 'web_contact', 4368, 1456046258, 'customer', '', 'vi', 0, NULL, NULL),
(565, 'Phan Trọng Bằng', 'create', 'web_contact', 4369, 1456077160, 'customer', '', 'vi', 0, NULL, NULL),
(566, 'Phan Trọng Bằng', 'create', 'web_contact', 4370, 1456077261, 'customer', '', 'vi', 0, NULL, NULL),
(567, 'Giao lưu các Đầu bếp nổi tiếng thế giới', 'update', 'web_header', 1432, 1456079925, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1432%%%Giao lưu các Đầu bếp nổi tiếng thế giới%%%dau-bep-noi-tieng-the-gioi%%%%%%1455941242.jpg%%%Giao lưu các Đầu bếp nổi tiếng thế giới%%%Giao lưu các Đầu bếp nổi tiếng thế giới tại Trường NetSpace%%%đầu bếp nổi tiếng thế giới%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1455941040%%%vi%%%1%%%2%%%8%%%%%%,1412,', 'vi', 0, NULL, NULL),
(568, 'Giao lưu các Đầu bếp nổi tiếng thế giới', 'update', 'web_header', 1432, 1456080168, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1432%%%Giao lưu các Đầu bếp nổi tiếng thế giới%%%dau-bep-noi-tieng-the-gioi%%%%%%1455941242.jpg%%%Giao lưu các Đầu bếp nổi tiếng thế giới%%%Giao lưu các Đầu bếp nổi tiếng thế giới tại Trường NetSpace%%%đầu bếp nổi tiếng thế giới%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1455941040%%%vi%%%1%%%2%%%8%%%%%%,1399,1412,', 'vi', 0, NULL, NULL),
(569, 'Làm bếp tại KS, NH 5 sao, nước ngoài', 'update', 'web_header', 40, 1456080474, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values40%%%Làm bếp tại KS, NH 5 sao, nước ngoài%%%cac-khoa-dao-tao-quoc-te%%%%%%1453974507.jpg%%%Làm bếp tại khách sạn, nhà hàng 5 sao, nước ngoài%%%Chương trình đào tạo làm bếp tại khách sạn, nhà hàng 5 sao, nước ngoài dạy nấu ăn theo tiêu chuẩn Quốc tế%%%học nấu ăn quốc tế,hoc nau an quoc te,làm bếp ở nước ngoài,lam bep o nuoc ngoai,lam bep tai khach san%%%%%%390%%%%%%%%%%%%%%%%%%1%%%%%%1453974480%%%vi%%%1%%%1%%%3', 'vi', 0, NULL, NULL),
(570, 'Nghề bếp cơ bản tại Nhà hàng', 'update', 'web_header', 22, 1456080540, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values22%%%Nghề bếp cơ bản tại Nhà hàng%%%nghe-bep-co-ban-tai-nha-hang%%%%%%1453974492.jpg%%%Chương trình đào tạo nghề bếp cơ bản tại Nhà hàng Việt Nam%%%Chương trình đào tạo nghề bếp cơ bản tại Nhà hàng Việt Nam nấu ăn chuyên nghiệp như bếp chính bếp Việt, bếp chính bếp Hoa, bếp chính bếp âu,...%%%nấu ăn chuyên nghiệp,nghề nấu ăn,nấu ăn,nau an,nghề bếp cơ bản,nghe bep co ban%%%%%%390%%%%%%%%%%%%%%%%%%2%%%%%%1453974480%%%vi%%%1%%%1%%%3', 'vi', 0, NULL, NULL),
(571, 'Nghề bếp nâng cao tại Nhà hàng', 'update', 'web_header', 225, 1456080567, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values225%%%Nghề bếp nâng cao tại Nhà hàng%%%nghe-bep-nang-cao-tai-nha-hang%%%%%%1453974651.jpg%%%Chương trình đào tạo nghề bếp nâng cao tại Nhà hàng Việt Nam%%%Chương trình đào tạo nghề bếp cơ bản tại Nhà hàng Việt Nam nấu ăn chuyên nghiệp như bếp chính bếp Việt, bếp chính bếp Hoa, bếp chính bếp âu,...%%%nghề bếp nâng cao,nghe bep nang cao,bếp nâng cao,bep nang cao%%%%%%390%%%%%%%%%%%%%%%%%%3%%%%%%1453974480%%%vi%%%1%%%1%%%3', 'vi', 0, NULL, NULL),
(572, 'Nghề bếp', 'update', 'web_header', 390, 1456080662, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values390%%%Nghề bếp%%%hoc-nau-an%%%%%%1453974809.jpg%%%Học nấu ăn - Học nghề bếp%%%Netspace đào tạo các khóa học nấu ăn từ cơ bản đến nâng cao, học làm bếp tại nhà hàng và cả nước ngoài.%%%học nghề bếp,học nấu ăn,hoc nghe bep,hoc nau an,nghề bếp,nghe bep%%%%%%0%%%%%%%%%%%%%%%%%%53%%%%%%1453974480%%%vi%%%1%%%1%%%3%%%,2,', 'vi', 0, NULL, NULL),
(573, 'Giao lưu các Đầu bếp nổi tiếng thế giới', 'update', 'web_header', 1432, 1456080744, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1432%%%Giao lưu các Đầu bếp nổi tiếng thế giới%%%dau-bep-noi-tieng-the-gioi%%%%%%1455941242.jpg%%%Giao lưu các Đầu bếp nổi tiếng thế giới%%%Giao lưu các Đầu bếp nổi tiếng thế giới tại Trường NetSpace%%%đầu bếp nổi tiếng thế giới%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1455941040%%%vi%%%1%%%2%%%8%%%%%%,1399,1412,', 'vi', 0, NULL, NULL),
(574, 'Học quản lý', 'update', 'web_header', 209, 1456081170, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values209%%%Học quản lý%%%hoc-quan-ly%%%%%%1453974635.jpg%%%Học quản lý - Nghề quản lý%%%Trường dạy nghề Ẩm Thực Netspace chuyên đào tạo các khóa học quản lý nhà hàng, khởi nghiệp kinh doanh, học quản lý mô hình cafe%%%học quản lý,nghề quản lý,hoc quan ly,nghe quan ly%%%%%%0%%%%%%%%%%%%%%%%%%57%%%%%%1453974480%%%vi%%%1%%%1%%%3%%%,2,', 'vi', 0, NULL, NULL),
(575, 'Bếp trưởng bếp Việt', 'update', 'web_header', 411, 1456081229, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values411%%%Bếp trưởng bếp Việt%%%bep-truong%%%%%%1432362889.jpg%%%Học quản lý bếp trưởng bếp Việt%%%NetSpace đã xây dựng chương trình Bếp trưởng bếp Việt chuyên nghiệp dành cho các bạn có đam mê và mong muốn phát triển trong ngành bếp%%%bếp trưởng bếp việt,bep truong bep viet,học bếp trưởng,hoc truong bep%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1432362540%%%vi%%%1%%%2%%%3%%%%%%,209,', 'vi', 0, NULL, NULL),
(576, 'Quản Lý Nhà Hàng', 'update', 'web_header', 683, 1456081233, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values683%%%Quản Lý Nhà Hàng%%%quan-ly-nha-hang%%%%%%1432363161.jpg%%%Quản lý nhà hàng - Khởi nghiệp Kinh doanh mô hình quán ăn, quán nhậu, nhà hàng, quán cafe...%%%Chương trình đào tạo Quản lý nhà hàng - Khởi nghiệp Kinh doanh bạn sẽ học học quản lý mô hình cafe, học quản lý hệ thống chuỗi%%%quản lý nhà hàng,quan ly nha hang,hoc quan ly nha hang%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1432362540%%%vi%%%1%%%2%%%3%%%%%%,209,', 'vi', 0, NULL, NULL),
(577, 'Khóa học quản lý Nhà Hàng dành cho Người làm Chủ', 'update', 'web_header', 486, 1456081533, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values486%%%Khóa học quản lý Nhà Hàng dành cho Người làm Chủ%%%quan-ly-nha-hang-350%%%%%%%%%Khóa học quản lý Nhà Hàng dành cho Người làm Chủ%%%Chủ Nhà hàng đòi hỏi phải có kiến thức về quản lý, có nghiệp vụ chuyên môn, có nhiều kỹ năng làm việc và am hiểu về ẩm thực.%%%Khóa học quản lý Nhà Hàng dành cho Người làm Chủ,học quản Lý Nhà Hàng,hoc quan ly nha hang%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1432362540%%%vi%%%0%%%2%%%3%%%%%%,209,', 'vi', 0, NULL, NULL),
(578, 'Chuyên gia pha chế', 'update', 'web_header', 486, 1456082120, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values486%%%Chuyên gia pha chế%%%chuyen-gia-pha-che%%%%%%%%%Khóa học chuyên gia pha chế | Chuyen gia pha che%%%Khóa học chuyên gia pha chế bạn sẽ học hơn 30 dòng thức uống với 100 loại thức uống khác nhau từ thông dụng đến những nước uống xu thế hiện đại thế giới%%%chuyên gia pha chế,chuyen gia pha che,pha che%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1432362540%%%vi%%%0%%%2%%%3%%%%%%,209,', 'vi', 0, NULL, NULL),
(579, 'Chuyên gia pha chế', 'update', 'web_header', 486, 1456082130, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values486%%%Chuyên gia pha chế%%%chuyen-gia-pha-che%%%%%%1456081577.jpg%%%Khóa học chuyên gia pha chế | Chuyen gia pha che%%%Khóa học chuyên gia pha chế bạn sẽ học hơn 30 dòng thức uống với 100 loại thức uống khác nhau từ thông dụng đến những nước uống xu thế hiện đại thế giới%%%chuyên gia pha chế,chuyen gia pha che,pha che%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1432362540%%%vi%%%0%%%2%%%3%%%%%%,209,', 'vi', 0, NULL, NULL),
(580, 'Chuyên gia pha chế', 'update', 'web_header', 486, 1456082187, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values486%%%Chuyên gia pha chế%%%chuyen-gia-pha-che%%%%%%1456081577.jpg%%%Khóa học chuyên gia pha chế | Chuyen gia pha che%%%Khóa học chuyên gia pha chế bạn sẽ học hơn 30 dòng thức uống với 100 loại thức uống khác nhau từ thông dụng đến những nước uống xu thế hiện đại thế giới%%%chuyên gia pha chế,chuyen gia pha che,pha che%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1432362540%%%vi%%%1%%%2%%%3%%%%%%,209,', 'vi', 0, NULL, NULL),
(581, 'Chuyên gia pha chế', 'update', 'web_header', 486, 1456082199, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values486%%%Chuyên gia pha chế%%%chuyen-gia-pha-che%%%%%%1456081577.jpg%%%Khóa học chuyên gia pha chế | Chuyen gia pha che%%%Khóa học chuyên gia pha chế bạn sẽ học hơn 30 dòng thức uống với 100 loại thức uống khác nhau từ thông dụng đến những nước uống xu thế hiện đại thế giới%%%chuyên gia pha chế,chuyen gia pha che,pha che%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1432362540%%%vi%%%1%%%2%%%3%%%%%%,209,', 'vi', 0, NULL, NULL),
(582, 'Chuyên gia pha chế', 'update', 'web_header', 486, 1456082218, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values486%%%Chuyên gia pha chế%%%chuyen-gia-pha-che%%%%%%1456081577.jpg%%%Khóa học chuyên gia pha chế | Chuyen gia pha che%%%Khóa học chuyên gia pha chế bạn sẽ học hơn 30 dòng thức uống với 100 loại thức uống khác nhau từ thông dụng đến những nước uống xu thế hiện đại thế giới%%%chuyên gia pha chế,chuyen gia pha che,pha che%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1432362540%%%vi%%%1%%%2%%%3%%%%%%,209,', 'vi', 0, NULL, NULL),
(583, 'Chuyên gia pha chế', 'update', 'web_header', 486, 1456082286, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values486%%%Chuyên gia pha chế%%%chuyen-gia-pha-che%%%%%%1456081577.jpg%%%Khóa học chuyên gia pha chế | Chuyen gia pha che%%%Khóa học chuyên gia pha chế bạn sẽ học hơn 30 dòng thức uống với 100 loại thức uống khác nhau từ thông dụng đến những nước uống xu thế hiện đại thế giới%%%chuyên gia pha chế,chuyen gia pha che,pha che%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1432362540%%%vi%%%1%%%2%%%3%%%%%%,209,', 'vi', 0, NULL, NULL),
(584, 'Nguyễn Thị Ngọc Liễu', 'create', 'mn_student', 2945, 1456082339, 'tuongvy', '', 'vi', 0, NULL, NULL),
(585, 'Chuyên gia làm bánh', 'create', 'web_header', 1433, 1456082485, 'admin', '', 'vi', 0, NULL, NULL),
(586, 'Chuyên gia làm bánh', 'update', 'web_header', 1433, 1456082924, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values1433%%%Chuyên gia làm bánh%%%chuyen-gia-lam-banh%%%%%%%%%Khóa học chuyên gia làm bánh | Chuyen gia lam banh%%%Chuyên gia làm bánh là chương trình đào tạo đặc biệt sau khi hoàn thành khóa học bạn sẽ có một nghề để làm việc hoặc khởi nghiệp các mô hình kinh doanh về bánh%%%chuyên gia làm bánh,chuyen gia lam banh,lam banh%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1456082280%%%vi%%%1%%%2%%%3%%%%%%,209,', 'vi', 0, NULL, NULL),
(587, 'Chuyên gia pha chế', 'update', 'web_header', 486, 1456083097, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values486%%%Chuyên gia pha chế%%%chuyen-gia-pha-che%%%%%%1456081577.jpg%%%Khóa học chuyên gia pha chế | Chuyen gia pha che%%%Khóa học chuyên gia pha chế bạn sẽ học hơn 30 dòng thức uống với 100 loại thức uống khác nhau từ thông dụng đến những nước uống xu thế hiện đại thế giới%%%chuyên gia pha chế,chuyen gia pha che,pha che%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1453512600%%%vi%%%1%%%2%%%3%%%%%%,209,', 'vi', 0, NULL, NULL),
(588, 'Tuyển dụng', 'update', 'web_header', 57, 1456083266, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values57%%%Tuyển dụng%%%cung-ung-va-tuyen-dung-nhan-su%%%%%%1453974521.png%%%Tuyển dụng Đầu Bếp, Pha Chế%%%Trường NETSPACE cung ứng và tuyển dụng nhân sự Đầu Bếp - Pha Chế trong lĩnh vực nhà hàng, chuỗi quán ăn, bar, cà phê, karaoke...%%%tuyển dụng đầu bếp,tuyển dụng pha chế,tuyển dụng nhân sự,nộp hồ sơ tuyển dụng,tuyen dung dau bep,tuyen dung pha che%%%%%%0%%%%%%%%%%%%%%%%%%35%%%%%%1453974480%%%vi%%%1%%%1%%%7%%%,13,1,', 'vi', 0, NULL, NULL),
(589, 'Tuyển dụng', 'update', 'web_header', 57, 1456083284, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values57%%%Tuyển dụng%%%cung-ung-va-tuyen-dung-nhan-su%%%%%%1453974521.png%%%Tuyển dụng Đầu Bếp, Pha Chế%%%Trường NETSPACE cung ứng và tuyển dụng nhân sự Đầu Bếp - Pha Chế trong lĩnh vực nhà hàng, chuỗi quán ăn, bar, cà phê, karaoke. Nhà hàng, quán ăn có nhu cầu tuyển dụng vui lòng gửi thông tin tuyển dụng đến mail support@dayamthuc.vn%%%tuyển dụng đầu bếp,tuyển dụng pha chế,tuyển dụng nhân sự,nộp hồ sơ tuyển dụng,tuyen dung dau bep,tuyen dung pha che%%%%%%0%%%%%%%%%%%%%%%%%%35%%%%%%1453974480%%%vi%%%1%%%1%%%7%%%,13,1,', 'vi', 0, NULL, NULL),
(590, 'Tuyển dụng', 'update', 'web_header', 57, 1456083293, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values57%%%Tuyển dụng%%%cung-ung-va-tuyen-dung-nhan-su%%%%%%1453974521.png%%%Tuyển dụng Đầu Bếp, Pha Chế%%%Trường NETSPACE cung ứng và tuyển dụng nhân sự Đầu Bếp - Pha Chế trong lĩnh vực nhà hàng, chuỗi quán ăn, bar, cà phê, karaoke. Nhà hàng, quán ăn có nhu cầu tuyển dụng vui lòng gửi thông tin tuyển dụng đến mail &lt;b&gt;support@dayamthuc.vn&lt;/b&gt;%%%tuyển dụng đầu bếp,tuyển dụng pha chế,tuyển dụng nhân sự,nộp hồ sơ tuyển dụng,tuyen dung dau bep,tuyen dung pha che%%%%%%0%%%%%%%%%%%%%%%%%%35%%%%%%1453974480%%%vi%%%1%%%1%%%7%%%,13,1,', 'vi', 0, NULL, NULL),
(591, 'Nguyễn Thị Ngọc Liễu', 'update', 'mn_student', 2945, 1456091622, 'ngoctu', 'id,name,code_bk,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values2945%%%Nguyễn Thị Ngọc Liễu%%%%%%BCBV-16-50-3%%%01688881611%%%%%%A3/056 Nguyễn Huệ 1, Quang Trung, Thống Nhất, Đồng Nai%%%0%%%0%%%giảm 15%%%%1456082220%%%1%%%328', 'vi', 0, NULL, NULL),
(592, '', 'create', 'web_users_role', 156, 1456109165, 'admin', '', 'vi', 0, NULL, NULL),
(593, '', 'create', 'web_users_role', 157, 1456109165, 'admin', '', 'vi', 0, NULL, NULL),
(594, '', 'create', 'web_users_role', 158, 1456109165, 'admin', '', 'vi', 0, NULL, NULL),
(595, 'Phạm Thanh Toàn', 'create', 'mn_student', 2946, 1456113708, 'ngocthao', '', 'vi', 0, NULL, NULL),
(596, 'Ngân', 'create', 'mn_student', 2947, 1456114423, 'phuongthao', '', 'vi', 0, NULL, NULL),
(597, 'Nguyễn Thị Bích Thủy', 'create', 'mn_student', 2948, 1456114551, 'phuongthao', '', 'vi', 0, NULL, NULL),
(598, 'Nguyễn Thị Bích Thủy', 'update', 'mn_student', 2948, 1456114566, 'phuongthao', 'id,name,code_bk,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values2948%%%Nguyễn Thị Bích Thủy%%%%%%PCBI16-05%%%0939466183%%%%%%%%%0%%%0%%%Giảm 5%%%%1456114380%%%1%%%67', 'vi', 0, NULL, NULL),
(599, 'Ngân', 'update', 'mn_student', 2947, 1456116085, 'phuongthao', 'id,name,code_bk,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values2947%%%Ngân%%%%%%PCBI73-06%%%01218575837%%%%%%%%%0%%%0%%%Giảm 5%%%%1456114200%%%1%%%330', 'vi', 0, NULL, NULL),
(600, 'Phạm Thị Hòa', 'update', 'mn_student', 2947, 1456116444, 'phuongthao', 'id,name,code_bk,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values2947%%%Phạm Thị Hòa%%%%%%PCBI73-06%%%01218575837%%%%%%%%%0%%%0%%%Giảm 5%%%%1456114200%%%1%%%330', 'vi', 0, NULL, NULL),
(601, 'Phạm Hữu Hiếu', 'create', 'mn_student', 2949, 1456116700, 'phuongthao', '', 'vi', 0, NULL, NULL),
(602, 'Phạm Hữu Hiếu', 'update', 'mn_student', 2949, 1456117323, 'phuongthao', 'id,name,code_bk,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values2949%%%Phạm Hữu Hiếu%%%%%%ĐBQT-27-8%%%0977349443%%%%%%%%%1%%%0%%%Giảm 20%, đóng 1 lần học phí%%%1456116540%%%1%%%320', 'vi', 0, NULL, NULL),
(603, 'Nguyễn Thành Đạt', 'create', 'mn_student', 2950, 1456117604, 'phuongthao', '', 'vi', 0, NULL, NULL),
(604, 'Đinh Lê Thảo Vy', 'create', 'mn_student', 2951, 1456118491, 'phuongthao', '', 'vi', 0, NULL, NULL),
(605, 'Đinh Lê Thảo Vy', 'update', 'mn_student', 2951, 1456118525, 'phuongthao', 'id,name,code_bk,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values2951%%%Đinh Lê Thảo Vy%%%%%%BCBV-49-14%%%0965717199%%%%%%18/24D Trần Quang Diệu, Q3,TPHCM%%%0%%%0%%%Giảm 5% học phí%%%1456117680%%%1%%%327', 'vi', 0, NULL, NULL),
(606, 'Phan Đình Trúc Vy', 'create', 'mn_student', 2952, 1456119510, 'phuongthao', '', 'vi', 0, NULL, NULL),
(607, 'nguyen thi lien', 'create', 'web_contact', 4371, 1456119597, 'customer', '', 'vi', 0, NULL, NULL),
(608, 'Trần Nguyễn Nguyên Thanh', 'create', 'mn_student', 2953, 1456119738, 'phuongthao', '', 'vi', 0, NULL, NULL),
(609, 'Nguyễn Thanh Hải', 'create', 'mn_student', 2954, 1456120079, 'phuongthao', '', 'vi', 0, NULL, NULL),
(610, 'Nguyễn Thanh Hải', 'update', 'mn_student', 2954, 1456120122, 'phuongthao', 'id,name,code_bk,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values2954%%%Nguyễn Thanh Hải%%%%%%BCBV-49-16%%%01864527758%%%%%%59/6 KP6, P Tân Biên, Biên Hòa, Đồng Nai%%%1%%%0%%%Giảm 5%, đóng lần 1: 7.250%%%1456119780%%%1%%%327', 'vi', 0, NULL, NULL),
(611, 'Trần Nguyễn Nguyên Thanh', 'update', 'mn_student', 2953, 1456130904, 'ngochuong', 'id,name,code_bk,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values2953%%%Trần Nguyễn Nguyên Thanh%%%%%%BCBV-49-15%%%0982113681%%%%%%10/5 Trần Nhật Duật,P Tân Định, Q1, TPHCM%%%1%%%0%%%Giảm 15%, Đóng học phí 1 lần%%%1456119540%%%1%%%327', 'vi', 0, NULL, NULL),
(612, 'tran quoc an', 'create', 'web_contact', 4372, 1456139548, 'customer', '', 'vi', 0, NULL, NULL),
(613, 'trần quốc An', 'create', 'web_contact', 4373, 1456139764, 'customer', '', 'vi', 0, NULL, NULL),
(614, 'Lê Thị Ngọc Điệp', 'create', 'mn_student', 2955, 1456165006, 'tuongvy', '', 'vi', 0, NULL, NULL),
(615, 'Trần Thị Thùy Linh', 'create', 'mn_student', 2956, 1456165116, 'tuongvy', '', 'vi', 0, NULL, NULL),
(616, 'le anh mai chi', 'create', 'web_contact', 4374, 1456165239, 'customer', '', 'vi', 0, NULL, NULL),
(617, 'Học quản lý', 'update', 'web_header', 395, 1456165535, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values395%%%Học quản lý%%%home-hoc-quan-ly%%%hoc-quan-ly%%%1453974849.jpg%%%Các khóa học quản lý chuyên nghiệp%%%Quản lý Nhà hàng được Netspace thiết kế cho các bạn yêu thích kinh doanh ẩm thực, bạn sẽ tự tin mở Nhà hàng với khả năng thành công cao.%%%học quản lý%%%%%%385%%%%%%%%%%%%%%%%%%5%%%%%%1453974480%%%vi%%%1%%%1%%%0', 'vi', 0, NULL, NULL),
(618, 'Bùi Thị Thúy Hằng', 'create', 'mn_student', 2957, 1456168296, 'ngoctu', '', 'vi', 0, NULL, NULL),
(619, 'Nguyễn Thị Kiều Anh', 'create', 'mn_student', 2958, 1456168410, 'ngoctu', '', 'vi', 0, NULL, NULL),
(620, 'Huỳnh Mỹ Thảo', 'create', 'mn_student', 2959, 1456168647, 'ngoctu', '', 'vi', 0, NULL, NULL),
(621, 'Võ Thùy Dung', 'create', 'mn_student', 2960, 1456168751, 'ngoctu', '', 'vi', 0, NULL, NULL),
(622, 'Nguyễn Văn Vững', 'create', 'mn_student', 2961, 1456168910, 'ngoctu', '', 'vi', 0, NULL, NULL),
(623, 'Nguyễn Thị Hương', 'create', 'mn_student', 2962, 1456173018, 'ngochuong', '', 'vi', 0, NULL, NULL),
(624, 'Nguyễn Thị Hương', 'update', 'mn_student', 2962, 1456173031, 'ngochuong', 'id,name,code_bk,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values2962%%%Nguyễn Thị Hương%%%%%%BCBV-16-49-1%%%0937549094%%%%%%%%%0%%%0%%%giảm 5%, đóng lần 1%%%1456172880%%%1%%%327', 'vi', 0, NULL, NULL),
(625, 'Nguyễn Như Diễm Trân', 'create', 'mn_student', 2963, 1456173806, 'ngoctu', '', 'vi', 0, NULL, NULL),
(626, 'Lê Hùng Xuân', 'create', 'mn_student', 2964, 1456174457, 'chucquynh', '', 'vi', 0, NULL, NULL),
(627, 'Lê Hùng Xuân', 'update', 'mn_student', 2964, 1456174840, 'chucquynh', 'id,name,code_bk,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values2964%%%Lê Hùng Xuân%%%%%%BCBV-50-3%%%01882824746%%%%%%302 Đoàn Xuân Bơ, F.10,Q.4%%%1%%%0%%%Phụ bếp%%%1456174260%%%1%%%328', 'vi', 0, NULL, NULL),
(628, 'hanh', 'create', 'web_contact', 4375, 1456175139, 'customer', '', 'vi', 0, NULL, NULL),
(629, 'Phạm Thị Tuyết Phượng', 'create', 'web_contact', 4376, 1456177913, 'customer', '', 'vi', 0, NULL, NULL),
(630, 'Dang Ngoc Thanh', 'create', 'web_contact', 4377, 1456178991, 'customer', '', 'vi', 0, NULL, NULL),
(631, 'Hồ Thị Hoài Như', 'create', 'web_contact', 4378, 1456186955, 'customer', '', 'vi', 0, NULL, NULL),
(632, 'Huỳnh Công Phúc', 'create', 'web_contact', 4379, 1456189557, 'customer', '', 'vi', 0, NULL, NULL),
(633, 'Nguyễn Hoàng Tuấn', 'create', 'mn_student', 2965, 1456201183, 'ngocthao', '', 'vi', 0, NULL, NULL),
(634, 'Nguyễn Hoàng Tuấn', 'update', 'mn_student', 2965, 1456201218, 'ngocthao', 'id,name,code_bk,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values2965%%%Nguyễn Hoàng Tuấn%%%%%%BCBV-49-11%%%0909736763%%%%%%90A Thanh Đa, P 27, Q Bình Thạnh, Tphcm%%%1%%%0%%%giảm 5%%%%1456200840%%%1%%%327', 'vi', 0, NULL, NULL),
(635, 'Nguyễn Hoàng Tuấn', 'update', 'mn_student', 2965, 1456201240, 'ngocthao', 'id,name,code_bk,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values2965%%%Nguyễn Hoàng Tuấn%%%%%%BCBV-49-11%%%0909736763%%%%%%90A Thanh Đa, P 27, Q Bình Thạnh, Tphcm%%%1%%%0%%%PHỤ BẾP (giảm 5%)%%%1456200840%%%1%%%327', 'vi', 0, NULL, NULL),
(636, 'Trương Công Đại', 'create', 'mn_student', 2966, 1456249404, 'tuongvy', '', 'vi', 0, NULL, NULL),
(637, 'Đinh Lê Thảo Vy', 'update', 'mn_student', 2951, 1456252674, 'ngoctu', 'id,name,code_bk,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values2951%%%Đinh Lê Thảo Vy%%%%%%BCBV-49-14%%%0965717199%%%%%%18/24D Trần Quang Diệu, Q3,TPHCM%%%0%%%0%%%Giảm 5% học phí, học BVCB ghép BCBV-K49%%%1456117680%%%1%%%327', 'vi', 0, NULL, NULL),
(638, 'Bùi Thị Thúy Hằng', 'update', 'mn_student', 2957, 1456252704, 'ngoctu', 'id,name,code_bk,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values2957%%%Bùi Thị Thúy Hằng%%%%%%BCBV49-8%%%01684685750%%%%%%%%%0%%%0%%%giảm 5%, học phụ bếp%%%1456168140%%%1%%%327', 'vi', 0, NULL, NULL),
(639, 'Nguyễn Hà Trung', 'update', 'mn_student', 2949, 1456252732, 'ngoctu', 'id,name,code_bk,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values2949%%%Nguyễn Hà Trung%%%%%%BCBV-49-13%%%0933776067%%%%%%679 Đường 3/2, P6, Q10, TPHCM%%%1%%%0%%%Giảm 5%, Học Bếp Việt Căn Bản ghép BCBV-49%%%1456116540%%%1%%%327', 'vi', 0, NULL, NULL),
(640, 'Phạm Thanh Toàn', 'update', 'mn_student', 2946, 1456252746, 'ngoctu', 'id,name,code_bk,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values2946%%%Phạm Thanh Toàn%%%%%%BCBV-49-05%%%0986607117%%%%%%Biên Hòa - Đồng Nai%%%1%%%0%%%Giảm 15% học phí%%%1456113480%%%1%%%327', 'vi', 0, NULL, NULL),
(641, 'Nguyễn Ngọc Trâm', 'update', 'mn_student', 2934, 1456252758, 'ngoctu', 'id,name,code_bk,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values2934%%%Nguyễn Ngọc Trâm%%%BCBV49-02%%%BCBV49-2%%%01212472473%%%%%%%%%0%%%0%%%Giảm 20% học phí%%%1454049728%%%1%%%327', 'vi', 0, NULL, NULL),
(642, 'Nguyễn Ngọc Linh', 'create', 'web_contact', 4380, 1456253615, 'customer', '', 'vi', 0, NULL, NULL),
(643, 'English', 'update', 'web_language', 2, 1456254381, 'admin', 'id,name,code,_order,statusfields%%%values2%%%English%%%en%%%2%%%1', 'en', 0, NULL, NULL),
(644, 'Tạ Thị Thúy Hiền', 'create', 'web_contact', 4381, 1456258076, 'customer', '', 'vi', 0, NULL, NULL),
(645, 'Nguyễn Ngọc Quỳnh', 'create', 'web_contact', 4382, 1456261196, 'customer', '', 'vi', 0, NULL, NULL),
(646, 'Nguyễn Phúc Đăng Triều', 'create', 'mn_student', 2967, 1456270831, 'ngoctu', '', 'vi', 0, NULL, NULL),
(647, 'Nguyễn Văn Viên', 'create', 'mn_student', 2968, 1456271144, 'ngoctu', '', 'vi', 0, NULL, NULL),
(648, 'Nguyễn Thành Đạt', 'update', 'mn_student', 2950, 1456276577, 'ngoctu', 'id,name,code_bk,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values2950%%%Nguyễn Thành Đạt%%%%%%PCBI-19-20%%%016631122422%%%%%%%%%1%%%0%%%Giảm 5% học phí%%%1456117440%%%1%%%76', 'vi', 0, NULL, NULL),
(649, 'Barista Cà Phê - Khóa 15', 'create', 'mn_class', 335, 1456277223, 'ngoctu', '', 'vi', 0, NULL, NULL),
(650, 'Barista Cà Phê - Khóa 15', 'update', 'mn_class', 335, 1456277256, 'ngoctu', 'id,name,code_bk,code,date_opening,notes,datetime,status,course_idfields%%%values335%%%Barista Cà Phê - Khóa 15%%%%%%BRTCF15%%%1456830000%%%%%%1456277100%%%1%%%20', 'vi', 0, NULL, NULL),
(651, 'Nguyễn Thị Bích Thủy', 'update', 'mn_student', 2948, 1456277306, 'phuongthao', 'id,name,code_bk,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values2948%%%Nguyễn Thị Bích Thủy%%%%%%PCBI16-05%%%0939466183%%%%%%%%%0%%%0%%%Giảm 5%%%%1456114380%%%1%%%67', 'vi', 0, NULL, NULL),
(652, 'Mở quán ăn Tháng 2/2016', 'create', 'mn_class', 336, 1456277426, 'ngoctu', '', 'vi', 0, NULL, NULL),
(653, 'Lương Phạm Hữu Vinh', 'create', 'mn_student', 2969, 1456289915, 'phuongthao', '', 'vi', 0, NULL, NULL),
(654, 'Nguyễn Ngọc Triệu Quang', 'create', 'mn_student', 2970, 1456290519, 'phuongthao', '', 'vi', 0, NULL, NULL),
(655, 'Phạm Thị Hồng Loan', 'create', 'mn_student', 2971, 1456291164, 'phuongthao', '', 'vi', 0, NULL, NULL),
(656, 'Đỗ Nguyễn Minh Hà', 'create', 'mn_student', 2972, 1456291280, 'ngocthao', '', 'vi', 0, NULL, NULL),
(657, 'Đỗ Nguyễn Minh Hà', 'update', 'mn_student', 2972, 1456291397, 'ngocthao', 'id,name,code_bk,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values2972%%%Đỗ Nguyễn Minh Hà%%%%%%BCBV-49-20%%%01204598758%%%%%%12/1 Khu Phố 2, Thị Trấn HócMôn, Tphcm%%%0%%%0%%%giảm 5% ( đóng 2l)%%%1456290060%%%1%%%327', 'vi', 0, NULL, NULL),
(658, 'Đỗ Nguyễn Minh Hà', 'create', 'mn_student', 2973, 1456291551, 'ngocthao', '', 'vi', 0, NULL, NULL),
(659, 'Đào nguyên thùy dung', 'create', 'web_contact', 4383, 1456300725, 'customer', '', 'vi', 0, NULL, NULL),
(660, 'Barista Cà Phê Khóa 15', 'update', 'mn_class', 335, 1456341279, 'admin', 'id,name,code_bk,code,date_opening,notes,datetime,status,course_idfields%%%values335%%%Barista Cà Phê Khóa 15%%%%%%BRTCF15%%%1456830000%%%%%%1456277100%%%1%%%20', 'vi', 0, NULL, NULL),
(661, 'Mở quán ăn Tháng 2/2016', 'update', 'mn_class', 336, 1456341300, 'admin', 'id,name,code_bk,code,date_opening,notes,datetime,status,course_idfields%%%values336%%%Mở quán ăn Tháng 2/2016%%%%%%MQA02%%%1456246800%%%%%%1456277340%%%1%%%5', 'vi', 0, NULL, NULL),
(662, 'Mở quán ăn - Tháng 02', 'update', 'mn_class', 336, 1456342950, 'tuongvy', 'id,name,code_bk,code,date_opening,notes,datetime,status,course_idfields%%%values336%%%Mở quán ăn - Tháng 02%%%%%%MQA-16-02%%%1456246800%%%%%%1456277340%%%1%%%5', 'vi', 0, NULL, NULL),
(663, 'Mở Quán Ăn Tháng 01/2016', 'update', 'mn_class', 322, 1456343044, 'tuongvy', 'id,name,code_bk,code,date_opening,notes,datetime,status,course_idfields%%%values322%%%Mở Quán Ăn Tháng 01/2016%%%MQA2016%%%MQA-16-01%%%1454691600%%%%%%1451867590%%%1%%%5', 'vi', 0, NULL, NULL),
(664, 'Đỗ Nguyễn Minh Hà', 'update', 'mn_student', 2973, 1456347487, 'admin', 'id,name,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values2973%%%Đỗ Nguyễn Minh Hà%%%ĐBQT-15-27-17%%%01204598758%%%%%%12/1 KP2, Thị Trấn Hóc Môn , Tphcm%%%0%%%0%%%giảm 5% ( đóng 2l)%%%1456291380%%%1%%%320', 'vi', 0, NULL, NULL),
(665, 'Đỗ Nguyễn Minh Hà', 'update', 'mn_student', 2973, 1456347614, 'admin', 'id,name,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values2973%%%Đỗ Nguyễn Minh Hà%%%ĐBQT-15-27-17%%%01204598758%%%%%%12/1 KP2, Thị Trấn Hóc Môn , Tphcm%%%0%%%0%%%giảm 5% ( đóng 2l)%%%1456291380%%%1%%%320', 'vi', 0, NULL, NULL),
(666, 'Đỗ Nguyễn Minh Hà', 'update', 'mn_student', 2973, 1456347642, 'admin', 'id,name,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values2973%%%Đỗ Nguyễn Minh Hà%%%ĐBQT-15-27-17%%%01204598758%%%%%%12/1 KP2, Thị Trấn Hóc Môn , Tphcm%%%0%%%-310287600%%%giảm 5% ( đóng 2l)%%%1456291380%%%1%%%320', 'vi', 0, NULL, NULL),
(667, 'Đỗ Nguyễn Minh Hà', 'update', 'mn_student', 2973, 1456347819, 'admin', 'id,name,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values2973%%%Đỗ Nguyễn Minh Hà%%%ĐBQT-15-27-17%%%01204598758%%%%%%12/1 KP2, Thị Trấn Hóc Môn , Tphcm%%%0%%%609872400%%%giảm 5% ( đóng 2l)%%%1456291380%%%1%%%320', 'vi', 0, NULL, NULL),
(668, 'Nguyen van thong', 'create', 'web_contact', 4384, 1456357396, 'customer', '', 'vi', 0, NULL, NULL),
(669, 'Nguyễn Hữu Trí', 'create', 'mn_student', 2974, 1456359637, 'chucquynh', '', 'vi', 0, NULL, NULL),
(670, 'Nguyễn Hữu Trí', 'update', 'mn_student', 2974, 1456359647, 'chucquynh', 'id,name,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values2974%%%Nguyễn Hữu Trí%%%ĐBQT-15-27-18%%%0939029049%%%%%%An Thạch, Mỹ An Hưng B, Lấp Vò, Đồng Tháp%%%1%%%819824400%%%Giảm 10% học phí%%%1456359540%%%1%%%320', 'vi', 0, NULL, NULL),
(671, 'Nguyễn Tiến Tài', 'create', 'mn_student', 2975, 1456364243, 'phuongthao', '', 'vi', 0, NULL, NULL),
(672, 'Nguyễn Hữu Điền', 'create', 'mn_student', 2976, 1456364403, 'phuongthao', '', 'vi', 0, NULL, NULL),
(673, 'Pha chế Barista - Khóa 74', 'create', 'mn_class', 337, 1456392565, 'ngoctu', '', 'vi', 0, NULL, NULL),
(674, 'Pha chế Barista - Khóa 74', 'update', 'mn_class', 337, 1456392650, 'ngoctu', 'id,name,code_bk,code,date_opening,notes,datetime,status,course_idfields%%%values337%%%Pha chế Barista - Khóa 74%%%%%%PCBI74%%%1456830000%%%%%%1456392180%%%1%%%8', 'vi', 0, NULL, NULL),
(675, 'Barista - Khóa 74', 'update', 'mn_class', 337, 1456392698, 'ngoctu', 'id,name,code_bk,code,date_opening,notes,datetime,status,course_idfields%%%values337%%%Barista - Khóa 74%%%%%%PCBI74%%%1456830000%%%%%%1456392180%%%1%%%8', 'vi', 0, NULL, NULL),
(676, 'Nguyen Van hung', 'create', 'web_contact', 4385, 1456393959, 'customer', '', 'vi', 0, NULL, NULL),
(677, 'tran van hung', 'create', 'web_contact', 4386, 1456395596, 'customer', '', 'vi', 0, NULL, NULL),
(678, 'Hồ Tiến Lợi', 'create', 'mn_student', 2977, 1456401842, 'ngocthao', '', 'vi', 0, NULL, NULL),
(679, 'Huỳnh Tấn Vinh', 'create', 'mn_student', 2978, 1456403914, 'phuongthao', '', 'vi', 0, NULL, NULL),
(680, 'Trần Thị Yến Nhi', 'create', 'mn_student', 2979, 1456404466, 'phuongthao', '', 'vi', 0, NULL, NULL),
(681, 'Đặng Thị Hồng Thoa', 'create', 'mn_student', 2980, 1456405360, 'phuongthao', '', 'vi', 0, NULL, NULL),
(682, 'Trần Thị Yến Nhi', 'update', 'mn_student', 2979, 1456405380, 'phuongthao', 'id,name,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values2979%%%Trần Thị Yến Nhi%%%PCBI74-2%%%0945354829%%%%%%Thành phố hồ chi minh%%%1%%%853779600%%%Giảm 15%,đóng laanf1 500k%%%1456403880%%%1%%%337', 'vi', 0, NULL, NULL),
(683, 'Lưu Thanh Trang', 'create', 'mn_student', 2981, 1456449087, 'ngoctu', '', 'vi', 0, NULL, NULL),
(684, 'Hoàng Khai Tâm', 'create', 'mn_student', 2982, 1456449847, 'tuongvy', '', 'vi', 0, NULL, NULL),
(685, 'Dương Trường Linh', 'create', 'mn_student', 2983, 1456449926, 'tuongvy', '', 'vi', 0, NULL, NULL),
(686, 'Đoàn Văn Duy', 'create', 'mn_student', 2984, 1456450008, 'tuongvy', '', 'vi', 0, NULL, NULL),
(687, 'Trần Thị Hồng Đào', 'create', 'mn_student', 2985, 1456452310, 'ngoctu', '', 'vi', 0, NULL, NULL),
(688, 'Nguyễn Thị Phương Thảo', 'create', 'mn_student', 2986, 1456452413, 'ngoctu', '', 'vi', 0, NULL, NULL),
(689, 'Hoàng Kim Dung', 'create', 'mn_student', 2987, 1456452569, 'ngoctu', '', 'vi', 0, NULL, NULL),
(690, 'Phạm Anh Tuấn', 'create', 'mn_student', 2988, 1456452668, 'ngoctu', '', 'vi', 0, NULL, NULL),
(691, 'Lê Ngọc Thành', 'create', 'mn_student', 2989, 1456452821, 'ngoctu', '', 'vi', 0, NULL, NULL),
(692, 'Lê Ngọc Thành', 'update', 'mn_student', 2989, 1456452949, 'ngoctu', 'id,name,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values2989%%%Lê Ngọc Thành%%%MQA-16-02-3%%%0903928899%%%%%%245 Nguyễn Văn luông, p11, q6%%%1%%%-372150000%%%học phở%%%1456452720%%%1%%%336', 'vi', 0, NULL, NULL),
(693, 'Đỗ Anh Kiệt', 'create', 'mn_student', 2990, 1456453254, 'ngoctu', '', 'vi', 0, NULL, NULL),
(694, 'Đỗ Công Tín', 'create', 'mn_student', 2991, 1456455371, 'ngoctu', '', 'vi', 0, NULL, NULL),
(695, 'Trương Hoàng Hưng', 'create', 'mn_student', 2992, 1456455472, 'ngoctu', '', 'vi', 0, NULL, NULL),
(696, 'Trần Thanh Thủy', 'create', 'mn_student', 2993, 1456455636, 'ngoctu', '', 'vi', 0, NULL, NULL),
(697, 'Đỗ thị thúy Hằng', 'create', 'web_contact', 4387, 1456459462, 'customer', '', 'vi', 0, NULL, NULL),
(698, 'Trần Tuyết Anh', 'create', 'mn_student', 2994, 1456474036, 'tuongvy', '', 'vi', 0, NULL, NULL),
(699, 'Mạc Tư Khoa', 'create', 'mn_student', 2995, 1456474130, 'tuongvy', '', 'vi', 0, NULL, NULL),
(700, 'Nguyễn Đức Dương', 'create', 'mn_student', 2996, 1456476256, 'phuongthao', '', 'vi', 0, NULL, NULL),
(701, 'Nguyễn Thành Đạt', 'update', 'mn_student', 2950, 1456477140, 'phuongthao', 'id,name,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values2950%%%Nguyễn Thành Đạt%%%PCBT-16-19-2%%%016631122422%%%%%%%%%1%%%0%%%Giảm 5% học phí%%%1456117440%%%1%%%334', 'vi', 0, NULL, NULL),
(702, 'Nguyễn Thành Đạt', 'update', 'mn_student', 2950, 1456477208, 'phuongthao', 'id,name,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values2950%%%Nguyễn Thành Đạt%%%PCBT-16-19-2%%%01663112422%%%%%%Vũng Tàu%%%1%%%930502800%%%Giảm 5% học phí%%%1456117440%%%1%%%334', 'vi', 0, NULL, NULL),
(703, 'Đào Thị Thùy Duyên', 'create', 'mn_student', 2997, 1456478372, 'ngocthao', '', 'vi', 0, NULL, NULL),
(704, 'Trần Thị Vinh', 'create', 'mn_student', 2998, 1456478511, 'ngoctu', '', 'vi', 0, NULL, NULL),
(705, 'Nguyễn Thanh Lâm', 'create', 'mn_student', 2999, 1456480799, 'ngoctu', '', 'vi', 0, NULL, NULL),
(706, 'Trần Thị Ngọc Sao', 'create', 'mn_student', 3000, 1456480962, 'ngoctu', '', 'vi', 0, NULL, NULL),
(707, 'Barista - Khóa 2', 'update', 'mn_class', 4, 1456481046, 'admin', 'id,name,code_bk,code,date_opening,notes,datetime,status,course_idfields%%%values4%%%Barista - Khóa 2%%%PCBI02%%%PCBI-13-02%%%1365613200%%%%%%1366212072%%%1%%%8', 'vi', 0, NULL, NULL),
(708, 'Barista - Khóa 2', 'update', 'mn_class', 4, 1456481113, 'admin', 'id,name,code_bk,code,date_opening,notes,datetime,status,course_idfields%%%values4%%%Barista - Khóa 2%%%PCBI02%%%PCBI-13-02%%%1365613200%%%%%%1366212072%%%0%%%8', 'vi', 0, NULL, NULL),
(709, 'Tô Minh Phước', 'create', 'mn_student', 3001, 1456484697, 'phuongthao', '', 'vi', 0, NULL, NULL),
(710, 'Nguyễn Thị Thanh Vương', 'create', 'mn_student', 3002, 1456539365, 'ngoctu', '', 'vi', 0, NULL, NULL),
(711, 'Bùi Hữu Hậu', 'create', 'mn_student', 3003, 1456539525, 'ngoctu', '', 'vi', 0, NULL, NULL),
(712, 'Lâm Văn Khu', 'create', 'mn_student', 3004, 1456539779, 'ngoctu', '', 'vi', 0, NULL, NULL),
(713, 'Tô Minh Phước', 'update', 'mn_student', 3001, 1456540660, 'chucquynh', 'id,name,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values3001%%%Tô Minh Phước%%%ĐBQT-15-27-20%%%0933159118%%%%%%13 Ấp Bến Đò,P Long Bình, Q9, Tphcm%%%1%%%516992400%%%Giảm 30%%%%1456484460%%%1%%%320', 'vi', 0, NULL, NULL),
(714, 'Nguyễn Minh Đạt', 'create', 'mn_student', 3005, 1456542305, 'ngocthao', '', 'vi', 0, NULL, NULL),
(715, 'Cơ sở chính: Trường dạy nấu ăn NETSPACE', 'update', 'web_branch', 1, 1456543002, 'admin', 'id,name,shorten,email,phone,fax,address,hotline,googlemap,_order,lang,statusfields%%%values1%%%Cơ sở chính: Trường dạy nấu ăn NETSPACE%%%Cơ sở chính%%%info@dayamthuc.vn%%%(08) 6291 2698‎%%%%%%30 Nguyễn Huy Tự, Phường ĐaKao, Quận 1, Tp.HCM%%%0987 937 938 - 0947 333 488 - 09 8333 8333%%%10.7926559,106.6970208%%%1%%%vi%%%1', 'vi', 0, NULL, NULL),
(716, 'Chi nhánh: Trường dạy nấu ăn Netspace Tp.HCM', 'update', 'web_branch', 2, 1456543009, 'admin', 'id,name,shorten,email,phone,fax,address,hotline,googlemap,_order,lang,statusfields%%%values2%%%Chi nhánh: Trường dạy nấu ăn Netspace Tp.HCM%%%CN Tp.HCM%%%info@dayamthuc.vn%%%(08) 6291 2698‎%%%%%%Số 19 Đường Đặng Tất, Phường Tân Định, Quận 1, Tp.HCM%%%0987 937 938 - 0947 333 488 - 09 8333 8333%%%10.7928079,106.6884848%%%2%%%vi%%%1', 'vi', 0, NULL, NULL),
(717, 'Lạc Thảo Vi', 'update', 'mn_student', 2882, 1456543446, 'ngocthao', 'id,name,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values2882%%%Lạc Thảo Vi%%%ĐBQT-15-27-5%%%0916191988%%%%%%185 Bến Vân Đồn F.5 Quận 4%%%0%%%589050000%%%đặt cọc giảm 20%%%%1452107350%%%1%%%320', 'vi', 0, NULL, NULL),
(718, 'le trong thuan', 'create', 'web_contact', 4388, 1456547061, 'customer', '', 'vi', 0, NULL, NULL),
(719, 'Trần Thị Ngọc Hân', 'create', 'web_contact', 4389, 1456549918, 'customer', '', 'vi', 0, NULL, NULL),
(720, 'Trần Hùng Linh', 'create', 'web_contact', 4390, 1456554047, 'customer', '', 'vi', 0, NULL, NULL),
(721, 'Hồ Nguyễn Thanh Thủy', 'create', 'mn_student', 3006, 1456556789, 'tuongvy', '', 'vi', 0, NULL, NULL),
(722, 'Nguyễn Thị Xuân', 'create', 'mn_student', 3007, 1456561879, 'tuongvy', '', 'vi', 0, NULL, NULL),
(723, 'Chi nhánh: Trường dạy nấu ăn Netspace Hà Nội', 'update', 'web_branch', 4, 1456563901, 'admin', 'id,name,shorten,email,phone,fax,address,hotline,googlemap,_order,lang,statusfields%%%values4%%%Chi nhánh: Trường dạy nấu ăn Netspace Hà Nội%%%CN Hà Nội%%%hanoi@netspace.edu.vn%%%(04) 36 856 888%%%%%%Tầng 5 số 9 Hồ Tùng Mậu, Q. Cầu Giấy, Hà Nội%%%0989 166 875 - 0985 777 989%%%21.037491,105.7750779%%%5%%%vi%%%1', 'vi', 0, NULL, NULL),
(724, 'Tiếng Anh cho đầu bếp', 'update', 'web_header', 455, 1456564042, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values455%%%Tiếng Anh cho đầu bếp%%%tieng-anh-cho-dau-bep%%%%%%1357704813.jpg%%%Tiếng Anh cho đầu bếp | Tieng anh cho dau bep%%%Tiếng Anh là rào cản lớn nhất khiến các Đầu bếp Việt Nam khó tiếp cận và làm việc tại các Nhà hàng, Khách sạn lớn tại Việt Nam hoặc làm việc ở nước ngoài.%%%tiếng anh cho đầu bếp,tieng anh cho dau bep%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1357704420%%%vi%%%1%%%2%%%3%%%%%%,390,40,', 'vi', 0, NULL, NULL),
(725, 'Chi nhánh: Trường dạy nấu ăn Netspace Hà Nội', 'update', 'web_branch', 4, 1456565237, 'admin', 'id,name,shorten,email,phone,fax,address,hotline,googlemap,_order,lang,statusfields%%%values4%%%Chi nhánh: Trường dạy nấu ăn Netspace Hà Nội%%%CN Hà Nội%%%assistant1@netspace.edu.vn%%%(04) 36 856 888%%%%%%Tầng 5 số 9 Hồ Tùng Mậu, Q. Cầu Giấy, Hà Nội%%%0989 166 875 - 0985 777 989%%%21.037491,105.7750779%%%5%%%vi%%%1', 'vi', 0, NULL, NULL),
(726, 'Phạm xuân mạnh', 'create', 'web_contact', 4391, 1456568090, 'customer', '', 'vi', 0, NULL, NULL),
(727, 'Nguyễn Minh Đạt', 'create', 'web_contact', 4392, 1456584798, 'customer', '', 'vi', 0, NULL, NULL);
INSERT INTO `web_logs` (`id`, `name`, `action`, `_table`, `table_id`, `datetime`, `username`, `content`, `lang`, `status`, `date_restore`, `user_restore`) VALUES
(728, 'Do thanh van', 'create', 'web_contact', 4393, 1456590613, 'customer', '', 'vi', 0, NULL, NULL),
(729, 'HUỲNH KIM TRUYỀN', 'create', 'web_contact', 4394, 1456624856, 'customer', '', 'vi', 0, NULL, NULL),
(730, 'Huỳnh Thị Hòa', 'create', 'mn_student', 3008, 1456626279, 'phuongthao', '', 'vi', 0, NULL, NULL),
(731, 'Huỳnh Minh Đức', 'create', 'mn_student', 3009, 1456626502, 'phuongthao', '', 'vi', 0, NULL, NULL),
(732, 'Nguyễn Đức Dương', 'create', 'mn_student', 3010, 1456626691, 'phuongthao', '', 'vi', 0, NULL, NULL),
(733, 'Bùi Thị Lê', 'create', 'mn_student', 3011, 1456626838, 'phuongthao', '', 'vi', 0, NULL, NULL),
(734, 'Lâm Thị Bích Ngọc', 'create', 'mn_student', 3012, 1456644184, 'phuongthao', '', 'vi', 0, NULL, NULL),
(735, 'Vũ Thùy Trang', 'create', 'mn_student', 3013, 1456644347, 'phuongthao', '', 'vi', 0, NULL, NULL),
(736, 'Đặng Thị Kiều Hạnh', 'create', 'mn_student', 3014, 1456711971, 'ngochuong', '', 'vi', 0, NULL, NULL),
(737, 'Đặng Thị Kiều Hạnh', 'update', 'mn_student', 3014, 1456712140, 'ngochuong', 'id,name,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values3014%%%Đặng Thị Kiều Hạnh%%%BTH-15-01-6%%%0938105165%%%%%%Long Biên, Cai Lậy, Tiền Giang%%%0%%%524854800%%%Giảm 20%%%%1456711320%%%1%%%271', 'vi', 0, NULL, NULL),
(738, 'Trần Chúc Quỳnh', 'update', 'web_users', 50, 1456712295, 'admin', 'id,name,address,phone,email,birthday,gender,img,salt,page,username,password,random_key,date_expiration,lang,datetime,status,group_idfields%%%values50%%%Trần Chúc Quỳnh%%%%%%0946 868 455%%%tuyensinh@netspace.edu.vn%%%0%%%%%%%%%%%%3%%%chucquynh%%%867e1a36d190000d2f266d80889683fc%%%%%%0%%%vi%%%0%%%1%%%1', 'vi', 0, NULL, NULL),
(739, 'Phạm Hoàng Ân', 'create', 'mn_student', 3015, 1456712338, 'ngochuong', '', 'vi', 0, NULL, NULL),
(740, 'Nguyễn Đình Khương', 'create', 'mn_student', 3016, 1456712415, 'tuongvy', '', 'vi', 0, NULL, NULL),
(741, 'BArista Khoá 21', 'update', 'mn_class', 93, 1456712542, 'admin', 'id,name,code_bk,code,date_opening,notes,datetime,status,course_idfields%%%values93%%%BArista Khoá 21%%%PCBI21-%%%PCBI-14-21%%%1394125200%%%%%%1394160733%%%1%%%8', 'vi', 0, NULL, NULL),
(742, 'Barista - Khoá 19', 'update', 'mn_class', 76, 1456712560, 'admin', 'id,name,code_bk,code,date_opening,notes,datetime,status,course_idfields%%%values76%%%Barista - Khoá 19%%%PCBI-19%%%PCBI-13-19%%%1392138000%%%%%%1388470965%%%1%%%8', 'vi', 0, NULL, NULL),
(743, 'Barista khoá 19', 'update', 'mn_class', 76, 1456712574, 'admin', 'id,name,code_bk,code,date_opening,notes,datetime,status,course_idfields%%%values76%%%Barista khoá 19%%%PCBI-19%%%PCBI-13-19%%%1392138000%%%%%%1388470965%%%1%%%8', 'vi', 0, NULL, NULL),
(744, 'Barista - Khoá 18', 'update', 'mn_class', 71, 1456712583, 'admin', 'id,name,code_bk,code,date_opening,notes,datetime,status,course_idfields%%%values71%%%Barista - Khoá 18%%%PCBI18-18%%%PCBI-13-1818%%%1387731600%%%%%%1387617121%%%1%%%8', 'vi', 0, NULL, NULL),
(745, 'Barista - Khoá 17', 'update', 'mn_class', 68, 1456712602, 'admin', 'id,name,code_bk,code,date_opening,notes,datetime,status,course_idfields%%%values68%%%Barista - Khoá 17%%%PCBI-17%%%PCBI-13-17%%%0%%%Học buổi chiều thứ 3 5 7%%%1386140860%%%1%%%8', 'vi', 0, NULL, NULL),
(746, 'Barista - K16', 'update', 'mn_class', 67, 1456712625, 'admin', 'id,name,code_bk,code,date_opening,notes,datetime,status,course_idfields%%%values67%%%Barista - K16%%%PCBI-16%%%PCBI-13-16%%%1386176400%%%%%%1386054515%%%1%%%8', 'vi', 0, NULL, NULL),
(747, 'Barista_khóa 15', 'update', 'mn_class', 62, 1456712632, 'admin', 'id,name,code_bk,code,date_opening,notes,datetime,status,course_idfields%%%values62%%%Barista_khóa 15%%%PCBI-15%%%PCBI-13-15%%%0%%%%%%1383188013%%%1%%%8', 'vi', 0, NULL, NULL),
(748, 'Barista_khóa 14', 'update', 'mn_class', 59, 1456712640, 'admin', 'id,name,code_bk,code,date_opening,notes,datetime,status,course_idfields%%%values59%%%Barista_khóa 14%%%PCBI_14%%%PCBI-13-14%%%1381770000%%%%%%1381562458%%%1%%%8', 'vi', 0, NULL, NULL),
(749, 'Barista_khóa 13', 'update', 'mn_class', 53, 1456712645, 'admin', 'id,name,code_bk,code,date_opening,notes,datetime,status,course_idfields%%%values53%%%Barista_khóa 13%%%PCBI_13%%%PCBI-13-13%%%1380301200%%%%%%1380354212%%%1%%%8', 'vi', 0, NULL, NULL),
(750, 'Barista_khóa 12', 'update', 'mn_class', 49, 1456712650, 'admin', 'id,name,code_bk,code,date_opening,notes,datetime,status,course_idfields%%%values49%%%Barista_khóa 12%%%PCBI-12%%%PCBI-13-12%%%1380474000%%%%%%1379556569%%%1%%%8', 'vi', 0, NULL, NULL),
(751, 'Barista_khóa 11', 'update', 'mn_class', 48, 1456712655, 'admin', 'id,name,code_bk,code,date_opening,notes,datetime,status,course_idfields%%%values48%%%Barista_khóa 11%%%PCBI_11%%%PCBI-13-11%%%1379350800%%%%%%1379314630%%%1%%%8', 'vi', 0, NULL, NULL),
(752, 'Barista- khóa 10', 'update', 'mn_class', 42, 1456712660, 'admin', 'id,name,code_bk,code,date_opening,notes,datetime,status,course_idfields%%%values42%%%Barista- khóa 10%%%PCBI10%%%PCBI-13-10%%%1377795600%%%18:00 - 21:00 thứ 2,4,6%%%1377482414%%%1%%%8', 'vi', 0, NULL, NULL),
(753, 'Barista - Khóa 9', 'update', 'mn_class', 37, 1456712687, 'admin', 'id,name,code_bk,code,date_opening,notes,datetime,status,course_idfields%%%values37%%%Barista - Khóa 9%%%PCBI09%%%PCBI-13-09%%%1376586000%%%08:00 - 11:00 thứ 2,4,6%%%1376305429%%%1%%%8', 'vi', 0, NULL, NULL),
(754, 'Barista - Khóa 8', 'update', 'mn_class', 31, 1456712692, 'admin', 'id,name,code_bk,code,date_opening,notes,datetime,status,course_idfields%%%values31%%%Barista - Khóa 8%%%PCBI08%%%PCBI-13-08%%%1374685200%%%18:00 - 21:00 thứ 3,5,7 ngày 25/07/2013%%%1374030053%%%1%%%8', 'vi', 0, NULL, NULL),
(755, 'Phạm Hoàng Ân', 'create', 'mn_student', 3017, 1456712692, 'ngochuong', '', 'vi', 0, NULL, NULL),
(756, 'Barista - Khóa 7', 'update', 'mn_class', 30, 1456712696, 'admin', 'id,name,code_bk,code,date_opening,notes,datetime,status,course_idfields%%%values30%%%Barista - Khóa 7%%%PCBI07%%%PCBI-13-07%%%1374253200%%%14:00 - 17:00 thứ 3,5,7 ngày 20/07/2013%%%1374029969%%%1%%%8', 'vi', 0, NULL, NULL),
(757, 'Barista - Khóa 6', 'update', 'mn_class', 22, 1456712701, 'admin', 'id,name,code_bk,code,date_opening,notes,datetime,status,course_idfields%%%values22%%%Barista - Khóa 6%%%PCBI06%%%PCBI-13-06%%%1371574800%%%18:00 - 21:00 thứ 2,4,6 ngày 19/06/2013%%%1370676325%%%1%%%8', 'vi', 0, NULL, NULL),
(758, 'Barista - Khóa 5', 'update', 'mn_class', 21, 1456712705, 'admin', 'id,name,code_bk,code,date_opening,notes,datetime,status,course_idfields%%%values21%%%Barista - Khóa 5%%%PCBI05%%%PCBI-13-05%%%1371488400%%%08:00 - 11:00 thứ 3,5,7 ngày 18/06/2013%%%1370675952%%%1%%%8', 'vi', 0, NULL, NULL),
(759, 'Barista - Khóa 4', 'update', 'mn_class', 12, 1456712707, 'admin', 'id,name,code_bk,code,date_opening,notes,datetime,status,course_idfields%%%values12%%%Barista - Khóa 4%%%PCBI04%%%PCBI-13-04%%%1369328400%%%Lớp học buổi tối%%%1367636336%%%1%%%8', 'vi', 0, NULL, NULL),
(760, 'Barista - Khóa 3', 'update', 'mn_class', 11, 1456712711, 'admin', 'id,name,code_bk,code,date_opening,notes,datetime,status,course_idfields%%%values11%%%Barista - Khóa 3%%%PCBI03%%%PCBI-13-03%%%1368810000%%%%%%1367636313%%%1%%%8', 'vi', 0, NULL, NULL),
(761, 'Barista - Khóa 2', 'update', 'mn_class', 4, 1456712715, 'admin', 'id,name,code_bk,code,date_opening,notes,datetime,status,course_idfields%%%values4%%%Barista - Khóa 2%%%PCBI02%%%PCBI-13-02%%%1365613200%%%%%%1366212072%%%1%%%8', 'vi', 0, NULL, NULL),
(762, 'Barista Khoá 18', 'update', 'mn_class', 71, 1456712764, 'admin', 'id,name,code_bk,code,date_opening,notes,datetime,status,course_idfields%%%values71%%%Barista Khoá 18%%%PCBI18-18%%%PCBI-13-1818%%%1387731600%%%%%%1387617121%%%1%%%8', 'vi', 0, NULL, NULL),
(763, 'Nguyễn Thị Phú', 'update', 'mn_student', 691, 1456712828, 'admin', 'id,name,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values691%%%Nguyễn Thị Phú%%%PCBI-13-1818-1%%%0902 344 889%%%%%%19/55 Nghĩa Thục , Phường 6 ,Quận 5 , TP.Hồ Chí Minh .%%%0%%%566326800%%%giảm 20 % học phí .%%%1387617372%%%1%%%71', 'vi', 0, NULL, NULL),
(764, 'Nguyễn Thị Lệ Hằng', 'update', 'mn_student', 698, 1456712831, 'admin', 'id,name,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values698%%%Nguyễn Thị Lệ Hằng%%%PCBI-13-1818-2%%%0908 496 105%%%%%%Thị Xã La Gi , Bình Thuận .%%%0%%%710960400%%%giảm 20% học phí .%%%1387884798%%%1%%%71', 'vi', 0, NULL, NULL),
(765, 'Nguyễn Ngọc Minh Tâm', 'update', 'mn_student', 700, 1456712859, 'admin', 'id,name,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values700%%%Nguyễn Ngọc Minh Tâm%%%PCBI-13-1818-3%%%0903353000%%%%%%%%%0%%%386010000%%%%%%1388046287%%%1%%%71', 'vi', 0, NULL, NULL),
(766, 'Nguyễn Quốc Thịnh', 'update', 'mn_student', 709, 1456712881, 'admin', 'id,name,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values709%%%Nguyễn Quốc Thịnh%%%PCBI-13-1818-4%%%0928380778%%%%%%%%%1%%%0%%%%%%1388217416%%%1%%%71', 'vi', 0, NULL, NULL),
(767, 'Nguyễn Quốc Thịnh', 'update', 'mn_student', 709, 1456712890, 'admin', 'id,name,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values709%%%Nguyễn Quốc Thịnh%%%PCBI-13-18-4%%%0928380778%%%%%%Không có%%%1%%%-7196400%%%%%%1388217416%%%1%%%71', 'vi', 0, NULL, NULL),
(768, 'Nguyễn Đức Tùng', 'update', 'mn_student', 717, 1456712895, 'admin', 'id,name,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values717%%%Nguyễn Đức Tùng%%%PCBI-13-1818-5%%%01207849866%%%%%%%%%1%%%688496400%%%%%%1388464512%%%1%%%71', 'vi', 0, NULL, NULL),
(769, 'Trần Ngô Công Tân', 'update', 'mn_student', 718, 1456712904, 'admin', 'id,name,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values718%%%Trần Ngô Công Tân%%%PCBI-13-1818-6%%%0932737491%%%%%%%%%1%%%553971600%%%%%%1388464611%%%1%%%71', 'vi', 0, NULL, NULL),
(770, 'Nguyễn Đức Tùng', 'update', 'mn_student', 723, 1456712907, 'admin', 'id,name,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values723%%%Nguyễn Đức Tùng%%%PCBI-13-1818-7%%%0120 78 49 866%%%%%%14/6c Phan Huy Ích,Phường 14,Quận Gò Vấp .%%%1%%%688496400%%%giảm 20% học phí.%%%1388472436%%%1%%%71', 'vi', 0, NULL, NULL),
(771, 'Huỳnh Thị Thanh Trúc', 'update', 'mn_student', 725, 1456712911, 'admin', 'id,name,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values725%%%Huỳnh Thị Thanh Trúc%%%PCBI-13-1818-8%%%0977 749 192%%%%%%24 Lô A,Đường D4,Khu Tái Định Cư Phạm Hữu Lầu , Khu Phố 2,Phường Phú Mỹ , Quận 7%%%0%%%610563600%%%giảm 20 % học phí .%%%1388479068%%%1%%%71', 'vi', 0, NULL, NULL),
(772, 'Trương Thị Ngọc Trinh', 'update', 'mn_student', 729, 1456712928, 'admin', 'id,name,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values729%%%Trương Thị Ngọc Trinh%%%PCBI-13-1818-10%%%0933829216%%%%%%66/5 đường 30/04, phường thống nhất, TP Vũng Tàu%%%0%%%746470800%%%Giảm 15% học phí%%%1388735250%%%1%%%71', 'vi', 0, NULL, NULL),
(773, 'Ngô Văn Khởi', 'update', 'mn_student', 731, 1456712932, 'admin', 'id,name,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values731%%%Ngô Văn Khởi%%%PCBI-13-1818-11%%%0949 902 494%%%%%%Xã Hưng Hội , Huyện Vĩnh Lợi,Tỉnh Bạc Liêu.%%%1%%%602269200%%%giảm 15% học phí.%%%1388971757%%%1%%%71', 'vi', 0, NULL, NULL),
(774, 'Nguyễn Hoành Sơn', 'update', 'mn_student', 732, 1456712936, 'admin', 'id,name,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values732%%%Nguyễn Hoành Sơn%%%PCBI-13-1818-12%%%0912019851%%%%%%42/5 Hồ Hảo Hớn, Quận 1%%%1%%%149788800%%%Giảm 15%%%%1388972020%%%1%%%71', 'vi', 0, NULL, NULL),
(775, 'Trương Thị Ngọc ', 'delete', 'mn_student', 728, 1456712946, 'admin', 'id,name,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values728%%%Trương Thị Ngọc %%%PCBI-13-1818-9%%%%%%%%%%%%0%%%0%%%nhập sai%%%1388735199%%%1%%%71', 'vi', 0, NULL, NULL),
(776, 'Nguyễn Phương Quỳnh', 'update', 'mn_student', 2942, 1456712951, 'chucquynh', 'id,name,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values2942%%%Nguyễn Phương Quỳnh%%%PCBI-16-73-3%%%0909183141%%%%%%%%%1%%%0%%%giảm 20%%%%1455822180%%%1%%%330', 'vi', 0, NULL, NULL),
(777, 'Barista Khóa 74', 'update', 'mn_class', 337, 1456713182, 'admin', 'id,name,code_bk,code,date_opening,notes,datetime,status,course_idfields%%%values337%%%Barista Khóa 74%%%%%%PCBI74%%%1456830000%%%%%%1456392180%%%1%%%8', 'vi', 0, NULL, NULL),
(778, 'Huỳnh Tấn Vinh', 'update', 'mn_student', 2978, 1456713207, 'admin', 'id,name,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values2978%%%Huỳnh Tấn Vinh%%%PCBI74-1%%%01208301720%%%%%%87/44/2 Đinh Tiên Hoàng,P3,BT,Tphcm%%%1%%%741286800%%%Giảm 5%%%%1456403220%%%1%%%337', 'vi', 0, NULL, NULL),
(779, 'Trần Thị Yến Nhi', 'update', 'mn_student', 2979, 1456713211, 'admin', 'id,name,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values2979%%%Trần Thị Yến Nhi%%%PCBI74-2%%%0945354829%%%%%%Thành phố hồ chi minh%%%0%%%853779600%%%Giảm 15%,đóng laanf1 500k%%%1456403880%%%1%%%337', 'vi', 0, NULL, NULL),
(780, 'Đặng Thị Hồng Thoa', 'update', 'mn_student', 2980, 1456713215, 'admin', 'id,name,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values2980%%%Đặng Thị Hồng Thoa%%%PCBI74-3%%%0908277143%%%%%%147/16 Tân Kỳ Tân Quý, P Tân Sơn Nhì, Q Tân Phú, Tphcm%%%0%%%554922000%%%Giảm 15%, đóng lần 1: 500k%%%1456405080%%%1%%%337', 'vi', 0, NULL, NULL),
(781, 'Trần Thị Hồng Đào', 'update', 'mn_student', 2985, 1456713219, 'admin', 'id,name,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values2985%%%Trần Thị Hồng Đào%%%PCBI74-4%%%0938698414%%%%%%51/7 phan văn hân, phường 17, quận bình thạnh%%%0%%%839696400%%%giảm 5%%%%1456452180%%%1%%%337', 'vi', 0, NULL, NULL),
(782, 'Huỳnh Thị Hòa', 'update', 'mn_student', 3008, 1456713222, 'admin', 'id,name,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values3008%%%Huỳnh Thị Hòa%%%PCBI74-5%%%0935577576%%%%%%Kiên Giang%%%0%%%329763600%%%Giảm 20%, ck 1trieu%%%1456626060%%%1%%%337', 'vi', 0, NULL, NULL),
(783, 'Phạm Hoàng Ân', 'update', 'mn_student', 3015, 1456713226, 'admin', 'id,name,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values3015%%%Phạm Hoàng Ân%%%PCBI74-6%%%01667576950%%%%%%306/6 Trần Phú P5 Vũng  Tàu BRVT%%%1%%%711046800%%%Giảm 20%%%%1456712160%%%1%%%337', 'vi', 0, NULL, NULL),
(784, 'Nguyễn Phương Quỳnh', 'update', 'mn_student', 2942, 1456713264, 'chucquynh', 'id,name,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values2942%%%Nguyễn Phương Quỳnh%%%PCBI-16-73-19%%%0909183141%%%%%%30 Nguyễn Huy Tự, F.Đakao, Q.1, HCM%%%1%%%762282000%%%Đăng kí PCTH73 - chuyển PCTH74\ngiảm 20%%%%1455822180%%%1%%%330', 'vi', 0, NULL, NULL),
(785, 'Barista Khoá 30', 'update', 'mn_class', 131, 1456713402, 'admin', 'id,name,code_bk,code,date_opening,notes,datetime,status,course_idfields%%%values131%%%Barista Khoá 30%%%PCBI31%%%PCBI-14-31%%%0%%%%%%1403683732%%%1%%%8', 'vi', 0, NULL, NULL),
(786, 'Barista - Khoá 30', 'update', 'mn_class', 135, 1456713525, 'admin', 'id,name,code_bk,code,date_opening,notes,datetime,status,course_idfields%%%values135%%%Barista - Khoá 30%%%PCBI30%%%PCBI-14-30%%%0%%%Nhập Sai%%%1404544224%%%1%%%8', 'vi', 0, NULL, NULL),
(787, 'Barista - Khoá 30', 'update', 'mn_class', 135, 1456713560, 'admin', 'id,name,code_bk,code,date_opening,notes,datetime,status,course_idfields%%%values135%%%Barista - Khoá 30%%%PCBI30%%%PCBI-141%%%1456678800%%%Nhập Sai%%%1404544224%%%1%%%8', 'vi', 0, NULL, NULL),
(788, 'Barista Khoá 31', 'update', 'mn_class', 132, 1456713575, 'admin', 'id,name,code_bk,code,date_opening,notes,datetime,status,course_idfields%%%values132%%%Barista Khoá 31%%%PCBI%%%PCBI-14%%%0%%%%%%1403683793%%%1%%%8', 'vi', 0, NULL, NULL),
(789, 'Barista Khoá 30', 'update', 'mn_class', 132, 1456713581, 'admin', 'id,name,code_bk,code,date_opening,notes,datetime,status,course_idfields%%%values132%%%Barista Khoá 30%%%PCBI%%%PCBI-14%%%1456678800%%%%%%1403683793%%%1%%%8', 'vi', 0, NULL, NULL),
(790, 'Nguyễn Đoàn Ngọc Tuyết', 'update', 'mn_student', 1341, 1456713619, 'admin', 'id,name,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values1341%%%Nguyễn Đoàn Ngọc Tuyết%%%PCBI-14-1%%%0919 598 910%%%tuyetldh@yahoo.com%%%57/13 Nguyễn Văn Đừng, P6, Q5.%%%0%%%498762000%%%%%%1403686375%%%1%%%132', 'vi', 0, NULL, NULL),
(791, 'Nguyễn Thụy Như', 'update', 'mn_student', 1345, 1456713626, 'admin', 'id,name,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values1345%%%Nguyễn Thụy Như%%%PCBI-14-2%%%0919 944 477%%%nhu.candymilk@yahoo.com.vn%%%137 A Nguyễn Chí Thanh, P9, Quận 5.%%%0%%%305139600%%%Học Bổng.%%%1403863184%%%1%%%132', 'vi', 0, NULL, NULL),
(792, 'Nguyễn Văn Định', 'update', 'mn_student', 1360, 1456713640, 'admin', 'id,name,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values1360%%%Nguyễn Văn Định%%%PCBI-14-3%%%0963598695%%%%%%%%%1%%%809110800%%%Chính sách giảm 15%%%%1404717571%%%1%%%132', 'vi', 0, NULL, NULL),
(793, 'Nguyễn Nhật Vũ', 'update', 'mn_student', 1366, 1456713644, 'admin', 'id,name,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values1366%%%Nguyễn Nhật Vũ%%%PCBI-14-4%%%0962333354%%%%%%28A Lê Quốc Trinh, P. Phú Thọ Hoà, Quận Tân Phú%%%1%%%725648400%%%Giảm 15%%%%1404785595%%%1%%%132', 'vi', 0, NULL, NULL),
(794, 'Trần Thị Vân Thư', 'update', 'mn_student', 1367, 1456713649, 'admin', 'id,name,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values1367%%%Trần Thị Vân Thư%%%PCBI-14-5%%%0909319137%%%%%%23/17 Lê tự tài, P4, Q Phú Nhuận%%%0%%%475779600%%%Giảm 15%%%%1404785718%%%1%%%132', 'vi', 0, NULL, NULL),
(795, 'Bùi Thị Lệ Giang', 'update', 'mn_student', 1368, 1456713652, 'admin', 'id,name,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values1368%%%Bùi Thị Lệ Giang%%%PCBI-14-6%%%0965738481%%%%%%Đức Chánh, Mộ Đức, Quảng Ngãi%%%0%%%754851600%%%Giảm 15%%%%1404785863%%%1%%%132', 'vi', 0, NULL, NULL),
(796, 'Nguyễn Mạnh Hùng', 'update', 'mn_student', 1371, 1456713659, 'admin', 'id,name,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values1371%%%Nguyễn Mạnh Hùng%%%PCBI-14-7%%%01699263476%%%%%%%%%1%%%723142800%%%Nhập sai%%%1404867021%%%1%%%132', 'vi', 0, NULL, NULL),
(797, 'Võ Thị Tố Như', 'update', 'mn_student', 1383, 1456713663, 'admin', 'id,name,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values1383%%%Võ Thị Tố Như%%%PCBI-14-8%%%0166 435 8499%%%sweet_tt_love89@yahoo.com%%%TT Dĩ An, Dĩ An, Bình Dương.%%%0%%%646592400%%%Giảm 15% học phí.%%%1404984019%%%1%%%132', 'vi', 0, NULL, NULL),
(798, 'Nguễn Thái Tân', 'update', 'mn_student', 1420, 1456713667, 'admin', 'id,name,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values1420%%%Nguễn Thái Tân%%%PCBI-14-9%%%0128 5454 777%%%tannguyen2826@yahoo.com%%%80/20C, Tam Hòa, Biên Hòa, Đồng Nai.%%%1%%%304362000%%%Chính sách giảm 15 % học phí.%%%1405424725%%%1%%%132', 'vi', 0, NULL, NULL),
(799, 'Nguyễn võ phi Long', 'update', 'mn_student', 1413, 1456713719, 'admin', 'id,name,code,phone,email,address,gender,date_birthday,notes,datetime,status,class_idfields%%%values1413%%%Nguyễn võ phi Long%%%PCBI-14-30-1%%%01683 789 999%%%%%%%%%1%%%787510800%%%HP giảm 15%%%%1405410387%%%1%%%135', 'vi', 0, NULL, NULL),
(800, 'Barista - Khoá 30 aa', 'delete', 'mn_class', 135, 1456713769, 'admin', 'id,name,code_bk,code,date_opening,notes,datetime,status,course_idfields%%%values135%%%Barista - Khoá 30 aa%%%PCBI30%%%PCBI-141%%%1456678800%%%Nhập Sai%%%1404544224%%%1%%%8', 'vi', 0, NULL, NULL),
(801, 'Barista Khóa 2', 'update', 'mn_class', 4, 1456713794, 'admin', 'id,name,code_bk,code,date_opening,notes,datetime,status,course_idfields%%%values4%%%Barista Khóa 2%%%PCBI02%%%PCBI-13-02%%%1365613200%%%%%%1366212072%%%1%%%8', 'vi', 0, NULL, NULL),
(802, 'Barista Khóa 3', 'update', 'mn_class', 11, 1456713797, 'admin', 'id,name,code_bk,code,date_opening,notes,datetime,status,course_idfields%%%values11%%%Barista Khóa 3%%%PCBI03%%%PCBI-13-03%%%1368810000%%%%%%1367636313%%%1%%%8', 'vi', 0, NULL, NULL),
(803, 'Barista Khóa 4', 'update', 'mn_class', 12, 1456713800, 'admin', 'id,name,code_bk,code,date_opening,notes,datetime,status,course_idfields%%%values12%%%Barista Khóa 4%%%PCBI04%%%PCBI-13-04%%%1369328400%%%Lớp học buổi tối%%%1367636336%%%1%%%8', 'vi', 0, NULL, NULL),
(804, 'Barista Khóa 5', 'update', 'mn_class', 21, 1456713803, 'admin', 'id,name,code_bk,code,date_opening,notes,datetime,status,course_idfields%%%values21%%%Barista Khóa 5%%%PCBI05%%%PCBI-13-05%%%1371488400%%%08:00 - 11:00 thứ 3,5,7 ngày 18/06/2013%%%1370675952%%%1%%%8', 'vi', 0, NULL, NULL),
(805, 'Hoàng Thị Hà', 'create', 'web_contact', 4395, 1456713805, 'customer', '', 'vi', 0, NULL, NULL),
(806, 'Barista Khóa 6', 'update', 'mn_class', 22, 1456713806, 'admin', 'id,name,code_bk,code,date_opening,notes,datetime,status,course_idfields%%%values22%%%Barista Khóa 6%%%PCBI06%%%PCBI-13-06%%%1371574800%%%18:00 - 21:00 thứ 2,4,6 ngày 19/06/2013%%%1370676325%%%1%%%8', 'vi', 0, NULL, NULL),
(807, 'Barista Khóa 7', 'update', 'mn_class', 30, 1456713809, 'admin', 'id,name,code_bk,code,date_opening,notes,datetime,status,course_idfields%%%values30%%%Barista Khóa 7%%%PCBI07%%%PCBI-13-07%%%1374253200%%%14:00 - 17:00 thứ 3,5,7 ngày 20/07/2013%%%1374029969%%%1%%%8', 'vi', 0, NULL, NULL),
(808, 'Barista Khóa 8', 'update', 'mn_class', 31, 1456713814, 'admin', 'id,name,code_bk,code,date_opening,notes,datetime,status,course_idfields%%%values31%%%Barista Khóa 8%%%PCBI08%%%PCBI-13-08%%%1374685200%%%18:00 - 21:00 thứ 3,5,7 ngày 25/07/2013%%%1374030053%%%1%%%8', 'vi', 0, NULL, NULL),
(809, 'Barista Khóa 9', 'update', 'mn_class', 37, 1456713817, 'admin', 'id,name,code_bk,code,date_opening,notes,datetime,status,course_idfields%%%values37%%%Barista Khóa 9%%%PCBI09%%%PCBI-13-09%%%1376586000%%%08:00 - 11:00 thứ 2,4,6%%%1376305429%%%1%%%8', 'vi', 0, NULL, NULL),
(810, 'Barista Khóa 06', 'update', 'mn_class', 22, 1456713824, 'admin', 'id,name,code_bk,code,date_opening,notes,datetime,status,course_idfields%%%values22%%%Barista Khóa 06%%%PCBI06%%%PCBI-13-06%%%1371574800%%%18:00 - 21:00 thứ 2,4,6 ngày 19/06/2013%%%1370676325%%%1%%%8', 'vi', 0, NULL, NULL),
(811, 'Barista Khóa 05', 'update', 'mn_class', 21, 1456713827, 'admin', 'id,name,code_bk,code,date_opening,notes,datetime,status,course_idfields%%%values21%%%Barista Khóa 05%%%PCBI05%%%PCBI-13-05%%%1371488400%%%08:00 - 11:00 thứ 3,5,7 ngày 18/06/2013%%%1370675952%%%1%%%8', 'vi', 0, NULL, NULL),
(812, 'Barista Khóa 04', 'update', 'mn_class', 12, 1456713833, 'admin', 'id,name,code_bk,code,date_opening,notes,datetime,status,course_idfields%%%values12%%%Barista Khóa 04%%%PCBI04%%%PCBI-13-04%%%1369328400%%%Lớp học buổi tối%%%1367636336%%%1%%%8', 'vi', 0, NULL, NULL),
(813, 'Barista Khóa 03', 'update', 'mn_class', 11, 1456713835, 'admin', 'id,name,code_bk,code,date_opening,notes,datetime,status,course_idfields%%%values11%%%Barista Khóa 03%%%PCBI03%%%PCBI-13-03%%%1368810000%%%%%%1367636313%%%1%%%8', 'vi', 0, NULL, NULL),
(814, 'Barista Khóa 02', 'update', 'mn_class', 4, 1456713838, 'admin', 'id,name,code_bk,code,date_opening,notes,datetime,status,course_idfields%%%values4%%%Barista Khóa 02%%%PCBI02%%%PCBI-13-02%%%1365613200%%%%%%1366212072%%%1%%%8', 'vi', 0, NULL, NULL),
(815, 'doan thi hong dao', 'create', 'web_contact', 4396, 1456714380, 'customer', '', 'vi', 0, NULL, NULL),
(816, 'Mở Nhà hàng', 'update', 'mn_courses', 7, 1456714413, 'admin', 'id,name,code,type,notes,datetime,statusfields%%%values7%%%Mở Nhà hàng%%%MNH%%%1%%%%%%1363116830%%%1', 'vi', 0, NULL, NULL),
(817, 'Mở quán nước', 'update', 'mn_courses', 6, 1456714426, 'admin', 'id,name,code,type,notes,datetime,statusfields%%%values6%%%Mở quán nước%%%MQN%%%1%%%%%%1363116810%%%1', 'vi', 0, NULL, NULL),
(818, 'Mở quán ăn', 'update', 'mn_courses', 5, 1456714433, 'admin', 'id,name,code,type,notes,datetime,statusfields%%%values5%%%Mở quán ăn%%%MQA%%%1%%%%%%1363116778%%%1', 'vi', 0, NULL, NULL),
(819, 'Quản lý học viên', 'update', 'web_admin', 28, 1456732411, 'admin', 'id,name,url,_table,parameter,file,img,_order,ajax,type,parent,statusfields%%%values28%%%Quản lý học viên%%%student%%%mn_student%%%%%%mn_student%%%adIconUser%%%103%%%0%%%3%%%0%%%1', 'vi', 0, NULL, NULL),
(820, 'Quản lý lớp học', 'update', 'web_admin', 31, 1456732413, 'admin', 'id,name,url,_table,parameter,file,img,_order,ajax,type,parent,statusfields%%%values31%%%Quản lý lớp học%%%class%%%mn_class%%%%%%mn_class%%%adIconOther%%%102%%%0%%%3%%%0%%%1', 'vi', 0, NULL, NULL),
(821, 'Quản lý khóa học', 'update', 'web_admin', 30, 1456732415, 'admin', 'id,name,url,_table,parameter,file,img,_order,ajax,type,parent,statusfields%%%values30%%%Quản lý khóa học%%%courses%%%mn_courses%%%%%%mn_courses%%%adIconCourse%%%101%%%0%%%3%%%0%%%1', 'vi', 0, NULL, NULL),
(822, 'Khách hàng liên hệ', 'update', 'web_admin', 36, 1456732416, 'admin', 'id,name,url,_table,parameter,file,img,_order,ajax,type,parent,statusfields%%%values36%%%Khách hàng liên hệ%%%viewContact%%%web_contact%%%%%%mn_view_contact%%%adIconProcedure%%%100%%%0%%%3%%%0%%%1', 'vi', 0, NULL, NULL),
(823, 'Quản lý tuyển dụng', 'update', 'web_admin', 19, 1456732424, 'admin', 'id,name,url,_table,parameter,file,img,_order,ajax,type,parent,statusfields%%%values19%%%Quản lý tuyển dụng%%%recruit%%%web_header%%%?properties=2&type_id=7%%%web_recruit%%%adIconOpinion%%%3%%%1%%%1%%%0%%%1', 'vi', 0, NULL, NULL),
(824, 'Quản lý công ty', 'update', 'web_admin', 33, 1456732427, 'admin', 'id,name,url,_table,parameter,file,img,_order,ajax,type,parent,statusfields%%%values33%%%Quản lý công ty%%%company%%%web_company%%%%%%web_company%%%adIconParts%%%4%%%0%%%1%%%0%%%1', 'vi', 0, NULL, NULL),
(825, 'Quản lý hình ảnh', 'update', 'web_admin', 6, 1456732429, 'admin', 'id,name,url,_table,parameter,file,img,_order,ajax,type,parent,statusfields%%%values6%%%Quản lý hình ảnh%%%photos%%%web_header%%%?properties=2&type_id=8%%%web_photos%%%adIconPhoto%%%5%%%0%%%1%%%0%%%1', 'vi', 0, NULL, NULL),
(826, 'Quản lý videos', 'update', 'web_admin', 26, 1456732433, 'admin', 'id,name,url,_table,parameter,file,img,_order,ajax,type,parent,statusfields%%%values26%%%Quản lý videos%%%videos%%%web_header%%%?properties=2&type_id=9%%%web_videos%%%adIconVideo%%%6%%%0%%%1%%%0%%%1', 'vi', 0, NULL, NULL),
(827, 'Danh sách chi nhánh', 'update', 'web_admin', 7, 1456732436, 'admin', 'id,name,url,_table,parameter,file,img,_order,ajax,type,parent,statusfields%%%values7%%%Danh sách chi nhánh%%%branch%%%web_branch%%%%%%web_branch%%%adIconOther%%%7%%%0%%%1%%%0%%%1', 'vi', 0, NULL, NULL),
(828, 'Danh sách Tỉnh - Thành', 'update', 'web_admin', 9, 1456732443, 'admin', 'id,name,url,_table,parameter,file,img,_order,ajax,type,parent,statusfields%%%values9%%%Danh sách Tỉnh - Thành%%%listcity%%%web_listcity%%%%%%web_listcity%%%adIconOther%%%20%%%0%%%1%%%0%%%1', 'vi', 0, NULL, NULL),
(829, 'Trang chủ', 'create', 'web_header', 1, 1456733390, 'admin', '', 'vi', 0, NULL, NULL),
(830, 'Giới thiệu', 'create', 'web_header', 2, 1456734890, 'admin', '', 'vi', 0, NULL, NULL),
(831, 'Slider home', 'create', 'web_header', 3, 1456735368, 'admin', '', 'vi', 0, NULL, NULL),
(832, 'Slider home', 'update', 'web_header', 3, 1456735393, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values3%%%Slider home%%%%%%%%%%%%%%%%%%%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1456735140%%%vi%%%1%%%2%%%16%%%,16,%%%,1,', 'vi', 0, NULL, NULL),
(833, 'Bất động sản', 'create', 'web_header', 4, 1456735896, 'admin', '', 'vi', 0, NULL, NULL),
(834, 'Dịch vụ', 'create', 'web_header', 5, 1456735917, 'admin', '', 'vi', 0, NULL, NULL),
(835, 'Thư viện', 'create', 'web_header', 6, 1456735987, 'admin', '', 'vi', 0, NULL, NULL),
(836, 'Liên hệ', 'create', 'web_header', 7, 1456736008, 'admin', '', 'vi', 0, NULL, NULL),
(837, 'Copyright', 'update', 'web_config', 9, 1456736217, 'admin', 'id,name,name_var,value,_order,lang,statusfields%%%values9%%%Copyright%%%copyright%%%Bản quyền © 2010 - 2016 thuộc về Trường dạy nghề ẩm thực NETSPACE ghi rõ nguồn dayamthuc.vn khi bạn phát hành lại thông tin từ website.%%%4%%%vi%%%1', 'vi', 0, NULL, NULL),
(838, 'Địa chỉ', 'update', 'web_config', 15, 1456736357, 'admin', 'id,name,name_var,value,_order,lang,statusfields%%%values15%%%Địa chỉ%%%address%%%%%%2%%%vi%%%0', 'vi', 0, NULL, NULL),
(839, 'Điện thoại', 'update', 'web_config', 11, 1456736405, 'admin', 'id,name,name_var,value,_order,lang,statusfields%%%values11%%%Điện thoại%%%tel%%%%%%3%%%vi%%%0', 'vi', 0, NULL, NULL),
(840, 'Email', 'update', 'web_config', 10, 1456736440, 'admin', 'id,name,name_var,value,_order,lang,statusfields%%%values10%%%Email%%%email%%%support@dayamthuc.vn%%%6%%%vi%%%1', 'vi', 0, NULL, NULL),
(841, 'Bất động sản', 'update', 'web_header', 4, 1456737066, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values4%%%Bất động sản%%%bat-dong-san%%%%%%%%%Bất động sản%%%%%%bất động sản,bat dong san%%%%%%0%%%%%%%%%%%%%%%%%%3%%%%%%1456735860%%%vi%%%1%%%1%%%2%%%,2,', 'vi', 0, NULL, NULL),
(842, 'Dự án mới', 'create', 'web_header', 8, 1456737144, 'admin', '', 'vi', 0, NULL, NULL),
(843, 'Dự án đầu tư', 'create', 'web_header', 9, 1456737170, 'admin', '', 'vi', 0, NULL, NULL),
(844, 'Dự án giá tốt', 'create', 'web_header', 10, 1456737192, 'admin', '', 'vi', 0, NULL, NULL),
(845, 'Cảm nghĩ học viên', 'update', 'web_type', 6, 1456737207, 'admin', 'id,name,type,_table,url_img,url_img_thumb,_order,other,statusfields%%%values6%%%Cảm nghĩ học viên%%%opinion%%%web_header%%%public/images/videos/%%%public/_thumbs/Images/videos/%%%5%%%1%%%1', 'vi', 0, NULL, NULL),
(846, 'Tuyển dụng', 'update', 'web_type', 7, 1456737209, 'admin', 'id,name,type,_table,url_img,url_img_thumb,_order,other,statusfields%%%values7%%%Tuyển dụng%%%recruit%%%web_header%%%%%%%%%6%%%1%%%1', 'vi', 0, NULL, NULL),
(847, 'Thư viện', 'update', 'web_type', 4, 1456737212, 'admin', 'id,name,type,_table,url_img,url_img_thumb,_order,other,statusfields%%%values4%%%Thư viện%%%library%%%web_header%%%public/images/articles/%%%public/_thumbs/Images/articles/%%%7%%%1%%%1', 'vi', 0, NULL, NULL),
(848, 'Thư viện ảnh', 'update', 'web_type', 8, 1456737215, 'admin', 'id,name,type,_table,url_img,url_img_thumb,_order,other,statusfields%%%values8%%%Thư viện ảnh%%%photos%%%web_header%%%%%%%%%8%%%1%%%1', 'vi', 0, NULL, NULL),
(849, 'Thư viện video', 'update', 'web_type', 9, 1456737217, 'admin', 'id,name,type,_table,url_img,url_img_thumb,_order,other,statusfields%%%values9%%%Thư viện video%%%videos%%%web_header%%%%%%%%%9%%%1%%%1', 'vi', 0, NULL, NULL),
(850, 'Lịch khai giảng', 'update', 'web_type', 10, 1456737219, 'admin', 'id,name,type,_table,url_img,url_img_thumb,_order,other,statusfields%%%values10%%%Lịch khai giảng%%%opening%%%%%%%%%%%%10%%%1%%%1', 'vi', 0, NULL, NULL),
(851, 'Thời khóa biểu', 'update', 'web_type', 11, 1456737221, 'admin', 'id,name,type,_table,url_img,url_img_thumb,_order,other,statusfields%%%values11%%%Thời khóa biểu%%%schedule%%%%%%%%%%%%11%%%1%%%1', 'vi', 0, NULL, NULL),
(852, 'Khóa học', 'update', 'web_type', 3, 1456737299, 'admin', 'id,name,type,_table,url_img,url_img_thumb,_order,other,statusfields%%%values3%%%Khóa học%%%courses%%%web_header%%%public/images/articles/%%%public/_thumbs/Images/articles/%%%3%%%1%%%1', 'vi', 0, NULL, NULL),
(853, 'Quản lý khóa học', 'update', 'web_admin', 5, 1456737318, 'admin', 'id,name,url,_table,parameter,file,img,_order,ajax,type,parent,statusfields%%%values5%%%Quản lý khóa học%%%couses%%%web_header%%%?properties=2&type_id=3%%%web_couses%%%adIconCourse%%%2%%%0%%%1%%%0%%%1', 'vi', 0, NULL, NULL),
(854, 'Dự án', 'update', 'web_header', 4, 1456737412, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values4%%%Dự án%%%du-an%%%%%%%%%Dự án%%%%%%dự án%%%%%%0%%%%%%%%%%%%%%%%%%3%%%%%%1456735860%%%vi%%%1%%%1%%%2%%%,2,', 'vi', 0, NULL, NULL),
(855, 'Căn hộ Melody Residences', 'create', 'web_header', 11, 1456737551, 'admin', '', 'vi', 0, NULL, NULL),
(856, 'Căn hộ Melody Residences', 'update', 'web_header', 11, 1456738006, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values11%%%Căn hộ Melody Residences%%%can-ho-melody-residences%%%%%%%%%Căn hộ Melody Residences%%%Cùng thiên nhiên xanh mát trong lành, Melody Residences không chỉ đem đến sự tiện nghi và sang trọng mà còn là nơi lý tưởng%%%căn hộ melody residences,can ho melody residences%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1456737360%%%vi%%%1%%%2%%%3%%%%%%,4,8,9,10,', 'vi', 0, NULL, NULL),
(857, 'Căn hộ Melody Residences', 'update', 'web_header', 11, 1456738112, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values11%%%Căn hộ Melody Residences%%%can-ho-melody-residences%%%%%%%%%Căn hộ Melody Residences%%%Cùng thiên nhiên xanh mát trong lành, Melody Residences không chỉ đem đến sự tiện nghi và sang trọng mà còn là nơi lý tưởng%%%căn hộ melody residences,can ho melody residences%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1456737360%%%vi%%%1%%%2%%%3%%%%%%,4,8,9,10,', 'vi', 0, NULL, NULL),
(858, 'Slider home', 'update', 'web_header', 3, 1456738157, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values3%%%Slider home%%%%%%%%%%%%%%%%%%%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1456735140%%%vi%%%1%%%2%%%16%%%,16,%%%,1,', 'vi', 0, NULL, NULL),
(859, 'Lavita Garden -  Khu vườn điểm tô cho cuộc sống tràn đầy', 'create', 'web_header', 12, 1456738463, 'admin', '', 'vi', 0, NULL, NULL),
(860, 'Căn hộ Melody Residences', 'update', 'web_header', 11, 1456738479, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values11%%%Căn hộ Melody Residences%%%can-ho-melody-residences%%%%%%1456738109.jpg%%%Căn hộ Melody Residences%%%Cùng thiên nhiên xanh mát trong lành, Melody Residences không chỉ đem đến sự tiện nghi và sang trọng mà còn là nơi lý tưởng%%%căn hộ melody residences,can ho melody residences%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1456737360%%%vi%%%1%%%2%%%3%%%%%%,4,8,9,10,', 'vi', 0, NULL, NULL),
(861, 'Căn hộ 8x Rainbow - Chỉ 5 phút đến công viên văn hóa Đầm Sen', 'create', 'web_header', 13, 1456738673, 'admin', '', 'vi', 0, NULL, NULL),
(862, 'Lavita Garden -  Khu vườn điểm tô cho cuộc sống tràn đầy', 'update', 'web_header', 12, 1456738726, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values12%%%Lavita Garden -  Khu vườn điểm tô cho cuộc sống tràn đầy%%%lavita-garden%%%%%%%%%Lavita Garden -  Khu vườn điểm tô cho cuộc sống tràn đầy%%%Đến với Lavita Garden, bạn sẽ đắm chìm trong không gian thơ mộng của một khu vườn tràn đầy sức sống%%%lavita garden,khu vườn điểm tô cho cuộc sống tràn đầy%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1456738200%%%vi%%%1%%%2%%%3%%%%%%,4,8,9,10,', 'vi', 0, NULL, NULL),
(863, 'Lavita Garden -  Khu vườn điểm tô cho cuộc sống tràn đầy', 'update', 'web_header', 12, 1456738735, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values12%%%Lavita Garden -  Khu vườn điểm tô cho cuộc sống tràn đầy%%%lavita-garden%%%%%%%%%Lavita Garden -  Khu vườn điểm tô cho cuộc sống tràn đầy%%%Đến với Lavita Garden, bạn sẽ đắm chìm trong không gian thơ mộng của một khu vườn tràn đầy sức sống%%%lavita garden,khu vườn điểm tô cho cuộc sống tràn đầy%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1456738200%%%vi%%%1%%%2%%%3%%%%%%,4,8,9,10,', 'vi', 0, NULL, NULL),
(864, 'Căn hộ 8x Rainbow - Chỉ 5 phút đến công viên văn hóa Đầm Sen', 'update', 'web_header', 13, 1456738773, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values13%%%Căn hộ 8x Rainbow - Chỉ 5 phút đến công viên văn hóa Đầm Sen%%%can-ho-8x-rainbow%%%%%%%%%Căn hộ 8x Rainbow - Chỉ 5 phút đến công viên văn hóa Đầm Sen%%%%%%căn hộ 8x rainbow,can ho 8x rainbow%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1456738500%%%vi%%%1%%%2%%%3%%%%%%,4,8,9,10,', 'vi', 0, NULL, NULL),
(865, 'Căn hộ 8x Rainbow - Chỉ 5 phút đến công viên văn hóa Đầm Sen', 'update', 'web_header', 13, 1456738795, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values13%%%Căn hộ 8x Rainbow - Chỉ 5 phút đến công viên văn hóa Đầm Sen%%%can-ho-8x-rainbow%%%%%%%%%Căn hộ 8x Rainbow - Chỉ 5 phút đến công viên văn hóa Đầm Sen%%%%%%căn hộ 8x rainbow,can ho 8x rainbow%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1456738500%%%vi%%%1%%%2%%%3%%%%%%,4,8,9,10,', 'vi', 0, NULL, NULL),
(866, 'Căn hộ florita - Quận 7', 'create', 'web_header', 14, 1456738850, 'admin', '', 'vi', 0, NULL, NULL),
(867, 'Căn hộ florita - Quận 7', 'update', 'web_header', 14, 1456738956, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values14%%%Căn hộ florita - Quận 7%%%can-ho-florita%%%%%%%%%Căn hộ florita - Quận 7%%%%%%căn hộ florita,quận 7,can ho florita%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1456738800%%%vi%%%1%%%2%%%3%%%%%%,4,8,9,10,', 'vi', 0, NULL, NULL),
(868, 'Căn hộ florita - Quận 7', 'update', 'web_header', 14, 1456738977, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values14%%%Căn hộ florita - Quận 7%%%can-ho-florita%%%%%%1456738851.jpg%%%Căn hộ florita - Quận 7%%%%%%căn hộ florita,quận 7,can ho florita%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1456738800%%%vi%%%1%%%2%%%3%%%%%%,4,8,9,10,', 'vi', 0, NULL, NULL),
(869, 'Căn hộ 8x Rainbow - Chỉ 5 phút đến công viên văn hóa Đầm Sen', 'update', 'web_header', 13, 1456739014, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values13%%%Căn hộ 8x Rainbow - Chỉ 5 phút đến công viên văn hóa Đầm Sen%%%can-ho-8x-rainbow%%%%%%1456738793.jpg%%%Căn hộ 8x Rainbow - Chỉ 5 phút đến công viên văn hóa Đầm Sen%%%%%%căn hộ 8x rainbow,can ho 8x rainbow%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1456738500%%%vi%%%1%%%2%%%3%%%%%%,4,8,9,10,', 'vi', 0, NULL, NULL),
(870, 'Lavita Garden -  Khu vườn điểm tô cho cuộc sống tràn đầy', 'update', 'web_header', 12, 1456739044, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values12%%%Lavita Garden -  Khu vườn điểm tô cho cuộc sống tràn đầy%%%lavita-garden%%%%%%%%%Lavita Garden -  Khu vườn điểm tô cho cuộc sống tràn đầy%%%Đến với Lavita Garden, bạn sẽ đắm chìm trong không gian thơ mộng của một khu vườn tràn đầy sức sống%%%lavita garden,khu vườn điểm tô cho cuộc sống tràn đầy%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1456738200%%%vi%%%1%%%2%%%3%%%%%%,4,8,9,10,', 'vi', 0, NULL, NULL),
(871, 'Căn hộ cao cấp Sky Center - Quận Tân Bình', 'create', 'web_header', 15, 1456739120, 'admin', '', 'vi', 0, NULL, NULL),
(872, 'Căn hộ cao cấp Sky Center - Quận Tân Bình', 'update', 'web_header', 15, 1456739235, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values15%%%Căn hộ cao cấp Sky Center - Quận Tân Bình%%%can-ho-cao-cap-sky-center%%%%%%%%%Căn hộ cao cấp Sky Center - Quận Tân Bình%%%%%%căn hộ cao cấp,sky center,quận tân bình,can ho cao cap%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1456738980%%%vi%%%1%%%2%%%3%%%%%%,4,8,9,10,', 'vi', 0, NULL, NULL),
(873, 'Giai Việt Residence - Quận 8  TpHCM', 'create', 'web_header', 16, 1456739301, 'admin', '', 'vi', 0, NULL, NULL),
(874, 'Giai Việt Residence - Quận 8  TpHCM', 'update', 'web_header', 16, 1456739400, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values16%%%Giai Việt Residence - Quận 8  TpHCM%%%giai-viet-residence%%%%%%%%%Giai Việt Residence - Quận 8  TpHCM%%%%%%giai việt residence,quận 8 hcm,giai viet residence%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1456739220%%%vi%%%1%%%2%%%3%%%%%%,4,8,9,10,', 'vi', 0, NULL, NULL),
(875, 'Thư viện', 'update', 'web_header', 6, 1456739783, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values6%%%Thư viện%%%thu-vien%%%%%%%%%Thư viện%%%%%%thư viện,thu vien%%%%%%0%%%%%%%%%%%%%%%%%%5%%%%%%1456735920%%%vi%%%1%%%1%%%2%%%,2,', 'vi', 0, NULL, NULL),
(876, 'Giới thiệu công ty Minh Nhật', 'create', 'web_header', 17, 1456739881, 'admin', '', 'vi', 0, NULL, NULL),
(877, 'Dự án bất động sản', 'create', 'web_header', 18, 1456739909, 'admin', '', 'vi', 0, NULL, NULL),
(878, 'Dịch vụ Minh Nhật', 'create', 'web_header', 19, 1456739927, 'admin', '', 'vi', 0, NULL, NULL),
(879, 'Hồ sơ công ty', 'create', 'web_header', 20, 1456739948, 'admin', '', 'vi', 0, NULL, NULL),
(880, 'Giới thiệu', 'update', 'web_header', 2, 1456739974, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values2%%%Giới thiệu%%%gioi-thieu%%%%%%%%%Giới thiệu%%%Giới thiệu bất động sản Minh Nhật%%%giới thiệu%%%%%%0%%%%%%%%%%%%%%%%%%2%%%%%%1456734840%%%vi%%%1%%%1%%%5%%%,2,', 'vi', 0, NULL, NULL),
(881, 'Giới thiệu', 'update', 'web_header', 2, 1456739994, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values2%%%Giới thiệu%%%gioi-thieu%%%gioi-thieu-cong-ty-minh-nhat%%%%%%Giới thiệu%%%Giới thiệu bất động sản Minh Nhật%%%giới thiệu%%%%%%0%%%%%%%%%%%%%%%%%%2%%%%%%1456734840%%%vi%%%1%%%1%%%5%%%,2,', 'vi', 0, NULL, NULL),
(882, 'Giới thiệu công ty Minh Nhật', 'update', 'web_header', 17, 1456740010, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values17%%%Giới thiệu công ty Minh Nhật%%%gioi-thieu-cong-ty-minh-nhat%%%%%%%%%Giới thiệu công ty Minh Nhật%%%%%%giới thiệu công ty minh nhật%%%%%%2%%%%%%%%%%%%%%%%%%1%%%%%%1456739820%%%vi%%%1%%%1%%%5%%%,20,', 'vi', 0, NULL, NULL),
(883, 'Dự án bất động sản', 'update', 'web_header', 18, 1456740193, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values18%%%Dự án bất động sản%%%du-an-bat-dong-san%%%%%%%%%Dự án bất động sản%%%%%%dự án bất động sản%%%%%%2%%%%%%%%%%%%%%%%%%2%%%%%%1456739880%%%vi%%%1%%%1%%%5%%%,20,', 'vi', 0, NULL, NULL),
(884, 'Quá trình thành lập', 'update', 'web_header', 18, 1456740215, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values18%%%Quá trình thành lập%%%qua-trinh-thanh-lap%%%%%%1456740182.jpg%%%Quá trình thành lập%%%%%%quá trình thành lập%%%%%%2%%%%%%%%%%%%%%%%%%2%%%%%%1456739880%%%vi%%%1%%%1%%%5%%%,20,', 'vi', 0, NULL, NULL),
(885, 'Dịch vụ Minh Nhật', 'update', 'web_header', 19, 1456740300, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values19%%%Dịch vụ Minh Nhật%%%dich-vu-minh-nhat%%%%%%%%%Dịch vụ Minh Nhật%%%%%%dịch vụ minh nhật%%%%%%2%%%%%%%%%%%%%%%%%%3%%%%%%1456739880%%%vi%%%1%%%1%%%5%%%,20,', 'vi', 0, NULL, NULL),
(886, 'Hồ sơ công ty', 'update', 'web_header', 20, 1456740371, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values20%%%Hồ sơ công ty%%%ho-so-cong-ty%%%%%%%%%Hồ sơ công ty%%%%%%hồ sơ công ty%%%%%%2%%%%%%%%%%%%%%%%%%4%%%%%%1456739880%%%vi%%%1%%%1%%%5%%%,20,', 'vi', 0, NULL, NULL),
(887, 'Giới thiệu Minh Nhật', 'update', 'web_header', 17, 1456740494, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values17%%%Giới thiệu Minh Nhật%%%gioi-thieu-minh-nhat%%%%%%%%%Giới thiệu công ty Minh Nhật%%%%%%giới thiệu công ty minh nhật%%%%%%2%%%%%%%%%%%%%%%%%%1%%%%%%1456739820%%%vi%%%1%%%1%%%5%%%,20,', 'vi', 0, NULL, NULL),
(888, 'Tên trang website', 'update', 'web_config', 27, 1456740658, 'admin', 'id,name,name_var,value,_order,lang,statusfields%%%values27%%%Tên trang website%%%sitename%%%Trường dạy nghề ẩm thực NETSPACE%%%1%%%vi%%%1', 'vi', 0, NULL, NULL),
(889, 'Tên trang website', 'update', 'web_config', 27, 1456740678, 'admin', 'id,name,name_var,value,_order,lang,statusfields%%%values27%%%Tên trang website%%%sitename%%%Công ty TNHH Minh Nhật%%%1%%%vi%%%1', 'vi', 0, NULL, NULL),
(890, 'Giới thiệu Minh Nhật', 'update', 'web_header', 17, 1456740743, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values17%%%Giới thiệu Minh Nhật%%%gioi-thieu-minh-nhat%%%%%%%%%Giới thiệu công ty Minh Nhật%%%%%%giới thiệu công ty minh nhật%%%%%%2%%%%%%%%%%%%%%%%%%1%%%%%%1456739820%%%vi%%%1%%%1%%%5%%%,20,', 'vi', 0, NULL, NULL),
(891, 'Điện thoại', 'update', 'web_config', 11, 1456740764, 'admin', 'id,name,name_var,value,_order,lang,statusfields%%%values11%%%Điện thoại%%%tel%%%072226257 - 07238983%%%3%%%vi%%%1', 'vi', 0, NULL, NULL),
(892, 'Tên viết tắt', 'update', 'web_config', 13, 1456740785, 'admin', 'id,name,name_var,value,_order,lang,statusfields%%%values13%%%Tên viết tắt%%%name%%%NETSPACE%%%8%%%vi%%%1', 'vi', 0, NULL, NULL);
INSERT INTO `web_logs` (`id`, `name`, `action`, `_table`, `table_id`, `datetime`, `username`, `content`, `lang`, `status`, `date_restore`, `user_restore`) VALUES
(893, 'Số tour / trang', 'update', 'web_config', 6, 1456740798, 'admin', 'id,name,name_var,value,_order,lang,statusfields%%%values6%%%Số tour / trang%%%limit_2%%%18%%%11%%%vi%%%1', 'vi', 0, NULL, NULL),
(894, 'Tuyển dụng / trang', 'update', 'web_config', 7, 1456740809, 'admin', 'id,name,name_var,value,_order,lang,statusfields%%%values7%%%Tuyển dụng / trang%%%limit_3%%%10%%%12%%%vi%%%1', 'vi', 0, NULL, NULL),
(895, 'Số video / trang', 'update', 'web_config', 8, 1456740812, 'admin', 'id,name,name_var,value,_order,lang,statusfields%%%values8%%%Số video / trang%%%limit_4%%%15%%%13%%%vi%%%1', 'vi', 0, NULL, NULL),
(896, 'Số photos / trang', 'update', 'web_config', 29, 1456740814, 'admin', 'id,name,name_var,value,_order,lang,statusfields%%%values29%%%Số photos / trang%%%limit_5%%%12%%%14%%%vi%%%1', 'vi', 0, NULL, NULL),
(897, 'Cấu hình website', 'update', 'web_admin', 2, 1456740829, 'admin', 'id,name,url,_table,parameter,file,img,_order,ajax,type,parent,statusfields%%%values2%%%Cấu hình website%%%config%%%web_config%%%%%%web_config%%%adIconConfig%%%49%%%0%%%2%%%0%%%1', 'vi', 0, NULL, NULL),
(898, 'Home Event', 'update', 'web_position', 8, 1456741617, 'admin', 'id,name,themes,_order,type,statusfields%%%values8%%%Home Event%%%%%%7%%%2%%%1', 'vi', 0, NULL, NULL),
(899, 'Dự án mới', 'update', 'web_header', 8, 1456741644, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values8%%%Dự án mới%%%du-an-moi%%%%%%%%%Dự án mới%%%%%%dự án mới,du an moi%%%%%%4%%%%%%%%%%%%%%%%%%1%%%%%%1456737060%%%vi%%%1%%%1%%%3%%%,20,', 'vi', 0, NULL, NULL),
(900, 'Dự án đầu tư', 'update', 'web_header', 9, 1456741654, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values9%%%Dự án đầu tư%%%du-an-dau-tu%%%%%%%%%Dự án đầu tư%%%%%%dự án đầu tư%%%%%%4%%%%%%%%%%%%%%%%%%2%%%%%%1456737120%%%vi%%%1%%%1%%%3%%%,20,', 'vi', 0, NULL, NULL),
(901, 'Dự án giá tốt', 'update', 'web_header', 10, 1456741658, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values10%%%Dự án giá tốt%%%du-an-gia-tot%%%%%%%%%Dự án giá tốt%%%%%%dự án giá tốt%%%%%%4%%%%%%%%%%%%%%%%%%3%%%%%%1456737120%%%vi%%%1%%%1%%%3%%%,20,', 'vi', 0, NULL, NULL),
(902, 'Dự án mới', 'update', 'web_header', 8, 1456742139, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values8%%%Dự án mới%%%du-an-moi%%%%%%%%%Dự án mới%%%%%%dự án mới,du an moi%%%%%%4%%%%%%%%%%%%%%%%%%1%%%%%%1456737060%%%vi%%%1%%%1%%%3%%%,8,20,', 'vi', 0, NULL, NULL),
(903, 'Dự án đầu tư', 'update', 'web_header', 9, 1456742254, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values9%%%Dự án đầu tư%%%du-an-dau-tu%%%%%%%%%Dự án đầu tư%%%%%%dự án đầu tư%%%%%%4%%%%%%%%%%%%%%%%%%2%%%%%%1456737120%%%vi%%%1%%%1%%%3%%%,8,20,', 'vi', 0, NULL, NULL),
(904, 'Dự án giá tốt', 'update', 'web_header', 10, 1456742326, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values10%%%Dự án giá tốt%%%du-an-gia-tot%%%%%%%%%Dự án giá tốt%%%%%%dự án giá tốt%%%%%%4%%%%%%%%%%%%%%%%%%3%%%%%%1456737120%%%vi%%%1%%%1%%%3%%%,8,20,', 'vi', 0, NULL, NULL),
(905, 'Căn hộ florita - Quận 7', 'update', 'web_header', 14, 1456799942, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values14%%%Căn hộ florita - Quận 7%%%can-ho-florita%%%%%%1456738851.jpg%%%Căn hộ florita - Quận 7%%%Tọa lạc ngay khu đô thị Him Lam Tân Hưng, Florita như một đóa hoa rực rỡ và đầy cuốn hút bởi vị trí nổi bật, thuận tiện kết nối toàn khu vực thành phố%%%căn hộ florita,quận 7,can ho florita%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1456738800%%%vi%%%1%%%2%%%3%%%%%%,4,8,9,10,', 'vi', 0, NULL, NULL),
(906, 'Tuyển dụng / trang', 'update', 'web_config', 7, 1456800251, 'admin', 'id,name,name_var,value,_order,lang,statusfields%%%values7%%%Tuyển dụng / trang%%%limit_3%%%10%%%12%%%vi%%%0', 'vi', 0, NULL, NULL),
(907, 'Dự án', 'update', 'web_header', 4, 1456800541, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values4%%%Dự án%%%du-an%%%%%%%%%Dự án%%%%%%dự án%%%%%%0%%%%%%%%%%%%%%%%%%3%%%%%%1456735860%%%vi%%%1%%%1%%%3%%%,2,', 'vi', 0, NULL, NULL),
(908, 'Số project / trang', 'update', 'web_config', 6, 1456800618, 'admin', 'id,name,name_var,value,_order,lang,statusfields%%%values6%%%Số project / trang%%%limit_2%%%18%%%11%%%vi%%%1', 'vi', 0, NULL, NULL),
(909, 'Số tin / trang', 'update', 'web_config', 5, 1456800638, 'admin', 'id,name,name_var,value,_order,lang,statusfields%%%values5%%%Số tin / trang%%%limit_1%%%6%%%10%%%vi%%%1', 'vi', 0, NULL, NULL),
(910, 'Số tin / trang', 'update', 'web_config', 5, 1456800651, 'admin', 'id,name,name_var,value,_order,lang,statusfields%%%values5%%%Số tin / trang%%%limit_1%%%5%%%10%%%vi%%%1', 'vi', 0, NULL, NULL),
(911, 'Số project / trang', 'update', 'web_config', 6, 1456801087, 'admin', 'id,name,name_var,value,_order,lang,statusfields%%%values6%%%Số project / trang%%%limit_2%%%6%%%11%%%vi%%%1', 'vi', 0, NULL, NULL),
(912, 'Dự án mới', 'update', 'web_header', 8, 1456801219, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values8%%%Dự án mới%%%du-an-moi%%%%%%%%%Dự án mới%%%Minh Nhật là thông tin bất động sản hàng đầu tại Việt Nam tổng hợp dự án Bất động sản, dự án cao ốc văn phòng, dự án khu đô thị,...%%%dự án mới,du an moi%%%%%%4%%%%%%%%%%%%%%%%%%1%%%%%%1456737060%%%vi%%%1%%%1%%%3%%%,8,20,', 'vi', 0, NULL, NULL),
(913, 'Dự án đầu tư', 'update', 'web_header', 9, 1456801231, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values9%%%Dự án đầu tư%%%du-an-dau-tu%%%%%%%%%Dự án đầu tư%%%Tộng hợp thông tin tiến độ các dự án bất động sản, cập nhật quy hoạch hạ tầng các tỉnh, thành. Các dự án bất động sản sắp mở được Minh Nhật cập nhật chi tiết%%%dự án đầu tư%%%%%%4%%%%%%%%%%%%%%%%%%2%%%%%%1456737120%%%vi%%%1%%%1%%%3%%%,8,20,', 'vi', 0, NULL, NULL),
(914, 'Dự án giá tốt', 'update', 'web_header', 10, 1456801243, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values10%%%Dự án giá tốt%%%du-an-gia-tot%%%%%%%%%Dự án giá tốt%%%Thông tin chuyên sâu về thị trường nhà đất, quy hoạch khu dân cư, dự án giảm giá, dự án bất động sản, chính sách quy hoạch mới với các nhận định bất động sản Minh Nhật%%%dự án giá tốt%%%%%%4%%%%%%%%%%%%%%%%%%3%%%%%%1456737120%%%vi%%%1%%%1%%%3%%%,8,20,', 'vi', 0, NULL, NULL),
(915, 'Dự án Tp.HCM', 'create', 'web_header', 21, 1456801384, 'admin', '', 'vi', 0, NULL, NULL),
(916, 'Dự án Hà Nội', 'create', 'web_header', 22, 1456801409, 'admin', '', 'vi', 0, NULL, NULL),
(917, 'Dự án Đà Nẵng', 'create', 'web_header', 23, 1456801440, 'admin', '', 'vi', 0, NULL, NULL),
(918, 'Dự án Bình Dương', 'create', 'web_header', 24, 1456801462, 'admin', '', 'vi', 0, NULL, NULL),
(919, 'Dự án Đồng Nai', 'create', 'web_header', 25, 1456801494, 'admin', '', 'vi', 0, NULL, NULL),
(920, 'Các dự án khác', 'create', 'web_header', 26, 1456801531, 'admin', '', 'vi', 0, NULL, NULL),
(921, 'Event banner right', 'create', 'web_header', 27, 1456801839, 'admin', '', 'vi', 0, NULL, NULL),
(922, 'Event banner right', 'update', 'web_header', 27, 1456801848, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values27%%%Event banner right%%%%%%javascript:;%%%%%%%%%%%%%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1456801740%%%vi%%%1%%%2%%%16%%%,18,', 'vi', 0, NULL, NULL),
(923, 'Event banner right 2', 'create', 'web_header', 28, 1456801887, 'admin', '', 'vi', 0, NULL, NULL),
(924, 'Event banner right 2', 'update', 'web_header', 28, 1456801889, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values28%%%Event banner right 2%%%%%%javascript:;%%%%%%%%%%%%%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1456801860%%%vi%%%1%%%2%%%16%%%,18,', 'vi', 0, NULL, NULL),
(925, 'Event banner right', 'update', 'web_header', 27, 1456801899, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values27%%%Event banner right%%%%%%javascript:;%%%1456801840.jpg%%%%%%%%%%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1456801740%%%vi%%%1%%%2%%%16%%%,18,', 'vi', 0, NULL, NULL),
(926, 'Tin tức', 'update', 'web_header', 6, 1456802705, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values6%%%Tin tức%%%tin-tuc%%%%%%%%%Tin tức%%%%%%tin tức,tin tuc%%%%%%0%%%%%%%%%%%%%%%%%%5%%%%%%1456735920%%%vi%%%1%%%1%%%2%%%,2,', 'vi', 0, NULL, NULL),
(927, 'Cơ hội đầu tư bất động sản tại Mỹ', 'create', 'web_header', 29, 1456803223, 'admin', '', 'vi', 0, NULL, NULL),
(928, 'Cơ hội đầu tư bất động sản tại Mỹ', 'update', 'web_header', 29, 1456803247, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values29%%%Cơ hội đầu tư bất động sản tại Mỹ%%%co-hoi-dau-tu-bat-dong-san-tai-my%%%%%%%%%Cơ hội đầu tư bất động sản tại Mỹ%%%Tham dự tọa đàm do Công ty Orient & Pacific Vietnam tổ chức, khách hàng sẽ được tìm hiểu về cơ hội đầu tư vào dự án bất động sản trọng điểm của Mỹ%%%cơ hội đầu tư bất động sản tại mỹ%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1456803000%%%vi%%%1%%%2%%%2%%%%%%,6,', 'vi', 0, NULL, NULL),
(929, 'Thăm quan, nhận quà tặng giá trị tại EcoXuân', 'create', 'web_header', 30, 1456803408, 'admin', '', 'vi', 0, NULL, NULL),
(930, 'Thăm quan, nhận quà tặng giá trị tại EcoXuân', 'update', 'web_header', 30, 1456803410, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values30%%%Thăm quan, nhận quà tặng giá trị tại EcoXuân%%%tham-quan-nhan-qua-tang-gia-tri-tai-ecoxuan%%%%%%%%%Thăm quan, nhận quà tặng giá trị tại EcoXuân%%%Khách đến thăm quan hoặc đặt cọc mua nhà khu đô thị EcoXuân sẽ nhận được nhiều ưu đãi.%%%thăm quan nhận quà tặng giá trị tại ecoxuân%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1456803240%%%vi%%%1%%%2%%%2%%%%%%,6,', 'vi', 0, NULL, NULL),
(931, 'Hotline', 'update', 'web_config', 12, 1456805082, 'admin', 'id,name,name_var,value,_order,lang,statusfields%%%values12%%%Hotline%%%hotline%%%%%%7%%%vi%%%1', 'vi', 0, NULL, NULL),
(932, 'Menu Top', 'update', 'web_position', 1, 1456805267, 'admin', 'id,name,themes,_order,type,statusfields%%%values1%%%Menu Top%%%%%%1%%%1%%%1', 'vi', 0, NULL, NULL),
(933, 'Menu footer', 'update', 'web_position', 3, 1456805271, 'admin', 'id,name,themes,_order,type,statusfields%%%values3%%%Menu footer%%%%%%3%%%1%%%1', 'vi', 0, NULL, NULL),
(934, 'Right liên kết mạng xã hội', 'update', 'web_position', 4, 1456805277, 'admin', 'id,name,themes,_order,type,statusfields%%%values4%%%Right liên kết mạng xã hội%%%%%%5%%%1%%%1', 'vi', 0, NULL, NULL),
(935, 'Home chương trình', 'update', 'web_position', 7, 1456805284, 'admin', 'id,name,themes,_order,type,statusfields%%%values7%%%Home chương trình%%%%%%8%%%2%%%1', 'vi', 0, NULL, NULL),
(936, 'Home yêu cầu đào tạo', 'update', 'web_position', 9, 1456805287, 'admin', 'id,name,themes,_order,type,statusfields%%%values9%%%Home yêu cầu đào tạo%%%%%%9%%%2%%%1', 'vi', 0, NULL, NULL),
(937, 'Home tại sao chọn Netspace', 'update', 'web_position', 10, 1456805289, 'admin', 'id,name,themes,_order,type,statusfields%%%values10%%%Home tại sao chọn Netspace%%%%%%10%%%2%%%1', 'vi', 0, NULL, NULL),
(938, 'Home cảm nghĩ', 'update', 'web_position', 11, 1456805291, 'admin', 'id,name,themes,_order,type,statusfields%%%values11%%%Home cảm nghĩ%%%%%%11%%%2%%%1', 'vi', 0, NULL, NULL),
(939, 'Home tin tức sự kiện', 'update', 'web_position', 12, 1456805293, 'admin', 'id,name,themes,_order,type,statusfields%%%values12%%%Home tin tức sự kiện%%%%%%12%%%2%%%1', 'vi', 0, NULL, NULL),
(940, 'Home tuyển dụng', 'update', 'web_position', 13, 1456805296, 'admin', 'id,name,themes,_order,type,statusfields%%%values13%%%Home tuyển dụng%%%%%%13%%%2%%%1', 'vi', 0, NULL, NULL),
(941, 'Home hoạt động', 'update', 'web_position', 15, 1456805301, 'admin', 'id,name,themes,_order,type,statusfields%%%values15%%%Home hoạt động%%%%%%15%%%2%%%1', 'vi', 0, NULL, NULL),
(942, 'Event home', 'update', 'web_position', 17, 1456805309, 'admin', 'id,name,themes,_order,type,statusfields%%%values17%%%Event home%%%%%%17%%%3%%%1', 'vi', 0, NULL, NULL),
(943, 'Giai Việt Residence - Quận 8  TpHCM', 'update', 'web_header', 16, 1456805370, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values16%%%Giai Việt Residence - Quận 8  TpHCM%%%giai-viet-residence%%%%%%1456739302.jpg%%%Giai Việt Residence - Quận 8  TpHCM%%%Giai Việt Residence sở hữu vị trí đắc địa, 3 mặt tiền đường lớn, trong khu quy hoạch đồng bộ: Trung tâm hành chính, Trung tâm thể dục thể thao, bệnh viện, trường học, siêu thị..%%%giai việt residence,quận 8 hcm,giai viet residence%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1456739220%%%vi%%%1%%%2%%%3%%%%%%,4,8,9,10,', 'vi', 0, NULL, NULL),
(944, 'Căn hộ cao cấp Sky Center - Quận Tân Bình', 'update', 'web_header', 15, 1456805378, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values15%%%Căn hộ cao cấp Sky Center - Quận Tân Bình%%%can-ho-cao-cap-sky-center%%%%%%1456739121.jpg%%%Căn hộ cao cấp Sky Center - Quận Tân Bình%%%Sky Center gồm 04 block (03 block căn hộ và 01 block officetel) được thiết kế theo phong cách hiện đại, kết hợp nghệ thuật tạo hình cảnh quan và bố trí hợp lý%%%căn hộ cao cấp,sky center,quận tân bình,can ho cao cap%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1456738980%%%vi%%%1%%%2%%%3%%%%%%,4,8,9,10,', 'vi', 0, NULL, NULL),
(945, 'Căn hộ florita - Quận 7', 'update', 'web_header', 14, 1456805384, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values14%%%Căn hộ florita - Quận 7%%%can-ho-florita%%%%%%1456799940.jpg%%%Căn hộ florita - Quận 7%%%Tọa lạc ngay khu đô thị Him Lam Tân Hưng, Florita như một đóa hoa rực rỡ và đầy cuốn hút bởi vị trí nổi bật, thuận tiện kết nối toàn khu vực thành phố%%%căn hộ florita,quận 7,can ho florita%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1456738800%%%vi%%%1%%%2%%%3%%%%%%,4,8,9,10,', 'vi', 0, NULL, NULL),
(946, 'Căn hộ 8x Rainbow - Chỉ 5 phút đến công viên văn hóa Đầm Sen', 'update', 'web_header', 13, 1456805390, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values13%%%Căn hộ 8x Rainbow - Chỉ 5 phút đến công viên văn hóa Đầm Sen%%%can-ho-8x-rainbow%%%%%%1456738793.jpg%%%Căn hộ 8x Rainbow - Chỉ 5 phút đến công viên văn hóa Đầm Sen%%%Giữa dòng người tấp nập của thành phố, cư dân khu căn hộ 8X Rainbow hòa mình vào lòng phố thị nhộn nhịp và sôi động bởi sắc màu tươi trẻ và không gian căng tràn sức sống.%%%căn hộ 8x rainbow,can ho 8x rainbow%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1456738500%%%vi%%%1%%%2%%%3%%%%%%,4,8,9,10,', 'vi', 0, NULL, NULL),
(947, 'Lavita Garden -  Khu vườn điểm tô cho cuộc sống tràn đầy', 'update', 'web_header', 12, 1456805411, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values12%%%Lavita Garden -  Khu vườn điểm tô cho cuộc sống tràn đầy%%%lavita-garden%%%%%%1456739043.jpg%%%Lavita Garden -  Khu vườn điểm tô cho cuộc sống tràn đầy%%%Đến với Lavita Garden, bạn sẽ đắm chìm trong không gian thơ mộng của một khu vườn tràn đầy sức sống%%%lavita garden,khu vườn điểm tô cho cuộc sống tràn đầy%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1456738200%%%vi%%%1%%%2%%%3%%%%%%,4,8,9,10,', 'vi', 0, NULL, NULL),
(948, 'Căn hộ Melody Residences', 'update', 'web_header', 11, 1456805424, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values11%%%Căn hộ Melody Residences%%%melody-residences%%%%%%1456738109.jpg%%%Căn hộ Melody Residences%%%Cùng thiên nhiên xanh mát trong lành, Melody Residences không chỉ đem đến sự tiện nghi và sang trọng mà còn là nơi lý tưởng%%%căn hộ melody residences,can ho melody residences%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1456737360%%%vi%%%1%%%2%%%3%%%%%%,4,8,9,10,', 'vi', 0, NULL, NULL),
(949, 'Dịch vụ', 'update', 'web_header', 5, 1456805561, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values5%%%Dịch vụ%%%dich-vu%%%%%%%%%Dịch vụ%%%%%%dịch vụ,dich vu%%%%%%0%%%%%%%%%%%%%%%%%%4%%%%%%1456735860%%%vi%%%1%%%1%%%2%%%,2,', 'vi', 0, NULL, NULL),
(950, 'Dịch Vụ Tư Vấn', 'create', 'web_header', 31, 1456805924, 'admin', '', 'vi', 0, NULL, NULL),
(951, 'Dịch Vụ Tư Vấn', 'update', 'web_header', 31, 1456805950, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values31%%%Dịch Vụ Tư Vấn%%%dich-vu-tu-van%%%%%%%%%Dịch Vụ Tư Vấn%%%Bộ phận Tư vấn cung cấp nhiều dịch vụ đa dạng như nghiên cứu thị trường, tư vấn ý tưởng phát triển, nghiên cứu nhân khẩu học, nghiên cứu khả thi%%%dịch vụ tư vấn%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1456805520%%%vi%%%1%%%2%%%2%%%%%%,5,', 'vi', 0, NULL, NULL),
(952, 'Dịch Vụ Tư Vấn', 'update', 'web_header', 31, 1456806004, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values31%%%Dịch Vụ Tư Vấn%%%dich-vu-tu-van%%%%%%1456805949.jpg%%%Dịch Vụ Tư Vấn%%%Bộ phận Tư vấn cung cấp nhiều dịch vụ đa dạng như nghiên cứu thị trường, tư vấn ý tưởng phát triển, nghiên cứu nhân khẩu học, nghiên cứu khả thi%%%dịch vụ tư vấn%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1456805520%%%vi%%%1%%%2%%%2%%%%%%,5,', 'vi', 0, NULL, NULL),
(953, 'Dịch Vụ Tư Vấn', 'update', 'web_header', 31, 1456806042, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values31%%%Dịch Vụ Tư Vấn%%%dich-vu-tu-van%%%%%%1456805949.jpg%%%Dịch Vụ Tư Vấn%%%Bộ phận Tư vấn cung cấp nhiều dịch vụ đa dạng như nghiên cứu thị trường, tư vấn ý tưởng phát triển, nghiên cứu nhân khẩu học, nghiên cứu khả thi%%%dịch vụ tư vấn%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1456805520%%%vi%%%1%%%2%%%2%%%%%%,5,', 'vi', 0, NULL, NULL),
(954, 'Đại Lý Thương Mại', 'create', 'web_header', 32, 1456806384, 'admin', '', 'vi', 0, NULL, NULL),
(955, 'Dịch Vụ Tư Vấn', 'update', 'web_header', 31, 1456806398, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values31%%%Dịch Vụ Tư Vấn%%%dich-vu-tu-van%%%%%%1456805949.jpg%%%Dịch Vụ Tư Vấn%%%Bộ phận Tư vấn cung cấp nhiều dịch vụ đa dạng như nghiên cứu thị trường, tư vấn ý tưởng phát triển, nghiên cứu nhân khẩu học, nghiên cứu khả thi%%%dịch vụ tư vấn%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1456805520%%%vi%%%1%%%2%%%2%%%%%%,5,', 'vi', 0, NULL, NULL),
(956, 'Đại Lý Thương Mại', 'update', 'web_header', 32, 1456806433, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values32%%%Đại Lý Thương Mại%%%dai-ly-thuong-mai%%%%%%%%%Đại Lý Thương Mại%%%Savills mang đến cho khách hàng các dịch vụ bất động sản toàn diện: Văn phòng, Bán lẻ, Nhà ở (cho thuê) và Dịch vụ Công nghiệp.%%%đại lý thương mại%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1456806240%%%vi%%%1%%%2%%%2%%%%%%,5,', 'vi', 0, NULL, NULL),
(957, 'Dịch Vụ Kinh Doanh Nhà Ở', 'create', 'web_header', 33, 1456806771, 'admin', '', 'vi', 0, NULL, NULL),
(958, 'Dịch Vụ Kinh Doanh Nhà Ở', 'update', 'web_header', 33, 1456806792, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values33%%%Dịch Vụ Kinh Doanh Nhà Ở%%%dich-vu-kinh-doanh-nha-o%%%%%%%%%Dịch Vụ Kinh Doanh Nhà Ở%%%Chúng tôi dẫn đầu thị trường trong lĩnh vực Bất động sản Nhà ở và hiện đang là đại lý bán và cung cấp một loạt các dự án bất động sản nhà ở chất lượng cao trên thị trường Việt Nam và trong khu vực Châu Á Thái Bình Dương%%%dịch vụ kinh doanh nhà ở%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1456806420%%%vi%%%1%%%2%%%2%%%%%%,5,', 'vi', 0, NULL, NULL),
(959, 'Quản Lý Bất Động Sản', 'create', 'web_header', 34, 1456807139, 'admin', '', 'vi', 0, NULL, NULL),
(960, 'Quản Lý Bất Động Sản', 'update', 'web_header', 34, 1456807141, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values34%%%Quản Lý Bất Động Sản%%%quan-ly-bat-dong-san%%%%%%%%%Quản Lý Bất Động Sản%%%Minh Nhật là nhà cung cấp dịch vụ hàng đầu về lĩnh vực dịch vụ quản lý chuyên nghiệp tại Châu Á – Thái Bình Dương%%%quản lý bất động sản%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1456806780%%%vi%%%1%%%2%%%2%%%%%%,5,', 'vi', 0, NULL, NULL),
(961, 'Quản Lý Bất Động Sản', 'update', 'web_header', 34, 1456809442, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values34%%%Quản Lý Bất Động Sản%%%quan-ly-bat-dong-san%%%%%%1456807140.jpg%%%Quản Lý Bất Động Sản%%%Minh Nhật là nhà cung cấp dịch vụ hàng đầu về lĩnh vực dịch vụ quản lý chuyên nghiệp tại Châu Á – Thái Bình Dương%%%quản lý bất động sản%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1456806780%%%vi%%%1%%%2%%%2%%%%%%,5,', 'vi', 0, NULL, NULL),
(962, 'Dịch Vụ Kinh Doanh Nhà Ở', 'update', 'web_header', 33, 1456809458, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values33%%%Dịch Vụ Kinh Doanh Nhà Ở%%%dich-vu-kinh-doanh-nha-o%%%%%%1456806791.jpg%%%Dịch Vụ Kinh Doanh Nhà Ở%%%Chúng tôi dẫn đầu thị trường trong lĩnh vực Bất động sản Nhà ở và hiện đang là đại lý bán và cung cấp một loạt các dự án bất động sản nhà ở chất lượng cao trên thị trường Việt Nam và trong khu vực Châu Á Thái Bình Dương%%%dịch vụ kinh doanh nhà ở%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1456806420%%%vi%%%1%%%2%%%2%%%%%%,5,', 'vi', 0, NULL, NULL),
(963, 'Đại Lý Thương Mại', 'update', 'web_header', 32, 1456809485, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values32%%%Đại Lý Thương Mại%%%dai-ly-thuong-mai%%%%%%1456806432.jpg%%%Đại Lý Thương Mại%%%Savills mang đến cho khách hàng các dịch vụ bất động sản toàn diện: Văn phòng, Bán lẻ, Nhà ở (cho thuê) và Dịch vụ Công nghiệp.%%%đại lý thương mại%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1456806240%%%vi%%%1%%%2%%%2%%%%%%,5,', 'vi', 0, NULL, NULL),
(964, 'Đại Lý Thương Mại', 'update', 'web_header', 32, 1456809495, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values32%%%Đại Lý Thương Mại%%%dai-ly-thuong-mai%%%%%%1456806432.jpg%%%Đại Lý Thương Mại%%%Minh Nhật mang đến cho khách hàng các dịch vụ bất động sản toàn diện: Văn phòng, Bán lẻ, Nhà ở (cho thuê) và Dịch vụ Công nghiệp.%%%đại lý thương mại%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1456806240%%%vi%%%1%%%2%%%2%%%%%%,5,', 'vi', 0, NULL, NULL),
(965, 'Dịch Vụ Tư Vấn', 'update', 'web_header', 31, 1456809515, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values31%%%Dịch Vụ Tư Vấn%%%dich-vu-tu-van%%%%%%1456805949.jpg%%%Dịch Vụ Tư Vấn%%%Bộ phận Tư vấn cung cấp nhiều dịch vụ đa dạng như nghiên cứu thị trường, tư vấn ý tưởng phát triển, nghiên cứu nhân khẩu học, nghiên cứu khả thi%%%dịch vụ tư vấn%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1456805520%%%vi%%%1%%%2%%%2%%%%%%,5,', 'vi', 0, NULL, NULL),
(966, 'Căn hộ Melody Residences', 'update', 'web_header', 11, 1456809673, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values11%%%Căn hộ Melody Residences%%%melody-residences%%%%%%1456738109.jpg%%%Căn hộ Melody Residences%%%Cùng thiên nhiên xanh mát trong lành, Melody Residences không chỉ đem đến sự tiện nghi và sang trọng mà còn là nơi lý tưởng%%%căn hộ melody residences,can ho melody residences%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1456737360%%%vi%%%1%%%2%%%3%%%%%%,8,9,10,4,21,', 'vi', 0, NULL, NULL),
(967, 'Lavita Garden -  Khu vườn điểm tô cho cuộc sống tràn đầy', 'update', 'web_header', 12, 1456809679, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values12%%%Lavita Garden -  Khu vườn điểm tô cho cuộc sống tràn đầy%%%lavita-garden%%%%%%1456739043.jpg%%%Lavita Garden -  Khu vườn điểm tô cho cuộc sống tràn đầy%%%Đến với Lavita Garden, bạn sẽ đắm chìm trong không gian thơ mộng của một khu vườn tràn đầy sức sống%%%lavita garden,khu vườn điểm tô cho cuộc sống tràn đầy%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1456738200%%%vi%%%1%%%2%%%3%%%%%%,8,9,10,4,21,', 'vi', 0, NULL, NULL),
(968, 'Căn hộ 8x Rainbow - Chỉ 5 phút đến công viên văn hóa Đầm Sen', 'update', 'web_header', 13, 1456809689, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values13%%%Căn hộ 8x Rainbow - Chỉ 5 phút đến công viên văn hóa Đầm Sen%%%can-ho-8x-rainbow%%%%%%1456738793.jpg%%%Căn hộ 8x Rainbow - Chỉ 5 phút đến công viên văn hóa Đầm Sen%%%Giữa dòng người tấp nập của thành phố, cư dân khu căn hộ 8X Rainbow hòa mình vào lòng phố thị nhộn nhịp và sôi động bởi sắc màu tươi trẻ và không gian căng tràn sức sống.%%%căn hộ 8x rainbow,can ho 8x rainbow%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1456738500%%%vi%%%1%%%2%%%3%%%%%%,8,9,10,4,21,', 'vi', 0, NULL, NULL),
(969, 'Căn hộ florita - Quận 7', 'update', 'web_header', 14, 1456809699, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values14%%%Căn hộ florita - Quận 7%%%can-ho-florita%%%%%%1456799940.jpg%%%Căn hộ florita - Quận 7%%%Tọa lạc ngay khu đô thị Him Lam Tân Hưng, Florita như một đóa hoa rực rỡ và đầy cuốn hút bởi vị trí nổi bật, thuận tiện kết nối toàn khu vực thành phố%%%căn hộ florita,quận 7,can ho florita%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1456738800%%%vi%%%1%%%2%%%3%%%%%%,8,9,10,4,21,', 'vi', 0, NULL, NULL),
(970, 'Căn hộ cao cấp Sky Center - Quận Tân Bình', 'update', 'web_header', 15, 1456809716, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values15%%%Căn hộ cao cấp Sky Center - Quận Tân Bình%%%can-ho-cao-cap-sky-center%%%%%%1456739121.jpg%%%Căn hộ cao cấp Sky Center - Quận Tân Bình%%%Sky Center gồm 04 block (03 block căn hộ và 01 block officetel) được thiết kế theo phong cách hiện đại, kết hợp nghệ thuật tạo hình cảnh quan và bố trí hợp lý%%%căn hộ cao cấp,sky center,quận tân bình,can ho cao cap%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1456738980%%%vi%%%1%%%2%%%3%%%%%%,8,9,10,4,21,', 'vi', 0, NULL, NULL),
(971, 'Giai Việt Residence - Quận 8  TpHCM', 'update', 'web_header', 16, 1456809723, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values16%%%Giai Việt Residence - Quận 8  TpHCM%%%giai-viet-residence%%%%%%1456739302.jpg%%%Giai Việt Residence - Quận 8  TpHCM%%%Giai Việt Residence sở hữu vị trí đắc địa, 3 mặt tiền đường lớn, trong khu quy hoạch đồng bộ: Trung tâm hành chính, Trung tâm thể dục thể thao, bệnh viện, trường học, siêu thị..%%%giai việt residence,quận 8 hcm,giai viet residence%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1456739220%%%vi%%%1%%%2%%%3%%%%%%,8,9,10,4,21,', 'vi', 0, NULL, NULL),
(972, 'Khu biệt thự The Oasis - Thuận An, Bình Dương', 'create', 'web_header', 35, 1456810010, 'admin', '', 'vi', 0, NULL, NULL),
(973, 'Khu biệt thự The Oasis - Thuận An, Bình Dương', 'update', 'web_header', 35, 1456810222, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values35%%%Khu biệt thự The Oasis - Thuận An, Bình Dương%%%khu-biet-thu-the-oasis-thuan-an-binh-duong%%%%%%%%%Khu biệt thự The Oasis - Thuận An, Bình Dương%%%%%%khu biệt thự the oasis thuận an bình dương,khu biệt thự the oasis%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1456809840%%%vi%%%1%%%2%%%3%%%%%%,9,4,24,', 'vi', 0, NULL, NULL),
(974, 'Các dự án khác', 'update', 'web_header', 26, 1456810577, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values26%%%Các dự án khác%%%cac-du-an-khac%%%%%%%%%Các dự án khác%%%%%%các dự án khác%%%%%%4%%%%%%%%%%%%%%%%%%6%%%%%%1456801500%%%vi%%%1%%%1%%%3%%%,5,', 'vi', 0, NULL, NULL),
(975, 'Dự án Đà Lạt', 'create', 'web_header', 36, 1456810601, 'admin', '', 'vi', 0, NULL, NULL),
(976, 'Khu biệt thự Hưng Thịnh thành phố Đà Lạt', 'create', 'web_header', 37, 1456810794, 'admin', '', 'vi', 0, NULL, NULL),
(977, 'Khu biệt thự Hưng Thịnh thành phố Đà Lạt', 'update', 'web_header', 37, 1456810869, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values37%%%Khu biệt thự Hưng Thịnh thành phố Đà Lạt%%%khu-biet-thu-hung-thinh-tp-da-lat%%%%%%%%%Khu biệt thự Hưng Thịnh thành phố Đà Lạt%%%%%%khu biệt thự hưng thịnh,tp đà lạt,khu biet thu hung thinh%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1456810560%%%vi%%%1%%%2%%%3%%%%%%,9,4,36,', 'vi', 0, NULL, NULL),
(978, 'Khu biệt thự Hưng Thịnh thành phố Đà Lạt', 'update', 'web_header', 37, 1456810880, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values37%%%Khu biệt thự Hưng Thịnh thành phố Đà Lạt%%%khu-biet-thu-hung-thinh-tp-da-lat%%%%%%1456810869.jpg%%%Khu biệt thự Hưng Thịnh thành phố Đà Lạt%%%%%%khu biệt thự hưng thịnh,tp đà lạt,khu biet thu hung thinh%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1456810560%%%vi%%%1%%%2%%%3%%%%%%,9,4,36,', 'vi', 0, NULL, NULL),
(979, 'Golf Valley - Phường 2, Thành phố Đà Lạt', 'create', 'web_header', 38, 1456811242, 'admin', '', 'vi', 0, NULL, NULL),
(980, 'Golf Valley - Phường 2, Thành phố Đà Lạt', 'update', 'web_header', 38, 1456811261, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values38%%%Golf Valley - Phường 2, Thành phố Đà Lạt%%%golf-valley-phuong-2-thanh-pho-da-lat%%%%%%%%%Golf Valley - Phường 2, Thành phố Đà Lạt%%%Golf Valley, điểm nhấn tại trung tâm thành phố Đà Lạt, là một thể thống nhất hoàn hảo gồm các phức hợp kiến trúc cao tầng, hiện đại, đa chức năng với trung tâm thương mại dịch vụ và hội nghị, chuỗi nhà hàng, cà phê, khách sạn%%%golf valley,thành phố đà lạt,golf valley,thanh pho da lat%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1456810920%%%vi%%%1%%%2%%%3%%%%%%,9,36,', 'vi', 0, NULL, NULL),
(981, 'Golf Valley - Phường 2, Thành phố Đà Lạt', 'update', 'web_header', 38, 1456811279, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values38%%%Golf Valley - Phường 2, Thành phố Đà Lạt%%%golf-valley-phuong-2-thanh-pho-da-lat%%%%%%1456811261.jpg%%%Golf Valley - Phường 2, Thành phố Đà Lạt%%%Golf Valley, điểm nhấn tại trung tâm thành phố Đà Lạt, là một thể thống nhất hoàn hảo gồm các phức hợp kiến trúc cao tầng, hiện đại, đa chức năng với trung tâm thương mại dịch vụ và hội nghị, chuỗi nhà hàng, cà phê, khách sạn%%%golf valley,thành phố đà lạt,golf valley,thanh pho da lat%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1456810920%%%vi%%%1%%%2%%%3%%%%%%,9,36,', 'vi', 0, NULL, NULL),
(982, 'Golf Valley - Phường 2, Thành phố Đà Lạt', 'update', 'web_header', 38, 1456811288, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values38%%%Golf Valley - Phường 2, Thành phố Đà Lạt%%%golf-valley-phuong-2-thanh-pho-da-lat%%%%%%1456811261.jpg%%%Golf Valley - Phường 2, Thành phố Đà Lạt%%%Golf Valley, điểm nhấn tại trung tâm thành phố Đà Lạt, là một thể thống nhất hoàn hảo gồm các phức hợp kiến trúc cao tầng, hiện đại, đa chức năng với trung tâm thương mại dịch vụ và hội nghị, chuỗi nhà hàng, cà phê, khách sạn%%%golf valley,thành phố đà lạt,golf valley,thanh pho da lat%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1456810920%%%vi%%%1%%%2%%%3%%%%%%,9,4,36,', 'vi', 0, NULL, NULL),
(983, 'Căn hộ 12 View - Căn hộ ngay khu phức hợp thương mại dịch vụ 38HA', 'create', 'web_header', 39, 1456811615, 'admin', '', 'vi', 0, NULL, NULL),
(984, 'Căn hộ 12 View - Căn hộ ngay khu phức hợp thương mại dịch vụ 38HA', 'update', 'web_header', 39, 1456811641, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values39%%%Căn hộ 12 View - Căn hộ ngay khu phức hợp thương mại dịch vụ 38HA%%%can-ho-12-view-can-ho-ngay-khu-phuc-hop-thuong-mai-dich-vu-38ha%%%%%%%%%Căn hộ 12 View - Căn hộ ngay khu phức hợp thương mại dịch vụ 38HA%%%Tọa lạc tại khu đô thị được quy hoạch đồng bộ của quận 12, đồng thời  giáp ranh vùng dân cư sầm uất của các quận lân cận - căn hộ 12 View hội tụ những tiêu chí thiết yếu của một dự án bất động sản có tiềm năng cao%%%căn hộ 12 view,căn hộ ngay khu phức hợp thương mại dịch vụ 38ha%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1456811340%%%vi%%%1%%%2%%%3%%%%%%,10,4,21,', 'vi', 0, NULL, NULL),
(985, 'Lavita Garden -  Khu vườn điểm tô cho cuộc sống tràn đầy', 'update', 'web_header', 12, 1456813202, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values12%%%Lavita Garden -  Khu vườn điểm tô cho cuộc sống tràn đầy%%%lavita-garden%%%%%%1456739043.jpg%%%Lavita Garden -  Khu vườn điểm tô cho cuộc sống tràn đầy%%%Đến với Lavita Garden, bạn sẽ đắm chìm trong không gian thơ mộng của một khu vườn tràn đầy sức sống%%%lavita garden,khu vườn điểm tô cho cuộc sống tràn đầy%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1456738200%%%vi%%%1%%%2%%%3%%%%%%,8,4,21,', 'vi', 0, NULL, NULL),
(986, 'Căn hộ Melody Residences', 'update', 'web_header', 11, 1456813267, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values11%%%Căn hộ Melody Residences%%%melody-residences%%%%%%1456738109.jpg%%%Căn hộ Melody Residences%%%Cùng thiên nhiên xanh mát trong lành, Melody Residences không chỉ đem đến sự tiện nghi và sang trọng mà còn là nơi lý tưởng%%%căn hộ melody residences,can ho melody residences%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1456737360%%%vi%%%1%%%2%%%3%%%%%%,8,4,21,', 'vi', 0, NULL, NULL),
(987, 'Facebook', 'create', 'web_header', 40, 1456814151, 'admin', '', 'vi', 0, NULL, NULL),
(988, 'Facebook', 'update', 'web_header', 40, 1456814153, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values40%%%Facebook%%%facebook%%%javascript:;%%%%%%Facebook%%%%%%facebook%%%%%%0%%%%%%%%%%%%%%%%%%50%%%%%%1456814100%%%vi%%%1%%%1%%%20%%%,6,', 'vi', 0, NULL, NULL),
(989, 'Youtube', 'create', 'web_header', 41, 1456814175, 'admin', '', 'vi', 0, NULL, NULL),
(990, 'Youtube', 'update', 'web_header', 41, 1456814177, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values41%%%Youtube%%%youtube%%%javascript:;%%%%%%Youtube%%%%%%youtube%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1456814160%%%vi%%%1%%%1%%%20%%%,6,', 'vi', 0, NULL, NULL),
(991, 'Google plus', 'create', 'web_header', 42, 1456814195, 'admin', '', 'vi', 0, NULL, NULL),
(992, 'Google plus', 'update', 'web_header', 42, 1456814197, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values42%%%Google plus%%%google-plus%%%javascript:;%%%%%%Google plus%%%%%%google plus%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1456814160%%%vi%%%1%%%1%%%20%%%,6,', 'vi', 0, NULL, NULL),
(993, 'Google plus', 'update', 'web_header', 42, 1456814211, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values42%%%Google plus%%%google-plus%%%javascript:;%%%1456814196.png%%%Google plus%%%%%%google plus%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1456814160%%%vi%%%1%%%1%%%20%%%,6,', 'vi', 0, NULL, NULL),
(994, 'Facebook', 'update', 'web_header', 40, 1456814222, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values40%%%Facebook%%%facebook%%%javascript:;%%%1456814153.png%%%Facebook%%%%%%facebook%%%%%%0%%%%%%%%%%%%%%%%%%50%%%%%%1456814100%%%vi%%%1%%%1%%%20%%%,6,', 'vi', 0, NULL, NULL),
(995, 'Youtube', 'update', 'web_header', 41, 1456814230, 'admin', 'id,name,name_alias,url,img,title,description,tags,code,parent,workplaces,wage,number,date_duration,company_id,_order,other,datetime,lang,status,properties,type_id,position_id,menu_idfields%%%values41%%%Youtube%%%youtube%%%javascript:;%%%1456814176.png%%%Youtube%%%%%%youtube%%%%%%0%%%%%%%%%%%%%%%%%%0%%%%%%1456814160%%%vi%%%1%%%1%%%20%%%,6,', 'vi', 0, NULL, NULL);

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
  `name` varchar(200) NOT NULL,
  `img` varchar(15) NOT NULL,
  `datetime` bigint(10) NOT NULL,
  `_order` int(11) NOT NULL DEFAULT '0',
  `_table` varchar(30) NOT NULL,
  `table_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_picture`
--

INSERT INTO `web_picture` (`id`, `name`, `img`, `datetime`, `_order`, `_table`, `table_id`) VALUES
(8, 'Căn hộ Melody Residences', '1456738109.jpg', 1456738108, 0, 'web_header', 11),
(9, 'Slider home', '1456738154.jpg', 1456738153, 0, 'web_header', 3),
(10, 'Slider home', '1456738155.jpg', 1456738154, 0, 'web_header', 3),
(11, 'Slider home', '1456738157.jpg', 1456738154, 0, 'web_header', 3),
(12, 'Căn hộ 8x Rainbow - Chỉ 5 phút đến công viên văn hóa Đầm Sen', '1456738793.jpg', 1456738792, 0, 'web_header', 13),
(13, 'CĂN HỘ FLORITA - QUẬN 7', '1456738851.jpg', 1456738850, 0, 'web_header', 14),
(14, 'Lavita Garden -  Khu vườn điểm tô cho cuộc sống tràn đầy', '1456739043.jpg', 1456739042, 0, 'web_header', 12),
(15, 'CĂN HỘ CAO CẤP SKY CENTER - QUẬN TÂN BÌNH', '1456739121.jpg', 1456739120, 0, 'web_header', 15),
(16, 'GIAI VIỆT RESIDENCE - QUẬN 8, TP.HCM', '1456739302.jpg', 1456739302, 0, 'web_header', 16),
(17, 'Dự án bất động sản', '1456740182.jpg', 1456740181, 0, 'web_header', 18),
(18, 'Dịch vụ Minh Nhật', '1456740290.jpg', 1456740289, 0, 'web_header', 19),
(19, 'Hồ sơ công ty', '1456740365.jpg', 1456740364, 0, 'web_header', 20),
(20, 'Giới thiệu Minh Nhật', '1456740729.jpg', 1456740728, 0, 'web_header', 17),
(21, 'Căn hộ florita - Quận 7', '1456799940.jpg', 1456799939, 0, 'web_header', 14),
(22, 'Event banner right', '1456801840.jpg', 1456801839, 0, 'web_header', 27),
(23, 'Event banner right 2', '1456801888.jpg', 1456801887, 0, 'web_header', 28),
(24, 'Cơ hội đầu tư bất động sản tại Mỹ', '1456803245.png', 1456803244, 0, 'web_header', 29),
(25, 'Thăm quan, nhận quà tặng giá trị tại EcoXuân', '1456803409.jpg', 1456803408, 0, 'web_header', 30),
(26, 'Dịch Vụ Tư Vấn', '1456805949.jpg', 1456805948, 0, 'web_header', 31),
(27, 'Đại Lý Thương Mại', '1456806432.jpg', 1456806431, 0, 'web_header', 32),
(28, 'Dịch Vụ Kinh Doanh Nhà Ở', '1456806791.jpg', 1456806790, 0, 'web_header', 33),
(29, 'Quản Lý Bất Động Sản', '1456807140.jpg', 1456807139, 0, 'web_header', 34),
(30, 'KHU BIỆT THỰ THE OASIS - THUẬN AN, BÌNH DƯƠNG', '1456810217.jpg', 1456810216, 0, 'web_header', 35),
(31, 'KHU BIỆT THỰ THE OASIS - THUẬN AN, BÌNH DƯƠNG', '1456810222.jpg', 1456810221, 0, 'web_header', 35),
(32, 'KHU BIỆT THỰ HƯNG THỊNH - TP. ĐÀ LẠT', '1456810869.jpg', 1456810868, 0, 'web_header', 37),
(33, 'GOLF VALLEY - PHƯỜNG 2 - TP. ĐÀ LẠT', '1456811261.jpg', 1456811260, 0, 'web_header', 38),
(34, 'CĂN HỘ 12 VIEW - CĂN HỘ NGAY KHU PHỨC HỢP THƯƠNG MẠI DỊCH VỤ 38HA', '1456811641.jpg', 1456811640, 0, 'web_header', 39),
(35, 'Facebook', '1456814153.png', 1456814152, 0, 'web_header', 40),
(36, 'Youtube', '1456814176.png', 1456814175, 0, 'web_header', 41),
(37, 'Google plus', '1456814196.png', 1456814195, 0, 'web_header', 42);

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
(3, 'Menu footer', '', 3, 1, 0),
(4, 'Right liên kết mạng xã hội', '', 5, 1, 0),
(5, 'Menu bên phải', '', 4, 1, 1),
(6, 'Bottom mạng xã hội', '', 6, 1, 1),
(7, 'Home chương trình', '', 8, 2, 0),
(8, 'Home project', '', 7, 2, 1),
(9, 'Home yêu cầu đào tạo', '', 9, 2, 0),
(10, 'Home tại sao chọn Netspace', '', 10, 2, 0),
(11, 'Home cảm nghĩ', '', 11, 2, 0),
(12, 'Home tin tức sự kiện', '', 12, 2, 0),
(13, 'Home tuyển dụng', '', 13, 2, 0),
(14, 'Home hình ảnh', '', 14, 2, 0),
(15, 'Home hoạt động', '', 15, 2, 0),
(16, 'Slider', '', 16, 3, 1),
(17, 'Event home', '', 17, 3, 0),
(18, 'Event page', '', 18, 3, 1),
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
(3, 'Dự án', 'project', 'web_header', 'public/images/articles/', 'public/_thumbs/Images/articles/', 3, 1, 1),
(4, 'Thư viện', 'library', 'web_header', 'public/images/articles/', 'public/_thumbs/Images/articles/', 7, 1, 0),
(5, 'Giới thiệu', 'about', 'web_header', 'public/images/articles/', 'public/_thumbs/Images/articles/', 4, 1, 1),
(6, 'Cảm nghĩ học viên', 'opinion', 'web_header', 'public/images/videos/', 'public/_thumbs/Images/videos/', 5, 1, 0),
(7, 'Tuyển dụng', 'recruit', 'web_header', '', '', 6, 1, 0),
(8, 'Thư viện ảnh', 'photos', 'web_header', '', '', 8, 1, 0),
(9, 'Thư viện video', 'videos', 'web_header', '', '', 9, 1, 0),
(10, 'Lịch khai giảng', 'opening', '', '', '', 10, 1, 0),
(11, 'Thời khóa biểu', 'schedule', '', '', '', 11, 1, 0),
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
  `page` int(1) NOT NULL DEFAULT '3',
  `username` char(32) NOT NULL,
  `password` char(32) NOT NULL,
  `random_key` varchar(255) DEFAULT NULL,
  `date_expiration` bigint(10) NOT NULL,
  `lang` varchar(3) NOT NULL DEFAULT 'vi',
  `datetime` bigint(10) NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `group_id` int(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_users`
--

INSERT INTO `web_users` (`id`, `name`, `address`, `phone`, `email`, `birthday`, `gender`, `img`, `salt`, `page`, `username`, `password`, `random_key`, `date_expiration`, `lang`, `datetime`, `status`, `group_id`) VALUES
(25, 'Admin', '123 CMT 8', '0988 388 003', 'admin@localhost.com', 0, 1, '', '', 1, 'admin', '52e4ab92c412c5aadf3a0970779da825', NULL, 0, 'vi', 0, 1, 3),
(34, 'Hiếu Nhân', '123 CMT 8', '0988 388 003', 'trannhan@localhost.com', 609872400, 1, '', '', 3, 'trannhan', '867e1a36d190000d2f266d80889683fc', NULL, 0, 'vi', 1425093180, 1, 3);

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
(1, 'Bộ phận tư vấn', 1, 1),
(2, 'Bộ phận đào tạo', 2, 1),
(3, 'Quản trị website', 3, 1),
(4, 'Bộ phận marketing', 4, 1),
(5, 'Bộ phận nhân sự', 5, 1),
(6, 'Bộ phận kế toán', 6, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_users_lock_ip`
--

INSERT INTO `web_users_lock_ip` (`id`, `ip_address`, `login_number`, `disable_date`, `datetime`) VALUES
(6, '::1', 2, 0, 1456798659),
(7, '115.78.128.150', 2, 0, 1456712071),
(8, '42.116.215.38', 2, 0, 1454901602),
(9, '113.187.16.121', 2, 0, 1455160513),
(10, '171.250.36.173', 2, 0, 1455742826),
(11, '42.113.167.79', 2, 0, 1455665036),
(12, '116.106.12.76', 2, 0, 1456339771),
(13, '116.106.6.119', 2, 0, 1456289992),
(14, '171.250.32.162', 2, 0, 1456010901),
(15, '171.250.32.247', 2, 0, 1456714133),
(16, '1.54.197.245', 2, 0, 1456130829);

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
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8;

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
(25, 1, 1, 1, 1, 33, 25, 1),
(26, 1, 1, 1, 1, 9, 25, 1),
(39, 1, 1, 1, 1, 30, 25, 1),
(40, 1, 1, 1, 1, 31, 25, 1),
(41, 1, 1, 1, 1, 28, 25, 1),
(133, 1, 1, 1, 1, 36, 25, 1);

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
-- Indexes for table `web_company`
--
ALTER TABLE `web_company`
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
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `web_company`
--
ALTER TABLE `web_company`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `web_config`
--
ALTER TABLE `web_config`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `web_contact`
--
ALTER TABLE `web_contact`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `web_content`
--
ALTER TABLE `web_content`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `web_event_form`
--
ALTER TABLE `web_event_form`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `web_header`
--
ALTER TABLE `web_header`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `web_ip_address`
--
ALTER TABLE `web_ip_address`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=128;
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
-- AUTO_INCREMENT for table `web_listcity`
--
ALTER TABLE `web_listcity`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT for table `web_listdistricts`
--
ALTER TABLE `web_listdistricts`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=901;
--
-- AUTO_INCREMENT for table `web_logs`
--
ALTER TABLE `web_logs`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=996;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
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
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `web_type`
--
ALTER TABLE `web_type`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `web_users`
--
ALTER TABLE `web_users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `web_users_group`
--
ALTER TABLE `web_users_group`
MODIFY `id` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `web_users_lock_ip`
--
ALTER TABLE `web_users_lock_ip`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=134;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
