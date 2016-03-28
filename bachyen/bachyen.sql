-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2016 at 04:00 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bachyen`
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
(5, 'Quản lý sản phẩm', 'product', 'web_header', '?properties=2&type_id=3', 'web_product', 'adIconCourse', 2, '0', 1, 0, 1),
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
(9, 'Copyright', 'copyright', 'Copyright ©2016. CÔNG TY TNHH DƯỢC PHẨM BẠCH YẾN', 4, 'vi', 1),
(10, 'Email', 'email', 'ctbachyen@yahoo.com', 6, 'vi', 1),
(11, 'Điện thoại', 'tel', '072 3 822 522', 3, 'vi', 1),
(12, 'Google map', 'googlemap', '10.534778, 106.407773', 7, 'vi', 1),
(13, 'Tên viết tắt', 'name', 'MINHNHAT', 8, 'vi', 1),
(14, 'Giấy phép', 'license', 'Số GPĐKKD: 1100442927 do Sở Thương Binh Lao Động TP.HCM cấp ngày 02/04/2010', 5, 'vi', 1),
(15, 'Địa chỉ', 'address', '171 Hùng Vương, Phường 2, Tp. Tân An, Long An', 2, 'vi', 1),
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
(27, 'Tên trang website', 'sitename', 'Công ty TNHH Dược Phẩm Bạch Yến', 1, 'vi', 1),
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

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
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_content`
--

INSERT INTO `web_content` (`id`, `content`, `more1`, `more2`, `more3`, `more4`, `header_id`) VALUES
(11, '<div>Tham dự tọa đàm do Công ty Orient &amp; Pacific Vietnam tổ chức, khách hàng sẽ được tìm hiểu về cơ hội đầu tư vào dự án bất động sản trọng điểm của Mỹ.&nbsp;</div>\n\n<p style="text-align: center;"><img alt="polyad" data-natural-width="500" src="http://img.f25.kinhdoanh.vnecdn.net/2016/02/24/24-2-201654-4118-1456286876.png" /></p>\n\n<p>Orient &amp; Pacific Vietnam, đại diện tại Việt Nam của Golden Gate Global (3G) - một trong những công ty hàng đầu của Mỹ trong lĩnh vực đầu tư để có thẻ xanh diện EB-5 sẽ tổ chức tọa đàm tìm hiểu về việc đầu tư vào các dự án bất động sản thuộc các vùng trọng điểm tại Mỹ. Chương trình diễn ra tại 2 địa điểm:</p>\n\n<p>Tại Hà Nội:&nbsp;9h, thứ bảy, ngày 27/2 tại khách Sạn Metropole Hanoi, 15 Ngô Quyền, quận Hoàn Kiếm.<br />\nTại TP HCM: 9h, thứ bảy, ngày 5/3 tại khách Sạn Park Hyatt Saigon, số 2 Công Trường Lam Sơn, phường Bến Nghé, quận 1.</p>\n\n<p>Khách tham dự toạ đàm đăng ký qua email:&nbsp;<a href="mailto:tamvan@orientpacificvietnam.com">tamvan@orientpacificvietnam.com</a>&nbsp;hoặc hotline: 0932 759 188.</p>\n\n<p style="text-align: center;"><img alt="polyad" data-natural-width="500" src="http://img.f25.kinhdoanh.vnecdn.net/2016/02/24/24-2-201654-570430738-5356-1456286876.png" /></p>\n\n<p>Orient &amp; Pacific Vietnam là công ty tư vấn dịch vụ đầu tư, định cư cho các khách hàng cá nhân uy tín. Đơn vị sẽ hợp tác với công ty luật định cư và các dự án hàng đầu để cung cấp thông tin các chương trình đầu tư, định cư và xin quốc tịch ưu việt tại các quốc gia có chất lượng cuộc sống hàng đầu thế giới. Tuỳ theo tình hình và yêu cầu thực tế của khách hàng, công ty sẽ chọn lọc và có kế hoạch triển khai hồ sơ cụ thể cho từng khách hàng, giai đoạn và toàn bộ quá trình.</p>\n\n<p style="text-align: center;"><img alt="polyad" data-natural-width="500" src="http://img.f25.kinhdoanh.vnecdn.net/2016/02/24/24-2-201655-1942-1456286877.png" /></p>\n\n<p>Golden Gate Global (3G) là công ty của Mỹ trong lĩnh vực đầu tư để có thẻ xanh diện EB-5 thông qua các dự án thuộc vùng đầu tư trọng điểm. 3G có trụ sở chính tại thành phố San Francisco và được Sở Di trú Mỹ (USCIS) cấp giấy phép đầu tư các dự án thu hút các nhà đầu tư nước ngoài trên toàn bộ lãnh thổ nước Mỹ. 3G được sáng lập bởi một nhóm cựu lãnh đạo cao cấp, với tầm nhìn chiến lược giúp đảm bảo sự thành công của dự án với khả năng sinh lợi cao.</p>', NULL, NULL, NULL, NULL, 29),
(12, '<div>Khách đến thăm quan hoặc đặt cọc mua nhà khu đô thị EcoXuân sẽ nhận được nhiều ưu đãi.</div>\n\n<p>Theo đó, khách hàng có cơ hội nhận những phần quà có giá trị như phiếu mua sắm một triệu đồng, tivi Led 32 inch LG, lò vi sóng Electrolux, quạt tháp Nikko Kendo từ 1/3 đến 30/6.&nbsp;Riêng trong tháng 3 này, khách hàng đặt cọc mua từ 3 căn hộ Sky B trở lên sẽ được chủ đầu tư chiết khấu với mức từ 3% trở lên.</p>\n\n<p>Đặc biệt từ nay đến 30/4, người mua chỉ cần thanh toán 30% giá trị căn hộ trong&nbsp;8 tháng đầu và không cần thanh toán bất cứ khoản nào cho đến khi tháp Sky B hoàn thành.</p>\n\n<p style="text-align: center;"><img alt="polyad" data-natural-width="500" data-pwidth="470.40625" data-width="500" src="http://img.f25.kinhdoanh.vnecdn.net/2016/02/27/25-2-201652-8118-1456546221.jpg" style="line-height:20.8px;" /><br />\n<span style="line-height: 1.6em;">EcoXuân là khu đô thị biệt lập đảm bảo an ninh.</span></p>\n\n<p><span style="line-height: 1.6em;">EcoXuân là khu đô thị biệt lập đảm bảo an ninh, nơi cư dân có thể tận hưởng cuộc sống chất lượng đẳng cấp, tiện nghi. Cư dân có thể&nbsp;đi bộ từ nhà ra hồ bơi, khu tiệc nướng ngoài trời, sân chơi trẻ em, sân tenis và sân tập golf mini.</span></p>\n\n<p>EcoXuân rất gần với các&nbsp;trung tâm mua sắm như Lotte Mart và siêu thị Aeon, với nhiều dịch vụ ăn uống, mua sắm và vui chơi giải trí. Dân cư nơi đây dễ dàng tiếp cận với các dịch vụ chăm sóc sức khỏe của bệnh viện quốc tế Hạnh Phúc, bệnh viện quốc tế Becamex, bệnh viện quốc tế Colombia.</p>\n\n<p>Chỉ cách TP HCM 16 km, nơi đây trở thành một khu đô thị sầm uất với 140 căn nhà phố vườn và biệt thự đã được bàn giao và có nhiều cư dân dọn về sinh sống.</p>\n\n<p style="text-align: center;"><img alt="polyad" data-natural-width="500" data-pwidth="470.40625" data-width="500" src="http://img.f25.kinhdoanh.vnecdn.net/2016/02/27/25-2-201657-663873454-5856-1456546221.jpg" style="line-height:20.8px;" /></p>\n\n<p><span style="line-height: 1.6em;">Với chương trình ưu đãi này, chủ đầu tư hy vọng sẽ giúp các cư dân dễ dàng sở hữu căn hộ cho riêng mình.</span>Ngoài những sản phẩm nhà phố và biệt thự phong cách Singapore đã hoàn thiện với số lượng hạn chế, EcoXuân đang giới thiệu sản phẩm mới là tòa tháp Sky B cao 23 tầng thuộc khu vực Sky Residences với các căn hộ thiết kế hiện đại có một đến 3 phòng ngủ với mức giá chỉ từ 830 triệu đồng mỗi căn cùng lịch thanh toán linh hoạt trong 42 tháng (mỗi tháng chỉ thanh toán 1%).</p>\n\n<p style="text-align: right;">Thanh Thư</p>', NULL, NULL, NULL, NULL, 30),
(13, '<p>Bộ phận Tư vấn cung cấp nhiều dịch vụ đa dạng như nghiên cứu thị trường, tư vấn ý tưởng phát triển, nghiên cứu nhân khẩu học, nghiên cứu khả thi&nbsp;</p>\n\n<table border="0" cellpadding="0" cellspacing="5" style="width:100%;">\n	<tbody>\n		<tr>\n			<td colspan="2">\n			<p><span style="font-size: 12px;">Dịch Vụ Nghiên Cứu và Tư Vấn</span></p>\n			</td>\n		</tr>\n		<tr>\n			<td style="width: 90px;"><span style="font-size: 12px;"><img alt="" src="http://vn.savills.com.vn/_images/service-research-jpg(2).jpg" style="width: 90px; height: 90px;" /></span></td>\n			<td style="vertical-align: top;"><span style="font-size: 12px;">Với vô số các biến số vĩ mô không chắc chắn tại Việt Nam, điều này là rất quan trọng trong việc giảm thiểu rủi ro thông qua các nghiên cứu về thị trường bất động sản, Minh Nhật cung cấp các nghiên cứu tinh tế để đảm bảo rằng tất cả các biến số này sẽ được định lượng nhằm tối đa hóa tỷ lệ thành công của dự án.</span></td>\n		</tr>\n		<tr>\n			<td colspan="2">\n			<p><span style="font-size: 12px;">Dịch Vụ Định Giá và Tư Vấn Tài Chính</span></p>\n			</td>\n		</tr>\n		<tr>\n			<td><span style="font-size: 12px;"><img alt="" src="http://vn.savills.com.vn/_images/service-valuations-jpg(2).jpg" style="width: 90px; height: 90px;" /></span></td>\n			<td style="vertical-align: top;"><span style="font-size: 12px;">Với sự hiểu biết chuyên sâu về thị trường từ đội ngũ định giá hoạt động lâu năm nhất tại Việt Nam, Minh Nhật luôn sẵn sàng cung cấp những lời tư vấn khách quan đến khách hàng với các báo cáo hoàn toàn minh bạch và phù hợp theo tiêu chuẩn quốc tế. Báo cáo Minh Nhật cung cấp những kết quả bảo đảm tính chuyên nghiệp, hợp lý và xác thực cao có thể vượt qua các kiểm chứng nghiêm ngặt.</span></td>\n		</tr>\n		<tr>\n			<td colspan="2">\n			<p><span style="font-size: 12px;">Dịch Vụ Ngân Hàng Và Doanh Nghiệp</span></p>\n			</td>\n		</tr>\n		<tr>\n			<td><span style="font-size: 12px;"><img alt="" src="http://vn.savills.com.vn/_images/calculator-and-pen(2).jpg" style="width: 90px; height: 90px;" /></span></td>\n			<td style="vertical-align: top;"><span style="font-size: 12px;">Các chuyên viên định giá chuyên nghiệp của chúng tôi cung cấp các dịch vụ định giá hàng đầu giúp các ngân hàng có thể đưa ra quyết định đối với bất động sản trong phạm vi toàn khu vực. Hệ thống và quy trình làm việc của Minh Nhật theo tiêu chuẩn quốc tế và phát triển nhất trong khu vực. Các biện pháp phòng ngừa rủi ro được áp dụng nhằm giảm thiểu các yếu tố không lường trước được.</span></td>\n		</tr>\n	</tbody>\n</table>', NULL, NULL, NULL, NULL, 31),
(14, '<p>&nbsp;Minh Nhật mang đến cho khách hàng các dịch vụ bất động sản toàn diện: Văn phòng, Bán lẻ, Nhà ở (cho thuê) và Dịch vụ Công nghiệp.</p>\n\n<table border="0" cellpadding="0" cellspacing="5" style="width:100%;">\n	<colgroup>\n		<col />\n		<col />\n	</colgroup>\n	<tbody>\n		<tr>\n			<td colspan="2">\n			<p><strong><span style="font-size: 12px;">Dịch Vụ&nbsp;Văn Phòng</span></strong></p>\n			</td>\n		</tr>\n		<tr>\n			<td style="width: 90px;"><span style="font-size: 12px;"><img alt="" src="http://vn.savills.com.vn/_images/service-capital-transactions-jpg(1).jpg" style="width: 90px; height: 90px;" /></span></td>\n			<td><span style="font-size: 12px;">Minh Nhật là nhà cung cấp các dịch vụ văn phòng hàng đầu tại Việt Nam. Đội ngũ nhân viên của chúng tôi đảm bảo sẽ làm hài lòng khách hàng bằng sự tận tâm và chuyên nghiệp trong công việc. Khách hàng của Minh Nhật đến từ nhiều thành phố lớn trong khu vực Đông Nam Á.</span></td>\n		</tr>\n		<tr>\n			<td colspan="2">\n			<p><strong><span style="font-size: 12px;">Dịch Vụ Cho Thuê Nhà Ở</span></strong></p>\n			</td>\n		</tr>\n		<tr>\n			<td><span style="font-size: 12px;"><img alt="" src="http://vn.savills.com.vn/_images/the-waterfront-pmh.jpg" style="width: 90px; height: 90px;" /></span></td>\n			<td><span style="font-size: 12px;">Bộ phận cho thuê nhà của chúng tôi cung cấp cho các nhà đầu tư và các nhà phát triển đầy đủ các dịch vụ hỗ trợ nhằm tối đa hóa lợi nhuận từ tất cả các tài sản nhà ở cho thuê, từ các dự án mới cho đến các tòa nhà đã được hoàn thiện.</span></td>\n		</tr>\n		<tr>\n			<td colspan="2">\n			<p><strong><span style="font-size: 12px;">Dịch Vụ Tư Vấn Bán Lẻ</span></strong></p>\n			</td>\n		</tr>\n		<tr>\n			<td><span style="font-size: 12px;"><img alt="" src="http://vn.savills.com.vn/_images/4(6).jpg" style="width: 90px; height: 90px;" /></span></td>\n			<td><span style="font-size: 12px;">Minh Nhật cung cấp dịch vụ tư vấn toàn diện trên lĩnh vực bán lẻ. Các nhà bán lẻ, chủ tòa nhà cũng như các nhà đầu tư tiếp tục thu được nhiều lợi nhuận dựa vào dịch vụ tư vấn giàu kinh nghiệm thực tế và nghiên cứu tình hình thị trường sâu rộng của Minh Nhật.</span></td>\n		</tr>\n		<tr>\n			<td colspan="2">\n			<p><strong><span style="font-size: 12px;">Dịch Vụ Công Nghiệp</span></strong></p>\n			</td>\n		</tr>\n		<tr>\n			<td><span style="font-size: 12px;"><img alt="" src="http://vn.savills.com.vn/_images/l-110729-n2711(1).jpg" style="width: 90px; height: 90px;" /></span></td>\n			<td><span style="font-size: 12px;">Chúng tôi đã nhìn ra được tiềm năng đáng kể trên tất cả các lĩnh vực công nghiệp kể cả những lĩnh vực mà chủ đầu tư lần đầu gia nhập thị trường Việt Nam hay những lĩnh vực mà chủ đầu tư kỳ vọng việc đa dạng hóa danh mục đầu tư trong khu vực.</span></td>\n		</tr>\n	</tbody>\n</table>', NULL, NULL, NULL, NULL, 32),
(15, '<p>Chúng tôi dẫn đầu thị trường trong lĩnh vực Bất động sản Nhà ở và hiện đang là đại lý bán và cung cấp một loạt các dự án bất động sản nhà ở chất lượng cao trên thị trường Việt Nam và trong khu vực Châu Á Thái Bình Dương.</p>\n\n<p>MINH NHẬT&nbsp;Việt nam đứng trong danh sách các công ty có chiến lược tiếp thị dự án hàng đầu tại Việt Nam. Thành công chúng tôi đã đạt được xứng đáng với danh tiếng một công tư vấn phát triển bất động sản hàng đầu và không công ty nào có thể so sánh được. Chúng tôi cung cấp cho các nhà đầu tư dự án những kiến thức chuyên môn sâu rộng, các dịch vụ bất động sản chất lượng cao, kinh nghiệm thực tiễn bán hàng tại Việt Nam, thực tiễn trên thế giới từ những nhà đầu tư địa phương, sơ cấp và đặc biệt là cơ sở dữ liệu khách hàng tiềm năng lớn nhất tại Việt Nam.</p>\n\n<p>Trong năm 2008 và 2009, chúng tôi đã trực tiếp quản lý bán các dự án bất động sản có giá trị từ 180 triệu đến 200 triệu USD.</p>\n\n<p><strong>Chúng tôi cung cấp cho các chủ đầu tư:</strong></p>\n\n<ul>\n	<li>Kiến thức tổng quan và bao quát thị trường trong nước, khu vực và quốc tế.</li>\n	<li>Bao quát thị trường quốc tế thông qua mạng lưới xuyên quốc gia.</li>\n	<li>Truy cập vào cơ sở dữ liệu lớn nhất về các khách hàng tiềm năng.</li>\n	<li>Chuyên viên tư vấn chuyên nghiệp.</li>\n	<li>Các nhân viên chuyên nghiệp với kỹ năng bán hàng giúp tối đa hóa giá bán.</li>\n	<li>Toàn vẹn, chuyên nghiệp và đúng nhu cầu.</li>\n	<li>Đầu tư lớn vào các công nghệ tiên tiến.</li>\n	<li>Cơ sở dữ liệu về người mua tiềm năng với tính năng cập nhật tự động địa chỉ email khách hàng.</li>\n	<li>Nhóm nghiên cứu hàng đầu thị trường Việt Nam.</li>\n	<li>Đội ngũ tiếp thị và quan hệ công chúng chuyên nghiệp.</li>\n	<li>Các tài liệu tiếp thị chất lượng cao.</li>\n</ul>\n\n<table border="0" cellpadding="0" cellspacing="5" style="width:100%;">\n	<colgroup>\n		<col />\n		<col />\n	</colgroup>\n	<tbody>\n		<tr>\n			<td colspan="2">\n			<p><strong>Tiếp Thị Và Bán Dự Án Nhà Ở</strong></p>\n			</td>\n		</tr>\n		<tr>\n			<td style="width: 90px;"><img alt="" src="http://vn.savills.com.vn/_images/gw---3br-master-bedroom(2).jpg" style="width: 90px; height: 90px;" /></td>\n			<td>Minh Nhật đã xây dựng và phát triển bộ phận bán hàng đầy nhiệt huyết về các mảng chính: Quản lý bán hàng, Q.lý khách hàng, Đại diện bán trực tiếp, Lập kế hoạch &amp; thực hiện tiếp thị, Tư vấn tiền phát triển.</td>\n		</tr>\n		<tr>\n			<td colspan="2">\n			<p><strong>Bán Hàng Và Môi Giới</strong></p>\n			</td>\n		</tr>\n		<tr>\n			<td><img alt="" src="http://vn.savills.com.vn/_images/front-view-resize(2).jpg" style="width: 90px; height: 90px;" /></td>\n			<td>Đội bán hàng của Minh Nhật có thể tìm kiếm và tiếp thị mọi loại hình bất động sản nhà ở tại Việt Nam bao gồm nhà ở, căn hộ bán lại, biệt thự, biệt thự/căn hộ áp mái, khu nghỉ dưỡng, đất và biệt thự sân gôn.</td>\n		</tr>\n		<tr>\n			<td colspan="2">\n			<p><strong>Bất Động Sản Quốc Tế</strong></p>\n			</td>\n		</tr>\n		<tr>\n			<td><img alt="" src="http://vn.savills.com.vn/_images/fitzroy-home-main-page(2).jpg" style="width: 90px; height: 90px;" /></td>\n			<td>Chúng tôi có đội ngũ kinh doanh tập trung chủ yếu vào việc phân phối các bất động sản cao cấp trên phạm vi toàn cầu.</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>&nbsp;</p>', NULL, NULL, NULL, NULL, 33),
(16, '<p>Minh Nhật là nhà cung cấp dịch vụ hàng đầu về lĩnh vực dịch vụ quản lý chuyên nghiệp tại Châu Á – Thái Bình Dương với hơn 65 triệu m2 diện tích thương mại, nhà ở cao cấp, trung tâm mua sắm và các diện tích công nghiệp khác. Ở Việt Nam, chúng tôi hiện nay quản lý khoảng (2,5 triệu m2), bao gồm trung tâm thương mại cao cấp và khu căn hộ cao cấp.</p>\n\n<table border="0" cellpadding="0" cellspacing="5" style="width:100%;">\n	<colgroup>\n		<col />\n		<col />\n	</colgroup>\n	<tbody>\n		<tr>\n			<td colspan="2">\n			<p><strong>Quản Lý Tòa Nhà</strong></p>\n			</td>\n		</tr>\n		<tr>\n			<td style="width: 90px;"><img alt="" src="http://vn.savills.com.vn/_images/diamond-island-dao-kim-cuong(5).png" style="width: 90px; height: 90px;" /></td>\n			<td>Chúng tôi nhìn nhận việc quản lý bất động sản là một dịch vụ hướng về khách hàng, trong đó Minh Nhật cung cấp những dịch vụ cao hơn tiêu chuẩn thông thường.</td>\n		</tr>\n		<tr>\n			<td colspan="2">\n			<p><strong>Kiểm Toán Các Trang Thiết Bị Và Khâu Vận Hành</strong></p>\n			</td>\n		</tr>\n		<tr>\n			<td><img alt="" src="http://vn.savills.com.vn/_images/diamondplaza---night(2).jpg" style="width: 90px; height: 90px;" /></td>\n			<td>Chúng tôi tập trung vào việc cung cấp những dịch vụ chuyên nghiệp cho tất cả những khách hàng đang sử dụng diện tích bất động sản tại Việt Nam và khu vực Châu Á Thái Bình Dương.</td>\n		</tr>\n		<tr>\n			<td colspan="2">\n			<p><strong>Quản Lý Tài Chính</strong></p>\n			</td>\n		</tr>\n		<tr>\n			<td><img alt="" src="http://vn.savills.com.vn/_images/4(12).jpg" style="width: 90px; height: 90px;" /></td>\n			<td>Dịch vụ quản lý tài chính chuyên nghiệp và có tính chính xác cao của chúng tôi được cung cấp cho những chủ đầu tư cá nhân, quản lý quỹ…</td>\n		</tr>\n		<tr>\n			<td colspan="2">\n			<p><strong>Tư Vấn Tiền Dự Án</strong></p>\n			</td>\n		</tr>\n		<tr>\n			<td><img alt="" src="http://vn.savills.com.vn/_images/apartment-for-sales-goden-land-1(5).jpg" style="width: 90px; height: 90px;" /></td>\n			<td>Những khách hàng của chúng tôi chủ yếu là các chủ đầu tư, bao gồm chủ đầu tư trong nước đến các quỹ đầu tư và các nhà đầu tư cá nhân khác.</td>\n		</tr>\n		<tr>\n			<td colspan="2">\n			<p><strong>Các Dịch Vụ Kỹ Thuật</strong></p>\n			</td>\n		</tr>\n		<tr>\n			<td><img alt="" src="http://vn.savills.com.vn/_images/riviera-point-2(6).jpg" style="width: 90px; height: 90px;" /></td>\n			<td>Chúng tôi đảm trách việc bảo trì, bảo dưỡng và sửa chữa định kì cho các khu vực và các trang thiết bị.</td>\n		</tr>\n	</tbody>\n</table>', NULL, NULL, NULL, NULL, 34),
(21, '<h1>Công ty TNHH Dược Phẩm Bạch Yến</h1>\n\n<p style="margin:0"><strong>Dược Bạch Yến</strong> là đơn vị hoạt động trong lĩnh vực cung cấp dược phẩm, thành phẩm thực phẩm chức năng và thiết bị y tế gia đình hơn 25 năm. Phương châm hoạt động của&nbsp;Dược Bạch Yến&nbsp;là: Không ngừng phát triển, luôn đặt uy tín, chất lượng sản phẩm dịch vụ lên hàng đầu. Hiện tại, Dược Bạch Yến còn cung cấp các dịch vụ Khám và Tư Vấn chăm sóc sức khỏe chủ động tại bằng phương pháp y học cổ truyền kết hợp các tiến bộ khoa học kỹ thuật y học hiện đại.</p>\n\n<table border="0" cellpadding="0" cellspacing="5">\n	<tbody>\n		<tr>\n			<td colspan="2"><strong>Thời gian phục vụ:</strong></td>\n		</tr>\n		<tr>\n			<td>Từ thứ hai đến thứ bảy<br />\n			&nbsp;- Sáng&nbsp;từ 06h30&nbsp;đến 11h30<br />\n			&nbsp;​- Chiều&nbsp;từ&nbsp;13h30 đến 18h00</td>\n			<td>Chủ nhật:<br />\n			&nbsp;- Sáng từ 06h30&nbsp;đến 12h00<br />\n			​ - Chiều chủ nhật và ngày lễ: Nghỉ</td>\n		</tr>\n	</tbody>\n</table>', NULL, NULL, NULL, NULL, 1),
(22, '', '', '', '', '', 43),
(23, '', '', NULL, NULL, NULL, 44),
(24, '', '', NULL, NULL, NULL, 45),
(25, '<p><strong><span style="line-height: 1.6em;">1. Thành phần của Khang Dược Sâm:</span></strong></p>\n\n<ul>\n	<li>Thành phần cho một viên nang:</li>\n	<li><span style="line-height: 1.6em;">Sâm Ngọc Linh (Panax Vietnamensis): .............................30mg</span></li>\n	<li><span style="line-height: 1.6em;">Cao Bá Bệnh (Eurycoma Longifolia): ...............................200mg</span></li>\n	<li><span style="line-height: 1.6em;">Đông Trùng Hạ Thảo (Cordyceps Militaris):................... 20mg</span></li>\n	<li><span style="line-height: 1.6em;">Phụ liệu tinh bột, talc, magnesi stearat vừa đủ 1 viên.</span></li>\n</ul>\n\n<p><strong>2. Công dụng của Khang Dược Sâm:</strong></p>\n\n<ul>\n	<li><span style="line-height: 1.6em;">Giúp tăng cường sinh lực, sức bền cho các hoạt động thể lực, giảm căng thẳng, mệt mỏi.</span></li>\n	<li><span style="line-height: 1.6em;">Giúp cơ thể sản sinh nội tiết tố nam (testosterone) một cách tự nhiên, duy trì phong độ cường tráng, làm chậm quá trình mãn dục, tăng cường sinh lý nam giới.</span></li>\n</ul>\n\n<p><strong><span style="line-height: 1.6em;">3. Cách dùng Khang Dược Sâm:</span></strong></p>\n\n<ul>\n	<li>Ngày uống 1 viên sau ăn trưa hoặc ăn tối.</li>\n	<li><span style="line-height: 1.6em;">Khi mệt mỏi nhiều có thể dùng ngày 2 viên, chia 2 lần sau bữa trưa và tối.</span></li>\n	<li><span style="line-height: 1.6em;">Mỗi đợt nên dùng 3 tháng liên tục.</span></li>\n</ul>\n\n<p><strong>Nhà sản xuất:</strong>&nbsp;Công ty TNHH Nam Dược.</p>\n\n<p><span style="line-height: 1.6em;"><strong>Số đăng ký:</strong>&nbsp;1057/2015/XNQC-ATTP.</span></p>', '<p>Sâm nguyên chất 100%</p>\n\n<p>Sản phẩm không phải là thuốc</p>', NULL, NULL, NULL, 46),
(27, '<p style="text-align: justify;"><strong>Dược Bạch Yến</strong> là đơn vị hoạt động trong lĩnh vực cung cấp dược phẩm, thành phẩm thực phẩm chức năng và thiết bị y tế gia đình hơn 25 năm. Phương châm hoạt động của&nbsp;Dược Bạch Yến&nbsp;là: Không ngừng phát triển, luôn đặt uy tín, chất lượng sản phẩm dịch vụ lên hàng đầu. Hiện tại, Dược Bạch Yến còn cung cấp các dịch vụ Khám và Tư Vấn chăm sóc sức khỏe chủ động tại bằng phương pháp y học cổ truyền kết hợp các tiến bộ khoa học kỹ thuật y học hiện đại.</p>\n\n<h2 style="text-align: justify;"><span style="font-size:18px;">PHÒNG CHẨN TRỊ&nbsp;Y HỌC CỔ TRUYỀN BẠCH YẾN</span></h2>\n\n<ul>\n	<li style="text-align: justify;">Địa chỉ: 171 Lầu 01 Hùng Vương, Phường 2, Thành Phố Tân An, Tỉnh Long An.</li>\n	<li style="text-align: justify;"><span style="line-height: 1.6em;">Tel: 072. 3822 522 - Fax: 072. 6</span><span style="line-height: 1.6em;">252 479</span></li>\n	<li style="text-align: justify;">Hotline: 0918 194 050 - Email:ctbachyen@yahoo.com.</li>\n</ul>\n\n<p style="text-align: justify;"><strong>Thời gian phục vụ:</strong></p>\n\n<ul>\n	<li style="text-align: justify;">Từ thứ hai đến thứ bảy\n	<ul>\n		<li>Sáng&nbsp;từ 06h30&nbsp;đến 11h30</li>\n		<li>Chiều từ 13h30 đến 18h00</li>\n	</ul>\n	</li>\n	<li style="text-align: justify;">Chủ nhật:\n	<ul>\n		<li>Sáng từ 6 h 30’ đến 12 h</li>\n		<li>Chiều chủ nhật và ngày lễ: Nghỉ</li>\n	</ul>\n	</li>\n</ul>\n\n<h3 style="text-align: justify;"><span style="font-size:18px;">Các dịch vụ chính của PHÒNG KHÁM:</span></h3>\n\n<ol>\n	<li style="text-align: justify;">Khám bệnh, bắt mạch, kê đơn, châm cứu</li>\n	<li style="text-align: justify;">Bán thực phẩm chức năng hỗ trợ điều trị các bệnh mãn tính</li>\n	<li style="text-align: justify;">Bán thuốc thành phẩm y học cổ truyển và các phương pháp trị bệnh không dùng thuốc của YHCT.</li>\n</ol>\n\n<p style="text-align: justify;"><strong>Phòng Khám YHCT Bạch Yến do </strong><strong>Lương Y TRẦN NGỌC THÙNG</strong> phụ trách khám, chẩn đoán và điều trị về các bệnh<strong>:</strong></p>\n\n<ol>\n	<li style="text-align: justify;"><strong>Đau nhức: </strong>Thoái hóa cột sống cổ, lưng, gai cột sống, gai gót chân,đau thần kinh tọa, các chứng phong thấp, tê tay, tê chân,gout, đổ mồ hôi tay chân</li>\n	<li style="text-align: justify;"><strong>Bệnh về thần kinh:</strong>Đau dây thần kinh: Đau đầu mất ngủ mãn tính, rối loạn tiền đình, chóng mặt, suy nhược thần kinh, giảm trí nhớ, stress, thiếu máu não.</li>\n	<li style="text-align: justify;"><strong>Bệnh về tim mạch:</strong> Bệnh huyết áp cao, máu nhiễm mỡ, rối loạn nhịp tim, cao huyết áp, đột quỵ.</li>\n	<li style="text-align: justify;"><strong>Bệnh về gan mật:</strong> Viêm gan &nbsp;B, xơ gan, gan nhiễm mỡ,men gan cao,&nbsp; giải độc gan, dị ứng, mề đay, mẫn ngứa.</li>\n	<li style="text-align: justify;"><strong>Dạ dày-đường ruột:</strong> rối loạn tiêu hóa, biếng ăn, tăng cân cho người gầy,viêm dạ dày, viêm đại tràng, táo bón.</li>\n	<li style="text-align: justify;"><strong>Viêm đường hô hấp trên: </strong>Viêm mũi dị ứng, viêm xoang, viêm họng</li>\n	<li style="text-align: justify;"><strong>Giảm cân theo ý muốn:</strong> đốt cháy mỡ thừa, hạn chế hấp thu chất béo, giảm cân, giảm vòng eo.</li>\n	<li style="text-align: justify;"><strong>Các bệnh phụ nữ:</strong> u nang buồng trứng, u xơ tử cung, u xơ tuyến vú, viêm nhiễm phụ khoa.Chống lão hóa da, giảm nám,trị mụn, làm sáng da, chống gãy rụng tóc, duy trì sắc đẹp, cải thiện các vấn đề về sinh lý nữ</li>\n	<li style="text-align: justify;"><strong>Các bệnh nam giới:</strong>Lãnh cảm tình dục, tăng ham muốn và kéo dài hiệu quả quan hệ tình dục, u tiền liệt tuyến ở nam giới</li>\n	<li style="text-align: justify;">Các bệnh về trẻ em: trẻ em còi xương, chậm lớn, suy dinh dưỡng, tang cường sức khỏe, tăng sức đề kháng, tăng chỉ số IQ làm cho học sinh thông minh hơn, nhớ lâu hơn, học bài mau thuộc hơn, học giỏi hơn!</li>\n	<li style="text-align: justify;"><strong>Các bệnh lý khác:</strong> Hỗ trợ điều trị và phòng ngừa bệnh trỉ nội và trỉ ngoại, viêm đường tiết niệu, sỏi thận, sỏi túi mật, sỏi bàng quan, nhiễm trùng đường tiểu, rối loạn thần kinh tiết niệu, tiểu đêm nhiều lần, đái dầm, giãn tĩnh mạch, tiểu đường.</li>\n</ol>\n\n<p style="text-align: justify;"><strong>Lương Y TRẦN NGỌC THÙNG</strong> đã có tay nghề khám chữa bệnh gia truyền trên 15 năm, đã hoàn thành chương trình “chuẩn hóa lương y, lương dược quốc gia” do Bộ Y tế tổ chức. Ông nhận được giấy khen, bằng khen,.. do hội Đông y tỉnh Long An tặng, Ủy Ban Nhân Dân TP Tân An tặng, Hội châm cứu Trung Ương tặng. Đặc biệt các giải thưởng “Lương Y tiêu biểu vì có thành tích đổi mới công nghệ, bảo tồn, phát triển y dược học Việt Nam: Bảng vàng giải thưởng Lê Hữu Trác, bảng vàng“ Thương hiệu Y Dược nổi tiếng Việt Nam an toàn vì sức khỏe cộng đồng,… do Viện Y học cổ truyền trung ương cùng phối hợp cùng các hội khoa học và kỹ thuật Việt Nam tổ chức.</p>', NULL, NULL, NULL, NULL, 2);

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
  `price` int(8) DEFAULT NULL,
  `_order` int(5) NOT NULL DEFAULT '0',
  `other` varchar(200) DEFAULT NULL,
  `datetime` bigint(10) NOT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `properties` tinyint(1) NOT NULL DEFAULT '0',
  `type_id` int(2) NOT NULL,
  `position_id` varchar(20) DEFAULT NULL,
  `menu_id` varchar(50) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_header`
--

INSERT INTO `web_header` (`id`, `name`, `name_alias`, `url`, `img`, `title`, `description`, `tags`, `code`, `parent`, `price`, `_order`, `other`, `datetime`, `lang`, `status`, `properties`, `type_id`, `position_id`, `menu_id`) VALUES
(1, 'Trang chủ', 'trang-chu', 'http://localhost/all_v5/bachyen', '', 'Công ty TNHH Dược Phẩm Bạch Yến', 'Dược Bạch Yến là đơn vị hoạt động trong lĩnh vực cung cấp dược phẩm, thành phẩm thực phẩm chức năng và thiết bị y tế gia đình hơn 25 năm', 'Công ty TNHH Dược Phầm Bạch Yến,duoc pham bach yen', NULL, 0, NULL, 1, NULL, 1456732980, 'vi', 1, 1, 1, ',2,', NULL),
(2, 'Giới thiệu', 'gioi-thieu', '', '', 'Giới thiệu dược Bạch Yến', 'Giới thiệu công ty TNHH dược phẩm Bạch Yến', 'giới thiệu công ty TNHH dược phẩm Bạch Yến', NULL, 0, NULL, 2, NULL, 1456734840, 'vi', 1, 1, 2, ',2,', NULL),
(3, 'Slider home', '', '', '1458272817.jpg', '', '', '', NULL, 0, NULL, 0, NULL, 1456735140, 'vi', 1, 2, 16, ',16,', ',1,'),
(4, 'Sản phẩm', 'san-pham', '', '', 'Dược phẩm Bạch Yến', 'Với kinh nghiệm 50 năm trong Sản xuất, Kinh doanh, Xuất nhập khẩu thuốc chữa bệnh, nguyên liệu, dược liệu và trang thiết bị dụng cụ y tế', 'dược phẩm bạch yến,duoc pham,bach yen', NULL, 0, NULL, 3, NULL, 1456735860, 'vi', 1, 1, 3, ',7,2,', NULL),
(5, 'Thông tin sản phẩm', 'thong-tin-san-pham', '', '', 'Thông tin sản phẩm', '', 'thông tin sản phẩm', NULL, 0, NULL, 4, NULL, 1456735860, 'vi', 1, 1, 2, ',9,2,', NULL),
(6, 'Tin tức', 'tin-tuc', '', '', 'Tin tức', '', 'tin tức,tin tuc', NULL, 0, NULL, 5, NULL, 1456735920, 'vi', 1, 1, 2, ',9,2,5,', NULL),
(7, 'Liên hệ', 'lien-he', '', '', 'Liên hệ', '', 'liên hệ,lien he', NULL, 0, NULL, 6, NULL, 1456735980, 'vi', 1, 1, 17, ',2,', NULL),
(43, 'Diabetna', 'diabetna', '', '1458288032.jpg', 'Diabetna', 'Giúp Hạ đường huyết,  hỗ trợ điều trị bệnh tiểu đường. Hỗ trợ ngăn ngừa biến chứng do bệnh tiểu đường.', 'diabetna', NULL, 0, NULL, 0, NULL, 1458287940, 'vi', 1, 2, 3, NULL, ',4,'),
(29, 'Cơ hội đầu tư bất động sản tại Mỹ', 'co-hoi-dau-tu-bat-dong-san-tai-my', '', '1456803245.png', 'Cơ hội đầu tư bất động sản tại Mỹ', 'Tham dự tọa đàm do Công ty Orient & Pacific Vietnam tổ chức, khách hàng sẽ được tìm hiểu về cơ hội đầu tư vào dự án bất động sản trọng điểm của Mỹ', 'cơ hội đầu tư bất động sản tại mỹ', NULL, 0, NULL, 0, NULL, 1456803000, 'vi', 1, 2, 2, NULL, ',6,'),
(30, 'Thăm quan, nhận quà tặng giá trị tại EcoXuân', 'tham-quan-nhan-qua-tang-gia-tri-tai-ecoxuan', '', '1456803409.jpg', 'Thăm quan, nhận quà tặng giá trị tại EcoXuân', 'Khách đến thăm quan hoặc đặt cọc mua nhà khu đô thị EcoXuân sẽ nhận được nhiều ưu đãi.', 'thăm quan nhận quà tặng giá trị tại ecoxuân', NULL, 0, NULL, 0, NULL, 1456803240, 'vi', 1, 2, 2, NULL, ',6,'),
(31, 'Dịch Vụ Tư Vấn', 'dich-vu-tu-van', '', '1456805949.jpg', 'Dịch Vụ Tư Vấn', 'Bộ phận Tư vấn cung cấp nhiều dịch vụ đa dạng như nghiên cứu thị trường, tư vấn ý tưởng phát triển, nghiên cứu nhân khẩu học, nghiên cứu khả thi', 'dịch vụ tư vấn', NULL, 0, NULL, 0, NULL, 1456805520, 'vi', 1, 2, 2, NULL, ',5,'),
(32, 'Đại Lý Thương Mại', 'dai-ly-thuong-mai', '', '1456806432.jpg', 'Đại Lý Thương Mại', 'Minh Nhật mang đến cho khách hàng các dịch vụ bất động sản toàn diện: Văn phòng, Bán lẻ, Nhà ở (cho thuê) và Dịch vụ Công nghiệp.', 'đại lý thương mại', NULL, 0, NULL, 0, NULL, 1456806240, 'vi', 1, 2, 2, NULL, ',5,'),
(33, 'Dịch Vụ Kinh Doanh Nhà Ở', 'dich-vu-kinh-doanh-nha-o', '', '1456806791.jpg', 'Dịch Vụ Kinh Doanh Nhà Ở', 'Chúng tôi dẫn đầu thị trường trong lĩnh vực Bất động sản Nhà ở và hiện đang là đại lý bán và cung cấp một loạt các dự án bất động sản nhà ở chất lượng cao trên thị trường Việt Nam và trong khu vực Châu Á Thái Bình Dương', 'dịch vụ kinh doanh nhà ở', NULL, 0, NULL, 0, NULL, 1456806420, 'vi', 1, 2, 2, NULL, ',5,'),
(34, 'Quản Lý Bất Động Sản', 'quan-ly-bat-dong-san', '', '1456807140.jpg', 'Quản Lý Bất Động Sản', 'Minh Nhật là nhà cung cấp dịch vụ hàng đầu về lĩnh vực dịch vụ quản lý chuyên nghiệp tại Châu Á – Thái Bình Dương', 'quản lý bất động sản', NULL, 0, NULL, 0, NULL, 1456806780, 'vi', 1, 2, 2, NULL, ',5,'),
(40, 'Facebook', 'facebook', 'javascript:;', '1456814153.png', 'Facebook', '', 'facebook', NULL, 0, NULL, 51, NULL, 1456814100, 'vi', 1, 1, 20, ',6,', NULL),
(41, 'Youtube', 'youtube', 'javascript:;', '1456814176.png', 'Youtube', '', 'youtube', NULL, 0, NULL, 52, NULL, 1456814160, 'vi', 1, 1, 20, ',6,', NULL),
(42, 'Google plus', 'google-plus', 'javascript:;', '1456814196.png', 'Google plus', '', 'google plus', NULL, 0, NULL, 53, NULL, 1456814160, 'vi', 1, 1, 20, ',6,', NULL),
(44, 'Thăng áp - Nam dược', 'thang-ap-nam-duoc', '', '1458288343.jpg', 'Thăng áp - Nam dược', 'Tăng cường sinh lực: Chống mệt mỏi, tăng cường hệ thống miễn dịch, tăng sức lao động trí óc và chân tay.', 'thăng áp nam dược', '', 0, 0, 0, NULL, 1458288300, 'vi', 1, 2, 3, NULL, ',4,'),
(45, 'Kem sắc xuân', 'kem-sac-xuan', '', '1458288379.jpg', 'Kem sắc xuân', 'Giúp loại bỏ sắc tố gây nám, sạm da, tàn nhang. Giúp làn da hồng hào tươi trẻ, chống lão hóa', 'kem sắc xuân', '', 0, 0, 0, NULL, 1458288360, 'vi', 1, 2, 3, NULL, ',48,4,'),
(46, 'Khang dược Sâm', 'khang-duoc-sam', '', '1458288399.jpg', 'Khang dược Sâm', 'Tăng cường sinh lực, sức bền cho các hoạt động thể lực và trí óc, giảm căng thẳng, mệt mỏi.', 'khang dược sâm', '', 0, 0, 0, NULL, 1458288360, 'vi', 1, 2, 3, NULL, ',48,4,'),
(47, 'Home liên hệ', 'home-lien-he', '', '1458289516.jpg', 'Hỗ trợ tư vấn', 'Hỗ trợ tư vấn cách sử dụng, công dụng thực phẩm chức năng của công ty TNHH Dược Phẩm Bạch Yến', 'home liên hệ', NULL, 0, NULL, 0, NULL, 1458289380, 'vi', 1, 1, 20, ',8,', NULL),
(48, 'Sản phẩm nổi bật', 'san-pham-noi-bat', '', '', 'Sản phẩm nổi bật', '', 'sản phẩm nổi bật', NULL, 0, NULL, 0, NULL, 1458295200, 'vi', 1, 1, 3, ',5,', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `web_ip_address`
--

CREATE TABLE IF NOT EXISTS `web_ip_address` (
`id` int(11) NOT NULL,
  `ip_address` varchar(20) NOT NULL,
  `datetime` bigint(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8;

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
(127, '118.69.62.131', 1456714380),
(128, '::1', 1458296103),
(129, '::1', 1458296209);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_picture`
--

INSERT INTO `web_picture` (`id`, `name`, `img`, `datetime`, `_order`, `_table`, `table_id`) VALUES
(21, 'Căn hộ florita - Quận 7', '1456799940.jpg', 1456799939, 0, 'web_header', 14),
(24, 'Cơ hội đầu tư bất động sản tại Mỹ', '1456803245.png', 1456803244, 0, 'web_header', 29),
(25, 'Thăm quan, nhận quà tặng giá trị tại EcoXuân', '1456803409.jpg', 1456803408, 0, 'web_header', 30),
(26, 'Dịch Vụ Tư Vấn', '1456805949.jpg', 1456805948, 0, 'web_header', 31),
(27, 'Đại Lý Thương Mại', '1456806432.jpg', 1456806431, 0, 'web_header', 32),
(28, 'Dịch Vụ Kinh Doanh Nhà Ở', '1456806791.jpg', 1456806790, 0, 'web_header', 33),
(29, 'Quản Lý Bất Động Sản', '1456807140.jpg', 1456807139, 0, 'web_header', 34),
(31, 'KHU BIỆT THỰ THE OASIS - THUẬN AN, BÌNH DƯƠNG', '1456810222.jpg', 1456810221, 0, 'web_header', 35),
(35, 'Facebook', '1456814153.png', 1456814152, 0, 'web_header', 40),
(36, 'Youtube', '1456814176.png', 1456814175, 0, 'web_header', 41),
(37, 'Google plus', '1456814196.png', 1456814195, 0, 'web_header', 42),
(43, 'Diabetna', '1458288032.jpg', 1458288031, 0, 'web_header', 43),
(44, 'Thăng áp - Nam dược', '1458288343.jpg', 1458288343, 0, 'web_header', 44),
(45, 'Kem sắc xuân', '1458288379.jpg', 1458288378, 0, 'web_header', 45),
(46, 'Khang dược Sâm', '1458288399.jpg', 1458288398, 0, 'web_header', 46),
(47, 'Home lie6', '1458289516.jpg', 1458289515, 0, 'web_header', 47),
(48, 'Slider home', '1458289540.jpg', 1458289539, 0, 'web_header', 3),
(49, 'Slider home', '1458289541.jpg', 1458289540, 0, 'web_header', 3),
(50, 'Slider home', '1458289543.jpg', 1458289540, 0, 'web_header', 3);

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
(7, 'Home sản phẩm', '', 7, 2, 1),
(8, 'Home liên hệ', '', 8, 2, 1),
(9, 'Home hoạt động - tin tức', '', 9, 2, 1),
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
(3, 'Sản phẩm', 'product', 'web_header', 'public/images/articles/', 'public/_thumbs/Images/articles/', 3, 1, 1),
(4, 'Thư viện', 'library', 'web_header', 'public/images/articles/', 'public/_thumbs/Images/articles/', 7, 1, 0),
(5, 'Giới thiệu', 'about', 'web_header', 'public/images/articles/', 'public/_thumbs/Images/articles/', 4, 1, 0),
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
(6, '::1', 2, 0, 1458286507),
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `web_content`
--
ALTER TABLE `web_content`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `web_event_form`
--
ALTER TABLE `web_event_form`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `web_header`
--
ALTER TABLE `web_header`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `web_ip_address`
--
ALTER TABLE `web_ip_address`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=130;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
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
