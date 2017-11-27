-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.26-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for pharmnet
CREATE DATABASE IF NOT EXISTS `pharmnet` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `pharmnet`;

-- Dumping structure for table pharmnet.gp_dbt
CREATE TABLE IF NOT EXISTS `gp_dbt` (
  `GPID` int(6) NOT NULL AUTO_INCREMENT,
  `ID_Sup` int(3) DEFAULT NULL,
  `ID_Inv` int(1) DEFAULT NULL,
  `DocNum` bigint(11) DEFAULT NULL,
  `DocSum` varchar(10) DEFAULT NULL,
  `DocCurrency` varchar(3) DEFAULT NULL,
  `DueDate` varchar(23) DEFAULT NULL,
  `UserID` int(1) DEFAULT NULL,
  `USERID_CH` int(1) DEFAULT NULL,
  `USERID_DATE` varchar(23) DEFAULT NULL,
  `Comment` varchar(36) DEFAULT NULL,
  `bank` varchar(16) DEFAULT NULL,
  `pay_date` varchar(11) DEFAULT NULL,
  `Payment` varchar(10) DEFAULT NULL,
  `SWIFT` varchar(10) DEFAULT NULL,
  `A_USERID` int(1) DEFAULT NULL,
  `A_USERID_CH` int(1) DEFAULT NULL,
  `A_USERID_DATE` varchar(50) DEFAULT NULL,
  `P_USERID` int(2) DEFAULT NULL,
  `P_USERID_CH` int(1) DEFAULT NULL,
  `P_USERID_DATE` varchar(23) DEFAULT NULL,
  `F_USERID` int(2) DEFAULT NULL,
  `F_USERID_CH` int(1) DEFAULT NULL,
  `F_USERID_DATE` varchar(23) DEFAULT NULL,
  PRIMARY KEY (`GPID`)
) ENGINE=InnoDB AUTO_INCREMENT=105790 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table pharmnet.gp_inv
CREATE TABLE IF NOT EXISTS `gp_inv` (
  `ID_Inv` int(11) NOT NULL,
  `GP_InvName` text NOT NULL,
  PRIMARY KEY (`ID_Inv`),
  KEY `ID_Inv` (`ID_Inv`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

-- Data exporting was unselected.
-- Dumping structure for table pharmnet.gp_status
CREATE TABLE IF NOT EXISTS `gp_status` (
  `CH_TYPE` int(1) NOT NULL AUTO_INCREMENT,
  `Status_TYPE` varchar(12) DEFAULT NULL,
  `Status_COLOR` varchar(6) DEFAULT NULL,
  `GP_USERGROUPID` int(1) DEFAULT NULL,
  PRIMARY KEY (`CH_TYPE`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table pharmnet.gp_supplier
CREATE TABLE IF NOT EXISTS `gp_supplier` (
  `ID_Sup` int(3) NOT NULL,
  `GP_SupName` varchar(59) DEFAULT NULL,
  `GP_Sup_Bul` bigint(10) DEFAULT NULL,
  `GP_SupDate` varchar(19) DEFAULT NULL,
  PRIMARY KEY (`ID_Sup`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table pharmnet.gp_usergroup
CREATE TABLE IF NOT EXISTS `gp_usergroup` (
  `GP_USERGROUPID` int(11) NOT NULL,
  `GP_GROUPNAME` text NOT NULL,
  `GP_GROUPDATE` datetime NOT NULL,
  PRIMARY KEY (`GP_USERGROUPID`),
  UNIQUE KEY `GP_USERGROUPID` (`GP_USERGROUPID`),
  KEY `GP_USERGROUPID_2` (`GP_USERGROUPID`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

-- Data exporting was unselected.
-- Dumping structure for table pharmnet.gp_users
CREATE TABLE IF NOT EXISTS `gp_users` (
  `GP_USERID` int(11) NOT NULL,
  `GP_USERNAME` text NOT NULL,
  `GP_USERDATE` datetime NOT NULL,
  `GP_USERPASS` text NOT NULL,
  `GP_USERGROUPID` int(11) NOT NULL,
  PRIMARY KEY (`GP_USERID`),
  UNIQUE KEY `GP_USERID` (`GP_USERID`),
  KEY `GP_USERID_2` (`GP_USERID`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

-- Data exporting was unselected.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
