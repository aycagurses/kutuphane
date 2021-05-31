-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost:3306
-- Üretim Zamanı: 31 May 2021, 13:45:41
-- Sunucu sürümü: 10.3.28-MariaDB
-- PHP Sürümü: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `aycagurses_kutup`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `AdminEmail` varchar(120) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `admin`
--

INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'Ayça GÜRSES', 'ag@aycagurses.com', 'admin', 'b149d8621cee37aaaf196472a039c073', '2021-05-23 09:24:10');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tblauthors`
--

CREATE TABLE `tblauthors` (
  `id` int(11) NOT NULL,
  `AuthorName` varchar(159) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `tblauthors`
--

INSERT INTO `tblauthors` (`id`, `AuthorName`, `creationDate`, `UpdationDate`) VALUES
(3, 'Mary Shelley', '2021-05-23 17:21:54', NULL),
(4, 'Sabahattin Ali', '2021-05-23 17:22:04', NULL),
(5, 'Albert Camus', '2021-05-23 20:52:03', '2021-05-27 20:12:46'),
(6, 'Hakan Günday', '2021-05-23 20:54:44', '2021-05-27 20:12:55'),
(7, 'Jostein Gaarder ', '2021-05-23 20:56:22', NULL),
(8, 'Adam Fawer', '2021-05-27 20:13:13', NULL),
(9, 'Isaac Asimov', '2021-05-27 20:13:24', NULL),
(10, 'Sir Arthur Conan Doyle', '2021-05-27 20:13:47', NULL),
(11, 'Fyodor Dostoyevski', '2021-05-27 20:13:58', NULL),
(12, 'Charles Dickens', '2021-05-27 20:14:09', NULL),
(13, 'Antoine de Saint-Exupery', '2021-05-27 20:14:22', NULL),
(14, 'Paulo Coelho', '2021-05-27 20:14:36', NULL),
(15, 'Mustafa Kemal Atatürk', '2021-05-27 20:14:45', NULL),
(16, 'Andrzej Sapkowski', '2021-05-27 20:14:55', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tblbooks`
--

CREATE TABLE `tblbooks` (
  `id` int(11) NOT NULL,
  `BookName` varchar(255) DEFAULT NULL,
  `CatId` int(11) DEFAULT NULL,
  `AuthorId` int(11) DEFAULT NULL,
  `ISBNNumber` int(11) DEFAULT NULL,
  `BookPrice` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `tblbooks`
--

INSERT INTO `tblbooks` (`id`, `BookName`, `CatId`, `AuthorId`, `ISBNNumber`, `BookPrice`, `RegDate`, `UpdationDate`) VALUES
(3, 'Frankenstein', 2, 3, 2147483647, 20, '2021-05-23 17:23:15', '2021-05-23 17:38:35'),
(5, 'Icimizdeki Seytan', 3, 4, 2147483647, 15, '2021-05-23 17:38:05', NULL),
(7, 'Kuyucakli Yusuf', 3, 4, 2147483647, 12, '2021-05-23 17:39:13', NULL),
(8, 'Kurk Mantolu Madonna', 3, 4, 2147483647, 16, '2021-05-23 17:39:41', NULL),
(9, 'Sirca Kosk', 3, 4, 2147483647, 18, '2021-05-23 17:40:15', NULL),
(10, 'yabanc?', 4, 5, 2147483647, 15, '2021-05-23 20:53:09', NULL),
(11, 'dü?ü?', 4, 5, 2147483647, 15, '2021-05-23 20:54:12', NULL),
(12, 'kinyas ile kayra', 4, 6, 2147483647, 25, '2021-05-23 20:55:14', NULL),
(13, 'az', 4, 6, 2147483647, 25, '2021-05-23 20:55:51', NULL),
(14, 'Sofie\'nin Dünyas?', 2, 7, 2147483647, 25, '2021-05-23 20:56:56', NULL),
(15, 'Olas?l?ks?z', 2, 8, 2147483647, 27, '2021-05-27 20:16:52', NULL),
(16, 'Foundation', 2, 9, 1234567890, 26, '2021-05-27 20:20:57', '2021-05-27 20:21:37'),
(17, 'Sherlock Holmes K?z?l Dosya', 5, 10, 1234567890, 25, '2021-05-27 20:22:26', NULL),
(18, 'Suç ve Ceza', 6, 11, 1234567890, 24, '2021-05-27 20:22:54', NULL),
(19, '?ki ?ehrin Hikayesi', 6, 12, 1234567890, 23, '2021-05-27 20:23:44', NULL),
(20, 'Küçük Prens', 6, 13, 1234567890, 23, '2021-05-27 20:24:19', NULL),
(21, 'Simyac?', 7, 14, 1234567890, 25, '2021-05-27 20:24:58', NULL),
(22, 'Nutuk', 8, 15, 1234567890, 20, '2021-05-27 20:25:18', NULL),
(23, 'The Witcher Son Dilek', 9, 16, 1234567890, 30, '2021-05-27 20:25:57', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(150) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Status`, `CreationDate`, `UpdationDate`) VALUES
(2, 'Bilim Kurgu', 1, '2021-05-23 17:11:42', '2021-05-23 17:20:49'),
(3, 'Roman', 1, '2021-05-23 17:22:17', '0000-00-00 00:00:00'),
(4, 'Edebiyat', 1, '2021-05-23 20:51:47', '2021-05-27 20:11:21'),
(5, 'Polisiye', 1, '2021-05-27 20:11:41', '0000-00-00 00:00:00'),
(6, 'Klasikler', 1, '2021-05-27 20:11:51', '0000-00-00 00:00:00'),
(7, 'Felsefe', 1, '2021-05-27 20:12:01', '0000-00-00 00:00:00'),
(8, 'Tarih', 1, '2021-05-27 20:12:08', '0000-00-00 00:00:00'),
(9, 'Fantastik', 1, '2021-05-27 20:12:15', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tblissuedbookdetails`
--

CREATE TABLE `tblissuedbookdetails` (
  `id` int(11) NOT NULL,
  `BookId` int(11) DEFAULT NULL,
  `StudentID` varchar(150) DEFAULT NULL,
  `IssuesDate` timestamp NULL DEFAULT current_timestamp(),
  `ReturnDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `RetrunStatus` int(1) DEFAULT NULL,
  `fine` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `tblissuedbookdetails`
--

INSERT INTO `tblissuedbookdetails` (`id`, `BookId`, `StudentID`, `IssuesDate`, `ReturnDate`, `RetrunStatus`, `fine`) VALUES
(2, 2, 'SID016', '2021-05-23 09:22:22', '2021-05-23 09:22:47', 1, 0),
(3, NULL, 'SID017', '2021-05-23 17:43:25', NULL, NULL, NULL),
(4, 16, 'SID020', '2021-05-27 20:29:32', '2021-05-27 20:31:08', 1, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tblstudents`
--

CREATE TABLE `tblstudents` (
  `id` int(11) NOT NULL,
  `StudentId` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `tblstudents`
--

INSERT INTO `tblstudents` (`id`, `StudentId`, `FullName`, `EmailId`, `MobileNumber`, `Password`, `Status`, `RegDate`, `UpdationDate`) VALUES
(1, 'SID016', 'Deneme', 'deneme@deneme.com', '5555555555', '8f10d078b2799206cfe914b32cc6a5e9', 1, '2021-05-23 09:17:39', '2021-05-23 10:10:50'),
(2, 'SID017', 'Ayça Gürses', 'ag@aycagurses.com', '5555555555', 'e10adc3949ba59abbe56e057f20f883e', 1, '2021-05-23 11:45:39', NULL),
(3, 'SID018', 'melisa ça?ala', 'selen_melisa_@hotmail.com', '0553445645', '6af61f7caf54bf435f9300f35d6e9819', 1, '2021-05-23 17:09:29', NULL),
(4, 'SID019', 'Berkay Kaplano?lu', 'berkay.kaplan.12@hotmail.com', '5364559063', 'ed2b1f468c5f915f3f1cf75d7068baae', 1, '2021-05-23 17:10:19', NULL),
(5, 'SID020', 'Mahmut Yasin Ertu?rul', 'mahmutertugrul@gmail.com', '5076877705', 'e10adc3949ba59abbe56e057f20f883e', 1, '2021-05-27 20:28:16', NULL);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `tblauthors`
--
ALTER TABLE `tblauthors`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `tblbooks`
--
ALTER TABLE `tblbooks`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `StudentId` (`StudentId`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `tblauthors`
--
ALTER TABLE `tblauthors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Tablo için AUTO_INCREMENT değeri `tblbooks`
--
ALTER TABLE `tblbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Tablo için AUTO_INCREMENT değeri `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
