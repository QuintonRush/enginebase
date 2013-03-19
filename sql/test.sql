-- phpMyAdmin SQL Dump
-- version 3.5.6
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2013 年 03 月 19 日 09:34
-- 服务器版本: 5.6.10
-- PHP 版本: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `test`
--

-- --------------------------------------------------------

--
-- 表的结构 `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) CHARACTER SET utf8 NOT NULL,
  `info` varchar(256) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `id_2` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `category`
--

INSERT INTO `category` (`id`, `name`, `info`) VALUES
(1, 'Engine-2.0', '浏览内核(Engine 2.0)版本发布记录'),
(2, '国际版', '浏览器国际化版本发布记录');

-- --------------------------------------------------------

--
-- 表的结构 `entry`
--

CREATE TABLE IF NOT EXISTS `entry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `it_id` int(11) NOT NULL,
  `info` varchar(2048) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `item`
--

CREATE TABLE IF NOT EXISTS `item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `re_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `release`
--

CREATE TABLE IF NOT EXISTS `release` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ca_id` int(11) NOT NULL,
  `version` varchar(128) CHARACTER SET utf8 NOT NULL,
  `info` varchar(4096) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `release`
--

INSERT INTO `release` (`id`, `ca_id`, `version`, `info`) VALUES
(1, 0, '2.0.0.0', '<ul style="margin-top: 0px; font-family: arial, verdana, sans-serif; font-size: 14px; line-height: 20.46666717529297px;"> <li style="background-color: transparent;">Release Notes <ul style="margin-top: 0px; background-color: transparent;"> <li style="background-color: transparent;">Add method: selectText(), which is needed by Browser<br />Change-Id: I0b4cf76cb39f1b8eac5daa46b2f764bc7a09662e<br />--&nbsp;<a style="text-decoration: initial; color: #58438b; background-color: transparent; border-color: #58438b; border-style: none none dotted; border-width: 1px;" href="http://mco.jenkins.baidu.com/user/liwei01/" target="_top">李巍</a>&nbsp;/&nbsp;<a style="text-decoration: initial; color: #58438b; background-color: transparent; border-color: #58438b; border-style: none none dotted; border-width: 1px;" href="http://mco.jenkins.baidu.com/user/wanglei10/my-views/view/V2.4/job/T5-V2.4-daily-trigger/189/changes#detail0" target="_top">detail</a></li> </ul> </li> <li style="background-color: transparent;">内核下载地址： <ul style="margin-top: 0px; background-color: transparent;"> <li style="background-color: transparent;"><a style="text-decoration: initial; color: #58438b; background-color: transparent; border-color: #58438b; border-style: none none dotted; border-width: 1px;" href="http://mco.jenkins.baidu.com/user/wanglei10/my-views/view/V2.4/job/T5-V2.4-pack/95/artifact/master-pack-dir/2.3.10.189-2.0.zip" target="_top">2.3.10.189-2.0.zip</a></li> </ul> </li> <li style="background-color: transparent;">SDK下载地址： <ul style="margin-top: 0px; background-color: transparent;"> <li style="background-color: transparent;"><a style="text-decoration: initial; color: #58438b; background-color: transparent; border-color: #58438b; border-style: none none dotted; border-width: 1px;" href="http://mco.jenkins.baidu.com/user/wanglei10/my-views/view/V2.4/job/T5-V2.4-pack/95/artifact/master-pack-dir/zeus-sdk-2.3.10.189.tgz" target="_top">zeus-sdk-2.3.10.189.tgz</a></li> <li style="background-color: transparent;"><a style="text-decoration: initial; color: #58438b; background-color: transparent; border-color: #58438b; border-style: none none dotted; border-width: 1px;" href="http://mco.jenkins.baidu.com/user/wanglei10/my-views/view/V2.4/job/T5-V2.4-pack/95/artifact/master-pack-dir/zeus-sdk-for-box-2.3.10.189.tgz" target="_top">zeus-sdk-for-box-2.3.10.189.tgz</a></li> </ul> </li> </ul>');

-- --------------------------------------------------------

--
-- 表的结构 `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- 转存表中的数据 `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `password`, `email`) VALUES
(1, 'test1', 'pass1', 'test1@example.com'),
(2, 'test2', 'pass2', 'test2@example.com'),
(3, 'test3', 'pass3', 'test3@example.com'),
(4, 'test4', 'pass4', 'test4@example.com'),
(5, 'test5', 'pass5', 'test5@example.com'),
(6, 'test6', 'pass6', 'test6@example.com'),
(7, 'test7', 'pass7', 'test7@example.com'),
(8, 'test8', 'pass8', 'test8@example.com'),
(9, 'test9', 'pass9', 'test9@example.com'),
(10, 'test10', 'pass10', 'test10@example.com'),
(11, 'test11', 'pass11', 'test11@example.com'),
(12, 'test12', 'pass12', 'test12@example.com'),
(13, 'test13', 'pass13', 'test13@example.com'),
(14, 'test14', 'pass14', 'test14@example.com'),
(15, 'test15', 'pass15', 'test15@example.com'),
(16, 'test16', 'pass16', 'test16@example.com'),
(17, 'test17', 'pass17', 'test17@example.com'),
(18, 'test18', 'pass18', 'test18@example.com'),
(19, 'test19', 'pass19', 'test19@example.com'),
(20, 'test20', 'pass20', 'test20@example.com'),
(21, 'test21', 'pass21', 'test21@example.com'),
(22, 'lq', 'lq', 'lq@lq.com');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
