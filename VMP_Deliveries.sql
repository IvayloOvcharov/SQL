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


-- Dumping database structure for vmp
CREATE DATABASE IF NOT EXISTS `vmp` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `vmp`;

-- Dumping structure for table vmp.deliveries
CREATE TABLE IF NOT EXISTS `deliveries` (
  `Del_ID` int(11) NOT NULL AUTO_INCREMENT,
  `VMP_Name` char(50) DEFAULT NULL,
  `VMP_Code` int(11) NOT NULL DEFAULT '0',
  `Tank_Num` int(30) DEFAULT '0',
  `Article` char(50) DEFAULT NULL,
  `Start_Time` char(50) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `End_Time` char(50) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Tank_Volume` double NOT NULL DEFAULT '0',
  `Tank_Volume_15` double NOT NULL DEFAULT '0',
  `Doc_Volume_15` double NOT NULL DEFAULT '0',
  `Temperature` double NOT NULL DEFAULT '0',
  `Density` double NOT NULL DEFAULT '0',
  `Doc_Num` char(50) NOT NULL DEFAULT '0',
  `Doc_Time` char(50) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Provider` char(50) DEFAULT NULL,
  `Truck_Temp` char(50) DEFAULT NULL,
  `Truck_Dencity` char(50) DEFAULT NULL,
  `Truck_Volume_15` char(50) DEFAULT NULL,
  `AvgDencity` double DEFAULT NULL,
  `Sales_By_levelMeter` double DEFAULT NULL,
  `Truck_Start_TIME` char(50) DEFAULT NULL,
  `Truck_Sales` char(50) DEFAULT NULL,
  `Truck_End_Time` char(50) DEFAULT NULL,
  `Actual_Date_Only` char(50) DEFAULT NULL,
  PRIMARY KEY (`Del_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1551 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table vmp.obects
CREATE TABLE IF NOT EXISTS `obects` (
  `VMP_ID` int(11) NOT NULL AUTO_INCREMENT,
  `VMP_NAME` char(50) CHARACTER SET latin1 DEFAULT NULL,
  `VMP_NUM` int(11) DEFAULT NULL,
  PRIMARY KEY (`VMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table vmp.sales
CREATE TABLE IF NOT EXISTS `sales` (
  `Sale_ID` int(11) NOT NULL AUTO_INCREMENT,
  `VMP_Name` char(50) DEFAULT NULL,
  `VMP_Code` int(11) DEFAULT '0',
  `Nozzle_Num` int(11) DEFAULT '0',
  `Article` char(50) DEFAULT NULL,
  `Temperature` double DEFAULT '0',
  `Quantity` double DEFAULT '0',
  `Sum` double DEFAULT '0',
  `Pay_Time` char(50) DEFAULT NULL,
  `Pay_Type` int(11) DEFAULT NULL,
  `Operator` char(50) DEFAULT NULL,
  PRIMARY KEY (`Sale_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=352235 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table vmp.users
CREATE TABLE IF NOT EXISTS `users` (
  `User_ID` int(11) NOT NULL AUTO_INCREMENT,
  `User_Name` char(50) CHARACTER SET latin1 NOT NULL,
  `User_Password` char(50) CHARACTER SET latin1 NOT NULL,
  `User_lvl` int(11) NOT NULL,
  `User_VMP` int(11) DEFAULT NULL,
  PRIMARY KEY (`User_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf16le;

-- Data exporting was unselected.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
