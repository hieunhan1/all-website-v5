-- phpMyAdmin SQL Dump
-- version 3.5.8.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 27, 2016 at 10:29 AM
-- Server version: 5.0.96
-- PHP Version: 5.3.28

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `iappscod_test2`
--

-- --------------------------------------------------------

--
-- Table structure for table `web_admin`
--

CREATE TABLE IF NOT EXISTS `web_admin` (
  `id` int(3) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `url` varchar(30) NOT NULL,
  `_table` varchar(20) NOT NULL,
  `parameter` varchar(100) NOT NULL default '/',
  `file` varchar(20) NOT NULL,
  `img` varchar(150) default NULL,
  `_order` int(3) default '0',
  `ajax` varchar(100) default NULL,
  `type` tinyint(1) NOT NULL default '1',
  `parent` int(3) NOT NULL default '0',
  `status` tinyint(1) default '1',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `url` (`url`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `web_admin`
--

INSERT INTO `web_admin` (`id`, `name`, `url`, `_table`, `parameter`, `file`, `img`, `_order`, `ajax`, `type`, `parent`, `status`) VALUES
(1, 'Trang chủ', 'home', '', '', 'home', 'adIconHome', 0, '0', 0, 0, 1),
(2, 'Cấu hình website', 'config', 'web_config', '', 'web_config', 'adIconConfig', 49, '0', 2, 0, 1),
(3, 'Danh mục menu', 'listmenu', 'web_header', '?properties=1', 'web_menu', 'adIconMenu', 7, '0', 1, 0, 1),
(4, 'Quản lý bài viết', 'article', 'web_header', '?properties=2&type_id=2', 'web_article', 'adIconArticle', 1, '1', 1, 0, 1),
(5, 'Quản lý Tour', 'tour', 'web_header', '?properties=2&type_id=3', 'web_tour', 'adIconCourse', 2, '0', 1, 0, 1),
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
(19, 'Team building', 'teambuilding', 'web_header', '?properties=2&type_id=6', 'web_teambuilding', 'adIconOpinion', 3, '1', 1, 0, 1),
(20, 'Loại thông tin', 'web_type', 'web_type', '', 'web_type', 'adIconType', 53, '0', 2, 0, 1),
(21, 'Liên hệ trực tuyến', 'web_contact', 'web_contact', '', 'web_contact', 'adIconContact', 10, '1', 1, 0, 1),
(22, 'Event logs', 'web_logs', 'web_logs', '', 'web_logs', 'adIconLog', 56, '0', 2, 0, 1),
(23, 'Tài khoản', 'web_users', 'web_users', '', 'web_users', 'adIconSetting', 100, '0', 2, 0, 1),
(24, 'Thông tin tài khoản', 'user', 'account', '?infomation=1', 'account', 'adIconUser', 0, '0', 0, 0, 1),
(25, 'Web Header', 'web_header', 'web_header', '', 'web_header', 'adIconOther', 57, '0', 2, 0, 1),
(26, 'Danh sách chi nhánh', 'branch', 'web_branch', '', 'web_branch', 'adIconOpening', 4, '0', 1, 0, 1),
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
  `id` int(3) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `shorten` varchar(20) default NULL,
  `email` varchar(60) NOT NULL,
  `tel` varchar(50) NOT NULL,
  `fax` varchar(30) default NULL,
  `address` varchar(200) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `googlemap` varchar(50) default NULL,
  `_order` int(3) NOT NULL default '0',
  `lang` varchar(2) NOT NULL,
  `status` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

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
  `id` int(3) NOT NULL auto_increment,
  `name` varchar(30) NOT NULL,
  `name_var` varchar(30) NOT NULL,
  `value` varchar(250) NOT NULL,
  `_order` int(3) NOT NULL,
  `lang` varchar(2) NOT NULL default 'vi',
  `status` tinyint(1) default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `web_config`
--

INSERT INTO `web_config` (`id`, `name`, `name_var`, `value`, `_order`, `lang`, `status`) VALUES
(5, 'Số tin / trang', 'limit_1', '5', 10, 'vi', 1),
(6, 'Số tour / trang', 'limit_2', '18', 11, 'vi', 1),
(7, 'Teambuilding / trang', 'limit_3', '10', 12, 'vi', 1),
(8, 'Số video / trang', 'limit_4', '10', 13, 'vi', 0),
(11, 'Điện thoại', 'tel', '08 3765 0115', 3, 'vi', 1),
(12, 'Hotline', 'hotline', '0908 444 082', 7, 'vi', 1),
(14, 'Mô tả khác', 'other', 'GP ĐKKD số 0302556989 ngày cấp 08/03/2002 được sửa đổi lần thứ 18 ngày 22/05/2015', 5, 'vi', 1),
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
(27, 'Tên trang website', 'sitename', 'HOA VIỆT TRAVEL®', 1, 'vi', 1),
(28, 'Site name', 'sitename', 'Dịch vụ thiết kế website iAppsCode', 1, 'en', 1),
(29, 'Số tour trang home', 'limit_5', '3', 14, 'vi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_contact`
--

CREATE TABLE IF NOT EXISTS `web_contact` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `address` varchar(200) default NULL,
  `visitors` int(3) default NULL,
  `children` int(3) default NULL,
  `baby` int(2) default NULL,
  `company` varchar(150) default NULL,
  `destination` varchar(150) default NULL,
  `date_khoihanh` bigint(10) default NULL,
  `message` text NOT NULL,
  `datetime` bigint(10) NOT NULL,
  `lang` varchar(2) NOT NULL default 'vi',
  `status` tinyint(1) default '0',
  `type` int(11) NOT NULL,
  `header_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `web_contact`
--

INSERT INTO `web_contact` (`id`, `name`, `email`, `phone`, `address`, `visitors`, `children`, `baby`, `company`, `destination`, `date_khoihanh`, `message`, `datetime`, `lang`, `status`, `type`, `header_id`) VALUES
(12, 'Trần Hiếu Nhân', 'nhan300489@gmail.com', '0988388003', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Test noi dung abc', 1453771509, 'vi', 0, 1, NULL),
(13, 'Trần Hiếu Nhân', 'hieunhan112@gmail.com', '0988388003', '123 cmt 8', 1, 0, 0, NULL, NULL, NULL, '', 1453771596, 'vi', 0, 2, 19),
(14, 'Trần Hiếu Nhân', 'nhan300489@gmail.com', '0988388003', 'nguyen thi minh khai', 11, 1, 1, NULL, 'soc trang', 1455901200, 'Ve tot nhe', 1453771500, 'vi', 0, 3, NULL),
(15, 'Trần Hiếu Nhân', 'nhan300489@gmail.com', '0988388003', 'CMT8', 12, 0, 0, NULL, 'Mui Ne', 1455037200, '', 1453771500, 'vi', 0, 3, NULL),
(16, 'Trần Hiếu Nhân', 'hieunhan112@gmail.com', '0988388003', 'CMT 8', 12, 0, 0, NULL, 'Nha Tranh', 1455037200, '', 1453771500, 'vi', 0, 3, NULL),
(17, 'Trần Hiếu Nhân', 'nhan300489@gmail.com', '0988388003', '', 1, 0, 0, NULL, NULL, NULL, '', 1453772559, 'vi', 0, 2, 18),
(18, 'Trần Hiếu Nhân', 'nhan300489@gmail.com', '0988388003', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'test noid ung lein he abc asas', 1454529140, 'vi', 0, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `web_content`
--

CREATE TABLE IF NOT EXISTS `web_content` (
  `id` int(11) NOT NULL auto_increment,
  `content` text NOT NULL,
  `more1` text,
  `more2` text,
  `more3` text,
  `more4` text,
  `more5` text,
  `header_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=298 ;

--
-- Dumping data for table `web_content`
--

INSERT INTO `web_content` (`id`, `content`, `more1`, `more2`, `more3`, `more4`, `more5`, `header_id`) VALUES
(292, '<p>Đáp ứng mọi yêu cầu có thể của khách hàng từ cá nhân tới tổ chức, không phân biệt vị trí địa lý.</p>\n\n<p>Cung cấp dịch vụ đa dạng, đầy đủ loại khách sạn, loại phòng ở phạm vi toàn cầu, với hệ thống hơn 5.000 khách sạn tại Việt Nam &amp; hơn 345.000 khách sạn quốc tế và 250 tours chọn lọc.</p>\n\n<p>Dịch vụ khách hàng nhiệt tâm, chu đáo 24/7.</p>\n\n<p>Thanh toán linh hoạt, nhanh chóng, an toàn.</p>\n\n<p>Luôn có chương trình ưu đãi, khuyến mại, giảm giá đặc biệt cho khách đoàn, công ty, tổ chức.</p>', NULL, NULL, NULL, NULL, NULL, 23),
(293, '<p>Đến Hoa Việt Travel®, ngoài việc được chăm sóc tận tình từ đội ngũ nhân viên tư vấn chuyên nghiệp, bạn còn được hưởng những mức giá ưu đãi cực kỳ hấp dẫn chỉ có duy nhất tại&nbsp;Hoa Việt Travel® đảm bảo cho bạn một chuyến đi tiết kiệm, thú vị và hoàn toàn xứng đáng với số tiền đã bỏ ra. Chúng tôi cam kết hoàn tiền chênh lệch nếu bạn có giá thấp hơn.</p>', NULL, NULL, NULL, NULL, NULL, 22),
(294, '<p>Song song cùng với hệ thống khách sạn, Hoa Việt Travel®&nbsp;đã phát triển mảng tour du lịch được chọn lọc rất kỹ cả về chất lượng lẫn mức giá. Hơn 250 tour là những trải nghiệm thú vị và ấn tượng nhất mà bạn sẽ được trải qua trong suốt hành trình.</p>\n\n<p>Chưa hết, bạn còn có cơ hội chủ động chọn lọc những tour được thiết kế riêng biệt, phù hợp hoàn toàn với mong muốn của bạn. Chắc chắn, đến với&nbsp;Hoa Việt Travel® bạn sẽ có một chuyến đi đáng nhớ.</p>', NULL, NULL, NULL, NULL, NULL, 21),
(287, '<p>Chương trình Teambuilding&nbsp;tại khu du lịch sinh thái Madaguoi, huyện Đạ Huoai tỉnh Lâm Đồng. Thành viên tham gia sẽ được&nbsp;trải nghiệm một cuộc hành trình với rất nhiều thử thách đòi hỏi sự đoàn kết, nỗ lực và quyết tâm của tất cả các thành viên để chinh phục thành công.</p>\n\n<p>Thử thách đầu tiên mà các thành viên đã trải nghiệm mang tên: “Biểu tượng chiến thắng” –&nbsp;Các đội tham gia chương trình sẽ phải thiết kế cho đội mình lá cờ có biểu tượng logo mang phong cách riêng thật độc đáo. Cuộc so tài hết sức sôi nổi ngay từ những phút đầu tiên, 6 Team đã chọn 6 Logo và tên gọi rất ấn tượng: Tê Giác Húc, HUC, Hành Tinh Xanh, C2, The Sun và Cơn Lốc.</p>\n\n<p>Các Team có 5 phút thuyết trình cho logo và tên gọi Team mình và 7 phút biểu diễn với bản nhạc sôi động. 6 đội đã phô diễn sự ngẫu hứng, sáng tạo qua các điệu nhảy tập thể vô cùng vui vẻ và hoạt náo.</p>\n\n<p>Tại khu du lịch nghỉ dưỡng sinh thái Madaguoi, các Team tham gia các cuộc thi: Chiến binh ra trận, thử thách kép, thách thức tột đỉnh, xếp dĩa, thủy bộ luân chiến, sứ mệnh cao cả…Các thử thách này đòi hỏi tất cả các thành viên trong đội chơi phải vượt qua nỗi sợ hãi của chính mình, phát huy cao độ tinh thần đoàn kết, sự nhanh nhạy, sáng tạo và ý chí quyết tâm. Với sự nỗ lực của mọi người, các trò chơi đã kết thúc trong đầy ắp tiếng cười và niềm vui của tất cả các thành viên.</p>\n\n<p>Các Team phải mang theo mình hộp đựng bí mật và mỗi lần vượt qua một thử thách các Team sẽ nhận được mật thư có thông điệp hướng dẫn tiếp tục cuộc hành trình.</p>\n\n<p>Cuộc hành trình với những phút giây hồi hộp, căng thẳng và vượt qua nhiều thử thách khó khăn để khám phá các điểm tham quan của khu du lịch Madaguoi và tìm ra vị trí của chìa khóa vạn năng, giải mã kho báu để mang chiến thắng về cho Team mình.</p>\n\n<p>Giải bắn súng sơn tranh cúp, là cuộc đua quyết liệt nhất giữa 6 Team. Tất cả các thành viên tham gia cuộc đua tài bắn súng đã nỗ lực hết mình, phối hợp chặt chẽ và quyết tâm “chiến đấu” để giành chiến thắng.</p>\n\n<p>Hãy tham gia&nbsp;đặt tour du lịch&nbsp;Đất Việtệt kết hợp teambuilding ngay hôm nay nhé.</p>', NULL, NULL, NULL, NULL, NULL, 72),
(288, '<p>Chương trình du lich team building “Sức mạnh Đam San” mô phỏng mỗi đội là một ứng cử viên cho danh hiệu Đam San. Bằng sự gắn kết sức mạnh của từng thành viên, mỗi đội phải trải qua hành trình khó khăn, vượt qua các thử thách của núi cao, rừng rậm, hồ sâu, … tìm đường chiếm đoạt Nữ thần Mặt Trời.</p>\n\n<p style="text-align: center;"><a href="http://datviettour.com.vn/wp-content/uploads/2013/05/dam-san.jpg"><img alt="Teambuilding Sức Mạnh Đam San" src="http://datviettour.com.vn/wp-content/uploads/2013/05/dam-san.jpg" title="Teambuilding Sức Mạnh Đam San" /></a></p>\n\n<p>Chàng Đam San trong sử thi đã thất bại vì sự ngông cuồng này, còn Đam San trong team building đang chờ sự nỗ lực để đạt đến thành công của các bạn!</p>\n\n<p>Tham gia chùm tour du lịch trọn gói&nbsp;Đất&nbsp;Việt ngay tại&nbsp;đây</p>', NULL, NULL, NULL, NULL, NULL, 73),
(289, '<p>Vịnh Hạ Long là nơi kỳ lý tưởng cho hàng loạt chương trình du lịch teambuilding với những mục đích khác nhau dành cho quý khách. Những đảo đá, bãi biển, hệ thống hang động, cơ sở vật chất lưu trú, dịch vụ kayak v.v. luôn là những thứ cần thiết để làm nền tảng cho một chương trình du lịch kết hợp teambuilding tốt.</p>\n\n<p style="text-align: center;"><img alt="" src="https://lh6.googleusercontent.com/wtwCzBDatmMPc0B6XoPZQL0aqdhhph10md4UUMmIQ2fW-J88Qo1huh7M-P2g4J9aAf_FgsVy1HmOtHPItbtvIxgX4te1gcQmL-HCTflIOwD7P1E2c9cW_gvHLg" /></p>\n\n<p style="text-align: center;"><img alt="" src="https://lh5.googleusercontent.com/HcHefxXlQLwk8EThMU5WeNpORyKbfWLeA8XPWhBArSA5zigO7iHrvJC8dqJxEI_vStDzYc_tjO46ll5BB49t9E2Rc-gKHbixCxYixaxNMetM-Fpto1EdC0er0Q" /></p>\n\n<p>Hãy tham gia&nbsp;đặt tour du lịch kết hợp Teambuilding ngay hôm nay !</p>', NULL, NULL, NULL, NULL, NULL, 74),
(290, '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla. Aenean dictum lacinia tortor. Nunc iaculis, nibh non iaculis aliquam, orci felis euismod neque, sed ornare massa mauris sed velit. Nulla pretium mi et risus. Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim. Sed tortor. Curabitur molestie. Duis velit augue, condimentum at, ultrices a, luctus ut, orci. Donec pellentesque egestas eros. Integer cursus, augue in cursus faucibus, eros pede bibendum sem, in tempus tellus justo quis ligula. Etiam eget tortor. Vestibulum rutrum, est ut placerat elementum, lectus nisl aliquam velit, tempor aliquam eros nunc nonummy metus. In eros metus, gravida a, gravida sed, lobortis id, turpis. Ut ultrices, ipsum at venenatis fringilla, sem nulla lacinia tellus, eget aliquet turpis mauris non enim. Nam turpis. Suspendisse lacinia. Curabitur ac tortor ut ipsum egestas elementum. Nunc imperdiet gravida mauris.</p>\n\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla. Aenean dictum lacinia tortor. Nunc iaculis, nibh non iaculis aliquam, orci felis euismod neque, sed ornare massa mauris sed velit. Nulla pretium mi et risus. Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim. Sed tortor. Curabitur molestie. Duis velit augue, condimentum at, ultrices a, luctus ut, orci. Donec pellentesque egestas eros. Integer cursus, augue in cursus faucibus, eros pede bibendum sem, in tempus tellus justo quis ligula. Etiam eget tortor. Vestibulum rutrum, est ut placerat elementum, lectus nisl aliquam velit, tempor aliquam eros nunc nonummy metus. In eros metus, gravida a, gravida sed, lobortis id, turpis. Ut ultrices, ipsum at venenatis fringilla, sem nulla lacinia tellus, eget aliquet turpis mauris non enim. Nam turpis. Suspendisse lacinia. Curabitur ac tortor ut ipsum egestas elementum. Nunc imperdiet gravida mauris.</p>\n\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla. Aenean dictum lacinia tortor. Nunc iaculis, nibh non iaculis aliquam, orci felis euismod neque, sed ornare massa mauris sed velit. Nulla pretium mi et risus. Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim. Sed tortor. Curabitur molestie. Duis velit augue, condimentum at, ultrices a, luctus ut, orci. Donec pellentesque egestas eros. Integer cursus, augue in cursus faucibus, eros pede bibendum sem, in tempus tellus justo quis ligula. Etiam eget tortor. Vestibulum rutrum, est ut placerat elementum, lectus nisl aliquam velit, tempor aliquam eros nunc nonummy metus. In eros metus, gravida a, gravida sed, lobortis id, turpis. Ut ultrices, ipsum at venenatis fringilla, sem nulla lacinia tellus, eget aliquet turpis mauris non enim. Nam turpis. Suspendisse lacinia. Curabitur ac tortor ut ipsum egestas elementum. Nunc imperdiet gravida mauris.</p>', NULL, NULL, NULL, NULL, NULL, 64),
(291, '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla. Aenean dictum lacinia tortor. Nunc iaculis, nibh non iaculis aliquam, orci felis euismod neque, sed ornare massa mauris sed velit. Nulla pretium mi et risus. Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim. Sed tortor. Curabitur molestie. Duis velit augue, condimentum at, ultrices a, luctus ut, orci. Donec pellentesque egestas eros. Integer cursus, augue in cursus faucibus, eros pede bibendum sem, in tempus tellus justo quis ligula. Etiam eget tortor. Vestibulum rutrum, est ut placerat elementum, lectus nisl aliquam velit, tempor aliquam eros nunc nonummy metus. In eros metus, gravida a, gravida sed, lobortis id, turpis. Ut ultrices, ipsum at venenatis fringilla, sem nulla lacinia tellus, eget aliquet turpis mauris non enim. Nam turpis. Suspendisse lacinia. Curabitur ac tortor ut ipsum egestas elementum. Nunc imperdiet gravida mauris.</p>\n\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla. Aenean dictum lacinia tortor. Nunc iaculis, nibh non iaculis aliquam, orci felis euismod neque, sed ornare massa mauris sed velit. Nulla pretium mi et risus. Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim. Sed tortor. Curabitur molestie. Duis velit augue, condimentum at, ultrices a, luctus ut, orci. Donec pellentesque egestas eros. Integer cursus, augue in cursus faucibus, eros pede bibendum sem, in tempus tellus justo quis ligula. Etiam eget tortor. Vestibulum rutrum, est ut placerat elementum, lectus nisl aliquam velit, tempor aliquam eros nunc nonummy metus. In eros metus, gravida a, gravida sed, lobortis id, turpis. Ut ultrices, ipsum at venenatis fringilla, sem nulla lacinia tellus, eget aliquet turpis mauris non enim. Nam turpis. Suspendisse lacinia. Curabitur ac tortor ut ipsum egestas elementum. Nunc imperdiet gravida mauris.</p>\n\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla. Aenean dictum lacinia tortor. Nunc iaculis, nibh non iaculis aliquam, orci felis euismod neque, sed ornare massa mauris sed velit. Nulla pretium mi et risus. Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim. Sed tortor. Curabitur molestie. Duis velit augue, condimentum at, ultrices a, luctus ut, orci. Donec pellentesque egestas eros. Integer cursus, augue in cursus faucibus, eros pede bibendum sem, in tempus tellus justo quis ligula. Etiam eget tortor. Vestibulum rutrum, est ut placerat elementum, lectus nisl aliquam velit, tempor aliquam eros nunc nonummy metus. In eros metus, gravida a, gravida sed, lobortis id, turpis. Ut ultrices, ipsum at venenatis fringilla, sem nulla lacinia tellus, eget aliquet turpis mauris non enim. Nam turpis. Suspendisse lacinia. Curabitur ac tortor ut ipsum egestas elementum. Nunc imperdiet gravida mauris.</p>', NULL, NULL, NULL, NULL, NULL, 65),
(286, '<p>Côn Đảo là hòn đảo hoang sơ, thanh bình, có nhiều bãi biển đẹp, những cánh rừng nguyên sinh với nhiều loài động thực vật quý hiếm được nhiều du khách yêu thích. Bên cạnh đó, địa danh này còn hút khách bởi hệ thống nhà tù Côn Đảo – nơi giam giữ và tra tấn rất dã man nhiều tù nhân cách mạng.</p>\n\n<p>Trong suốt thời gian hoạt động có tới hơn 20.000 tù nhân đã không thể trở về vì những cực hình nơi đây.Bên cạnh đó, bằng trí thông minh và sức bền bỉ và lòng kiên định, nhiều chiến sĩ đã vượt qua hàng rào canh gác gắt gao, chiến thắng sự khắc nghiệt của thiên nhiên để ở về. Nhiều giai thoại vượt ngục của những tù nhân đã làm Côn Đảo trở nên nổi tiếng. Những câu chuyện được kể lại là minh chứng cho tinh thần sắt đá và ý chí sinh tồn mạnh mẽ của người chiến sĩ cách mạng Việt Nam trên mặt trận đấu tranh chống lại kẻ thù xâm lược.</p>\n\n<h2><span style="font-size:20px;">Chương trình team building: Tinh Thần thép</span></h2>\n\n<p>Chương trình du lịch team building 2015: Tinh Thần Thép giúp bạn có cơ hội được sống trong cảm giác của những tù nhân Côn Đảo xưa. Đây là một thử thách không dễ dàng vượt qua.</p>\n\n<p>Để thành công, bạn cần phải đoàn kết cùng đồng đội của mình, bằng ý chí sinh tồn và lòng gan dạ để vượt qua những khó khăn. Bên cạnh đó, bạn cần phải kết hợp trí thông minh với tinh thần kiên định của mình.</p>\n\n<p style="text-align: center;"><img alt="team-building-con-dao-1" src="http://datviettour.com.vn/wp-content/uploads/2014/08/team-building-con-dao-1.jpg" /></p>\n\n<p>Trải nghiệm cùng chương trình team building “Hành trình vượt ngục” không chỉ giúp bạn hiểu thêm về phẩm chất và nhân cách của thế hệ cha anh mà còn giúp rèn luyện những kỹ năng cần thiết trong công việc và cuộc sống.</p>\n\n<p>Thời gian:Từ 5 – 7 tiếng<br />\nSố lượng: Từ 20 – 200 người<br />\nĐịa điểm: Bãi biển Côn Đảo</p>\n\n<h2><span style="font-size:20px;">Mục đích chương trình</span></h2>\n\n<ul>\n	<li>Rèn luyện sức khỏe</li>\n	<li>Rèn kỹ năng lên kế hoạch và giải quyết tình huống bất ngờ</li>\n	<li>Rèn luyện tính kiên nhẫn, kiên định</li>\n	<li>Nâng cao tinh thần đoàn kết</li>\n	<li>Phát huy khả năng lãnh đạo</li>\n</ul>\n\n<p style="text-align: center;"><img alt="du-lich-ket-hop-teambuilding" src="http://datviettour.com.vn/wp-content/uploads/2014/08/du-lich-ket-hop-teambuilding.jpg" /></p>\n\n<h2><span style="font-size:20px;">Tại sao nên chọn đơn vị tổ chức du lịch giá rẻ team building Đất Việt Tour ?</span></h2>\n\n<p>Công ty Cổ phần Du lịch Đất Việt (Đất Việt Tour) là một trong các đơn vị tổ chức team building chuyên nghiệp nhất hiện nay. Chúng tôi hân hạnh đã từng tổ chức chương trình team building cho nhiều công ty, tập đoàn lớn như: Tập Đoàn Asti, Bepharco, Đại Dũng Comporation, PNJ, MB Bank, Liên Á,Vinasoy, Thế Giới Di Động,…thành công tốt đẹp và nhận được sự đánh giá cao từ quý khách hàng.</p>\n\n<p>Hãy liên hệ ngay với Đất Việt Tour để có một chuyến du lịch kết hợp team building thật vui và ý nghĩa nhất !</p>', NULL, NULL, NULL, NULL, NULL, 71),
(285, '<h2><span style="font-size:20px;">NGÀY 1: TP.HỒ CHÍ MINH – PHAN THIẾT – NINH CHỮ</span></h2>\n\n<ul>\n	<li>Xe và hướng dẫn viên của du lịch Đất Việt đón quý khách tại điểm hẹn khởi hành đi Phan Thiết.</li>\n	<li>Đến thành phố Biên Hòa, quý khách dừng chân dùng điểm tâm sáng.</li>\n	<li>Tiếp tục chương trình, xe đưa quý khách dọc theo quốc lộ 1A, hướng dẫn viên sẽ thuyết minh về các địa danh mà đoàn đi qua. Quý khách cùng tìm hiểu đôi nét về văn hóa và phong tục ngày Tết của từng vùng miền, địa phương trên đất nước Việt Nam.du lich Ninh Chu</li>\n	<li>Đến với Bình Thuận, quý khách dừng chân dùng bữa trưa.</li>\n	<li>Tiếp chương trình xe đưa quý khách đến với tỉnh Ninh Thuận, đoàn nhận phòng và nghỉ ngơi tại Ninh Chữ. Xe đưa quý khách đến nhà hàng dùng cơm tối và nghỉ ngơi.</li>\n</ul>\n\n<h2><span style="font-size:20px;">NGÀY 2: VỊNH VĨNH HY – NHỊ BÌNH</span></h2>\n\n<ul>\n	<li>Quý khách dùng điểm tâm sáng tại resort. Xe đưa quý khách tham quan vịnh Vĩnh Hy.Du lịch Ninh Chữ\n	<ul>\n		<li>Ngắm san hô: Đoàn cùng xuống thuyền ra khơi ngắm nhìn khung cảnh vịnh biển.&nbsp;Quý khách lặn ngắm san hô thông qua lớp tàu đáy kính. Đoàn có cơ hội nhìn thấy rất nhiều loài cá và sinh vật biển lạ mắt đang sinh sống dưới đáy đại dương mênh mông.</li>\n		<li>Tiếp tục hành trình tàu đưa du khách tham quan tuyến Nhị Bình (Bình Lập + Bình Tiên), tắm biển tại các bãi biển hoang sơ như: Rô Bin Xơn … du lich tet Ninh Chu</li>\n	</ul>\n	</li>\n	<li>Đoàn dùng bữa trưa trên bè với thực đơn hải sản. Sau đó xe đưa Quý khách về lại resort nghỉ ngơi.\n	<ul>\n		<li>Buổi chiều, xe đưa đoàn vào tham quan tháp Chàm Po Klong Garai: Một trong những ngôi tháp Chàm được xây dựng rất lâu đời. Quý khách có dịp nghe thuyết minh về văn hóa, phong tục, lễ hội của người dân địa phương và cùng tham gia múa hát với người Chăm.</li>\n		<li>Đoàn ghé tham quan vườn nho Ba Mọi – nơi quý khách có thể trực tiếp tìm hiểu về nghề trồng nho, chụp ảnh với những vườn nho sai trĩu quả và thưởng thức những chùm nho chín ngay tại vườn.</li>\n	</ul>\n	</li>\n	<li>Quý khách về lại nhà hàng dùng bữa tối. Sau bữa tối, đoàn nghỉ ngơi tự do.</li>\n</ul>\n\n<h2><span style="font-size:20px;">NGÀY 3: NINH THUẬN – TP.HỒ CHÍ MINH</span></h2>\n\n<ul>\n	<li>Đoàn dùng điểm tâm sáng, làm thủ tục trả phòng. Xe đưa đoàn tham quan những làng nghề lâu năm của tỉnh Ninh Thuận.\n	<ul>\n		<li>Làng gốm Bàu Trúc – làng nghề làm gốm theo phương pháp thủ công. Tại đây, quý khách sẽ được chiêm ngưỡng những sản phẩm gốm tinh xảo và mua những sản phẩm yêu thích về làm quà tặng bạn bè, người thân.</li>\n		<li>Tiếp đó quý khách ghé thăm làng dệt Mỹ Nghiệp, cùng là một phương pháp thủ công các nghệ nhân nơi đây đã dệt nên những thước vải rất đẹp với nhiều màu sắc khác nhau, cùng tìm hiểu về cuộc đời và gian nhà nhỏ của ca sỹ Chế Linh.</li>\n	</ul>\n	</li>\n	<li>Quý khách dùng bữa trưa tại nhà hàng.</li>\n	<li>Đoàn khởi hành về lại TP. Hồ Chí Minh. Trên đường về, đoàn dừng chân mua sắm đặc sản địa phương về làm quà tặng người thân.</li>\n	<li>Về đến TP.Hồ Chí Minh, hướng dẫn viên cty du lịch Đất Việt Tour chia tay quý khách, hẹn gặp lại trong những chương trình tham quan sau.</li>\n</ul>', '<p>Bạn muốn có một chuyến du lịch Tết Ninh Chữ – vịnh Vĩnh Hy thật tiết kiệm? Hãy&nbsp;đăng ký&nbsp;ngay tour Tết tại Đất Việt Tour để thỏa sức khám phá và trải nghiệm những điều tuyệt vời nhất tại biển Ninh Chữ hoang sơ và vịnh Vĩnh Hy tuyệt đẹp chỉ từ 2.450.000 vnđ.</p>', '<table border="1" cellpadding="5" cellspacing="0" class="table" id="tabledungpost" style="width: 100%;">\n	<tbody>\n		<tr>\n			<td style="background-color: rgb(102, 102, 102);"><strong><span style="color:#FFFFFF;">Lượng khách</span></strong></td>\n			<td style="background-color: rgb(102, 102, 102);"><strong><span style="color:#FFFFFF;">Khách sạn 2 sao</span></strong></td>\n			<td style="background-color: rgb(102, 102, 102);"><strong><span style="color:#FFFFFF;">Khách sạn 3 sao</span></strong></td>\n			<td style="background-color: rgb(102, 102, 102);"><strong><span style="color:#FFFFFF;">Khách sạn 4 sao</span></strong></td>\n			<td style="background-color: rgb(102, 102, 102);"><strong><span style="color:#FFFFFF;">Ngày khởi hành</span></strong></td>\n		</tr>\n		<tr>\n			<td>Khách Lẻ – Ghép Đoàn (02 – 08 khách)</td>\n			<td>&nbsp;</td>\n			<td>3.450.000</td>\n			<td>&nbsp;</td>\n			<td>09,11/02/2016 (M2,4 Tết)</td>\n		</tr>\n		<tr>\n			<td>Khách Đoàn – Tour Riêng (trên 40 khách)</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>Mọi ngày theo yêu cầu</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>Lưu ý:</p>\n\n<ul>\n	<li>Giá tour trẻ em từ 05 – 11 tuổi: 1.725.000&nbsp;vnđ/khách.</li>\n	<li>Phụ thu phòng đơn: 850.000 vnđ/khách.</li>\n</ul>', '<h3><span style="font-size:20px;">GIÁ TOUR DU LỊCH TẾT MIỀN TÂY BAO GỒM</span></h3>\n\n<ul>\n	<li>Phương tiện: Xe &nbsp;đời mới máy lạnh. Đón khách tận nhà trong nội thành.</li>\n	<li>Khách sạn: &nbsp;3 sao\n	<ul>\n		<li>Ăn uống:&nbsp;4 bữa ăn sáng + 7 bữa ăn chính</li>\n		<li>Ăn sáng gồm: Hủ tiếu, bún bò, phở, bánh mì ốp la, bánh canh + Giải khác: Cà phê đá, đá chanh, nước ngọt chai…</li>\n		<li>Ăn trưa gồm 05 món: 02 món mặn + 01 món xào + 01 món canh + 01 rau trộn + trái cây + cơm trắng + trà đá + Đặc biệt có bữa ăn đặc sản địa phương</li>\n		<li>Quý khách ăn tự túc trừ lại 500.000 vnđ.</li>\n	</ul>\n	</li>\n	<li>Hướng dẫn viên: Đoàn có hướng dẫn viên thuyết minh và phục vụ đoàn tham quan suốt tuyến.</li>\n	<li>Bảo hiểm: Bảo hiểm du lịch theo quy định của bảo hiểm Bảo Minh 10.000.000 vnđ/vụ</li>\n	<li>Tham quan: Giá tour đã bao gồm phí vào cổng tại các điểm tham quan theo chương trình.</li>\n	<li>Thuyền máy + đò chèo đi vào vườn trái cây + Ca nô đi Đất Mũi Cà Mau.</li>\n	<li>Qùa tặng:\n	<ul>\n		<li>Nón du lịch Đất Việt</li>\n		<li>Khăn ướt + nước đóng chai</li>\n		<li>Gối hơi + bao lì xì may mắn</li>\n	</ul>\n	</li>\n</ul>\n\n<h3><span style="font-size:20px;">GIÁ TOUR DU LICH TET MIEN TAY KHÔNG BAO GỒM</span></h3>\n\n<ul>\n	<li>Ăn uống ngoài chương trình, giặt ủi, điện thoại và chi phí cá nhân….</li>\n	<li>VAT (Hóa đơn giá trị gia tăng).</li>\n</ul>\n\n<h3><span style="font-size:20px;">GIÁ TOUR TRẺ EM</span></h3>\n\n<ul>\n	<li>Trẻ em từ 11 tuổi trở lên phải mua 1 vé.</li>\n	<li>Trẻ em từ 5 tuổi đến dưới 11 tuổi mua ½ vé tiêu chuẩn như người lớn nhưng ngủ ghép cha mẹ,trẻ em thứ 2 phải mua 01 vé.</li>\n	<li>Trẻ em dưới 5 tuổi cha mẹ tự lo,trẻ em thứ 2 phải mua ½ vé.</li>\n	<li>Khi đi quý khách nhớ mang theo CMND, trẻ em mang khai sinh.</li>\n</ul>', NULL, NULL, 19),
(284, '<p><span style="font-size:20px;">TỐI NGÀY 1: TP.HỒ CHÍ MINH – ĐẢO BÌNH BA</span></p>\n\n<ul>\n	<li>Xe và hướng dẫn viên công ty du lịch Đất Việt đón quý khách tại điểm hẹn khởi hành đi Cam Ranh.</li>\n	<li>Quý khách nghỉ ngơi tự do trên xe.</li>\n</ul>\n\n<p><span style="font-size:20px;">NGÀY 2: ĐẢO BÌNH BA – TẮM BIỂN</span></p>\n\n<ul>\n	<li>Sáng: Đoàn dùng điểm tâm sáng. Xe đưa Quý khách vào trung tâm Tp Cam Ranh, đến với cảng Ba Ngòi làm thủ tục lên tàu đi du lịch Bình Ba.</li>\n	<li>Tàu đến bãi Nhà Cũ hoặc bãi Bồ Đề, Quý khách tắm biển tự do với làn nước mát lạnh và trong xanh.</li>\n	<li>Trưa: Quý khách dùng bữa trưa tại nhà hàng bè nổi. Tàu đưa Quý khách về lại cảng Bình Ba, Quý khách về khách sạn nhận phòng và nghỉ ngơi.</li>\n	<li>Chiều: Quý khách tham quan Bình Ba bằng xe máy.</li>\n	<li>Chụp ảnh Hòn Rùa, viếng chùa Địa Tạng, Lăng Ông Nam Hải, Đình Thần du lịch tết Bình Ba.</li>\n	<li>Quý khách đến nhà hàng dùng bữa tối hải sản và tự do khám phá đảo.</li>\n</ul>\n\n<p><span style="font-size:20px;">NGÀY 3: ĐẢO BÌNH BA – TP. HỒ CHÍ MINH</span></p>\n\n<ul>\n	<li>Sáng: Quý khách dùng điểm tâm sáng, sau đó khởi hành tham quan:</li>\n	<li>Bãi Nồm: Quý khách tự do tắm biển với làng nước xanh biếc, thưởng thức hải sản tươi sống đặc biệt Tôm hùm tour tết Bình Ba.</li>\n	<li>Về lại khách sạn làm thủ tục trả phòng về lại đất liền. Tham quan Cam Ranh.tour tet Binh Ba</li>\n	<li>Chùa Ốc với kiến trúc độc đáo và kỹ thuật điêu khắc tinh xảo, chùa thu hút rất nhiều du khách đến viếng và tham quan.</li>\n	<li>Đoàn tiếp tục khởi hành về lại TP HCM, trên đường về Quý khách dừng chân mua sắm đặc sản địa phương làm quà tặng cho người thân.</li>\n	<li>Quý khách dừng chân dùng bữa trưa tại Cà Ná.</li>\n	<li>Về đến TP HCM, Hướng dẫn viên du lịch Đất Việt chia tay và hẹn gặp lại quý khách.</li>\n</ul>', '<p>Một chuyến du lịch đảo Bình Ba hoang sơ sẽ vô cùng ý nghĩa và thú vị để đón mừng năm mới 2016. Đặt ngay&nbsp;Tour du lịch Tết 2016 đảo Bình Ba 2 ngày 2 đêm ngay hôm nay để có mức giá ưu đãi nhất!</p>', '<table border="1" cellpadding="5" cellspacing="0" class="table" id="tabledungpost" style="width: 100%;">\n	<tbody>\n		<tr>\n			<td style="background-color: rgb(102, 102, 102);"><strong><span style="color:#FFFFFF;">Lượng khách</span></strong></td>\n			<td style="background-color: rgb(102, 102, 102);"><strong><span style="color:#FFFFFF;">Khách sạn 2 sao</span></strong></td>\n			<td style="background-color: rgb(102, 102, 102);"><strong><span style="color:#FFFFFF;">Khách sạn 3 sao</span></strong></td>\n			<td style="background-color: rgb(102, 102, 102);"><strong><span style="color:#FFFFFF;">Khách sạn 4 sao</span></strong></td>\n			<td style="background-color: rgb(102, 102, 102);"><strong><span style="color:#FFFFFF;">Ngày khởi hành</span></strong></td>\n		</tr>\n		<tr>\n			<td>Khách Lẻ – Ghép Đoàn (02 – 08 khách)</td>\n			<td>&nbsp;</td>\n			<td>3.450.000</td>\n			<td>&nbsp;</td>\n			<td>09,11/02/2016 (M2,4 Tết)</td>\n		</tr>\n		<tr>\n			<td>Khách Đoàn – Tour Riêng (trên 40 khách)</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>Mọi ngày theo yêu cầu</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>Lưu ý:</p>\n\n<ul>\n	<li>Giá tour trẻ em từ 05 – 11 tuổi: 1.725.000&nbsp;vnđ/khách.</li>\n	<li>Phụ thu phòng đơn: 850.000 vnđ/khách.</li>\n</ul>', '<p><span style="font-size:20px;">GIÁ TOUR BAO GỒM</span></p>\n\n<ul>\n	<li>Phương tiện: Xe du lịch 16,29,35,45 chỗ đời mới máy lạnh, tivi, ghế bật, phục vụ đưa đón đoàn suốt tuyến tham quan.</li>\n	<li>Khách sạn:</li>\n	<li>Nhà nghỉ/Homestay: Biển Xanh, Bảy Hộ…Hoặc nhà nghỉ tương đương.</li>\n	<li>Tiêu chuẩn 3,4&nbsp;khách /phòng.&nbsp;Tiện nghi: máy lạnh, tivi, nước nóng,…</li>\n	<li>Ăn uống:\n	<ul>\n		<li>Ăn sáng: Bún bò, hủ tiếu, bánh canh, bánh mì ốp la,… Nước uống: café, các loại nước giải khát.</li>\n		<li>Ăn trưa, chiều: Tại nhà hàng địa phương tiêu chuẩn, hợp vệ sinh.</li>\n	</ul>\n	</li>\n	<li>Hướng dẫn viên: Đoàn có hướng dẫn viên tiếng Việt thuyết minh và phục vụ đoàn tham quan suốt tuyến.</li>\n	<li>Bảo hiểm: Bảo hiểm du lịch theo quy định của bảo hiểm Bảo Minh 20.000.000 vnđ/vụ</li>\n	<li>Tham quan: Giá tour đã bao gồm phí vào cổng tại các điểm tham quan theo chương trình.</li>\n	<li>Qùa tặng:\n	<ul>\n		<li>Nón du lịch Đất Việt</li>\n		<li>Khăn ướt + nước đóng chai</li>\n		<li>Gối hơi + bao lì xì may mắn</li>\n	</ul>\n	</li>\n</ul>\n\n<p><span style="font-size:20px;">GIÁ TOUR DU LỊCH TẾT BÌNH BA KHÔNG BAO GỒM</span></p>\n\n<ul>\n	<li>Tiền típ cho hướng dẫn viên và tài xế địa phương.</li>\n	<li>Chi phí cá nhân ngoài chương trình: giặt ủi, điện thoại, minibar…</li>\n</ul>', NULL, NULL, 18),
(283, '<h2><span style="font-size:20px;">NGÀY 01: SÀI GÒN – MỸ THO – CẦN THƠ</span></h2>\n\n<ul>\n	<li>Xe và hướng dẫn viên đón du khách tại điểm hẹn, khởi hành đi tour tết Mỹ Tho.<img alt=" ninh kieu can tho" src="http://www.iappscode.com/site/dulichhoaviet/public/images/1452928240.jpg" style="width: 390px; height: 247px;" /></li>\n	<li>Đoàn dùng điểm tâm tại Trung Lương, ghé tham quan Chùa Vĩnh Tràng.</li>\n	<li>Đến bến đò 30/4, du thuyền đưa quý khách đi Tân Thạch (Bến Tre). Đò nhỏ đưa du khách vào tham quan Vườn trái cây, Trại mật ong. Qúy khách thưởng thức mật ong và trái cây tại vườn.</li>\n	<li>Đoàn dùng cơm trưa, và nghe đờn ca tài tử. Sau đó tham quan Lò kẹo dừa, kẹo chuối, Qúy khách có thể mua làn quà lưu niệm.</li>\n	<li>Thuyền đưa du khách trở lại bến tàu 30/4. Đoàn khởi hành đi tour tết Cần Thơ.&nbsp;Đến tour tet Can Tho nhận phòng, dùng cơm chiều.</li>\n	<li>Buổi tối, xe đưa du khách đến bến Ninh Kiều. Du thuyền đưa khách dạo dòng sông Hậu, Qúy khách thưởng thức đờn ca tài tử và dùng cơm tối trên tàu.</li>\n</ul>\n\n<h2><span style="font-size:20px;">NGÀY 02: TOUR TẾT CẦN THƠ – SÓC TRĂNG – CÀ MAU</span></h2>\n\n<ul>\n	<li>Xe đưa du khách đến bến Ninh Kiều.</li>\n	<li>Sau đó, thuyền đưa du khách tham quan Chợ nổi Cái Răng, tìm hiểu đời sống và cảnh mua bán trên sông của người dân miền sông nước.</li>\n	<li>Đoàn dùng điểm tâm.</li>\n	<li>Xe đưa du khách đi tour tết Sóc Trăng, qúy khách ghé tham quan Chùa Dơi, Chùa Đất Sét, Bảo tàng dân tộc Khmer, Chùa Kơ”Leng.</li>\n	<li>Đoàn trờ về nhà hàng dùng cơm trưa.&nbsp;Buổi chiều, Đoàn khởi hành lộ trình đi tham quan tour tết Cà Mau, đoàn viếng nhà thờ cha Diệp ở Hộ Phòng.</li>\n	<li>Đến Cà Mau, nhận phòng khách sạn, nghỉ ngơi. Dùng cơm chiều.</li>\n	<li>Du khách sinh hoạt tự do và nghỉ đêm tại khu du lịch Cà Mau.</li>\n</ul>\n\n<h2><span style="font-size:20px;">NGÀY 03: CÀ MAU&nbsp;– ĐẤT MŨI – BẠC LIÊU</span></h2>\n\n<ul>\n	<li>Đoàn dùng điểm tâm. Xe đưa du khách đến bến tàu: Lên ca nô tham quan Khu Căn Cứ Rừng Đước, quý khách nghe kể chuyện Bác Ba Phi.</li>\n	<li>Đoàn tiếp tục đến vùng đất mũi (Vùng cực nam tổ quốc) chụp hình lưu niệm, dùng cơm trưa. du lich tet Ca Mau</li>\n	<li>Buổi chiều, đoàn rời Cà Mau đi Bạc Liêu.</li>\n	<li>Tới Bạc Liêu, đoàn tham quan nhà Công tử Bạc Liêu; Khu lưu niệm cố nhạc sĩ Cao Văn Lầu – Tác giả bài Dạ Cổ Hoài Lang, người có công lớn trong nền dân ca tài tử cải lương Nam Bộ; Đoàn viếng Phật Bà Nam Hải, Chùa Xiêm Cán.</li>\n	<li>Đoàn về khách sạn nhận phòng nghỉ đêm.&nbsp;Xe đưa quý khách đến nhà hàng dùng cơm chiều.</li>\n	<li>Du khách tự do đi dạo thanh phố du lich Bạc Liêu về đêm.</li>\n</ul>\n\n<h2><span style="font-size:20px;">NGÀY 04: BẠC LIÊU – MỸ KHÁNH – SÀI GÒN</span></h2>\n\n<ul>\n	<li>Qúy khách dùng điểm tâm sáng.</li>\n	<li>Đoàn khởi hành về Cần Thơ, ghé tham quan Vườn trái cây Mỹ Khánh, du khách tham quan vườn mận, xoài, chôm chôm, mít, sầu riêng… Tìm hiểu cách làm bánh tráng, nấu rượu đế. Qúy khách thưởng thức những món ngon rất miền Tây như: Cá lóc nướng trui, nướng ống tre, chuột quay lu, lẩu đồng quê khu du lịch Bạc Liêu(Chi phí tự túc)</li>\n	<li>Đoàn dùng cơm trưa.</li>\n	<li>Sau đó đoàn tạm biệt du lich Bạc Liêu khởi hành về Tp. Hồ Chí Minh.</li>\n	<li>Về đến Tp. Hồ Chí Minh, xe tiễn khách trên đường về, nơi nào thuận tiện nhất. Hướng dẫn viên Công ty Du lịch Đất Việt chào tạm biệt và hẹn gặp lại Qúy khách vào một tour du lịch tết khác.</li>\n</ul>', '<p>Du lịch miền Tây&nbsp;4 ngày 3 đêm, sẽ đưa bạn đi qua các địa danh nổi tiếng như Tiền Giang, du lịch tết Cần Thơ,du lịch tết Cà Mau,du lịch tết Sóc Trăng… khám phá miệt vườn sông nước với các di tích lịch sử văn hóa, các thắng cảnh tự nhiên. Bạn sẽ đắm chìm trong cảnh đẹp, vườn cây trái xum xuê và những món ngon đặc sản miền Tây Nam Bộ.</p>', '<table border="1" cellpadding="5" cellspacing="0" class="table" id="tabledungpost" style="width: 100%;">\n	<tbody>\n		<tr>\n			<td style="background-color: rgb(102, 102, 102);"><strong><span style="color:#FFFFFF;">Lượng khách</span></strong></td>\n			<td style="background-color: rgb(102, 102, 102);"><strong><span style="color:#FFFFFF;">Khách sạn 2 sao</span></strong></td>\n			<td style="background-color: rgb(102, 102, 102);"><strong><span style="color:#FFFFFF;">Khách sạn 3 sao</span></strong></td>\n			<td style="background-color: rgb(102, 102, 102);"><strong><span style="color:#FFFFFF;">Khách sạn 4 sao</span></strong></td>\n			<td style="background-color: rgb(102, 102, 102);"><strong><span style="color:#FFFFFF;">Ngày khởi hành</span></strong></td>\n		</tr>\n		<tr>\n			<td>Khách Lẻ – Ghép Đoàn (02 – 08 khách)</td>\n			<td>&nbsp;</td>\n			<td>3.450.000</td>\n			<td>&nbsp;</td>\n			<td>09,11/02/2016 (M2,4 Tết)</td>\n		</tr>\n		<tr>\n			<td>Khách Đoàn – Tour Riêng (trên 40 khách)</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>Mọi ngày theo yêu cầu</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>Lưu ý:</p>\n\n<ul>\n	<li>Giá tour trẻ em từ 05 – 11 tuổi: 1.725.000&nbsp;vnđ/khách.</li>\n	<li>Phụ thu phòng đơn: 850.000 vnđ/khách.</li>\n</ul>', '<h3><span style="font-size:20px;">GIÁ TOUR DU LỊCH TẾT MIỀN TÂY BAO GỒM</span></h3>\n\n<ul>\n	<li>Phương tiện: Xe &nbsp;đời mới máy lạnh. Đón khách tận nhà trong nội thành.</li>\n	<li>Khách sạn: &nbsp;3 sao\n	<ul>\n		<li>Ăn uống:&nbsp;4 bữa ăn sáng + 7 bữa ăn chính</li>\n		<li>Ăn sáng gồm: Hủ tiếu, bún bò, phở, bánh mì ốp la, bánh canh + Giải khác: Cà phê đá, đá chanh, nước ngọt chai…</li>\n		<li>Ăn trưa gồm 05 món: 02 món mặn + 01 món xào + 01 món canh + 01 rau trộn + trái cây + cơm trắng + trà đá + Đặc biệt có bữa ăn đặc sản địa phương</li>\n		<li>Quý khách ăn tự túc trừ lại 500.000 vnđ.</li>\n	</ul>\n	</li>\n	<li>Hướng dẫn viên: Đoàn có hướng dẫn viên thuyết minh và phục vụ đoàn tham quan suốt tuyến.</li>\n	<li>Bảo hiểm: Bảo hiểm du lịch theo quy định của bảo hiểm Bảo Minh 10.000.000 vnđ/vụ</li>\n	<li>Tham quan: Giá tour đã bao gồm phí vào cổng tại các điểm tham quan theo chương trình.</li>\n	<li>Thuyền máy + đò chèo đi vào vườn trái cây + Ca nô đi Đất Mũi Cà Mau.</li>\n	<li>Qùa tặng:\n	<ul>\n		<li>Nón du lịch Đất Việt</li>\n		<li>Khăn ướt + nước đóng chai</li>\n		<li>Gối hơi + bao lì xì may mắn</li>\n	</ul>\n	</li>\n</ul>\n\n<h3><span style="font-size:20px;">GIÁ TOUR DU LICH TET MIEN TAY KHÔNG BAO GỒM</span></h3>\n\n<ul>\n	<li>Ăn uống ngoài chương trình, giặt ủi, điện thoại và chi phí cá nhân….</li>\n	<li>VAT (Hóa đơn giá trị gia tăng).</li>\n</ul>\n\n<h3><span style="font-size:20px;">GIÁ TOUR TRẺ EM</span></h3>\n\n<ul>\n	<li>Trẻ em từ 11 tuổi trở lên phải mua 1 vé.</li>\n	<li>Trẻ em từ 5 tuổi đến dưới 11 tuổi mua ½ vé tiêu chuẩn như người lớn nhưng ngủ ghép cha mẹ,trẻ em thứ 2 phải mua 01 vé.</li>\n	<li>Trẻ em dưới 5 tuổi cha mẹ tự lo,trẻ em thứ 2 phải mua ½ vé.</li>\n	<li>Khi đi quý khách nhớ mang theo CMND, trẻ em mang khai sinh.</li>\n</ul>', NULL, NULL, 20),
(282, '<p>Sài Gòn những ngày vào Xuân bỗng vui tươi, rộn rã ở từng con phố, cái nắng dịu nhẹ lướt êm ái qua từng cánh hoa cúc vàng giòn tan, ai ai cũng hân hoan sắm sửa quần áo, hoa kiểng chào đón Xuân thì ở&nbsp;vùng đất Tây Nguyên xa xôi không khí Xuân cùng vô cùng rộn rã.</p>\n\n<p>Du lịch Tết&nbsp;ở vùng đất Tây Nguyên đại ngàn đầy nắng đầy gió và hòa vào niềm hoan ca của người dân địa phương đón Tết, du khách&nbsp;sẽ có được những phút giây thật sự thư giãn và tránh xa&nbsp;cuộc sống xô bồ nơi đô&nbsp;thị.</p>\n\n<h2><span style="font-size:20px;">DU LỊCH TẾT TÂY NGUYÊN KHÁM PHÁ ĐẠI NGÀN HOANG SƠ, KỲ VỸ</span></h2>\n\n<p>Cảnh quan sinh động hiện ra trước mắt du khách với buôn làng, cánh rừng, ngọc thác, khe suối,… không chì còn đến với ta qua “Sử thi Đam San” hào hùng hay những câu chuyện kể về Tây Nguyên bí ẩn. Khi lần đầu tiên đặt chân đến Tây Nguyên, chắc hẳn bạn sẽ bị choáng ngợp bởi vẻ đẹp bạt ngàn của những cánh rừng xanh trải dài, xen kẽ là núi đồi trùng điệp cao tít trùng mây.</p>\n\n<p style="text-align: center;"><img alt="du-lich-tet-tay-nguyen-2" src="http://datviettour.com.vn/wp-content/uploads/2016/01/du-lich-tet-tay-nguyen-2.jpg" /></p>\n\n<p>Không chỉ thế, thác nước trắng xóa ngày đêm miệt mài ầm ĩ, rộn vang cả một góc trời, vừa mạnh mẽ vừa quyến rũ. Nằm sâu trong những cánh rừng là ngôi làng người Mông với ngôi nhà sàn đơn sơ lãng lẽ nép mình bên chân núi. Con người sống hòa hợp với thiên nhiên.</p>\n\n<p>Ngày ngày, họ lên rừng hái trái, trồng rẫy làm nương. Khi màn đêm dần bỏ ngỏ giăng đầy, họ quay quần bên bếp lò, kể cho nhau nghe về huyền thoại Tây Nguyên. Với vẻ đẹp hoang dại đến yên bình hòa vào không khí trong lành tạo cảm giác thư thái cho du khách khi đến mảnh đất Tây Nguyên, xua tan đi bao nỗi mệt mỏi lo âu của cuộc sống đời thường.</p>\n\n<p style="text-align: center;"><img alt="du-lich-tet-tay-nguyen" src="http://datviettour.com.vn/wp-content/uploads/2016/01/du-lich-tet-tay-nguyen.jpg" /></p>\n\n<p>Du lịch&nbsp;Tây Nguyên&nbsp;khi mùa Xuân về, bạn sẽ đắm chìm trong màu hoa trắng tinh khôi, hưởng một mùa xuân ngát hương đắm say với cánh rừng cà phê hun hút nở hoa phủ kín các sườn đồi. Chỉ mới ngày thu đồng đây thôi, cánh rừng còn nhuộm màu xanh rì đầm thắm, thế mà khi nàng Xuân vừa chạm cửa, một rừng hoa ban, hoa cà phê đã nở rộ trên cành, chấp chới những cánh bướm bầy ong ríu rít gọi nhau tìm mật.</p>\n\n<p>Hiền hòa nằm bên thị trấn Liên Sơn, hồ Lắk- thắng cảnh nổi tiếng bật nhất ở Tây Nguyên hiện lên xanh thẳm, bao bọc bởi những dãy núi. Hồ nước huyền thoại Tây Nguyên gắn liền với tên tuổi người anh hùng Lắk Liêng, về cuộc chiến xa xưa của thần Nước và thần Lửa theo truyền thuyết người M’ nông.</p>\n\n<p style="text-align: center;"><img alt="du-lich-tet-tay-nguyen-3" src="http://datviettour.com.vn/wp-content/uploads/2016/01/du-lich-tet-tay-nguyen-3.jpg" /></p>\n\n<p>Một cái tên mà bạn không thể bỏ qua khi đến đây, đó là chiếc cầu treo hùng vĩ nhất Tây Nguyên – Kon Klor đã trở thành niềm tự hào của người dân Kon Tum. Được hoàn thành vào 1994, chiếc cầu đã nối liền hai bờ Đăk Bla- dòng sông gắn với nhiều huyền thoại của đồng bào dân tộc Ba Na. Từ trên cầu, bạn có thể quan sát toàn cảnh dòng sông Đăk Bla mênh mông với dãy núi xa khuất chân trời và ruộng vườn trù phú hai bên bờ. Ở gần đầu cầu phía Tây còn có nhà rông Kon Klor của người Ba Na, được xem là ngôi nhà rông to và đẹp nhất Tây Nguyên.</p>\n\n<p>Đi giữa con đường rợp đầy màu trắng tươi mát, tận hưởng danh lam thắng cảnh của đại ngàn, hứa hẹn sẽ mang đến cho bạn cảm giác thú vị khó quên. Hãy cho bản thân cơ hội được dạo chơi quanh buôn làng, ngắm nhìn nhà sàn truyền thống, cưỡi voi xuyên rừng, chèo thuyền độc mộc chông chênh giữa dòng chảy dịu dàng,…để thấm đẫm cái tình của con người chân chất, mộc mạc nơi đây.</p>\n\n<p style="text-align: center;"><img alt="du-lich-tet-tay-nguyen-4" src="http://datviettour.com.vn/wp-content/uploads/2016/01/du-lich-tet-tay-nguyen-4.jpg" /></p>\n\n<h2><span style="font-size:20px;">THƯỞNG THỨC ĐẶC SẢN CAFÉ BAN MÊ</span></h2>\n\n<p>Sau cuộc hành trình du lịch khám phá vùng đất hoang sơ, bạn có thể nhâm nhi ly cà phê thơm ngon hấp dẫn mê ly. Từng hạt cà phê sẽ được rang xay và pha chế chỉ sau khi bạn đến, giữ được hương vị đậm đà quyến rũ khác hẳn với cà phê pha sẵn mà bạn thường uống vội nơi đô thành. Ly cà phê có màu nâu cánh gián hay màu hổ phách, khi vừa nếm thử lần đầu, vị đắng ngọt nhẹ lan tỏa làm say lòng bao du khách phương xa.</p>\n\n<p style="text-align: center;"><img alt="du-lich-tet-tay-nguyen-1" src="http://datviettour.com.vn/wp-content/uploads/2016/01/du-lich-tet-tay-nguyen-1.jpg" /></p>\n\n<p>Thích thú làm sao khi sớm mai thức giấc, sương sớm hãy còn vương vấn trên lá non, thưởng thức ly cà phê đậm chất Tây Nguyên, nghe tiếng chim hót líu lo và thu vào tầm mắt vẻ đẹp bất tận của núi rừng. Thật tuyệt vời!</p>\n\n<p>Đến với Tây Nguyên hoang sơ, ta bắt gặp đâu đó hình ảnh những đứa bé gái với đôi mắt thật trong như hồ nước, lạ lẫm khắc khoải nhìn vị khách từ phương xa. Và hình ảnh ấm lòng của người mẹ địu con sau ngày dài hăng say lao động “Về nhà thôi mạ ơi !”.</p>\n\n<p style="text-align: center;"><img alt="du-lich-tet-tay-nguyen-5" src="http://datviettour.com.vn/wp-content/uploads/2016/01/du-lich-tet-tay-nguyen-5.jpg" /></p>\n\n<p>Để những bản tình ca về người dân tộc miền cao không chỉ xuất hiện trên trang sách, để những truyền thuyết xa xưa về con người “đội trời xé biển” không chỉ nằm yên trên con chữ vô hồn, hãy cùng thưởng ngoạn tour&nbsp;du lịch Tết tại&nbsp;Tây Nguyên để ôm trọn vẹn vùng đất oai hùng, huyền bí này vào tâm trí, như một kỉ niệm khó phai.</p>', NULL, NULL, NULL, NULL, NULL, 69);
INSERT INTO `web_content` (`id`, `content`, `more1`, `more2`, `more3`, `more4`, `more5`, `header_id`) VALUES
(280, '<p>Một chuyến du lịch Tết miền Tây sẽ đem lại những trải nghiệm thú vị cho du khách khi được thưởng thức những loại trái cây nổi tiếng ngon ngọt, thanh mát của vùng đất trù phú này.</p>\n\n<p>Cùng Đất Việt Tour du xuân&nbsp;miền Tây trong dịp Tết Nguyên đán năm nay để có cơ hội thưởng thức những loại trái cây đặc sản sau đây nhé:</p>\n\n<h2><span style="font-size:20px;">1. XOÀI CÁT HOÀ LỘC,&nbsp;TIỀN GIANG</span></h2>\n\n<p>Giống xoài này được trồng đầu tiên tại vùng Hòa Lộc, tỉnh Định Tường, nay là tỉnh Tiền Giang. Xoài cát Hòa Lộc quả lớn từ 300 – 450g, vỏ mịn, thịt vàng ươm, ít xơ và rất thơm. Đã du lịch Tết miền Tây thì đừng bỏ qua đặc sản xoài cát Hòa Lộc ngon mắt, vị ngọt thanh hấp dẫn nhé bạn!</p>\n\n<p style="text-align: center;"><img alt="7-dac-san-nen-thu-khi-du-lich-tet-mien-tay-2" src="http://datviettour.com.vn/wp-content/uploads/2016/01/7-dac-san-nen-thu-khi-du-lich-tet-mien-tay-2.jpg" /></p>\n\n<h2><span style="font-size:20px;">2. SẦU RIÊNG CÁI MƠN,&nbsp;BẾN TRE</span></h2>\n\n<p>Nhắc đến địa danh Cái Mơn, người ta nghĩ ngay đến loại sầu riêng cơm vàng, hạt lép có hương thơm ngào ngạt – sầu riêng Cái Mơn. Hiện nay, tại Việt Nam có gần 60 giống sầu riêng được lai tạo từ giống sầu riêng của các nước như Thái Lan, Malaysia, Indonesia, Philippines… được trồng nhiều ở các tỉnh Đắk Lắk, Đồng Nai, Bình Dương, Tiền Giang, Vĩnh Long,… nhưng vẫn không có giống sầu riêng nào ngon hơn sầu riêng Cái Mơn.</p>\n\n<p>Khi du lịch miền Tây, ghé những vườn sầu riêng Cái Mơn sai trĩu quả và thưởng thức hương vị hấp dẫn của đặc sản này chắc chắn du khách sẽ bị mê hoặc bởi hương thơm quyến rũ ấy.</p>\n\n<h2><span style="font-size:20px;">3. BƯỞI NĂM ROI,&nbsp;VĨNH LONG</span></h2>\n\n<p>Du lịch Tết miền Tây mà bỏ qua bưởi Năm Roi ở Vĩnh Long là một thiếu sót lớn. Bưởi Năm Roi mát ngọt, mỏng vỏ, tép dày và nhiều nước chấm thêm ít muối ớt chỉ nhắc thôi cũng đã đủ thèm.</p>\n\n<p style="text-align: center;"><img alt="7-dac-san-nen-thu-khi-du-lich-tet-mien-tay-8" src="http://datviettour.com.vn/wp-content/uploads/2016/01/7-dac-san-nen-thu-khi-du-lich-tet-mien-tay-8.png" /></p>\n\n<p>Người dân Vĩnh Long còn dùng bưởi Năm Roi để làm nước ép bưởi, gỏi bưởi,… thanh mát khiến du khách phương xa mê mẩn nếu có cơ hội thưởng thức một lần.</p>\n\n<h2><span style="font-size:20px;">4. VÚ SỮA LÒ RÈN,&nbsp;TIỀN GIANG</span></h2>\n\n<p>Với mùi thơm dịu nhẹ, ngọt mát vú sữa là loại trái cây được nhiều khách du lịch miền Tây yêu thích. Mặc dù vú sữa được trồng rộng rãi ở nhiều tỉnh đồng bằng sông Cửu Long như :Tiền Giang, Vĩnh Long, Cần Thơ,… nhưng vùng đất Vĩnh Kim tỉnh Tiền Giang lại có loại vú sữa Lò Rèn trứ danh mà bất cứ ai thưởng thức không khỏi gật gù khen ngợi.</p>\n\n<p style="text-align: center;"><img alt="7-dac-san-nen-thu-khi-du-lich-tet-mien-tay-3" src="http://datviettour.com.vn/wp-content/uploads/2016/01/7-dac-san-nen-thu-khi-du-lich-tet-mien-tay-3.jpg" /></p>\n\n<p>Tên gọi “Lò Rèn” được đặt để tưởng nhớ người thợ rèn đã nhân giống cho loại vú sữa đặc biệt thơm ngon này.</p>\n\n<h2><span style="font-size:20px;">5. DỪA SÁP CẦU KÈ,&nbsp;TRÀ VINH</span></h2>\n\n<p>Nhắc đến những món trái cây hấp dẫn bậc nhất miền Tây không thể không kể đến dừa sáp Cầu Kè đặc sản trứ danh đất Trà Vinh.</p>\n\n<p>Không chỉ có nước ngọt mát, phần cơm dừa sáp béo ngậy, vừa dẻo lại vừa dày khác hẳn với những loại dừa thông thường.</p>\n\n<h2><span style="font-size:20px;">6. MÍT RUỘT ĐỎ,CẦN THƠ</span></h2>\n\n<p>Mít ruột đỏ là giống mít xuất xứ từ Thái Lan và chỉ xuất hiện ở Việt Nam cách đây vài năm và góp mặt vào danh sách những trái ngon nên thử khi du lịch Tết miền Tây.</p>\n\n<p style="text-align: center;"><img alt="7-dac-san-nen-thu-khi-du-lich-tet-mien-tay-4" src="http://datviettour.com.vn/wp-content/uploads/2016/01/7-dac-san-nen-thu-khi-du-lich-tet-mien-tay-4.jpg" /></p>\n\n<p>Mít ruột đỏ khi ăn vào có mùi thơm như mùi dầu chuối, độ ngọt thanh và dai. Ban đầu mít có màu cam đậm, múi mít dày, dai, càng để lâu mít càng đỏ và ngọt hơn nhưng không còn độ dai như ban đầu nữa. Để thưởng thức mít ruột đỏ nổi tiếng du khách đừng quên ghé qua vườn trái cây ông Tư Mau ở tổ 11, P. Long Tuyền, Q.Bình Thủy, thành phố Cần Thơ.</p>\n\n<h2><span style="font-size:20px;">7. QUÝT HỒNG, LAI VUNG</span></h2>\n\n<p>Quýt hồng Lai Vung nổi tiếng gần xa bởi vẻ ngon mắt và lạ miệng. Không chỉ chứa nhiều vitamin C tốt cho cơ thể, quýt hồng Lai Vung còn có lớp vỏ mỏng, vàng ruộm như ánh nắng của vùng miền Tây sông nước.</p>\n\n<p>Qúy hồng chín vào khoảng tháng cuối tháng 12 âm lịch. Do đó, du lịch Tết tại đây, người dân Lai Vung sẽ chiều lòng du khách phương xa bằng đặc sản quýt hồng trứ danh này. Bóc lớp vỏ quýt dậy mùi thơm và cắn một miếng, vị ngọt của quýt hồng vỡ ra lan toả khắp khoang miệng khiến du khách ngây ngất.</p>\n\n<p style="text-align: center;"><img alt="7-dac-san-nen-thu-khi-du-lich-tet-mien-tay-6" src="http://datviettour.com.vn/wp-content/uploads/2016/01/7-dac-san-nen-thu-khi-du-lich-tet-mien-tay-6.jpg" /></p>\n\n<p>Không chỉ thưởng thức tại vườn, du lịch Tết miền Tây du khách còn có cơ hội mua những giỏ quýt hồng thơm ngon nhất về chưng Tết hoặc tặng, bạn bè người thân.</p>\n\n<p>Ngoài ra, còn rất nhiều loại trái cây thơm ngon hấp dẫn nơi miệt vườn sông nước đang chờ du khách thưởng thức. Nhanh tay book ngay một tour du lịch miền Tây để thỏa sức tham quan nhiều địa điểm du lịch mới lạ, hòa cùng không gian thanh bình miền sông nước và thưởng thức trái cây mát ngọt nơi đây.</p>\n\n<p>Thân chúc quý khách một mùa Tết đầm ấm, hạnh phúc bên gia đình và bạn bè!</p>', NULL, NULL, NULL, NULL, NULL, 68),
(281, '<p>Du lịch Tết Campuchia, đến với thành phố Siem Reap du khách sẽ có cơ hội chiêm ngưỡng quần thể công trình kiến trúc thể hiện đỉnh cao trong nghệ thuật kiến trúc Khmer đó là quần thể Angkor hùng vỹ.</p>\n\n<p>Không chỉ thu hút du khách bởi những ngôi đền đồ sộ, huyền bí tham quan quần thể kiến trúc Angkor du khách còn có thể hiểu hơn về văn hóa Khmer cổ và lưu lại những bức hình ấn tượng nhất.</p>\n\n<p style="text-align: center;"><img alt="du-lich-tet-campuchia-7" src="http://datviettour.com.vn/wp-content/uploads/2016/01/du-lich-tet-campuchia-7.jpg" /></p>\n\n<h2><span style="font-size:20px;">DU LỊCH TẾT CAMPUCHIA THĂM NHỮNG NGÔI ĐỀN ANGKOR HUYỀN BÍ</span></h2>\n\n<h3>– Angkor Wat – tuyệt đỉnh kiến trúc Khmer</h3>\n\n<p>Từ trung tâm thành phố Siep Reap đi khoảng 7 km du khách sẽ bắt gặp quần thể di tích Angkor Wat hùng vỹ. Không chỉ là một trong số những di tích lịch sử quan trọng bậc nhất ở xứ sở Chùa Tháp Campuchia quần thể này còn được xem là tuyệt đỉnh trong kiến trúc Khmer cổ. Năm 1991, Angkor Wat đã được UNESCO công nhận là Di sản Văn hóa Thế giới.</p>\n\n<p>Từng là kinh đô của đế quốc Khmer cổ, Angkor Wat được xây dựng kéo dài suốt 37 năm và dài hơn 1km vào khoảng nửa đầu của thế kỷ 12 với mục đích là nơi thờ thần Vishnu của Ấn Độ giáo. Khi vương triều Khmer sùng bái Phật giáo, Angkor Wat đã trở đền thờ Phật linh thiêng. Cuối thế kỷ 15, vua Khmer dời kinh đô về Phnom Penh và từ đó Angkor Wat bị bỏ hoang phế và rừng già bao phủ.</p>\n\n<p style="text-align: center;"><img alt="du-lich-tet-campuchia-8" src="http://datviettour.com.vn/wp-content/uploads/2016/01/du-lich-tet-campuchia-8.jpg" /></p>\n\n<p>Đặc biệt hơn cả, Angkor Wat chính là ngôi đền duy nhất trong quần thể kiến trúc Khmer đồ sộ này có chính điện quay về hướng mặt trời lặn. Do đó, nơi đây trở thành địa điểm lý tưởng để du khách ghi lại hình ảnh tuyệt đẹp của ngôi đền lúc buổi chiều tà.</p>\n\n<p>Khám phá mọi ngõ ngách trong ngôi đền nổi tiếng Angkor Wat, du khách sẽ mãn nhãn trước những hoa văn in trên mặt đá theo các câu chuyện trong sử thi Ấn Độ vô cùng thú vị.</p>\n\n<h3>– Angkor Thom – thành trì lâu dài nhất của Khmer</h3>\n\n<p><a href="http://datviettour.com.vn/tour-du-lich-campuchia.html">Du lịch Campuchia</a>, từ Angkor Wat di chuyển khoảng 5 phút đi xe du khách sẽ tới được với quần thể Angkor Thom – nơi có các bức tường thành xây bằng bằng đá ong cao 8 m bao quanh khu vực đền đài rộng 9 km2. Khu đền Angkor Thom chính là thủ đô cuối cùng và lâu nhất của người Khmer, nơi đây được xây dựng vào cuối thế kỷ 12.</p>\n\n<p style="text-align: center;"><img alt="du-lich-tet-campuchia-2" src="http://datviettour.com.vn/wp-content/uploads/2016/01/du-lich-tet-campuchia-2.jpg" /></p>\n\n<p>Ngôi đền Angkor Thom có 4 cổng hướng Đông – Tây – Nam – Bắc. Khuôn mặt trên các ngọn tháp đại diện cho nhà vua, các vị thần Lokesvara và thần hộ vệ của vương quốc Khmer cổ.</p>\n\n<h3>– Bayon – ngôi đền núi ấn tượng nhất Campuchia</h3>\n\n<p>Trong quần thể Angkor, ngôi đền Bayon nằm ở trung tâm được coi là ngôi đền ấn tượng nhất với quy mô là hàng trăm bức tượng 4 mặt khiến du khách ngỡ ngàng. Toàn bộ đền Bayon có đến 216 mặt tượng phân bố rải rác trên đỉnh của 54 tháp lớn nhỏ.</p>\n\n<p style="text-align: center;"><img alt="du-lich-tet-campuchia-4" src="http://datviettour.com.vn/wp-content/uploads/2016/01/du-lich-tet-campuchia-4.jpg" /></p>\n\n<p>Ngôi đền này được vua Jayavarman VII cho xây dựng khoảng thế kỷ thứ 12. Đây cũng chính là ngôi đền duy nhất tại Angkor được xây dựng với mục đích để thờ đức Phật.</p>\n\n<h3>– Ta Prohm – ngôi đền có những rễ cây cổ thụ kỳ quái</h3>\n\n<p>Ngôi đền Ta Prohm ở phía Đông của Angkor Thom có phong cách Bayon độc đáo cũng là nơi thu hút rất nhiều du khách tham quan, khám phá hàng năm. Nơi đây có cảnh quan kỳ bí vô cùng, từng làm bối cảnh cho bộ phim “Bí mật ngôi mộ cổ” nổi tiếng.</p>\n\n<p style="text-align: center;"><img alt="du-lich-tet-campuchia-1" src="http://datviettour.com.vn/wp-content/uploads/2016/01/du-lich-tet-campuchia-1.png" /></p>\n\n<p>Bước vào tham quan ngôi đền du khách sẽ ấn tượng với cảnh cây cối um tùm, nhiều thân cây cao lớn mọc trên các bức tường khiến cho ngôi đền thêm vẻ huyền bí và ấn tượng.&nbsp;Nhiều cây cổ thụ như những con trăn khổng lồ quấn quanh đền trông thật kỳ quái.</p>\n\n<h2><span style="font-size:20px;">LƯU Ý GÌ KHI DU LỊCH TẾT CAMPUCHIA?</span></h2>\n\n<ul>\n	<li>Hãy tìm hiểu về lịch sử của quần thể Angkor Wat để có cái nhìn toàn diện hơn về quần thể di tích độc đáo này trước khi thực hiện du lịch Campuchia.</li>\n	<li>Khu đền rất rộng lớn, nếu muốn tham quan hết du khách nên mang giày thể thao để tiện di chuyển.</li>\n	<li>Theo kinh nghiệm du lịch Campuchia mà nhiều du khách chia sẻ thì thời gian lý tưởng nhất để tham quan quần thể di tích Angkor là trước lúc mặt trời mọc.</li>\n</ul>\n\n<p style="text-align: center;"><img alt="du-lich-tet-campuchia-6" src="http://datviettour.com.vn/wp-content/uploads/2016/01/du-lich-tet-campuchia-6.jpg" /></p>\n\n<ul>\n	<li>Du lịch Tết Campuchia, tham quan quần thể di tích Angkor du khách nên thuê hướng dẫn viên để nghe họ thuyết minh và hiểu hơn về quần thể kiến trúc đặc sắc này.</li>\n	<li>Nên mặc các loại trang phục đơn giản, lịch sự khi tham quan những ngôi đền.</li>\n</ul>\n\n<p>Một chuyến du lịch&nbsp;Campuchia không chỉ là cơ hội tuyệt vời để bạn khám phá xứ sở Chùa Tháp những ngày đầu xuân&nbsp;mà còn là dịp để chiêm ngưỡng và&nbsp;lưu lại những bức hình ấn tượng cùng những ngôi đền Angkor tráng lệ. Còn chần chờ gì mà không xách ba lô lên đường ngay hôm nay!</p>', NULL, NULL, NULL, NULL, NULL, 70),
(279, '<p>Bên cạnh những hòn đảo hoang sơ, những bãi biển trải dài với bờ cát trắng mịn màng, phố biển Nha Trang còn níu chân du khách phương xa bởi nhiều dịch vụ giải trí thú vị cùng những món ngon hấp dẫn.</p>\n\n<p>Du lịch Tết&nbsp;Nha Trang du khách đừng bỏ lỡ cơ hội thưởng thức những món hải sản tươi ngon, bún sứa, bánh canh chả cá, nem Ninh Hòa, bún cá dầm,…để hành trình du xuân thêm trọn vẹn niềm vui nhé.</p>\n\n<h2><span style="font-size:20px;">1. CÁC LOẠI HẢI SẢN</span></h2>\n\n<p>Đã&nbsp;du lịch Nha Trang&nbsp;chắc hẳn du khách sẽ không muốn bỏ lỡ cơ hội thưởng thức những món hải sản hấp dẫn nhất nơi đây như: Tôm, mực, bạch tuộc, ốc bạch ngọc, cá bò da nướng, gỏi cá mai,…</p>\n\n<p style="text-align: center;"><img alt="dac-san-nen-thuong-thuc-khi-du-lich-tet-nha-trang-5" src="http://datviettour.com.vn/wp-content/uploads/2016/01/dac-san-nen-thuong-thuc-khi-du-lich-tet-nha-trang-5.png" /></p>\n\n<p>Những quán hải sản cạnh cầu Trần Phú, dưới chân trường đại học Thủy Sản hoặc khu vực tháp Bà,… là địa chỉ lý tưởng để du khách dừng chân thưởng thức những món hải sản hấp dẫn tại phố biển này.</p>\n\n<h2><span style="font-size:20px;">2. BÚN SỨA</span></h2>\n\n<p>Bún sứa Nha Trang chinh phục bất cứ thực khách nào có cơ hội thưởng thức bởi hương vị thơm ngon, hấp dẫn.<br />\nMón ăn này có sự tổng hòa của những con sứa tươi rói có màu trắng đục, thon dài, vị giòn sần sật với chả cá, rau sống cùng bún tươi, mang đến cho thực khách những trải nghiệm ẩm thực thú vị nhất.</p>\n\n<p style="text-align: center;"><img alt="dac-san-nen-thuong-thuc-khi-du-lich-tet-nha-trang-7" src="http://datviettour.com.vn/wp-content/uploads/2016/01/dac-san-nen-thuong-thuc-khi-du-lich-tet-nha-trang-7.jpg" /></p>\n\n<h2><span style="font-size:20px;">3. BÁNH CANH CHẢ CÁ</span></h2>\n\n<p>Đã đến Nha Trang mà chưa thưởng thức món bánh canh chả cá nơi đây thì hành trình không trọn vẹn. Mặc dù món bánh canh chả cá có mặt ở hầu hết các tỉnh ven biển miền Trung, thế nhưng phải là bánh canh chả cá Nha Trang mới có khả năng chinh phục cả những thực khách khó tính nhất.</p>\n\n<p style="text-align: center;"><img alt="dac-san-nen-thuong-thuc-khi-du-lich-tet-nha-trang-4" src="http://datviettour.com.vn/wp-content/uploads/2016/01/dac-san-nen-thuong-thuc-khi-du-lich-tet-nha-trang-4.jpg" /></p>\n\n<p>Món bánh canh chả cá Nha Trang với nước dùng đậm đà, những lát chả cá dai, bún và các loại rau sống thanh mát khiến thực khách muốn thưởng thức thêm nhiều lần sau nữa.</p>\n\n<h2><span style="font-size:20px;">4. BÁNH CĂN NHA TRANG</span></h2>\n\n<p>Mặc dù không nổi tiếng như bánh căn Phan Thiết cũng không hấp dẫn như bánh căn Đà Lạt nhưng lại bánh căn Nha Trang lại mê hoặc thực khách bởi mang hương vị mặn mòi của biển cả.</p>\n\n<p>Những chiếc bánh căn bé xíu làm từ bột gạo, nhân bánh được làm từ tôm, mực, trứng,…không chỉ đã mắt mà còn rất ngon miệng chỉ khiến thực khách muốn thưởng thức mãi không thôi</p>\n\n<p style="text-align: center;"><img alt="dac-san-nen-thuong-thuc-khi-du-lich-tet-nha-trang-6" src="http://datviettour.com.vn/wp-content/uploads/2016/01/dac-san-nen-thuong-thuc-khi-du-lich-tet-nha-trang-6.jpg" /></p>\n\n<p>Du lịch Tết&nbsp;Nha Trang để thưởng thức các món bánh căn hấp dẫn nhất thực khách nên ghé các quán bánh căn tại 151 Hoàng Văn Thụ, 51 Tô Hiến Thành, 47 Yersin, 3A đường Tháp Bà,…Những quán này không chỉ có món bánh canh ngon đúng điệu mà còn giá rẻ bất ngờ.</p>\n\n<h2><span style="font-size:20px;">5. NEM NƯỚNG NINH HÒA</span></h2>\n\n<p>Nem nướng đặc sản trứ danh đất Ninh Hòa không chỉ là món ăn mà bất cứ du khách nào cũng muốn được thưởng thức khi du lịch Nha Trang mà còn là đặc sản bạn có thể mua về làm quà sau khi kết thúc hành trình du xuân nơi phố biển tươi đẹp này.</p>\n\n<p style="text-align: center;"><img alt="dac-san-nen-thuong-thuc-khi-du-lich-tet-nha-trang" src="http://datviettour.com.vn/wp-content/uploads/2016/01/dac-san-nen-thuong-thuc-khi-du-lich-tet-nha-trang.jpg" /></p>\n\n<p>Gọi một phần nem nướng Ninh Hòa với thịt băm lụi, bánh tráng và các loại rau sống ăn kèm như: Diếp cá, hẹ, húng quế, xà lách, dưa leo, chuối chát, khế, xoài non,…chấm cùng nước chấm sánh đậm sẽ khiến thực khách không khỏi gật gù thích thú.</p>\n\n<h2><span style="font-size:20px;">6. BÚN CÁ DẦM</span></h2>\n\n<p>Một món ăn nữa cũng rất nổi tiếng và rất được nhiều du khách yêu thích khi ghé thăm phố biển Nha Trang đó chính là món bún cá dầm.</p>\n\n<p>Món ăn này gồm thành phần chính là cá dầm – đặc sản nổi tiếng của Khánh Hòa, bún, nước dùng đậm đà. Khi thưởng thức thực khách sẽ cảm nhận được vị ngọt thanh tự nhiên. Món ăn này hấp dẫn hơn khi ăn kèm với các loại rau sống thanh mát.</p>\n\n<p style="text-align: center;"><img alt="dac-san-nen-thuong-thuc-khi-du-lich-tet-nha-trang-1" src="http://datviettour.com.vn/wp-content/uploads/2016/01/dac-san-nen-thuong-thuc-khi-du-lich-tet-nha-trang-1.jpg" /></p>\n\n<p>Còn rất nhiều món ngon tại phố biển Nha Trang đang chờ du khách thưởng thức. Thêm ngay Nha Trang vào list những điểm đến hàng đầu trong dịp Tết Nguyên đán năm nay và thực hiện ngay một chuyến&nbsp;du lịch&nbsp;Nha Trang để hành trình du xuân trọn vẹn niềm vui nhé.</p>', NULL, NULL, NULL, NULL, NULL, 67),
(295, '<p><span style="color:#0000FF;">Mr.Hưng</span> <span style="color:#FF0000;"><strong>0988 388 399</strong></span> <em>(khách đoàn)</em></p>\n\n<p><span style="color:#0000FF;">Ms.Tiên</span>&nbsp;&nbsp;<span style="color:#FF0000;"><strong>0933 833 855</strong></span> <em>(khách lẻ)</em></p>', NULL, NULL, NULL, NULL, NULL, 77),
(296, '<table border="0" cellpadding="0" cellspacing="5" style="width:100%;">\n	<tbody>\n		<tr>\n			<td style="text-align: right; width: 46%;">Mr.Hiệp</td>\n			<td>0988 388 003</td>\n		</tr>\n		<tr>\n			<td style="text-align: right;">Mr. Nghĩa</td>\n			<td>0988 300 500</td>\n		</tr>\n	</tbody>\n</table>', NULL, NULL, NULL, NULL, NULL, 78),
(297, '<table border="0" cellpadding="0" cellspacing="5" style="width:100%;">\n	<tbody>\n		<tr>\n			<td style="text-align: right; width: 46%;">Mr.Hiệp</td>\n			<td>0988 388 003</td>\n		</tr>\n		<tr>\n			<td style="text-align: right;">Mr. Nghĩa</td>\n			<td>0988 300 500</td>\n		</tr>\n	</tbody>\n</table>', NULL, NULL, NULL, NULL, NULL, 79);

-- --------------------------------------------------------

--
-- Table structure for table `web_event_form`
--

CREATE TABLE IF NOT EXISTS `web_event_form` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `img` varchar(20) default NULL,
  `subject` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `notification` text NOT NULL,
  `email` varchar(60) NOT NULL,
  `type` tinyint(1) NOT NULL default '1',
  `type_id` int(2) NOT NULL,
  `status` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

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
  `id` int(3) NOT NULL auto_increment,
  `name` varchar(200) NOT NULL,
  `name_alias` varchar(200) NOT NULL,
  `url` varchar(250) NOT NULL,
  `img` varchar(50) default NULL,
  `title` varchar(200) NOT NULL,
  `description` varchar(300) NOT NULL,
  `tags` varchar(150) NOT NULL,
  `code` varchar(30) default NULL,
  `duration` varchar(100) default NULL,
  `means` varchar(10) default NULL,
  `hotel` tinyint(1) default NULL,
  `depart` varchar(100) default NULL,
  `destination` varchar(150) default NULL,
  `schedule` varchar(200) default NULL,
  `price` bigint(10) default NULL,
  `parent` int(5) NOT NULL default '0',
  `_order` int(5) NOT NULL default '0',
  `other` varchar(200) default NULL,
  `datetime` bigint(10) NOT NULL,
  `lang` varchar(2) NOT NULL default 'vi',
  `status` tinyint(1) NOT NULL default '1',
  `properties` tinyint(1) NOT NULL default '0',
  `type_id` int(2) NOT NULL,
  `position_id` varchar(20) default NULL,
  `menu_id` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=80 ;

--
-- Dumping data for table `web_header`
--

INSERT INTO `web_header` (`id`, `name`, `name_alias`, `url`, `img`, `title`, `description`, `tags`, `code`, `duration`, `means`, `hotel`, `depart`, `destination`, `schedule`, `price`, `parent`, `_order`, `other`, `datetime`, `lang`, `status`, `properties`, `type_id`, `position_id`, `menu_id`) VALUES
(1, 'Trang chủ', 'trang-chu', 'http://www.iappscode.com/site/dulichhoaviet/', '', 'Hoa Việt Travel | Du lịch trong nước - Du lịch ngoài nước - Du lịch Hoa Việt - Website du lịch', 'Hoa Việt Travel - Cung cấp các chương trình tour du lịch  trong nước và ngoài nước, các dịch vụ du lịch, du lịch giá rẻ, tour du lịch khuyến mãi', 'hoa việt travel,du lịch trong nước,du lịch ngoài nước,du lịch hoa việt,website du lịch,du lich,trong nuoc,ngoai nuoc,hoa viet travel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 1452827040, 'vi', 1, 1, 1, ',1,20,', NULL),
(2, 'Tour khuyến mãi', 'tour-khuyen-mai', '', '', 'Tour du lịch khuyến mãi', 'Tour khuyến Mãi là các chương trình tour ưu đãi giảm giá của Hoa Việt travel nhằm đáp ứng nhu cầu đi du lịch của mọi người.', 'tour du lịch khuyến mãi,tour du lich khuyen mai,tour khuyen mai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 11, NULL, 1452827340, 'vi', 1, 1, 3, ',8,2,', NULL),
(3, 'Tour trong nước', 'tour-trong-nuoc', '', '', 'Tour du lịch trong nước', 'Hoa Việt Travel cung cấp tour các điểm du lịch hấp dẫn nhất trong nước du lịch về nguồn, du lịch về các lễ hội truyền thống, văn hóa đất nước', 'tour du lịch trong nước,tour du lich trong nuoc,tour trong nuoc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, NULL, 1452827400, 'vi', 1, 1, 3, ',8,2,', NULL),
(4, 'Tour ngoài nước', 'tour-du-lich-ngoai-nuoc', '', '', 'Tour du lịch ngoài nước', 'Hoa Việt Travel cung cấp tour du lịch nước ngoài các điểm du lịch hấp dẫn và nổi tiếng nhất nước ngoài như: Mỹ, Anh, Pháp, Singapore, Thái Lan,...', 'tour du lịch ngoài nước,tour du lich ngoai nuoc,tour ngoai nuoc, tour nuoc ngoai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 13, NULL, 1452827700, 'vi', 1, 1, 3, ',8,2,', NULL),
(5, 'Giới thiệu', 'gioi-thieu', 'gioi-thieu-hoa-viet-travel', '', 'Giới thiệu', '', 'giới thiệu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 20, NULL, 1452828000, 'vi', 1, 1, 5, ',1,', NULL),
(6, 'Team building', 'team-building', '', '', 'Team building', '', 'team building', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 21, NULL, 1452828000, 'vi', 1, 1, 6, ',1,', NULL),
(7, 'Cẩm nang', 'cam-nang', '', '', 'Cẩm nang', '', 'cẩm nang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 22, NULL, 1452828000, 'vi', 1, 1, 2, ',1,', NULL),
(8, 'Điểm du lịch', 'diem-du-lich', '', '', 'Các địa điểm du lịch nổi tiếng', '', 'điểm du lịch,diem du lich,du lịch nổi tiếng,du lich noi tieng', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 23, NULL, 1452828060, 'vi', 1, 1, 2, ',1,', NULL),
(9, 'Khách hàng', 'khach-hang', '', '', 'Khách hàng', '', 'khách hàng', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 24, NULL, 1452828120, 'vi', 1, 1, 2, ',1,', NULL),
(10, 'Liên hệ', 'lien-he', '', '', 'Liên hệ đặt tour Hoa Việt Travel®', '', 'liên hệ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 25, NULL, 1452828180, 'vi', 1, 1, 17, ',1,', NULL),
(11, 'Home hiển thị 2 tour nổi bật', 'home-hien-thi-2-tour-noi-bat', '', '', 'Home hiển thị 2 tour nổi bật', '', 'home hiển thị 2 tour nổi bật', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, NULL, 1452828840, 'vi', 1, 1, 3, ',7,', NULL),
(12, 'Home yêu cầu dịch vụ tour du lịch', 'home-yeu-cau-dich-vu-tour-du-lich', '', '1452913407.jpg', 'Hoa Việt Travel®', 'Bạn cần tổ chức tour du lịch cho công ty bạn đang làm việc? Hãy gửi yêu cầu cho chúng tôi. Hoa Việt Travel® chuyên cung cấp các tour du lịch trong và ngoài nước, tour du lịch cho công ty', 'home yêu cầu dịch vụ tour du lịch', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, 1452828900, 'vi', 1, 1, 20, ',9,', NULL),
(13, 'Home tại sao chọn chúng tôi', 'home-tai-sao-chon-chung-toi', '', '', 'Tại sao chọn chúng tôi', 'Hoa Việt Travel luôn luôn đáp ứng nhu cầu đi du lịch của mọi người.', 'home tại sao chọn chúng tôi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, 1452828960, 'vi', 1, 1, 20, ',10,', NULL),
(14, 'Home team building', 'home-team-building', 'team-building', '', 'Team building', 'Du lịch kết hợp Teambuilding là một xu thế mới hiện nay được khá nhiều công ty ưa chuộng. Hãy tổ chức một chuyến du lich Teambuilding để thỏa sức vui chơi và trải nghiệm', 'home team building', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 5, NULL, 1452829020, 'vi', 1, 1, 6, ',11,', NULL),
(15, 'Home các điểm du lịch', 'home-cac-diem-du-lich', '', '', 'Home các điểm du lịch', '', 'home các điểm du lịch', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 6, NULL, 1452829020, 'vi', 1, 1, 20, ',12,', NULL),
(16, 'Home khách hàng đối tác', 'home-khach-hang-doi-tac', '', '', 'Home khách hàng đối tác', '', 'home khách hàng đối tác', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 7, NULL, 1452829080, 'vi', 1, 1, 20, ',13,', NULL),
(17, 'Slider home page', '', '', '1452831022.jpg', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 1452830880, 'vi', 1, 2, 16, ',16,', ',1,'),
(18, 'Tour du lịch tết 2016 đảo Bình Ba 2 ngày 2 đêm', 'tour-du-lich-tet-2016-dao-binh-ba-2-ngay-2-dem', '', '1452925095.jpg', 'Tour du lịch tết 2016 đảo Bình Ba 2 ngày 2 đêm', 'Khởi hành: Thứ 5 hằng tuần. Một chuyến du lịch đảo Bình Ba hoang sơ sẽ vô cùng ý nghĩa và thú vị để đón mừng năm mới 2016.', 'tour du lịch tết 2016,đảo bình ba 2 ngày 2 đêm', 'BB100', '2 ngày 2 đêm', ',1,', 0, 'Tối 09,11/02/2016 (M2,4 Tết)', 'Đảo Bình Ba', 'Bãi Nhà Cũ - Hòn Rùa - chùa Địa Tạng - Lăng Ông Nam Hải - Đình thần - Bãi Nồm - Chùa Ốc', 1550000, 0, 0, NULL, 1452924840, 'vi', 1, 2, 3, NULL, ',11,2,3,29,24,'),
(19, 'Tour: Hà Nội - Lào Cai - Sapa - Chợ Phiên Bắc Hà - Yên Tử - Hạ Long', 'tour-ha-noi-lao-cai-sapa-cho-phien-bac-ha-yen-tu-ha-long', '', '1452926016.jpg', 'Tour: Hà Nội - Lào Cai - Sapa - Chợ Phiên Bắc Hà - Yên Tử - Hạ Long', 'Khởi hành vào thứ 2 hàng tuần, khám phá Miền Bắc trong 5 ngày 5 đêm', 'tour hà nội lào cai sapa chợ phiên bắc hà yên tử hạ long', 'MB101', '5 ngày 5 đêm', ',1,2,', 3, 'sáng 7h 22/01/2016', 'Hà Nội', 'Hà Nội - Lào Cai - Sapa - Chợ Phiên Bắc Hà - Yên Tử - Hạ Long', 7900000, 0, 0, NULL, 1452925620, 'vi', 1, 2, 3, NULL, ',11,2,3,28,40,'),
(20, 'Tour du lich tết 2016 Cần Thơ - Sóc Trăng - Bạc Liêu - Cà Mau', 'tour-du-lich-tet-2016-can-tho-soc-trang-bac-lieu-ca-mau', '', '1453199146.jpg', 'Tour du lich tết 2016 Cần Thơ - Sóc Trăng - Bạc Liêu - Cà Mau', 'Khám phá miền tây sông nước 4 ngày 3 đêm Cần Thơ - Sóc Trăng - Bạc Liêu - Cà Mau', 'tour du lich tết 2016 cần thơ,,tour du lich tet 2016 can tho', 'MT102', '4 ngày 3 đêm', ',1,', 3, 'sáng 09,11/02/2016 (M2,4 Tết)', 'Cần Thơ - Sóc Trăng - Bạc Liêu - Cà Mau', 'Chùa Vĩnh Tràng - bến Ninh Kiều - chợ nổi Cái Răng - chùa Dơi - chùa Đất Sét - nhà thờ cha Diệp - Đất Mũi - Mỹ Khánh', 3500000, 0, 0, NULL, 1452928080, 'vi', 1, 2, 3, NULL, ',2,3,30,37,'),
(21, 'Tour du lịch chọn lọc', 'tour-du-lich-chon-loc', '', '', 'Tour du lịch chọn lọc', '', 'tour du lịch chọn lọc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, 1, NULL, 1452949740, 'vi', 1, 1, 20, ',10,', NULL),
(22, 'Mức giá vô cùng hấp dẫn', 'muc-gia-vo-cung-hap-dan', '', '', 'Mức giá vô cùng hấp dẫn', '', 'mức giá vô cùng hấp dẫn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, 2, NULL, 1452950040, 'vi', 1, 1, 20, ',10,', NULL),
(23, 'Hoa Việt Travel® và các điểm ưu việt', 'hoa-viet-travel-cac-diem-uu-viet', '', '', 'Hoa Việt Travel và các điểm ưu việt', '', 'hoa việt travel các điểm ưu việt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, 3, NULL, 1452950220, 'vi', 1, 1, 20, ',10,', NULL),
(24, 'Du lịch Nha Trang', 'du-lich-nha-trang', '', '1452953115.jpg', 'Tour du lịch Nha Trang', '', 'tour du lịch nha trang,du lich nha trang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 29, 1, NULL, 1452950820, 'vi', 1, 1, 3, ',4,', NULL),
(25, 'Du lịch Đà Lạt', 'du-lich-da-lat', '', '', 'Tour du lịch Đà Lạt', '', 'tour du lịch đà lạt,du lich da lat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, 1, NULL, 1452950940, 'vi', 1, 1, 3, ',4,', NULL),
(26, 'Du lịch Phan Thiết', 'du-lich-phan-thiet', '', '', 'Tour du lịch Phan Thiết', '', 'tour du lịch phan thiết,du lich phan thiet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 29, 2, NULL, 1452951000, 'vi', 1, 1, 3, ',4,', NULL),
(27, 'Du lịch Vũng Tàu', 'du-lich-vung-tau', '', '', 'Tour du lịch Vũng Tàu', '', 'tour du lịch vũng tàu,du lich vung tau', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 1, NULL, 1452951060, 'vi', 1, 1, 3, ',4,', NULL),
(28, 'Du lịch Miền Bắc', 'du-lich-mien-bac', '', '', 'Tour du lịch Miền Bắc', '', 'tour du lịch miền bắc,du lich mien bac', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL, 1452951120, 'vi', 1, 1, 3, ',4,', NULL),
(29, 'Du lịch miền Trung', 'du-lich-mien-trung', '', '', 'Tour du lịch miền Trung', '', 'tour du lịch miền trung,du lich mien trung', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 2, NULL, 1452951180, 'vi', 1, 1, 3, ',4,', NULL),
(30, 'Du lịch miền Nam', 'tour-du-lich-mien-nam', '', '', 'Tour du lịch miền Nam', '', 'tour du lịch miền nam,du lich mien nam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 3, NULL, 1452951240, 'vi', 1, 1, 3, ',4,', NULL),
(31, 'Du lịch Tây Nguyên', 'du-lich-tay-nguyen', '', '', 'Tour du lịch Tây Nguyên', '', 'tour du lịch tây nguyên,du lich tay nguyen', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 4, NULL, 1452951300, 'vi', 1, 1, 3, ',4,', NULL),
(32, 'Du lịch Buôn Mê Thuộc', 'du-lich-buon-me-thuoc', '', '', 'Tour du lịch Buôn Mê Thuộc', '', 'tour du lịch buôn mê thuộc,du lich buon me thuoc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, 2, NULL, 1452951480, 'vi', 1, 1, 3, ',4,', NULL),
(33, 'Du lịch Tây Nguyên khác', 'du-lich-tay-nguyen-khac', '', '', 'Tour du lịch Tây Nguyên khác', '', 'tour du lịch tây nguyên khác,du lich tay nguyen khac', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, 4, NULL, 1452951540, 'vi', 1, 1, 3, ',4,', NULL),
(34, 'Du lịch Pleiku - Kontum', 'du-lich-pleiku-kontum', '', '', 'Tour du lịch Pleiku - Kontum', '', 'tour du lịch pleiku kontum,du lich pleiku kontum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, 3, NULL, 1452951600, 'vi', 1, 1, 3, ',4,', NULL),
(35, 'Du lịch Phú Quốc', 'du-lich-phu-quoc', '', '1452953051.jpg', 'Tour du lịch Phú Quốc', '', 'tour du lịch phú quốc,du lich phu quoc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 2, NULL, 1452951660, 'vi', 1, 1, 3, ',4,', NULL),
(36, 'Du lịch Tiền Giang', 'du-lich-tien-giang', '', '', 'Tour du lịch Tiền Giang', '', 'tour du lịch tiền giang,du lich tien giang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 3, NULL, 1452951720, 'vi', 1, 1, 3, ',4,', NULL),
(37, 'Du lịch Cần Thơ', 'du-lich-can-tho', '', '', 'Tour du lịch Cần Thơ', '', 'tour du lịch cần thơ,du lich can tho', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 4, NULL, 1452951780, 'vi', 1, 1, 3, ',4,', NULL),
(38, 'Du lịch Côn Đảo', 'du-lich-con-dao', '', '', 'Tour du lịch Côn Đảo', '', 'tour du lịch côn đảo,du lich con dao', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 5, NULL, 1452951780, 'vi', 1, 1, 3, ',4,', NULL),
(39, 'Du lịch Hà Tiên', 'du-lich-ha-tien', '', '', 'Tour du lịch Hà Tiên', '', 'tour du lịch hà tiên,du lich ha tien', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 6, NULL, 1452951840, 'vi', 1, 1, 3, ',4,', NULL),
(40, 'Du lịch Hà Nội', 'du-lich-ha-noi', '', '', 'Tour du lịch Hà Nội', '', 'tour du lịch hà nội,du lich ha noi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, 1, NULL, 1452951960, 'vi', 1, 1, 3, ',4,', NULL),
(41, 'Du lịch Hạ Long', 'du-lich-ha-long', '', '', 'Tour du lịch Hạ Long', '', 'tour du lịch hạ long,du lich ha long', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, 2, NULL, 1452951960, 'vi', 1, 1, 3, ',4,', NULL),
(42, 'Du lịch Sapa', 'du-lich-sapa', '', '', 'Tour du lịch Sapa', '', 'tour du lịch sapa,du lich sapa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, 3, NULL, 1452951960, 'vi', 1, 1, 3, ',4,', NULL),
(43, 'Du lịch Tây Bắc', 'du-lich-tay-bac', '', '', 'Tour du lịch Tây Bắc', '', 'tour du lịch tây bắc,du lich tay bac', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, 4, NULL, 1452952020, 'vi', 1, 1, 3, ',4,', NULL),
(44, 'Du lịch Đền Hùng', 'du-lich-den-hung', '', '', 'Tour du lịch Đền Hùng', '', 'tour du lịch đền hùng,du lich den hung', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, 5, NULL, 1452952080, 'vi', 1, 1, 3, ',4,', NULL),
(45, 'Du lịch Chùa Hương', 'du-lich-chua-huong', '', '', 'Tour du lịch Chùa Hương', '', 'tour du lịch chùa hương,du lich chua huong', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, 6, NULL, 1452952080, 'vi', 1, 1, 3, ',4,', NULL),
(46, 'Du lịch Mũi Né', 'du-lich-mui-ne', '', '', 'Tour du lịch Mũi Né', '', 'tour du lịch mũi né,du lich mui ne', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 29, 3, NULL, 1452952140, 'vi', 1, 1, 3, ',4,', NULL),
(47, 'Du lịch Đà Nẵng', 'du-lich-da-nang', '', '', 'Tour du lịch Đà Nẵng', '', 'tour du lịch đà nẵng,du lich da nang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 29, 4, NULL, 1452952200, 'vi', 1, 1, 3, ',4,', NULL),
(48, 'Du lịch Huế', 'du-lich-hue', '', '', 'Tour du lịch Huế', '', 'tour du lịch huế,du lich hue', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 29, 5, NULL, 1452952200, 'vi', 1, 1, 3, ',4,', NULL),
(49, 'Du lịch Hội An', 'du-lich-hoi-an', '', '', 'Tour du lịch Hội An', '', 'tour du lịch hội an,du lich hoi an', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 29, 6, NULL, 1452952260, 'vi', 1, 1, 3, ',4,', NULL),
(50, 'Du lịch Phong Nha', 'du-lich-phong-nha', '', '', 'Tour du lịch Phong Nha', '', 'tour du lịch phong nha,du lich phong nha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 29, 7, NULL, 1452952260, 'vi', 1, 1, 3, ',4,', NULL),
(51, 'Du lịch Quy Nhơn', 'du-lich-quy-nhon', '', '', 'Tour du lịch Quy Nhơn', '', 'tour du lịch quy nhơn,du lich quy nhon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 29, 8, NULL, 1452952320, 'vi', 1, 1, 3, ',4,', NULL),
(52, 'Du lịch Châu Á', 'du-lich-chau-a', '', '', 'Tour du lịch Châu Á', '', 'tour du lịch châu á,du lich chau a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 1, NULL, 1452952380, 'vi', 1, 1, 3, ',4,', NULL),
(53, 'Du lịch Châu Âu', 'du-lich-chau-au', '', '', 'Tour du lịch Châu Âu', '', 'tour du lịch châu âu,du lich chau au', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 2, NULL, 1452952380, 'vi', 1, 1, 3, ',4,', NULL),
(54, 'Du lịch Châu Mỹ', 'du-lich-chau-my', '', '', 'Tour du lịch Châu Mỹ', '', 'tour du lịch châu mỹ,du lich chau my', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 3, NULL, 1452952440, 'vi', 1, 1, 3, ',4,', NULL),
(55, 'Du lịch Châu Úc - Phi', 'du-lich-chau-uc-phi', '', '', 'Tour du lịch Châu Úc - Phi', '', 'tour du lịch châu úc phi,du lich chau uc phi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 4, NULL, 1452952440, 'vi', 1, 1, 3, ',4,', NULL),
(56, 'Du lịch Singapore', 'du-lich-singapore', '', '1452953066.jpg', 'Tour du lịch Singapore', '', 'tour du lịch singapore,du lich singapore', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 52, 1, NULL, 1452952560, 'vi', 1, 1, 3, ',4,', NULL),
(57, 'Du lịch Campuchia', 'du-lich-campuchia', '', '1452953083.jpg', 'Tour du lịch Campuchia', '', 'tour du lịch campuchia,du lich campuchia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 52, 2, NULL, 1452952620, 'vi', 1, 1, 3, ',4,', NULL),
(58, 'Du lịch Hồng Kông', 'du-lich-hong-kong', '', '1452953150.jpg', 'Tour du lịch Hồng Kông', '', 'tour du lịch hồng kông,du lich hong kong', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 52, 3, NULL, 1452953100, 'vi', 1, 1, 3, ',4,', NULL),
(59, 'Khách hàng 1', '', '', '1452953991.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 1452953940, 'vi', 1, 2, 16, ',18,', ''),
(60, 'Khách hàng 2', '', '', '1452954006.jpg', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, NULL, 1452953940, 'vi', 1, 2, 16, ',18,', ''),
(61, 'Khách hàng 3', '', '', '1452954056.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, 1452954000, 'vi', 1, 2, 16, ',18,', ''),
(62, 'Khách hàng 4', '', '', '1452954070.jpg', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, 1452954060, 'vi', 1, 2, 16, ',18,', ''),
(63, 'Khách hàng 5', '', '', '1452954083.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 5, NULL, 1452954060, 'vi', 1, 2, 16, ',18,', ''),
(64, 'Giới thiệu Hoa Việt Travel®', 'gioi-thieu-hoa-viet-travel', '', '', 'Giới thiệu Hoa Việt Travel', '', 'giới thiệu hoa việt travel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, NULL, 1453254300, 'vi', 1, 1, 5, ',20,', NULL),
(65, 'Dịch vụ Hoa Việt Travel®', 'dich-vu-hoa-viet-travel', '', '', 'Dịch vụ Hoa Việt Travel', '', 'dịch vụ hoa việt travel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 2, NULL, 1453254540, 'vi', 1, 1, 5, ',20,', NULL),
(66, 'Hồ sơ công ty', 'ho-so-cong-ty', '', '', 'Hồ sơ công ty', '', 'hồ sơ công ty', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 3, NULL, 1453254660, 'vi', 1, 1, 5, ',20,', NULL),
(67, 'Món ngon nên thử khi du lịch tết Nha Trang', 'mon-ngon-nen-thu-khi-du-lich-tet-nha-trang', '', '1453255531.jpg', 'Món ngon nên thử khi du lịch tết Nha Trang', 'Du lịch Tết Nha Trang du khách đừng bỏ lỡ cơ hội thưởng thức những món hải sản tươi ngon, bún sứa, bánh canh chả cá, nem Ninh Hòa, bún cá dầm,…để hành trình du xuân thêm trọn vẹn niềm vui nhé.', 'món ngon nên thử,du lịch tết nha trang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 1453255140, 'vi', 1, 2, 2, NULL, ',7,8,'),
(68, '7 trái cây đặc sản không nên bỏ lỡ khi du lịch tết miền tây', '7-trai-cay-dac-san-khong-nen-bo-lo-khi-du-lich-tet-mien-tay', '', '1453255977.jpg', '7 trái cây đặc sản không nên bỏ lỡ khi du lịch tết miền tây', 'Một chuyến du lịch Tết miền Tây sẽ đem lại những trải nghiệm thú vị cho du khách khi được thưởng thức những loại trái cây nổi tiếng ngon ngọt, thanh mát của vùng đất trù phú này.', '7 trái cây đặc sản không nên bỏ lỡ khi du lịch tết miền tây', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 1453255740, 'vi', 1, 2, 2, NULL, ',7,8,'),
(69, 'Đón tết nguyên đán ở vùng đất tây nguyên đại ngàn', 'don-tet-nguyen-dan-o-vung-dat-tay-nguyen-dai-ngan', '', '1453259523.jpg', 'Đón tết nguyên đán ở vùng đất tây nguyên đại ngàn', 'Du lịch Tết ở vùng đất Tây Nguyên đại ngàn đầy nắng đầy gió và hòa vào niềm hoan ca của người dân địa phương đón Tết', 'đón tết nguyên đán,vùng đất tây nguyên đại ngàn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 1453259280, 'vi', 1, 2, 2, NULL, ',7,8,'),
(70, 'Du lịch tết Campuchia khám phá những ngồi đền Angkor huyền bí', 'du-lich-tet-campuchia-kham-pha-nhung-ngoi-den-angkor-huyen-bi', '', '1453260438.jpg', 'Du lịch tết Campuchia khám phá những ngồi đền Angkor huyền bí', 'Du lịch Tết Campuchia, đến với thành phố Siem Reap du khách sẽ có cơ hội chiêm ngưỡng quần thể công trình kiến trúc thể hiện đỉnh cao trong nghệ thuật kiến trúc Khmer đó là quần thể Angkor hùng vỹ.', 'du lịch tết campuchia,khám phá những ngồi đền angkor', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 1453259640, 'vi', 1, 2, 2, NULL, ',7,8,'),
(71, 'Du lịch team building 2015: Tinh Thần Thép', 'du-lich-team-building-2015-tinh-than-thep', '', '1453273417.jpg', 'Du lịch team building 2015: Tinh Thần Thép', 'Côn Đảo là hòn đảo hoang sơ, thanh bình, có nhiều bãi biển đẹp, những cánh rừng nguyên sinh với nhiều loài động thực vật quý hiếm được nhiều du khách yêu thích.', 'du lịch team building 2015 tinh thần thép', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 1453273080, 'vi', 1, 2, 6, NULL, ',14,6,'),
(72, 'Teambuilding huyền thoại Madagui', 'teambuilding-huyen-thoai-madagui', '', '1453273439.jpg', 'Teambuilding huyền thoại Madagui', 'Chương trình Teambuilding tại khu du lịch sinh thái Madaguoi, huyện Đạ Huoai tỉnh Lâm Đồng', 'teambuilding huyền thoại madagui', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 1453273140, 'vi', 1, 2, 6, NULL, ',14,6,'),
(73, 'Du lịch Teambuilding Sức Mạnh Đam San', 'du-lich-teambuilding-suc-manh-dam-san', '', '1453273464.jpg', 'Du lịch Teambuilding Sức Mạnh Đam San', 'Chương trình du lich team building “Sức mạnh Đam San” mô phỏng mỗi đội là một ứng cử viên cho danh hiệu Đam San. Bằng sự gắn kết sức mạnh của từng thành viên', 'du lịch teambuilding sức mạnh đam san', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 1453273260, 'vi', 1, 2, 6, NULL, ',14,6,'),
(74, 'Du lịch team building tại Vịnh Hạ Long', 'du-lich-team-building-tai-vinh-ha-long', '', '1453273659.jpg', 'Du lịch team building tại Vịnh Hạ Long', 'Vịnh Hạ Long là nơi kỳ lý tưởng cho hàng loạt chương trình du lịch teambuilding với những mục đích khác nhau dành cho quý khách.', 'du lịch team building tại vịnh hạ long', 'mqNip6_SUXs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 1453273500, 'vi', 1, 2, 6, NULL, ',14,6,'),
(75, 'Cho thuê xe', 'cho-thue-xe', '', '', 'Cho thuê xe du lịch | Cho thue xe du lich', 'Cho thuê xe du lịch giá rẻ, cho thuê xe 4,7,9,16,29,45 chỗ . Đảm bảo xe cho thuê luôn sạch đẹp, đời mới.', 'cho thuê xe du lịch,cho thue xe du lich', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 22, NULL, 1456477080, 'vi', 1, 1, 2, ',15,1,', NULL),
(77, 'Support nhân viên sale', 'support-nhan-vien-sale', '', '', 'Support nhân viên sale', '', 'support nhân viên sale', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 31, NULL, 1456479180, 'vi', 1, 1, 20, ',14,', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `web_ip_address`
--

CREATE TABLE IF NOT EXISTS `web_ip_address` (
  `id` int(11) NOT NULL auto_increment,
  `ip_address` varchar(20) NOT NULL,
  `datetime` bigint(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

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
  `id` int(3) NOT NULL auto_increment,
  `name` varchar(20) NOT NULL,
  `code` varchar(10) NOT NULL,
  `_order` int(3) default '0',
  `status` tinyint(1) default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

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
  `id` int(3) NOT NULL auto_increment,
  `name` varchar(30) NOT NULL,
  `value` varchar(200) NOT NULL,
  `_order` int(3) NOT NULL,
  `lang` varchar(2) NOT NULL default 'vi',
  `status` tinyint(1) default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=62 ;

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
  `deliverycosts` int(8) NOT NULL default '0',
  `_order` int(2) default '0',
  `lang` varchar(2) NOT NULL default 'vi',
  `status` tinyint(1) default '1',
  PRIMARY KEY  (`id`)
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
  `id` int(3) NOT NULL auto_increment,
  `name` varchar(35) collate utf8_unicode_ci NOT NULL,
  `deliverycosts` int(8) NOT NULL default '0',
  `city_id` int(11) NOT NULL,
  `_order` int(3) default '0',
  `lang` varchar(2) collate utf8_unicode_ci NOT NULL default 'vi',
  `status` tinyint(1) default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=901 ;

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
  `id` int(2) NOT NULL auto_increment,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `lang` varchar(3) NOT NULL default 'vi',
  `status` tinyint(1) default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

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
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(200) NOT NULL,
  `action` varchar(30) NOT NULL,
  `_table` varchar(30) NOT NULL,
  `table_id` int(11) NOT NULL,
  `datetime` bigint(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `content` text,
  `lang` varchar(2) NOT NULL default 'vi',
  `status` tinyint(1) NOT NULL default '0',
  `date_restore` bigint(10) default NULL,
  `user_restore` varchar(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=77 ;

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
(76, '', 'create', 'web_users_role', 36, 1456542211, 'admin', '', 'vi', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `web_order`
--

CREATE TABLE IF NOT EXISTS `web_order` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(250) NOT NULL,
  `email` varchar(80) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `total_current` int(9) NOT NULL,
  `total_number` int(4) NOT NULL,
  `deliverycosts` int(8) NOT NULL default '0',
  `discounts` int(8) NOT NULL default '0',
  `total` int(8) NOT NULL,
  `datetime` bigint(10) NOT NULL,
  `ip_address` varchar(20) NOT NULL,
  `lang` varchar(2) NOT NULL default 'vi',
  `status` tinyint(1) NOT NULL default '1',
  `city_id` int(3) NOT NULL,
  `districts_id` int(5) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `web_order_detail`
--

CREATE TABLE IF NOT EXISTS `web_order_detail` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(250) NOT NULL,
  `number` int(4) NOT NULL,
  `price` int(8) NOT NULL,
  `discounts` int(8) NOT NULL default '0',
  `total` int(8) NOT NULL,
  `lang` varchar(2) NOT NULL default 'vi',
  `status` tinyint(1) NOT NULL default '1',
  `header_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `web_photo`
--

CREATE TABLE IF NOT EXISTS `web_photo` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(250) NOT NULL,
  `img` varchar(150) default NULL,
  `_order` int(3) NOT NULL default '0',
  `lang` varchar(2) NOT NULL default 'vi',
  `status` tinyint(1) NOT NULL default '1',
  `datetime` bigint(10) NOT NULL,
  `menu_id` varchar(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `web_picture`
--

CREATE TABLE IF NOT EXISTS `web_picture` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `img` varchar(15) NOT NULL,
  `datetime` bigint(10) NOT NULL,
  `_order` int(11) NOT NULL default '0',
  `_table` varchar(30) NOT NULL,
  `table_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `img` (`img`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=306 ;

--
-- Dumping data for table `web_picture`
--

INSERT INTO `web_picture` (`id`, `name`, `img`, `datetime`, `_order`, `_table`, `table_id`) VALUES
(266, 'Slider home page', '1452831018.jpg', 1452831018, 0, 'web_header', 17),
(267, 'Slider home page', '1452831020.jpg', 1452831018, 0, 'web_header', 17),
(268, 'Slider home page', '1452831021.jpg', 1452831018, 0, 'web_header', 17),
(269, 'Slider home page', '1452831022.jpg', 1452831018, 0, 'web_header', 17),
(270, 'Slider home page', '1452831023.jpg', 1452831018, 0, 'web_header', 17),
(274, 'Home yêu cầu dịch vụ tour du lịch', '1452913407.jpg', 1452913406, 0, 'web_header', 12),
(275, 'TOUR DU LỊCH TẾT 2016: ĐẢO BÌNH BA 2 NGÀY 2 ĐÊM', '1452925095.jpg', 1452925094, 0, 'web_header', 18),
(276, 'Tour: Hà Nội - Lào Cai - Sapa - Chợ Phiên Bắc Hà - Yên Tử - Hạ Long', '1452926016.jpg', 1452926015, 0, 'web_header', 19),
(277, 'TOUR DU LICH TẾT 2016: CẦN THƠ – SÓC TRĂNG – BẠC LIÊU – CÀ MAU', '1452928240.jpg', 1452928239, 0, 'web_header', 20),
(278, 'Du lịch Phú Quốc', '1452953051.jpg', 1452953050, 0, 'web_header', 35),
(279, 'Du lịch Singapore', '1452953066.jpg', 1452953065, 0, 'web_header', 56),
(280, 'Du lịch Campuchia', '1452953083.jpg', 1452953082, 0, 'web_header', 57),
(281, 'Du lịch Nha Trang', '1452953115.jpg', 1452953114, 0, 'web_header', 24),
(282, 'Tour du lịch Hồng Kông', '1452953150.jpg', 1452953149, 0, 'web_header', 58),
(283, 'Khách hàng 1', '1452953991.png', 1452953990, 0, 'web_header', 59),
(284, 'Khách hàng 2', '1452954006.jpg', 1452954005, 0, 'web_header', 60),
(285, 'Khách hàng 3', '1452954056.png', 1452954055, 0, 'web_header', 61),
(286, 'Khách hàng 4', '1452954070.jpg', 1452954069, 0, 'web_header', 62),
(287, 'Khách hàng 5', '1452954083.png', 1452954082, 0, 'web_header', 63),
(288, 'Tour du lich tết 2016 Cần Thơ - Sóc Trăng - Bạc Liêu - Cà Mau', '1453199146.jpg', 1453199145, 0, 'web_header', 20),
(289, 'Món ngon nên thử khi du lịch tết Nha Trang', '1453255531.jpg', 1453255530, 0, 'web_header', 67),
(290, '7 trái cây đặc sản không nên bỏ lỡ khi du lịch tết miền tây', '1453255977.jpg', 1453255976, 0, 'web_header', 68),
(291, 'Đón tết nguyên đán ở vùng đất tây nguyên đại ngàn', '1453259523.jpg', 1453259522, 0, 'web_header', 69),
(292, 'Du lịch tết Campuchia khám phá những ngồi đền Angkor huyền bí', '1453260438.jpg', 1453260437, 0, 'web_header', 70),
(293, 'Du lịch team building 2015: Tinh Thần Thép', '1453273417.jpg', 1453273416, 0, 'web_header', 71),
(294, 'Du lịch team building 2015: Tinh Thần Thép', '1453273425.jpg', 1453273424, 0, 'web_header', 71),
(295, 'Teambuilding huyền thoại Madagui', '1453273439.jpg', 1453273438, 0, 'web_header', 72),
(296, 'Teambuilding huyền thoại Madagui', '1453273443.jpg', 1453273443, 0, 'web_header', 72),
(297, 'Teambuilding huyền thoại Madagui', '1453273448.jpg', 1453273447, 0, 'web_header', 72),
(298, 'Du lịch Teambuilding Sức Mạnh Đam San', '1453273464.jpg', 1453273463, 0, 'web_header', 73),
(299, 'Du lịch team building tại Vịnh Hạ Long', '1453273659.jpg', 1453273658, 0, 'web_header', 74),
(300, 'Du lịch team building tại Vịnh Hạ Long', '1453273662.jpg', 1453273661, 0, 'web_header', 74),
(301, 'Teambuilding huyền thoại Madagui', '1453277883.jpg', 1453277882, 0, 'web_header', 72),
(302, 'Teambuilding huyền thoại Madagui', '1453277884.jpg', 1453277882, 0, 'web_header', 72),
(303, 'Teambuilding huyền thoại Madagui', '1453277885.jpg', 1453277882, 0, 'web_header', 72),
(304, 'Teambuilding huyền thoại Madagui', '1453277886.jpg', 1453277882, 0, 'web_header', 72),
(305, 'Teambuilding huyền thoại Madagui', '1453277887.jpg', 1453277882, 0, 'web_header', 72);

-- --------------------------------------------------------

--
-- Table structure for table `web_position`
--

CREATE TABLE IF NOT EXISTS `web_position` (
  `id` int(3) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `themes` varchar(100) NOT NULL,
  `_order` int(2) NOT NULL default '0',
  `type` tinyint(1) NOT NULL default '0',
  `status` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `web_position`
--

INSERT INTO `web_position` (`id`, `name`, `themes`, `_order`, `type`, `status`) VALUES
(1, 'Menu Top', '', 1, 1, 1),
(2, 'Menu chính', '', 2, 1, 1),
(3, 'Menu footer', '', 3, 1, 1),
(4, 'Menu bên trái', '', 4, 1, 1),
(5, 'Menu bên phải', '', 5, 1, 1),
(6, 'Box mạng xã hội', '', 6, 1, 1),
(7, 'Home tour nổi bật', '', 7, 2, 1),
(8, 'Home tour', '', 8, 2, 1),
(9, 'Home yêu cầu dịch vụ tour', '', 9, 2, 1),
(10, 'Home tại sao chọn chúng tôi', '', 10, 2, 1),
(11, 'Home team building', '', 11, 2, 1),
(12, 'Home các điểm du lịch', '', 12, 2, 1),
(13, 'Home khách hàng', '', 13, 2, 1),
(14, 'Support nhân viên sale', '', 14, 1, 1),
(15, 'Home cho thuê xe', '', 15, 2, 1),
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
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `content` text NOT NULL,
  `datetime` bigint(10) NOT NULL,
  `event_id` int(11) NOT NULL,
  `_table` varchar(20) NOT NULL,
  `table_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

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
  `id` int(3) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `title` varchar(60) NOT NULL,
  `url` varchar(200) NOT NULL,
  `_order` int(3) NOT NULL default '0',
  `lang` varchar(2) NOT NULL default 'vi',
  `status` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

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
  `id` int(3) NOT NULL auto_increment,
  `name` varchar(30) NOT NULL,
  `type` varchar(20) NOT NULL,
  `_table` varchar(20) NOT NULL,
  `url_img` varchar(100) NOT NULL,
  `url_img_thumb` varchar(100) NOT NULL,
  `_order` int(2) NOT NULL,
  `other` tinyint(1) NOT NULL default '1',
  `status` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `web_type`
--

INSERT INTO `web_type` (`id`, `name`, `type`, `_table`, `url_img`, `url_img_thumb`, `_order`, `other`, `status`) VALUES
(1, 'Trang chủ', 'home', '', 'public/images/catalog/', 'public/_thumbs/Images/catalog/', 1, 1, 1),
(2, 'Thông tin bài viết', 'articles', 'web_header', 'public/images/articles/', 'public/_thumbs/Images/articles/', 2, 1, 1),
(3, 'Tour du lịch', 'tour', 'web_header', 'public/images/articles/', 'public/_thumbs/Images/articles/', 3, 1, 1),
(4, 'Ý kiến', 'opinion', 'web_header', 'public/images/articles/', 'public/_thumbs/Images/articles/', 4, 1, 0),
(5, 'Giới thiệu', 'about', 'web_header', 'public/images/articles/', 'public/_thumbs/Images/articles/', 5, 1, 1),
(6, 'Team building', 'team_building', 'web_header', 'public/images/videos/', 'public/_thumbs/Images/videos/', 6, 1, 1),
(7, 'Hình ảnh', 'photos', 'web_header', '', '', 7, 1, 0),
(8, 'Tuyển dụng', 'recruit', 'web_header', '', '', 8, 1, 0),
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
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(60) NOT NULL,
  `address` varchar(250) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(60) NOT NULL,
  `birthday` bigint(10) NOT NULL,
  `gender` tinyint(1) default NULL,
  `img` varchar(150) NOT NULL,
  `salt` varchar(3) NOT NULL,
  `page` int(1) NOT NULL default '1',
  `username` char(32) NOT NULL,
  `password` char(32) NOT NULL,
  `random_key` varchar(255) default NULL,
  `date_expiration` bigint(10) NOT NULL,
  `lang` varchar(3) NOT NULL default 'vi',
  `datetime` bigint(10) NOT NULL,
  `status` tinyint(1) default '1',
  `group_id` int(1) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=46 ;

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
  `id` int(2) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `_order` int(1) NOT NULL default '0',
  `status` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

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
  `id` int(11) NOT NULL auto_increment,
  `ip_address` varchar(20) NOT NULL,
  `login_number` int(2) NOT NULL,
  `disable_date` bigint(10) NOT NULL,
  `datetime` bigint(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `web_users_lock_ip`
--

INSERT INTO `web_users_lock_ip` (`id`, `ip_address`, `login_number`, `disable_date`, `datetime`) VALUES
(6, '::1', 2, 0, 1453786968),
(7, '115.78.128.150', 2, 0, 1456542242);

-- --------------------------------------------------------

--
-- Table structure for table `web_users_login`
--

CREATE TABLE IF NOT EXISTS `web_users_login` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(60) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip_address` varchar(20) NOT NULL,
  `datetime` bigint(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `web_users_reset`
--

CREATE TABLE IF NOT EXISTS `web_users_reset` (
  `id` int(9) NOT NULL auto_increment,
  `name` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `ip_address` varchar(20) NOT NULL,
  `_key` char(10) NOT NULL,
  `datetime` bigint(10) NOT NULL,
  `status` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `web_users_role`
--

CREATE TABLE IF NOT EXISTS `web_users_role` (
  `id` int(11) NOT NULL auto_increment,
  `action_view` tinyint(1) NOT NULL default '1',
  `action_create` tinyint(1) NOT NULL default '1',
  `action_edit` tinyint(1) default '1',
  `action_delete` tinyint(1) NOT NULL default '1',
  `admin_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

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
