-- phpMyAdmin SQL Dump
-- version 3.5.8.1deb1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2013 年 10 月 08 日 16:53
-- 服务器版本: 5.5.32-0ubuntu0.13.04.1
-- PHP 版本: 5.4.9-4ubuntu2.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `gw_library`
--

-- --------------------------------------------------------

--
-- 表的结构 `gw_school`
--

CREATE TABLE IF NOT EXISTS `gw_school` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '学校的Id',
  `schoolName` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT '学校的名称',
  `fileName` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '爬去对应学校的文件名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `gw_school`
--

INSERT INTO `gw_school` (`id`, `schoolName`, `fileName`) VALUES
(1, '广东外语外贸大学', 'LibGw'),
(2, '华南理工大学', 'LibHg'),
(3, '暨南大学', 'LibJndx');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
