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
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `country_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKskkdphjml9vjlrqn4m5hi251y` (`country_id`),
  CONSTRAINT `FKskkdphjml9vjlrqn4m5hi251y` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=310 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'Ha Noi',242),(2,'Da Nang',242),(3,'New York',234),(4,'California',234),(5,'Ho Chi Minh City',242),(6,'Hai Phong',242),(7,'Bac Giang',242),(8,'Son La',242),(9,'Quang Ninh',242),(10,'Nghe An',242),(12,'Utah',234),(13,'Washington',234),(14,'Florida',234),(15,'Illinois',234),(16,'Texas',234),(18,'Colorado',234),(19,'Alaska',234),(20,'Can Tho',242),(22,'Binh Duong',242),(23,'Thanh Hoa',242),(24,'Andhra Pradesh',106),(25,'Arunachal Pradesh',106),(27,'Bihar',106),(28,'Haryana',106),(29,'Himacha Pradesh',106),(30,'Karnataka',106),(31,'Maharashtra',106),(32,'Meghalaya',106),(33,'Punjab',106),(34,'Tamil Nadu',106),(35,'Telangana',106),(36,'Uttar Pradesh',106),(37,'West Bengal',106),(38,'Bac Ninh',242),(40,'Ha Tinh',242),(41,'Hue',242),(42,'Binh Dinh',242),(43,'An Giang',242),(44,'Blackpool',78),(45,'London',78),(46,'Liverpool',78),(47,'Manchester',78),(48,'Newcastle',78),(49,'Bristol',78),(50,'Cambridge',78),(51,'Lang Son',242),(52,'Delhi',106),(53,'Hawaii',234),(54,'Georgia',234),(55,'Pennsylvania',234),(56,'Virginia',234),(57,'Arizona',234),(59,'Kerala',106),(60,'Rajasthan',106),(61,'Odisha',106),(62,'Mizoram',106),(63,'Sikkim',106),(64,'Manipur',106),(65,'Nagaland',106),(66,'Tripura',106),(67,'Jharkhand',106),(68,'Uttarakhand',106),(69,'Goa',106),(70,'Madhya Pradesh',106),(71,'Gujarat',106),(72,'Massachusetts',234),(73,'Indiana',234),(74,'Michigan',234),(75,'Ohio',234),(76,'New Jersey',234),(77,'Minnesota',234),(78,'North Carolina',234),(79,'Oregon',234),(80,'Maryland',234),(81,'Tennessee',234),(82,'Montana',234),(83,'Maine',234),(84,'Alabama',234),(85,'Wisconsin',234),(86,'Louisiana',234),(87,'Connecticut',234),(88,'Missouri',234),(89,'South Carolina',234),(90,'Mississippi',234),(91,'New Mexico',234),(92,'Nevada',234),(93,'Kentucky',234),(94,'Arkansas',234),(95,'Wyoming',234),(96,'Kansas',234),(97,'Delaware',234),(98,'Iowa',234),(99,'Idaho',234),(100,'Nebraska',234),(101,'Rhode Island',234),(102,'Vermont',234),(103,'South Dakota',234),(104,'New Hamsphire',234),(105,'West Virginia',234),(106,'North Dakota',234),(107,'Oklahoma',234),(109,'Nam Dinh',242),(110,'Khanh Hoa',242),(112,'Tay Ninh',242),(113,'Kien Giang',242),(114,'Lai Chau',242),(115,'Lao Cai',242),(116,'Ha Giang',242),(117,'Hoa Binh',242),(118,'Thai Binh',242),(119,'Dong Nai',242),(120,'Soc Trang',242),(121,'Bac Lieu',242),(123,'Ca Mau',242),(124,'Quang Binh',242),(125,'Quang Tri',242),(126,'Quang Nam',242),(127,'Quang Ngai',242),(128,'Gia Lai',242),(129,'Vinh Phuc',242),(130,'Lam Dong',242),(131,'Dak Lak',242),(132,'Phu Yen',242),(133,'Binh Phuoc',242),(134,'Dak Nong',242),(135,'Dong Thap',242),(136,'Hau Giang',242),(137,'Ba Ria Vung Tau',242),(138,'Binh Thuan',242),(139,'Hai Duong',242),(140,'Hung Yen',242),(141,'Thai Nguyen',242),(142,'Long An',242),(143,'Ben Tre',242),(144,'Bac Kan',242),(145,'Ninh Binh',242),(146,'Kon Tum',242),(147,'Tra Vinh',242),(148,'Yen Bai',242),(149,'Tuyen Quang',242),(150,'Phu Tho',242),(151,'Vinh Long',242),(152,'New South Wales',14),(153,'Queensland',14),(154,'Tasmania',14),(155,'Western Australia',14),(156,'Victoria',14),(157,'South Australia',14),(158,'Ontario',39),(159,'Quebec',39),(160,'Nova Scotia',39),(161,'New Brunswick',39),(162,'Manitoba',39),(163,'British Columbia',39),(164,'Prince Edward Island',39),(165,'Saskatchewan',39),(166,'Alberta',39),(167,'Newfoundland and Labrador',39),(168,'Grand Est',76),(169,'Hauts-de-France',76),(170,'Normandy',76),(171,'Nouvelle-Aquitaine',76),(172,'Occitanie',76),(173,'Brittany',76),(174,'Centre-Val de Loire',76),(175,'Corsica',76),(176,'French Guiana',76),(177,'Guadeloupe',76),(178,'Île-de-France',76),(179,'Martinique',76),(180,'Mayotte',76),(181,'Pays de la Loire',76),(182,'Provence-Alpes-Côte d\'Azur',76),(183,'Réunion',76),(184,'Aichi',115),(185,'Akita',115),(186,'Chiba',115),(187,'Ehime',115),(188,'Fukui',115),(189,'Fukuoka',115),(190,'Fukushima',115),(191,'Gunma',115),(192,'Kobe',115),(193,'Hiroshima',115),(194,'Hokkaido',115),(195,'Ishikawa',115),(196,'Kagawa',115),(197,'Kochi',115),(198,'Kyoto',115),(199,'Nagasaki',115),(200,'Okinawa',115),(201,'Osaka',115),(202,'Saga',115),(203,'Tokushima',115),(204,'Tokyo',115),(205,'Yamagata',115),(206,'Yamaguchi',115),(207,'Yamanashi',115),(208,'Greater Poland',180),(209,'Kuyavia-Pomerania',180),(210,'Lesser Poland',180),(211,'Łódź',180),(212,'Lower Silesia',180),(213,'Lublin',180),(214,'Lubusz',180),(215,'Masovia',180),(216,'Opole',180),(217,'Podlaskie',180),(218,'Pomerania',180),(219,'Silesia',180),(220,'Subcarpathia',180),(221,'Holy Cross Province',180),(222,'Warmia-Masuria',180),(223,'West Pomerania',180),(224,'Baden-Württemberg',58),(225,'Bavaria',58),(226,'Berlin',58),(227,'Brandenburg',58),(228,'Bremen',58),(229,'Hamburg',58),(230,'Hesse',58),(231,'Lower Saxony',58),(232,'Mecklenburg-Vorpommern',58),(233,'North Rhine- Westphalia',58),(234,'Rhineland-Palatinate',58),(235,'Saarland',58),(236,'Saxony',58),(237,'Saxony-Anhalt',58),(238,'Schleswig-Holstein',58),(239,'Thuringia',58),(240,'Acre',32),(241,'Alagoas',32),(242,'Amapá',32),(243,'Amazonas',32),(244,'Bahia',32),(245,'Ceará',32),(246,'Distrito Federal',32),(247,'Espírito Santo',32),(248,'Goiás',32),(249,'Maranhão',32),(250,'Mato Grosso',32),(251,'Minas Gerais',32),(252,'Pará',32),(253,'Paraíba',32),(254,'Paraná',32),(255,'Pernambuco',32),(256,'Piauí',32),(257,'Rio de Janeiro',32),(258,'Rio Grande do Norte',32),(259,'Rio Grande do Sul',32),(260,'Rondônia',32),(261,'Roraima',32),(262,'Santa Catarina',32),(263,'São Paulo',32),(264,'Sergipe',32),(265,'Tocantins',32),(266,'Adana',226),(267,'Adıyaman',226),(268,'Ankara',226),(269,'Balıkesir',226),(270,'Bilecik',226),(271,'Bingöl',226),(272,'Bursa',226),(273,'Çanakkale',226),(274,'Çankırı',226),(275,'Çorum',226),(276,'Denizli',226),(277,'Diyarbakır',226),(278,'Edirne',226),(279,'Erzurum',226),(280,'Gaziantep',226),(281,'Giresun',226),(282,'Hakkâri',226),(283,'Hatay',226),(284,'Isparta',226),(285,'Istanbul',226),(286,'Konya',226),(287,'Malatya',226),(288,'Manisa',226),(289,'Iğdır',226),(290,'Karaman',226),(291,'Osmaniye',226),(292,'Tokat',226),(293,'Sivas',226),(294,'Sinop',226),(295,'Siirt',226),(296,'Batman',226),(297,'Kilis',226),(298,'Rize',226),(299,'Ordu',226),(300,'Tunceli',226),(301,'Yozgat',226),(302,'Van',226),(303,'Bayburt',226),(304,'Yalova',226),(305,'Samsun',226),(306,'Sakarya',226),(307,'Assam',106),(309,'Punjab',1);
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-17 18:27:22
