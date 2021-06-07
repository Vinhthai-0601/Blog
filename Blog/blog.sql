-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 07, 2021 at 01:44 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `comment` text NOT NULL,
  `comment_author` int(11) NOT NULL,
  `comment_post` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `parent_comment` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`ID`, `comment`, `comment_author`, `comment_post`, `date_created`, `parent_comment`) VALUES
(16, 'Hello Sammy', 4, 23, '2021-06-06 20:20:47', NULL),
(14, 'Avenger Assemble ', 5, 22, '2021-06-06 20:17:19', NULL),
(15, 'What a beautiful city !!!', 4, 23, '2021-06-06 20:20:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) NOT NULL,
  `Content` varchar(255) NOT NULL,
  `Post_ID` int(11) NOT NULL,
  `Author` varchar(255) NOT NULL,
  `Date_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Image` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`ID`, `Title`, `Content`, `Post_ID`, `Author`, `Date_time`, `Image`) VALUES
(22, 'Iron man', 'I am iron man <3', 5, 'vinhThai', '2021-06-06 20:07:13', 'images/iron man_60bcc881a7218.jpg'),
(23, 'Sunshine', 'City of love <3 ', 4, 'sammy', '2021-06-06 20:18:48', 'images/daniele-levis-pelusi-jTknOGI18us-unsplash_60bccb38b1370.jpg'),
(24, 'Sun Rise', 'Love it <3', 4, 'sammy', '2021-06-06 20:40:19', 'images/daniele-levis-pelusi-jTknOGI18us-unsplash_60bcd043a80d4.jpg'),
(25, 'Work', 'Hard-working every time!', 4, 'sammy', '2021-06-06 20:41:10', 'images/180700594_247403463807668_676307192907625109_n_60bcd0769724d.png');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
CREATE TABLE IF NOT EXISTS `test` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `pw1` varchar(255) NOT NULL,
  `Gender` varchar(255) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`ID`, `Name`, `Email`, `pw1`, `Gender`, `date_time`) VALUES
(5, 'vinhThai', '1959000@itec.hcmus.edu.vn', '$2y$10$sbEOiOjHjodUYgumGFuauuYU0AUNd5TsFtrLncx2GGjrSRG.ycvUa', '', '2021-06-06 13:24:46'),
(4, 'sammy', '1959036@itec.hcmus.edu.vn', '$2y$10$cLj2oImOddJp0nmXdYo4JuhesI1KTLVwlWhHP65xwBZAnhpFgwWL6', '', '2021-05-31 20:32:32');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
