-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.22 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             11.1.0.6116
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for manufactured
CREATE DATABASE IF NOT EXISTS `manufactured` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `manufactured`;

-- Dumping structure for table manufactured.company_info
CREATE TABLE IF NOT EXISTS `company_info` (
  `company_id` int NOT NULL AUTO_INCREMENT,
  `company_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`company_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Data exporting was unselected.

-- Dumping structure for table manufactured.vehicle
CREATE TABLE IF NOT EXISTS `vehicle` (
  `vehicle_id` int NOT NULL AUTO_INCREMENT,
  `company_id` int DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `model_no` varchar(50) DEFAULT NULL,
  `manufactured_date` date DEFAULT NULL,
  `no_of_wheels` int DEFAULT NULL,
  `torque` varchar(50) DEFAULT NULL,
  `brake_horse_power` varchar(50) DEFAULT NULL,
  `max_speed` int DEFAULT NULL,
  `max_acceleration` int DEFAULT NULL,
  `run` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`vehicle_id`) USING BTREE,
  KEY `FK__vehicle_role` (`role_id`),
  KEY `FK_vehicle_company_info` (`company_id`),
  CONSTRAINT `FK__vehicle_role` FOREIGN KEY (`role_id`) REFERENCES `vehicle_role` (`role_id`),
  CONSTRAINT `FK_vehicle_company_info` FOREIGN KEY (`company_id`) REFERENCES `company_info` (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Data exporting was unselected.

-- Dumping structure for table manufactured.vehicle_role
CREATE TABLE IF NOT EXISTS `vehicle_role` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `role_type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Data exporting was unselected.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
