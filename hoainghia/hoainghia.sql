-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2015 at 11:27 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hoainghia`
--

-- --------------------------------------------------------

--
-- Table structure for table `web_admin`
--

CREATE TABLE IF NOT EXISTS `web_admin` (
`id` int(3) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` varchar(30) NOT NULL,
  `table` varchar(20) NOT NULL,
  `parameter` varchar(100) NOT NULL DEFAULT '/',
  `file` varchar(20) NOT NULL,
  `img` varchar(150) DEFAULT NULL,
  `order` int(3) DEFAULT '0',
  `other` tinyint(1) DEFAULT '0',
  `ajax` varchar(100) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_admin`
--

INSERT INTO `web_admin` (`id`, `name`, `url`, `table`, `parameter`, `file`, `img`, `order`, `other`, `ajax`, `status`) VALUES
(1, 'Trang chủ', 'home', '', '', 'home', 'icon-home.jpg', 1, 0, '0', 1),
(2, 'Cấu hình website', 'config', 'web_config', '', 'web_config', 'icon-cau-hinh.jpg', 2, 1, '0', 1),
(3, 'Danh mục menu', 'listmenu', 'web_header', '?properties=1', 'header_menu', 'icon-menu.jpg', 3, 0, '0', 0),
(4, 'Thông tin, bài viết', 'article', 'web_header', '?properties=2&type_id=2', 'header_article', 'icon-info.jpg', 4, 0, '0', 0),
(5, 'Sản phẩm', 'product', 'web_header', '?properties=2&type_id=3', 'web_product', 'icon-product.jpg', 5, 0, '0', 0),
(6, 'Thư viện ảnh', 'photos', 'web_photo', '', 'web_photo', 'icon-thu-vien-anh.jpg', 7, 0, '0', 0),
(7, 'Thư viện video', 'video', 'web_header', '?properties=2&type_id=6', 'web_video', 'icon-thu-vien-video.jpg', 8, 0, '0', 0),
(8, 'Slider & banner', 'sliderbanner', 'web_header', '?properties=2&type_id=16', 'header_slider', 'icon-slider-banner.jpg', 9, 1, '0', 0),
(9, 'DS Tỉnh - Thành', 'listcity', 'web_listcity', '', 'web_listcity', 'icon-city.jpg', 20, 0, '0', 1),
(10, 'DS Quận - Huyện', 'listdistrict', 'web_listdistrict', '', 'web_listdistrict', 'icon-districts.jpg', 21, 1, '0', 1),
(11, 'Đơn đặt hàng', 'order', 'web_order', '', 'web_order', 'icon-order.jpg', 22, 0, '<span id="web_product_order" class="ajax_thongtin"></span>', 0),
(12, 'Đơn đặt hàng chi tiết', 'order_detail', 'web_order_detail', '', 'web_order_detail', 'icon-order-detail.jpg', 23, 1, '0', 0),
(13, 'Menu admin', 'web_admin', 'web_admin', '', 'web_admin', 'icon-item.jpg', 50, 0, '0', 1),
(14, 'Danh sách ngôn ngữ', 'language', 'web_language', '', 'web_language', 'icon-item.jpg', 51, 0, '0', 1),
(15, 'Vị trí thông tin', 'web_position', 'web_position', '', 'web_position', 'icon-item.jpg', 54, 0, '0', 1),
(16, 'Biến môi trường', 'languagevar', 'web_language_var', '', 'web_language_var', 'icon-item.jpg', 52, 0, '0', 1),
(17, 'Group user', 'users_group', 'web_users_group', '', 'web_users_group', 'icon-item.jpg', 55, 1, '0', 1),
(18, 'Add tags keyword', 'web_tags', 'web_tags', '', 'web_tags', 'icon-item.jpg', 89, 0, '0', 1),
(19, 'Dịch vụ', 'services', 'web_header', '?properties=2&type_id=4', 'web_services', 'icon-item.jpg', 6, 0, '0', 0),
(20, 'Loại thông tin', 'web_type', 'web_type', '', 'web_type', 'icon-item.jpg', 53, 0, '0', 1),
(21, 'Liên hệ trực tuyến', 'web_contact', 'web_contact', '', 'web_contact', 'icon-lien-he.jpg', 90, 0, '1', 1),
(22, 'Event logs', 'web_logs', 'web_logs', '', 'web_logs', 'icon-logs.jpg', 91, 0, '0', 1),
(23, 'Tài khoản', 'web_users', 'web_users', '', 'web_users', 'icon-account.jpg', 100, 0, '0', 1),
(24, 'Thông tin tài khoản', 'user', 'account', '?infomation=1', 'account', 'icon-item.jpg', 99, 0, '0', 1),
(25, 'Web Header', 'web_header', 'web_header', '', 'web_header', 'icon-item.jpg', 92, 0, '0', 1),
(26, 'Công trình thẩm tra', 'construction', 'web_construction', '', 'web_construction', 'icon-construction.jpg', 11, 0, '0', 1),
(27, 'Thanh toán', 'payment', 'web_payment', '', 'web_payment', 'icon-payment.jpg', 12, 0, '0', 1),
(28, 'Tra cứu thanh toán', 'checkpayment', 'web_payment', '', 'web_paymentcheck', 'icon-tra-cuu-hoc-phi.jpg', 13, 1, '0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_config`
--

CREATE TABLE IF NOT EXISTS `web_config` (
`id` int(3) NOT NULL,
  `name` varchar(30) NOT NULL,
  `name_var` varchar(30) NOT NULL,
  `value` varchar(250) NOT NULL,
  `order` int(3) NOT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_config`
--

INSERT INTO `web_config` (`id`, `name`, `name_var`, `value`, `order`, `lang`, `status`) VALUES
(5, 'Số tin &#47; trang', 'limit_1', '5', 10, 'vi', 1),
(6, 'Số SP / trang', 'limit_2', '12', 11, 'vi', 1),
(7, 'Số photo / trang', 'limit_3', '18', 12, 'vi', 1),
(8, 'Số video / trang', 'limit_4', '10', 13, 'vi', 1),
(9, 'Copyright', 'copyright', 'Copyright © 2015 by iAppsCode.Com', 6, 'vi', 1),
(10, 'Email', 'email', 'hieunhan112@gmail.com', 5, 'vi', 1),
(11, 'Điện thoại', 'tel', '0938 27 27 35', 3, 'vi', 1),
(12, 'Hotline', 'hotline', '0938 27 27 35 | 0988 388 003', 7, 'vi', 1),
(13, 'Tên viết tắt', 'name', 'iAppsCode', 8, 'vi', 1),
(14, 'Fax', 'fax', '+84 3765 2055', 4, 'vi', 0),
(15, 'Địa chỉ', 'address', 'Số 9&#47;9 Đường 3A, Khu Phố 21, P.Bình Hưng Hòa A, Q.Bình Tân', 2, 'vi', 1),
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
(27, 'Tên trang website', 'sitename', 'Dịch vụ thiết kế website iAppsCode', 1, 'vi', 1),
(28, 'Site name', 'sitename', 'Dịch vụ thiết kế website iAppsCode', 1, 'en', 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_construction`
--

CREATE TABLE IF NOT EXISTS `web_construction` (
`id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `code` varchar(20) NOT NULL,
  `date_examine` bigint(10) NOT NULL,
  `provisional_costs` int(11) NOT NULL,
  `investor` varchar(100) NOT NULL,
  `notes` varchar(200) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `datetime` bigint(10) NOT NULL,
  `lang` varchar(2) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `city_id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_construction`
--

INSERT INTO `web_construction` (`id`, `name`, `code`, `date_examine`, `provisional_costs`, `investor`, `notes`, `type`, `datetime`, `lang`, `status`, `city_id`, `district_id`) VALUES
(1, 'Công trình AAA', 'HN01', 1446364320, 200000000, 'Huyện Thủ Thừa', 'cần theo dõi', 1, 1447058392, 'vi', 1, 35, 356),
(2, 'Công trình BBB', 'HN02', 1446453300, 100000000, 'Huyện Châu Thành', '', 1, 1447058389, 'vi', 1, 35, 346),
(3, 'Công trình CCC', 'HN03', 1446539760, 300000000, 'Huyện Bến Lức', '', 1, 1447058386, 'vi', 1, 35, 341),
(4, 'Công trình DDD', 'HN04', 1446626460, 500000000, 'TP.Tân An', '', 1, 1447058507, 'vi', 1, 35, 350);

-- --------------------------------------------------------

--
-- Table structure for table `web_contact`
--

CREATE TABLE IF NOT EXISTS `web_contact` (
`id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `address` varchar(200) NOT NULL,
  `message` text NOT NULL,
  `datetime` bigint(10) NOT NULL,
  `ip_address` varchar(20) NOT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `web_content`
--

CREATE TABLE IF NOT EXISTS `web_content` (
`id` int(11) NOT NULL,
  `arr_img` varchar(350) NOT NULL,
  `content` text NOT NULL,
  `more` varchar(500) DEFAULT NULL,
  `price_cost` varchar(10) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL,
  `header_id` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_content`
--

INSERT INTO `web_content` (`id`, `arr_img`, `content`, `more`, `price_cost`, `price`, `header_id`) VALUES
(79, '', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla.</p>\n\n<p>Aenean dictum lacinia tortor. Nunc iaculis, nibh non iaculis aliquam, orci felis euismod neque, sed ornare massa mauris sed velit. Nulla pretium mi et risus. Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim.</p>\n\n<p>Sed tortor. Curabitur molestie. Duis velit augue, condimentum at, ultrices a, luctus ut, orci. Donec pellentesque egestas eros. Integer cursus, augue in cursus faucibus, eros pede bibendum sem, in tempus tellus justo quis ligula.</p>\n\n<p>Etiam eget tortor. Vestibulum rutrum, est ut placerat elementum, lectus nisl aliquam velit, tempor aliquam eros nunc nonummy metus. In eros metus, gravida a, gravida sed, lobortis id, turpis. Ut ultrices, ipsum at venenatis fringilla, sem nulla lacinia tellus, eget aliquet turpis mauris non enim.</p>\n\n<p>Nam turpis. Suspendisse lacinia. Curabitur ac tortor ut ipsum egestas elementum. Nunc imperdiet gravida mauris.</p>\n\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla.</p>\n\n<p>Aenean dictum lacinia tortor. Nunc iaculis, nibh non iaculis aliquam, orci felis euismod neque, sed ornare massa mauris sed velit. Nulla pretium mi et risus. Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim.</p>\n\n<p>Sed tortor. Curabitur molestie. Duis velit augue, condimentum at, ultrices a, luctus ut, orci. Donec pellentesque egestas eros. Integer cursus, augue in cursus faucibus, eros pede bibendum sem, in tempus tellus justo quis ligula.</p>\n\n<p>Etiam eget tortor. Vestibulum rutrum, est ut placerat elementum, lectus nisl aliquam velit, tempor aliquam eros nunc nonummy metus. In eros metus, gravida a, gravida sed, lobortis id, turpis. Ut ultrices, ipsum at venenatis fringilla, sem nulla lacinia tellus, eget aliquet turpis mauris non enim.</p>\n\n<p>Nam turpis. Suspendisse lacinia. Curabitur ac tortor ut ipsum egestas elementum. Nunc imperdiet gravida mauris.</p>\n', '', '', '', 83),
(80, '1446108284.jpg,', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla.</p>\n\n<p>Aenean dictum lacinia tortor. Nunc iaculis, nibh non iaculis aliquam, orci felis euismod neque, sed ornare massa mauris sed velit. Nulla pretium mi et risus. Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim.</p>\n\n<p>Sed tortor. Curabitur molestie. Duis velit augue, condimentum at, ultrices a, luctus ut, orci. Donec pellentesque egestas eros. Integer cursus, augue in cursus faucibus, eros pede bibendum sem, in tempus tellus justo quis ligula.</p>\n\n<p>Etiam eget tortor. Vestibulum rutrum, est ut placerat elementum, lectus nisl aliquam velit, tempor aliquam eros nunc nonummy metus. In eros metus, gravida a, gravida sed, lobortis id, turpis. Ut ultrices, ipsum at venenatis fringilla, sem nulla lacinia tellus, eget aliquet turpis mauris non enim.</p>\n\n<p>Nam turpis. Suspendisse lacinia. Curabitur ac tortor ut ipsum egestas elementum. Nunc imperdiet gravida mauris.</p>\n\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla.</p>\n\n<p>Aenean dictum lacinia tortor. Nunc iaculis, nibh non iaculis aliquam, orci felis euismod neque, sed ornare massa mauris sed velit. Nulla pretium mi et risus. Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim.</p>\n\n<p>Sed tortor. Curabitur molestie. Duis velit augue, condimentum at, ultrices a, luctus ut, orci. Donec pellentesque egestas eros. Integer cursus, augue in cursus faucibus, eros pede bibendum sem, in tempus tellus justo quis ligula.</p>\n\n<p>Etiam eget tortor. Vestibulum rutrum, est ut placerat elementum, lectus nisl aliquam velit, tempor aliquam eros nunc nonummy metus. In eros metus, gravida a, gravida sed, lobortis id, turpis. Ut ultrices, ipsum at venenatis fringilla, sem nulla lacinia tellus, eget aliquet turpis mauris non enim.</p>\n\n<p>Nam turpis. Suspendisse lacinia. Curabitur ac tortor ut ipsum egestas elementum. Nunc imperdiet gravida mauris.</p>\n', '', '', '', 82),
(81, '', '<p>Quảng cáo Google - Dịch vụ, giải pháp quảng cáo Google Adwords chuyên nghiệp, hiệu quả. Quảng cáo Google gia tăng doanh số bán hàng và thương hiệu.</p>', '', '', '', 86);

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
  `order` int(5) NOT NULL DEFAULT '0',
  `datetime` bigint(10) NOT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `properties` tinyint(1) NOT NULL DEFAULT '0',
  `type_id` int(2) NOT NULL,
  `position_id` varchar(20) DEFAULT NULL,
  `menu_id` varchar(20) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_header`
--

INSERT INTO `web_header` (`id`, `name`, `name_alias`, `url`, `img`, `title`, `description`, `tags`, `code`, `parent`, `order`, `datetime`, `lang`, `status`, `properties`, `type_id`, `position_id`, `menu_id`) VALUES
(1, 'Trang chủ', 'trang-chu', '', '', 'Title trang chủ', 'Des trang chủ', 'key trang chủ', NULL, 0, 20, 1442376840, 'vi', 1, 1, 1, ',2,', NULL),
(2, 'Giới thiệu', 'gioithieu', '', '', 'Giới thiệu', 'Giới thiệu', 'Giới thiệu,gioi thieu', NULL, 0, 11, 1442290500, 'vi', 1, 1, 2, ',1,', NULL),
(3, 'Tin tức', 'tintuc', '', '', 'Tin tức', 'Tin tức', 'tin tức,tin tuc', NULL, 0, 12, 1442290680, 'vi', 1, 1, 2, ',1,', NULL),
(4, 'Thiết kế web', 'thietkeweb', '', '', 'Thiết kế website', 'Thiết kế website', 'thiết kế web', NULL, 0, 21, 1442290680, 'vi', 1, 1, 2, ',2,', NULL),
(5, 'Quảng cáo Google', 'quangcaogoogle', '', '', 'Quảng cáo Google', 'Quảng cáo Google', 'quảng cáo google,quang cao google', NULL, 0, 23, 1442290740, 'vi', 1, 1, 2, ',2,', NULL),
(6, 'Liên hệ', 'lienhe', '', '', 'Liên hệ', 'des', 'Liên hệ', '', 0, 14, 1442292480, 'vi', 1, 1, 17, ',1,', ''),
(65, 'Thiết kế website chuyên nghiệp', 'test-slider', 'javascript:;', '1445512661.png', 'Test slider', 'Sáng tạo không ngừng nghỉ, ý tưởng luôn đổi mới, quy trình chuẩn hóa quốc tế. Nỗ lực vươn tới vị trí những công ty thiết kế web hàng đầu Việt Nam.', 'test slider', '', 0, 0, 1445421480, 'vi', 1, 2, 16, ',16,', ',1,'),
(83, 'Quảng cáo Google', 'quang-cao-google-gia-tang-doanh-so-ban-hang', '', '1445654308.png', 'Quảng cáo Google gia tăng doanh số bán hàng.', 'Quảng cáo Google - Dịch vụ, giải pháp quảng cáo Google Adwords chuyên nghiệp, hiệu quả. Quảng cáo Google gia tăng doanh số bán hàng và thương hiệu.', 'quảng cáo google,gia tăng doanh số bán hàng,quang cao google,gia tang doanh so ban hang', '', 0, 0, 1445591700, 'vi', 1, 2, 2, '', ',84,4,5,'),
(67, 'Phát triển web (SEO Google)', 'phattrienweb-seogoogle', '', '', 'Phát triển web (SEO Google)', 'Phát triển web (SEO Google)', 'phát triển web seo google', NULL, 0, 24, 1445482860, 'vi', 1, 1, 2, ',2,', NULL),
(68, 'Hosting', 'hosting', '', '', 'Hosting', 'Hosting', 'hosting', NULL, 0, 25, 1445482920, 'vi', 1, 1, 2, ',2,', NULL),
(69, 'Tên miền', 'tenmien', '', '', 'Tên miền', 'Tên miền', 'tên miền', NULL, 0, 26, 1445482980, 'vi', 1, 1, 2, ',2,', NULL),
(70, 'Apps', 'apps', '', '', 'Apps', 'Apps Facebook', 'apps', NULL, 0, 22, 1445483160, 'vi', 1, 1, 2, ',2,', NULL),
(71, 'Kiến thức', 'kienthuc', '', '', 'Kiến thức', 'Kiến thức', 'kiến thức', NULL, 0, 13, 1445483460, 'vi', 1, 1, 2, ',1,', NULL),
(72, 'Thiết kế lập trình website', '', 'javascript:;', '1445512644.png', '', 'Sáng tạo không ngừng nghỉ, ý tưởng luôn đổi mới, quy trình chuẩn hóa quốc tế. Nỗ lực vươn tới vị trí những công ty thiết kế web hàng đầu Việt Nam.', '', NULL, 0, 2, 1445510100, 'vi', 1, 2, 16, ',16,', ',1,'),
(73, 'Home', 'home', '', '', 'Home', 'Description', 'keyword', NULL, 0, 0, 1445570760, 'en', 1, 1, 1, ',2,', NULL),
(82, 'Dịch vụ thiết kế website', 'dich-vu-thiet-ke-website-iappscode', '', '1446108284.jpg', 'Dịch vụ thiết kế website iAppsCode', 'Thiết kế web chuyên nghiệp, uy tín theo chuẩn SEO, sử dụng công nghệ Mobile Responsive tương thích Di động, Giá rẻ.', 'dịch vụ thiết kế website,dich vu thiet ke website', '', 0, 0, 1445591220, 'vi', 1, 2, 2, NULL, ',84,4,'),
(86, 'Công ty thiết kế website chuyên nghiệp, chuẩn SEO', 'cong-ty-thiet-ke-website-chuyen-nghiep-chuan-seo', '', '', 'Công ty thiết kế website chuyên nghiệp, chuẩn SEO', 'Sáng tạo không ngừng nghỉ, ý tưởng luôn đổi mới, quy trình chuẩn hóa quốc tế. Công ty thiết kế website chuyên nghiệp, chuẩn SEO', 'công ty thiết kế website chuyên nghiệp chuẩn seo', '', 0, 0, 1445655480, 'vi', 1, 2, 2, '', ',85,'),
(84, 'Các dịch vụ trang chủ', 'cac-dich-vu-trang-chu', '', '', 'Các dịch vụ trang chủ', 'Các dịch vụ trang chủ', 'các dịch vụ trang chủ', NULL, 0, 1, 1445652540, 'vi', 1, 1, 2, ',11,', NULL),
(85, 'Giới thiệu trang chủ', 'gioi-thieu-trang-chu', '', '', 'Giới thiệu trang chủ', 'Giới thiệu trang chủ', 'giới thiệu trang chủ', NULL, 0, 2, 1445652600, 'vi', 1, 1, 2, ',7,', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `web_language`
--

CREATE TABLE IF NOT EXISTS `web_language` (
`id` int(3) NOT NULL,
  `name` varchar(20) NOT NULL,
  `code` varchar(10) NOT NULL,
  `order` int(3) DEFAULT '0',
  `status` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_language`
--

INSERT INTO `web_language` (`id`, `name`, `code`, `order`, `status`) VALUES
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
  `order` int(3) NOT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_language_var`
--

INSERT INTO `web_language_var` (`id`, `name`, `value`, `order`, `lang`, `status`) VALUES
(1, 'viewmore', 'Xem chi tiết', 0, 'vi', 1),
(2, 'address', 'Địa chỉ', 0, 'vi', 1),
(3, 'tel', 'Điện thoại', 0, 'vi', 1),
(4, 'viewmore', 'View more', 0, 'en', 1),
(5, 'address', 'Address', 0, 'en', 1),
(6, 'tel', 'Phone', 0, 'en', 1),
(7, 'name', 'Họ & tên', 0, 'vi', 1),
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
(18, 'other_post', 'Other post', 0, 'en', 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_listcity`
--

CREATE TABLE IF NOT EXISTS `web_listcity` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `deliverycosts` int(8) NOT NULL DEFAULT '0',
  `order` int(2) DEFAULT '0',
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_listcity`
--

INSERT INTO `web_listcity` (`id`, `name`, `deliverycosts`, `order`, `lang`, `status`) VALUES
(3, 'Hồ Chí Minh', 0, -1, 'vi', 0),
(2, 'Hà Nội', 0, -1, 'vi', 0),
(10, 'Yên Bái', 0, 0, 'vi', 0),
(11, 'Vĩnh Phúc', 0, 0, 'vi', 0),
(12, 'Vĩnh Long', 0, 0, 'vi', 0),
(13, 'Tuyên Quang', 0, 0, 'vi', 0),
(14, 'Trà Vinh', 0, 0, 'vi', 0),
(15, 'Tiền Giang', 0, 0, 'vi', 0),
(16, 'Thừa Thiên Huế', 0, 0, 'vi', 0),
(17, 'Thanh Hóa', 0, 0, 'vi', 0),
(18, 'Thái Nguyên', 0, 0, 'vi', 0),
(19, 'Thái Bình', 0, 0, 'vi', 0),
(21, 'Tây Ninh', 0, 0, 'vi', 0),
(22, 'Sơn La', 0, 0, 'vi', 0),
(23, 'Sóc Trăng', 0, 0, 'vi', 0),
(24, 'Quảng Trị', 0, 0, 'vi', 0),
(25, 'Quảng Ninh', 0, 0, 'vi', 0),
(26, 'Quảng Ngãi', 0, 0, 'vi', 0),
(27, 'Quảng Nam', 0, 0, 'vi', 0),
(28, 'Quảng Bình', 0, 0, 'vi', 0),
(29, 'Phú Yên', 0, 0, 'vi', 0),
(30, 'Phú Thọ', 0, 0, 'vi', 0),
(31, 'Ninh Thuận', 0, 0, 'vi', 0),
(32, 'Ninh Bình', 0, 0, 'vi', 0),
(33, 'Nghệ An', 0, 0, 'vi', 0),
(34, 'Nam Định', 0, 0, 'vi', 0),
(35, 'Long An', 0, -1, 'vi', 1),
(36, 'Lào Cai', 0, 0, 'vi', 0),
(37, 'Lạng Sơn', 0, 0, 'vi', 0),
(38, 'Lâm Đồng', 0, 0, 'vi', 0),
(39, 'Lai Châu', 0, 0, 'vi', 0),
(40, 'Kon Tum', 0, 0, 'vi', 0),
(41, 'Kiên Giang', 0, 0, 'vi', 0),
(42, 'Khánh Hòa', 0, 0, 'vi', 0),
(43, 'Hưng Yên', 0, 0, 'vi', 0),
(44, 'Hòa Bình', 0, 0, 'vi', 0),
(45, 'Hậu Giang', 0, 0, 'vi', 0),
(46, 'Hải Dương', 0, 0, 'vi', 0),
(47, 'Hà Tĩnh', 0, 0, 'vi', 0),
(49, 'Hà Nam ', 0, 0, 'vi', 0),
(50, 'Hà Giang', 0, 0, 'vi', 0),
(51, 'Gia Lai', 0, 0, 'vi', 0),
(52, 'Đồng Tháp', 0, 0, 'vi', 0),
(53, 'Đồng Nai', 0, 0, 'vi', 0),
(54, 'Điện Biên', 0, 0, 'vi', 0),
(55, 'Đắk Nông', 0, 0, 'vi', 0),
(56, 'Đắk Lắk', 0, 0, 'vi', 0),
(57, 'Cao Bằng', 0, 0, 'vi', 0),
(58, 'Cà Mau', 0, 0, 'vi', 0),
(59, 'Bình Thuận', 0, 0, 'vi', 0),
(60, 'Bình Phước', 0, 0, 'vi', 0),
(61, 'Bình Dương', 0, 0, 'vi', 0),
(62, 'Bình Định', 0, 0, 'vi', 0),
(63, 'Bến Tre', 0, 0, 'vi', 0),
(64, 'Bắc Ninh', 0, 0, 'vi', 0),
(65, 'Bạc Liêu', 0, 0, 'vi', 0),
(66, 'Bắc Kạn', 0, 0, 'vi', 0),
(67, 'Bắc Giang', 0, 0, 'vi', 0),
(68, 'Bà Rịa - Vũng Tàu', 0, 0, 'vi', 0),
(69, 'An Giang', 0, 0, 'vi', 0),
(70, 'Hải Phòng', 0, 0, 'vi', 0),
(71, 'Đà Nẵng', 0, 0, 'vi', 0),
(72, 'Cần Thơ', 0, 0, 'vi', 0);

-- --------------------------------------------------------

--
-- Table structure for table `web_listdistrict`
--

CREATE TABLE IF NOT EXISTS `web_listdistrict` (
`id` int(3) NOT NULL,
  `name` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `deliverycosts` int(8) NOT NULL DEFAULT '0',
  `city_id` int(11) NOT NULL,
  `order` int(3) DEFAULT '0',
  `lang` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=901 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `web_listdistrict`
--

INSERT INTO `web_listdistrict` (`id`, `name`, `deliverycosts`, `city_id`, `order`, `lang`, `status`) VALUES
(127, 'Quận 1', 0, 3, 1, 'vi', 0),
(128, 'Quận 2', 0, 3, 2, 'vi', 0),
(129, 'Quận 3', 0, 3, 3, 'vi', 0),
(130, 'Quận 4', 0, 3, 4, 'vi', 0),
(131, 'Quận 5', 0, 3, 5, 'vi', 0),
(132, 'Quận 6', 0, 3, 6, 'vi', 0),
(133, 'Quận 7', 0, 3, 7, 'vi', 0),
(134, 'Quận 8', 0, 3, 8, 'vi', 0),
(135, 'Quận 9', 0, 3, 9, 'vi', 0),
(136, 'Quận 10', 0, 3, 10, 'vi', 0),
(137, 'Quận 11', 0, 3, 11, 'vi', 0),
(138, 'Quận 12', 0, 3, 12, 'vi', 0),
(139, 'Quận Phú Nhuận', 0, 3, 13, 'vi', 0),
(140, 'Quận Bình Thạnh', 0, 3, 14, 'vi', 0),
(141, 'Quận Tân Bình', 0, 3, 15, 'vi', 0),
(142, 'Quận Tân Phú', 0, 3, 16, 'vi', 0),
(143, 'Quận Gò Vấp', 0, 3, 17, 'vi', 0),
(144, 'Quận Thủ Đức', 0, 3, 18, 'vi', 0),
(145, 'Quận Bình Tân', 0, 3, 19, 'vi', 0),
(146, 'Huyện Bình Chánh', 10000, 3, 20, 'vi', 0),
(147, 'Huyện Củ Chi', 0, 3, 21, 'vi', 0),
(149, 'Huyện Nhà Bè', 0, 3, 22, 'vi', 0),
(150, 'Huyện Cần Giờ', 0, 3, 23, 'vi', 0),
(856, 'Huyện Hóc Môn', 5000, 3, 24, 'vi', 0),
(113, 'Từ Liêm', 10000, 2, 1, 'vi', 0),
(114, 'Thanh Trì', 0, 2, 2, 'vi', 0),
(115, 'Sóc Sơn', 0, 2, 3, 'vi', 0),
(116, 'Gia Lâm', 0, 2, 4, 'vi', 0),
(117, 'Đông Anh', 0, 2, 5, 'vi', 0),
(118, 'Long Biên', 0, 2, 6, 'vi', 0),
(119, 'Hoàng Mai', 0, 2, 7, 'vi', 0),
(120, 'Cầu Giấy', 0, 2, 8, 'vi', 0),
(121, 'Tây Hồ', 0, 2, 9, 'vi', 0),
(122, 'Thanh Xuân', 0, 2, 10, 'vi', 0),
(123, 'Hai Bà Trưng', 0, 2, 11, 'vi', 0),
(124, 'Đống Đa', 0, 2, 12, 'vi', 0),
(125, 'Ba Đình', 0, 2, 13, 'vi', 0),
(126, 'Hoàn Kiếm', 0, 2, 14, 'vi', 0),
(450, 'Mê Linh', 0, 2, 15, 'vi', 0),
(840, 'Vân Điền', 0, 2, 16, 'vi', 0),
(857, 'Ba Vì', 0, 2, 17, 'vi', 0),
(858, 'Chương Mỹ', 0, 2, 18, 'vi', 0),
(859, 'Đan Phượng', 0, 2, 19, 'vi', 0),
(860, 'Hà Đông', 0, 2, 20, 'vi', 0),
(861, 'Hoài Đức', 0, 2, 21, 'vi', 0),
(862, 'Mỹ Đức', 0, 2, 22, 'vi', 0),
(863, 'Phú Xuyên', 0, 2, 23, 'vi', 0),
(864, 'Phúc Thọ', 0, 2, 24, 'vi', 0),
(865, 'Quốc Oai', 0, 2, 25, 'vi', 0),
(866, 'Sơn Tây', 0, 2, 26, 'vi', 0),
(867, 'Thạch Thất', 0, 2, 27, 'vi', 0),
(868, 'Thanh Oai', 0, 2, 28, 'vi', 0),
(869, 'Thường Tín', 0, 2, 29, 'vi', 0),
(871, 'Ứng Hòa', 0, 2, 30, 'vi', 0),
(626, 'Lục Yên', 0, 10, 1, 'vi', 0),
(627, 'Mù Căng Chải', 0, 10, 2, 'vi', 0),
(628, 'Trạm Tấu', 0, 10, 3, 'vi', 0),
(629, 'Trấn Yên', 0, 10, 4, 'vi', 0),
(630, 'Văn Chấn', 0, 10, 5, 'vi', 0),
(631, 'Văn Yên', 0, 10, 6, 'vi', 0),
(632, 'Yên Bái', 0, 10, 7, 'vi', 0),
(633, 'Yên Bình', 0, 10, 8, 'vi', 0),
(448, 'Bình Xuyên', 0, 11, 1, 'vi', 0),
(449, 'Lập Thạch', 0, 11, 2, 'vi', 0),
(451, 'Tam Dương', 0, 11, 3, 'vi', 0),
(452, 'Vĩnh Tường', 0, 11, 4, 'vi', 0),
(453, 'Vĩnh Yên', 0, 11, 5, 'vi', 0),
(454, 'Yên Lạc', 0, 11, 6, 'vi', 0),
(850, 'Phúc Yên', 0, 11, 7, 'vi', 0),
(853, 'Tam Đảo', 0, 11, 8, 'vi', 0),
(812, 'Bình Minh', 0, 12, 1, 'vi', 0),
(813, 'Long Hồ', 0, 12, 2, 'vi', 0),
(814, 'Mang Thít', 0, 12, 3, 'vi', 0),
(815, 'Tam Bình', 0, 12, 4, 'vi', 0),
(816, 'Trà Ôn', 0, 12, 5, 'vi', 0),
(817, 'Vĩnh Long', 0, 12, 6, 'vi', 0),
(818, 'Vũng Liêm', 0, 12, 7, 'vi', 0),
(620, 'Chiêm Hóa', 0, 13, 1, 'vi', 0),
(621, 'Hàm Yên', 0, 13, 2, 'vi', 0),
(622, 'Na Hang', 0, 13, 3, 'vi', 0),
(623, 'Sơn Dương', 0, 13, 4, 'vi', 0),
(624, 'Tuyên Quang', 0, 13, 5, 'vi', 0),
(625, 'Yên Sơn', 0, 13, 6, 'vi', 0),
(440, 'Càng Long', 0, 14, 1, 'vi', 0),
(441, 'Cầu Kè', 0, 14, 2, 'vi', 0),
(442, 'Cầu Ngang', 0, 14, 3, 'vi', 0),
(443, 'Châu Thành', 0, 14, 4, 'vi', 0),
(444, 'Duyên Hải', 0, 14, 5, 'vi', 0),
(445, 'Tiểu Cần', 0, 14, 6, 'vi', 0),
(446, 'Trà Cú', 0, 14, 7, 'vi', 0),
(447, 'Trà Vinh', 0, 14, 8, 'vi', 0),
(803, 'Cái Bè', 0, 15, 1, 'vi', 0),
(804, 'Cai Lậy', 0, 15, 2, 'vi', 0),
(805, 'Châu Thành', 0, 15, 3, 'vi', 0),
(806, 'Chợ Gạo', 0, 15, 4, 'vi', 0),
(807, 'Gò Công', 0, 15, 5, 'vi', 0),
(808, 'Gò Công Đông', 0, 15, 6, 'vi', 0),
(809, 'Gò Công Tây', 0, 15, 7, 'vi', 0),
(810, 'Mỹ Tho', 0, 15, 8, 'vi', 0),
(811, 'Tân Phước', 0, 15, 9, 'vi', 0),
(423, 'A Lưới', 0, 16, 1, 'vi', 0),
(424, 'Huế', 0, 16, 2, 'vi', 0),
(425, 'Hương Thủy', 0, 16, 3, 'vi', 0),
(426, 'Hương Trà', 0, 16, 4, 'vi', 0),
(427, 'Nam Đông', 0, 16, 5, 'vi', 0),
(428, 'Phong Điền', 0, 16, 6, 'vi', 0),
(429, 'Phú Lộc', 0, 16, 7, 'vi', 0),
(430, 'Phú Vang', 0, 16, 8, 'vi', 0),
(431, 'Quảng Điền', 0, 16, 9, 'vi', 0),
(776, 'Bá Thước', 0, 17, 1, 'vi', 0),
(777, 'Bỉm Sơn', 0, 17, 2, 'vi', 0),
(778, 'Cẩm Thủy', 0, 17, 3, 'vi', 0),
(779, 'Đông Sơn', 0, 17, 4, 'vi', 0),
(780, 'Hà Trung', 0, 17, 5, 'vi', 0),
(781, 'Hậu Lộc', 0, 17, 6, 'vi', 0),
(782, 'Hoằng Hóa', 0, 17, 7, 'vi', 0),
(783, 'Lang Chánh', 0, 17, 8, 'vi', 0),
(784, 'Mường Lát', 0, 17, 9, 'vi', 0),
(785, 'Nga Sơn', 0, 17, 10, 'vi', 0),
(786, 'Ngọc Lặc', 0, 17, 11, 'vi', 0),
(787, 'Như Thanh', 0, 17, 12, 'vi', 0),
(788, 'Như Xuân', 0, 17, 13, 'vi', 0),
(789, 'Nông Cống', 0, 17, 14, 'vi', 0),
(790, 'Quan Hóa', 0, 17, 15, 'vi', 0),
(791, 'Quan Sơn', 0, 17, 16, 'vi', 0),
(792, 'Quảng Xương', 0, 17, 17, 'vi', 0),
(793, 'Sầm Sơn', 0, 17, 18, 'vi', 0),
(794, 'Thạch Thành', 0, 17, 19, 'vi', 0),
(795, 'Thanh Hóa', 0, 17, 20, 'vi', 0),
(796, 'Thọ Xuân', 0, 17, 21, 'vi', 0),
(797, 'Thường Xuân', 0, 17, 22, 'vi', 0),
(798, 'Tĩnh Gia', 0, 17, 23, 'vi', 0),
(799, 'Thiệu Hóa', 0, 17, 24, 'vi', 0),
(800, 'Triệu Sơn', 0, 17, 25, 'vi', 0),
(801, 'Vĩnh Lộc', 0, 17, 26, 'vi', 0),
(802, 'Yên Định', 0, 17, 27, 'vi', 0),
(611, 'Đại Từ', 0, 18, 1, 'vi', 0),
(612, 'Định Hóa', 0, 18, 2, 'vi', 0),
(613, 'Đồng Hỷ', 0, 18, 3, 'vi', 0),
(614, 'Phổ Yên', 0, 18, 4, 'vi', 0),
(615, 'Phú Bình', 0, 18, 5, 'vi', 0),
(616, 'Phú Lương', 0, 18, 6, 'vi', 0),
(617, 'Sông Công', 0, 18, 7, 'vi', 0),
(618, 'Thái Nguyên', 0, 18, 8, 'vi', 0),
(619, 'Võ Nhai', 0, 18, 9, 'vi', 0),
(432, 'Đông Hưng', 0, 19, 1, 'vi', 0),
(433, 'Hưng Hà', 0, 19, 2, 'vi', 0),
(434, 'Kiến Xương', 0, 19, 3, 'vi', 0),
(435, 'Quỳnh Phụ', 0, 19, 4, 'vi', 0),
(436, 'Thái Bình', 0, 19, 5, 'vi', 0),
(437, 'Thái Thụy', 0, 19, 6, 'vi', 0),
(438, 'Tiền Hải', 0, 19, 7, 'vi', 0),
(439, 'Vũ Thư', 0, 19, 8, 'vi', 0),
(602, 'Bến Cầu', 0, 21, 1, 'vi', 0),
(603, 'Châu Thành', 0, 21, 2, 'vi', 0),
(604, 'Dương Minh Châu', 0, 21, 3, 'vi', 0),
(605, 'Gò Dầu', 0, 21, 4, 'vi', 0),
(606, 'Hòa Thành', 0, 21, 5, 'vi', 0),
(607, 'Tân Biên', 0, 21, 6, 'vi', 0),
(608, 'Tân Châu', 0, 21, 7, 'vi', 0),
(609, 'Tây Ninh', 0, 21, 8, 'vi', 0),
(610, 'Trảng Bàng', 0, 21, 9, 'vi', 0),
(766, 'Bắc Yên', 0, 22, 1, 'vi', 0),
(767, 'Mai Sơn', 0, 22, 2, 'vi', 0),
(768, 'Mộc Châu', 0, 22, 3, 'vi', 0),
(769, 'Muờng La', 0, 22, 4, 'vi', 0),
(770, 'Phù Yên', 0, 22, 5, 'vi', 0),
(771, 'Quỳnh Nhai', 0, 22, 6, 'vi', 0),
(772, 'Sơn La', 0, 22, 7, 'vi', 0),
(773, 'Sông Mã', 0, 22, 8, 'vi', 0),
(774, 'Thuận Châu', 0, 22, 9, 'vi', 0),
(775, 'Yên Châu', 0, 22, 10, 'vi', 0),
(874, 'Sốp Cộp', 0, 22, 11, 'vi', 0),
(595, 'Kế Sách', 0, 23, 1, 'vi', 0),
(596, 'Long Phú', 0, 23, 2, 'vi', 0),
(597, 'Mỹ Tú', 0, 23, 3, 'vi', 0),
(598, 'Mỹ Xuyên', 0, 23, 4, 'vi', 0),
(599, 'Sóc Trăng', 0, 23, 5, 'vi', 0),
(600, 'Thanh Trị', 0, 23, 6, 'vi', 0),
(601, 'Vĩnh Châu', 0, 23, 7, 'vi', 0),
(414, 'Cam Lộ', 0, 24, 1, 'vi', 0),
(415, 'Đa Krông', 0, 24, 2, 'vi', 0),
(416, 'Đông Hà', 0, 24, 3, 'vi', 0),
(417, 'Gio Linh', 0, 24, 4, 'vi', 0),
(418, 'Hải Lăng', 0, 24, 5, 'vi', 0),
(419, 'Hướng Hóa', 0, 24, 6, 'vi', 0),
(420, 'Quảng Trị', 0, 24, 7, 'vi', 0),
(421, 'Triệu Phong', 0, 24, 8, 'vi', 0),
(422, 'Vĩnh Linh', 0, 24, 9, 'vi', 0),
(753, 'Ba Chế', 0, 25, 1, 'vi', 0),
(754, 'Bình Liêu', 0, 25, 2, 'vi', 0),
(755, 'Cẩm Phả', 0, 25, 3, 'vi', 0),
(756, 'Cô Tô', 0, 25, 4, 'vi', 0),
(757, 'Đông Triều', 0, 25, 5, 'vi', 0),
(758, 'Hạ Long', 0, 25, 6, 'vi', 0),
(759, 'Hoành Bồ', 0, 25, 7, 'vi', 0),
(760, 'Móng Cái', 0, 25, 8, 'vi', 0),
(761, 'Quảng Hà', 0, 25, 9, 'vi', 0),
(762, 'Tiên Yên', 0, 25, 10, 'vi', 0),
(763, 'Uông Bí', 0, 25, 11, 'vi', 0),
(764, 'Vân Đồn', 0, 25, 12, 'vi', 0),
(765, 'Yên Hưng', 0, 25, 13, 'vi', 0),
(582, 'Ba Tơ', 0, 26, 1, 'vi', 0),
(583, 'Bình Sơn', 0, 26, 2, 'vi', 0),
(584, 'Đức Phổ', 0, 26, 3, 'vi', 0),
(585, 'Lý Sơn', 0, 26, 4, 'vi', 0),
(586, 'Minh Long', 0, 26, 5, 'vi', 0),
(587, 'Mộ Đức', 0, 26, 6, 'vi', 0),
(588, 'Nghĩa Hành', 0, 26, 7, 'vi', 0),
(589, 'Quãng Ngãi', 0, 26, 8, 'vi', 0),
(590, 'Sơn Hà', 0, 26, 9, 'vi', 0),
(591, 'Sơn Tây', 0, 26, 10, 'vi', 0),
(592, 'Sơn Tịnh', 0, 26, 11, 'vi', 0),
(593, 'Trà Bồng', 0, 26, 12, 'vi', 0),
(594, 'Tư Nghĩa', 0, 26, 13, 'vi', 0),
(400, 'Đại Lộc', 0, 27, 1, 'vi', 0),
(401, 'Điện Bàn', 0, 27, 2, 'vi', 0),
(402, 'Duy Xuyên', 0, 27, 3, 'vi', 0),
(403, 'Hiên', 0, 27, 4, 'vi', 0),
(404, 'Hiệp Đức', 0, 27, 5, 'vi', 0),
(405, 'Hội An', 0, 27, 6, 'vi', 0),
(406, 'Nam Giang', 0, 27, 7, 'vi', 0),
(407, 'Núi Thành', 0, 27, 8, 'vi', 0),
(408, 'Phước Sơn', 0, 27, 9, 'vi', 0),
(409, 'Quế Sơn', 0, 27, 10, 'vi', 0),
(410, 'Tam Kỳ', 0, 27, 11, 'vi', 0),
(411, 'Thăng Bình', 0, 27, 12, 'vi', 0),
(412, 'Tiên Phước', 0, 27, 13, 'vi', 0),
(413, 'Trà My', 0, 27, 14, 'vi', 0),
(747, 'Bố Trạch', 0, 28, 1, 'vi', 0),
(748, 'Đồng Hới', 0, 28, 2, 'vi', 0),
(749, 'Lệ Thủy', 0, 28, 3, 'vi', 0),
(750, 'Quảng Ninh', 0, 28, 4, 'vi', 0),
(751, 'Quảng Trạch', 0, 28, 5, 'vi', 0),
(752, 'Tuyên Hóa', 0, 28, 6, 'vi', 0),
(880, 'Minh Hóa', 0, 28, 7, 'vi', 0),
(576, 'Đồng Xuân', 0, 29, 1, 'vi', 0),
(577, 'Sơn Hòa', 0, 29, 2, 'vi', 0),
(578, 'Sông Cầu', 0, 29, 3, 'vi', 0),
(579, 'Sông Hinh', 0, 29, 4, 'vi', 0),
(580, 'Tuy An', 0, 29, 5, 'vi', 0),
(581, 'Tuy Hòa', 0, 29, 6, 'vi', 0),
(877, 'Đông Hòa', 0, 29, 7, 'vi', 0),
(878, 'Tây Hòa', 0, 29, 8, 'vi', 0),
(879, 'Phú Hòa', 0, 29, 9, 'vi', 0),
(388, 'Đoan Hùng', 0, 30, 1, 'vi', 0),
(389, 'Hạ Hòa', 0, 30, 2, 'vi', 0),
(390, 'Lâm Thao', 0, 30, 3, 'vi', 0),
(391, 'Phù Ninh', 0, 30, 4, 'vi', 0),
(392, 'Phú Thọ', 0, 30, 5, 'vi', 0),
(393, 'Sông Thao', 0, 30, 6, 'vi', 0),
(394, 'Tam Nông', 0, 30, 7, 'vi', 0),
(395, 'Thanh Ba', 0, 30, 8, 'vi', 0),
(396, 'Thanh Sơn', 0, 30, 9, 'vi', 0),
(397, 'Thanh Thủy', 0, 30, 10, 'vi', 0),
(398, 'Việt Trì', 0, 30, 11, 'vi', 0),
(399, 'Yên Lập', 0, 30, 12, 'vi', 0),
(875, 'Cẩm Khê', 0, 30, 13, 'vi', 0),
(876, 'Tân Sơn', 0, 30, 14, 'vi', 0),
(743, 'Ninh Hải', 0, 31, 1, 'vi', 0),
(744, 'Ninh Phước', 0, 31, 2, 'vi', 0),
(745, 'Ninh Sơn', 0, 31, 3, 'vi', 0),
(746, 'Phan Rang - Tháp Chàm', 0, 31, 4, 'vi', 0),
(568, 'Hoa Lư', 0, 32, 1, 'vi', 0),
(569, 'Kim Sơn', 0, 32, 2, 'vi', 0),
(571, 'Nho Quan', 0, 32, 3, 'vi', 0),
(572, 'Ninh Bình', 0, 32, 4, 'vi', 0),
(573, 'Tam Điệp', 0, 32, 5, 'vi', 0),
(574, 'Yên Khánh', 0, 32, 6, 'vi', 0),
(575, 'Yên Mô', 0, 32, 7, 'vi', 0),
(872, 'Gia Viễn', 0, 32, 8, 'vi', 0),
(369, 'Anh Sơn', 0, 33, 1, 'vi', 0),
(370, 'Con Cuông', 0, 33, 2, 'vi', 0),
(371, 'Cửa Lò', 0, 33, 3, 'vi', 0),
(372, 'Diễn Châu', 0, 33, 4, 'vi', 0),
(373, 'Đô Lương', 0, 33, 5, 'vi', 0),
(374, 'Hưng Nguyên', 0, 33, 6, 'vi', 0),
(375, 'Kỳ Sơn', 0, 33, 7, 'vi', 0),
(376, 'Nam Đàn', 0, 33, 8, 'vi', 0),
(377, 'Nghi Lộc', 0, 33, 9, 'vi', 0),
(378, 'Nghĩa Đàn', 0, 33, 10, 'vi', 0),
(379, 'Quế Phong', 0, 33, 11, 'vi', 0),
(380, 'Quỳ Châu', 0, 33, 12, 'vi', 0),
(381, 'Quỳ Hợp', 0, 33, 13, 'vi', 0),
(382, 'Quỳnh Lưu', 0, 33, 14, 'vi', 0),
(383, 'Tân Kỳ', 0, 33, 15, 'vi', 0),
(384, 'Thanh Chương', 0, 33, 16, 'vi', 0),
(385, 'Tương Dương', 0, 33, 17, 'vi', 0),
(386, 'Vinh', 0, 33, 18, 'vi', 0),
(387, 'Yên Thành', 0, 33, 19, 'vi', 0),
(883, 'Thái Hòa', 0, 33, 20, 'vi', 0),
(358, 'Giao Thủy', 0, 34, 1, 'vi', 0),
(360, 'Hải Hậu', 0, 34, 2, 'vi', 0),
(361, 'Mỹ Lộc', 0, 34, 3, 'vi', 0),
(362, 'Nam Định', 0, 34, 4, 'vi', 0),
(363, 'Nam Trực', 0, 34, 5, 'vi', 0),
(364, 'Nghĩa Hưng', 0, 34, 6, 'vi', 0),
(365, 'Trực Ninh', 0, 34, 7, 'vi', 0),
(366, 'Vụ Bản', 0, 34, 8, 'vi', 0),
(367, 'Xuân Trường', 0, 34, 9, 'vi', 0),
(368, 'Ý Yên', 0, 34, 10, 'vi', 0),
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
(306, 'Bắc Hà', 0, 36, 1, 'vi', 0),
(307, 'Bảo Thắng', 0, 36, 2, 'vi', 0),
(308, 'Bảo Yên', 0, 36, 3, 'vi', 0),
(309, 'Bát Xát', 0, 36, 4, 'vi', 0),
(310, 'Cam Đường', 0, 36, 5, 'vi', 0),
(311, 'Lào Cai', 0, 36, 6, 'vi', 0),
(312, 'Mường Khương', 0, 36, 7, 'vi', 0),
(313, 'Sa Pa', 0, 36, 8, 'vi', 0),
(314, 'Than Uyên', 0, 36, 9, 'vi', 0),
(315, 'Văn Bàn', 0, 36, 10, 'vi', 0),
(316, 'Xi Ma Cai', 0, 36, 11, 'vi', 0),
(328, 'Bắc Sơn', 0, 37, 1, 'vi', 0),
(329, 'Bình Gia', 0, 37, 2, 'vi', 0),
(330, 'Cao Lăng', 0, 37, 3, 'vi', 0),
(331, 'Cao Lộc', 0, 37, 4, 'vi', 0),
(332, 'Đình Lập', 0, 37, 5, 'vi', 0),
(333, 'Hữu Lũng', 0, 37, 6, 'vi', 0),
(334, 'Lạng Sơn', 0, 37, 7, 'vi', 0),
(336, 'Lộc Bình', 0, 37, 8, 'vi', 0),
(337, 'Tràng Định', 0, 37, 9, 'vi', 0),
(342, 'Văn Lãng', 0, 37, 10, 'vi', 0),
(343, 'Văn Quang', 0, 37, 11, 'vi', 0),
(317, 'Bảo Lâm', 0, 38, 1, 'vi', 0),
(318, 'Bảo Lộc', 0, 38, 2, 'vi', 0),
(319, 'Cát Tiên', 0, 38, 3, 'vi', 0),
(320, 'Đà Lạt', 0, 38, 4, 'vi', 0),
(321, 'Đạ Tẻh', 0, 38, 5, 'vi', 0),
(322, 'Đạ Huoai', 0, 38, 6, 'vi', 0),
(323, 'Di Linh', 0, 38, 7, 'vi', 0),
(324, 'Đơn Dương', 0, 38, 8, 'vi', 0),
(325, 'Đức Trọng', 0, 38, 9, 'vi', 0),
(326, 'Lạc Dương', 0, 38, 10, 'vi', 0),
(327, 'Lâm Hà', 0, 38, 11, 'vi', 0),
(296, 'Điện Biên', 0, 39, 1, 'vi', 0),
(297, 'Điện Biên Đông', 0, 39, 2, 'vi', 0),
(298, 'Điện Biên Phủ', 0, 39, 3, 'vi', 0),
(299, 'Lai Châu', 0, 39, 4, 'vi', 0),
(300, 'Mường Lay', 0, 39, 5, 'vi', 0),
(301, 'Mường Tè', 0, 39, 6, 'vi', 0),
(302, 'Phong Thổ', 0, 39, 7, 'vi', 0),
(303, 'Sìn Hồ', 0, 39, 8, 'vi', 0),
(304, 'Tủa Chùa', 0, 39, 9, 'vi', 0),
(305, 'Tuần Giáo', 0, 39, 10, 'vi', 0),
(290, 'Đắk Glei', 0, 40, 1, 'vi', 0),
(291, 'Đắk Tô', 0, 40, 2, 'vi', 0),
(292, 'Kon Plông', 0, 40, 3, 'vi', 0),
(293, 'Kon Tum', 0, 40, 4, 'vi', 0),
(294, 'Ngọc Hồi', 0, 40, 5, 'vi', 0),
(295, 'Sa Thầy', 0, 40, 6, 'vi', 0),
(715, 'Đắk Glei', 0, 40, 7, 'vi', 0),
(716, 'Đắk Hà', 0, 40, 8, 'vi', 0),
(717, 'Đắk Tô', 0, 40, 9, 'vi', 0),
(718, 'Kon Plông', 0, 40, 10, 'vi', 0),
(719, 'Kon Tum', 0, 40, 11, 'vi', 0),
(720, 'Ngọc Hồi', 0, 40, 12, 'vi', 0),
(721, 'Sa Thầy', 0, 40, 13, 'vi', 0),
(277, 'An Biên', 0, 41, 1, 'vi', 0),
(278, 'An Minh', 0, 41, 2, 'vi', 0),
(279, 'Châu Thành', 0, 41, 3, 'vi', 0),
(280, 'Gò Quao', 0, 41, 4, 'vi', 0),
(281, 'Gồng Giềng', 0, 41, 5, 'vi', 0),
(282, 'Hà Tiên', 0, 41, 6, 'vi', 0),
(283, 'Hòn Đất', 0, 41, 7, 'vi', 0),
(284, 'Kiên Hải', 0, 41, 8, 'vi', 0),
(285, 'Phú Quốc', 0, 41, 9, 'vi', 0),
(286, 'Rạch Giá', 0, 41, 10, 'vi', 0),
(287, 'Tân Hiệp', 0, 41, 11, 'vi', 0),
(288, 'Vĩnh Thuận', 0, 41, 12, 'vi', 0),
(269, 'Nha Trang', 0, 42, 1, 'vi', 0),
(270, 'Khánh Vĩnh', 0, 42, 2, 'vi', 0),
(271, 'Diên Khánh', 0, 42, 3, 'vi', 0),
(272, 'Ninh Hòa', 0, 42, 4, 'vi', 0),
(273, 'Khánh Sơn', 0, 42, 5, 'vi', 0),
(274, 'Cam Ranh', 0, 42, 6, 'vi', 0),
(275, 'Trường Sa', 0, 42, 7, 'vi', 0),
(276, 'Vạn Ninh', 0, 42, 8, 'vi', 0),
(262, 'Ân Thi', 0, 43, 1, 'vi', 0),
(263, 'Hưng Yên', 0, 43, 2, 'vi', 0),
(264, 'Khoái Châu', 0, 43, 3, 'vi', 0),
(265, 'Tiên Lữ', 0, 43, 4, 'vi', 0),
(266, 'Văn Giang', 0, 43, 5, 'vi', 0),
(267, 'Văn Lâm', 0, 43, 6, 'vi', 0),
(268, 'Yên Mỹ', 0, 43, 7, 'vi', 0),
(705, 'Ân Thi', 0, 43, 8, 'vi', 0),
(706, 'Hưng Yên', 0, 43, 9, 'vi', 0),
(707, 'Khoái Châu', 0, 43, 10, 'vi', 0),
(708, 'Kim Động', 0, 43, 11, 'vi', 0),
(709, 'Mỹ Hào', 0, 43, 12, 'vi', 0),
(710, 'Phù Cừ', 0, 43, 13, 'vi', 0),
(224, 'Đà Bắc', 0, 44, 1, 'vi', 0),
(225, 'Hòa Bình', 0, 44, 2, 'vi', 0),
(226, 'Kim Bôi', 0, 44, 3, 'vi', 0),
(227, 'Kỳ Sơn', 0, 44, 4, 'vi', 0),
(228, 'Lạc Sơn', 0, 44, 5, 'vi', 0),
(229, 'Lạc Thủy', 0, 44, 6, 'vi', 0),
(230, 'Lương Sơn', 0, 44, 7, 'vi', 0),
(231, 'Mai Châu', 0, 44, 8, 'vi', 0),
(232, 'Tân Lạc', 0, 44, 9, 'vi', 0),
(233, 'Yên Thủy', 0, 44, 10, 'vi', 0),
(873, 'Cao Phong', 0, 44, 11, 'vi', 0),
(682, 'Châu Thành', 0, 45, 1, 'vi', 0),
(683, 'Long Mỹ', 0, 45, 2, 'vi', 0),
(685, 'Phụng Hiệp', 0, 45, 3, 'vi', 0),
(687, 'Vị Thanh', 0, 45, 4, 'vi', 0),
(688, 'Vị Thủy', 0, 45, 5, 'vi', 0),
(890, 'Châu Thành A', 0, 45, 6, 'vi', 0),
(891, 'Ngã Bảy', 0, 45, 7, 'vi', 0),
(234, 'Bình Giang', 0, 46, 1, 'vi', 0),
(235, 'Cẩm Giàng', 0, 46, 2, 'vi', 0),
(236, 'Chí Linh', 0, 46, 3, 'vi', 0),
(238, 'Gia Lộc', 0, 46, 4, 'vi', 0),
(239, 'Hải Dương', 0, 46, 5, 'vi', 0),
(241, 'Kim Thành', 0, 46, 6, 'vi', 0),
(242, 'Nam Sách', 0, 46, 7, 'vi', 0),
(243, 'Ninh Giang', 0, 46, 8, 'vi', 0),
(244, 'Kinh Môn', 0, 46, 9, 'vi', 0),
(245, 'Ninh Giang', 0, 46, 10, 'vi', 0),
(246, 'Thanh Hà', 0, 46, 11, 'vi', 0),
(247, 'Thanh Miện', 0, 46, 12, 'vi', 0),
(248, 'Từ Kỳ', 0, 46, 13, 'vi', 0),
(214, 'Cẩm Xuyên', 0, 47, 1, 'vi', 0),
(215, 'Can Lộc', 0, 47, 2, 'vi', 0),
(216, 'Đức Thọ', 0, 47, 3, 'vi', 0),
(217, 'Hà Tĩnh', 0, 47, 4, 'vi', 0),
(218, 'Hồng Lĩnh', 0, 47, 5, 'vi', 0),
(219, 'Hương Khê', 0, 47, 6, 'vi', 0),
(220, 'Hương Sơn', 0, 47, 7, 'vi', 0),
(221, 'Kỳ Anh', 0, 47, 8, 'vi', 0),
(222, 'Nghi Xuân', 0, 47, 9, 'vi', 0),
(223, 'Thạch Hà', 0, 47, 10, 'vi', 0),
(881, 'Vũ Quang', 0, 47, 11, 'vi', 0),
(882, 'Lộc Hà', 0, 47, 12, 'vi', 0),
(689, 'Bình Lục', 0, 49, 1, 'vi', 0),
(690, 'Duy Tiên', 0, 49, 2, 'vi', 0),
(691, 'Kim Bảng', 0, 49, 3, 'vi', 0),
(692, 'Lý Nhân', 0, 49, 4, 'vi', 0),
(693, 'Phủ Lý', 0, 49, 5, 'vi', 0),
(694, 'Thanh Liêm', 0, 49, 6, 'vi', 0),
(498, 'Bắc Mê', 0, 50, 1, 'vi', 0),
(499, 'Bắc Quang', 0, 50, 2, 'vi', 0),
(500, 'Đồng Văn', 0, 50, 3, 'vi', 0),
(501, 'Hà Giang', 0, 50, 4, 'vi', 0),
(502, 'Hoàng Su Phì', 0, 50, 5, 'vi', 0),
(503, 'Mèo Vạt', 0, 50, 6, 'vi', 0),
(504, 'Quản Bạ', 0, 50, 7, 'vi', 0),
(505, 'Vị Xuyên', 0, 50, 8, 'vi', 0),
(506, 'Xín Mần', 0, 50, 9, 'vi', 0),
(507, 'Yên Minh', 0, 50, 10, 'vi', 0),
(187, 'An Khê', 0, 51, 1, 'vi', 0),
(188, 'Ayun Pa ', 0, 51, 2, 'vi', 0),
(189, 'Chư Păh', 0, 51, 3, 'vi', 0),
(190, 'Chư Prông  ', 0, 51, 4, 'vi', 0),
(191, 'Chư Sê ', 0, 51, 5, 'vi', 0),
(192, 'Đức Cơ  ', 0, 51, 6, 'vi', 0),
(193, 'KBang  ', 0, 51, 7, 'vi', 0),
(194, 'Krông Chro', 0, 51, 8, 'vi', 0),
(195, 'Krông Pa ', 0, 51, 9, 'vi', 0),
(196, 'La Grai  ', 0, 51, 10, 'vi', 0),
(197, 'Mang Yang ', 0, 51, 11, 'vi', 0),
(198, 'Pleiku', 0, 51, 12, 'vi', 0),
(826, 'Cao Lãnh', 0, 52, 1, 'vi', 0),
(827, 'Châu Thành', 0, 52, 2, 'vi', 0),
(828, 'Hồng Ngự', 0, 52, 3, 'vi', 0),
(829, 'Lai Vung', 0, 52, 4, 'vi', 0),
(830, 'Lấp Vò', 0, 52, 5, 'vi', 0),
(831, 'Tam Nông', 0, 52, 6, 'vi', 0),
(832, 'Tân Hồng', 0, 52, 7, 'vi', 0),
(833, 'Thanh Bình', 0, 52, 8, 'vi', 0),
(834, 'Tháp Mười', 0, 52, 9, 'vi', 0),
(835, 'Xa Đéc', 0, 52, 10, 'vi', 0),
(634, 'Biên Hòa', 0, 53, 1, 'vi', 0),
(635, 'Định Quán', 0, 53, 2, 'vi', 0),
(636, 'Long Khánh', 0, 53, 3, 'vi', 0),
(637, 'Long Thành', 0, 53, 4, 'vi', 0),
(638, 'Nhơn Trạch', 0, 53, 5, 'vi', 0),
(639, 'Tân Phú', 0, 53, 6, 'vi', 0),
(640, 'Thống Nhất', 0, 53, 7, 'vi', 0),
(641, 'Vĩnh Cừu', 0, 53, 8, 'vi', 0),
(642, 'Xuân Lộc', 0, 53, 9, 'vi', 0),
(838, 'Trảng Bom', 0, 53, 10, 'vi', 0),
(455, 'Buôn Đôn', 0, 56, 1, 'vi', 0),
(456, 'Buôn Ma Thuột', 0, 56, 2, 'vi', 0),
(457, 'Cư Jút', 0, 56, 3, 'vi', 0),
(458, 'Cư M''gar', 0, 56, 4, 'vi', 0),
(459, 'Đắk Mil', 0, 56, 5, 'vi', 0),
(460, 'Đắk Nông', 0, 56, 6, 'vi', 0),
(461, 'Đắk R''lấp', 0, 56, 7, 'vi', 0),
(462, 'Ea H''leo', 0, 56, 8, 'vi', 0),
(463, 'Ea Kra', 0, 56, 9, 'vi', 0),
(464, 'Ea Súp', 0, 56, 10, 'vi', 0),
(465, 'Krông A Na', 0, 56, 11, 'vi', 0),
(466, 'Krông Bông', 0, 56, 12, 'vi', 0),
(467, 'Krông Búk', 0, 56, 13, 'vi', 0),
(468, 'Krông Năng', 0, 56, 14, 'vi', 0),
(469, 'Krông Nô', 0, 56, 15, 'vi', 0),
(470, 'Krông Pắc', 0, 56, 16, 'vi', 0),
(471, 'Lắk', 0, 56, 17, 'vi', 0),
(472, 'M''Đrắt', 0, 56, 18, 'vi', 0),
(176, 'Bảo Lạc', 0, 57, 1, 'vi', 0),
(177, 'Cao Bắng', 0, 57, 2, 'vi', 0),
(178, 'Hạ Lang', 0, 57, 3, 'vi', 0),
(179, 'Hà Quảng', 0, 57, 4, 'vi', 0),
(180, 'Hòa An', 0, 57, 5, 'vi', 0),
(181, 'Nguyên Bình', 0, 57, 6, 'vi', 0),
(182, 'Quảng Hòa', 0, 57, 7, 'vi', 0),
(183, 'Thạch An', 0, 57, 8, 'vi', 0),
(184, 'Thông Nông', 0, 57, 9, 'vi', 0),
(185, 'Trà Lĩnh', 0, 57, 10, 'vi', 0),
(186, 'Trùng Khánh', 0, 57, 11, 'vi', 0),
(491, 'Cà Mau', 0, 58, 1, 'vi', 0),
(492, 'Cái Nước', 0, 58, 2, 'vi', 0),
(493, 'Đầm Dơi', 0, 58, 3, 'vi', 0),
(494, 'Ngọc Hiển', 0, 58, 4, 'vi', 0),
(495, 'Thới Bình', 0, 58, 5, 'vi', 0),
(496, 'Trần Văn Thời', 0, 58, 6, 'vi', 0),
(497, 'U Minh', 0, 58, 7, 'vi', 0),
(887, 'Năm Căn', 0, 58, 8, 'vi', 0),
(888, 'Phú Tân', 0, 58, 9, 'vi', 0),
(654, 'Bắc Bình', 0, 59, 1, 'vi', 0),
(655, 'Đức Linh', 0, 59, 2, 'vi', 0),
(656, 'Hàm Tân', 0, 59, 3, 'vi', 0),
(657, 'Hàm Thuận Bắc', 0, 59, 4, 'vi', 0),
(658, 'Hàm Thuận Nam', 0, 59, 5, 'vi', 0),
(659, 'Phan Thiết', 0, 59, 6, 'vi', 0),
(660, 'Phú Quí', 0, 59, 7, 'vi', 0),
(661, 'Tánh Linh', 0, 59, 8, 'vi', 0),
(662, 'Tuy Phong', 0, 59, 9, 'vi', 0),
(897, 'La Gi', 0, 59, 10, 'vi', 0),
(836, 'Bình Long', 0, 60, 1, 'vi', 0),
(839, 'Phước Long', 0, 60, 2, 'vi', 0),
(851, 'Bù Ðăng', 0, 60, 3, 'vi', 0),
(852, 'Chơn Thành', 0, 60, 4, 'vi', 0),
(473, 'Bến Cát', 0, 61, 1, 'vi', 0),
(474, 'Dầu Tiếng', 0, 61, 2, 'vi', 0),
(475, 'Dĩ An', 0, 61, 3, 'vi', 0),
(476, 'Tân Uyên', 0, 61, 4, 'vi', 0),
(477, 'Thủ Dầu Một', 0, 61, 5, 'vi', 0),
(478, 'Thuận An', 0, 61, 6, 'vi', 0),
(841, 'Lái Thiêu', 0, 61, 7, 'vi', 0),
(896, 'Phú Giáo', 0, 61, 8, 'vi', 0),
(158, 'An Lão', 0, 62, 1, 'vi', 0),
(159, 'An Nhơn', 0, 62, 2, 'vi', 0),
(160, 'Hoài Ân', 0, 62, 3, 'vi', 0),
(161, 'Hoài Nhơn', 0, 62, 4, 'vi', 0),
(162, 'Phù Cát', 0, 62, 5, 'vi', 0),
(163, 'Phù Mỹ', 0, 62, 6, 'vi', 0),
(164, 'Qui Nhơn', 0, 62, 7, 'vi', 0),
(165, 'Tây Sơn', 0, 62, 8, 'vi', 0),
(166, 'Tuy Phước', 0, 62, 9, 'vi', 0),
(167, 'Vân Canh', 0, 62, 10, 'vi', 0),
(168, 'Vĩnh Thạnh', 0, 62, 11, 'vi', 0),
(673, 'Ba Tri', 0, 63, 1, 'vi', 0),
(674, 'Bến Tre', 0, 63, 2, 'vi', 0),
(675, 'Bình Đại', 0, 63, 3, 'vi', 0),
(676, 'Châu Thành', 0, 63, 4, 'vi', 0),
(677, 'Chợ Lách', 0, 63, 5, 'vi', 0),
(678, 'Giồng Trôm', 0, 63, 6, 'vi', 0),
(679, 'Mỏ Cày', 0, 63, 7, 'vi', 0),
(680, 'Thạnh Phú', 0, 63, 8, 'vi', 0),
(483, 'Bắc Ninh', 0, 64, 1, 'vi', 0),
(484, 'Gia Bình', 0, 64, 2, 'vi', 0),
(485, 'Lương Tài', 0, 64, 3, 'vi', 0),
(486, 'Quế Võ', 0, 64, 4, 'vi', 0),
(487, 'Thuận Thành', 0, 64, 5, 'vi', 0),
(488, 'Tiên Du', 0, 64, 6, 'vi', 0),
(489, 'Từ Sơn', 0, 64, 7, 'vi', 0),
(490, 'Yên Phong', 0, 64, 8, 'vi', 0),
(479, 'Bạc Liêu', 0, 65, 1, 'vi', 0),
(480, 'Giá Rai', 0, 65, 2, 'vi', 0),
(481, 'Hồng Dân', 0, 65, 3, 'vi', 0),
(482, 'Vĩnh Lợi', 0, 65, 4, 'vi', 0),
(884, 'Phước Long', 0, 65, 5, 'vi', 0),
(885, 'Đông Hải', 0, 65, 6, 'vi', 0),
(886, 'Hòa Bình', 0, 65, 7, 'vi', 0),
(169, 'Ba Bể', 0, 66, 1, 'vi', 0),
(170, 'Bắc Kạn', 0, 66, 2, 'vi', 0),
(171, 'Bạch Thông ', 0, 66, 3, 'vi', 0),
(172, 'Chợ Đồn', 0, 66, 4, 'vi', 0),
(173, 'Chợ Mới', 0, 66, 5, 'vi', 0),
(174, 'Na Rì', 0, 66, 6, 'vi', 0),
(175, 'Ngân Sơn', 0, 66, 7, 'vi', 0),
(663, 'Bắc Giang', 0, 67, 1, 'vi', 0),
(664, 'Hiệp Hòa', 0, 67, 2, 'vi', 0),
(665, 'Lạng Giang', 0, 67, 3, 'vi', 0),
(666, 'Lục Nam', 0, 67, 4, 'vi', 0),
(667, 'Lục Ngạn', 0, 67, 5, 'vi', 0),
(668, 'Sơn Động', 0, 67, 6, 'vi', 0),
(669, 'Tân Yên', 0, 67, 7, 'vi', 0),
(670, 'Việt Yên', 0, 67, 8, 'vi', 0),
(671, 'Yên Dũng', 0, 67, 9, 'vi', 0),
(672, 'Yên Thế', 0, 67, 10, 'vi', 0),
(151, 'Bà Rịa', 0, 68, 1, 'vi', 0),
(152, 'Châu Đất', 0, 68, 2, 'vi', 0),
(153, 'Côn Đảo', 0, 68, 3, 'vi', 0),
(154, 'Long Đất', 0, 68, 4, 'vi', 0),
(155, 'Tân Thành', 0, 68, 5, 'vi', 0),
(156, 'Vũng Tàu', 0, 68, 6, 'vi', 0),
(157, 'Xuyên Mộc', 0, 68, 7, 'vi', 0),
(898, 'Long Điền', 0, 68, 8, 'vi', 0),
(899, 'Đất Đỏ', 0, 68, 9, 'vi', 0),
(643, 'An Phú', 0, 69, 1, 'vi', 0),
(644, 'Châu Đốc', 0, 69, 2, 'vi', 0),
(645, 'Châu Phú', 0, 69, 3, 'vi', 0),
(646, 'Châu Thành', 0, 69, 4, 'vi', 0),
(647, 'Chợ Mới', 0, 69, 5, 'vi', 0),
(648, 'Long Xuyên', 0, 69, 6, 'vi', 0),
(649, 'Phú Tân', 0, 69, 7, 'vi', 0),
(650, 'Tân Châu', 0, 69, 8, 'vi', 0),
(651, 'Thoại Sơn', 0, 69, 9, 'vi', 0),
(652, 'Tịnh Biên', 0, 69, 10, 'vi', 0),
(653, 'Tri Tôn', 0, 69, 11, 'vi', 0),
(249, 'An Hải', 0, 70, 1, 'vi', 0),
(250, 'An Lão', 0, 70, 2, 'vi', 0),
(251, 'Bạch Long Vỹ', 0, 70, 3, 'vi', 0),
(253, 'Đồ Sơn', 0, 70, 4, 'vi', 0),
(254, 'Hồng Bàng', 0, 70, 5, 'vi', 0),
(255, 'Kiến An', 0, 70, 6, 'vi', 0),
(256, 'Kiến Thụy', 0, 70, 7, 'vi', 0),
(257, 'Lê Chân', 0, 70, 8, 'vi', 0),
(258, 'Ngô Quyền', 0, 70, 9, 'vi', 0),
(259, 'Thủy Nguyên', 0, 70, 10, 'vi', 0),
(260, 'Tiên Lãng', 0, 70, 11, 'vi', 0),
(261, 'Vĩnh Bảo', 0, 70, 12, 'vi', 0),
(854, 'Cát Bà', 0, 70, 13, 'vi', 0),
(900, 'Dương Kinh', 0, 70, 14, 'vi', 0),
(819, 'Đảo Hòang Sa', 0, 71, 1, 'vi', 0),
(820, 'Hải Châu', 0, 71, 2, 'vi', 0),
(821, 'Hòa Vang', 0, 71, 3, 'vi', 0),
(822, 'Liên Chiểu', 0, 71, 4, 'vi', 0),
(823, 'Ngũ Hành Sơn', 0, 71, 5, 'vi', 0),
(824, 'Sơn Trà', 0, 71, 6, 'vi', 0),
(825, 'Thanh Khê', 0, 71, 7, 'vi', 0),
(844, 'Cẩm Lệ', 0, 71, 8, 'vi', 0),
(681, 'Cần Thơ', 0, 72, 1, 'vi', 0),
(684, 'Ô Môn', 0, 72, 2, 'vi', 0),
(686, 'Thốt Nốt', 0, 72, 3, 'vi', 0),
(837, 'Ninh Kiều', 0, 72, 4, 'vi', 0),
(848, 'Cái Răng', 0, 72, 5, 'vi', 0),
(855, 'Bình Thủy', 0, 72, 6, 'vi', 0),
(892, 'Phong Điền', 0, 72, 7, 'vi', 0),
(893, 'Cờ Đỏ', 0, 72, 8, 'vi', 0),
(894, 'Thới Lai', 0, 72, 9, 'vi', 0),
(895, 'Vĩnh Thạnh', 0, 72, 10, 'vi', 0);

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
  `name` varchar(250) NOT NULL,
  `action` varchar(30) NOT NULL,
  `table` varchar(30) NOT NULL,
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
-- Table structure for table `web_payment`
--

CREATE TABLE IF NOT EXISTS `web_payment` (
`id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `datetime` bigint(10) NOT NULL,
  `notes` varchar(200) DEFAULT NULL,
  `lang` varchar(2) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `construction_code` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_payment`
--

INSERT INTO `web_payment` (`id`, `amount`, `datetime`, `notes`, `lang`, `status`, `construction_code`) VALUES
(1, 50000000, 1446803700, '', 'vi', 1, 'hn01'),
(2, 50000000, 1447062900, '', 'vi', 1, 'HN01'),
(3, 100000000, 1446803880, '', 'vi', 1, 'HN02');

-- --------------------------------------------------------

--
-- Table structure for table `web_photo`
--

CREATE TABLE IF NOT EXISTS `web_photo` (
`id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `img` varchar(150) DEFAULT NULL,
  `order` int(3) NOT NULL DEFAULT '0',
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `datetime` bigint(10) NOT NULL,
  `menu_id` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `web_position`
--

CREATE TABLE IF NOT EXISTS `web_position` (
`id` int(3) NOT NULL,
  `name` varchar(100) NOT NULL,
  `themes` varchar(100) NOT NULL,
  `order` int(1) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_position`
--

INSERT INTO `web_position` (`id`, `name`, `themes`, `order`, `type`, `status`) VALUES
(1, 'Menu Top', '', 1, 1, 1),
(2, 'Menu chính', '', 2, 1, 1),
(3, 'Menu chân trang', '', 3, 1, 1),
(4, 'Menu bên trái', '', 4, 1, 0),
(5, 'Menu bên phải', '', 5, 1, 0),
(6, 'Box mạng xã hội', '', 6, 1, 1),
(7, 'Home giới thiệu', '', 7, 2, 1),
(8, 'Home news', '', 8, 2, 0),
(9, 'Home thông tin', '', 9, 2, 0),
(10, 'Home sản phẩm', '', 10, 2, 0),
(11, 'Home dịch vụ', '', 11, 2, 1),
(12, 'Content box left', '', 12, 1, 1),
(13, 'Content box right', '', 13, 1, 1),
(14, 'Other 4', '', 14, 0, 0),
(15, 'Other 5', '', 15, 0, 0),
(16, 'Slider width 1000px', '', 16, 0, 1),
(17, 'Event 400px x 200px', '', 17, 0, 1),
(18, 'Đối tác 150px x 90px', '', 18, 0, 1),
(19, 'Other 6', '', 19, 0, 0),
(20, 'Không', '', 20, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_tags`
--

CREATE TABLE IF NOT EXISTS `web_tags` (
`id` int(3) NOT NULL,
  `name` varchar(50) NOT NULL,
  `title` varchar(60) NOT NULL,
  `url` varchar(200) NOT NULL,
  `order` int(3) NOT NULL DEFAULT '0',
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_tags`
--

INSERT INTO `web_tags` (`id`, `name`, `title`, `url`, `order`, `lang`, `status`) VALUES
(2, 'Tags keyword', 'Title', 'link', 2, 'vi', 0);

-- --------------------------------------------------------

--
-- Table structure for table `web_type`
--

CREATE TABLE IF NOT EXISTS `web_type` (
`id` int(3) NOT NULL,
  `name` varchar(30) NOT NULL,
  `type` varchar(20) NOT NULL,
  `table` varchar(20) NOT NULL,
  `url_img` varchar(100) NOT NULL,
  `url_img_thumb` varchar(100) NOT NULL,
  `order` int(2) NOT NULL,
  `other` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_type`
--

INSERT INTO `web_type` (`id`, `name`, `type`, `table`, `url_img`, `url_img_thumb`, `order`, `other`, `status`) VALUES
(1, 'Trang chủ', 'home', '', 'public/images/catalog/', 'public/_thumbs/Images/catalog/', 1, 1, 1),
(2, 'Thông tin bài viết', 'articles', 'web_header', 'public/images/articles/', 'public/_thumbs/Images/articles/', 2, 1, 1),
(3, 'Sản phẩm', 'products', 'web_header', 'public/images/products/', 'public/_thumbs/Images/products/', 3, 1, 0),
(4, 'Dịch vụ', 'services', 'web_header', 'public/images/services/', 'public/_thumbs/Images/services/', 4, 1, 0),
(5, 'Hình ảnh', 'photos', 'web_photos', 'public/images/photos/', 'public/_thumbs/Images/photos/', 5, 1, 0),
(6, 'Video', 'videos', 'web_header', 'public/images/videos/', 'public/_thumbs/Images/videos/', 6, 1, 0),
(7, 'Item 1', 'item_1', '', '', '', 7, 1, 0),
(8, 'Item 2', 'item_2', '', '', '', 8, 1, 0),
(9, 'Item 3', 'item_3', '', '', '', 9, 1, 0),
(10, 'Item 4', 'item_4', '', '', '', 10, 1, 0),
(11, 'Item 5', 'item_5', '', '', '', 11, 0, 0),
(20, 'Không', 'no', '', '', '', 20, 1, 1),
(12, 'Item 6', 'item_6', '', '', '', 12, 0, 0),
(19, 'Item 10', 'item_10', '', '', '', 19, 0, 0),
(13, 'Item 7', 'item_7', '', '', '', 13, 0, 0),
(18, 'Item 9', 'item_9', '', '', '', 18, 0, 0),
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
  `name` varchar(100) NOT NULL,
  `address` varchar(250) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(60) NOT NULL,
  `birthday` bigint(10) NOT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `img` varchar(150) NOT NULL,
  `salt` varchar(3) NOT NULL,
  `username` char(32) NOT NULL,
  `password` char(32) NOT NULL,
  `rule_view` varchar(100) NOT NULL,
  `rule_action` varchar(100) NOT NULL,
  `random_key` varchar(255) DEFAULT NULL,
  `date_expiration` bigint(10) NOT NULL,
  `lang` varchar(3) NOT NULL DEFAULT 'vi',
  `datetime` bigint(10) NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `group_id` int(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_users`
--

INSERT INTO `web_users` (`id`, `name`, `address`, `phone`, `email`, `birthday`, `gender`, `img`, `salt`, `username`, `password`, `rule_view`, `rule_action`, `random_key`, `date_expiration`, `lang`, `datetime`, `status`, `group_id`) VALUES
(25, 'Admin', '123 CMT 8', '0988 388 003', 'admin@localhost.com', 0, 1, '', '', 'admin', 'fc7fc678608590b123692867f176fe63', ',1,2,26,27,28,9,10,13,14,16,20,15,17,18,21,22,25,24,23,', ',1,2,26,27,28,9,10,13,14,16,20,15,17,18,21,22,25,24,23,', NULL, 0, 'vi', 0, 1, 3),
(34, 'Hiếu Nhân', '123 CMT 8', '0988 388 003', 'trannhan@localhost.com', 609872400, 1, '', '', 'trannhan', '867e1a36d190000d2f266d80889683fc', ',1,2,3,4,6,7,8,18,21,23,', ',1,2,3,4,6,7,8,18,21,23,', NULL, 0, 'vi', 1425093180, 1, 3),
(36, 'Hoài Nghĩa', '', '', '', 0, NULL, '', '', 'hoainghia', '867e1a36d190000d2f266d80889683fc', ',1,26,27,28,9,10,22,24,', ',1,26,27,28,9,10,22,24,', NULL, 0, 'vi', 0, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `web_users_group`
--

CREATE TABLE IF NOT EXISTS `web_users_group` (
`id` int(2) NOT NULL,
  `name` varchar(50) NOT NULL,
  `order` int(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_users_group`
--

INSERT INTO `web_users_group` (`id`, `name`, `order`, `status`) VALUES
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_users_lock_ip`
--

INSERT INTO `web_users_lock_ip` (`id`, `ip_address`, `login_number`, `disable_date`, `datetime`) VALUES
(6, '::1', 2, 0, 1447064630);

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
  `key` char(10) NOT NULL,
  `datetime` bigint(10) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

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
-- Indexes for table `web_construction`
--
ALTER TABLE `web_construction`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`);

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
-- Indexes for table `web_header`
--
ALTER TABLE `web_header`
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
-- Indexes for table `web_listdistrict`
--
ALTER TABLE `web_listdistrict`
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
-- Indexes for table `web_payment`
--
ALTER TABLE `web_payment`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_photo`
--
ALTER TABLE `web_photo`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_position`
--
ALTER TABLE `web_position`
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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `web_admin`
--
ALTER TABLE `web_admin`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `web_config`
--
ALTER TABLE `web_config`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `web_construction`
--
ALTER TABLE `web_construction`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `web_contact`
--
ALTER TABLE `web_contact`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `web_content`
--
ALTER TABLE `web_content`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT for table `web_header`
--
ALTER TABLE `web_header`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=87;
--
-- AUTO_INCREMENT for table `web_language`
--
ALTER TABLE `web_language`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `web_language_var`
--
ALTER TABLE `web_language_var`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `web_listdistrict`
--
ALTER TABLE `web_listdistrict`
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
-- AUTO_INCREMENT for table `web_payment`
--
ALTER TABLE `web_payment`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `web_photo`
--
ALTER TABLE `web_photo`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `web_position`
--
ALTER TABLE `web_position`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `web_tags`
--
ALTER TABLE `web_tags`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `web_type`
--
ALTER TABLE `web_type`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `web_users`
--
ALTER TABLE `web_users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `web_users_group`
--
ALTER TABLE `web_users_group`
MODIFY `id` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `web_users_lock_ip`
--
ALTER TABLE `web_users_lock_ip`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
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
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
