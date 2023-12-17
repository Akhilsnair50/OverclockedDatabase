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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(128) NOT NULL,
  `enabled` bit(1) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `password` varchar(64) NOT NULL,
  `photos` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_6dotkott2kjsp8vw4d0m25fb7` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'akhil@gmail.com',_binary '','akhil','s nair','$2a$10$vjPtg5VGM4MmODrrucoyeO/HQTFrQZYCSk5Vrpb/7nyg0W1Qwih0.','Bruce Kitchell.png'),(4,'akhilsnair50@gmail.com',_binary '','Akhil','Nair','$2a$10$oao.U.SNoK8QwKkXeGnqC.9Gjvl3.o3BxpU1ntl4S8JqpHrmo1iyy','Dave Kumar.png'),(6,'sreesankar@gmail.com',_binary '','sreesankar','s','12345678',NULL),(13,'sreelathap@gmail.com',_binary '','sreelatha','parameswar','$2a$10$ip7TVjbTBQtl8CqCngsDt.zJPHOaagC1PUaTRr27Cb3rYDjZg1nU2',NULL),(16,'kichu@gmail.com',_binary '','kichu','menon','$2a$10$HJdU2S8TxXzMRNBiv5mtSuTl2PDlmp3/..6uGFZATPOR38k869OWW','Anna Maria.jpg'),(17,'editor@gmail.com',_binary '','editor','editor','$2a$10$HU6b3OT5W82tGHYaq4n0huiK962C.l8nLlnRU02qp31kp5yfHr0W.',NULL),(19,'editor123@gmail.com',_binary '','editor','editorq','$2a$10$MCXbiCEj639PIeQkTcMDXuf6uk4F81R6boKo8JZLVB/ZTX1hnX7pG','apple.png'),(20,'shipper@gmail.com',_binary '','shipper','editor','$2a$10$FFvxi6uGVNnGXvzB475A5u9p0/ha.2Cnyo8MX2ik6NFiZ5T6Oh8dq','Screenshot 2023-10-25 202634.png'),(21,'madhav@gmail.com',_binary '','madhav','menon','$2a$10$zoYiiN1d1u5QdsNZGzdsquY8.IxfqstUMP8BcEVgxc8wT0hVwQhCC','passportsize.jpg'),(22,'playstation@gmail.com',_binary '','ps','ps','$2a$10$FVYJH.5fPha0eRcWY248Rep/G5xqFFoNZKqU9J8u0wUojDZptUXPe','51txqozwg9L._SX679_.jpg'),(23,'admin@gmail.com',_binary '\0','akhil','s nair','1234',NULL),(24,'Ravi@gmail.com',_binary '\0','ravi','subru','1234',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
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
