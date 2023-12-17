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
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `order_time` datetime(6) DEFAULT NULL,
  `payment_method` enum('COD','CREDIT_CARD','PAYPAL','RAZORPAY') DEFAULT NULL,
  `product_cost` float NOT NULL,
  `shipping_cost` float NOT NULL,
  `subtotal` float NOT NULL,
  `tax` float NOT NULL,
  `total` float NOT NULL,
  `status` enum('CANCELLED','DELIVERED','NEW','PACKAGED','PAID','PICKED','PROCESSING','REFUNDED','RETURNED','RETURN_REQUESTED','SHIPPING') DEFAULT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `address_line_1` varchar(64) NOT NULL,
  `address_line_2` varchar(64) DEFAULT NULL,
  `city` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  `postal_code` varchar(10) NOT NULL,
  `country` varchar(45) NOT NULL,
  `deliver_days` int NOT NULL,
  `deliver_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKpxtb8awmi0dk6smoh2vp1litg` (`customer_id`),
  CONSTRAINT `FKpxtb8awmi0dk6smoh2vp1litg` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (2,37,'2023-12-16 23:29:15.413000','COD',100,0,900,0,900,'SHIPPING','Akhil','S Nair','08921098467','Shivapriya (h)','Vallamkulam p.o','Thiruvalla','Kerala','689541','India',2,'2023-12-05 00:00:00.000000'),(4,38,'2023-12-04 22:25:16.180000','COD',330,0,400.44,0,400.44,'SHIPPING','Akhil','S Nair','08921098467','Shivapriya (h)','Vallamkulam p.o','Thiruvalla','Kerala','689541','India',1,'2023-12-05 00:00:00.000000'),(5,38,'2023-12-04 22:26:08.699000','RAZORPAY',52,0,71.99,0,71.99,'PAID','Akhil','S Nair','08921098467','Shivapriya (h)','Vallamkulam p.o','Thiruvalla','Kerala','689541','India',1,'2023-12-05 22:26:08.700000'),(6,37,'2023-12-04 23:00:44.465000','RAZORPAY',330,0,400.44,0,400.44,'SHIPPING','Akhil','S Nair','08921098467','Shivapriya (h)','Vallamkulam p.o','Thiruvalla','Kerala','689541','India',1,'2023-12-05 23:00:44.465000'),(7,38,'2023-12-04 23:05:08.648000','RAZORPAY',610,0,731.16,0,731.16,'PAID','Akhil','S Nair','08921098467','Shivapriya (h)','Vallamkulam p.o','Thiruvalla','Kerala','689541','India',1,'2023-12-05 00:00:00.000000'),(8,37,'2023-12-05 19:31:24.048000','COD',200,0,1800,0,1800,'NEW','Akhil','S Nair','08921098467','Shivapriya (h)','Vallamkulam p.o','Thiruvalla','Kerala','689541','India',1,'2023-12-06 19:31:24.048000'),(9,37,'2023-12-08 10:20:24.646000','RAZORPAY',0,0,163.95,0,163.95,'RETURN_REQUESTED','Akhil','S Nair','08921098467','Shivapriya (h)','Vallamkulam p.o','Thiruvalla','Kerala','689541','India',1,'2023-12-09 00:00:00.000000'),(10,37,'2023-12-08 15:11:07.992000','COD',418,0,598,0,598,'CANCELLED','Akhil','S Nair','08921098467','Shivapriya (h)','Vallamkulam p.o','Thiruvalla','Kerala','689541','India',1,'2023-12-09 00:00:00.000000'),(11,2,'2023-12-16 23:29:15.504000','COD',235,30,327.9,0,357.9,'PROCESSING','Lorraine','Allbright','781-434-1947','2320  Romano Street','','Cambridge','Massachusetts','2142','United States',3,'2023-12-16 23:29:15.504000'),(12,1,'2023-12-16 23:29:15.539000','CREDIT_CARD',511,10,599,0,609,'NEW','Anh','Le Hoang','09123456789','30 Do Huy Uyen','Son Tra district','Da Nang','','550000','Vietnam',1,'2023-12-16 23:29:15.539000');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-17 18:27:21
