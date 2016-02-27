-- phpMyAdmin SQL Dump
-- version 4.0.10.6
-- http://www.phpmyadmin.net
--
-- Host: db06.serverhosting.vn
-- Generation Time: Feb 27, 2016 at 10:34 AM
-- Server version: 5.5.41
-- PHP Version: 5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dulichho_traveling`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Content` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=28 ;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`ID`, `Name`, `Email`, `Content`, `Status`) VALUES
(1, 'nguyen a', 'abc@yahoo.com', 'thong tin ji do ', 1),
(4, 'ngue', '', 'álkdalskdlaksdjl', 1),
(5, 'ádasd', 'ádsd', 'ádasdád', 1),
(6, 'nguyens a', 'abc@yahoo.com', 'thông tin chi tiết', 1),
(7, 'thanh111', 'thao_khtn@yahoo.com', 'thong tin lien hệ', 1),
(8, 'thanhit08', 'thanhit08@msn.com', 'abc dkhag', 1),
(9, 'le van hung', 'lemaohung@yahoo.com.vn', 'chuyen dung lcih nha trang ', 1),
(10, 'thanhit08', 'thanhit08@msn.com', 'abc dkhag', 1),
(11, 'gakhg', 'thanhit08@msn.com', 'lksghalksdhgla sdklgahsg', 1),
(12, 'le van hung', 'lemaohung@yahoo.com.vn', 'chuyen dung lcih nha trang ', 1),
(13, 'GFDGDSG', 'choanhduocthuongem@yahoo.com.vn', 'HCFGHGF', 1),
(14, 'le van ', 'honghang9377@yahoo.com.vn', 'fsdfasfasf', 1),
(15, 'le van anh ', 'dembunnhoem07@yahoo.com.vn', 'dat tour nha trang da lat 4n4d', 1),
(16, 'dau thi thao', 'lemeohung@yahoo.com.vn', 'toure nah trang da lac', 1),
(17, 'nha trang - da lat ', 'lemeohung@yahoo.com.vn', '126khach', 1),
(18, 'nha trang - da lat - dong thap ', 'lehoa_travel@yahoo.com.vn', 'dat tour du lich ngay 30/4 / 2014', 1),
(19, 'huyen', 'lehuyentb@gmail.com', 'Tour du lich Da Lat', 1),
(20, 'huyen', 'lehuyentb@gmail.com', 'Tour du lich Da Lat', 1),
(21, 'nha trang ', 'lemeohung@yahoo.com.vn ', 'tour nha trang da lat. ', 1),
(22, 'dttbfxt', 'qzmxdu@xuwzyw.com', '6KyvJW  <a href="http://mrumlgamuvnb.com/">mrumlgamuvnb</a>, [url=http://jefzhqjckylo.com/]jefzhqjckylo[/url], [link=http://bwdledzogbgn.com/]bwdledzogbgn[/link], http://doemqyhbubkh.com/', 1),
(23, 'cxjjwxjhwxg', 'kwjpzl@yffhlp.com', 'DYNtvj  <a href="http://drwnyvazezmj.com/">drwnyvazezmj</a>, [url=http://yiyqqqzasvde.com/]yiyqqqzasvde[/url], [link=http://jfsmqjijrrwn.com/]jfsmqjijrrwn[/link], http://yfbksmzirryk.com/', 0),
(24, 'trzsxb', 'mdgclz@qjvnof.com', 'si2pwq  <a href="http://joanrvxxtuqo.com/">joanrvxxtuqo</a>, [url=http://hnarjnqexmte.com/]hnarjnqexmte[/url], [link=http://ormvdslczrwi.com/]ormvdslczrwi[/link], http://wvfvqguxkzze.com/', 0),
(25, 'AntonioNurf', 'antonionoma@mail.ru', 'Great looking website. Presume you did a whole lot of <a href=http://www.onlinecigarettestoreus.com/marlboro-peppermint-cigarettes/>marlboro peppermint cigarettes</a> your very own  html coding.', 0),
(26, 'vwnuqs', 'galtdb@txovww.com', '3rliD3  <a href="http://jykdrffwkhjt.com/">jykdrffwkhjt</a>, [url=http://nhjlwkeshlng.com/]nhjlwkeshlng[/url], [link=http://zstbbrcrcdwm.com/]zstbbrcrcdwm[/link], http://xyiogdzvepwj.com/', 0),
(27, 'TRAN THI DEO', 'deovhong@gmail.com', 'da lat. em gui hop dong cho chi (Anh Long giam doc Viet Hong). de chi trinh anh Long ky hop dong voi ben em nha. Deo', 1);

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE IF NOT EXISTS `gallery` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Link` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=40 ;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`ID`, `Link`, `Status`) VALUES
(4, 'images/gallery/134193502312.jpg', 0),
(5, 'images/gallery/1341935028ninh-binh.jpg', 0),
(6, 'images/gallery/1342719131gioithieu1.png', 0),
(7, 'images/gallery/1342721231gioithieu1.png', 0),
(8, 'images/gallery/1342722206Cat%20Cat%20mountaint%20village%20in%20Sapa[1].jpg', 0),
(9, 'images/gallery/1342722869hl.jpg', 0),
(10, 'images/gallery/1342722882imag1.jpg', 0),
(11, 'images/gallery/1342722900imag2.jpg', 0),
(12, 'images/gallery/1342722911image4.jpg', 0),
(13, 'images/gallery/1342722923image3.jpg', 0),
(14, 'images/gallery/1342755897', 0),
(15, 'images/gallery/1367982448', 0),
(16, 'images/gallery/1386299533DSC01461.JPG', 0),
(17, 'images/gallery/1386299653DSC01466.JPG', 0),
(18, 'images/gallery/13923474751386299653DSC01466.JPG', 0),
(19, 'images/gallery/13986706321342722900imag2.jpg', 0),
(20, 'images/gallery/13987382181342722869hl.jpg', 0),
(21, 'images/gallery/13987414453.jpg', 0),
(22, 'images/gallery/13987442525.jpg', 0),
(23, 'images/gallery/13987444327.jpg', 0),
(24, 'images/gallery/1398754552111.jpg', 0),
(25, 'images/gallery/13992568261.jpg', 1),
(26, 'images/gallery/139925738112.jpg', 0),
(27, 'images/gallery/13992590335.jpg', 0),
(28, 'images/gallery/139926062619.gif', 1),
(29, 'images/gallery/139926215719.gif', 1),
(30, 'images/gallery/140003362212.jpg', 0),
(31, 'images/gallery/1417575493', 0),
(32, 'images/gallery/141757574136- BÊR NƠ VÉ XE.jpg', 0),
(33, 'images/gallery/141757587636- BÊR NƠ VÉ XE.jpg', 0),
(34, 'images/gallery/141765950536- BÊR NƠ VÉ XE 1.jpg', 0),
(35, 'images/gallery/141765961536- BÊR NƠ VÉ XE 1.jpg', 0),
(36, 'images/gallery/141765973936- BÊR NƠ VÉ XE 1.jpg', 0),
(37, 'images/gallery/1417662781123456.jpg', 0),
(38, 'images/gallery/14176629077.jpg', 1),
(39, 'images/gallery/14176630528.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `place`
--

CREATE TABLE IF NOT EXISTS `place` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PlaceName` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TypeID` int(11) DEFAULT NULL,
  `Info` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Status` bit(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Place_FK_PlaceType` (`TypeID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=29 ;

--
-- Dumping data for table `place`
--

INSERT INTO `place` (`ID`, `PlaceName`, `TypeID`, `Info`, `Status`) VALUES
(1, 'Hà Nội', 1, 'Hà Nội', b'1'),
(2, 'Buôn Mê Thuật', 2, 'Buôn Mê Thuật', b'1'),
(3, 'Đà Lạt', 2, 'Đà Lạt', b'1'),
(4, 'Đà Nẵng', 2, 'Đà Nẵng', b'1'),
(5, 'Huế', 2, 'Huế', b'1'),
(6, 'Quảng Bình', 2, 'Quảng Bình', b'1'),
(7, 'Nha Trang', 2, 'Nha Trang', b'1'),
(8, 'Phan Thiết', 2, 'Phan Thiết', b'1'),
(9, 'Hội An', 2, 'Hội An', b'1'),
(10, 'Vũng Tàu', 3, 'Vũng Tàu', b'1'),
(11, 'Long An', 3, 'Long An', b'1'),
(12, 'Đảo Phú Quốc', 3, 'Đảo Phú Quốc', b'1'),
(13, 'Tây Ninh', 3, 'Tây Ninh', b'1'),
(14, 'Tiền Giang', 3, 'Tiền Giang', b'1'),
(15, 'Cần Thơ', 3, 'Cần Thơ', b'1'),
(16, 'Sóc Trăng', 3, 'Sóc Trăng', b'1'),
(17, 'Bạc Liêu', 3, 'Bạc Liêu', b'1'),
(18, 'Cà Mau', 3, 'Cà Mau', b'1'),
(19, 'Hà Tiên', 3, 'Hà Tiên', b'1'),
(20, 'Campuchia', 4, 'Campuchia', b'1'),
(21, 'Lào', 4, 'Lào', b'1'),
(22, 'Malaysia', 4, 'Malaysia', b'1'),
(23, 'Singapore', 4, 'Singapore', b'1'),
(24, 'Thái Lan', 4, 'Thái Lan', b'1'),
(25, 'Trung Quốc', 4, 'Trung Quốc', b'1'),
(26, 'SaPa', 1, 'Sa Pa', b'1'),
(27, 'Hạ Long', 1, 'Hạ Long', b'1'),
(28, 'Tp Hồ Chí Minh', 3, 'Thành phố Hồ Chí Minh', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `placetype`
--

CREATE TABLE IF NOT EXISTS `placetype` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PlaceTypeName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Info` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `Status` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `placetype`
--

INSERT INTO `placetype` (`ID`, `PlaceTypeName`, `Info`, `Status`) VALUES
(1, 'Miền Bắc', 'Du lịch miền bắc', 1),
(2, 'Biền Trung', 'Du lịch miền trung', 1),
(3, 'Miền Nam', 'Du lịch miền nam', 1),
(4, 'Nước ngoài', 'Du lịch nước ngoài', 1);

-- --------------------------------------------------------

--
-- Table structure for table `temp`
--

CREATE TABLE IF NOT EXISTS `temp` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Value` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `trip`
--

CREATE TABLE IF NOT EXISTS `trip` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TripName` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PlaceID` int(11) DEFAULT NULL,
  `Introduce` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DesLinkFile` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LinkImage` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TripTypeID` int(11) DEFAULT NULL,
  `NumberOfPeople` int(11) DEFAULT NULL,
  `Status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Trip_FK_Place` (`PlaceID`),
  KEY `Trip_FK_TripType` (`TripTypeID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=31 ;

--
-- Dumping data for table `trip`
--

INSERT INTO `trip` (`ID`, `TripName`, `PlaceID`, `Introduce`, `DesLinkFile`, `LinkImage`, `TripTypeID`, `NumberOfPeople`, `Status`) VALUES
(1, ' GIẢM 10 % GIÁ TOUR  ĐẦU NĂM 2016.. ', 14, 'TPHCM-Tiền Giang-Cần Thơ-Cà Mau.\nThời Gian : 4 ngày 3 đêm (KS : 5sao).\nGiá Tour : Từ 2.300.000đ đến 2.600.000đ\n(Đi về : Ô tô ).\nHOAVIETTRAVEL Hân Hạnh Được Phục Vụ Quý Khách.', '<iframe src="https://docs.google.com/file/d/0B_-DosnpMOZRTDhuZ3hJdDZIem8/preview" width="640" height="480"></iframe>', 'images/gallery/1399010550images (2).jpg', 1, 100, 1),
(2, 'GIẢM 10 % GIÁ TOUR ĐẦU NĂM 2016. ', 5, 'TPHCM - Hội An - Đã Nẵng - Huế . \nThời Gian : 6 ngày 6 đêm (KS : 3 Sao). \nGiá Tour : Từ 5.600.000Đ đến 6.000.000đ . \n(Đi Về : Máy Bay).\nHOAVIETTRAVEL Hân Hạnh Được Phục Vụ Quý Khách. \n', '<iframe src="https://docs.google.com/file/d/0B_-DosnpMOZRZkR0b3pLTzVkcnc/preview" width="640" height="480"></iframe>', 'images/gallery/1342663705hue.jpg', 1, 250, 1),
(3, 'GIẢM 10 % GIÁ TOUR ĐẦU NĂM 2016.', 7, 'Nha Trang Thiên Đường Của Biển.\nThời Gian : 3 Ngày 3 Đêm (KS : 3 Sao).\nGiá Tour : Từ 2.000.000Đ đến 2.200.000Đ.\n(Đi Về : Ô Tô ).\nHOAVIETTRAVEL RẤT Hân Hạnh Được Phục Vụ Quý Khách.', '<iframe src="https://docs.google.com/file/d/0B_-DosnpMOZRMWxydG1rMjFDY1E/preview" width="640" height="480"></iframe>', 'images/gallery/1342170033tour-nha-trang.jpg', 1, 150, 1),
(4, 'GIẢM 10 % GIÁ TOUR ĐẦU NĂM 2016.', 1, 'Hà Nội - Ninh Bình - Hải Phòng - Hạ Long .\nThời Gian :7 Ngày 6 Đêm (KS  3sao). \nGiá Tour : Từ 6.000.000Đ Đến 6.600. 000Đ.\n\n (Đi Về : Máy Bay).\nHOAVIETTRAVEL Rất Hân Hạnh Được phục vụ Quý Khách.', '<iframe src="https://docs.google.com/file/d/0B_-DosnpMOZRSjhxZ2xDcmJPNXc/preview" width="640" height="480"></iframe>', 'images/gallery/1342535997hanoi.jpg', 1, 200, 1),
(5, 'GIẢM 10 % GIÁ TOUR ĐẦU NĂM 2016.', 27, 'Hà Nội - Ninh Bình - Hải Phòng - Hạ Long .\nThời Gian :7 Ngày 6 Đêm (KS  3sao). \nGiá Tour : Từ 5.600.000Đ Đến 6.300. 000Đ.\n\n (Đi Về : Máy Bay).\nHOAVIETTRAVEL Rất Hân Hạnh Được phục vụ Quý Khách !!!!', '<iframe src="https://docs.google.com/file/d/0B_-DosnpMOZRREw1OGVldndmMkE/preview" width="640" height="480"></iframe>', 'images/gallery/1342536047halong.jpg', 1, 200, 1),
(6, 'GIẢM 10 % GIÁ TOUR ĐẦU NĂM 2016.', 26, 'Hà Nội - Ninh Bình - Hải Phòng - Hạ Long - Sapa.\nThời Gian :7 Ngày 6 Đêm (KS  3sao). \nGiá Tour : Từ 6.000.000Đ Đến 7.000. 000Đ.\n\n (Đi Về : Máy Bay).\nHOAVIETTRAVEL Rất Hân Hạnh Được phục vụ Quý Khách.', '<iframe src="https://docs.google.com/file/d/0B_-DosnpMOZRMDZnOE51ZGRrams/preview" width="640" height="480"></iframe>', 'images/gallery/1342536132sapa.jpg', 1, 250, 1),
(7, 'GIẢM 10 % GIÁ TOUR ĐẦU NĂM 2016.', 6, 'TPHCM - Hội An - Đã Nẵng - Huế - Phong Nha. \nThời Gian : 6 ngày 6 đêm (KS : 3 Sao). \nGiá Tour : Từ 6.000.000Đ đến 7.300.000đ . \n(Đi Về : Máy Bay).\nHOAVIETTRAVEL Rất Hân Hạnh Được Phục Quý Khách. ', '<iframe src="https://docs.google.com/file/d/0B_-DosnpMOZRb2JlTWsxODhjN2M/preview" width="640" height="480"></iframe>', 'images/gallery/1342592954imagesCAOTEPYI.jpg', 1, 50, 1),
(9, 'GIẢM 10 % GIÁ TOUR ĐẦU NĂM 2016.', 25, 'Bắc kinh-Thượng Hải-Hằng Châu-Tô Châu\n\n:Thời Gian : 7 Ngày 6 Đêm (KS : 4sao)\nGiá Tour : Từ 480 USD đến 500 USD.\n(Đi Về  : Máy Bay).\n', '<iframe src="https://docs.google.com/file/d/0B_-DosnpMOZRZl9QQXBneV9KRWc/preview" width="640" height="480"></iframe>', 'images/gallery/1342593084imagesCASVS1U0.jpg', 2, 200, 1),
(10, 'GIẢM 10 % GIÁ TOUR ĐẦU NĂM 2016.', 21, 'ĐỒNG THÁP MƯỜI - TPHCM - LÀO \nThời Gian : 6 Ngày 6 đêm (KS : 3sao)\nGiá Tour :420USD đến 480USD.\nĐi Về : Máy Bay.\nHOAVIETTRAVEL Rất Hân Hạnh Được Phục Vụ Quý Khách.\n', '<iframe src="https://docs.google.com/file/d/0B_-DosnpMOZRN0pFNXJIT3hFVFE/preview" width="640" height="480"></iframe>', 'images/gallery/1342597267LAO.jpg', 2, 200, 1),
(11, 'GIẢM 10 % GIÁ TOUR ĐẦU NĂM 2016.', 24, 'TPHCM - BANG KOK - PATTAYA\n:Thời Gian : 5 ngày 4 đêm (KS : 4sao)\nGiá Tour : 300 USD.\nĐi Về : Máy Bay.\nHOAVIETTRAVEL Rất Hân Hạnh Được Phục Vụ Quý Khách.', '<iframe src="https://docs.google.com/file/d/0B_-DosnpMOZRckZkVjMyWldVNnM/preview" width="640" height="480"></iframe>', 'images/gallery/1342597667thai lan.jpg', 2, 160, 1),
(12, 'GIẢM 10 % GIÁ TOUR ĐẦU NĂM 2016.', 23, 'TP_HCM - MALAAYSIA - SINGAPORE\nThời Gian : 6 ngày 5 đêm (KS : 4sao).\nGiá Tour : Từ 480 USD đến 560USD.\nĐi về : Máy Bay.\nHOAVIET TRAVEL Rất Hân Hạnh Được Phục Vụ Quý Khách.', '<iframe src="https://docs.google.com/file/d/0B_-DosnpMOZRbGJkajVDd0hqUGc/preview" width="640" height="480"></iframe>', 'images/gallery/1342597971sin.jpg', 2, 160, 1),
(13, 'GIẢM 10 % GIÁ TOUR ĐẦU NĂM 2016.', 22, 'TP_HCM - MALAAYSIA - SINGAPORE\nThời Gian : 6 ngày 5 đêm (KS : 4sao).\nGiá Tour : Từ 480 USD đến 510USD.\nĐi về : Máy Bay.\nHOAVIET TRAVEL Hân Hạnh Phục Vục Quý Khách.', '<iframe src="https://docs.google.com/file/d/0B_-DosnpMOZRMFRBcG9LdzF5dkE/preview" width="640" height="480"></iframe>', 'images/gallery/1342598220malay.jpg', 2, 160, 1),
(14, 'GIẢM 10 % GIÁ TOUR ĐẦU NĂM 2016.', 20, 'TPHCM-PHNOM PENH - SIEMRIEP \nThời Gian : 4 ngày 3 đêm (KS : 4sao)\nGiá Tour : 200 USD.\nĐi Về : Ô Tô \nHOAVIETTRAVEL Hân Hạnh Được Phục Vục Quý Khách.', '<iframe src="https://docs.google.com/file/d/0B_-DosnpMOZRUXlMdE50WURWVUU/preview" width="640" height="480"></iframe>', 'images/gallery/1342599049campuchia.png', 2, 180, 1),
(15, 'GIẢM 10 % GIÁ TOUR ĐẦU NĂM 2016.', 8, 'Khám   Phá   Biển   Xanh   Phan   Thiết .\nThời Gian : 03 Ngày 03 Đêm (KS : 3 Sao).\nGiá Tour : Từ 1.200.000Đ đến 1.890.000Đ.\n(Đi Về : Ô Tô ).\nHOAVIETTRAVEL Rất Hân Hạnh Được Phục Vụ Quý Khách.', '<iframe src="https://docs.google.com/file/d/0B_-DosnpMOZRNkFKRW5xNjVJdmc/preview" width="640" height="480"></iframe>', 'images/gallery/1342667932phan thiết.jpg', 1, 100, 1),
(16, 'GIẢM 10 % GIÁ TOUR ĐẦU NĂM 2016.', 3, 'Khám Phá Vẻ Đẹp Cao Nguyên Đà Lạt \n\nThời Gian : 3 Ngày 2 Đêm (KS : 3sao).\nGiá Tour : 1.150.000đ đến2.000.000đ.\n(Đi Về : Ô Tô).\nHOAVIETTRAVEL Rất Hân Hạnh Được Phục Quý Khách.', '<iframe src="https://docs.google.com/file/d/0B_-DosnpMOZRRDNBQWZZTXJPVnc/preview" width="640" height="480"></iframe>', 'images/gallery/1342600606malay.jpg', 1, 100, 1),
(17, 'GIẢM 10 % GIÁ TOUR ĐẦU NĂM 2016.', 2, 'Nha Trang - Buôn Mê Thuột - Đà Lạt .\nThời Gian : 6 Ngày 6 Đêm. (KS :3 Sao).\nGiá Tour : 3.500.000Đ đến 3.900.000Đ\n(Đi Về : ô Tô ).\nHOAVIETTRAVEL Rất Hân Hạnh Được Phục vụ Quý Khách.!!!\n', '<iframe src="https://docs.google.com/file/d/0B_-DosnpMOZRWWhVMjVVblBwWkk/preview" width="640" height="480"></iframe>', 'images/gallery/1342600911tay nguyen.jpg', 1, 100, 1),
(18, 'GIẢM 10 % GIÁ TOUR ĐẦU NĂM 2016.', 5, 'TPHCM - Hội An - Đã Nẵng - Huế .\nThời Gian : 6 ngày 6 đêm (KS : 3 Sao). \nGiá Tour : Từ 6.200.000Đ đến 7.000.000đ .\n(Đi Về : Máy Bay). \nHOAVIETTRAVEL Rất Hân Hạnh Được Phục Vụ Quý Khách. ', '<iframe src="https://docs.google.com/file/d/0B_-DosnpMOZRaGVpXzY4Q1FWYlk/preview" width="640" height="480"></iframe>', 'images/gallery/1342601380hue.jpg', 1, 50, 1),
(19, 'GIẢM 10 % GIÁ TOUR ĐẦU NĂM 2016.', 5, 'TPHCM - Hội An - Đã Nẵng - Huế . \nThời Gian : 6 ngày 6 đêm (KS : 3 Sao). \nGiá Tour : Từ 6.200.000Đ đến 7.000.000đ .\n(Đi Về : Máy Bay). \nHOAVIETTRAVEL Rất Hân Hạnh Được Phục Vụ Quý Khách. ', '<iframe src="https://docs.google.com/file/d/0B_-DosnpMOZRU0FiNFptSGVrTjA/preview" width="640" height="480"></iframe>', 'images/gallery/1342601380hue.jpg', 1, 50, 1),
(20, 'GIẢM 10 % GIÁ TOUR ĐẦU NĂM 2016.', 10, 'Thành Phố Hồ Chí Minh   -   Vũng Tàu.\nThời Gian : 2 Ngày 1 Đêm ( KS : 3 Sao).\nGiá Tour :820.000Đ đến 1.500.000đ .\n(Đi Về : Ô Tô.)\nHOAVIETTRAVEL Hân Hạnh Được Phục Vụ Quý Khách.', '<iframe src="https://docs.google.com/file/d/0B_-DosnpMOZRREJDTk9MRUdvVlE/preview" width="640" height="480"></iframe>', 'images/gallery/1342602211vung tau.jpg', 1, 500, 1),
(21, 'GIẢM 10 % GIÁ TOUR ĐẦU NĂM 2016.', 19, 'Khám Phá nét   Hà  Tiên  Thập  Cảnh .\nThời Gian : 3 Ngày 2 Đêm (KS : 3sao).\nGiá tour : Từ 990.000đ đến 1.360.000đ\n(  Đi về :  ÔTô ).\n\nHOAVIETTRAVEL Hân Hạnh Được Phục Quý Khách.', '<iframe src="https://docs.google.com/file/d/0B_-DosnpMOZRTHRVWFJ5MHhVWU0/preview" width="640" height="480"></iframe>', 'images/gallery/1342602587ha tien.jpg', 1, 100, 1),
(22, 'GIẢM 10 % GIÁ TOUR ĐẦU NĂM 2016.', 12, ' Phú  Quốc Thiên Đường Rực Nắng.\nThời Gian : 3 Ngày 2 Đêm (KS : 3 Sao).\nGiá Tour : Từ 2.700.000đ đến 3.000.000đ\n(Đi Vê : Máy Bay , Tàu , Ô Tô).\n\nHOAVIETTRAVEL Hân Hạnh Được Phục Quý Khách.', '<iframe src="https://docs.google.com/file/d/0B_-DosnpMOZRVzdsMUJUZkMteVU/preview" width="640" height="480"></iframe>', 'images/gallery/1342602931phu qouc.png', 1, 100, 1),
(23, 'GIẢM 10 % GIÁ TOUR ĐẦU NĂM 2016.', 28, ' TP - Hồ Chí Minh CiTy ', '<iframe src="https://docs.google.com/file/d/0B_-DosnpMOZRWWhVMjVVblBwWkk/preview" width="640" height="480"></iframe>', 'images/gallery/1342603271sg.png', 1, 50, 1),
(24, 'GIẢM 10 % GIÁ TOUR ĐẦU  NĂM 2016.', 4, 'TPHCM  -  Hội An  -  Đã Nẵng  -  Huế .\nThời Gian :5 ngày5 đêm (KS : 3 Sao).\nGiá Tour : Từ 5.600.000Đ đến 6.200.000đ .\n(Đi Về : Máy Bay).\nHOAVIETTRAVEL Rất Hân Hạnh Được Phục Vu Quý Khách. ', '<iframe src="https://docs.google.com/file/d/0B_-DosnpMOZRODFVbU9ldlRNLVU/preview" width="640" height="480"></iframe>', 'images/gallery/1342608719da nang.jpg', 1, 100, 1),
(25, 'GIẢM 10 % GIÁ TOUR ĐẦU NĂM 2016.', 9, 'TPHCM - Huế -  Đã Nẵng -  Hội An . \nThời Gian : 6 ngày 6 đêm (KS : 3 Sao). \nGiá Tour : Từ 5.200.000Đ đến 6.960.000đ . \n(Đi Về : Máy Bay).\nHOAVIETTRAVEL Rất Hân Hạnh Được Phục Vụ Quý Khách. ', '<iframe src="https://docs.google.com/file/d/0B_-DosnpMOZRemhSRlhvbFltRkU/preview" width="640" height="480"></iframe>', 'images/gallery/1342608953hoi an.jpg', 1, 100, 1),
(26, 'GIẢM 10 % GIÁ TOUR ĐẦU NĂM 2016.', 11, 'Du Lịch Miệt Vườn Long An.', '<iframe src="https://docs.google.com/file/d/0B_-DosnpMOZReGhEWW1ocE5WSVE/preview" width="640" height="480"></iframe>', 'images/gallery/1342609311long an.jpg', 1, 300, 1),
(27, 'GIẢM 10 % GIÁ TOUR ĐẦU NĂM 2016.', 15, 'TPHCM-Tiền Giang-Cần Thơ-Cà Mau.\nThời Gian : 4 ngày 3 đêm (KS : 3sao).\nGiá Tour : Từ 1.500.000đ đến 2.000.000đ\n(Đi về : Ô tô )\n\nHOAVIETTRAVEL Rất Hân Hạnh Được Phục Vụ Quý Khách.', '<iframe src="https://docs.google.com/file/d/0B_-DosnpMOZRdlV6NFEyVkFzSk0/preview" width="640" height="480"></iframe>', 'images/gallery/1342609548can tho.jpg', 1, 300, 1),
(28, 'GIẢM 10 % GIÁ TOUR ĐẦU NĂM 2016.', 16, 'TPHCM-Sóc Trăng-Cần Thơ-Cà Mau.\nThời Gian : 4 ngày 3 đêm (KS : 3sao).\nGiá Tour : Từ 1.600.000đ đến 2.890.000đ\n(Đi về : Ô tô )\n\nHOAVIETTRAVEL Rất Hân Hạnh Được Phục Vụ Quý Khách.', '<iframe src="https://docs.google.com/file/d/0B_-DosnpMOZRdlV6NFEyVkFzSk0/preview" width="640" height="480"></iframe>', 'images/gallery/1342609775soc trang.jpg', 1, 300, 1),
(29, 'GIẢM 10 % GIÁ TOUR ĐẦU NĂM 2016.', 17, 'TPHCM-Bạc Liêu-Cần Thơ-Cà Mau.\nThời Gian : 4 ngày 3 đêm (KS : 3sao).\nGiá Tour : Từ 1.500.000đ đến 1.890.000đ\n(Đi về : Ô tô )\n\nHOAVIETTRAVEL Rất Hân Hạnh Được Phục Vụ Quý Khạch.', '<iframe src="https://docs.google.com/file/d/0B_-DosnpMOZRdlV6NFEyVkFzSk0/preview" width="640" height="480"></iframe>', 'images/gallery/1342610040bac luu.jpg', 1, 150, 1),
(30, 'GIẢM 10 % GIÁ TOUR ĐẦU NĂM 2016.', 18, 'TPHCM-Tiền Giang-Cần Thơ-Cà Mau.\nThời Gian : 4 ngày 3 đêm (KS : 3sao).\nGiá Tour : Từ 1.500.000đ đến 1.890.000đ\n(Đi về : Ô tô )\n\nHOAVIETTRAVEL Rất Hân Hạnh Được Phục Vụ Quý Khách.', '<iframe src="https://docs.google.com/file/d/0B_-DosnpMOZRazNMUDZqbXhIRWc/preview" width="640" height="480"></iframe>', 'images/gallery/1342610502ca mau.jpg', 1, 250, 1);

-- --------------------------------------------------------

--
-- Table structure for table `triptype`
--

CREATE TABLE IF NOT EXISTS `triptype` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TypeName` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `Info` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `Status` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `triptype`
--

INSERT INTO `triptype` (`ID`, `TypeName`, `Info`, `Status`) VALUES
(1, 'Du lịch trong nước', 'Du lịch trong nước', 1),
(2, 'Du lịch nước ngoài', 'Du lịch nước ngoài', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Username` char(50) COLLATE utf8_unicode_ci NOT NULL,
  `Password` char(50) COLLATE utf8_unicode_ci NOT NULL,
  `Status` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `place`
--
ALTER TABLE `place`
  ADD CONSTRAINT `Place_FK_PlaceType` FOREIGN KEY (`TypeID`) REFERENCES `placetype` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `trip`
--
ALTER TABLE `trip`
  ADD CONSTRAINT `Trip_FK_Place` FOREIGN KEY (`PlaceID`) REFERENCES `place` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `Trip_FK_TripType` FOREIGN KEY (`TripTypeID`) REFERENCES `triptype` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
