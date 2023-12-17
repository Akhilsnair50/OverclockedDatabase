-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: overclocked
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addresses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `address_line_1` varchar(64) NOT NULL,
  `address_line_2` varchar(64) DEFAULT NULL,
  `city` varchar(45) NOT NULL,
  `default_address` bit(1) DEFAULT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `postal_code` varchar(10) NOT NULL,
  `state` varchar(45) NOT NULL,
  `country_id` int DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKn3sth7s3kur1rafwbbrqqnswt` (`country_id`),
  KEY `FKhrpf5e8dwasvdc5cticysrt2k` (`customer_id`),
  CONSTRAINT `FKhrpf5e8dwasvdc5cticysrt2k` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  CONSTRAINT `FKn3sth7s3kur1rafwbbrqqnswt` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (1,'5','234','Tobie',_binary '','19094644166','4213  Gordon Street','','Chino','California',91710,1),(2,'5','106','Adri',_binary '','04426585493','28, Ebenezer Street, Pudur, Ambattur','','Chennai','Tamil Nadu',600053,0),(3,'7','199','Chan',_binary '','068900012','28 Ayer Rajah Cresent #05-01','Ayer Rajah Indu','Singapore','',139959,0),(4,'34','234','Robert',_binary '','703-325-3192','92  Golf Course Drive','','Alexandria','Virginia',22303,0),(5,'18','234','Juanita',_binary '','608-827-2230','256  Irish Lane','','Verona','Wisconsin',53593,0),(6,'16','199','Bao',_binary '','068601449','30 Tuas Ave 2, 639461','','Singapore','',639461,0),(7,'14','106','Hastimukha',_binary '','02224033183','44 New Nehru Nagar Hsg Society Gr Floor','Feet Road, Opp ','Mumbai','Maharashtra',400017,1),(8,'14','106','Varun',_binary '','01126910573','B 9, Lajpat Nagar','',' Bangalore','Karnataka',110024,0),(9,'25','242','Diep',_binary '','0909102509','56 Cu Lao St., Ward 2','Phu Nhuan Distr','Ho Chi Min','',71011,0),(10,'4','39','Bryan',_binary '','905-513-6645','1331  Harvest Moon Dr','','Unionville','Ontario',0,0);
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-17 18:27:23
