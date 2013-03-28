-- phpMyAdmin SQL Dump
-- version 3.5.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 28, 2013 at 02:17 PM
-- Server version: 5.1.66-0+squeeze1
-- PHP Version: 5.3.3-7+squeeze14

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cv`
--
CREATE DATABASE `cv` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cv`;

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE IF NOT EXISTS `about` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(50) NOT NULL,
  `web` varchar(100) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `about` text NOT NULL,
  `github` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `full_name`, `web`, `tel`, `about`, `github`, `email`) VALUES
(1, 'Andrew Arnautov', 'www.dream-clouds.com', '+447423631109', 'Wrote my first code in Basic at the age of 6. Over 10 years of commercial experience in IT with particular focus on WEB, database and CRM development. Familiar with the process of converting business requirements into architecture and design. Possess team leadership experience and abilities', 'https://github.com/ArniDzhan', 'arni@dream-clouds.com');

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE IF NOT EXISTS `education` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `job` varchar(50) NOT NULL,
  `date_start` year(4) NOT NULL,
  `date_end` year(4) NOT NULL,
  `blob` text NOT NULL,
  `link` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `company`, `city`, `job`, `date_start`, `date_end`, `blob`, `link`) VALUES
(2, 'Rigas International School of Economics and Business Administration', 'Riga, Latvia', 'Bachelor of Science', 2001, 2007, '<ul>\r\n<li><span style="font-weight: bold">Majors:</span> Applied mathematics, Business communications.</li>\r\n<li><span style="font-weight: bold">Minor:</span> c++ programming.</li> \r\n<li><span style="font-weight: bold">Senior Project:</span> Artificial intelligence, intellectual agents.</li>\r\n</ul>', 'http://www.riseba.lv/en/');

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE IF NOT EXISTS `position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `job` varchar(50) NOT NULL,
  `date_start` year(4) NOT NULL,
  `date_end` year(4) NOT NULL,
  `blob` text NOT NULL,
  `link` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`id`, `company`, `city`, `job`, `date_start`, `date_end`, `blob`, `link`) VALUES
(4, 'AskMe', 'Riga, Latvia', 'startup', 2012, 2013, '<ul><li>Coined the concept, created software architecture, technical and functional design, both front and back end programming.</li>\r\n<li>Technology: PHP, HTML5, CSS, JavaScript, KineticJS, Canvas, jQuery, Cassandra, Debian, FaceBook API, TimeDoctor, MySQL, Apache, Wordpress, NetBeans IDE, GitHub, Kohana.</li></ul>', 'feud.dream-clouds.com'),
(5, 'DreamClouds', 'Riga, Latvia', 'startup', 2010, 2012, 'Coined the concept, created software architecture, technical and functional design, hired and managed international team, organized effective virtual office environment, worked with investors and EU funds, attended to conference, coded functions, setup and administrated servers, managed every other aspect of the startup. \r\n\r\nTechnology: Kohana, Datastax Enterprise, Cassandra, SQL, MySQL, Hadoop MapReduce, Hive, PHP, HTML, CSS, JavaScript, jQuery, Debian, FaceBook API, GoogleMaps API, TimeDoctor, NetBeans IDE, SVN, Jenkins, JIRA, Yammer.\r\n', 'www.dream-clouds.com'),
(6, 'Freelance', 'Riga, Latvia', 'developer', 2009, 2010, 'Architected and developed a solution for real estate Company using CMS system. (http://www.apella.lv/)\r\n\r\nConducted IT audit, business analysis and development of a solution for hotel aggregator startup.\r\n\r\nTechnology: LAMP, HTML, CSS, JavaScript, Typo3 CMS, iRealty CMS, GoogleMaps API, Ajax, jQuery.', ''),
(7, 'Qube/Connecta', 'Riga, Latvia', 'Team lead', 2008, 2009, 'Project: Gambro event’s ROI evaluation tool (http://www.gambro.com).\r\nMain responsibilities:\r\n•	Team Lead\r\n•	Business analysis\r\n•	Architecture\r\n•	Technical design\r\n•	Programming\r\n•	Deployment planning and execution\r\n\r\nTechnology: Siebel 7.8/8.0, Microsoft Access/Excel 2003, VBA, HTML, CSS, JavaScript, LAMP, SQL, Ajax, jQuery, Django.\r\n', 'http://www.qube.lv/ / http://www.connecta.se/'),
(8, 'Accenture Riga DC', 'Riga, Latvia', 'Senior developer', 2007, 2008, 'Project: YIT CRM Solution. \r\nMain responsibilities were:\r\n•	Data conversion expert\r\n•	Technical design\r\n•	Implementation and testing of data conversion tools\r\n•	Data loads execution\r\n•	Deployment planning and execution\r\n•	Design documentation maintenance\r\n•	E-script, VB, SQL coding\r\n•	Installing and configuring Data Quality module\r\n\r\nTechnology: Siebel 7.8(e-script), SQL Server 2005, MS Access/Excel tools with VBA coding.\r\n', 'http://www.accenture.com'),
(9, 'INDI', 'Riga, Latvia', 'Developer', 2006, 2007, 'CRM system development for tour agency “INDI”. \r\nMain responsibilities were:\r\n•	Overall project planning and day-to-day operative project management\r\n•	Technical and functional architecture, design\r\n•	Schedule, effort and quality of the work done by contract team\r\n•	Project status reporting and communication within contract team\r\n•	Follow-up of progress, status and budget reporting\r\n•	VB coding and code overview\r\n\r\nTechnology: MS Access, VBA.\r\n', 'http://www.indi.lv'),
(10, 'INDI', 'Riga, Latvia', 'Administrator/developer', 2003, 2007, 'Worked as database/network administrator and advertisement designer. Main tasks were:\r\n•	Network administration\r\n•	Database administration (MS Access)\r\n•	Design of advertisement\r\n\r\nTechnology: MS Access, Windows, Corel Draw.', 'http://www.indi.lv'),
(11, 'INDI', 'Riga, Latvia', 'Developer', 2002, 2003, 'WEB site development. (www.indi.lv)\r\nMain tasks were:\r\n•	Overall and day-to-day project co-management\r\n•	Schedule, effort and quality of the work done by contract team\r\n•	Follow-up of progress, status and budget reporting\r\n•	HTML, PHP, JavaScript coding and code overview\r\n\r\nTechnology: LAMP, HTML, JavaScript, CSS.', 'http://www.indi.lv');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE IF NOT EXISTS `projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `look` varchar(50) NOT NULL,
  `code` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `look`, `code`) VALUES
(1, 'DreamClouds', 'http://www.dream-clouds.com', ''),
(2, 'AskMe', 'http://feud.dream-clouds.com', ''),
(3, 'Online CV', 'http://92.63.81.79/temp/', '');

-- --------------------------------------------------------

--
-- Table structure for table `skills_other`
--

CREATE TABLE IF NOT EXISTS `skills_other` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `blob` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `skills_other`
--

INSERT INTO `skills_other` (`id`, `name`, `blob`) VALUES
(1, 'Languages', 'Russian, English, Latvian.'),
(2, 'Interests', 'Tennis,Squash<br />\r\nPhysics<br />\r\nChess<br />\r\nSkiing/Snowboarding<br />\r\nWindserfing<br />');

-- --------------------------------------------------------

--
-- Table structure for table `skills_tech`
--

CREATE TABLE IF NOT EXISTS `skills_tech` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(20) NOT NULL,
  `percent` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `skills_tech`
--

INSERT INTO `skills_tech` (`id`, `language`, `percent`) VALUES
(1, 'PHP', 85),
(2, 'Cassandra(NoSQL)', 90),
(3, 'JavaScript', 70),
(4, 'CSS', 40);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
