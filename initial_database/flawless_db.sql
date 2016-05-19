-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2016 at 06:22 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `flawless_db`
--
CREATE DATABASE IF NOT EXISTS `flawless_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `flawless_db`;

-- --------------------------------------------------------

--
-- Table structure for table `test_tree`
--

CREATE TABLE IF NOT EXISTS `test_tree` (
  `test` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vii_admin`
--

CREATE TABLE IF NOT EXISTS `vii_admin` (
  `id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `id_admin_group` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email_address` varchar(128) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `age` varchar(10) DEFAULT NULL,
  `occupation` varchar(100) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `isActive` tinyint(4) NOT NULL DEFAULT '1',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=58 ;

--
-- Dumping data for table `vii_admin`
--

INSERT INTO `vii_admin` (`id_admin`, `id_admin_group`, `username`, `password`, `email_address`, `firstname`, `lastname`, `age`, `occupation`, `image`, `isActive`, `date_add`, `date_upd`) VALUES
(1, 1, 'admin', '098f6bcd4621d373cade4e832627b4f6', 'info@viiworks.com', 'Admin', 'Viiworks', NULL, NULL, NULL, 1, '2013-10-21 08:43:42', '2014-02-13 05:06:45'),
(56, 2, 'webadmin', '33dfa77a638de63d9655f8854a805703', '', 'Web Admin', 'User', NULL, NULL, NULL, 1, '2015-06-17 09:21:29', '2015-06-17 09:38:30'),
(57, 10, 'staffuser', '33dfa77a638de63d9655f8854a805703', '', 'Staff', 'User', NULL, NULL, NULL, 1, '2015-06-17 09:21:52', '2015-06-17 09:54:05');

-- --------------------------------------------------------

--
-- Table structure for table `vii_admin_group`
--

CREATE TABLE IF NOT EXISTS `vii_admin_group` (
  `id_admin_group` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(64) NOT NULL,
  `group_description` text NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_admin_group`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `vii_admin_group`
--

INSERT INTO `vii_admin_group` (`id_admin_group`, `group_name`, `group_description`, `date_add`, `date_upd`) VALUES
(1, 'Administrator', 'Admin Group Description', '2011-03-15 10:39:34', '2011-03-15 10:39:34'),
(2, 'Website Admin Manager', 'Website Admin Manager', '2015-06-17 09:19:53', '2015-06-17 09:32:58'),
(10, 'Staff Group', 'Staff Group', '2015-06-17 09:20:34', '2015-06-17 09:20:34');

-- --------------------------------------------------------

--
-- Table structure for table `vii_admin_log`
--

CREATE TABLE IF NOT EXISTS `vii_admin_log` (
  `id_admin_log` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(255) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date_add` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_admin_log`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=117 ;

--
-- Dumping data for table `vii_admin_log`
--

INSERT INTO `vii_admin_log` (`id_admin_log`, `ip_address`, `id_admin`, `name`, `date_add`) VALUES
(1, '10.10.1.12', 1, 'Admin Viiworks', '2016-01-04 06:13:18'),
(2, '10.10.1.12', 1, 'Admin Viiworks', '2016-01-07 07:58:13'),
(3, '10.10.1.12', 1, 'Admin Viiworks', '2016-01-07 07:59:35'),
(4, '10.10.1.12', 1, 'Admin Viiworks', '2016-01-07 08:02:21'),
(5, '10.10.1.12', 1, 'Admin Viiworks', '2016-01-07 08:03:07'),
(6, '10.10.1.12', 1, 'Admin Viiworks', '2016-01-07 08:06:54'),
(7, '10.10.1.12', 1, 'Admin Viiworks', '2016-01-07 08:07:17'),
(8, '10.10.1.12', 1, 'Admin Viiworks', '2016-01-07 08:07:41'),
(9, '10.10.1.12', 1, 'Admin Viiworks', '2016-01-07 08:08:37'),
(10, '10.10.1.12', 1, 'Admin Viiworks', '2016-01-07 08:09:06'),
(11, '10.10.1.12', 1, 'Admin Viiworks', '2016-01-07 08:12:53'),
(12, '10.10.1.12', 1, 'Admin Viiworks', '2016-01-07 08:13:07'),
(13, '10.10.1.12', 1, 'Admin Viiworks', '2016-01-07 08:13:42'),
(14, '10.10.1.12', 1, 'Admin Viiworks', '2016-01-07 08:15:00'),
(15, '10.10.1.12', 1, 'Admin Viiworks', '2016-01-07 08:25:23'),
(16, '10.10.1.12', 1, 'Admin Viiworks', '2016-01-07 08:29:55'),
(17, '10.10.1.12', 1, 'Admin Viiworks', '2016-01-07 08:30:51'),
(18, '10.10.1.12', 1, 'Admin Viiworks', '2016-01-07 08:47:08'),
(19, '10.10.1.12', 1, 'Admin Viiworks', '2016-01-07 08:47:15'),
(20, '10.10.1.12', 1, 'Admin Viiworks', '2016-01-07 08:53:44'),
(21, '10.10.1.12', 1, 'Admin Viiworks', '2016-01-07 08:54:06'),
(22, '10.10.1.12', 1, 'Admin Viiworks', '2016-01-12 01:01:23'),
(23, '10.10.1.12', 56, 'Web Admin User', '2016-01-14 09:51:27'),
(24, '10.10.1.12', 56, 'Web Admin User', '2016-01-14 10:02:06'),
(25, '10.10.1.12', 1, 'Admin Viiworks', '2016-01-14 10:25:18'),
(26, '10.10.1.12', 1, 'Admin Viiworks', '2016-01-15 07:27:34'),
(27, '10.10.1.12', 1, 'Admin Viiworks', '2016-01-15 07:28:05'),
(28, '::1', 1, 'Admin Viiworks', '2016-02-02 08:22:14'),
(29, '::1', 1, 'Admin Viiworks', '2016-02-02 09:17:29'),
(30, '::1', 1, 'Admin Viiworks', '2016-02-02 09:18:30'),
(31, '::1', 1, 'Admin Viiworks', '2016-02-03 01:15:08'),
(32, '10.10.1.4', 56, 'Web Admin User', '2016-02-03 01:54:29'),
(33, '10.10.1.4', 1, 'Admin Viiworks', '2016-02-03 01:54:41'),
(34, '10.10.1.12', 1, 'Admin Viiworks', '2016-02-03 02:09:53'),
(35, '10.10.1.2', 1, 'Admin Viiworks', '2016-02-03 02:25:08'),
(36, '10.10.1.2', 1, 'Admin Viiworks', '2016-02-03 03:39:23'),
(37, '10.10.1.231', 1, 'Admin Viiworks', '2016-02-03 07:03:36'),
(38, '10.10.1.4', 1, 'Admin Viiworks', '2016-02-03 09:55:48'),
(39, '10.10.1.17', 1, 'Admin Viiworks', '2016-02-04 03:47:56'),
(40, '10.10.1.12', 1, 'Admin Viiworks', '2016-02-04 07:36:41'),
(41, '10.10.1.231', 1, 'Admin Viiworks', '2016-02-04 13:39:08'),
(42, '10.10.1.4', 1, 'Admin Viiworks', '2016-02-05 01:18:53'),
(43, '10.10.1.4', 1, 'Admin Viiworks', '2016-02-05 07:25:39'),
(44, '10.10.1.4', 1, 'Admin Viiworks', '2016-02-09 02:54:56'),
(45, '10.10.1.231', 1, 'Admin Viiworks', '2016-02-09 06:01:32'),
(46, '10.10.1.17', 1, 'Admin Viiworks', '2016-02-09 06:45:19'),
(47, '10.10.1.12', 1, 'Admin Viiworks', '2016-02-09 07:56:23'),
(48, '10.10.1.17', 1, 'Admin Viiworks', '2016-02-09 07:59:30'),
(49, '10.10.1.12', 1, 'Admin Viiworks', '2016-02-09 08:06:43'),
(50, '10.10.1.2', 1, 'Admin Viiworks', '2016-02-09 08:49:32'),
(51, '10.10.1.4', 1, 'Admin Viiworks', '2016-02-10 05:03:09'),
(52, '10.10.1.4', 1, 'Admin Viiworks', '2016-02-11 10:06:39'),
(53, '10.10.1.4', 1, 'Admin Viiworks', '2016-02-11 11:08:54'),
(54, '10.10.1.4', 1, 'Admin Viiworks', '2016-02-11 11:36:37'),
(55, '10.10.1.17', 1, 'Admin Viiworks', '2016-02-12 02:51:31'),
(56, '10.10.1.4', 1, 'Admin Viiworks', '2016-02-12 03:15:14'),
(57, '10.10.1.17', 1, 'Admin Viiworks', '2016-02-12 03:52:51'),
(58, '10.10.1.4', 1, 'Admin Viiworks', '2016-02-15 01:56:06'),
(59, '10.10.1.17', 1, 'Admin Viiworks', '2016-02-15 04:18:15'),
(60, '10.10.1.4', 1, 'Admin Viiworks', '2016-02-15 05:23:33'),
(61, '10.10.1.17', 1, 'Admin Viiworks', '2016-02-15 08:28:44'),
(62, '10.10.1.4', 1, 'Admin Viiworks', '2016-02-16 03:32:07'),
(63, '10.10.1.4', 1, 'Admin Viiworks', '2016-02-16 03:41:57'),
(64, '10.10.1.4', 1, 'Admin Viiworks', '2016-02-16 04:05:59'),
(65, '10.10.1.4', 1, 'Admin Viiworks', '2016-02-17 03:55:55'),
(66, '10.10.1.4', 1, 'Admin Viiworks', '2016-02-17 04:01:10'),
(67, '10.10.1.4', 1, 'Admin Viiworks', '2016-02-17 04:20:32'),
(68, '10.10.1.4', 1, 'Admin Viiworks', '2016-02-17 05:09:29'),
(69, '10.10.1.4', 1, 'Admin Viiworks', '2016-02-17 09:46:06'),
(70, '10.10.1.4', 1, 'Admin Viiworks', '2016-02-18 04:19:21'),
(71, '10.10.1.4', 1, 'Admin Viiworks', '2016-02-18 04:59:35'),
(72, '10.10.1.4', 1, 'Admin Viiworks', '2016-02-18 05:19:46'),
(73, '10.10.1.4', 1, 'Admin Viiworks', '2016-02-18 06:51:37'),
(74, '10.10.1.4', 1, 'Admin Viiworks', '2016-02-18 07:27:14'),
(75, '10.10.1.12', 1, 'Admin Viiworks', '2016-02-18 07:35:27'),
(76, '10.10.1.4', 1, 'Admin Viiworks', '2016-02-18 08:12:30'),
(77, '10.10.1.4', 1, 'Admin Viiworks', '2016-02-18 08:16:34'),
(78, '10.10.1.4', 1, 'Admin Viiworks', '2016-02-18 08:19:46'),
(79, '10.10.1.4', 1, 'Admin Viiworks', '2016-02-19 11:38:38'),
(80, '10.10.1.4', 1, 'Admin Viiworks', '2016-02-22 02:17:00'),
(81, '10.10.1.12', 1, 'Admin Viiworks', '2016-02-22 05:40:22'),
(82, '10.10.1.23', 1, 'Admin Viiworks', '2016-02-22 07:27:12'),
(83, '10.10.1.4', 1, 'Admin Viiworks', '2016-02-22 10:01:47'),
(84, '10.10.1.4', 1, 'Admin Viiworks', '2016-02-23 06:48:36'),
(85, '10.10.1.4', 1, 'Admin Viiworks', '2016-02-23 09:12:42'),
(86, '10.10.1.4', 1, 'Admin Viiworks', '2016-02-23 09:15:35'),
(87, '10.10.1.17', 1, 'Admin Viiworks', '2016-02-24 02:34:16'),
(88, '10.10.1.4', 1, 'Admin Viiworks', '2016-02-24 03:24:19'),
(89, '10.10.1.17', 1, 'Admin Viiworks', '2016-02-24 04:14:53'),
(90, '10.10.1.17', 1, 'Admin Viiworks', '2016-02-24 06:50:31'),
(91, '10.10.1.4', 1, 'Admin Viiworks', '2016-02-24 08:08:35'),
(92, '10.10.1.4', 1, 'Admin Viiworks', '2016-02-24 10:41:19'),
(93, '10.10.1.4', 1, 'Admin Viiworks', '2016-02-26 02:32:02'),
(94, '10.10.1.4', 1, 'Admin Viiworks', '2016-02-26 06:09:40'),
(95, '10.10.1.4', 1, 'Admin Viiworks', '2016-02-26 08:35:20'),
(96, '10.10.1.12', 1, 'Admin Viiworks', '2016-02-29 06:15:57'),
(97, '10.10.1.4', 1, 'Admin Viiworks', '2016-02-29 06:16:01'),
(98, '10.10.1.23', 56, 'Web Admin User', '2016-02-29 09:39:25'),
(99, '10.10.1.4', 1, 'Admin Viiworks', '2016-03-07 10:05:01'),
(100, '10.10.1.4', 1, 'Admin Viiworks', '2016-03-08 04:03:05'),
(101, '10.10.1.4', 1, 'Admin Viiworks', '2016-03-08 04:52:33'),
(102, '10.10.1.4', 1, 'Admin Viiworks', '2016-03-08 06:11:40'),
(103, '10.10.1.12', 1, 'Admin Viiworks', '2016-03-08 06:39:22'),
(104, '10.10.1.4', 56, 'Web Admin User', '2016-03-08 06:39:36'),
(105, '10.10.1.12', 56, 'Web Admin User', '2016-03-08 06:39:46'),
(106, '10.10.1.12', 1, 'Admin Viiworks', '2016-03-08 06:40:08'),
(107, '10.10.1.4', 1, 'Admin Viiworks', '2016-03-08 06:40:24'),
(108, '10.10.1.4', 1, 'Admin Viiworks', '2016-03-08 06:42:52'),
(109, '10.10.1.4', 56, 'Web Admin User', '2016-03-08 06:43:03'),
(110, '10.10.1.4', 56, 'Web Admin User', '2016-03-08 06:57:37'),
(111, '10.10.1.4', 1, 'Admin Viiworks', '2016-03-08 06:58:10'),
(112, '10.10.1.4', 56, 'Web Admin User', '2016-03-08 07:01:53'),
(113, '10.10.1.4', 1, 'Admin Viiworks', '2016-05-04 03:42:09'),
(114, '10.10.1.4', 56, 'Web Admin User', '2016-05-10 04:34:52'),
(115, '10.10.1.4', 1, 'Admin Viiworks', '2016-05-10 04:35:33'),
(116, '10.10.1.4', 56, 'Web Admin User', '2016-05-10 04:38:06');

-- --------------------------------------------------------

--
-- Table structure for table `vii_admin_permission`
--

CREATE TABLE IF NOT EXISTS `vii_admin_permission` (
  `id_admin_permission` int(11) NOT NULL AUTO_INCREMENT,
  `id_admin_group` int(11) NOT NULL,
  `id_module` int(11) NOT NULL,
  `sort_order` tinyint(4) NOT NULL,
  `isActive` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_admin_permission`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=215 ;

--
-- Dumping data for table `vii_admin_permission`
--

INSERT INTO `vii_admin_permission` (`id_admin_permission`, `id_admin_group`, `id_module`, `sort_order`, `isActive`) VALUES
(1, 1, 1, 1, 1),
(2, 1, 2, 2, 1),
(3, 1, 3, 3, 1),
(4, 1, 6, 4, 1),
(5, 1, 7, 5, 1),
(6, 1, 10, 6, 1),
(7, 1, 11, 7, 1),
(8, 1, 12, 8, 1),
(9, 1, 15, 9, 1),
(10, 1, 17, 10, 1),
(11, 1, 18, 11, 1),
(12, 1, 20, 12, 1),
(13, 1, 23, 13, 1),
(14, 1, 24, 14, 1),
(167, 2, 1, 1, 1),
(168, 2, 2, 2, 1),
(190, 10, 11, 11, 1),
(192, 10, 15, 15, 0),
(193, 10, 17, 17, 1),
(191, 10, 12, 12, 0),
(189, 10, 10, 10, 0),
(186, 10, 3, 3, 1),
(184, 10, 1, 1, 1),
(194, 10, 18, 18, 0),
(196, 10, 23, 23, 0),
(198, 10, 25, 25, 0),
(197, 10, 24, 24, 0),
(200, 10, 32, 32, 0),
(169, 2, 3, 3, 1),
(170, 2, 6, 6, 1),
(183, 2, 32, 32, 0),
(171, 2, 7, 7, 1),
(187, 10, 6, 6, 0),
(172, 2, 10, 10, 0),
(173, 2, 11, 11, 1),
(181, 2, 25, 25, 1),
(174, 2, 12, 12, 1),
(188, 10, 7, 7, 1),
(175, 2, 15, 15, 1),
(185, 10, 2, 2, 0),
(176, 2, 17, 17, 1),
(182, 2, 30, 30, 1),
(177, 2, 18, 18, 1),
(195, 10, 20, 20, 0),
(178, 2, 20, 20, 1),
(179, 2, 23, 23, 1),
(180, 2, 24, 24, 1),
(16, 1, 30, 4, 1),
(199, 10, 30, 30, 0),
(15, 1, 25, 3, 1),
(166, 1, 32, 32, 0),
(201, 1, 31, 31, 1),
(202, 1, 32, 32, 1),
(203, 2, 32, 32, 1),
(204, 10, 32, 32, 1),
(205, 1, 33, 33, 1),
(206, 2, 33, 33, 1),
(207, 10, 33, 33, 1),
(208, 1, 34, 34, 1),
(209, 2, 34, 34, 1),
(210, 10, 34, 34, 1),
(211, 1, 35, 35, 1),
(212, 2, 35, 35, 1),
(213, 10, 35, 35, 1),
(214, 2, 31, 31, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vii_appointment`
--

CREATE TABLE IF NOT EXISTS `vii_appointment` (
  `id_contact_us` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `treatment` varchar(115) DEFAULT NULL,
  `date_appointment` date DEFAULT NULL,
  `time_appointment` time DEFAULT NULL,
  `id_branch` mediumint(9) NOT NULL,
  `medical_info` text,
  `comment` text,
  `date_add` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_contact_us`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=47 ;

--
-- Dumping data for table `vii_appointment`
--

INSERT INTO `vii_appointment` (`id_contact_us`, `name`, `email`, `phone`, `treatment`, `date_appointment`, `time_appointment`, `id_branch`, `medical_info`, `comment`, `date_add`) VALUES
(1, 'Sheldon _TEST_', 'tj.module.test@gmail.com', '0479109394', '1', NULL, NULL, 8, '', '', '2016-02-10 01:55:27'),
(2, 'rwe', 'rwe', 'rwe', '1', NULL, NULL, 8, '', '', '2016-02-11 23:55:50'),
(3, 'rwe', 'rwe', 'rwe', '1', NULL, NULL, 8, '', '', '2016-02-11 23:55:51'),
(4, 'rwe', 'rwer', 'rwerwerwe', '1', NULL, NULL, 8, '', '', '2016-02-11 23:56:12'),
(5, 'asd', 'asd', 'ads', '2', NULL, NULL, 8, '', '', '2016-02-18 01:24:53'),
(6, 'asd', 'asd', 'ads', '2', NULL, NULL, 8, '', '', '2016-02-18 01:24:56'),
(26, 'zeir ', 'zeir.fontanilla@viiworks.com', 'test', '2', '0000-00-00', '01:00:00', 8, '', '', '2016-02-23 03:46:12'),
(25, '12313', 'zeir.fontanilla@viiworks.com', '212313', '2', '0000-00-00', '01:00:00', 8, 'test', '', '2016-02-23 03:43:55'),
(22, '2y37', 'zkdu', 'i282j', '1', '0000-00-00', '19:26:00', 8, 'Test', '', '2016-02-22 04:27:05'),
(23, '123478216478', 'flkasf;lka;l', '232134124', '2', '2016-02-17', '15:08:00', 37, 'test', 'test', '2016-02-23 00:08:30'),
(24, '12313', 'zeir.fontanilla@viiworks.com', '212313', '2', '0000-00-00', '01:00:00', 8, 'test', '', '2016-02-23 03:43:55'),
(21, 'zei664564', '4654', 'efW', '1', '2016-02-25', '15:32:00', 8, 'TEST', 'TEST', '2016-02-22 00:32:30'),
(20, 'HI', 'HI', 'HI', '2', '2016-02-17', '15:27:00', 5, 'sad', 'asdasd', '2016-02-22 00:28:06'),
(19, 'mmmm', 'mmmm@gmail.com', 'dasdas', '1', '0000-00-00', '01:00:00', 8, '', '', '2016-02-21 23:03:03'),
(27, 'zei', 'test', 'tes', '2', '0000-00-00', '15:08:00', 8, '', '', '2016-02-23 03:51:33'),
(28, 'asdf', 'sdf', 'sdf', '2', '0000-00-00', '01:00:00', 8, 'asdf', 'sadf', '2016-02-23 21:14:19'),
(29, 'asdf', 'sdfs', 'fdsf', '2', '0000-00-00', '01:00:00', 8, 'asdf', 'sadf', '2016-02-23 21:15:27'),
(30, 'asd', 'asd', 'dasd', '2', '0000-00-00', '01:00:00', 8, 'asd', 'asd', '2016-02-23 21:16:33'),
(31, 'aaaaa', 'kirby.lagunda@viiworks.com', 'bbbbb', '2', '0000-00-00', '00:46:00', 8, 'ccccc', 'ddddd', '2016-02-23 21:46:56'),
(32, 'aaaaa', 'kirby.lagunda@viiworks.com', 'bbbbb', '4', '0000-00-00', '00:03:00', 8, '7777', '888888', '2016-02-23 22:03:33'),
(33, 'aaaaa', 'kirby.lagunda@viiworks.com', 'bbbbb', '2', '0000-00-00', '00:03:00', 8, 'ccccc', 'ddddd', '2016-02-23 22:06:39'),
(34, 'aaaaa', 'kirby.lagunda@viiworks.com', 'bbbbb', '2', '0000-00-00', '00:03:00', 5, 'cccccc', 'ddddd', '2016-02-23 22:07:34'),
(35, 'aaaaa', 'kirby.lagunda@viiworks.com', 'bbbbbb', '2', '0000-00-00', '00:03:00', 8, 'ccccccc', 'dddddddd', '2016-02-23 22:39:14'),
(36, 'aaaa', 'kirby.lagunda@viiworks.com', 'bbbb', '2', '0000-00-00', '00:03:00', 8, 'cc', 'cdddd', '2016-02-23 22:43:10'),
(37, 'aaaaa', 'kirby.lagunda@viiworks.com', 'bbbbb', '2', '0000-00-00', '00:03:00', 8, 'aaa', 'bb', '2016-02-23 22:46:32'),
(38, 'aaaa', 'kirby.lagunda@viiworks.com', 'bbbb', '2', '0000-00-00', '00:48:00', 8, 'cccc', 'ddd', '2016-02-23 22:48:14'),
(39, 'asdf', 'kirby.lagunda@viiworks.com', 'asdf', '2', '2016-02-24', '15:35:00', 8, 'asdf', 'asdf', '2016-02-24 00:35:40'),
(40, 'aaa', '', '234234', '2', '2016-02-24', '15:46:00', 8, 'aaaa', 'bbb', '2016-02-24 00:47:00'),
(41, 'aaaaa', '', '1231', '2', '2016-02-24', '15:47:00', 8, 'aaaaaaaa', 'bbbbbbbbb', '2016-02-24 00:47:33'),
(42, 'aaaaa', 'kirby.lagunda@viiworks.com', '1231', '2', '2016-02-24', '15:47:00', 8, 'aaaaaaaa', 'bbbbbbbbb', '2016-02-24 00:49:08'),
(43, 'aaaaa', 'kirby.lagunda@viiworks.com', '123', '2', '2016-02-24', '15:54:00', 8, 'aaa', 'bbbb', '2016-02-24 00:54:38'),
(44, 'aaa', 'kirby.lagunda@viiworks.com', '123', '2', '2016-02-24', '15:58:00', 8, 'aaaa', 'bbb', '2016-02-24 00:58:31'),
(45, 'aaa', 'kirby.lagunda@viiworks.com', '123', '2', '2016-02-24', '15:59:00', 8, 'aaa', 'bbb', '2016-02-24 00:59:17'),
(46, 'yyh', 'zeir.fontanilla@viiworks.com', '3457', '2', '2016-02-29', '18:05:00', 8, '', '', '2016-02-29 03:06:00');

-- --------------------------------------------------------

--
-- Table structure for table `vii_banner`
--

CREATE TABLE IF NOT EXISTS `vii_banner` (
  `id_banner` int(11) NOT NULL AUTO_INCREMENT,
  `image_title` text,
  `image_sub_title` text,
  `image_sub_title2` text,
  `image_desc` text,
  `image_src` varchar(255) DEFAULT NULL,
  `image_src2` varchar(255) DEFAULT NULL,
  `image_link` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `date_add` timestamp NULL DEFAULT NULL,
  `date_upd` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_banner`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `vii_banner`
--

INSERT INTO `vii_banner` (`id_banner`, `image_title`, `image_sub_title`, `image_sub_title2`, `image_desc`, `image_src`, `image_src2`, `image_link`, `status`, `date`, `date_add`, `date_upd`) VALUES
(11, 'Banner', '', '', '', 'f664ef9b8956d0c98554619133d65118.png', '', 'http://10.10.1.4/flawless/contactus', 1, '2016-02-11', '2016-02-11 03:34:55', NULL),
(12, 'Banner', '', '', '', '05d5ec2bd873c487914ba7db6213fe6d.png', '', '', 1, '2016-02-11', '2016-02-11 03:35:07', NULL),
(13, 'Banner', '', '', '', 'a0841ec04513b0e40f179a723f43fe0f.png', '', '', 1, '2016-02-11', '2016-02-11 03:35:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vii_bc`
--

CREATE TABLE IF NOT EXISTS `vii_bc` (
  `id_bc` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_bc`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `vii_bc`
--

INSERT INTO `vii_bc` (`id_bc`, `name`, `date_add`) VALUES
(1, 'admin', '2014-02-17 00:00:00'),
(2, 'dashboard', '2014-02-18 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `vii_bc_admin`
--

CREATE TABLE IF NOT EXISTS `vii_bc_admin` (
  `id_bc_admin` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `html_id` varchar(30) NOT NULL,
  `parent_id` int(3) NOT NULL DEFAULT '1',
  `module` varchar(30) NOT NULL,
  `method` varchar(30) NOT NULL,
  PRIMARY KEY (`id_bc_admin`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=60 ;

--
-- Dumping data for table `vii_bc_admin`
--

INSERT INTO `vii_bc_admin` (`id_bc_admin`, `name`, `html_id`, `parent_id`, `module`, `method`) VALUES
(2, 'Home', 'bcHome', 0, 'admindashboard', 'index'),
(3, 'Settings', 'bcSettings', 0, '', ''),
(4, 'CMS', 'bcCMS', 0, 'cms', ''),
(5, 'Contact Us', 'bcContact', 0, '', ''),
(6, 'Newsletter', 'bcNews', 0, '', ''),
(7, 'General', 'bcSettingsGeneral', 3, 'settings', 'index'),
(8, 'Users', 'bcSettingsUsers', 3, 'settings', 'users'),
(9, 'Groups', 'bcSettingsGroups', 3, 'settings', 'groups'),
(10, 'Modules', 'bcSettingsModules', 3, 'settings', 'modules'),
(11, 'Permissions', 'bcSettingsPermissions', 3, 'settings', 'permissions'),
(12, 'Server', 'bcSettingsServer', 3, 'settings', 'server'),
(13, 'Subscribers', 'bcNewsSub', 6, 'newslettermanager', 'index'),
(14, 'Archive', 'bcNewsArchive', 6, 'newslettermanager', 'archive'),
(15, 'Settings', 'bcNewsSettings', 6, 'newslettermanager', 'settings'),
(16, 'Messages', 'bcContactIndex', 5, 'contactusmanager', 'index'),
(17, 'Settings', 'bcContactSettings', 5, 'contactusmanager', 'settings'),
(18, 'Breadcrumbs', 'bcBc', 0, '', ''),
(19, 'Admin', 'bcBcAdmin', 18, 'breadcrumbs', 'index'),
(21, 'FAQ', 'bcFAQManager', 0, '', ''),
(22, 'Items', 'bcFAQItems', 21, 'faqmanager', 'index'),
(23, 'Categories', 'bcFAQCategories', 21, 'faqmanager', 'category'),
(24, 'SEO', 'bcSeoManager', 0, '', ''),
(25, 'Settings', 'bcSeoManSettings', 24, 'seomanager', 'settings'),
(26, 'Statistics', 'bcSeoManStat', 24, 'seomanager', 'index'),
(27, 'Gallery', 'bcGallery', 0, '', ''),
(28, 'Items', 'bcGalleryItems', 27, 'gallery_manager', 'index'),
(29, 'Categories', 'bcGalleryCategories', 27, 'gallery_manager', 'category'),
(30, 'News Manager', 'bcNews', 0, '', ''),
(31, 'Items', 'bcNewsItems', 30, 'news_manager', 'index'),
(32, 'Categories', 'bcNewsCategories', 30, 'news_manager', 'category'),
(33, 'Social Media', 'bcSeoManSocialMedia', 24, 'settings', 'socialmedia'),
(34, 'Banner', 'bcBanner', 0, 'bannermanager', 'index'),
(35, 'Blog Manager', 'bcBlog', 0, '', ''),
(36, 'Items', 'bcBlogItems', 35, 'blog_manager', 'index'),
(37, 'Categories', 'bcBlogCategories', 35, 'blog_manager', 'category'),
(38, 'Testimonial Manager', 'bcTestimonial', 0, '', ''),
(39, 'Items', 'bcTestimonialItems', 38, 'testimonial_manager', 'index'),
(41, 'Pages', 'bcPages', 4, 'cms', 'index'),
(42, 'Promo Manager', 'bcPromo', 0, '', ''),
(43, 'Items', 'bcPromoItems', 42, 'promo_manager', 'index'),
(44, 'Categories', 'bcPromoCategories', 0, 'promo_manager', 'category'),
(45, 'Events Manager', 'bcEventsItems', 0, '', ''),
(46, 'Items', 'bcEventsItems', 45, 'events_manager', 'index'),
(47, 'Category', 'bcEventsCategories', 45, 'events_manager', 'categories'),
(48, 'Navigation Manager ', 'bcManageNav', 0, 'manage_navigation', 'index'),
(49, 'Layout Lists', 'bcSectionList', 4, 'cms', 'section_list'),
(50, 'Section', 'bcSection', 4, 'cms', 'section'),
(51, 'Edit', 'bcSection', 50, 'cms', 'section_view'),
(53, 'Branch Manager', 'bcBranches', 0, 'branch_manager', 'index'),
(54, 'Appointment Manager', 'bcAppointment', 0, '', ''),
(55, 'Lists', 'bcAppointmentIndex', 54, 'appointmentmanager', 'index'),
(56, 'Settings', 'bcAppointmentSettings', 54, 'appointmentmanager', 'settings'),
(57, 'Franchising Manager', 'bcFranchising', 0, 'franchisingmanager', 'index'),
(58, 'List', 'bcFranchisingIndex', 57, 'franchisingmanager', 'index'),
(59, 'Settings', 'bcFranchisingSettings', 57, 'franchisingmanager', 'settings');

-- --------------------------------------------------------

--
-- Table structure for table `vii_blog_category`
--

CREATE TABLE IF NOT EXISTS `vii_blog_category` (
  `id_blog_category` int(11) NOT NULL AUTO_INCREMENT,
  `id_parent` int(11) NOT NULL DEFAULT '0',
  `category_title` text,
  `category_caption` text,
  `category_desc` text,
  `category_image_src` text,
  `category_root` text,
  `category_link_rewrite` text,
  `category_meta_title` text,
  `category_meta_description` text,
  `category_meta_author` text,
  `category_meta_keywords` text,
  `category_meta_image` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `date_add` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_blog_category`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `vii_blog_category`
--

INSERT INTO `vii_blog_category` (`id_blog_category`, `id_parent`, `category_title`, `category_caption`, `category_desc`, `category_image_src`, `category_root`, `category_link_rewrite`, `category_meta_title`, `category_meta_description`, `category_meta_author`, `category_meta_keywords`, `category_meta_image`, `status`, `date_add`) VALUES
(1, 0, 'Uncategorized', NULL, 'Uncategorized', NULL, 'uncategorized', 'uncategorized', NULL, NULL, NULL, NULL, NULL, 0, '2015-12-15 06:01:23'),
(2, 0, 'Press Kits', 'Sample Caption #1', '<span style="font-weight: bold;">Everything you need to know about beauty</span>', '95a70d7ed95f4c5f28536fbda9a2f355.jpg', NULL, 'press_kits', 'Sample Meta Title #1', 'Sample Meta Description #1', 'Sample Meta Author #1', 'Sample Meta Keywords #1', NULL, 1, '2016-02-05 06:11:40'),
(4, 0, 'THE LATEST FROM FLAWLESS', '', '', '', NULL, 'the_latest_from_flawless', '', '', '', '', NULL, 1, '2016-02-24 02:34:32'),
(5, 0, 'Flawless App Lifestyle Tips', '', '', '', NULL, 'flawless_app_lifestyle_tips', 'Flawless App Lifestyle Tips', 'Flawless App Lifestyle Tips', 'Flawless App Lifestyle Tips', 'Flawless App Lifestyle Tips', NULL, 1, '2016-02-24 10:17:01');

-- --------------------------------------------------------

--
-- Table structure for table `vii_blog_item`
--

CREATE TABLE IF NOT EXISTS `vii_blog_item` (
  `id_blog_item` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `image_title` text,
  `link_rewrite` text,
  `image_sub_title` text,
  `image_desc` text,
  `image_src` text,
  `image_author` text,
  `image_meta_title` text,
  `image_meta_description` text,
  `image_meta_keywords` text,
  `status` int(11) NOT NULL DEFAULT '0',
  `id_blog_category` int(11) NOT NULL DEFAULT '1',
  `date_add` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_blog_item`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `vii_blog_item`
--

INSERT INTO `vii_blog_item` (`id_blog_item`, `date`, `image_title`, `link_rewrite`, `image_sub_title`, `image_desc`, `image_src`, `image_author`, `image_meta_title`, `image_meta_description`, `image_meta_keywords`, `status`, `id_blog_category`, `date_add`) VALUES
(1, '2016-02-24', 'Flawless Lucky Charm', 'flawless_lucky_charm', 'Flawless Lucky Charm', 'Want to know your luck in love, health and wealth for your most Flawless year ever? In celebration of the New Year, Flawless is offering you a limited edition 2016 Guide by Feng Shui Master, Marites Allen, which you can get free for every P4,000 spent on a single transaction.&nbsp;<div><br></div><div>Learn about your zodiac and how you can navigate your way to success this year with the expert advice of Marites Allen. Also, find out what makes Flawless celebrities lucky in their respective careers in Your 2016 Guide.&nbsp;</div><div><br></div><div>&nbsp;The Flawless Lucky Charm promo is valid until March 31, 2016 in all Flawless clinics nationwide.</div>', '06603f8fea72623007d07655814a78ca.png', 'FLAWLESS', 'Flawless Lucky Charm', 'Flawless Lucky Charm', 'Flawless Lucky Charm', 1, 4, '2015-11-26 05:32:20'),
(2, '2016-02-24', 'Flawless Soap Upgrade', 'flawless_soap_upgrade', 'Flawless Soap Upgrade', '<p></p><ul><li><span style="line-height: 1.5;">Bring your personal bar soap (used or unused) to any Flawless clinic and upgrade it to a Flawless soap.</span><br></li><li>Person must present a valid ID upon registration.<br></li><li>Soap is limited to one (1) person only; repeat of a person’s availment in other clinics is prohibited.<br></li><li>Employees of Flawless, including their family members and relatives up to the second degree of consanguinity are not allowed to participate in the Soap Upgrade.<br></li><li>Soap Upgrade is valid on December 8, 2015 only.<br></li></ul><div>&nbsp;SEE YOU THERE!<br></div><p></p>', '2c9ac51f85201c05702e18f6e3fcde9c.jpg', 'FLAWLESS', 'Flawless Soap Upgrade Day', 'Flawless Soap Upgrade Day', 'Flawless Soap Upgrade Day', 1, 4, '2015-11-26 05:32:24'),
(3, '2015-11-27', 'Flawless 7+7 Beauty Deals!', 'flawless_7_7_beauty_deals_', 'Flawless 7+7 Beauty Deals!', 'In celebration of its 14th year anniversary, Flawless is releasing its biggest promo to date—the 7+7 Beauty Deals! Starting on December 1 until the 31st, clients may start booking their 7+7 sessions to boost their beauty program and achieve their most flawless look with over 22 service combinations to choose from. ', 'ba5d2399b7fc78749f2aeb5b37c51cb2.png', 'FLAWLESS', 'Flawless 7+7 Beauty Deals!', 'Flawless 7+7 Beauty Deals!', 'Flawless 7+7 Beauty Deals!', 1, 4, '2016-02-21 19:20:23'),
(4, '2016-02-24', 'Flawless Beauty Date', 'flawless_beauty_date', 'Flawless Beauty Date', '<p>The country’s well-loved aesthetic clinic wants you to be the most Flawless Valentine for the whole of February with these lovely offers.</p><p>&nbsp;<span style="line-height: 1.5;">Buy 1 Get 25% OFF&nbsp;</span></p><p>&nbsp;<span style="line-height: 1.5;">Enjoy a pampering session with a loved-one. Flawless gives 25% discount on your date’s beauty treat when you both avail any of the following services: Acne Control Regular Facial, Age Defy Regular Facial, All-Natural Ultimate White Facial, Flawless White Regular Facial, Real Gentleman Facial Oil Control Facial, Classic Facial, and Beauty Drip. This special discount is applicable on services with equal or lesser value.</span></p><p>&nbsp;<span style="line-height: 1.5;">25% OFF Body-loving Services</span></p><p>&nbsp;<span style="line-height: 1.5;">If you’re going solo this Valentine’s month, better indulge in your most deserved skin-loving body treats. Popular services, such as Body Scrub, Back Cleaning, Signature Body Peel, Laser Hair Removal, Nano Powerpeel, Skin Peeling and Electrocautery, are also discounted at 25% off.&nbsp;</span></p><p>&nbsp;<span style="line-height: 1.5;">So what are you waiting for? Visit a Flawless clinic near you and book these services today!</span></p><div><br></div>', '1b69238631ab4a1eb4f403c045ad90b6.png', 'FLAWLESS', 'Flawless Beauty Date', 'Flawless Beauty Date', 'Flawless Beauty Date', 1, 4, '2016-02-23 19:50:31'),
(5, '2016-02-24', 'Go get that glow!', 'go_get_that_glow_', 'Go get that glow!', '<p>Getting that beautiful glowing skin you’ve always wanted has something to do with health and nutrition. As they say it—you are what you eat! So aside from sticking to your daily skincare regimen and regular beauty treatments at Flawless, give your body its required nutrients.&nbsp;</p><p><span style="line-height: 1.5;">Find foods that are rich in Vitamins A, C and E. Eat more dark green vegetables and fruits that are natural antioxidants, such as berries and apples. And don’t forget to drink lots of water.</span><br></p><p><span style="line-height: 1.5;">Adapt this healthy diet and you’ll definitely see and feel your skin glowing!</span><br></p><div><br></div>', '', 'FLAWLESS', 'Go get that glow', 'Go get that glow', 'Go get that glow', 1, 5, '2016-02-24 03:21:07'),
(6, '2016-02-24', 'Flawless Fitness RegimenXXX', 'flawless_fitness_regimenxxx', 'Flawless Fitness Regimen', '<p>Are you tired of exercising and still not getting your desired body shape? At Flawless, we believe that it takes a comprehensive approach to achieve one’s beauty goal. To help boost your fitness regimen, we recommend Shape &amp; Sculpt and its Nutraceuticals counterpart, Shape &amp; Sculpt L-Carnitine Dietary Supplement. Pair these two with a balanced diet and regular exercise to get that body you’ve always wanted.<br></p>', '', 'FLAWLESS', 'Flawless Fitness Regimen', 'Flawless Fitness Regimen', 'Flawless Fitness Regimen', 1, 5, '2016-02-24 03:24:22'),
(7, '2016-02-24', 'Work that Facelift', 'work_that_facelift', '', '<p>We all know the wonders of workout for tightening the body, but what we should also consider (and make full use of) is our facial muscles. Exercising the facial muscles will helpretain smoothness and firmness of the skin that results to a fresher and younger look. Now, here’s how you can do basic facial exercises:&nbsp;</p><p><span style="line-height: 1.5;">Forehead – Place your index and ring fingers above your eyes; while raising your eyebrows, pull your fingers down. Repeat 12 times.&nbsp;</span><br></p><p><span style="line-height: 1.5;">Cheeks –Purse lips inwardly as you inhale air into your mouth and then smile slowly and widely to stretch muscles. Repeat 10 times.&nbsp;</span><br></p><p><span style="line-height: 1.5;">Neck – Place your thumb and index finger in the middle of your chin, and then separate both fingers to massage the jaw and slowly move down to the neck. Repeat 12 times.</span><br></p><div><span style="line-height: 1.5;"><br></span></div>', '', 'FLAWLESS', 'Work that Facelift', 'Work that Facelift', 'Work that Facelift', 1, 5, '2016-02-24 03:27:17'),
(8, '2016-02-23', 'Work that Facelift!', 'work_that_facelift_', '', '<p>We all know the wonders of workout for tightening the body, but what we should also consider (and make full use of) is our facial muscles. Exercising the facial muscles will helpretain smoothness and firmness of the skin that results to a fresher and younger look. Now, here’s how you can do basic facial exercises:&nbsp;</p><p><span style="line-height: 1.5;">Forehead – Place your index and ring fingers above your eyes; while raising your eyebrows, pull your fingers down. Repeat 12 times.&nbsp;</span><br></p><p><span style="line-height: 1.5;">Cheeks –Purse lips inwardly as you inhale air into your mouth and then smile slowly and widely to stretch muscles. Repeat 10 times.&nbsp;</span><br></p><p><span style="line-height: 1.5;">Neck – Place your thumb and index finger in the middle of your chin, and then separate both fingers to massage the jaw and slowly move down to the neck. Repeat 12 times.</span><br></p>', '', 'FLAWLESS', 'Work that Facelift', 'Work that Facelift', 'Work that Facelift', 1, 5, '2016-02-24 03:48:35'),
(9, '2016-02-23', 'Pucker up to younger lips!', 'pucker_up_to_younger_lips_', '', '<p>Anti-age your lips naturally, here are 2 easy ways to get those younger, fuller and more kissable lips without surgery.</p><p><span style="line-height: 1.5;">Exercise.Save sagging lip muscles by pouting your lips and moving them upwards to the nose. Hold for 10 seconds and release slowly; repeat 12 times.</span><br></p><p>To plump up lips, make a duck face or simply pout your lips widely and then kiss the back of your hand as if you’re giving your lips a push up. Repeat 12 times.</p><p><span style="line-height: 1.5;">Anti-oxidize.Antioxidants help repair tissues and promote cellular regeneration, which reduce appearance of wrinkles and fine lines. To get these beautiful benefits of antioxidants, use Lipaddict Anti-Aging &amp; Nourishing Lip Plumper from ISKIN New York.Lipaddict delivers age defying, volumizing, moisturizing, healing and lip-enhancing actions for fuller and younger-looking lips.</span><br></p><p><span style="line-height: 1.5;">For best results, apply a good amount of Lipaddict Lip Plumper on clean and dry lips. Lip addict can also be used in the evening as night treatment.</span><br></p>', '', 'FLAWLESS', 'Pucker up to younger lips!', 'Pucker up to younger lips!', 'Pucker up to younger lips!', 1, 5, '2016-02-24 03:49:24'),
(10, '2016-02-23', 'Do’s & Don’ts:Laser Hair Removal', 'do___s___don___ts_laser_hair_removal', '', '<p>Laser Hair Removal promises instant removal of hair on various parts of the face and body, such as upper lip, underarms, legs and bikini line. This advanced aesthetic treatment may be safe and pain-free but there are still some basic rules in LHR that we should notforget, like—</p><p><span style="line-height: 1.5;">•</span><span class="Apple-tab-span" style="line-height: 1.5; white-space: pre;"> </span><span style="line-height: 1.5;">Do not use makeup, lotion or deodorant over the area to be treated. This is to ensure effectiveness of the treatment and to avoid complications from chemicals found in such products.</span><br></p><p><span style="line-height: 1.5;">•</span><span class="Apple-tab-span" style="line-height: 1.5; white-space: pre;"> </span><span style="line-height: 1.5;">Do not pluck, wax or tweeze area for at least 4 weeks prior to the scheduled session. These traditional hair removal techniques cause skin to be extra sensitive to laser treatments.&nbsp;</span><br></p><p><span style="line-height: 1.5;">•</span><span class="Apple-tab-span" style="line-height: 1.5; white-space: pre;"> </span><span style="line-height: 1.5;">Avoid sun exposure for at least 7 days and wear sunscreen of high SPF level to protect skin from harmful UV rays; we recommend Flawless Skin Protect Mist with SPF 70.</span><br></p><p><span style="line-height: 1.5;">Note: Achieve hair-free perfection! Flawless offers lifetime packages on Laser Hair Removal.</span><br></p>', '', 'FLAWLESS', 'Do’s & Don’ts:Laser Hair Removal', 'Do’s & Don’ts:Laser Hair Removal', 'Do’s & Don’ts:Laser Hair Removal', 1, 5, '2016-02-24 03:50:01');

-- --------------------------------------------------------

--
-- Table structure for table `vii_branch_item`
--

CREATE TABLE IF NOT EXISTS `vii_branch_item` (
  `id_branch_item` int(11) NOT NULL AUTO_INCREMENT,
  `branch_name` text,
  `branch_phone` text,
  `branch_address` text,
  `image_src` text,
  `branch_lat` text,
  `branch_lon` text,
  `branch_city` text,
  `branch_email` text,
  `status` int(11) NOT NULL DEFAULT '0',
  `date_add` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_branch_item`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=46 ;

--
-- Dumping data for table `vii_branch_item`
--

INSERT INTO `vii_branch_item` (`id_branch_item`, `branch_name`, `branch_phone`, `branch_address`, `image_src`, `branch_lat`, `branch_lon`, `branch_city`, `branch_email`, `status`, `date_add`) VALUES
(4, 'SM LANANG, DAVAO', '(082) 2851980\n09154356802', 'LG/F SM Lanang Premier, J.P. Laurel Avenue, Lanang, Davao City, Philippines', NULL, '7.098432', '125.630692', 'Province', NULL, 1, '2016-02-04 03:07:34'),
(5, 'CDO CENTRIO MALL', '(088)880-7062/\n09177038111\n09062472637', '3/F Centrio Mall, Capt. Vicente Roa St.-Corrales Avenue cor. C.M. Recto Avenue, Cagayan de Oro City, Misamis Oriental, Philippines', NULL, '8.485233', '124.651215', 'Province', NULL, 1, '2016-02-04 03:07:34'),
(6, 'SM PAMPANGA', '(045) 455-4020 /\n09175954454', '2nd Floor, SM City Pampanga Olongapo-Gapan Road, Brgy. San Jose San Fernando City, Pampanga\n', NULL, '15.052698', '120.697731', 'Province', NULL, 1, '2016-02-04 03:07:34'),
(7, 'KCC MALL, GENERAL SANTOS CITY', ' (083) 5523809\n', 'J. Catolico Ave., Brgy. Lagao, General Santos City', NULL, '6.115729', '125.187134', 'Province', NULL, 1, '2016-02-04 03:07:34'),
(8, 'CB MALL URDANETA', '(075) 529-018709299563032', 'Unit 16-17B 2/F CB Mall, Mac Arthur Highway, Nancayasan Urdaneta City, Pangasinan', '', '15.971079', '120.571060', 'Province', 'tj.module.test@gmail.com', 1, '2016-02-04 03:07:34'),
(9, 'R&P BLDG 2 - OLONGAPO', '(047) 2236123\n2238179 (telefax)', 'G/F R and P Bldg 2, 2043 Rizal Ave., West Bajac, Olongapo', NULL, '14.840447', '120.285812', 'Province', NULL, 1, '2016-02-04 03:07:34'),
(10, 'SM STA. MESA', '(02) 559-4282 /\n09175954507\n', '3rd Floor, SM City Sta. Mesa Ramon Magsaysay St. cor. Araneta Ave. Sta. Mesa, Quezon City', NULL, '14.604356', '121.018532', 'Metro Manila', NULL, 1, '2016-02-04 03:07:34'),
(11, 'SM SAN LAZARO', '(02) 786-2511 / 09175954547', 'Lower Ground Floor, SM City San Lazaro Felix Huertas cor. A.H. Lacson Sts. Sta. Cruz, Manila', NULL, '14.618162', '120.986160', 'Metro Manila', NULL, 1, '2016-02-04 03:07:34'),
(12, 'SM BALIWAG', '(044) 761-0825 /\n09175954472', 'Ground Floor, SM City Baliwag Doña Remedios Trinidad Highway Brgy. Pagala, Baliwag, Bulacan\n', NULL, '14.960635', '120.890694', 'Province', NULL, 1, '2016-02-04 03:07:34'),
(13, 'SM MARILAO', '(044) 8159005 /\n09175954510', '2nd Floor, SM City Marilao Mac Arthur Highway, Brgy. Ibayo Marilao, Bulacan\n', NULL, '14.753918', '120.954529', 'Province', NULL, 1, '2016-02-04 03:07:34'),
(14, 'SM TARLAC', '(045) 6060040\n09235834641', 'Lower Ground Floor, SM City Tarlac, Mac Arthur H-way, San Roque, Tarlac City', NULL, '15.478105', '120.594398', 'Province', NULL, 1, '2016-02-04 03:07:34'),
(15, 'FARMER''S PLAZA MALL', '(02) 441-5245 /\n09175954465', '3rd Floor, Farmers Plaza Mall General Roxas Avenue Cubao, Quezon City\n', NULL, '14.620189', '121.051529', 'Metro Manila', NULL, 1, '2016-02-04 03:07:34'),
(16, 'SM SOUTHMALL', '8569774', 'Unit 0034 SM Southmall, Alabang Zapote Road, Las Piñas City', NULL, '14.432797', '121.010475', 'Metro Manila', NULL, 1, '2016-02-04 03:07:34'),
(17, 'SM NORTH EDSA ANNEX', '928-8718\n /\n09175954439', 'Lower Ground Floor, SM North EDSA Annex, North Avenue cor EDSA, Quezon City\n', NULL, '14.657142', '121.029388', 'Metro Manila', NULL, 1, '2016-02-04 03:07:34'),
(18, 'SM MEGAMALL', '(02) 687 9118 / 0917 5954429', '5th floor, Mega B, SM Megamall, Mandaluyong City\n', NULL, '14.583526', '121.056976', 'Metro Manila', NULL, 1, '2016-02-04 03:07:34'),
(19, 'TRINOMA MALL', '(02) 916-7540 to 41 / 09175954451', 'Ground Floor, Trinoma Mall EDSA cor North Avenue, Quezon City\n', NULL, '14.653031', '121.032829', 'Metro Manila', NULL, 1, '2016-02-04 03:07:34'),
(20, 'SM BICUTAN', '5110619\n09423917653', 'G/F SM City Bicutan Bldg. B\nDoña Soledad Avenue cor West Service Road (beside Bicutan Exit) \nBarangay Don Bosco, Bicutan, \nParañaque City', NULL, '14.486999', '121.043449', 'Metro Manila', NULL, 1, '2016-02-04 03:07:34'),
(21, 'FESTIVAL SUPER MALL ALABANG', '8319557 /\n09175954469', '3/F Wellness Lane, Festival Supermall, Filinvest Corporate City, Alabang, Muntinlupa City', NULL, '14.416847', '121.040611', 'Metro Manila', NULL, 1, '2016-02-04 03:07:34'),
(22, 'STA. LUCIA EAST GRAND MALL', '681-7315 /\n09175954588', '3rd Floor, Sta. Lucia East Grand Mall Marcos Highway corner Felix Avenue, Cainta, Rizal\n', NULL, '14.617969', '121.099915', 'Province', NULL, 1, '2016-02-04 03:07:34'),
(23, 'SM CALAMBA', '(049) 530-0085 /\n09175954521\n', 'Unit 263-264 2nd Floor, SM City Calamba National Highway, Brgy. Real Calamba City, Laguna', NULL, '14.203395', '121.155251', 'Province', NULL, 1, '2016-02-04 03:07:34'),
(24, 'SM DASMARINAS', '046 432 3165 /\n09175954460', '2nd Floor, SM City Dasmarinas Governor''s Drive, Brgy. Pala-Pala Dasmarinas, Cavite', NULL, '14.300838', '120.957245', 'Province', NULL, 1, '2016-02-04 03:07:34'),
(25, 'SM LAS PINAS', '8464914\n09229883063', 'Upper Ground Floor, Unit 208, SM Center Las Piñas, Alabang-Zapote Road, Barangay Pamplona, Las Piñas City', NULL, '14.449005', '120.980705', 'Metro Manila', NULL, 1, '2016-02-04 03:07:34'),
(26, 'SM FAIRVIEW', '(02) 937-7109 /09175954531', '2nd Floor, Main Bldg, SM City Fairview Quirino Avenue cor Regalado St. Greater Lagro, Quezon City\n', 'bcbaf51f523f9d3cd91a6761789af81c.png', '14.734121', '121.057922', 'Metro Manila', '', 1, '2016-02-04 03:07:34'),
(27, 'SM ILOILO', '(033) 329-5297 / 09175954496', 'Lower Ground Floor, SM City Ilo-ilo Benigno Aquino Jr. Avenue West Diversion Road Mandurriao, Iloilo City', NULL, '10.714134', '122.550880', 'Province', NULL, 1, '2016-02-04 03:07:34'),
(28, 'SM CEBU', '(032) 238-9605 to 06', '2nd Floor, North Wing, SM City Cebu North Reclamation Area, Cebu City', '6aa937b59ba0790ceeca5735d2ecbe28.png', '10.311968', '123.918625', 'Province', 'text@gmail.com', 1, '2016-02-04 03:07:34'),
(29, 'SM LIPA', '(043) 7840866/\n09175954516\n', '2nd Floor, SM City Lipa Ayala Highway, Lipa City, Batangas', NULL, '13.954832', '121.162804', 'Province', NULL, 1, '2016-02-04 03:07:34'),
(30, 'SM BATANGAS', '(043) 783-0757 /\n09175954514', '151-152A, Ground Floor near entrance 3, SM City Batangas Pastor Village, Brgy. Pallocan Kanluran Batangas City', NULL, '13.755575', '121.068710', 'Province', NULL, 1, '2016-02-04 03:07:34'),
(31, 'SM STA. ROSA', '(049) 534-4727', 'Ground Floor, SM City Sta. Rosa Old National Highway, Brgy. Tagapo Sta. Rosa City, Laguna', NULL, '14.312776', '121.098709', 'Province', NULL, 1, '2016-02-04 03:07:34'),
(32, 'SM MAKATI', '(02) 553-0007\n', '4th Floor, SM Makati Ayala Center cor EDSA Makati City', NULL, '14.549471', '121.026878', 'Metro Manila', NULL, 1, '2016-02-04 03:07:35'),
(33, 'SM BACOOR', '(046) 417-8661/+63 9175954456', 'Lower Ground Floor, SM City Bacoor Gen. Aguinaldo Highway cor. Tirona Highway, Brgy. Ilabay Bacoor City, Cavite', NULL, '14.444746', '120.950745', 'Province', NULL, 1, '2016-02-04 03:07:35'),
(34, 'V-MALL GREENHILLS SHOPPING CENTER', '(02) 584-5157 /\n09175954497\n', 'Ground Floor, Virra Mall, Greenhills Shopping Center, Greenhills, San Juan City\n', NULL, '14.601878', '121.049957', 'Metro Manila', NULL, 1, '2016-02-04 03:07:35'),
(35, 'SM MANILA', '(02) 523-1282 /\n09175954534', 'Lower Ground Floor, SM City Manila Concepcion cor. Arroceros & San Marcelino Streets, Manila', NULL, '14.589740', '120.983063', 'Metro Manila', NULL, 1, '2016-02-04 03:07:35'),
(36, 'SM MALL OF ASIA', '0917-5954489\n556-0796 (telefax)\n556-9386', '2nd level, South Parking Wing, SM Mall of Asia Pasay City\n', NULL, '14.535137', '120.984276', 'Metro Manila', NULL, 1, '2016-02-04 03:07:35'),
(37, 'CSI CITY MALL - DAGUPAN', '(075) 55224567\n09228552301 ', 'CSI The City Mall, Dagupan City, Pangasinan', NULL, '16.023991', '120.323463', 'Province', NULL, 1, '2016-02-04 03:07:35'),
(38, 'SM CITY CLARK', '(045) 4362617', '2nd Level Wellness Zone SM Clark Pampanga/Balibago Angeles City', NULL, '15.168514', '120.580063', 'Province', NULL, 1, '2016-02-04 03:07:35'),
(39, 'WALTERMART SANTA MARIA', ' 641-4783\n09167833467\n', '2/F Waltermart Mall, Sta. Maria, Bulacan', NULL, '14.822632', '120.954285', 'Province', NULL, 1, '2016-02-04 03:07:35'),
(40, 'SM BACOLOD', '09178172083/(034) 4312857\n', '3rd Floor, New North Wing Extension, SM Bacolod, Rizal St. Bacolod City, Negros Occidental', NULL, '10.672143', '122.944290', 'Province', NULL, 1, '2016-02-04 03:07:35'),
(41, 'Eastwood Cyber And Fashion Mall', '(02) 570-14-45', 'Unit 106, 2nd Level, Eastwood Cybermall, Bagumbayan, Quezon City', '', '14.609512', '121.080704', 'Metro Manila', 'test@gmail.com', 1, '2016-02-04 03:07:35'),
(42, 'SM BF Homes Parañaque', '(02) 8325688', 'Unit 278, 2/F, SM City BF Parañaque, BF Homes, Dr. A Santos Avenue, Sucat, Parañaque City.', NULL, '14.478811', '121.021538', 'Metro Manila', NULL, 1, '2016-02-04 03:07:35'),
(43, 'SMDC Light Residences', '(02) 997-0302', 'Unit 215, 2/F, Light Mall, SMDC Light Residences, EDSA cor. Madison St., Boni, Mandaluyong City', NULL, '14.573594', '121.049042', 'Metro Manila', NULL, 1, '2016-02-04 03:07:35'),
(44, 'SM City Cabanatuan', '0915 4413140 / 044 951 0073', '3rd Floor SM City Cabanatuan, Maharlika Highway, Cabanatuan City, Nueva Ecija', NULL, '15.487683', '120.967880', 'Province', NULL, 1, '2016-02-04 03:07:35'),
(45, 'Zamboanga City', '09778140201', '#IL304 3rd Floor, KCC Mall De Zamboanga', NULL, '6.921011', '122.075897', 'Province', NULL, 1, '2016-02-04 03:07:35');

-- --------------------------------------------------------

--
-- Table structure for table `vii_branch_store`
--

CREATE TABLE IF NOT EXISTS `vii_branch_store` (
  `id_branch` int(11) NOT NULL AUTO_INCREMENT,
  `branch_name` varchar(255) NOT NULL,
  `branch_phone` varchar(255) DEFAULT NULL,
  `branch_address` varchar(255) DEFAULT NULL,
  `branch_lat` varchar(150) DEFAULT NULL,
  `branch_lon` varchar(150) DEFAULT NULL,
  `branch_city` varchar(255) DEFAULT NULL,
  `branch_details` text,
  `branch_image` varchar(255) DEFAULT NULL,
  `branch_status` tinyint(1) NOT NULL DEFAULT '1',
  `branch_email` varchar(255) NOT NULL,
  PRIMARY KEY (`id_branch`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=378 ;

--
-- Dumping data for table `vii_branch_store`
--

INSERT INTO `vii_branch_store` (`id_branch`, `branch_name`, `branch_phone`, `branch_address`, `branch_lat`, `branch_lon`, `branch_city`, `branch_details`, `branch_image`, `branch_status`, `branch_email`) VALUES
(377, 'SM Southmall', '8007193', 'las pinas city', NULL, NULL, 'las pinas', NULL, NULL, 1, 'tj.module.test@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `vii_clinic_location`
--

CREATE TABLE IF NOT EXISTS `vii_clinic_location` (
  `clinic_location_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `address` text NOT NULL,
  `branch_area` varchar(15) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `lat` float(10,6) NOT NULL,
  `lng` float(10,6) NOT NULL,
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`clinic_location_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=145 ;

--
-- Dumping data for table `vii_clinic_location`
--

INSERT INTO `vii_clinic_location` (`clinic_location_id`, `name`, `address`, `branch_area`, `contact`, `lat`, `lng`, `date_modified`, `date_added`) VALUES
(104, 'SM LANANG, DAVAO', 'LG/F SM Lanang Premier, J.P. Laurel Avenue, Lanang, Davao City, Philippines', 'Province', '(082) 2851980\n09154356802', 7.098432, 125.630692, '2015-01-09 11:26:19', '2012-11-13 21:19:32'),
(134, 'CDO CENTRIO MALL', '3/F Centrio Mall, Capt. Vicente Roa St.-Corrales Avenue cor. C.M. Recto Avenue, Cagayan de Oro City, Misamis Oriental, Philippines', 'Province', '(088)880-7062/\n09177038111\n09062472637', 8.485233, 124.651215, '2015-03-25 13:04:54', '2012-11-13 21:18:53'),
(118, 'SM PAMPANGA', '2nd Floor, SM City Pampanga Olongapo-Gapan Road, Brgy. San Jose San Fernando City, Pampanga\n', 'Province', '(045) 455-4020 /\n09175954454', 15.052698, 120.697731, '2014-03-12 10:41:10', '2012-10-30 01:48:42'),
(132, 'KCC MALL, GENERAL SANTOS CITY', 'J. Catolico Ave., Brgy. Lagao, General Santos City', 'Province', ' (083) 5523809\n', 6.115729, 125.187134, '2015-01-09 17:57:34', '2012-10-30 01:53:49'),
(116, 'CB MALL URDANETA', 'Unit 16-17B 2/F CB Mall, Mac Arthur Highway, Nancayasan Urdaneta City, Pangasinan', 'Province', '(075) 529-0187\n09299563032', 15.971079, 120.571060, '2014-03-14 14:47:01', '2012-10-30 01:48:11'),
(119, 'R&P BLDG 2 - OLONGAPO', 'G/F R and P Bldg 2, 2043 Rizal Ave., West Bajac, Olongapo', 'Province', '(047) 2236123\n2238179 (telefax)', 14.840447, 120.285812, '2014-03-14 14:23:13', '2012-10-30 01:49:02'),
(107, 'SM STA. MESA', '3rd Floor, SM City Sta. Mesa Ramon Magsaysay St. cor. Araneta Ave. Sta. Mesa, Quezon City', 'Metro Manila', '(02) 559-4282 /\n09175954507\n', 14.604356, 121.018532, '2014-03-12 10:26:49', '2012-10-30 01:19:11'),
(108, 'SM SAN LAZARO', 'Lower Ground Floor, SM City San Lazaro Felix Huertas cor. A.H. Lacson Sts. Sta. Cruz, Manila', 'Metro Manila', '(02) 786-2511 / 09175954547', 14.618162, 120.986160, '2014-03-12 10:28:23', '2012-10-30 01:19:25'),
(121, 'SM BALIWAG', 'Ground Floor, SM City Baliwag Doña Remedios Trinidad Highway Brgy. Pagala, Baliwag, Bulacan\n', 'Province', '(044) 761-0825 /\n09175954472', 14.960635, 120.890694, '2014-03-12 10:34:59', '2012-10-30 01:49:38'),
(120, 'SM MARILAO', '2nd Floor, SM City Marilao Mac Arthur Highway, Brgy. Ibayo Marilao, Bulacan\n', 'Province', '(044) 8159005 /\n09175954510', 14.753918, 120.954529, '2015-01-09 18:11:41', '2012-10-30 01:49:21'),
(117, 'SM TARLAC', 'Lower Ground Floor, SM City Tarlac, Mac Arthur H-way, San Roque, Tarlac City', 'Province', '(045) 6060040\n09235834641', 15.478105, 120.594398, '2014-03-14 14:45:55', '2012-10-30 01:48:26'),
(105, 'FARMER''S PLAZA MALL', '3rd Floor, Farmers Plaza Mall General Roxas Avenue Cubao, Quezon City\n', 'Metro Manila', '(02) 441-5245 /\n09175954465', 14.620189, 121.051529, '2014-03-12 10:37:49', '2012-10-30 01:18:40'),
(113, 'SM SOUTHMALL', 'Unit 0034 SM Southmall, Alabang Zapote Road, Las Piñas City', 'Metro Manila', '8569774', 14.432797, 121.010475, '2014-03-14 14:23:55', '2012-10-30 01:47:15'),
(103, 'SM NORTH EDSA ANNEX', 'Lower Ground Floor, SM North EDSA Annex, North Avenue cor EDSA, Quezon City\n', 'Metro Manila', '928-8718\n /\n09175954439', 14.657142, 121.029388, '2015-01-09 18:17:23', '2012-10-30 01:18:06'),
(135, 'SM MEGAMALL', '5th floor, Mega B, SM Megamall, Mandaluyong City\n', 'Metro Manila', '(02) 687 9118 / 0917 5954429', 14.583526, 121.056976, '2015-11-17 09:29:26', '2013-03-11 01:18:23'),
(102, 'TRINOMA MALL', 'Ground Floor, Trinoma Mall EDSA cor North Avenue, Quezon City\n', 'Metro Manila', '(02) 916-7540 to 41 / 09175954451', 14.653031, 121.032829, '2014-03-12 10:32:13', '2012-10-30 01:17:51'),
(112, 'SM BICUTAN', 'G/F SM City Bicutan Bldg. B\nDoña Soledad Avenue cor West Service Road (beside Bicutan Exit) \nBarangay Don Bosco, Bicutan, \nParañaque City', 'Metro Manila', '5110619\n09423917653', 14.486999, 121.043449, '2014-03-14 14:15:50', '2012-10-30 01:46:59'),
(115, 'FESTIVAL SUPER MALL ALABANG', '3/F Wellness Lane, Festival Supermall, Filinvest Corporate City, Alabang, Muntinlupa City', 'Metro Manila', '8319557 /\n09175954469', 14.416847, 121.040611, '2014-12-18 18:00:53', '2012-10-30 01:47:50'),
(122, 'STA. LUCIA EAST GRAND MALL', '3rd Floor, Sta. Lucia East Grand Mall Marcos Highway corner Felix Avenue, Cainta, Rizal\n', 'Province', '681-7315 /\n09175954588', 14.617969, 121.099915, '2014-03-12 10:50:41', '2012-10-30 01:50:02'),
(124, 'SM CALAMBA', 'Unit 263-264 2nd Floor, SM City Calamba National Highway, Brgy. Real Calamba City, Laguna', 'Province', '(049) 530-0085 /\n09175954521\n', 14.203395, 121.155251, '2014-03-12 10:59:41', '2012-10-30 01:50:34'),
(125, 'SM DASMARINAS', '2nd Floor, SM City Dasmarinas Governor''s Drive, Brgy. Pala-Pala Dasmarinas, Cavite', 'Province', '046 432 3165 /\n09175954460', 14.300838, 120.957245, '2014-03-12 10:58:42', '2012-10-30 01:50:50'),
(114, 'SM LAS PINAS', 'Upper Ground Floor, Unit 208, SM Center Las Piñas, Alabang-Zapote Road, Barangay Pamplona, Las Piñas City', 'Metro Manila', '8464914\n09229883063', 14.449005, 120.980705, '2014-03-14 14:21:14', '2012-10-30 01:47:30'),
(101, 'SM FAIRVIEW', '2nd Floor, Main Bldg, SM City Fairview Quirino Avenue cor Regalado St. Greater Lagro, Quezon City\n', 'Metro Manila', '(02) 937-7109 /\n09175954531', 14.734121, 121.057922, '2014-03-12 10:38:05', '2012-10-30 01:17:38'),
(131, 'SM ILOILO', 'Lower Ground Floor, SM City Ilo-ilo Benigno Aquino Jr. Avenue West Diversion Road Mandurriao, Iloilo City', 'Province', '(033) 329-5297 / 09175954496', 10.714134, 122.550880, '2015-12-16 12:33:39', '2012-10-30 01:53:36'),
(130, 'SM CEBU', '2nd Floor, North Wing, SM City Cebu North Reclamation Area, Cebu City', 'Province', '(032) 238-9605 to 06', 10.311968, 123.918625, '2013-07-29 19:00:55', '2013-03-09 01:53:20'),
(128, 'SM LIPA', '2nd Floor, SM City Lipa Ayala Highway, Lipa City, Batangas', 'Province', '(043) 7840866/\n09175954516\n', 13.954832, 121.162804, '2015-01-09 18:00:48', '2012-10-30 01:51:52'),
(127, 'SM BATANGAS', '151-152A, Ground Floor near entrance 3, SM City Batangas Pastor Village, Brgy. Pallocan Kanluran Batangas City', 'Province', '(043) 783-0757 /\n09175954514', 13.755575, 121.068710, '2014-03-12 10:32:50', '2012-10-30 01:51:35'),
(123, 'SM STA. ROSA', 'Ground Floor, SM City Sta. Rosa Old National Highway, Brgy. Tagapo Sta. Rosa City, Laguna', 'Province', '(049) 534-4727', 14.312776, 121.098709, '2013-11-12 14:16:00', '2012-10-30 01:50:14'),
(110, 'SM MAKATI', '4th Floor, SM Makati Ayala Center cor EDSA Makati City', 'Metro Manila', '(02) 553-0007\n', 14.549471, 121.026878, '2013-07-29 20:05:21', '2012-10-30 01:21:55'),
(126, 'SM BACOOR', 'Lower Ground Floor, SM City Bacoor Gen. Aguinaldo Highway cor. Tirona Highway, Brgy. Ilabay Bacoor City, Cavite', 'Province', '(046) 417-8661/+63 9175954456', 14.444746, 120.950745, '2015-12-04 10:36:49', '2012-10-30 01:51:06'),
(106, 'V-MALL GREENHILLS SHOPPING CENTER', 'Ground Floor, Virra Mall, Greenhills Shopping Center, Greenhills, San Juan City\n', 'Metro Manila', '(02) 584-5157 /\n09175954497\n', 14.601878, 121.049957, '2014-03-12 10:33:44', '2013-03-05 01:18:56'),
(109, 'SM MANILA', 'Lower Ground Floor, SM City Manila Concepcion cor. Arroceros & San Marcelino Streets, Manila', 'Metro Manila', '(02) 523-1282 /\n09175954534', 14.589740, 120.983063, '2014-03-12 10:34:06', '2012-10-30 01:21:38'),
(111, 'SM MALL OF ASIA', '2nd level, South Parking Wing, SM Mall of Asia Pasay City\n', 'Metro Manila', '0917-5954489\n556-0796 (telefax)\n556-9386', 14.535137, 120.984276, '2014-03-14 14:11:53', '2013-03-07 00:00:00'),
(133, 'CSI CITY MALL - DAGUPAN', 'CSI The City Mall, Dagupan City, Pangasinan', 'Province', '(075) 55224567\n09228552301 ', 16.023991, 120.323463, '2014-03-14 14:17:37', '2012-10-30 01:54:09'),
(136, 'SM CITY CLARK', '2nd Level Wellness Zone SM Clark Pampanga/Balibago Angeles City', 'Province', '(045) 4362617', 15.168514, 120.580063, '2015-01-09 17:25:02', '2013-09-11 10:58:13'),
(137, 'WALTERMART SANTA MARIA', '2/F Waltermart Mall, Sta. Maria, Bulacan', 'Province', ' 641-4783\n09167833467\n', 14.822632, 120.954285, '2015-01-09 17:54:12', '2013-09-11 11:05:26'),
(138, 'SM BACOLOD', '3rd Floor, New North Wing Extension, SM Bacolod, Rizal St. Bacolod City, Negros Occidental', 'Province', '09178172083/(034) 4312857\n', 10.672143, 122.944290, '2015-01-09 17:23:21', '2014-10-22 12:17:23'),
(139, 'Eastwood Cyber And Fashion Mall', 'Unit 106, 2nd Level, Eastwood Cybermall, Bagumbayan, Quezon City', 'Metro Manila', '(02) 570-14-45', 14.609512, 121.080704, '2015-01-09 17:22:17', '2014-11-14 16:13:33'),
(140, 'SM BF Homes Parañaque', 'Unit 278, 2/F, SM City BF Parañaque, BF Homes, Dr. A Santos Avenue, Sucat, Parañaque City.', 'Metro Manila', '(02) 8325688', 14.478811, 121.021538, '2015-04-14 15:47:51', '2015-03-10 15:49:35'),
(141, 'SMDC Light Residences', 'Unit 215, 2/F, Light Mall, SMDC Light Residences, EDSA cor. Madison St., Boni, Mandaluyong City', 'Metro Manila', '(02) 997-0302', 14.573594, 121.049042, '2016-01-06 09:46:08', '2015-03-10 16:01:38'),
(142, 'SM City Cabanatuan', '3rd Floor SM City Cabanatuan, Maharlika Highway, Cabanatuan City, Nueva Ecija', 'Province', '0915 4413140 / 044 951 0073', 15.487683, 120.967880, '2016-01-06 09:44:52', '2015-11-17 13:23:20'),
(144, 'Zamboanga City', '#IL304 3rd Floor, KCC Mall De Zamboanga', 'Province', '09778140201', 6.921011, 122.075897, '2016-01-06 11:27:08', '2016-01-06 11:26:25');

-- --------------------------------------------------------

--
-- Table structure for table `vii_config`
--

CREATE TABLE IF NOT EXISTS `vii_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `value` text NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=81 ;

--
-- Dumping data for table `vii_config`
--

INSERT INTO `vii_config` (`id`, `name`, `value`, `date_add`, `date_upd`) VALUES
(1, 'ADMIN_EMAIL', 'testviiworks@gmail.com', '2009-06-01 17:56:17', '2013-10-24 10:03:33'),
(2, 'ADMIN_NAME', 'Admin', '2009-06-01 17:56:17', '2013-10-24 10:03:33'),
(3, 'SITE_NAME', 'Flawless', '2010-01-14 10:25:50', '2013-10-24 10:03:33'),
(4, 'META_DESCRIPTION', 'ENTER DEFAULT META DESCRIPTION VIA ADMIN PANEL > SEO > SETTINGS', '2011-03-07 18:51:58', '2013-10-24 10:03:33'),
(5, 'META_AUTHOR', 'Admin', '2011-03-07 18:51:58', '2013-10-24 10:03:33'),
(6, 'META_TITLE', 'Flawless Face & Body Clinic', '2011-03-29 11:55:32', '2013-10-24 10:03:33'),
(53, 'ADMIN_BCC', 'testviiworks@gmail.com', '2014-02-20 00:00:00', '2014-02-20 00:00:00'),
(10, 'SEO_GOOGLE_UA', 'ENTER SEO GOOGLE ANALYTICS VIA GOOGLE.COM', '2010-12-02 09:00:48', '2014-02-19 12:23:36'),
(11, 'SERVER_URL', 'http://10.10.1.17/flawless/', '2010-12-02 18:02:19', '2012-05-08 09:57:41'),
(12, 'SERVER_USERNAME', '', '2010-12-02 18:02:19', '2012-05-08 09:57:41'),
(13, 'SERVER_PASSWORD', '', '2010-12-02 18:02:19', '2012-05-08 09:57:41'),
(63, 'RECAPTCHA_PUBLIC_KEY', '', '2014-08-07 00:00:00', '2014-08-07 00:00:00'),
(23, 'CONTACT_EMAIL', 'kirby.lagunda@viiworks.com', '2011-04-14 08:08:32', '2012-10-03 14:49:40'),
(24, 'CONTACT_PASSWORD', '+ijLpW8MzbH6c7Ui/yT69e3C/U8rjHNzH13YbPuakR0u/3gXUVwnlfNPIjazTPWJCwkMiypP1zKCaCOSDnofyQ==', '2011-05-03 08:51:17', '2011-05-03 08:53:52'),
(25, 'CONTACT_SMTP_HOST', 'ssl://smtp.googlemail.com', '2011-05-03 08:51:17', '2011-05-03 08:53:52'),
(26, 'CONTACT_SMTP_PORT', '465', '2011-05-03 08:51:17', '2011-05-03 08:53:52'),
(27, 'CONTACT_EMAIL_BODY', '', '2011-04-14 08:08:32', '2012-10-03 14:49:40'),
(28, 'NEWSLETTER_EMAIL', 'testviiworks@gmail.com', '2011-05-03 08:51:17', '2011-05-03 08:53:52'),
(29, 'NEWSLETTER_PASSWORD', '+iED3b/VlRgXdfwyVQU9lvTNISqRfahodQbTL9SsH03StctIlr18zs3vWn1mZfkOdahKNRyvErmhQweQyxyCtw==', '2011-05-03 08:51:17', '2011-05-03 08:53:52'),
(30, 'NEWSLETTER_SMTP_HOST', 'ssl://smtp.googlemail.com', '2011-05-03 08:51:17', '2011-05-03 08:53:52'),
(31, 'NEWSLETTER_SMTP_PORT', '465', '2011-05-03 08:51:17', '2011-05-03 08:53:52'),
(32, 'NEWSLETTER_EMAIL_BODY', '', '2011-05-03 08:51:17', '2011-05-03 08:53:52'),
(33, 'META_TAGS', 'ENTER DEFAULT META TAGS VIA ADMIN PANEL > SEO > SETTINGS', '2011-05-12 07:10:38', '2013-10-24 10:03:33'),
(34, 'META_ROBOTS', 'noindex, nofollow', '2011-05-12 07:10:38', '2013-10-24 10:03:33'),
(36, 'PAYPAL_PAYMENT_URL', '', '2011-08-01 16:18:51', '2011-08-01 16:18:51'),
(37, 'PAYPAL_API_USERNAME', '', '2011-08-01 16:18:51', '2011-08-01 16:18:51'),
(38, 'PAYPAL_API_PASSWORD', '', '2011-08-01 16:18:51', '2011-08-01 16:18:51'),
(39, 'PAYPAL_API_SIGNATURE', '', '2011-08-01 16:18:51', '2011-08-01 16:18:51'),
(40, 'PAYPAL_ENDPOINT_URL', '', '2011-08-01 16:18:51', '2011-08-01 16:18:51'),
(44, 'PAYEASY_MERCHANT', '', '2011-09-26 17:47:13', '2011-09-26 17:47:13'),
(45, 'PAYEASY_PASSWORD', '', '2011-09-26 17:47:13', '2011-09-26 17:47:13'),
(54, 'ADMIN_SMTP_HOST', 'ssl://smtp.googlemail.com', '2014-02-20 00:00:00', '2014-02-20 00:00:00'),
(55, 'ADMIN_SMTP_PORT', '465', '2014-02-20 00:00:00', '2014-02-20 00:00:00'),
(56, 'ADMIN_EMAIL_PASS', '+iED3b/VlRgXdfwyVQU9lvTNISqRfahodQbTL9SsH03StctIlr18zs3vWn1mZfkOdahKNRyvErmhQweQyxyCtw==', '2014-02-20 00:00:00', '2014-02-20 00:00:00'),
(57, 'SMEDIA_FACEBOOK', 'https://www.facebook.com/FlawlessFaceandBody/', '2014-08-01 00:00:00', '2014-08-01 00:00:00'),
(58, 'SMEDIA_TWITTER', 'https://twitter.com/myflawless', '2014-08-01 00:00:00', '2014-08-01 00:00:00'),
(59, 'SMEDIA_GOOGLEPLUS', 'https://plus.google.com/+ViiworksInc/posts', '2014-08-01 00:00:00', '2014-08-01 00:00:00'),
(60, 'SMEDIA_PINTEREST', 'https://www.youtube.com/user/FlawlessFaceandBody', '2014-08-01 00:00:00', '2014-08-01 00:00:00'),
(61, 'SMEDIA_LINKEDIN', 'https://www.linkedin.com/company/viiworks', '2014-08-01 00:00:00', '2014-08-01 00:00:00'),
(62, 'SMEDIA_INSTAGRAM', 'https://www.instagram.com/myflawless/', '2014-08-01 00:00:00', '2014-08-01 00:00:00'),
(64, 'RECAPTCHA_PUBLIC_KEY', '', '2014-08-07 00:00:00', '2014-08-07 00:00:00'),
(65, 'RECAPTCHA_PRIVATE_KEY', '', '2014-08-07 00:00:00', '2014-08-07 00:00:00'),
(66, 'SITE_CSS', '.content-full {\n    background: url("http://10.10.1.4/flawless/upload/images/background/bg-content.png");\n}', '2014-08-20 00:00:00', '2014-08-20 00:00:00'),
(67, 'SITE_LOGO', 'a033e69e9a4174c320f7a8a4b435459b.png', '2014-08-20 00:00:00', '2014-08-20 00:00:00'),
(68, 'SITE_FAVICON', '04f3f384f79f1a3348fda79e36baa89e.png', '2014-08-21 00:00:00', '2014-08-21 00:00:00'),
(69, 'META_IMAGE', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'CONTACT_NO', '123-456-7890', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'CONTACT_ADDRESS', 'Viiworks Drive corner, Bonifacio Global City, 32nd St, Taguig City ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 'IMAGE_DIMENSIONS', '{"gallery_cat_wd":"1360","gallery_cat_hg":"1360","gallery_cat_th_wd":"520","gallery_cat_th_hg":"520","gallery_itm_wd":"1360","gallery_itm_hg":"1360","gallery_itm_th_wd":"520","gallery_itm_th_hg":"520"}', '2015-11-26 00:00:00', '0000-00-00 00:00:00'),
(73, 'SITE_BACKGROUNDS', '["85cecc1843d78680354372e228914439.jpg","785187165a95db373ea043a7fa2dce70.jpg","9ef604e40c54444f15355f339286f65c.jpg","1de3dfe7be1a7a0c90dc9d0dbcd12e16.jpg"]', '2015-11-27 00:00:00', '0000-00-00 00:00:00'),
(74, 'GOOGLE_CSE', '', '2016-01-04 00:00:00', '0000-00-00 00:00:00'),
(75, 'GOOGLE_MAP', '&lt;iframe src=', '2016-01-14 00:00:00', '0000-00-00 00:00:00'),
(76, 'CONTACT_EMAIL_CC', 'kirby.lagunda@viiworks.com', '2016-01-14 00:00:00', '0000-00-00 00:00:00'),
(77, 'APPOINTMENT_EMAIL', 'testviiworks@gmail.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 'appointment_email_cc', 'marc.besinal@viiworks.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 'franchising_email', 'tj.module.test@gmail.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 'franchising_email_cc', 'marc.besinal@viiworks.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `vii_config_style`
--

CREATE TABLE IF NOT EXISTS `vii_config_style` (
  `id_config_style` int(11) NOT NULL AUTO_INCREMENT,
  `color_schemes` varchar(255) DEFAULT NULL,
  `color_skin` varchar(255) DEFAULT NULL,
  `layout_style` varchar(255) DEFAULT NULL,
  `layout_rtl` varchar(255) DEFAULT NULL,
  `patterns` varchar(255) DEFAULT NULL,
  `boxed_background` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_config_style`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `vii_config_style`
--

INSERT INTO `vii_config_style` (`id_config_style`, `color_schemes`, `color_skin`, `layout_style`, `layout_rtl`, `patterns`, `boxed_background`) VALUES
(1, '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `vii_contact_us`
--

CREATE TABLE IF NOT EXISTS `vii_contact_us` (
  `id_contact_us` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `address` text,
  `subject` text,
  `message` text NOT NULL,
  `date_add` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_contact_us`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `vii_contact_us`
--

INSERT INTO `vii_contact_us` (`id_contact_us`, `name`, `email`, `phone`, `website`, `address`, `subject`, `message`, `date_add`) VALUES
(1, 'Sample One Tes', 'testviiworks@gmail.com', '1234567890', 'SampleOne.com', 'testviiworks.gmail.com', 'Sample One Subject', 'Sample One Messages Here', '2016-02-03 02:25:57'),
(2, 'Sample Two', 'testviiworks@gmail.com', '1234567890', 'SampleTwo.com', 'Sample st. Two City', 'Sample Two Subject', 'Sample Two Messages Here', '2014-10-15 23:30:08'),
(4, 'test', 'tj.module.test@gmail.com', NULL, NULL, NULL, NULL, '', '2016-02-10 01:11:40'),
(5, '', '', NULL, NULL, NULL, NULL, '', '2016-02-23 22:24:29');

-- --------------------------------------------------------

--
-- Table structure for table `vii_events_category`
--

CREATE TABLE IF NOT EXISTS `vii_events_category` (
  `id_events_category` int(11) NOT NULL AUTO_INCREMENT,
  `id_parent` int(11) NOT NULL DEFAULT '0',
  `category_title` text,
  `category_caption` text,
  `category_desc` text,
  `category_image_src` text,
  `category_root` text,
  `category_link_rewrite` text,
  `category_meta_title` text,
  `category_meta_description` text,
  `category_meta_author` text,
  `category_meta_keywords` text,
  `category_meta_image` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `date_add` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_events_category`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `vii_events_category`
--

INSERT INTO `vii_events_category` (`id_events_category`, `id_parent`, `category_title`, `category_caption`, `category_desc`, `category_image_src`, `category_root`, `category_link_rewrite`, `category_meta_title`, `category_meta_description`, `category_meta_author`, `category_meta_keywords`, `category_meta_image`, `status`, `date_add`) VALUES
(1, 0, 'Uncategorized', NULL, 'Uncategorized', NULL, 'uncategorized', 'uncategorized', NULL, NULL, NULL, NULL, NULL, 0, '2015-12-15 06:00:02');

-- --------------------------------------------------------

--
-- Table structure for table `vii_events_item`
--

CREATE TABLE IF NOT EXISTS `vii_events_item` (
  `id_events_item` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `image_title` text,
  `link_rewrite` text,
  `image_sub_title` text,
  `image_desc` text,
  `image_src` text,
  `image_author` text,
  `image_meta_title` text,
  `image_meta_description` text,
  `image_meta_keywords` text,
  `status` int(11) NOT NULL DEFAULT '0',
  `id_events_category` int(11) NOT NULL DEFAULT '1',
  `date_add` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_events_item`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `vii_events_item`
--

INSERT INTO `vii_events_item` (`id_events_item`, `date`, `image_title`, `link_rewrite`, `image_sub_title`, `image_desc`, `image_src`, `image_author`, `image_meta_title`, `image_meta_description`, `image_meta_keywords`, `status`, `id_events_category`, `date_add`) VALUES
(1, '2014-12-29', 'Sample Title #1', NULL, 'Sample Sub Title #1', '<p>Sample Description #1<br></p>', '949c999ff75f6ef81ade90d987955a5f.jpg', 'Sample Author #1', 'Sample Meta Title #1', 'Sample Meta Description #1', 'Sample Meta Keywords #1', 1, 1, '2015-11-26 05:32:28'),
(2, '2014-11-26', 'Sample Title #2', NULL, 'Sample Sub Title #2', '<p>Sample Description #2<br></p>', '7a03a4432714dcac24b02c92bb57a4fe.jpg', 'Sample Author #2', 'Sample  Meta Title #2', 'Sample  Meta Description #2', 'Sample  Meta Keywords #2', 1, 1, '2015-11-26 05:32:32');

-- --------------------------------------------------------

--
-- Table structure for table `vii_faq_category`
--

CREATE TABLE IF NOT EXISTS `vii_faq_category` (
  `id_faq_category` int(11) NOT NULL AUTO_INCREMENT,
  `category_title` text CHARACTER SET utf8 NOT NULL,
  `category_description` text CHARACTER SET utf8 NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_faq_category`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `vii_faq_category`
--

INSERT INTO `vii_faq_category` (`id_faq_category`, `category_title`, `category_description`, `status`) VALUES
(1, 'Uncategorized', '', 0),
(2, 'Sample FAQ Category Title #1', 'Sample FAQ Category Description #1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vii_faq_item`
--

CREATE TABLE IF NOT EXISTS `vii_faq_item` (
  `id_faq_item` int(11) NOT NULL AUTO_INCREMENT,
  `faq_question` varchar(250) CHARACTER SET utf8 NOT NULL,
  `faq_answer` text CHARACTER SET utf8 NOT NULL,
  `id_faq_category` int(11) NOT NULL DEFAULT '1',
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_faq_item`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `vii_faq_item`
--

INSERT INTO `vii_faq_item` (`id_faq_item`, `faq_question`, `faq_answer`, `id_faq_category`, `status`) VALUES
(1, 'Must I own a property where the Franchise store is located?', 'While owning a suitable property is definitely an advantage, it is not mandatory.', 1, 1),
(8, 'Privacy', 'Flawless assures that the user’s personal information is confidential and we will not rent, sell, barter or trade any of the personal details gathered such as the name, address, telephone number, email address, credit card information and other contact details.', 1, 1),
(9, 'Security', 'At Flawless Face and Body, we prioritize in protecting your personal information which includes your name, address, contact numbers and credit or debit card details. All user information is secured by the system and will not be disclosed to any other entity other than the user himself/herself.', 1, 1),
(10, 'How to Order', 'Simply register on the online shop. Click on the confirmation link sent to your email and go to https://flawless.com.ph/shop to start shopping. Choose the items and click on Add to Cart. Once you are done placing items in your shopping cart, click on checkout and select the shipping and payment method of your choice.', 1, 1),
(11, 'Pricing, Payment & Sales Tax', 'All prices are subject to change without prior notice. We currently accept credit cards through Asiapay, G-Cash, Smartmoney and Bancnet for online purchases. All orders are subject to verification and acceptance before shipping.', 1, 1),
(12, 'Colors', 'The actual colors of the products have been displayed on the website. However, because the colors you see will depend on your monitor, we cannot guarantee that your monitor''s display of any color will be accurate', 1, 1),
(13, 'Shipping', 'All online orders will be shipped from our warehouse through Xend within 2 business days. Although most online orders will be received within 4 days of ordering, please allow up to 1 week for delivery. To avoid any delay, please specify the complete shipping address. You may go to your account under your Order to check the delivery status. For more information about Xend’s shipping standards, you may go to www.xend.com.ph.', 1, 1),
(14, 'Customer Satisfaction', 'At Flawless Face and Body, we prioritize on customer satisfaction by making every purchase of our customer a positive experience. Shipments are carefully inspected prior to leaving the warehouse, but in the event you are not satisfied with your purchase, feel free to contact us.', 1, 1),
(15, 'Return and Refund Policy', 'Due to the nature of our business, cosmetic products cannot be refunded or exchanged. However, should you experience any adverse reactions with our products or if you have other concerns, please address the issue by contacting (02) 584-6807.', 1, 1),
(16, ' Terms of Use', 'This website is operated by Flawless Face and Body Centre. All inquiries may be directed to:  <br/><br/>\n\nFLAWLESS HEAD OFFICE <br/>\n11th Floor One Corporate Center <br/>\nDoña Julia Vargas Ave. cor Meralco Ave. <br/>\nOrtigas Center, Pasig City <br/>\n584-6807 / 584-6813 / 584-7135 <br/>\ninfo@flawless.com.ph <br/><br/>\n\nAll users of this website will be governed by these terms and conditions. Your use of this website constitutes your agreement to follow these rules and be bound by them. Otherwise, you will be limited to the full functionalities of the website, including placement of online orders.', 1, 1),
(17, 'Change in Terms and Conditions', 'Flawless Face and Body reserves the right to update or modify these terms and conditions at any time without prior notice. The website will continue to implement on changes to improve the overall shopping experience of our customers. All user activities will be bound by the terms and conditions as soon as the changes are applied.', 1, 1),
(18, 'Use of Website', 'The website is mainly for individuals and entities wishing to review, consider, purchase or otherwise engage in retail transactions involving Flawless’ goods and services and/or to otherwise transact business with or contact Flawless Face and Body, on their own behalf. Information about the products and services of Flawless are provided on the website to guide customers on their purchase. No information concerning the transactional preferences of an individual customer (whether such customer is a person or an entity) can be entered, altered, modified or otherwise affected, by any third party on behalf of such individual customer.', 1, 1),
(19, 'Copyright Notice', 'All content including banners, images, headers, graphics and design, audio & video clips and text is the exclusive property of Flawless Face and Body and/or is subject to trademark, service mark, trade item, copyright and/or other intellectual property rights or licenses held by Flawless Face and Body, by one of its affiliates or by third parties who have licensed or assigned their rights, interests and/or materials to Flawless Face and Body. The content of flawless.com.ph is intended solely for the personal and non-commercial use of the users of our site. As such a user, you may download, print and store selected portions of the Content only for your own personal and non-commerical use. Any form of plagiarism such as copying content is prohibited. Flawless Face and Body reserves complete full intellectual property rights in any Content you download from this Web site. Except as noted above, you may not copy, download, reproduce, modify, publish, distribute, transmit, transfer or create derivative works from the Content without first obtaining the express written permission of Flawless Face and Body.', 1, 1),
(20, 'Disclaimer', 'This site and all contents of this site are provided on an "as is" basis without warranties of any kind, either express or implied, including without limitation warranties of title or implied warranties of merchantability or fitness for a particular purpose. You acknowledge, by your use of this site, that your use of this site is at your sole risk, that you assume full responsibility for all costs associated with all necessary servicing or repairs of any equipment you use in connection with your use of our site, and that Flawless Face and Body shall not be liable for any damages of any kind related to your use of this site.', 1, 1),
(21, 'Idemnification', 'You agree to defend, indemnify and hold Flawless Face and Body harmless from and against any and all claims, damages, costs and expenses, including attorneys''; fees, arising from or related to your use of the site, including, without limitation, your use of this KaratWorld.net Web site in violation of these Terms of Use.', 1, 1),
(22, 'Termination', 'You agree that Flawless Face and Body, in its sole discretion, may terminate your password, account (or any part thereof) or use of the Site, and remove and discard any Information within the Site, for any reason, including, without limitation, for lack of use, failure to timely pay any fees or other moneys due Flawless Face and Body, or if Flawless Face and Body believes that you have violated or acted inconsistently with the letter or spirit of the Terms of Use. Flawless Face and Body may also in its sole discretion and at any time discontinue providing any services, or any part thereof, with or without notice. You agree that any termination of your access to the Site under any provision of these Terms of Use may be effected without prior notice. You further acknowledge and agree that Flawless Face and Body may immediately deactivate or delete your account and all related Information and files in your account and/or bar any further access to such files or the Site. Further, you agree that Flawless Face and Body shall not be liable to you or any third-party for any termination of your access to the Site.', 1, 1),
(23, 'Trademark Information', 'Flawless Face and Body trademarks and service marks, and other Flawless Face and Body logos and product and service names are owned by and are the exclusive property of Flawless Face and Body. Without Flawless Face and Body express prior written permission, you agree not to display or use in any manner.', 1, 1),
(24, 'No Resale of Site or Items', 'You agree not to reproduce, duplicate, copy, sell, resell or exploit for any commercial purposes, any portion of the services provided on the Site, use of the Site, or access to the Site, other than as provided within the scope of these Terms of Use. It is also understood that all products and vouchers should not be resold for any commercial purposes and are solely for personal consumption.', 1, 1),
(25, 'Third Party Content', 'The Site may provide, or third parties may provide, links to other World Wide Web sites or resources. Because Flawless Face and Body has no control over such sites and resources, you acknowledge and agree that Flawless Face and Body is not responsible for the availability of such external sites or resources, and does not endorse and is not responsible or liable for any content, advertising, products, or other materials on or available from such sites or resources. You further acknowledge and agree that Flawless Face and Body shall not be responsible or liable, directly or indirectly, for any damage or loss caused or alleged to be caused by or in connection with use of or reliance on any such content, items or services available on or through any such site or resource. \n<br/><br/>\nAny opinions, advise, statements, services, offers, or other information or content expressed or made available by third parties are those of the respective author(s) or distributor(s) and not of Flawless Face and Body. Flawless Face and Body neither endorses nor is responsible for the accuracy or reliability of any opinion, advice, or statement made by anyone other than authorized spokespersons of Flawless Face and Body while acting in official capacities.', 1, 1),
(26, 'Compliance with Laws', 'You agree to comply with all applicable laws regarding your use of the Site. You further agree that information provided by you is truthful and accurate to the best of you knowledge. \n<br/><br/>\nFlawless Face and Body shall have the right, but not the obligation, to monitor the content of the Site to determine compliance with these Terms of Use and any applicable law, regulation, or authorized government request. Flawless Face and Body shall have the right to remove any material that Flawless Face and Body, in its sole discretion, finds to be in violation of the provisions hereof or otherwise objectionable.', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vii_franchising`
--

CREATE TABLE IF NOT EXISTS `vii_franchising` (
  `id_contact_us` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `landline` varchar(32) DEFAULT NULL,
  `address` text,
  `existing_franchise` varchar(32) DEFAULT NULL,
  `message` text NOT NULL,
  `date_add` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_contact_us`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `vii_franchising`
--

INSERT INTO `vii_franchising` (`id_contact_us`, `name`, `email`, `phone`, `landline`, `address`, `existing_franchise`, `message`, `date_add`) VALUES
(1, 'Sheldon _TEST_', 'tj.module.test@gmail.com', '0479109394', '80008979', 'awefasdfefasdfawf', 'No', 'awefawdf', '2016-02-23 22:27:33'),
(2, 'Sheldon _TEST_', 'tj.module.test@gmail.com', '0479109394', '123124312', 'asdfasdf', 'No', 'Adefwef', '2016-02-23 22:37:43'),
(5, 'test_marc', 'test_marc@gmail.com', '123', '', '321astest_marc', 'Yes', 'test_marc test_marc test_marc', '2016-02-24 01:41:31'),
(4, 'Sheldon _TEST_', 'tj.module.test@gmail.com', '0479109394', '800798279', 'asdfasdf', 'Yes', 'asdfwe', '2016-02-24 00:49:02'),
(6, 'YOUR NAME (REQUIRED)', '', 'YOUR CONTACT NO. (REQUIRED)', 'LANDLINE', 'ADDRESS (REQUIRED)', 'Yes', 'COMMENT (REQUIRED)', '2016-02-24 02:51:44'),
(7, 'test', '', '213', '1111', '231', 'Yes', 'appointmentmanager', '2016-02-24 04:53:54'),
(8, 'YOUR NAME (REQUIRED)', 'email@gmail.com', '111', '', 'ADDRESS (REQUIRED)', 'No', 'COMMENT (REQUIRED)', '2016-02-26 03:09:32'),
(9, 'test', 'zeir.fontanilla@viiworks.com', '23134124', 'fsdvfdvxfb', 'test', 'Yes', 'test', '2016-02-29 02:50:19');

-- --------------------------------------------------------

--
-- Table structure for table `vii_gallery_category`
--

CREATE TABLE IF NOT EXISTS `vii_gallery_category` (
  `id_gallery_category` int(11) NOT NULL AUTO_INCREMENT,
  `id_parent` int(11) NOT NULL DEFAULT '0',
  `category_title` text,
  `link_rewrite` text,
  `category_sub_title` text,
  `category_desc` text,
  `image_src` varchar(255) DEFAULT NULL,
  `category_root` text,
  `category_link_rewrite` text,
  `category_meta_title` text,
  `category_meta_description` text,
  `category_meta_author` text,
  `category_meta_keywords` text,
  `category_meta_image` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `date_add` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_gallery_category`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `vii_gallery_category`
--

INSERT INTO `vii_gallery_category` (`id_gallery_category`, `id_parent`, `category_title`, `link_rewrite`, `category_sub_title`, `category_desc`, `image_src`, `category_root`, `category_link_rewrite`, `category_meta_title`, `category_meta_description`, `category_meta_author`, `category_meta_keywords`, `category_meta_image`, `status`, `date_add`) VALUES
(1, 0, 'Uncategorized', 'uncategorized', 'Uncategorized', 'Uncategorized', 'c0e037d2f5d96215a848dc81f03883f6.jpg', 'uncategorized', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2014-07-07 16:00:00'),
(3, 0, 'Sample Title #1', 'sample_title_1', 'Sample Sub Title #1', 'Sample Description #1', '5ba50fe4f129f8b885fbc1bec14f4b67.jpg', 'sample_title_1', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2014-08-19 09:31:24');

-- --------------------------------------------------------

--
-- Table structure for table `vii_gallery_item`
--

CREATE TABLE IF NOT EXISTS `vii_gallery_item` (
  `id_gallery_item` int(11) NOT NULL AUTO_INCREMENT,
  `image_title` text,
  `link_rewrite` text,
  `image_sub_title` text,
  `image_desc` text,
  `image_src` text,
  `image_meta_author` text,
  `image_meta_title` text,
  `image_meta_description` text,
  `image_meta_keywords` text,
  `status` int(11) NOT NULL DEFAULT '0',
  `id_gallery_category` int(11) NOT NULL DEFAULT '1',
  `date_add` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_gallery_item`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `vii_gallery_item`
--

INSERT INTO `vii_gallery_item` (`id_gallery_item`, `image_title`, `link_rewrite`, `image_sub_title`, `image_desc`, `image_src`, `image_meta_author`, `image_meta_title`, `image_meta_description`, `image_meta_keywords`, `status`, `id_gallery_category`, `date_add`) VALUES
(1, 'Title #1', 'title_1', 'Subtitle#1', 'Description #1', '6c230ed26f01fd493645b4f397692fe7.jpg', NULL, 'Gallery Sample Meta Title  #1', 'Gallery Sample Meta Description  #1', 'Gallery Sample Meta Keywords  #1', 1, 1, '2014-08-19 09:09:46'),
(2, 'Title #2', 'title_2', 'Subtitle#2', 'Description #2', 'c89fedc788a87299c45efe1cf16c523f.jpg', NULL, NULL, NULL, NULL, 1, 1, '2014-08-19 09:09:46'),
(3, 'Sample Title #1', 'sample_title__1', 'Sample Sub Title #1', 'Sample Description #1', '550e356039d49ed4290dfdd9193cf0bb.jpg', NULL, 'Sample Title #1', 'Sample Title #1', 'Sample Title #1', 1, 3, '2014-10-16 02:56:47'),
(4, 'Sample Title #2', 'sample_title__2', 'Sample Sub Title #2', 'Sample Description #2', '11e562813d6057f56487153581332ecd.jpg', NULL, 'Sample Title #2', 'Sample Title #2', 'Sample Title #2', 1, 3, '2014-10-16 02:56:47');

-- --------------------------------------------------------

--
-- Table structure for table `vii_module`
--

CREATE TABLE IF NOT EXISTS `vii_module` (
  `id_module` int(11) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(128) NOT NULL,
  `module_description` text NOT NULL,
  `module_class` varchar(64) NOT NULL,
  `link_rewrite` varchar(128) NOT NULL,
  `isAdmin` tinyint(4) NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_module`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `vii_module`
--

INSERT INTO `vii_module` (`id_module`, `module_name`, `module_description`, `module_class`, `link_rewrite`, `isAdmin`, `isActive`, `date_add`, `date_upd`) VALUES
(1, 'Dashboard', '', 'admindashboard', 'dashboard', 1, 1, '2012-09-28 09:54:19', '2011-03-14 14:36:46'),
(2, 'Settings', '', 'settings', 'settings', 1, 1, '2012-09-28 10:28:19', '2011-03-15 11:15:59'),
(3, 'CMS', '', 'cms', 'pages', 1, 1, '2012-09-28 09:55:16', '2011-03-15 18:44:40'),
(4, 'Pages', 'Generic modules for pages with content', 'pages', '', 0, 1, '2011-03-25 17:06:30', '2011-03-25 17:06:30'),
(6, 'Newsletter Manager', 'Newsletter Manager Description', 'newslettermanager', 'newsletter', 1, 1, '2014-01-13 22:14:13', '2014-01-13 22:14:16'),
(7, 'Contact Us Manager', 'Contact Us Manager Description', 'contactusmanager', 'contactusmanager', 1, 1, '2014-01-13 22:14:45', '2015-11-24 08:27:01'),
(9, 'Contact Us', 'Contact Us Front End', 'contactus', 'contactus', 0, 1, '2014-02-13 05:00:06', '2015-01-09 10:12:57'),
(10, 'Breadcrumbs', 'Breadcrumbs Manager', 'breadcrumbs', 'breadcrumbs', 1, 1, '2014-02-17 10:33:07', '2014-02-17 10:45:24'),
(11, 'FAQ Manager', 'Manages FAQ items', 'faqmanager', 'faqmanager', 1, 1, '2014-02-19 03:10:29', '2015-12-15 10:38:31'),
(12, 'SEO Manager', 'SEO Manager Description', 'seomanager', 'seo', 1, 1, '2014-02-19 11:42:59', '2014-02-19 12:49:30'),
(13, 'Frequently Asked Questions', 'Frequently Asked Questions Front End', 'faqs', 'faqs', 0, 1, '2014-04-21 08:46:03', '2014-04-21 08:46:03'),
(14, 'News Page', 'News Front', 'news', 'news', 0, 1, '2014-07-08 00:00:00', '2014-07-08 00:00:00'),
(15, 'News Manager', 'News Dashboard', 'news_manager', 'news_manager', 1, 1, '2014-07-08 00:00:00', '2014-07-08 00:00:00'),
(16, 'Gallery', 'Gallery Front', 'gallery', 'gallery', 0, 1, '2014-07-08 00:00:00', '2014-10-16 10:01:18'),
(17, 'Gallery Manager', 'Gallery Dashboard', 'gallery_manager', 'gallery_manager', 1, 1, '2014-07-08 00:00:00', '2014-10-16 10:01:29'),
(18, 'Banner', 'Setup banner contents', 'bannermanager', 'bannermanager', 1, 1, '2014-08-01 08:32:01', '2014-08-12 09:48:11'),
(19, 'RSS Feed', 'RSS Feed', 'rssfeed', 'rssfeed', 0, 1, '2014-08-19 10:43:17', '2014-08-19 10:43:17'),
(20, 'Blog Manager', 'Blog Manager', 'blog_manager', 'blog_manager', 1, 1, '2014-08-21 09:34:44', '2014-08-21 09:34:44'),
(21, 'Blog Page', 'Blog Front', 'blog', 'blog', 0, 1, '2014-08-21 09:35:50', '2016-02-18 11:01:25'),
(22, 'Testimonial', 'Testimonial Front', 'testimonial', 'testimonial', 0, 1, '2014-08-21 11:01:12', '2014-09-05 12:02:58'),
(23, 'Testimonial Manager', 'Testimonial Dashboard', 'testimonial_manager', 'testimonial_manager', 1, 1, '2014-08-21 11:02:20', '2014-08-21 11:02:20'),
(24, 'Navigation Manager', 'Navigation Manager', 'manage_navigation', 'manage_navigation', 1, 1, '2014-09-01 06:15:32', '2014-09-01 06:15:32'),
(25, 'Promotion Manager', 'Promotions Dashboard', 'promo_manager', 'promo_manager', 1, 1, '2014-10-15 10:20:32', '2014-10-15 10:20:32'),
(26, 'Promotion', 'Promotion Front', 'promo', 'promo', 0, 1, '2014-10-15 10:21:05', '2014-10-15 10:21:05'),
(27, 'Search', 'Search Front', 'search', 'search', 0, 1, '2014-10-16 06:09:21', '2014-10-16 06:09:21'),
(28, 'Newsletter', 'Newsletter Front', 'newsletter', 'newsletter', 0, 1, '2014-10-16 08:43:01', '2014-10-16 08:43:01'),
(29, 'Events Page', 'Events Page Frontend', 'events', 'events', 0, 1, '2015-01-06 05:24:55', '2015-01-06 05:24:55'),
(30, 'Events Manager', 'Events Manager Dashboard', 'events_manager', 'events_manager', 1, 1, '2015-01-06 05:25:31', '2015-01-06 05:25:31'),
(31, 'Branch Manager', 'Branch Dashboard', 'branch_manager', 'branch_manager', 1, 1, '2016-02-04 00:00:00', '2016-02-04 00:00:00'),
(32, 'Appointment', 'Keeps record of appointment details and send notifications to both admin and sender', 'appointment', 'appointment', 0, 1, '2016-02-10 05:26:18', '2016-02-10 05:26:18'),
(33, 'Appointment Manager', 'keeps track of appointments', 'appointmentmanager', 'appointmentmanager', 1, 1, '2016-02-10 10:25:07', '2016-02-26 03:42:37'),
(34, 'Franchising', 'For franchising inquiries', 'franchising', 'franchising', 0, 1, '2016-02-24 06:09:38', '2016-02-24 06:09:55'),
(35, 'Franchising Manager', '', 'franchisingmanager', 'franchisingmanager', 1, 1, '2016-02-24 07:42:41', '2016-02-24 07:42:41');

-- --------------------------------------------------------

--
-- Table structure for table `vii_newsletter`
--

CREATE TABLE IF NOT EXISTS `vii_newsletter` (
  `id_newsletter` int(11) NOT NULL AUTO_INCREMENT,
  `title` tinytext NOT NULL,
  `content` varchar(15) NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_newsletter`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `vii_newsletter`
--

INSERT INTO `vii_newsletter` (`id_newsletter`, `title`, `content`, `date_add`) VALUES
(1, 'Ensogo', '1.txt', '2014-02-13 05:35:05'),
(2, 'Buyanihan', '2.txt', '2014-02-13 05:37:40');

-- --------------------------------------------------------

--
-- Table structure for table `vii_newsletter_subscribers`
--

CREATE TABLE IF NOT EXISTS `vii_newsletter_subscribers` (
  `id_subscriber` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `code` varchar(100) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_subscriber`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `vii_newsletter_subscribers`
--

INSERT INTO `vii_newsletter_subscribers` (`id_subscriber`, `email`, `code`, `status`, `date_add`) VALUES
(1, 'testviiworks@gmail.com', 'LJT14e7KePle5VQ6mXLCYdLN4lIv+CkR1Y/Tari2BP+VpCGEsJU2eJoAniCBSgJEo2EXd/pH7/FsV5Ef2lXj6A==', '1', '2014-10-16 09:01:50'),
(2, 'kirby.lagunda@viiworks.com', 'hyzhQgjk1BXJ5ZbWrHscAJ/ESDmMgVFGVA0ura5OyddeHpNKEWIr/4S0hO5J1TB3dPYW+tNaQCAuszXpkcGnaQ==', '1', '2016-02-24 07:50:42'),
(3, 'dfasf@asdfasd.asdfasd', 'RgD6txOO0I7dkM+ew5MwpPf1E4Sgt+1D4HX6qq9TXl+D6n6Zn6C4xkpHOzMUnkDUSh++3xb6vw4XkILoptbm/Q==', '1', '2016-02-24 08:49:36'),
(4, 'asdfads@sadfas.asdf', 'zBqVJc6/w6xOIk0nSzBMsdmpvZD+6vgmvfEXoetCIQFd8E3OL5rsEZABSnbEcYJD9JCXIt18twaNIEP6O+uC5g==', '1', '2016-02-24 08:49:44'),
(5, 'asdfasdf@asdfsad.asdf', 'b4lqaTtkUnIM2y6bg/uzIk6kgWwWU4/8fyaXHfzCPvM/MRZgXpg9eMxmNNxGfqdM7IhdRNDETPJsbdGrtDE4gg==', '1', '2016-02-24 08:49:58'),
(6, 'asdfasdf@asdfsad.asdfasdf', 'KM/beoLGyFvoTiGCXU/+BvKKXzCuXpljk8jIx3lM8GOG+dGUESIaCsnAsU3eMJT+vhE2xhHDY5fg2RrsYUIsoA==', '1', '2016-02-24 08:50:08'),
(7, 'asdfasdfa@asdf.asdf', 'Ci65j51OAZ5ZP8DinMxtWdmVZyV32WSM2XXfmDXNPywYJgWBOZwBtPp0PggGklOEd5Ez5Swi2C78XiO5WDPv4A==', '1', '2016-02-24 08:50:24'),
(8, 'asdfasdf@asdfsad.asdfasdfa', 'tuUh+VPvApQr5Jtuf/BD45wROnnN5xfTVLA2XUcu2VmhSnOE1MQNJyWtSxqkqpByJXnfG22cHD4HMzUYtFhrtQ==', '1', '2016-02-24 08:50:37'),
(9, 'asdfasdf@asdfsad.asdfasdfaa', 'WhbJKxrIyqRiYvD4r07Sw5XL78yZuh30P5b459xmBSr33J+FsUPPlJf6GFTlSsUwOpZVrvpzo8MxtuemoR7WqQ==', '1', '2016-02-24 08:50:58'),
(10, 'lizafontanilla@gmail.com', 'bkn03YDJFWuFzeYOO/9Ap3be4Df7jN3kj8ITl8XIRxaI0uIIjxDPCym9LKFs1JUB/VEYSJyTxRYDIJ29F8WeyQ==', '1', '2016-02-24 11:10:36'),
(11, 'test@gmail.com', 'dHCb00FjSUb8epIkxEKsJskZuDQyACpQJJNBRZT2HbYWln4FtTNAki3T9vhdKpBaAZk3MqbcWwh9G5A+5pfiZw==', '1', '2016-02-26 08:53:44'),
(12, 'test1@gmail.com', '8M0Hm+2/KaxyYiLS34FpCqe8XHkuUrRi2h/qz+CKY6dR1h2exTMLirw1BACso9apZFg/g7+TWrmxn/8N7wJFWg==', '1', '2016-02-26 08:54:16'),
(13, 'tesa@gmail.com', 'EPqw+NBvYm2qLa6A3mPnkL4OUR+Rz4HUmuHQFu4Khi2kN1o7ZBH3t4uKpWhkaeUkW2cxE6iNp0UIeTYeXAPcCQ==', '1', '2016-02-26 08:54:33'),
(14, 'da@gmail.com', '5kuTcZl3tlOy6t5yshCiZykngfmfEFILmEeuSWjQHTbWTzpgvOVV7WZOwb/+DEuT42W75xucrZkuSNgkuPoTpw==', '1', '2016-02-26 08:55:11'),
(15, 'sad@gmail.com', '3oDE2XnuXmpAwtOjU4ZZQuSaESoZ/HBjF0uys9Oq+8AKVFlMe/Dqak4Ka2SBhE4X1ZTdiw+WrKxDBeWiFTEVXQ==', '1', '2016-02-26 09:10:36'),
(16, 'ads@gmail.com', 'MNSLFKybIm4FAHeaPvCftmYqmwaFDsDwnZcpnIVK3A5m8WbSIImcl/mytY6SA3idSoCbZJ0otJdPzNnvyCRgsg==', '1', '2016-02-26 09:11:24'),
(17, 'das@gmail.com', 'TduxuFeZ4/rFCbYDVNj/sNiFgQUWLlAn05NHAKP1K1QV/ZZMj3wBO+Xq3eKq+5anmLj6JG9nyfckVwxHLU/QRQ==', '1', '2016-02-26 09:18:09'),
(18, 'double@gmail.com', '2eERGMkWCM4CvZVY5KEvtN9gNwZaOmOUuwssZjU5+mG/cfH3tQv7WUYruxiMDNw1T6ZGFuoiKEbQyXho4bO+yA==', '1', '2016-02-26 09:49:25');

-- --------------------------------------------------------

--
-- Table structure for table `vii_news_category`
--

CREATE TABLE IF NOT EXISTS `vii_news_category` (
  `id_news_category` int(11) NOT NULL AUTO_INCREMENT,
  `id_parent` int(11) NOT NULL DEFAULT '0',
  `category_title` text,
  `category_caption` text,
  `category_desc` text,
  `category_image_src` text,
  `category_root` text,
  `category_link_rewrite` text,
  `category_meta_title` text,
  `category_meta_description` text,
  `category_meta_author` text,
  `category_meta_keywords` text,
  `category_meta_image` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `date_add` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_news_category`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `vii_news_category`
--

INSERT INTO `vii_news_category` (`id_news_category`, `id_parent`, `category_title`, `category_caption`, `category_desc`, `category_image_src`, `category_root`, `category_link_rewrite`, `category_meta_title`, `category_meta_description`, `category_meta_author`, `category_meta_keywords`, `category_meta_image`, `status`, `date_add`) VALUES
(1, 0, 'Uncategorized', NULL, 'Uncategorized', NULL, 'uncategorized', 'uncategorized', NULL, NULL, NULL, NULL, NULL, 0, '2014-05-29 10:46:04');

-- --------------------------------------------------------

--
-- Table structure for table `vii_news_item`
--

CREATE TABLE IF NOT EXISTS `vii_news_item` (
  `id_news_item` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `image_title` text,
  `link_rewrite` text,
  `image_sub_title` text,
  `image_desc` text,
  `image_src` text,
  `image_author` text,
  `image_meta_title` text,
  `image_meta_description` text,
  `image_meta_keywords` text,
  `status` int(11) NOT NULL DEFAULT '0',
  `id_news_category` int(11) NOT NULL DEFAULT '1',
  `date_add` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_news_item`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `vii_news_item`
--

INSERT INTO `vii_news_item` (`id_news_item`, `date`, `image_title`, `link_rewrite`, `image_sub_title`, `image_desc`, `image_src`, `image_author`, `image_meta_title`, `image_meta_description`, `image_meta_keywords`, `status`, `id_news_category`, `date_add`) VALUES
(5, '2016-02-10', 'Flawless Lucky Charm', 'flawless_lucky_charm', 'THE LATEST FROM FLAWLESS', 'Want to know your luck in love, health and wealth for your most Flawless year ever? In celebration of the New Year, Flawless is offering you a limited edition 2016 Guide by Feng Shui Master, Marites Allen, which you can get free for every P4,000 spent on a single transaction.<br><br>Learn about your zodiac and how you can navigate your way to success this year with the expert advice of Marites Allen. Also, find out what makes Flawless celebrities lucky in their respective careers in Your 2016 Guide.<br><br><span style="font-style: italic;">The Flawless Lucky Charm promo is valid until March 31, 2016 in all Flawless clinics nationwide.</span>', '3f61fd2410799316d2adbaf468d08c1c.png', 'FLAWLESS', 'Flawless ', 'Flawless ', 'Flawless ', 1, 1, '2016-02-09 19:14:16'),
(6, '2016-02-10', 'I Choose Flawless', 'i_choose_flawless', 'THE LATEST FROM FLAWLESS', 'For years, Flawless has been the trusted partner of the discerning and empowered client who views beauty as a tool for success. The aesthetic clinic is passionately committed to help people achieve their beauty goals by delivering service excellence, which is attributed to Cleanliness, Quality and Care.<br><br>&nbsp;<br><span style="font-weight: bold;">Choose Clean</span><br><br>Flawless is the only aesthetic center in the Philippines that is guaranteed hygienic. The clinic boasts superior hygiene practices to ensure the safety of each client. At Flawless, a strict sanitary protocol involves sterilized tools sealed in individual pouches, disposable headbands, disposable face towels and hand sanitizer dispensers strategically placed in the clinics—this surpasses the local government mandates and follows World Health Organization standards. By setting a safe environment, one can be assured of getting quality results.<br>&nbsp;<br><br><span style="font-weight: bold;">Choose Quality</span><br><br>Flawless is dedicated to providing the best beauty treatments that science and nature can offer. The clinic only uses advanced aesthetic methods and state-of-the-art dermatological machines for their services, and for products, only the safest and most effective ones are made available to answer each person’s skincare needs.<br><br>In addition, Flawless is Powered by Skin Professionals. From Doctors to receptionists to aestheticians, the clinic employs a high level of professionalism by requiring staff to undergo comprehensive training to reach aesthetic expertise before their clinic assignments. Flawless’ staff training, which is a combination of medical lectures and hands-on exposure, is considered to be the most extensive program in the local beauty industry. This effort comes with Flawless’ commitment to present medically sound solutions and unparalleled care.<br><br>&nbsp;<br><span style="font-weight: bold;">Choose Care</span><br><br>Even from its first year of operation, Flawless has been exhibiting a unique approach to care, known as the Alagang Flawless way. It imparts the principle that beyond products and treatments, the clinic exists to take care of people and help boost their confidence with the empowering benefits of beauty.<br><br>“We grew in credibility and good standing with our clients,” says Rubby Sy, owner and CEO of Flawless. “That’s why we go the extra mile to be clean, deliver quality and the right kind of care—for these reasons, people choose Flawless!”', '06c6a9da62c1f1047b67403d16d6abf2.jpg', 'FLAWLESS', 'FLAWLESS', 'FLAWLESS', 'FLAWLESS', 1, 1, '2016-02-09 19:53:04'),
(7, '2016-02-10', 'Flawless Makes a Pink Splash and Other Beauty Treats', 'flawless_makes_a_pink_splash_and_other_beauty_treats', 'THE LATEST FROM FLAWLESS', '<p>Come rain or shine, the country’s preferred aesthetic clinic is giving you reasons why you need to be Alagang Flawless this monsoon season. From special discounts to freebies and online perks, you will definitely find delight in Flawless’ latest offers.<br>&nbsp;<br><span style="font-weight: bold;">Pink Splash Promo</span><br><br>Want to own the prettiest pink gear of the wet season? From September 11 to October 31, you can avail of the limited edition Flawless Pink Umbrella for every Php 5,000 on a single transaction. But take note, the limited edition umbrellas are only available until supplies last. So better book that Beauty Drip session now!<br><br><span style="font-weight: bold;">All Students Treat</span><br><br>Enjoy the perks of a campus cutie with the All Students Treat; this entitles students to a 20% discount on any of Flawless’ Non-Medical Services just by showing their school IDs. Plus, they get an additional 5% discount when they redeem the All Students online voucher at stay.flawless.com.ph and another 5% off when they bring a paying companion. Yes, students can get up to 30% off each time they visit a Flawless clinic.<br><br><span style="font-weight: bold;">FAB For All</span><br><br>Your Flawless Access to Beauty just got better with FAB For All, a more accessible, more convenient and more exciting loyalty program by Flawless. FAB For All allows you to earn points and get the best rebates without the need of carrying or presenting a card—everything is accessible in all Flawless clinics nationwide, and soon in your mobile device. And the best part is, FAB For All membership is charge-free and non-expiry.<br><br><span style="font-weight: bold;">Flawless x Lazada</span><br><br>Online shoppers, rejoice—all Flawless products are now available at Lazada. From your favorite Flawless skincare kits to the 100% all-natural Novexpert essentials, owning your beauty must-haves gets easier online and you can even pay on your own terms. Stock up on your beauty supplies now; visit lazada.com.ph/flawless.<br><br><span style="font-weight: bold;">#stayFlawless App</span><br><br>Make your beauty routine fun and easy in just a few taps, Flawless is releasing #stayFlawless App this month. Create an account, build your profile, book your sessions, shop for your favorite skincare products, get special perks and discounts, and discover so much more! #stayFlawless app helps every beauty aficionado get the best of Flawless in any mobile device. Download it for free on the App Store or Play Store.<br></p>', '254cd11b44a48e055890ec69008fafc8.png', 'FLAWLESS', 'FLAWLESS', 'FLAWLESS', 'FLAWLESS', 1, 1, '2016-02-09 20:04:58');

-- --------------------------------------------------------

--
-- Table structure for table `vii_page`
--

CREATE TABLE IF NOT EXISTS `vii_page` (
  `id_page` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `sort_order` int(5) NOT NULL,
  `show_children` tinyint(4) NOT NULL DEFAULT '0',
  `content` longtext NOT NULL,
  `image_src` varchar(255) DEFAULT NULL,
  `caption` text,
  `class` varchar(64) NOT NULL,
  `function` varchar(64) NOT NULL,
  `link_rewrite` varchar(128) NOT NULL,
  `absolute_link` varchar(255) NOT NULL,
  `redirect` int(11) DEFAULT NULL,
  `meta_title` varchar(128) NOT NULL,
  `meta_keywords` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_image` varchar(255) DEFAULT NULL,
  `title_active` int(11) NOT NULL DEFAULT '0',
  `content_active` int(11) NOT NULL DEFAULT '0',
  `caption_active` int(11) NOT NULL DEFAULT '0',
  `image_src_active` int(11) NOT NULL DEFAULT '0',
  `meta_title_active` int(11) NOT NULL DEFAULT '0',
  `meta_keywords_active` int(11) NOT NULL DEFAULT '0',
  `meta_description_active` int(11) NOT NULL DEFAULT '0',
  `meta_image_active` int(11) NOT NULL DEFAULT '0',
  `custom_theme` varchar(32) NOT NULL,
  `custom_layout` varchar(128) NOT NULL,
  `layout` text,
  `sections` text,
  `isAdmin` tinyint(1) NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `chat` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_page`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=259 ;

--
-- Dumping data for table `vii_page`
--

INSERT INTO `vii_page` (`id_page`, `title`, `sort_order`, `show_children`, `content`, `image_src`, `caption`, `class`, `function`, `link_rewrite`, `absolute_link`, `redirect`, `meta_title`, `meta_keywords`, `meta_description`, `meta_image`, `title_active`, `content_active`, `caption_active`, `image_src_active`, `meta_title_active`, `meta_keywords_active`, `meta_description_active`, `meta_image_active`, `custom_theme`, `custom_layout`, `layout`, `sections`, `isAdmin`, `date_add`, `date_upd`, `chat`) VALUES
(198, 'Beauty Kits', 0, 1, '<p><br></p>', '', 'Your all-in-one beauty solution to help make your daily routine easy and uncomplicated<br>Our Beauty kits are specially formulated by our medical experts to ensure they encompass every step of your beauty journey.', 'pages', 'index', 'beautykits', 'beautykits', 1, '', '', '', '', 1, 0, 1, 0, 0, 0, 0, 0, 'vii_flawless', 'Beautykits.default_template.html', '{"columns":"1","filename":"layout_template_col1_v1_1","format":"12_0_0_0"}', '{"col0":{}}', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(199, 'Age Defy cream', 0, 0, 'IN STOCK<br>P330', 'be8d74bef54cafa9923662c89f495933.jpg', '<ul><li>Goes deep down into the skin to promote balance and moisturization, preventing the signs of aging<br></li><li>Visit our clinic today for a free consultation and find out a suitable skin care solution for you.&nbsp;<br></li></ul>', 'pages', 'index', 'agedefycream', 'agedefycream', 1, '', '', '', '', 1, 1, 1, 1, 0, 0, 0, 0, 'vii_flawless', 'product.inner.template.html', NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(200, 'Age Defy Cream ', 0, 1, 'In Stock<br>P330', '62a9065903ed3c8f745278641cbb6f55.jpg', '<ul><li>Goes deep down into the skin to promote balance and moisturization, preventing the signs of aging. </li><li>Visit our clinic today for a free consultation and find out a suitable skin care solution for you.&nbsp;<br></li></ul><p></p>', 'pages', 'index', 'agedefycream', 'agedefycream', 1, '', '', '', '', 1, 1, 1, 1, 0, 0, 0, 0, 'vii_flawless', 'product.inner.template.html', NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(201, 'topnavigation', 0, 0, '\n<li class="bg-hover"><a href="/flawless/about">ABOUT US</a></li>', '', '<p><br></p>', 'pages', 'index', 'topnavigation', 'topnavigation', 1, '', '', '', '', 0, 1, 0, 0, 0, 0, 0, 0, 'vii_flawless', 'inner.template.html', NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(178, 'Testimonials', 4, 0, '<p><br></p>', '', '<p><br></p>', 'testimonial', 'index', 'testimonials', 'testimonials', 1, '', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 'vii_flawless', 'testimonials.template.html', '{"columns":"1","filename":"layout_template_col1_v1_1","format":"12_0_0_0"}', '{"col0":{"0":{"section_title":"Footer - Content","section_title_active":"0","section_subtitle":"Footer - Content","section_subtitle_active":"0","section_class":"","section_class_active":"0","isActive":"1","content_type":"page","pages":{"0":"167","1":"166"},"section_limit":"2","id_page_section":"19"}}}', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(1, 'Home', 0, 0, '<p><br></p>', '', '<p><br></p>', 'pages', 'index', '', '', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 'vii_flawless', 'main.template.html', '{"columns":"1","filename":"layout_template_col1_v1_1","format":"12_0_0_0"}', '{"col0":{"0":{"section_title":"Flawless Bestsellers","section_title_active":"1","section_subtitle":"Flawless Bestsellers","section_subtitle_active":"0","section_class":"Flawless_Bestsellers","section_class_active":"0","isActive":"1","content_type":"page","pages":{"0":"252","1":"253","2":"254"},"section_limit":"3","id_page_section":"18"},"3":{"section_title":"The Flawless Lifestyle","section_subtitle":"The Flawless Lifestyle","content_type":"module","id_page_section":"2","section_class":"","section_title_active":"1","section_subtitle_active":"0","section_class_active":"0","pages":{"0":""}},"4":{"section_title":"Footer - Content","section_title_active":"0","section_subtitle":"Footer - Content","section_subtitle_active":"0","section_class":"","section_class_active":"0","isActive":"1","content_type":"page","pages":{"0":"167","1":"166"},"section_limit":"2","id_page_section":"19"}}}', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(254, 'Shape & Sculpt Cream', 0, 0, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do \neiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad \nminim<br></p>', 'ce03d268ce0874b5892d0c29c8d24c05.png', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do \neiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad \nminim<br></p>', 'pages', 'index', 'shapesculptcream', 'shapesculptcream', 1, '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 'vii_flawless', 'product.inner.template.html', NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(255, 'Franchising', 3, 0, '<div class="container">\n     \n     <div class="row">\n     \n      <div class="col-lg-3 col-md-3 col-sm-3">\n\n       <img src="https://flawless.com.ph/images/RSC.jpg" class="img-responsive thumbnail" style="width: 300px;">\n       \n       \n\n      </div>\n\n      <div class="col-lg-8 col-md-8 col-sm-8">\n       \n\n       <div class="desc">\n         <p>\n          <em><span class="quote-begin">“</span> We saw the wealth of opportunities offered by franchising not just for ourselves but, more importantly, for our patients as a way of expanding our network and making Flawless the most accessible beauty clinic in the Philippines. This led us to develop a franchising plan, anchored on the ideal of helping others succeed. We want all franchise partners to achieve the same success we have experienced in our company-owned clinics, while upholding the high standards of service excellence that we at Flawless have built our nationwide reputation on.</em></p>\n         <p>\n          <em>Flawless has invested greatly in our business model and back-office support functions to deliver the finest service for our franchise partners. From day one, Flawless works closely with our new franchise partner to secure their understanding of our franchising terms, select the best clinic location; deliver our robust training to them and their new employees; and provide the essential marketing and sales support required to kick-start any new business. <img src="https://flawless.com.ph/images/quote-end.png" style="visibility: visible; opacity: 1;"></em></p>\n         <br>\n\n       </div>\n       \n       <blockquote class="margin-bottom-0 margin-top-0 size-20">\n        Rubby Sy, CEO and Owner of Flawless <br>\n        Awardee, CEO Excel Awards 2012<br>\n        Awardee, Go Negosyo Starpreneur 2012<br>\n       </blockquote>\n\n      </div>\n\n     </div>\n     \n     \n<hr> \n\n<p>\n</p><h4>\nYour success is our success\n</h4>     \nFlawless has been in the business for over 10 years, and our business model has proven extremely successful. It is this prosperity that we want to replicate in our franchise and company-owned clinics alike so it is vital that we give proper guidance to our partners to the ways of the business. From the outset, we provide clear specifications on how to operate under the Flawless brand, providing fixtures, fittings and furniture, everything you need to mirror nationwide Flawless clinics. A comprehensive Operations Manual, support materials and dedicated franchise establishment personnel ensure that every details is taken care of and nothing neglected. Upon turnover, Flawless Head Office also plays a visible and key role in every franchise site, with a dedicated Sales and Operations Officer assigned to assist your every move. Periodic visits and regular reviews will give you the informed and professional edge you need to make your clinic as profitable (and beautiful) as possible. Franchise cliincs are treated in the same way our company sites are and all clinics are considered part of the corporate network.\n<p></p>\n\n<br>\n<p>\n</p><h4>\nBecoming part of the Flawless family\n</h4>     \nTo help you get started, Flawless provides a training program for franchisees and their designated employees, from supervisors to aestheticians to Doctors. The program covers all aspects of the business from management to operations to product knowledge. This way, you can be sure that your branch will maintain the branding of Flawless Face and Body Clinics, and flourish using the same business model that has given the company immense success over the years.\n<p></p>\n\n<br>\n<p>\n</p><h4>\nWhere Beauty Meets Medical\n</h4>     \nFlawless is not your standard skin and body clinic. Over the years we have developed our own in-house products and services that are medically-sound, dermatologically-advanced, highly effective, and the most innovative in the industry. The Flawless tagline “Powered by Skin Professionals” fully embodies the spirit of the business. Our clientele is loyal because they understand the importance of advanced skin and body solutions, and most of all, they have faith and confidence in what we do for them.\n<p></p>\n\n<hr>\n\n<br>\n<p>\n</p><h4>\nWhy Flawless?\n</h4>     \nBesides the glamour of being part of the Philippines'' most trusted aesthetic clinics, there are various benefits to becoming a Flawless franchisee. A brand that has earned such national recognition and the trust of even the most discerning personalities like Lorna Tolentino and Richard Gutierrez, Flawless'' experience in the industry speaks for itself. All frinchisees become part of a strong and successful operation that has been giving quality products and services since 2001, and the momentum of Flawless'' popularity has immediate advantages for clinics, new and established. In addition, Flawless franchisees feel the benefit of industry leading marketing and a history steeped in years of scientific studies, providing excellent opportunities to succeed. In fact, the Philippine Franchising Association pegs success for newly opened franchises at over 90% compared to less than 30% as an international average success rate - however, Flawless proudly boasts that 100% of all Flawless franchises upon within the chain are still open and still earning, an astounding achievement and something interested franchisees can take comfort in.\n<p></p>\n\n\n     \n</div>\n<br><br>', '', '<p><br></p>', 'franchising', 'index', 'franchising', 'franchising', 1, '', '', '', '', 0, 1, 1, 0, 0, 0, 0, 0, 'vii_flawless', 'inner.template.html', NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(256, 'testimonials-sidebar', 0, 0, '<div class="margin-top-30 margin-bottom-20">\n  <img src="http://10.10.1.4/flawless/upload/images/cms/video.png" class="img-responsive">\n  <a href="https://www.youtube.com/user/FlawlessFaceandBody" class="find-more" style=" font-weight: bold;" target="_black">WATCH MORE VIDEOS &gt;</a>     \n</div>\n     \n     \n<div class="margin-top-0 margin-bottom-10">\n  <img src="http://10.10.1.4/flawless/upload/images/banner/ce03d268ce0874b5892d0c29c8d24c05.png" class="img-responsive">     \n  <a href="http://10.10.1.4/flawless/products" class="find-more weight-bold" style=" font-weight: bold;" target="_black">LATEST PRODUCTS &gt;</a>\n</div>', '', '<p><br></p>', 'pages', 'index', 'testimonialssidebar', 'testimonialssidebar', 1, '', '', '', '', 0, 1, 0, 0, 0, 0, 0, 0, 'vii_flawless', 'inner.template.html', NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(11, 'Flawless Media', 2, 0, 'content', '89310f1b197d83e8fa210067f8300988.jpg', 'Lorem ipsum dolor sit<br> consectetur adipiscing elit <br> ', 'news', 'index', 'news', 'news', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 'vii_flawless', 'inner.template.vr2.html', NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(6, 'Frequently Asked Questions', 6, 0, '', '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'faqs', 'index', 'faqs', 'faqs', 1, '', '', '', '', 1, 0, 1, 0, 0, 0, 0, 0, 'vii_flawless', 'inner.template.vr2.html', NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(4, 'Error Page', 13, 0, '\n      <div class="col-lg-5 col-md-5 col-sm-5">\n\n       <img class="img-responsive" src="assets/images/demo/girl_looking-min.jpg" alt="">\n\n      </div>\n\n      <div class="col-lg-7 col-md-7 col-sm-7">\n              <h3 class="nomargin">Sorry, The page you requested can not be found!</h3>\n<hr>\n       <a class="size-16" href="http://10.10.1.4/flawless" style="color: #ED3C95!important;"><i class="glyphicon glyphicon-menu-left margin-right-10 size-12"></i> Back to Homepage Now!</a>\n\n       \n       \n       <blockquote>\n          <div class="error-404">\n        404\n       </div>\n        \n       </blockquote>\n\n      </div>\n\n ', '', '', 'pages', 'error', 'error', 'error', 1, '', '', '', '', 0, 1, 0, 0, 0, 0, 0, 0, 'vii_flawless', 'inner.template.html', NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(21, 'About Us', 1, 0, '<div class="row content-full">\n\n <div class="container margin-top-30 margin-bottom-10" style="text-align: center;"> \n  <h2 class="margin-bottom-0">Where beauty begins</h2>\n  <p class="size-20">We take a comprehensive view to beauty that extends beyond treatments to also include home regimes, nutrition, and lifestyle.<br><br>\n  We look at beauty in 4 ways:</p>\n </div>\n \n <div class="row">\n <img src="../../upload/images/cms/image-steps.png" style="" class="img-responsive">\n </div>\n\n <div class="container padding-50"> \n\n  <div class="col-sm-12">\n   \n   <div class="col-sm-4">\n    <img src="http://10.10.1.4/flawless/upload/images/cms/certified-img.png" class="img-responsive">\n   </div> \n   \n   \n   <div class="col-sm-8">\n    <h2 class="margin-top-10 margin-bottom-10">Expertise you can trust</h2>\n    <p class="margin-bottom-10 size-20">Over a decade of experience means we only use medically-backed products &amp; techniques to provide easy yet comprehensive ways for you to stay beautiful</p>\n    <br>\n\n   </div>\n    \n   </div>\n\n </div>\n \n</div>\n\n\n\n<div class="row ">\n <div class="container padding-50 ">\n \n  <div class="col-sm-12">\n   \n   <div class="col-sm-4">\n    <img src="http://10.10.1.4/flawless/upload/images/cms/image-pics.png" class="img-responsive">\n   </div>   \n   \n   <div class="col-sm-8">\n    <h2 class="margin-top-10 margin-bottom-10">Join the Flawless team</h2>\n    <p class="margin-bottom-10 size-20">Got what it takes to deliver expertise in a thoughtful way? We want you to join us. We’re always on the look out for great people who can help devlier the Flawless brand.</p>\n    <br>\n    <a href="/flawless/careers" class="btn btn-primary center-block btn-lg col-md-4"><strong>VIEW OPEN POSITIONS</strong></a>\n   </div>\n    \n   </div>\n  </div> \n </div>', '29f6218f5bd9ec4aee81e35bbe66c80e.png', 'The Expertise to make Beauty Easy', 'pages', 'index', 'about', 'about', 1, 'About Us Meta Title Here', 'About Us Meta Title Keywords', 'About Us Meta Title Description', '', 0, 1, 0, 1, 0, 0, 0, 1, 'vii_flawless', 'inner.template.FullWidth.html', '{"columns":"1","filename":"layout_template_col1_v1_1","format":"12_0_0_0"}', '{"col0":{}}', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(102, 'Products', 1, 0, '<p><br></p>', 'f49e8b8da8964e903f0644a4ddfcba1f.jpg', '<div><br></div>Flawless Face and Body Clinic offers a collection of products especially formulated to match each skin type – acne-prone, oily skin, sensitive, mature skin, or combination – for women and men alike.<br><br>Visit any of our branches to have a skin consultation with our in-house dermatologists in order to know what is really best for your skin.', 'pages', 'index', 'products', 'products', 0, '', '', '', '', 1, 0, 1, 0, 0, 0, 0, 0, 'vii_flawless', 'product.template.html', '{"columns":"1","filename":"layout_template_col1_v1_1","format":"12_0_0_0"}', '{"col0":{"0":{"section_title":"Footer - Content","section_title_active":"0","section_subtitle":"Footer - Content","section_subtitle_active":"0","section_class":"","section_class_active":"0","isActive":"1","content_type":"page","pages":{"0":"167","1":"166"},"section_limit":"2","id_page_section":"19"}}}', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(257, 'Careers', 0, 0, '<div class="col-md-12 col-sm-12 margin-bottom-80">\n\n       <div class="heading-title heading-border-bottom heading-color margin-bottom-10">        \n        <h2 class="size-20">AESTHETICIAN</h2>\n       </div>\n\n       <div class="margin-bottom-0">\n        <p>Performs aesthetic face and body services to clients </p>\n\n    \n        <ul class="list-unstyled list-icons">\n         <li><i class="fa fa-check"></i>Female</li>\n         <li><i class="fa fa-check"></i>Graduate of any four year course</li>\n         <li><i class="fa fa-check"></i>Undergraduates who achieve at least 2nd year in college are also encourage to apply</li>\n         \n        </ul>\n\n       </div>\n    \n    <hr> &lt;!-- ---------- --&gt;\n    \n    <div class="heading-title heading-border-bottom heading-color margin-bottom-10">        \n        <h2 class="size-20">AESTHETIC NURSE</h2>\n       </div>\n\n       <div class="margin-bottom-0">\n        <p>Performs aesthetic services by providing pre-assessment and treatment.</p>\n\n    \n        <ul class="list-unstyled list-icons">\n         <li><i class="fa fa-check"></i>Female</li>\n         <li><i class="fa fa-check"></i>Registered Nurse</li>\n         <li><i class="fa fa-check"></i>With license and experience in Intra Venous Therapy for at least 6 months</li>\n         \n        </ul>\n\n       </div>\n    \n    <hr> &lt;!-- ---------- --&gt;\n    \n    <div class="heading-title heading-border-bottom heading-color margin-bottom-10">        \n        <h2 class="size-20">CLINIC SUPERVISOR</h2>\n       </div>\n\n       <div class="margin-bottom-0">\n        <p>Responsible for supervising, coordinating and directing the daily operations of the clinic resources</p>\n\n    \n        <ul class="list-unstyled list-icons">\n         <li><i class="fa fa-check"></i>Graduate of any four year course</li>\n         <li><i class="fa fa-check"></i>Preferably with at least 2 years supervisory experience in different field</li>\n         <li><i class="fa fa-check"></i>Experience in the same industry is a plus but not required</li>\n         \n        </ul>\n\n       </div>\n    \n     <hr> &lt;!-- ---------- --&gt;\n    \n    <div class="heading-title heading-border-bottom heading-color margin-bottom-10">        \n        <h2 class="size-20">CASHIER</h2>\n       </div>\n\n       <div class="margin-bottom-0">\n        <p>The position is responsible for receiving and processing sales transactions</p>\n\n    \n        <ul class="list-unstyled list-icons">\n         <li><i class="fa fa-check"></i>Preferably with at least 1 year cashiering experience</li>\n         <li><i class="fa fa-check"></i>Graduate of any four year course is an advantage but not required</li>\n         <li><i class="fa fa-check"></i>At least 2nd year college level is also encourage to apply</li>\n         \n        </ul>\n\n       </div>\n    \n    <hr> &lt;!-- ---------- --&gt;\n    \n    <div class="heading-title heading-border-bottom heading-color margin-bottom-10">        \n        <h2 class="size-20">CLIENT CARE ASSOCIATE</h2>\n       </div>\n\n       <div class="margin-bottom-0">\n        <p>Responsible for performing front desk function such as attending to clients.</p>\n\n    \n        <ul class="list-unstyled list-icons">\n         <li><i class="fa fa-check"></i>Graduate of any four year course is an advantage but not required</li>\n         <li><i class="fa fa-check"></i>At least 2nd year college level is also encourage to apply</li>\n         <li><i class="fa fa-check"></i>Preferably with sales and marketing experience</li>\n   <li><i class="fa fa-check"></i>Pleasing personality is a plus</li>\n         \n        </ul>\n\n       </div>\n    \n    <hr> &lt;!-- ---------- --&gt;\n    \n    <div class="heading-title heading-border-bottom heading-color margin-bottom-10">        \n        <h2 class="size-20">MEDICAL LOGISTICS ASSISTANT</h2>\n       </div>\n\n       <div class="margin-bottom-0">\n        <p>Responsible for overall monitoring and controlling of the assets and resources of the clinic.</p>\n\n    \n        <ul class="list-unstyled list-icons">\n         <li><i class="fa fa-check"></i>Graduate of any four year course is an advantage but not required</li>\n         <li><i class="fa fa-check"></i>At least 2nd year college level is also encourage to apply</li>\n         <li><i class="fa fa-check"></i>Knowledge and experience in inventory is a plus</li>\n         \n        </ul>\n\n       </div>\n    \n    <hr> &lt;!-- ---------- --&gt;\n    \n    <div class="heading-title heading-border-bottom heading-color margin-bottom-10">        \n        <h2 class="size-20">CLIENT SERVICES AIDE</h2>\n       </div>\n\n       <div class="margin-bottom-0">\n        <p>Responsible in performing general utility support task and services during clinic operations</p>\n\n    \n        <ul class="list-unstyled list-icons">\n         <li><i class="fa fa-check"></i>Male</li>\n         <li><i class="fa fa-check"></i>At least college level</li>\n         <li><i class="fa fa-check"></i>Knowledge and experience to do minor carpentry, basic plumbing and electrical works is a plus but not required</li>\n   <li><i class="fa fa-check"></i>With pleasing personality</li>\n         \n        </ul>\n\n       </div>\n    \n    <hr> &lt;!-- ---------- --&gt;\n    \n    <div class="heading-title heading-border-bottom heading-color margin-bottom-10">        \n        <h2 class="size-20">BEAUTY ADVISOR</h2>\n       </div>\n\n       <div class="margin-bottom-0">\n        <p>Analyzes a client’s skin, offers skin care advice and sells beauty products and/or cosmetic to the client.</p>\n\n    \n        <ul class="list-unstyled list-icons">\n         <li><i class="fa fa-check"></i>Male</li>\n         <li><i class="fa fa-check"></i>Female</li>\n         <li><i class="fa fa-check"></i>At least college level of ANY course</li>\n         <li><i class="fa fa-check"></i>With pleasing personality</li>\n         <li><i class="fa fa-check"></i>Preferably with at least 1 year experience in sales and marketing </li>\n         <li><i class="fa fa-check"></i>Preferably with knowledge in beauty products especially particular skin care or cosmetics.</li>\n         \n        </ul>\n\n       </div>\n    \n     <hr> &lt;!-- ---------- --&gt;\n    \n    <div class="heading-title heading-border-bottom heading-color margin-bottom-10">        \n        <h2 class="size-20">CLINIC MEDICAL DOCTOR</h2>\n       </div>\n\n       <div class="margin-bottom-0">\n        <p>Recommends and performs medical treatments and prescribing Flawless products, services to efficiently address skin and body care needs.</p>\n\n    \n        <ul class="list-unstyled list-icons">\n         <li><i class="fa fa-check"></i>Licensed Male and Female Medical Doctor are encourage to apply</li>\n         <li><i class="fa fa-check"></i>Experience is a plus but not required </li>\n         <li><i class="fa fa-check"></i>Preferably with pleasing personality</li>\n         \n        </ul>\n\n       </div>\n    \n      <hr> &lt;!-- ---------- --&gt;\n    \n    <div class="heading-title heading-border-bottom heading-color margin-bottom-10">        \n    <p>Interested candidates may proceed to:\n        </p><h2 class="size-20">HUMAN RESOURCE DEPARTMENT</h2>\n       </div>\n\n       <div class="margin-bottom-0">\n        <p><strong>Head Office:</strong> 11f One Corporate Center, Dona Julia Vargas corner Meralco Avenue Ortigas Pasig City</p>\n\n    <br>\n\n        <p>Licensed Male and Female Medical Doctor are encourage to apply</p>\n        <p>5846807 local 119 / </p>\n        <p>09216014116 / 09474718088 / 09176729594</p>\n        <p>Look for Mikey / Neri </p>\n        <p>Open from Mondays to Fridays 9am to 4pm</p>\n         \n\n\n       </div>\n  \n   <p> For Visayas and Mindanao Jobseekers:</p>\n   <p>Please feel free to contact Zyra Baguio at 09289351891</p>\n  <br>\n   <p>Send resumes to: </p>\n   <p><a href="mailto:careers@flawless.ph">careers@flawless.ph</a></p>\n\n\n</div>', '945a82e5993b6ce960992cc62fce3819.png', '<br/>Flawless is in IMMEDIATE HIRING for the positions of', 'pages', 'index', 'careers', 'careers', 1, '', '', '', '', 1, 1, 1, 1, 0, 0, 0, 0, 'vii_flawless', 'inner.template.vr2.html', NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(203, 'Nano whiteness glutathione plus', 0, 0, 'IN STOCK<br>\nP3,500', '26c017da787ce748208f579d10e46a6c.jpg', '<ul><li>Detoxifies and helps lighten and rejuvenate skin for a radiant glow. <br></li><li>Visit our clinic today for a free consultation and find out a suitable skin care solution for you.&nbsp;<br></li></ul>', 'pages', 'index', 'nanowhitenessglutathioneplus', 'nanowhitenessglutathioneplus', 1, '', '', '', '', 1, 1, 1, 1, 0, 0, 0, 0, 'vii_flawless', 'product.inner.template.html', NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(104, 'Individual Products', 0, 0, '<p>2132</p>', '', 'Your all-in-one beauty solution to help make your daily routine easy and uncomplicated <br/>\nOur Beauty kits are specially formulated by our medical experts to ensure they encompass every step of your beauty journey', 'pages', 'index', 'individualproducts', 'individualproducts', 1, '', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 'vii_flawless', 'Individual.products.default_template.html', NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(181, 'Services', 2, 1, '<p><br></p>', '6e8ceee53fe55adae7adc24f38aa7a66.png', 'Flawless services that address a number of skin and body concerns with the use of advanced, dermatologically-sound and innovative medical aesthetic technologies.', 'pages', 'index', 'treatment', 'treatment', 1, '', '', '', '', 1, 0, 1, 1, 0, 0, 0, 0, 'vii_flawless', 'treatment.template.html', NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(248, 'Skinlift Collagen', 0, 1, 'In Stock<br>P2,250', 'ff2357025b6aa098ff4389ab9d37201e.jpg', '<ul><li>Natural anit-aging tablets that supply collagen production for skin regeneration and firmness. </li><li>Visit our clinic today for a free consultation and find out a suitable skin care solution for you.&nbsp;<br></li></ul><p></p>', 'pages', 'index', 'skinliftcollagen', 'skinliftcollagen', 1, '', '', '', '', 1, 1, 1, 1, 0, 0, 0, 0, 'vii_flawless', 'product.inner.template.html', NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(101, 'Flawless Bestsellers', 11, 0, '<p><br></p>', '', '<p><br></p>', 'pages', 'index', 'flawlessbestsellers', 'flawlessbestsellers', 1, '', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 'vii_flawless', 'inner.template.html', NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(251, 'newsletter', 0, 0, '<p><br></p>', '', '<p><br></p>', 'newsletter', 'index', 'newsletter', 'newsletter', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 'vii_flawless', 'main.template.html', NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(240, 'Skin Protect Cream', 0, 1, 'In Stock<br>P290', 'b1400e4c08ec01ebf055107b3e82a8dc.jpg', '<ul><li>Protects the skin against photdamage; delays wrinkling, sagging and uneven discoloration of skin. </li><li>Visit our clinic today for a free consultation and find out a suitable skin care solution for you.&nbsp;<br></li></ul><p></p>', 'pages', 'index', 'skinprotectcream', 'skinprotectcream', 1, '', '', '', '', 1, 1, 1, 1, 0, 0, 0, 0, 'vii_flawless', 'product.inner.template.html', NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(236, 'SAS Soap ', 0, 1, 'In Stock<br>P140', 'bf681a49227501fe2aa1e1ccce35d5a8.jpg', '<ul><li>A specially designed soap made to combat acne by targeting acne-causing bacteria and decreasing oiliness of acne-prone skin. </li><li>Visit our clinic today for a free consultation and find out a suitable skin care solution for you.&nbsp;<br></li></ul><p></p>', 'pages', 'index', 'sassoap', 'sassoap', 1, '', '', '', '', 1, 1, 1, 1, 0, 0, 0, 0, 'vii_flawless', 'product.inner.template.html', NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(245, 'Whitening Super Serum ', 0, 1, 'In Stock<br>P1,500', '20d742cd8a10916ef85a5610f3757473.jpg', '<ul><li>Lightens skin and pigmentations for a fairer and evenly toned complexion.</li><li>Visit our clinic today for a free consultation and find out a suitable skin care solution for you.&nbsp;<br></li></ul><p></p>', 'pages', 'index', 'whiteningsuperserum', 'whiteningsuperserum', 1, '', '', '', '', 1, 1, 1, 1, 0, 0, 0, 0, 'vii_flawless', 'product.inner.template.html', NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(252, 'Laser Hair Removal', 0, 0, 'Our Light Sheer Diode System, which is considered the gold standard in effective hair removal, uses the patented Chill Tip—a device that cools treated area, effectively lessening any discomfort and pain. Flawless is the only aesthetic clinic nationwide that provides lifetime packages for hair removal.', 'fe405e1fa2f6e1d0c4f2af0ec8067052.png', '<p>Our Light Sheer Diode System, which is considered the gold standard in effective hair removal, uses the patented Chill Tip—a device that cools treated area, effectively lessening any discomfort and pain. Flawless is the only aesthetic clinic nationwide that provides lifetime packages for hair removal.<br></p>', 'pages', 'index', 'laserhairremoval', 'laserhairremoval', 1, '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 'vii_flawless', 'product.inner.template.html', NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(253, 'Nano Power Peel', 0, 0, '<p>One of our most popular treatments because results are instantaneous.&nbsp;A \nspecial hand-held device covered in corundrum crystals propels a \nhigh-speed flow of aluminum oxide onto the skin. Simultaneously, the \nmachine’s vacuum sucks away dirt, dead skin cells and used crystals.&nbsp;<br></p>', 'c4bce4e0bdf8907749855051dbff2557.png', '<p>One of our most popular treatments because results are instantaneous.&nbsp;A special hand-held device covered in corundrum crystals propels a high-speed flow of aluminum oxide onto the skin. Simultaneously, the machine’s vacuum sucks away dirt, dead skin cells and used crystals.&nbsp;<br></p>', 'pages', 'index', 'nanopowerpeel', 'nanopowerpeel', 1, '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 'vii_flawless', 'product.inner.template.html', NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(237, 'Skin Protect Gel', 0, 1, 'In Stock<br>P290', 'afe95927a25c3dec0929d90433ebd92c.jpg', '<ul><li>A specially-formulated sun screen that protects the skin without leaving a greasy feel. </li><li>Visit our clinic today for a free consultation and find out a suitable skin care solution for you.&nbsp;<br></li></ul><p></p>', 'pages', 'index', 'skinprotectgel', 'skinprotectgel', 1, '', '', '', '', 1, 1, 1, 1, 0, 0, 0, 0, 'vii_flawless', 'product.inner.template.html', NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(238, 'Pimple Clear Astringent', 0, 1, 'In Stock<br>', '06b6d301864bf4900ff693abf92328f6.jpg', '<ul><li>Helps prevent the formation of pimples.</li><li>Visit our clinic today for a free consultation and find out a suitable skin care solution for you.&nbsp;<br></li></ul><p></p>', 'pages', 'index', 'pimpleclearastringent', 'pimpleclearastringent', 1, '', '', '', '', 1, 1, 1, 1, 0, 0, 0, 0, 'vii_flawless', 'product.inner.template.html', NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(239, 'Collagen Soap', 0, 1, 'In Stock<br>P140', '01da8a335a9e9f209e9d84300c7424cd.jpg', '<ul><li>A non-drying soap that effectively cleanses the skin without stripping off its natural protection; helps firm up the skin. </li><li>Visit our clinic today for a free consultation and find out a suitable skin care solution for you.&nbsp;<br></li></ul><p></p>', 'pages', 'index', 'collagensoap', 'collagensoap', 1, '', '', '', '', 1, 0, 1, 1, 0, 0, 0, 0, 'vii_flawless', 'product.inner.template.html', NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(229, 'Oatmeal Soap ', 0, 1, 'In Stock<br>P140', 'b2d0a9a2ca152338464fc05c61e1d399.jpg', '<ul><li>A gentle exfoliating soap meant to slough off dead skin cells to reveal a brighter, softer and more radiant complexion. </li><li>Visit our clinic today for a free consultation and find out a suitable skin care solution for you.&nbsp;<br></li></ul><p></p>', 'pages', 'index', 'oatmealsoap', 'oatmealsoap', 1, '', '', '', '', 1, 1, 1, 1, 0, 0, 0, 0, 'vii_flawless', 'product.inner.template.html', NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(232, 'Skin Renew Cream', 0, 1, 'In Stock<br>P330', 'd0773b4387ac20d6bf1c0c8546ea7ada.jpg', '<ul><li>A double-functioning cream that acts to exfoliate and unclog pores while providing balanced moisturization and clarity. </li><li>Visit our clinic today for a free consultation and find out a suitable skin care solution for you.&nbsp;<br></li></ul><p></p>', 'pages', 'index', 'skinrenewcream', 'skinrenewcream', 1, '', '', '', '', 1, 1, 1, 1, 0, 0, 0, 0, 'vii_flawless', 'product.inner.template.html', NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(228, 'Skin Lightening Lotion with Sunblock ', 0, 1, 'In Stock <br>\nP480', 'aa0ebaf3fbf8f75d64b0b7bbf81f5808.jpg', '<ul><li>Lightens skin by reducing the formation of melanin. Contains sunscreen for added protection from the sun. </li><li>Visit our clinic today for a free consultation and find out a suitable skin care solution for you.&nbsp;<br></li></ul><p></p>', 'pages', 'index', 'skinlighteninglotionwithsunblock', 'skinlighteninglotionwithsunblock', 1, '', '', '', '', 1, 1, 1, 1, 0, 0, 0, 0, 'vii_flawless', 'product.inner.template.html', NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(233, 'RG Soap ', 0, 1, 'In Stock<br>P140', 'e6f9140ab22e0fcdd7aeae6d490f34f0.jpg', '<ul><li>Specially formulated for men, this soap removes dead skin cells to reveal a more radiant and youthful complexion. </li><li>Visit our clinic today for a free consultation and find out a suitable skin care solution for you.&nbsp;<br></li></ul><p></p>', 'pages', 'index', 'rgsoap', 'rgsoap', 1, '', '', '', '', 1, 1, 1, 1, 0, 0, 0, 0, 'vii_flawless', 'product.inner.template.html', NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(242, 'AHA Soap', 0, 1, 'In Stock<br>P140', '04e66618305ab39be98f9fac170f9d2d.jpg', '<ul><li>Helps improve the softness and texture of the skin. </li><li>Visit our clinic today for a free consultation and find out a suitable skin care solution for you.&nbsp;<br></li></ul><p></p>', 'pages', 'index', 'ahasoap', 'ahasoap', 1, '', '', '', '', 1, 1, 1, 1, 0, 0, 0, 0, 'vii_flawless', 'product.inner.template.html', NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(243, 'Anti-Perspirant Whitening Deo', 0, 1, 'In Stock<br>P180', '7f1fa7f0aa48a4313f12dc0726ca031a.jpg', '<ul><li>Lightens dark underarms and helps protect against body odor all day. </li><li>Visit our clinic today for a free consultation and find out a suitable skin care solution for you.&nbsp;<br></li></ul><p></p>', 'pages', 'index', 'antiperspirantwhiteningdeo', 'antiperspirantwhiteningdeo', 1, '', '', '', '', 1, 1, 1, 1, 0, 0, 0, 0, 'vii_flawless', 'product.inner.template.html', NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(244, 'Flawless Skin Protect Mist', 0, 1, 'In Stock<br>P450', '37c88c4b409f26887de72e234671fa89.jpg', '<ul><li>Formulated with a high SPF of 70, the fuss-free and water-resistant Flawless Skin Protect Mist effectively shields skin from harmful UVA and UVB rays. </li><li>Visit our clinic today for a free consultation and find out a suitable skin care solution for you.&nbsp;<br></li></ul><p></p>', 'pages', 'index', 'flawlessskinprotectmist', 'flawlessskinprotectmist', 1, '', '', '', '', 1, 1, 1, 1, 0, 0, 0, 0, 'vii_flawless', 'product.inner.template.html', NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(246, 'Age Defy Super Serum', 0, 1, 'In Stock<br>P1,500', 'a7ba8497ad5aa679c6760a584f532893.jpg', '<ul><li>Advanced youth-boosting serum that helps restore your skin’s youthful radiance. </li><li>Visit our clinic today for a free consultation and find out a suitable skin care solution for you.&nbsp;<br></li></ul><p></p>', 'pages', 'index', 'agedefysuperserum', 'agedefysuperserum', 1, '', '', '', '', 1, 1, 1, 1, 0, 0, 0, 0, 'vii_flawless', 'product.inner.template.html', NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(247, 'Nano Whiteness Glutathione Plus ', 0, 1, 'In Stock<br>P3,500', '8a8f27f530f429feb5b5eb26cf1982d5.jpg', '<ul><li>Detoxifies and helps lighten and rejuvenate skin for a radiant glow.. </li><li>Visit our clinic today for a free consultation and find out a suitable skin care solution for you.&nbsp;<br></li></ul><p></p>', 'pages', 'index', 'nanowhitenessglutathioneplus', 'nanowhitenessglutathioneplus', 1, '', '', '', '', 1, 1, 1, 1, 0, 0, 0, 0, 'vii_flawless', 'product.inner.template.html', NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(230, 'Tea Tree Soap', 0, 1, 'In Stock<br>P140', '1f2780c51cf0dbb39036d1f3cd80cec9.jpg', '<ul><li>Kills bacteria and cleanses skin of impurities. </li><li>Visit our clinic today for a free consultation and find out a suitable skin care solution for you.&nbsp;<br></li></ul><p></p>', 'pages', 'index', 'teatreesoap', 'teatreesoap', 1, '', '', '', '', 1, 1, 1, 1, 0, 0, 0, 0, 'vii_flawless', 'product.inner.template.html', NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(234, 'RG Day & Night Cream', 0, 1, 'In Stock<br>P280', '32524e92b2ac088bda1d550ae1d03562.jpg', '<ul><li>A fast-absorbing moisturizer that works to provide balance moisturization and protect skin from harmful UV rays. </li><li>Visit our clinic today for a free consultation and find out a suitable skin care solution for you.&nbsp;<br></li></ul><p></p>', 'pages', 'index', 'rgdaynightcream', 'rgdaynightcream', 1, '', '', '', '', 1, 1, 1, 1, 0, 0, 0, 0, 'vii_flawless', 'product.inner.template.html', NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(231, 'Pore Refiner', 0, 1, 'In Stock<br>P290', 'a04debf50c3f42078011354dc2ab45c4.jpg', '<ul><li><span style="font-size: 11pt; font-family: Arial, sans-serif; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">This toner was specially formulated to minimize pores as well as tone\nthe skin</span>. </li><li>Visit our clinic today for a free consultation and find out a suitable skin care solution for you.&nbsp;<br></li></ul><p></p>', 'pages', 'index', 'porerefiner', 'porerefiner', 1, '', '', '', '', 1, 1, 1, 1, 0, 0, 0, 0, 'vii_flawless', 'product.inner.template.html', NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(235, 'RG Toner ', 0, 1, 'In Stock<br>P280', 'd5c5e331fc894b63ce89d2bc69ec4883.jpg', '<ul><li>Especially formulated to provide men with deep-cleansing action as well as restore the skin’s natural pH balance and inhibit acne formation. </li><li>Visit our clinic today for a free consultation and find out a suitable skin care solution for you.&nbsp;<br></li></ul><p></p>', 'pages', 'index', 'rgtoner', 'rgtoner', 1, '', '', '', '', 1, 1, 1, 1, 0, 0, 0, 0, 'vii_flawless', 'product.inner.template.html', NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(241, 'Age Defy Toner ', 0, 1, 'In Stock<br>P290', '', '<ul><li>A must-have for those aiming for a younger-looking skin, the Age Defy Toner lightly exfoliates and minimizes the pores, improves skin clarity and smoothens the skin. </li><li>Visit our clinic today for a free consultation and find out a suitable skin care solution for you.&nbsp;<br></li></ul><p></p>', 'pages', 'index', 'agedefytoner', 'agedefytoner', 1, '', '', '', '', 1, 1, 1, 1, 0, 0, 0, 0, 'vii_flawless', 'product.inner.template.html', NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(166, 'Expertise you can trust', 0, 0, '<p><br></p>', '928b5f85dc190b9832cac93c377090a0.png', 'All our aestheticians and medical doctors undergo an official proven training programme before they are certified to practise in all clinics.', 'pages', 'index', 'expertiseyoucantrust', 'expertiseyoucantrust', 1, '', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 'vii_flawless', 'inner.template.html', NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(167, 'Certifed & tested', 0, 0, '<p><br></p>', '8c6f82adcac93fc9999a05854afdfcce.png', 'All our products we carry and use for treatments have passed strict requirements and are clinically certified by the FDA authority.', 'pages', 'index', 'certifedtested', 'certifedtested', 1, '', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 'vii_flawless', 'inner.template.html', NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(168, 'footer links', 0, 0, '     <div class="col-md-2 col-xs-2">\n\n      <h4 class="letter-spacing-1"><a href="/flawless/about">About Us</a></h4>\n\n      <ul class="footer-links list-unstyled">\n         \n                \n      <li><a href="/flawless/corporateinformation">CORPORATE INFO</a></li>\n\n      <li><a href="/flawless/about">BRAND STORY</a></li>\n\n      <li><a href="/flawless/contactus">CLINIC LOCATIONS </a></li>\n\n      <li><a href="/flawless/careers">CAREERS </a></li>    \n\n      </ul>\n\n     </div>\n\n     <div class="col-md-2 col-xs-2">\n      <h4 class="letter-spacing-1"><a href="/flawless/flawlessmedia">Media matters</a></h4>\n      <ul class="footer-links list-unstyled">\n                      \n      <li><a href="/flawless/flawlessmedia/category/2/press_kits">PRESS KITS</a></li>\n                                       \n      <li><a href="/flawless/flawlessmedia">LATEST NEWS</a></li>  \n\n      </ul>     \n\n     </div>\n     \n     <div class="col-md-3 col-xs-3">\n\n      <h4 class="letter-spacing-1"><a href="/flawless/bookanappointment">Connect with us</a></h4>\n      <ul class="footer-links list-unstyled">\n       <li><a href="/flawless/testimonials">Testimonials</a></li>                                                 \n      <li><a href="/flawless/faqs">TERMS &amp; CONDITIONS</a></li>\n      \n \n                                                \n      </ul>\n\n     </div>', '', '<p><br></p>', 'pages', 'index', 'footerlinks', 'footerlinks', 1, '', '', '', '', 1, 1, 0, 0, 0, 0, 0, 0, 'vii_flawless', 'inner.template.html', NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(170, 'Find a clinic', 4, 0, '<div style="text-align: center;"><img src="../../upload/images/cms/UZkpKOjpI5YDE.png" style="width: 884px;" class="img-responsive"><br></div>', 'f1b50b7136f933a78a0d9199c0313cf2.jpg', '<span style="background-color: inherit;"><span style="color: rgb(255, 0, 255);">Caption Caption Caption Caption (cms)</span></span><br>', 'contactus', 'index', 'contactus', 'contactus', 1, '', '', '', '', 0, 1, 0, 0, 0, 0, 0, 0, 'vii_flawless', 'inner.template.html', NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(171, 'Book an Appointment', 2, 0, '<p>sadsad<br></p>', '', '<p>HOTLINE: (632) 584 6807</p>', 'appointment', 'index', 'bookanappointment', 'bookanappointment', 0, '', '', '', '', 1, 0, 1, 0, 0, 0, 0, 0, 'vii_flawless', 'book_an_appointment.template.html', NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(172, 'Ultra Treatments', 0, 0, '<p>\n <span   tahoma,geneva,sans-serif;">Ultra Treatments use the el&otilde;s technology, the first and only aesthetic technique that combines the power of Bi-Polar Radio Frequency (RF) with optical light. This revolutionary procedure effectively overcomes the procedural limitations of intense pulse light (IPL).</span></span></p>\n', '', '<p>\n <span   tahoma,geneva,sans-serif;">Ultra Treatments use the el&otilde;s technology, the first and only aesthetic technique that combines the power of Bi-Polar Radio Frequency (RF) with optical light. This revolutionary procedure effectively overcomes the procedural limitations of intense pulse light (IPL).</span></span></p>\n', 'pages', 'index', 'ultratreatments', 'ultratreatments', 1, '', '', '', '', 0, 1, 0, 0, 0, 0, 0, 0, 'vii_flawless', 'book_an_appointment.template.html', NULL, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `vii_page` (`id_page`, `title`, `sort_order`, `show_children`, `content`, `image_src`, `caption`, `class`, `function`, `link_rewrite`, `absolute_link`, `redirect`, `meta_title`, `meta_keywords`, `meta_description`, `meta_image`, `title_active`, `content_active`, `caption_active`, `image_src_active`, `meta_title_active`, `meta_keywords_active`, `meta_description_active`, `meta_image_active`, `custom_theme`, `custom_layout`, `layout`, `sections`, `isAdmin`, `date_add`, `date_upd`, `chat`) VALUES
(189, 'Medical', 0, 0, '  <div class="table-responsive">\n  <table class="table table-vertical-middle margin-bottom-10">\n        <thead>\n         <tr class="size-15">\n          <th class="size-25">Fractional Needling Therapy</th>\n          <th class=" width-100"></th>\n          <th class=" width-100"></th>\n          <th class=" size-20 width-200 text-center">Price</th>\n         </tr>\n        </thead>\n        <tbody>\n         \n         <tr>\n          <td>\n           <h4 class="nomargin size-16">\n            Fractional Needling Therapy: Retinol for Acne \n\n            <ul class="list-inline categories nomargin text-muted size-14">\n             <li>This innovative micro needling procedure helps provide a smoother, clearer and suppler skin. Retinol uses Vitamin A Serum to fight acne and reduce oiliness. It also promotes collagen production and cellular renewal.</li>\n             \n             \n            </ul>\n\n           </h4>\n          </td>\n          <td></td>\n          <td></td>\n          <td class="text-center">\n           <span class="size-14"><strong>P4,500</strong></span>\n          </td>\n         </tr>\n         \n         &lt;!-- ---------------- --&gt;\n         \n         <tr>\n          <td>\n           <h4 class="nomargin size-16">\n            Fractional Needling Therapy: Clearing for Oily Skin \n\n            <ul class="list-inline categories nomargin text-muted size-14">\n             <li>This innovative micro needling procedure helps provide a smoother, clearer and suppler skin. Clearing helps control oil production and gently removes impurities. It also moisturizes the skin with the help of natural active ingredients, like yeast and Vitamin B.</li>\n             \n             \n            </ul>\n\n           </h4>\n          </td>\n          <td></td>\n          <td></td>\n          <td class="text-center">\n           <span class="size-14"><strong>P4,500</strong></span>\n          </td>\n         </tr>\n         \n         &lt;!-- ---------------- --&gt;\n         \n         <tr>\n          <td>\n           <h4 class="nomargin size-16">\n            Fractional Needling Therapy: Age Defy\n\n            <ul class="list-inline categories nomargin text-muted size-14">\n             <li>This innovative micro needling procedure helps provide a smoother, clearer and suppler skin. Age Defy FNT promotes collagen production and delivers powerful age-defying serums, such as Human Growth Factors, Lifitng, Super Defense and Moisture Defense to the deepest layers of the skin.</li>\n             \n             \n            </ul>\n\n           </h4>\n          </td>\n          <td></td>\n          <td></td>\n          <td class=" text-center">\n           <span class="size-14"><strong>P4,500</strong></span>\n          </td>\n         </tr>\n  \n\n        </tbody>\n        \n  </table>\n  </div>\n  <div class="divider double-line margin-top-10 margin-bottom-10">&lt;!-- divider --&gt;</div>\n  \n&lt;!-- ======================================= --&gt;  \n\n  <div class="table-responsive">\n  <table class="table table-vertical-middle margin-bottom-10">\n        <thead>\n         <tr class="size-15">\n          <th class="size-25">Skin Fusion</th>\n          <th class=" width-100"></th>\n          <th class=" width-100"></th>\n          <th class=" size-20 width-200 text-center">Price</th>\n         </tr>\n        </thead>\n        <tbody>\n         \n         <tr>\n          <td>\n           <h4 class="nomargin size-16">\n            Skinfusion Expert Clearing Face  \n\n            <ul class="list-inline categories nomargin text-muted size-14">\n             <li>An effective and non-invasive way of delivering medications that fight acne-causing bacteria to the deeper layers of the skin. It also helps reduce the appearance of large pores.</li>\n             \n             \n            </ul>\n\n           </h4>\n          </td>\n          <td></td>\n          <td></td>\n          <td class="text-center">\n           <span class="size-14"><strong>P2,000</strong></span>\n          </td>\n         </tr>\n         \n         &lt;!-- ---------------- --&gt;\n         \n         <tr>\n          <td>\n           <h4 class="nomargin size-16">\n            Skinfusion Expert Lifting Face \n\n            <ul class="list-inline categories nomargin text-muted size-14">\n             <li>Effectively rejuvenates the skin and gives it a finer texture by infusing anti-aging and nourishing solutions to the deeper layers of the epidermis.</li>\n             \n             \n            </ul>\n\n           </h4>\n          </td>\n          <td></td>\n          <td></td>\n          <td class="text-center">\n           <span class="size-14"><strong>P2,000</strong></span>\n          </td>\n         </tr>\n         \n         &lt;!-- ---------------- --&gt;\n         \n         <tr>\n          <td>\n           <h4 class="nomargin size-16">\n            Skinfusion Expert Pigmentation Body  \n\n            <ul class="list-inline categories nomargin text-muted size-14">\n             <li>Uses powerful serums to help lighten the skin, correct hyperpigmentations and give a finer skin texture.</li>\n             \n             \n            </ul>\n\n           </h4>\n          </td>\n          <td></td>\n          <td></td>\n          <td class="text-center">\n           <span class="size-14"><strong>P2,000</strong></span>\n          </td>\n         </tr>\n  \n         &lt;!-- ---------------- --&gt;\n         \n         <tr>\n          <td>\n           <h4 class="nomargin size-16">\n            Skinfusion Expert Pigmentation Face   \n\n            <ul class="list-inline categories nomargin text-muted size-14">\n             <li>Uses powerful serums to help lighten the skin, correct hyperpigmentations and give a finer skin texture.</li>\n             \n             \n            </ul>\n\n           </h4>\n          </td>\n          <td></td>\n          <td></td>\n          <td class="text-center">\n           <span class="size-14"><strong>P2,000</strong></span>\n          </td>\n         </tr>\n         \n         \n        </tbody>\n        \n  </table>\n  </div>\n  <div class="divider double-line margin-top-10 margin-bottom-10">&lt;!-- divider --&gt;</div>', '9618a311129ea69d0d2ebda148b1b8d7.png', '<span style="font-size: 14px; line-height: 21px; text-align: right;">Caption</span>', 'pages', 'index', 'medical', 'medical', 1, '', '', '', '', 0, 1, 0, 1, 0, 0, 0, 0, 'vii_flawless', 'inner.template.html', NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(193, 'Microdermabrasion', 0, 0, '  <div class="table-responsive">\n  <table class="table table-vertical-middle margin-bottom-10">\n        <thead>\n         <tr class="size-15">\n          <th class="size-25">Microdermabrasion</th>\n          <th class=" width-100"></th>\n          <th class=" width-100"></th>\n          <th class=" size-20 width-200 text-center">Price</th>\n         </tr>\n        </thead>\n        <tbody>\n         \n         <tr>\n          <td>\n           <h4 class="nomargin size-16">\n            Platinum Peel with Classic Facial\n\n            <ul class="list-inline categories nomargin text-muted size-14">\n             <li>Flawless Platinum Peel uses a sterilized diamond-tip wand of varying sizes and texture specific to different skin types and required depth of resurfacing. This microdermabrasion service is effective in oil control, skin whitening, and anti-aging.</li>\n             \n             \n            </ul>\n\n           </h4>\n          </td>\n          <td></td>\n          <td></td>\n          <td class="text-center">\n           <span class="size-14"><strong>P850</strong></span>\n          </td>\n         </tr>\n         \n         &lt;!-- ---------------- --&gt;\n         \n         <tr>\n          <td>\n           <h4 class="nomargin size-16">\n            Platinum Peel with Oil Control Regular Mask \n\n            <ul class="list-inline categories nomargin text-muted size-14">\n             <li>Flawless Platinum Peel uses a sterilized diamond-tip wand of varying sizes and texture specific to different skin types and required depth of resurfacing. This microdermabrasion service is effective in oil control, skin whitening, and anti-aging.</li>\n             \n             \n            </ul>\n\n           </h4>\n          </td>\n          <td></td>\n          <td></td>\n          <td class="text-center">\n           <span class="size-14"><strong>P990</strong></span>\n          </td>\n         </tr>\n         \n         &lt;!-- ---------------- --&gt;\n         \n         <tr>\n          <td>\n           <h4 class="nomargin size-16">\n            Platinum Peel with Oil Control Advanced \n\n            <ul class="list-inline categories nomargin text-muted size-14">\n             <li>Flawless Platinum Peel uses a sterilized diamond-tip wand of varying sizes and texture specific to different skin types and required depth of resurfacing. This microdermabrasion service is effective in oil control, skin whitening, and anti-aging.</li>\n             \n             \n            </ul>\n\n           </h4>\n          </td>\n          <td></td>\n          <td></td>\n          <td class="text-center">\n           <span class="size-14"><strong>P1,350</strong></span>\n          </td>\n         </tr>\n         \n         &lt;!-- ---------------- --&gt;\n         \n         <tr>\n          <td>\n           <h4 class="nomargin size-16">\n            Platinum Peel with Acne Control Regular Mask \n\n            <ul class="list-inline categories nomargin text-muted size-14">\n             <li>Flawless Platinum Peel uses a sterilized diamond-tip wand of varying sizes and texture specific to different skin types and required depth of resurfacing. This microdermabrasion service is effective in oil control, skin whitening, and anti-aging.</li>\n             \n             \n            </ul>\n\n           </h4>\n          </td>\n          <td></td>\n          <td></td>\n          <td class="text-center">\n           <span class="size-14"><strong>P990</strong></span>\n          </td>\n         </tr>\n         \n         &lt;!-- ---------------- --&gt;\n         \n         <tr>\n          <td>\n           <h4 class="nomargin size-16">\n            Platinum Peel with Acne Control Advanced Mask \n\n            <ul class="list-inline categories nomargin text-muted size-14">\n             <li>Flawless Platinum Peel uses a sterilized diamond-tip wand of varying sizes and texture specific to different skin types and required depth of resurfacing. This microdermabrasion service is effective in oil control, skin whitening, and anti-aging.</li>\n             \n             \n            </ul>\n\n           </h4>\n          </td>\n          <td></td>\n          <td></td>\n          <td class="text-center">\n           <span class="size-14"><strong>P1,350</strong></span>\n          </td>\n         </tr>\n         \n         &lt;!-- ---------------- --&gt;\n         \n         <tr>\n          <td>\n           <h4 class="nomargin size-16">\n            Platinum Peel with Flawless White Regular Mask\n\n            <ul class="list-inline categories nomargin text-muted size-14">\n             <li>Flawless Platinum Peel uses a sterilized diamond-tip wand of varying sizes and texture specific to different skin types and required depth of resurfacing. This microdermabrasion service is effective in oil control, skin whitening, and anti-aging.</li>\n             \n             \n            </ul>\n\n           </h4>\n          </td>\n          <td></td>\n          <td></td>\n          <td class="text-center">\n           <span class="size-14"><strong>P1,000</strong></span>\n          </td>\n         </tr>\n         \n         &lt;!-- ---------------- --&gt;\n         \n         <tr>\n          <td>\n           <h4 class="nomargin size-16">\n            Platinum Peel with Flawless White Advanced Mask \n\n            <ul class="list-inline categories nomargin text-muted size-14">\n             <li>Flawless Platinum Peel uses a sterilized diamond-tip wand of varying sizes and texture specific to different skin types and required depth of resurfacing. This microdermabrasion service is effective in oil control, skin whitening, and anti-aging.</li>\n             \n             \n            </ul>\n\n           </h4>\n          </td>\n          <td></td>\n          <td></td>\n          <td class="text-center">\n           <span class="size-14"><strong>P1,350</strong></span>\n          </td>\n         </tr>\n         \n         &lt;!-- ---------------- --&gt;\n         \n         <tr>\n          <td>\n           <h4 class="nomargin size-16">\n            Platinum Peel with Age Defy Regular Mask\n\n            <ul class="list-inline categories nomargin text-muted size-14">\n             <li>Flawless Platinum Peel uses a sterilized diamond-tip wand of varying sizes and texture specific to different skin types and required depth of resurfacing. This microdermabrasion service is effective in oil control, skin whitening, and anti-aging.</li>\n             \n             \n            </ul>\n\n           </h4>\n          </td>\n          <td></td>\n          <td></td>\n          <td class="text-center">\n           <span class="size-14"><strong>P990</strong></span>\n          </td>\n         </tr>\n         \n         &lt;!-- ---------------- --&gt;\n         \n         <tr>\n          <td>\n           <h4 class="nomargin size-16">\n            Platinum Peel with Age Defy Advanced Mask \n\n            <ul class="list-inline categories nomargin text-muted size-14">\n             <li>Flawless Platinum Peel uses a sterilized diamond-tip wand of varying sizes and texture specific to different skin types and required depth of resurfacing. This microdermabrasion service is effective in oil control, skin whitening, and anti-aging.</li>\n             \n             \n            </ul>\n\n           </h4>\n          </td>\n          <td></td>\n          <td></td>\n          <td class="text-center">\n           <span class="size-14"><strong>P1,350</strong></span>\n          </td>\n         </tr>\n         \n         &lt;!-- ---------------- --&gt;\n         \n         <tr>\n          <td>\n           <h4 class="nomargin size-16">\n            Platinum Peel with Real Gentleman Regular Mask\n\n            <ul class="list-inline categories nomargin text-muted size-14">\n             <li>Flawless Platinum Peel uses a sterilized diamond-tip wand of varying sizes and texture specific to different skin types and required depth of resurfacing. This microdermabrasion service is effective in oil control, skin whitening, and anti-aging.</li>\n             \n             \n            </ul>\n\n           </h4>\n          </td>\n          <td></td>\n          <td></td>\n          <td class="text-center">\n           <span class="size-14"><strong>P990</strong></span>\n          </td>\n         </tr>\n         \n         &lt;!-- ---------------- --&gt;\n         \n         <tr>\n          <td>\n           <h4 class="nomargin size-16">\n            Platinum Peel with Real Gentleman Advanced Mask \n\n            <ul class="list-inline categories nomargin text-muted size-14">\n             <li>Flawless Platinum Peel uses a sterilized diamond-tip wand of varying sizes and texture specific to different skin types and required depth of resurfacing. This microdermabrasion service is effective in oil control, skin whitening, and anti-aging.</li>\n             \n             \n            </ul>\n\n           </h4>\n          </td>\n          <td></td>\n          <td></td>\n          <td class="text-center">\n           <span class="size-14"><strong>P1,350</strong></span>\n          </td>\n         </tr>\n         \n         &lt;!-- ---------------- --&gt;\n\n  \n\n        </tbody>\n        \n  </table>\n  </div>\n\n  \n  <div class="table-responsive">\n  <table class="table table-vertical-middle margin-bottom-10">\n\n        <tbody>\n        </tbody><thead>\n         <tr class="size-15">\n          <th class="size-25"></th>\n          <th class=" width-100"></th>\n          <th class=" width-100"></th>\n          <th class=" size-20 width-200 text-center"></th>\n         </tr>\n        </thead>\n         <tbody><tr>\n          <td>\n           <h4 class="nomargin size-16">\n            Nano Powerpeel\n\n            <ul class="list-inline categories nomargin text-muted size-14">\n             <li>Nano Powerpeel uses a special hand-held device covered in corundum crystals that propel a high-speed flow of aluminum oxide onto the skin. Simultaneously, the machine’s vacuum sucks away dirt, dead skin cells and other skin blemishes, leaving the skin radiantly glowing.</li>\n             \n             \n            </ul>\n\n           </h4>\n          </td>\n          <td></td>\n          <td></td>\n          <td class="text-center">\n           <span class="size-14"><strong>P2,000</strong></span>\n          </td>\n         </tr>\n         \n         &lt;!-- ---------------- --&gt;\n         \n         <tr>\n          <td>\n           <h4 class="nomargin size-16">\n            Power Facial\n\n            <ul class="list-inline categories nomargin text-muted size-14">\n             <li>An innovative facial treatment that effectively rejuvenates the skin and dramatically improves damages caused by the sun. It combines abrasion and suction techniques while incorporating nutrient-rich and hydrating serums to exfoliate the outer layer of the skin, reduce fine lines, wrinkles and scarring, and help to correct appearance of dark spots and acne marks.</li>\n             \n             \n            </ul>\n\n           </h4>\n          </td>\n          <td></td>\n          <td></td>\n          <td class="text-center">\n           <span class="size-14"><strong>P4,000</strong></span>\n          </td>\n         </tr>\n         \n         &lt;!-- ---------------- --&gt;\n         \n\n  \n\n        </tbody>\n        \n  </table>\n  </div>\n  <div class="divider double-line margin-top-10 margin-bottom-10">&lt;!-- divider --&gt;</div>\n  \n    ', 'aee4143aaaf4ef8c8e5890446f4c1878.png', '<p><br></p>', 'pages', 'index', 'microdermabrasion', 'microdermabrasion', 1, '', '', '', '', 0, 1, 0, 1, 0, 0, 0, 0, 'vii_flawless', 'inner.template.html', NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(190, 'Hair Removal', 0, 0, '<p><br></p>', '8e5a7b784f36d98586fa162f5b9f1427.png', '<p><br></p>', 'pages', 'index', 'hairremoval', 'hairremoval', 1, '', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 'vii_flawless', 'inner.template.html', NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(191, 'Body', 0, 0, '<p><br></p>', '20ec10547aa87b41ba24a1f19bea03a5.png', '<p><br></p>', 'pages', 'index', 'body', 'body', 1, '', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 'vii_flawless', 'inner.template.html', NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(192, 'Peels', 0, 0, '<p><br></p>', 'e7753de3f0a9c44d4dd2b4c23da39556.png', '<p><br></p>', 'pages', 'index', 'peels', 'peels', 1, '', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 'vii_flawless', 'inner.template.html', NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(194, 'Facials', 0, 0, '  <div class="table-responsive">\n  \n         \n         &lt;!-- ---------------- --&gt;\n         \n         \n         \n         &lt;!-- ---------------- --&gt;\n         \n         \n         \n         &lt;!-- ---------------- --&gt;\n         \n         \n         \n         \n         &lt;!-- ---------------- --&gt;\n         \n         \n         \n         \n         &lt;!-- ---------------- --&gt;\n         \n         \n         \n         \n         &lt;!-- ---------------- --&gt;\n         \n         \n         <table class="table table-vertical-middle margin-bottom-10">\n        <thead>\n         <tr class="size-15">\n          <th class="size-25">Advanced Facials</th>\n          <th class=" width-100"></th>\n          <th class=" width-100"></th>\n          <th class=" size-20 width-200 text-center">Price</th>\n         </tr>\n        </thead>\n        <tbody>\n         \n         <tr>\n          <td>\n           <h4 class="nomargin size-16">\n            All Natural Ultimate Whitening Facial\n\n            <ul class="list-inline categories nomargin text-muted size-14">\n             <li>Immediately lightens, smoothens and rejuvenates the skin with the use of combined natural ingredients from the Dead Sea, including Dunaliella Seaweeds, and Gigawhite, a natural skin-lightening agent.</li>\n             \n             \n            </ul>\n\n           </h4>\n          </td>\n          <td></td>\n          <td></td>\n          <td class="text-center">\n           <span class="size-14"><strong>P1,600</strong></span>\n          </td>\n         </tr><tr>\n          <td>\n           <h4 class="nomargin size-16">\n            Cell Booster Infusion Mask\n\n            <ul class="list-inline categories nomargin text-muted size-14">\n             <li>Deeply nourishes and cools the skin using a hydrogel mask infused with potent cultured Apple growth factors.</li>\n             \n             \n            </ul>\n\n           </h4>\n          </td>\n          <td></td>\n          <td></td>\n          <td class="text-center">\n           <span class="size-14"><strong>P1,400</strong></span>\n          </td>\n         </tr><tr>\n          <td>\n           <h4 class="nomargin size-16">\n            Acne Control Advanced Facial \n\n            <ul class="list-inline categories nomargin text-muted size-14">\n             <li>Targets acne-causing bacteria while delivering healing and soothing benefits to the skin using a cooling green oxygenating mask.</li>\n             \n             \n            </ul>\n\n           </h4>\n          </td>\n          <td></td>\n          <td></td>\n          <td class="text-center">\n           <span class="size-14"><strong>P980</strong></span>\n          </td>\n         </tr><tr>\n          <td>\n           <h4 class="nomargin size-16">\n            Oil Control Advanced Facial \n\n            <ul class="list-inline categories nomargin text-muted size-14">\n             <li>Visibly reduces and unclogs pores, and helps control oil production using a powerful cooling mask while promoting its natural healing process.</li>\n             \n             \n            </ul>\n\n           </h4>\n          </td>\n          <td></td>\n          <td></td>\n          <td class="text-center">\n           <span class="size-14"><strong>P980</strong></span>\n          </td>\n         </tr><tr>\n          <td>\n           <h4 class="nomargin size-16">\n            Age Defy Advanced Facial  \n\n            <ul class="list-inline categories nomargin text-muted size-14">\n             <li>Effectively restores skin’s radiance and elasticity with the use of Seaweed and Vitamin C extracts.</li>\n             \n             \n            </ul>\n\n           </h4>\n          </td>\n          <td></td>\n          <td></td>\n          <td class="text-center">\n           <span class="size-14"><strong>P980</strong></span>\n          </td>\n         </tr><tr>\n          <td>\n           <h4 class="nomargin size-16">\n            Flawless White Advanced Facial \n\n            <ul class="list-inline categories nomargin text-muted size-14">\n             <li>Beautifully lightens and moisturizes face using White Nest extract and moisturizing milk lotion, leaving the face evenly-toned, supple and fair.</li>\n             \n             \n            </ul>\n\n           </h4>\n          </td>\n          <td></td>\n          <td></td>\n          <td class="text-center">\n           <span class="size-14"><strong>P980</strong></span>\n          </td>\n         </tr><tr>\n          <td>\n           <h4 class="nomargin size-16">\n            Real Gentleman Advanced Facial \n\n            <ul class="list-inline categories nomargin text-muted size-14">\n             <li>Efficiently restores skin’s natural balance, minimizes pores, reduces oil production and tones up face using a mask made of active vegetal charcoal.</li>\n             \n             \n            </ul>\n\n           </h4>\n          </td>\n          <td></td>\n          <td></td>\n          <td class="text-center">\n           <span class="size-14"><strong>P980</strong></span>\n          </td>\n         </tr>\n\n  \n\n        </tbody>\n        \n  </table>\n  </div>\n  <div class="divider double-line margin-top-10 margin-bottom-10">&lt;!-- divider --&gt;</div>\n  \n \n  <div class="table-responsive">\n  \n         \n         &lt;!-- ---------------- --&gt;\n         \n         \n         \n         &lt;!-- ---------------- --&gt;\n         \n         \n         \n         &lt;!-- ---------------- --&gt;\n         \n         \n         \n         \n         &lt;!-- ---------------- --&gt;\n         \n         \n         \n         \n         &lt;!-- ---------------- --&gt;\n         \n         \n         \n         \n         &lt;!-- ---------------- --&gt;\n         \n         \n      \n        <table class="table table-vertical-middle margin-bottom-10">\n        <thead>\n         <tr class="size-15">\n          <th class="size-25">Regular Facials</th>\n          <th class=" width-100"></th>\n          <th class=" width-100"></th>\n          <th class=" size-20 width-200 text-center">Price</th>\n         </tr>\n        </thead>\n        <tbody>\n         \n         <tr>\n          <td>\n           <h4 class="nomargin size-16">\n            Classic Facial\n\n            <ul class="list-inline categories nomargin text-muted size-14">\n             <li>Ideal for all skin types. Clears and refines skin by relaxing facial nerves and removing facial impurities. </li>\n             \n             \n            </ul>\n\n           </h4>\n          </td>\n          <td></td>\n          <td></td>\n          <td class="text-center">\n           <span class="size-14"><strong>P399</strong></span>\n          </td>\n         </tr><tr>\n          <td>\n           <h4 class="nomargin size-16">\n            Acne Control Facial\n\n            <ul class="list-inline categories nomargin text-muted size-14">\n             <li>Diminishes acne-causing bacteria using an antiseptic mask that also contains healing properties.</li>\n             \n             \n            </ul>\n\n           </h4>\n          </td>\n          <td></td>\n          <td></td>\n          <td class="text-center">\n           <span class="size-14"><strong>P625</strong></span>\n          </td>\n         </tr><tr>\n          <td>\n           <h4 class="nomargin size-16">\n            Oil Control Facial \n\n            <ul class="list-inline categories nomargin text-muted size-14">\n             <li>Unclogs pores and helps reduce oil production using a seaweed mask.</li>\n             \n             \n            </ul>\n\n           </h4>\n          </td>\n          <td></td>\n          <td></td>\n          <td class="text-center">\n           <span class="size-14"><strong>P625</strong></span>\n          </td>\n         </tr><tr>\n          <td>\n           <h4 class="nomargin size-16">\n            Age Defy Facial\n\n            <ul class="list-inline categories nomargin text-muted size-14">\n             <li>Lifts skin and boosts its natural moisture using a collagen mask.</li>\n             \n             \n            </ul>\n\n           </h4>\n          </td>\n          <td></td>\n          <td></td>\n          <td class="text-center">\n           <span class="size-14"><strong>P625</strong></span>\n          </td>\n         </tr><tr>\n          <td>\n           <h4 class="nomargin size-16">\n            Flawless White Facial \n            \n            <ul class="list-inline categories nomargin text-muted size-14">\n             <li>Brings out a radiant face using a skin-lightening mask that contains a plant-based whitening agent called Melfade.</li>\n             \n             \n            </ul>\n\n           </h4>\n          </td>\n          <td></td>\n          <td></td>\n          <td class="text-center">\n           <span class="size-14"><strong>P625</strong></span>\n          </td>\n         </tr><tr>\n          <td>\n           <h4 class="nomargin size-16">\n            Real Gentleman Facial\n\n            <ul class="list-inline categories nomargin text-muted size-14">\n             <li>Specially formulated for men, this restores skin’s natural balance and firms it with the use of an algae mask.</li>\n             \n             \n            </ul>\n\n           </h4>\n          </td>\n          <td></td>\n          <td></td>\n          <td class="text-center">\n           <span class="size-14"><strong>P625</strong></span>\n          </td>\n         </tr></tbody>\n        \n  </table>\n  </div>\n  <div class="divider double-line margin-top-10 margin-bottom-10">&lt;!-- divider --&gt;</div> ', '072e6ab06ef27cad03663fe9ee00fe5c.png', '<p><br></p>', 'pages', 'index', 'facials', 'facials', 1, '', '', '', '', 0, 1, 0, 1, 0, 0, 0, 0, 'vii_flawless', 'inner.template.html', '{"columns":"1","filename":"layout_template_col1_v1_1","format":"12_0_0_0"}', '{"col0":{}}', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(204, 'Skin Whitening Soap', 0, 0, 'In Stock<br>P140', 'b1cd997500af5b1f36918f57c26d6113.jpg', '<ul><li>A moisturizing soap that lightens spots and discolorations and provides antimicrobial and moisture care<br></li><li>Visit our clinic today for a free consultation and find out a suitable skin care solution for you.&nbsp;<br></li></ul>', 'pages', 'index', 'skinwhiteningsoap', 'skinwhiteningsoap', 1, '', '', '', '', 1, 1, 1, 1, 0, 0, 0, 0, 'vii_flawless', 'product.inner.template.html', NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(207, 'Skin lite cream', 0, 1, 'IN STOCK<br>\nP340', 'ee0762d62e32d49a7751dceb3fbbe0e9.jpg', '<ul><li>Prevents sun damage, lightens skin and diminishes discoloration while promoting the growth of healthy tissues. </li><li>Visit our clinic today for a free consultation and find out a suitable skin care solution for you.&nbsp;<br></li></ul><p></p>', 'pages', 'index', 'skinlitecream', 'skinlitecream', 1, '', '', '', '', 1, 1, 1, 1, 0, 0, 0, 0, 'vii_flawless', 'product.inner.template.html', NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(208, 'Skin White Therapy ', 0, 0, 'IN STOCK<br>\nP340', '4d7f988feb2159337f589b1112fd9fab.jpg', '<ul><li>A whitening moisturizer that targets pigmentations from acne and other blemishes. It exfoliates skin, resulting to a brighter and more even skin tone.<br></li><li>Visit our clinic today for a free consultation and find out a suitable skin care solution for you.&nbsp;<br></li></ul>', 'pages', 'index', 'skinwhitetherapy', 'skinwhitetherapy', 1, '', '', '', '', 1, 1, 1, 1, 0, 0, 0, 0, 'vii_flawless', 'product.inner.template.html', NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(209, 'Whitening Toner ', 0, 0, 'IN STOCK<br>\nP290', 'ae0279250dc39286589618a77f46e6fd.jpg', '<ul><li>Cleanses and lightens skin while restoring the skin’s natural pH level; working hard to remove dark marks and other blemishes<br></li><li>Visit our clinic today for a free consultation and find out a suitable skin care solution for you.&nbsp;<br></li></ul>', 'pages', 'index', 'whiteningtoner', 'whiteningtoner', 1, '', '', '', '', 1, 1, 1, 1, 0, 0, 0, 0, 'vii_flawless', 'product.inner.template.html', NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(217, 'Search', 0, 0, '<p><br></p>', '', '<p><br></p>', 'search', 'index', 'search', 'search', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 'vii_flawless', 'inner.template.html', NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(210, 'White Plus Cream ', 0, 0, 'IN STOCK<br>\nP730', '8a523620cf5a282f3cc9730b717c744c.jpg', '<ul><li>Abundant with natural plant extracts. It works to ensure an evenly-lighter and well-moisturized skin.<br></li><li>Visit our clinic today for a free consultation and find out a suitable skin care solution for you.&nbsp;<br></li></ul>', 'pages', 'index', 'whitepluscream', 'whitepluscream', 1, '', '', '', '', 1, 1, 1, 1, 0, 0, 0, 0, 'vii_flawless', 'product.inner.template.html', NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(212, 'Novexpert anti-aging cream', 0, 0, 'IN STOCK<br>\nP0.00', '729eb66db3443e893ed04b312eeee7eb.jpg', '<ul><li>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.<br></li><li>Visit our clinic today for a free consultation and find out a suitable skin care solution for you.&nbsp;<br></li></ul>', 'pages', 'index', 'novexpertantiagingcream', 'novexpertantiagingcream', 1, '', '', '', '', 1, 1, 1, 1, 0, 0, 0, 0, 'vii_flawless', 'product.inner.template.html', NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(213, 'Skin renew cream', 0, 0, 'IN STOCK<br>\nP0.00', '4512c0a3a3696f7b2754b3f668df2f00.jpg', '<ul><li>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.<br></li><li>Visit our clinic today for a free consultation and find out a suitable skin care solution for you.&nbsp;<br></li></ul>', 'pages', 'index', 'skinrenewcream', 'skinrenewcream', 1, '', '', '', '', 0, 1, 1, 1, 0, 0, 0, 0, 'vii_flawless', 'product.inner.template.html', NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(214, 'Skin whitening soap', 0, 0, 'IN STOCK<br>\nP0.00', 'edf703e7a97c6ab005eb7e0354d21b45.jpg', '<ul><li>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.<br></li><li>Visit our clinic today for a free consultation and find out a suitable skin care solution for you.&nbsp;<br></li></ul>', 'pages', 'index', 'skinwhiteningsoap', 'skinwhiteningsoap', 1, '', '', '', '', 1, 1, 1, 1, 0, 0, 0, 0, 'vii_flawless', 'product.inner.template.html', NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(225, 'Flawless Media', 3, 0, '', '', '', 'blog', 'index', 'flawlessmedia', 'flawlessmedia', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 'vii_flawless', 'inner.template.html', NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(249, 'Shape & Sculpt L-Carnitine ', 0, 1, 'In Stock<br>P2,250', 'c5cd69dbb33996029d2537c6cf0ddb66.jpg', '<ul><li>Maximizes production of energy to aid weight loss and fat burning. </li><li>Visit our clinic today for a free consultation and find out a suitable skin care solution for you.&nbsp;<br></li></ul><p></p>', 'pages', 'index', 'shapesculptlcarnitine', 'shapesculptlcarnitine', 1, '', '', '', '', 1, 1, 1, 1, 0, 0, 0, 0, 'vii_flawless', 'product.inner.template.html', NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(258, 'CORPORATE INFORMATION', 0, 0, '<div style="text-align: justify;"><span style="line-height: 1.5;">Founded on December 8, 2001, Flawless Face and Body Clinic (Flawless) is the preferred aesthetic beauty clinic for face, body and medical services in the Philippines. Through its growing number of strategically placed clinics, Flawless offers some of the country''s most advanced range of aesthetic solutions for all types of skin and body concerns. It is also the only mass market beauty clinic managed by professional dermatologists with some 35 clinics nationwide.&nbsp;</span></div><div style="text-align: justify;"><br></div><div style="text-align: justify;"><span style="line-height: 1.5;">Flawless Face and Body Clinic is quite possibly the most popular in its industry, thanks to its promise of delivering medically sound beautification services and products to the Filipino people.\nFlawless'' services and its collection of well-researched and medically-consistent skin products, have catapulted the clinic to amazing heights. Last December 8, 2009, on its eighth anniversary, Flawless became the recipient of the Outstanding Retailer of the Year Award from the Philippine Retailers'' Association. In addition, its equally flawless owner and CEO, Rubby Sy, was recently recognized by The International Association of Business Communicators (IABC) for her outstanding use of various communication methods to further boosts the company''s prominence, earning her the 2012 CEO Excel Awards.&nbsp;</span></div><div style="text-align: justify;"><br></div><div style="text-align: justify;"><span style="line-height: 1.5;">Over the past 11 years, Flawless has expanded to more than 30 branches nationwide, each boasting with a doctor and a staff of well-trained medical professionals, all readily qualified to diagnose any skin and body concern you may have.&nbsp;</span></div><div style="text-align: justify;"><br></div><div style="text-align: justify;"><span style="line-height: 1.5;">People can look forward to so many more great things from Flawless. It''s definitely nice to have an\naesthetic clinic that not only bases its foundations on medical research, but conducts its business with the Filipino in mind.</span></div><div style="text-align: justify;"><span style="line-height: 1.5;"><br></span></div><div style="text-align: justify;"><span style="line-height: 1.5;"><br></span></div><div style="text-align: justify;"><span style="line-height: 1.5;"><br></span></div>', '', '<p><br></p>', 'pages', 'index', 'corporateinformation', 'corporateinformation', 1, '', '', '', '', 1, 1, 0, 0, 0, 0, 0, 0, 'vii_flawless', 'inner.template.vr2.html', NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vii_page_section`
--

CREATE TABLE IF NOT EXISTS `vii_page_section` (
  `id_page_section` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `limit` int(11) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `image_src` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `id_module` int(11) DEFAULT NULL,
  `date_add` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_upd` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id_page_section`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `vii_page_section`
--

INSERT INTO `vii_page_section` (`id_page_section`, `title`, `limit`, `file_name`, `image_src`, `type`, `id_module`, `date_add`, `date_upd`) VALUES
(2, 'The Flawless Lifestyle (Layout)', 1, 'feb64aa93cc91315f3d8a439c9207d7e_1.html', '19d5f08c214bc330df65cb765e324357.png', 'module', 21, '2016-02-19 11:44:46', '0000-00-00 00:00:00'),
(4, 'faq layout', 1, '7677ff5f2cd42a2ecf45024dfcb4770a_1.html', '90e80cc7616996edbde1d478888ac261.jpg', 'module', 13, '2015-11-26 07:42:30', '0000-00-00 00:00:00'),
(5, 'events layout', 1, '254a4ba0ef352ba3f39039b0079105d4_1.html', '4b6bd4b9a8db934da51474a49e21aaef.jpg', 'module', 29, '2015-11-26 07:42:44', '0000-00-00 00:00:00'),
(6, 'gallery layout', 1, 'b6908ff8bed7cd6021cbcab7988dd934_1.html', '670228bc2d95cc84535aed6a7a75748a.jpg', 'module', 16, '2015-11-26 07:43:04', '0000-00-00 00:00:00'),
(8, 'newsletter layout', 1, '7d024151ec4ddb55c4eb38e91cd7c3b0_1.html', 'a2de27060b0f966d12daa2f32c7406d9.jpg', 'module', 28, '2015-11-26 07:43:48', '0000-00-00 00:00:00'),
(9, 'promo layout', 1, 'b48bd5880e975f6e58f19e7d574cfab9_1.html', 'd3b886daa5e95408dce48021cec28cf4.jpg', 'module', 26, '2015-11-26 07:44:00', '0000-00-00 00:00:00'),
(10, 'search layout', 1, '81cb0b2d1df94f428cea81ffeef11374_1.html', '819f5ec80122db6df997b02fddc3ec5d.jpg', 'module', 27, '2015-11-26 07:44:14', '0000-00-00 00:00:00'),
(11, 'testimonial layout', 1, '32a6fadece44c7806acf69445f096d8e_1.html', '9ceaf61776ada02efa1ea723a9cb7b6b.jpg', 'module', 22, '2015-11-26 07:44:28', '0000-00-00 00:00:00'),
(14, 'contact us layout', 1, '400be38dc5f09f0b7a97eb036aa83b20_1.html', 'a217e7e9ee49f4e7e2bbdfc3df22d302.jpg', 'module', 9, '2015-12-08 03:50:37', '0000-00-00 00:00:00'),
(18, 'Flawless Bestsellers', 3, '12d1dfc316ed262eb9dac8b2115d1df7_3.html', 'd273edeeda280e7a6db62ecad964ff08.png', 'page', 0, '2016-02-10 06:56:57', '0000-00-00 00:00:00'),
(19, 'Footer-callout', 2, '277a4c9c8c866661140ecad86b68421a_2.html', '9ac29230ce02b6a159f6da9cef73b426.png', 'page', 0, '2016-02-09 09:46:02', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `vii_page_tree`
--

CREATE TABLE IF NOT EXISTS `vii_page_tree` (
  `id_page_tree` int(11) NOT NULL AUTO_INCREMENT,
  `id_page` int(11) NOT NULL,
  `id_parent` int(11) NOT NULL,
  `depth` tinyint(1) NOT NULL,
  `isActive` int(11) NOT NULL,
  `absolute_link` varchar(512) NOT NULL,
  PRIMARY KEY (`id_page_tree`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=229 ;

--
-- Dumping data for table `vii_page_tree`
--

INSERT INTO `vii_page_tree` (`id_page_tree`, `id_page`, `id_parent`, `depth`, `isActive`, `absolute_link`) VALUES
(1, 1, 0, 1, 1, ''),
(2, 4, 0, 1, 0, 'error'),
(3, 6, 0, 1, 0, 'faqs'),
(105, 178, 0, 1, 0, 'testimonials'),
(10, 102, 0, 1, 1, 'products'),
(11, 16, 15, 2, 0, 'sample1/sample11'),
(12, 17, 16, 3, 0, 'sample1/sample11/sample111'),
(13, 18, 15, 2, 0, 'sample1/sample12'),
(14, 19, 16, 3, 0, 'sample1/sample11/sample112'),
(15, 20, 16, 3, 0, 'sample1/sample11/sample113'),
(16, 21, 0, 1, 0, 'about'),
(17, 22, 0, 1, 1, 'promo'),
(18, 23, 0, 1, 1, 'search'),
(19, 24, 0, 1, 1, 'newsletter'),
(20, 25, 0, 1, 1, 'events'),
(21, 27, 0, 1, 1, 'aaaaatitle'),
(22, 101, 0, 1, 0, 'flawlessbestsellers'),
(169, 199, 104, 3, 0, 'products/individualproducts/agedefycream'),
(24, 104, 102, 2, 0, 'products/individualproducts'),
(221, 251, 0, 1, 0, 'newsletter'),
(168, 198, 102, 2, 0, 'products/beautykits'),
(203, 233, 198, 3, 0, 'products/beautykits/rgsoap'),
(227, 257, 0, 1, 0, 'careers'),
(228, 258, 0, 1, 0, 'corporateinformation'),
(198, 228, 198, 3, 0, 'products/beautykits/skinlighteninglotionwithsunblock'),
(206, 236, 198, 3, 0, 'products/beautykits/sassoap'),
(226, 256, 0, 1, 0, 'testimonialssidebar'),
(205, 235, 198, 3, 0, 'products/beautykits/rgtoner'),
(200, 230, 198, 3, 0, 'products/beautykits/teatreesoap'),
(201, 231, 198, 3, 0, 'products/beautykits/porerefiner'),
(199, 229, 198, 3, 0, 'products/beautykits/oatmealsoap'),
(204, 234, 198, 3, 0, 'products/beautykits/rgdaynightcream'),
(202, 232, 198, 3, 0, 'products/beautykits/skinrenewcream'),
(222, 252, 0, 1, 0, 'laserhairremoval'),
(8, 13, 0, 1, 1, 'blog'),
(6, 11, 0, 1, 0, 'news'),
(5, 10, 0, 1, 0, 'rssfeed'),
(4, 7, 0, 1, 1, 'gallery'),
(224, 254, 0, 1, 0, 'shapesculptcream'),
(126, 194, 181, 2, 0, 'treatment/facials'),
(125, 193, 181, 2, 0, 'treatment/microdermabrasion'),
(124, 192, 181, 2, 0, 'treatment/peels'),
(123, 191, 181, 2, 0, 'treatment/body'),
(122, 190, 181, 2, 0, 'treatment/hairremoval'),
(96, 171, 0, 1, 0, 'bookanappointment'),
(97, 170, 0, 1, 1, 'contactus'),
(98, 166, 0, 1, 0, 'expertiseyoucantrust'),
(99, 167, 0, 1, 0, 'certifedtested'),
(100, 168, 0, 1, 0, 'footerlinks'),
(108, 181, 0, 1, 1, 'treatment'),
(177, 207, 198, 3, 0, 'products/beautykits/skinlitecream'),
(114, 182, 0, 1, 0, 'flawlessmedia'),
(121, 189, 181, 2, 0, 'treatment/medical'),
(225, 255, 0, 1, 1, 'franchising'),
(223, 253, 0, 1, 0, 'nanopowerpeel'),
(164, 172, 0, 1, 0, 'ultratreatments'),
(170, 200, 198, 3, 0, 'products/beautykits/agedefycream'),
(171, 201, 0, 1, 0, 'topnavigation'),
(173, 203, 104, 3, 0, 'products/individualproducts/nanowhitenessglutathioneplus'),
(174, 204, 198, 3, 0, 'products/beautykits/skinwhiteningsoap'),
(178, 208, 198, 3, 0, 'products/beautykits/skinwhitetherapy'),
(179, 209, 198, 3, 0, 'products/beautykits/whiteningtoner'),
(180, 210, 198, 3, 0, 'products/beautykits/whitepluscream'),
(182, 212, 104, 3, 0, 'products/individualproducts/novexpertantiagingcream'),
(183, 213, 104, 3, 0, 'products/individualproducts/skinrenewcream'),
(184, 214, 104, 3, 0, 'products/individualproducts/skinwhiteningsoap'),
(187, 217, 0, 1, 0, 'search'),
(189, 219, 0, 1, 0, 'media'),
(190, 220, 0, 1, 0, 'flawlessmedia'),
(191, 221, 0, 1, 0, 'flawlessmedia'),
(192, 222, 0, 1, 0, 'flawlessmedia'),
(193, 223, 0, 1, 0, 'blog'),
(194, 224, 0, 1, 0, 'flawlessmedia'),
(195, 225, 0, 1, 0, 'flawlessmedia'),
(207, 237, 198, 3, 0, 'products/beautykits/skinprotectgel'),
(208, 238, 198, 3, 0, 'products/beautykits/pimpleclearastringent'),
(209, 239, 198, 3, 0, 'products/beautykits/collagensoap'),
(210, 240, 198, 3, 0, 'products/beautykits/skinprotectcream'),
(211, 241, 198, 3, 0, 'products/beautykits/agedefytoner'),
(212, 242, 198, 3, 0, 'products/beautykits/ahasoap'),
(213, 243, 198, 3, 0, 'products/beautykits/antiperspirantwhiteningdeo'),
(214, 244, 198, 3, 0, 'products/beautykits/flawlessskinprotectmist'),
(215, 245, 198, 3, 0, 'products/beautykits/whiteningsuperserum'),
(216, 246, 198, 3, 0, 'products/beautykits/agedefysuperserum'),
(217, 247, 198, 3, 0, 'products/beautykits/nanowhitenessglutathioneplus'),
(218, 248, 198, 3, 0, 'products/beautykits/skinliftcollagen'),
(219, 249, 198, 3, 0, 'products/beautykits/shapesculptlcarnitine');

-- --------------------------------------------------------

--
-- Table structure for table `vii_promo_category`
--

CREATE TABLE IF NOT EXISTS `vii_promo_category` (
  `id_promo_category` int(11) NOT NULL AUTO_INCREMENT,
  `id_parent` int(11) NOT NULL DEFAULT '0',
  `category_title` text,
  `category_caption` text,
  `category_desc` text,
  `category_image_src` text,
  `category_root` text,
  `category_link_rewrite` text,
  `category_meta_title` text,
  `category_meta_description` text,
  `category_meta_author` text,
  `category_meta_keywords` text,
  `category_meta_image` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `date_add` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_promo_category`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `vii_promo_category`
--

INSERT INTO `vii_promo_category` (`id_promo_category`, `id_parent`, `category_title`, `category_caption`, `category_desc`, `category_image_src`, `category_root`, `category_link_rewrite`, `category_meta_title`, `category_meta_description`, `category_meta_author`, `category_meta_keywords`, `category_meta_image`, `status`, `date_add`) VALUES
(1, 0, 'Uncategorized', NULL, 'Uncategorized', NULL, 'uncategorized', 'uncategorized', NULL, NULL, NULL, NULL, NULL, 1, '2015-12-15 06:00:45');

-- --------------------------------------------------------

--
-- Table structure for table `vii_promo_item`
--

CREATE TABLE IF NOT EXISTS `vii_promo_item` (
  `id_promo_item` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `image_title` text,
  `link_rewrite` text,
  `image_sub_title` text,
  `image_desc` text,
  `image_src` text,
  `image_author` text,
  `image_meta_title` text,
  `image_meta_description` text,
  `image_meta_keywords` text,
  `status` int(11) NOT NULL DEFAULT '0',
  `id_promo_category` int(11) NOT NULL DEFAULT '1',
  `date_add` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_promo_item`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `vii_promo_item`
--

INSERT INTO `vii_promo_item` (`id_promo_item`, `date`, `image_title`, `link_rewrite`, `image_sub_title`, `image_desc`, `image_src`, `image_author`, `image_meta_title`, `image_meta_description`, `image_meta_keywords`, `status`, `id_promo_category`, `date_add`) VALUES
(1, '2014-10-15', 'Sample Title #1', 'sample_title__1', 'Sample Sub Title #1', '<p><span style="font-weight: bold;">Sample Description #1<br></span></p>', 'cc625eeb0acc6c0bae406b890b32b0a9.jpg', 'Sample Author #1', 'Sample  Meta Title #1', 'Sample  Meta Description #1', 'Sample  Meta Keywords #1', 1, 1, '2015-11-26 05:32:40'),
(2, '2014-10-15', 'Sample Title #2', 'sample_title__2', 'Sample Sub Title #2', '<p><span style="font-weight: bold;">Sample Description #2<br></span></p>', '3517bdb8a403bbb0b9465b7d745d00b8.jpg', 'Sample Author #2', 'Sample  Meta Title #2', 'Sample Meta Description #2', 'Sample Meta Keywords #2', 1, 1, '2015-11-26 05:32:44');

-- --------------------------------------------------------

--
-- Table structure for table `vii_provinces`
--

CREATE TABLE IF NOT EXISTS `vii_provinces` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=82 ;

--
-- Dumping data for table `vii_provinces`
--

INSERT INTO `vii_provinces` (`id`, `name`) VALUES
(1, 'Abra'),
(2, 'Agusan del Norte'),
(3, 'Agusan del Sur'),
(4, 'Aklan'),
(5, 'Albay'),
(6, 'Antique'),
(7, 'Apayao'),
(8, 'Aurora'),
(9, 'Basilan'),
(10, 'Bataan'),
(11, 'Batanes'),
(12, 'Batangas'),
(13, 'Benguet'),
(14, 'Biliran'),
(15, 'Bohol'),
(16, 'Bukidnon'),
(17, 'Bulacan'),
(18, 'Cagayan'),
(19, 'Camarines Norte'),
(20, 'Camarines Sur'),
(21, 'Camiguin'),
(22, 'Capiz'),
(23, 'Catanduanes'),
(24, 'Cavite'),
(25, 'Cebu'),
(26, 'Compostela Valley'),
(27, 'Cotabato'),
(28, 'Davao del Norte'),
(29, 'Davao del Sur'),
(30, 'Davao Oriental'),
(31, 'Eastern Samar'),
(32, 'Guimaras'),
(33, 'Ifugao'),
(34, 'Ilocos Norte'),
(35, 'Ilocos Sur'),
(36, 'Iloilo'),
(37, 'Isabela'),
(38, 'Kalinga'),
(39, 'La Union'),
(40, 'Laguna'),
(41, 'Lanao del Norte'),
(42, 'Lanao del Sur'),
(43, 'Leyte'),
(44, 'Maguindanao'),
(45, 'Marinduque'),
(46, 'Masbate'),
(47, 'Metro Manila'),
(48, 'Misamis Occidental'),
(49, 'Misamis Oriental'),
(50, 'Mountain Province'),
(51, 'Negros Occidental'),
(52, 'Negros Oriental'),
(53, 'Northern Samar'),
(54, 'Nueva Ecija'),
(55, 'Nueva Vizcaya'),
(56, 'Occidental Mindoro'),
(57, 'Oriental Mindoro'),
(58, 'Palawan'),
(59, 'Pampanga'),
(60, 'Pangasinan'),
(61, 'Quezon'),
(62, 'Quirino'),
(63, 'Rizal'),
(64, 'Romblon'),
(65, 'Samar'),
(66, 'Sarangani'),
(67, 'Siquijor'),
(68, 'Sorsogon'),
(69, 'South Cotabato'),
(70, 'Southern Leyte'),
(71, 'Sultan Kudarat'),
(72, 'Sulu'),
(73, 'Surigao del Norte'),
(74, 'Surigao del Sur'),
(75, 'Tarlac'),
(76, 'Tawi-Tawi'),
(77, 'Zambales'),
(78, 'Zamboanga del Norte'),
(79, 'Zamboanga del Sur'),
(80, 'Zamboanga Sibugay'),
(81, 'Province');

-- --------------------------------------------------------

--
-- Table structure for table `vii_testimonial`
--

CREATE TABLE IF NOT EXISTS `vii_testimonial` (
  `id_testimonial` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` text,
  `ip_address` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `date_add` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_testimonial`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `vii_testimonial`
--

INSERT INTO `vii_testimonial` (`id_testimonial`, `name`, `email`, `message`, `ip_address`, `status`, `date_add`) VALUES
(1, 'Sample Testimonial Title #1', 'SampleTestimonialEmail1@example.com', 'Sample Testimonial Message #1', '192.168.2.197', 1, '2014-10-15 08:21:56'),
(2, 'Sample Testimonial Title #2', 'SampleTestimonialEmail2@example.com', 'Sample Testimonial Message #2', '192.168.2.197', 1, '2014-08-26 04:47:05');

-- --------------------------------------------------------

--
-- Table structure for table `vii_testimonial_internal`
--

CREATE TABLE IF NOT EXISTS `vii_testimonial_internal` (
  `id_blog_item` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `image_title` text,
  `link_rewrite` text,
  `image_sub_title` text,
  `image_desc` text,
  `image_src` text,
  `image_author` text,
  `image_meta_title` text,
  `image_meta_description` text,
  `image_meta_keywords` text,
  `status` int(11) NOT NULL DEFAULT '0',
  `date_add` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_blog_item`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `vii_testimonial_internal`
--

INSERT INTO `vii_testimonial_internal` (`id_blog_item`, `date`, `image_title`, `link_rewrite`, `image_sub_title`, `image_desc`, `image_src`, `image_author`, `image_meta_title`, `image_meta_description`, `image_meta_keywords`, `status`, `date_add`, `sort`) VALUES
(1, '2012-09-04', 'Jhong Hilario', 'jhong_hilario', 'https://www.youtube.com/watch?v=0viYRDhBVec&ebc=ANyPxKpN4gFc_Hw_VRZT01QlSj4AJzK77v7ouf6ZQYDfdiuxiY1HAJd5Ai4IwTFJdswjQPIplPibYYUP3Gg-GynyG3SSuvqj-Q', 'Nakatulong ang Flawless'' Sweatox sa super busy na schedule ko feeling fresh and dry parin buong araw. Walang pawis at mabango parati.\n\n', '08d43501f4a4801326687282b891b326.png', 'Jhong Hilario', 'Sample Meta Title #1', 'Sample Meta Description #1', 'Sample Meta Keywords #1', 1, '2015-11-26 05:32:20', 1),
(2, '2012-09-04', 'Lorna Tolentino', 'lorna_tolentino', '', '<p>\n Nako aging is not an option. I highly recommend Flawless'' Age-Defying Kit and facial every two weeks at Fractional Needling Therapy every month para ma-erase ang wrinkles and dark spots.</p>\n', '2b1c95f41fa6a0cd65d547ba352b3f93.png', 'Lorna Tolentino', 'Sample Meta Title #2', 'Sample Meta Description #2', 'Sample Meta Keywords #2', 1, '2015-11-26 05:32:24', 2),
(3, '2012-09-04', 'Mark Herras', 'mark_herras', 'http://www.youtube.com/watch?v=uJ_MdwmOjtI&feature=plcp', '<p>\n I love ISKIN New York. Wala nakong time magpatreatment. Kaya pagdating ko galing taping gumagamit ako ng ISKIN make-up remover, facial cleanser and toner para magtanggal ang make-up bago matulog.</p>\n', '608ce8fb12d11a146208f63cb63f315b.png', 'Mark Herras', '', '', '', 1, '2016-02-05 07:39:31', 0),
(4, '2012-09-11', 'Divine Lee', 'divine_lee', 'http://www.youtube.com/watch?v=bSe4IIhvjh4', '<p>\n It is important to take care of one''s skin para pagtanda flawless parin. I love Flawless'' Fractional Needling Therapy kase all in one solution siya to target your acne, scars, stretchmarks, wrinkles, and dark spots.</p>\n', '60636f66c2dda1bc9cda93a41cee8558.png', 'Divine Lee', '', '', '', 1, '2016-02-05 07:42:20', 0),
(5, '2012-09-11', 'Barbie Forteza', 'barbie_forteza', 'http://www.youtube.com/watch?v=M-0z-a01tnQ&feature=plcp', '<p>\n Gustung gusto ko ang Laser Hair Removal ng Flawless para sa aking kilikili. Nakakaputi at nakakakinis sya kase hindi mo na kailangan magshave parati na nakakairritate ng skin.</p>\n', '749e43afcb872b40d46257dca8a2e024.png', 'Barbie Forteza', '', '', '', 1, '2016-02-05 07:42:20', 0),
(6, '2012-09-11', 'Enzo Pineda', 'enzo_pineda', 'http://www.youtube.com/watch?v=_VWmi5AoaQ4&feature=plcp', '<p>\n I use Flawless'' Shape and Sculpt Nutraceutical with L-Carnitine. Nakakatulong sya sa paggygym ko. Mas may energy ako to work out plus it is easier to achieve a leaner and toned body. I orally take it after meals. The supplement is included in the Shape and Sculpt program.</p>\n', '6dd755e9ec310ca28e309f2f2511fc7c.png', 'Enzo Pineda', '', '', '', 1, '2016-02-05 07:44:42', 0),
(7, '2012-09-11', 'Chariz Solomon', 'chariz_solomon', '', '<p>\r\n I regularly go to Flawless for my facials. When I get acne-breakouts, I go for their Advanced Acne- Control facial, tapos nag papa Whitening facial naman ako to have blemish-free skin.</p>', NULL, 'Chariz Solomon', NULL, NULL, NULL, 0, '2016-02-05 07:44:42', 0),
(8, '2012-09-11', 'General Luna band', 'general_luna_band', NULL, '	<strong>Nicole (lead vocalist)</strong>: &quot;I frequent Flawless for their Fractional Needling Therapy, it perfectly rejuvenates my skin.&quot;&nbsp;</p>\r\n', NULL, 'General Luna band', NULL, NULL, NULL, 0, '2016-02-05 07:47:35', 0),
(9, '2012-09-11', 'Ritz Azul', 'ritz_azul', 'http://www.youtube.com/watch?v=zPapy7bU6p4&feature=plcp', '<p>\r\n Pag artista ka kailangan mong magsuot ng iba&#39;t ibang klaseng damit, sleeveless, swimsuit, shorts, and gowns. Kaya I always go to Flawless for their Laser Hair Removal para palaging confident magtaas ng arms at magpakita ng legs.</p>\r\n', NULL, 'Ritz Azul', NULL, NULL, NULL, 0, '2016-02-05 07:47:35', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vii_treatments`
--

CREATE TABLE IF NOT EXISTS `vii_treatments` (
  `id_treatment` int(11) NOT NULL AUTO_INCREMENT,
  `treatment_name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_treatment`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `vii_treatments`
--

INSERT INTO `vii_treatments` (`id_treatment`, `treatment_name`, `status`) VALUES
(1, 'Facial', 1),
(2, 'Body', 1),
(3, 'Microdermabrasion', 1),
(4, 'Peels', 1),
(5, 'Hair Removal', 1),
(6, 'Medical', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
