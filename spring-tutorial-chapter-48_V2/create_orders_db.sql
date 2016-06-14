-- phpMyAdmin SQL Dump
-- version 2.8.0.1
-- http://www.phpmyadmin.net
-- 
-- Host: custsqlmoo09
-- Generation Time: May 26, 2016 at 09:40 PM
-- Server version: 5.5.44
-- PHP Version: 4.4.9
-- 
-- Database: `springtutorial`
-- 

-- --------------------------------------------------------

drop database if exists offers;

create database springtutorial;

use springtutorial;


-- 
-- Table structure for table `offers`
-- 

CREATE TABLE `offers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(60) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `offers`
-- 

INSERT INTO `offers` VALUES (0, 'Bob', 'bob@nowhereatall.com', 'Will write Java for your organization');
INSERT INTO `offers` VALUES (1, 'Mike', 'mike@nowhereatall.com', 'Web design, very cheap');
INSERT INTO `offers` VALUES (2, 'Sue', 'sue@nowhereatall.com', 'PHP coding');
