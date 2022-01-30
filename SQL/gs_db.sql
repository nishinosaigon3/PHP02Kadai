-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 23, 2022 at 03:04 PM
-- Server version: 5.6.34-log
-- PHP Version: 7.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gs_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `gs_an_table`
--

CREATE TABLE `gs_an_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `naiyou` text COLLATE utf8_unicode_ci NOT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gs_an_table`
--

INSERT INTO `gs_an_table` (`id`, `name`, `email`, `naiyou`, `indate`) VALUES
(1, '西野圭輔', 'test@test.jp', 'アンケートサンプルテキスト', '2022-01-18 19:44:15'),
(2, '吉田君', 'test@test2.jp', 'Hello', '2022-01-18 19:52:12'),
(3, '田中', 'Hey', 'test3@test.jp', '2022-01-18 20:02:06'),
(4, '田中', 'test4@test.com', 'Good night', '2022-01-18 20:03:11'),
(5, 'ニシノケイスケ', 'keisuke.nishino@mmcu.com.ua', 'テストです。', '2022-01-18 20:51:45'),
(6, 'ニシノケイスケ', 'keisuke.nishino@mmcu.com.ua', 'テストです。', '2022-01-18 20:52:55'),
(7, 'Keisuke Nishino', 'nishinosaigon3@yahoo.co.jp', 'てｓｔ', '2022-01-18 20:54:00'),
(8, 'ニシノケイスケ', 'keisuke.nishino@mmcu.com.ua', 'kadai you test', '2022-01-18 21:40:50');

-- --------------------------------------------------------

--
-- Table structure for table `gs_bm_table`
--

CREATE TABLE `gs_bm_table` (
  `id` int(12) NOT NULL,
  `bname` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `burl` text COLLATE utf8_unicode_ci NOT NULL,
  `bcomment` text COLLATE utf8_unicode_ci NOT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gs_bm_table`
--

INSERT INTO `gs_bm_table` (`id`, `bname`, `burl`, `bcomment`, `indate`) VALUES
(1, 'アンネの日記', 'https://www.google.co.jp/books/edition/%E3%82%A2%E3%83%B3%E3%83%8D%E3%81%AE%E6%97%A5%E8%A8%98/JqD7ygAACAAJ?hl=ja', '悲しい話', '2022-01-18 21:55:55'),
(2, '進撃の巨人　1巻', 'https://www.google.co.jp/books/edition/%E9%80%B2%E6%92%83%E3%81%AE%E5%B7%A8%E4%BA%BA%E6%82%94%E3%81%84%E3%81%AA%E3%81%8D%E9%81%B8%E6%8A%9E_1/c884oAEACAAJ?hl=ja', '史上最高の漫画', '2022-01-20 20:09:28'),
(3, '1冊ですべて身につくHTML＆CSSとWebデザイン', 'https://www.google.co.jp/books/edition/1%E5%86%8A%E3%81%A7%E3%81%99%E3%81%B9%E3%81%A6%E8%BA%AB%E3%81%AB%E3%81%A4%E3%81%8FHTML_%EF%BC%86_CSS/zfyMDwAAQBAJ?hl=ja&gbpv=1&dq=1%E5%86%8A%E3%81%A7%E3%81%99%E3%81%B9%E3%81%A6%E8%BA%AB%E3%81%AB%E3%81%A4%E3%81%8FHTML%EF%BC%86CSS%E3%81%A8Web%E3%83%87%E3%82%B6%E3%82%A4%E3%83%B3&printsec=frontcover', 'とても分かり易い', '2022-01-20 20:12:26'),
(4, 'Java Script｢超｣入門', 'https://www.google.co.jp/books/edition/%E7%A2%BA%E3%81%8B%E3%81%AA%E5%8A%9B%E3%81%8C%E8%BA%AB%E3%81%AB%E3%81%A4%E3%81%8FJavaScript/tU6wDwAAQBAJ?hl=ja&gbpv=1&dq=Java+Script%EF%BD%A2%E8%B6%85%EF%BD%A3%E5%85%A5%E9%96%80&printsec=frontcover', '分かるようで分からない。', '2022-01-20 20:14:44'),
(5, '超加速経済　アフリカ', 'https://www.google.co.jp/books/edition/%E8%B6%85%E5%8A%A0%E9%80%9F%E7%B5%8C%E6%B8%88%E3%82%A2%E3%83%95%E3%83%AA%E3%82%AB/L_IvEAAAQBAJ?hl=ja&gbpv=1&dq=%E8%B6%85%E5%8A%A0%E9%80%9F%E7%B5%8C%E6%B8%88%E3%80%80%E3%82%A2%E3%83%95%E3%83%AA%E3%82%AB&printsec=frontcover', 'アフリカ興味深し。', '2022-01-20 20:57:25'),
(6, '竜馬がゆく', 'https://www.google.co.jp/books/edition/%E7%AB%9C%E9%A6%AC%E3%81%8C%E3%82%86%E3%81%8F_1_%E6%96%B0%E8%A3%85%E7%89%88/P7wTPQAACAAJ?hl=ja', '同じ時代をひたむきに生きた若者たちを描く長篇小説', '2022-01-23 20:46:26'),
(7, '', '', '', '2022-01-23 20:46:33'),
(8, '竜馬がゆく', 'https://www.google.co.jp/books/edition/%E7%AB%9C%E9%A6%AC%E3%81%8C%E3%82%86%E3%81%8F_1_%E6%96%B0%E8%A3%85%E7%89%88/P7wTPQAACAAJ?hl=ja', '同じ時代をひたむきに生きた若者たちを描く長篇小説', '2022-01-23 20:47:39'),
(9, 'DX戦略立案書', 'https://www.google.co.jp/books/edition/DX%E6%88%A6%E7%95%A5%E7%AB%8B%E6%A1%88%E6%9B%B8/1S8fzgEACAAJ?hl=ja', '本書により読者は、DXは戦略であることを理解', '2022-01-23 23:55:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gs_an_table`
--
ALTER TABLE `gs_an_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gs_an_table`
--
ALTER TABLE `gs_an_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
