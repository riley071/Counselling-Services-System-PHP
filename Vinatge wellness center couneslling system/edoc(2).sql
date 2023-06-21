-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 28, 2022 at 10:19 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edoc`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `aemail` varchar(255) NOT NULL,
  `apassword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`aemail`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aemail`, `apassword`) VALUES
('admin@edoc.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
CREATE TABLE IF NOT EXISTS `appointment` (
  `appoid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(10) DEFAULT NULL,
  `apponum` int(3) DEFAULT NULL,
  `status` text,
  `scheduleid` int(10) DEFAULT NULL,
  `appodate` date DEFAULT NULL,
  PRIMARY KEY (`appoid`),
  KEY `pid` (`pid`),
  KEY `scheduleid` (`scheduleid`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appoid`, `pid`, `apponum`, `status`, `scheduleid`, `appodate`) VALUES
(11, 2, 2, 'Pending', 18, '2022-11-08'),
(8, 3, 1, 'accpet', 15, '2022-11-04'),
(26, 6, 1, 'pending', 22, '2022-11-24'),
(25, 3, 1, 'pending', 21, '2022-11-18'),
(16, 3, 3, 'pending', 20, '2022-11-10'),
(17, 3, 4, 'pending', 20, '2022-11-10'),
(27, 3, 1, 'pending', 23, '2022-11-25'),
(28, 7, 1, 'pending', 24, '2022-11-27');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
CREATE TABLE IF NOT EXISTS `doctor` (
  `docid` int(11) NOT NULL AUTO_INCREMENT,
  `docemail` varchar(255) DEFAULT NULL,
  `docname` varchar(255) DEFAULT NULL,
  `docpassword` varchar(255) DEFAULT NULL,
  `docnic` varchar(15) DEFAULT NULL,
  `doctel` varchar(15) DEFAULT NULL,
  `specialties` int(2) DEFAULT NULL,
  PRIMARY KEY (`docid`),
  KEY `specialties` (`specialties`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`docid`, `docemail`, `docname`, `docpassword`, `docnic`, `doctel`, `specialties`) VALUES
(1, 'doctor@edoc.com', 'Test Doctor', '123', '000000000', '0110000000', 1),
(2, 'john@gmail.com', 'john', 'john', '12234', '2650998228829', 8);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
CREATE TABLE IF NOT EXISTS `patient` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pemail` varchar(255) DEFAULT NULL,
  `pname` varchar(255) DEFAULT NULL,
  `ppassword` varchar(255) DEFAULT NULL,
  `paddress` varchar(255) DEFAULT NULL,
  `pnic` varchar(15) DEFAULT NULL,
  `pdob` date DEFAULT NULL,
  `ptel` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`pid`, `pemail`, `pname`, `ppassword`, `paddress`, `pnic`, `pdob`, `ptel`) VALUES
(1, 'patient@edoc.com', 'Test Patient', '123', 'Sri Lanka', '0000000000', '2000-01-01', '0120000000'),
(2, 'emhashenudara@gmail.com', 'Hashen Udara', '123', 'Sri Lanka', '0110000000', '2022-06-03', '0700000000'),
(3, 'emzo@gmail.com', 'emzo Matewere', 'emzo', 'blantyre', '12234', '2022-07-19', '0882944267'),
(4, 'wngalu@gmail.com', 'Winston Ngalu', 'admin123', 'wngalu@gmail.com', '000684', '2002-03-18', '0993589726'),
(5, 'mama@gmail.com', 'joe mama', 'pass12345', 'mama@gmail.com', '1234567', '0078-03-09', '0728289292'),
(6, 'joe@gmail.com', 'mama joe', 'mama', 'blantyre', '12345678', '2022-11-24', '0728289292'),
(7, 'mike@gmail.com', 'Mike new', 'mike', 'Blantyre', '1234567', '2022-11-28', '0993589726');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
CREATE TABLE IF NOT EXISTS `question` (
  `qid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` varchar(255) DEFAULT NULL,
  `question1` text,
  `question2` text,
  `question3` text,
  `question4` text,
  `question6` text,
  `question7` text,
  `question5` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`qid`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`qid`, `pid`, `question1`, `question2`, `question3`, `question4`, `question6`, `question7`, `question5`) VALUES
(31, '5', 'Prefer not to say', 'I feel Anxious or overwhelmed', 'Divorced', 'Individual (for myself)', 'Yes', 'No', '89'),
(30, '1', 'Straight', 'I feel Anxious or overwhelmed', 'Single', 'Couples (for myself and partner) ', 'Yes', 'Yes', '4'),
(29, '3', 'Straight', 'I have been feeling depressed', 'Single', 'Individual (for myself)', 'Yes', 'Yes', '4'),
(28, '3', 'Straight', 'I have been feeling depressed', 'Married', 'Individual (for myself)', 'Yes', 'Yes', '3'),
(25, '3', 'Straight', 'I have been feeling depressed', 'Single', 'Individual (for myself)', 'Yes', 'Yes', '2'),
(26, '1', 'Gay', 'I feel Anxious or overwhelmed', 'Married', 'Individual (for myself)', 'Yes', 'Yes', '7'),
(27, '2', 'Straight', 'I have been feeling depressed', 'Single', 'Couples (for myself and partner) ', 'Yes', 'Yes', '2'),
(32, '3', 'Straight', 'I have been feeling depressed', 'Married', 'Individual (for myself)', 'Yes', 'Yes', '12'),
(33, '7', 'Straight', 'I have been feeling depressed', 'Divorced', 'Individual (for myself)', 'Yes', 'Yes', '12');

-- --------------------------------------------------------

--
-- Table structure for table `questionnaire`
--

DROP TABLE IF EXISTS `questionnaire`;
CREATE TABLE IF NOT EXISTS `questionnaire` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Question 1` text NOT NULL,
  `Question 2` text NOT NULL,
  `Question 3` text NOT NULL,
  `Question 4` text NOT NULL,
  `Question 5` text NOT NULL,
  `Question 6` text NOT NULL,
  `Question 7` text NOT NULL,
  `Question 8` text NOT NULL,
  `Question 9` text NOT NULL,
  `Question 10` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questionnaire`
--

INSERT INTO `questionnaire` (`ID`, `Question 1`, `Question 2`, `Question 3`, `Question 4`, `Question 5`, `Question 6`, `Question 7`, `Question 8`, `Question 9`, `Question 10`) VALUES
(1, 'Straight', 'I feel Anxious or overwhelmed', 'Single', 'Woman', 'Individual (for myself)', 'Yes', 'Judaism', 'Yes', 'Yes', 'Proactively checks in with me'),
(2, 'Straight', 'I have been feeling depressed', 'Married', 'Man', 'Individual (for myself)', 'Yes', 'Christianity', 'Yes', 'Yes', 'Teaches me new skills'),
(3, 'Straight', 'I am grieving', 'Married', 'Man', 'Individual (for myself)', 'Yes', 'Christianity', 'Yes', 'Yes', 'Assigns me work');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
CREATE TABLE IF NOT EXISTS `schedule` (
  `scheduleid` int(11) NOT NULL AUTO_INCREMENT,
  `docid` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `scheduledate` date DEFAULT NULL,
  `scheduletime` time DEFAULT NULL,
  `nop` int(4) DEFAULT NULL,
  PRIMARY KEY (`scheduleid`),
  KEY `docid` (`docid`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`scheduleid`, `docid`, `title`, `scheduledate`, `scheduletime`, `nop`) VALUES
(11, '1', 'Individual therapy ', '2022-10-31', '21:03:00', 4),
(10, '1', 'stress and anixiey', '2022-10-26', '13:02:00', 9),
(15, '1', 'Individual therapy ', '2022-11-04', '23:04:00', 3),
(9, '1', 'video chat with dr riley', '2022-07-26', '14:10:00', 1),
(13, '1', 'Individual therapy ', '2022-10-28', '01:02:00', 2),
(21, '1', 'couple therapy', '2022-11-18', '20:30:00', 8),
(22, '1', 'couple therapy', '2022-11-24', '06:17:00', 2),
(23, '1', 'couple therapy', '2022-11-25', '06:07:00', 4),
(24, '1', 'couple therapy', '2022-11-28', '12:03:00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `specialties`
--

DROP TABLE IF EXISTS `specialties`;
CREATE TABLE IF NOT EXISTS `specialties` (
  `id` int(2) NOT NULL,
  `sname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `specialties`
--

INSERT INTO `specialties` (`id`, `sname`) VALUES
(1, 'Health Psychologists '),
(2, 'School Psychologists'),
(3, 'Addiction psychology'),
(4, 'Biopsychology'),
(5, 'Cardiology'),
(6, 'Clinical psychology'),
(7, 'Cognitive psychology'),
(8, 'Counseling psychology'),
(9, 'Neuropsychology'),
(10, 'Organizational psychology'),
(11, 'Sports psychology');

-- --------------------------------------------------------

--
-- Table structure for table `treatment`
--

DROP TABLE IF EXISTS `treatment`;
CREATE TABLE IF NOT EXISTS `treatment` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `medication` varchar(255) DEFAULT NULL,
  `nop` int(4) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tid`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `treatment`
--

INSERT INTO `treatment` (`tid`, `pid`, `type`, `medication`, `nop`, `title`) VALUES
(15, '7', 'couple therapy ', 'none', 12, 'pyscholo therapy'),
(3, '1', 'Test Session', 'sjsjsjs', 1, '12'),
(14, '2', 'wkwkw', 'wkkkkk', 11, 'snsnns'),
(13, '4', 'sjs', 'jsjjs', 12, 'aaaaaaaaaaa'),
(6, '1', 'Test Session', 'sjsjsjs', 1, '12'),
(7, '1', 'Test Session', 'sjsjsjs', 1, '1'),
(8, '1', 'Test Session', 'sjsjsjs', 1, '12'),
(9, '3', 'aaaa', 'aaaaaaa', 1, 'qqqqqqqqqqqqq'),
(10, '3', 'treatment', 'none', 12, 'couple therapy'),
(11, '3', 'dddddddddd', 'assssssssss', 1, 'aaaaaaaaaaa'),
(12, '3', 'appointment invitation', 'none', 1, 'couple treatment');

-- --------------------------------------------------------

--
-- Table structure for table `webuser`
--

DROP TABLE IF EXISTS `webuser`;
CREATE TABLE IF NOT EXISTS `webuser` (
  `email` varchar(255) NOT NULL,
  `usertype` char(1) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `webuser`
--

INSERT INTO `webuser` (`email`, `usertype`) VALUES
('admin@edoc.com', 'a'),
('doctor@edoc.com', 'd'),
('patient@edoc.com', 'p'),
('emhashenudara@gmail.com', 'p'),
('emzo@gmail.com', 'p'),
('wngalu@gmail.com', 'p'),
('john@gmail.com', 'd'),
('mama@gmail', 'p'),
('joe@gmail.com', 'p'),
('mike@gmail.com', 'p');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
