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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `password` varchar(64) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `address_line1` varchar(64) NOT NULL,
  `address_line_2` varchar(64) DEFAULT NULL,
  `city` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  `country_id` int DEFAULT NULL,
  `postal_code` varchar(10) NOT NULL,
  `created_time` datetime(6) DEFAULT NULL,
  `enabled` bit(1) NOT NULL,
  `verification_code` varchar(64) DEFAULT NULL,
  `authentication_type` enum('DATABASE','FACEBOOK','GOOGLE') DEFAULT NULL,
  `reset_password_token` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_rfbvkrffamfql7cjmen8v976v` (`email`),
  KEY `FK7b7p2myt0y31l4nyj1p7sk0b1` (`country_id`),
  CONSTRAINT `FK7b7p2myt0y31l4nyj1p7sk0b1` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'lehoanganhvn@gmail.com','$2a$10$ZQdbl6XeG/Z3frq.iJxnyucOhaoLhaa5BocnHnZKRPAntcZqQR9bu','Anh','Le Hoang','09123456789','30 Do Huy Uyen','Son Tra district','Da Nang','',242,'550000','2020-10-09 03:18:58.000000',_binary '',NULL,'DATABASE',NULL),(2,'lorraine.allbright@outlook.com','$2a$10$II70xzaNTXp8WjJgGBq5k.xiDd8qiTp1yGPaCULGVeHtej/Hieb4O','Lorraine','Allbright','781-434-1947','2320  Romano Street','','Cambridge','Massachusetts',234,'2142','2020-10-09 03:21:29.000000',_binary '',NULL,'DATABASE',NULL),(3,'nancy.bass2001@yahoo.com','$2a$10$iCc2M47GrRfzWV7/nrdZpuzkjLSxH5VEs1t02E55428eToiFo8pT6','Nancy','C Bass','519-791-4692','4703  Goyeau Ave','','Windsor','Ontario',39,'N9A 1H9','2020-10-09 03:24:42.000000',_binary '',NULL,'DATABASE',NULL),(4,'brian.purcell3@gmail.com','$2a$10$mHz6KD.k5OTuTw9JWsa8OOZiF8gWxFRw6tjzIMxrx6GuaF2d.bvxG','Brian','Purcell','604-269-1384','4103  Tolmie St','','Vancouver','British Columbia',39,'V6M 1Y8','2020-06-09 03:27:48.000000',_binary '',NULL,'DATABASE',NULL),(5,'tina.jamerson@gmail.com','$2a$10$zS.WEDVdrfraeTYXkh6kru0YT4dg14daWwxrPZKwImwt1S8I8Cbaa','Tina','D Jamerson','5139670375','934A  Small Street','Amish Country Byway','Berlin','Ohio',234,'44610','2020-10-09 03:29:39.000000',_binary '',NULL,'DATABASE',NULL),(6,'christopherseldonusa@gmail.com','$2a$10$kBu.WfmGeYpcp.gNCVosx.2PY6dhUahdjPolgSOvYjY4DcUWRtnUm','Christopher ','Seldon','214-407-6337','3087 Marietta Street','','Vallejo','California',234,'94590','2020-10-10 11:11:19.000000',_binary '',NULL,'DATABASE',NULL),(7,'alex.stevenson@outlook.com','$2a$10$og9uLgfaPjMbN0UQFPXQeeVhgfuArv3QQXLhM7ZfS4M.9j4Yp/Ksi','Alex','Stevenson','078 7586 952','56  Berkeley Rd','','Stretton-on-Dunsmore','',78,'CV23 3XN','2020-10-11 03:36:04.000000',_binary '',NULL,'DATABASE',NULL),(8,'ethan.k.john@gmail.com','$2a$10$8Zc6kveZk1FR0HzVUQK/DuSQWFf2oGujkmDreapVXW0BtfDchP0yG','Ethan','Jones','070 2534 460','101  Gordon Terrace','','Barton','',78,'SY14 4FH','2020-10-11 03:38:09.000000',_binary '',NULL,'DATABASE',NULL),(9,'pandu.shan03@gmail.com','$2a$10$Iybz9lJhA6FoeO7tviEWIuLaO4fC9lwjiiHwKCD0B5q4DLJ066mVW','Pandu','Shan','042375292','B 3/12, Part 1','','Delhi','Delhi',106,'110009','2020-10-11 03:40:04.000000',_binary '',NULL,'DATABASE',NULL),(10,'ahjj.thaker2000@gmail.com','$2a$10$QKr/DFMbrX9ItxJCcTd.RuiD.H8BgsThxfZMEAmAas6yGOdJZkH9S','Ahjaja','Thaker','02228611610','Shop No 6, Gk Nagar No 3','Mahavir Darshan, Shankar Lane, Kandivali (west)','Mumbai','Maharashtra',106,'400067','2020-10-11 03:43:12.000000',_binary '',NULL,'DATABASE',NULL),(11,'meena.gara@yahoo.com','$2a$10$SF6oz1JICybgPDOdrnTjFODxJBlCcUfj.HRF.TanU2pdjFcIT3X7S','Meena','Gara','04023775438','53 Balanagar','','Hyderabad','Andhra Pradesh',106,'500042','2020-10-11 03:44:55.000000',_binary '',NULL,'DATABASE',NULL),(12,'jahnu.mishra@gmail.com','$2a$10$UIQGuwvF9WU3cge7cGHBge6aX6/dGRpwqD8GuCxBghTpDos9Hx9yW','Jahnu','Mishra','01125713815','112 Gagan Deep Building','Rajendra Place','Delhi','Delhi',106,'110008','2020-10-11 03:46:25.000000',_binary '',NULL,'DATABASE',NULL),(13,'saka.prakash@yahoo.com','$2a$10$Q.Ctg6lFyvVEJ7ZnIuCIZ.UK5RlXuY2Iwwru4x.n9gtptDuhVLxRu','Saka','Prakash','02223011775','B/7/a Bharat Ngr, Grant Road','','Mumbai','Maharashtra',106,'400007','2020-10-12 10:09:30.000000',_binary '\0',NULL,'DATABASE',NULL),(14,'gautam1988@gmail.com','$2a$10$nQjus79bd4dwNeEHTJ96U.Q7GIMffZQ7lqORWYv9VQQyh.9oqSgOK','Gautam','Nayak','02226200995','37 , Dhake Colony, J.p.rd, Andheri (west)','','Mumbai','Maharashtra',106,'400058','2020-10-12 10:10:50.000000',_binary '',NULL,'DATABASE',NULL),(15,'cheema1994@gmail.com','$2a$10$NNQmIhQn6V1ZR9VpIbQL6OLpiLF.dJ.8qTDegkD3ZiDeMmwjSCyRW','Avatar','Cheema','03322684941','181 /, th Floor, M G Road, Burrabazar','','Kolkata','West Bengal',106,'700007','2020-10-12 10:12:04.000000',_binary '',NULL,'DATABASE',NULL),(16,'jianzhou2000@gmail.com','$2a$10$QEOF7Xeue1enl9COCgB/deSu2DIewIlyEHGDm83hjpz3iNLkmD0sm','Jianhong','Zhou','65-6278 9444','456 Alexandra Road #16-02 NOL','Building Singapore 119962','Singapore','',199,'119962','2020-10-12 10:13:00.000000',_binary '',NULL,'DATABASE',NULL),(17,'sugeng1208@outlook.com','$2a$10$CVLvsCqcbzWcsRN/ZfGcAOr5wZAUIITu9kqG7.U2lWo4MgtIdITDa','Su','Geng','062566046','Braddell Tech 13 Lorong 8 Toa Payoh #04-01 319261','','Singapore','',199,'319261','2020-10-12 10:14:03.000000',_binary '',NULL,'DATABASE',NULL),(18,'alisa.willcox7@gmail.com','$2a$10$pBLzCgKPXfJsMiCHFB9BweUamtoJXnbPlh7eheH7zK02v/QW3UgPK','Alisa','Willcox','423-893-1283','1053  Broadway Avenue','','Chattanooga','Tennessee',234,'37421','2020-10-12 10:15:12.000000',_binary '',NULL,'DATABASE',NULL),(19,'chelsea.greener@gmail.com','$2a$10$cyrxmp9dwNhUAEYqPiMHHO6n9vvLqgS/tbcYjaeyIMekfd35pvnOm','Chelsea','Greener','(07) 4918 39','79 Masthead Drive','','Great Keepel Island','Queensland',14,'4700','2020-10-12 10:16:23.000000',_binary '',NULL,'DATABASE',NULL),(20,'spender.de.bavay@gmail.com','$2a$10$LQT8mw/ZGHz1W5pd4/iDyuNjwv7yJSKKJUXnXWf6xAB46M5wDUOVG','Spencer','De Bavay','(02) 6146 87','37 Grayson Street','','Matong','New South Wales',14,'2652','2020-10-12 10:17:27.000000',_binary '',NULL,'DATABASE',NULL),(21,'konig.daniela@gmail.com','$2a$10$E6g8TKWzT6wPyGma.O3SweI4mqEMQyavjiy/qUk9ayyAQ7/FN/eq.','Daniela','Konig','08274368060','Alt Reinickendorf 61','','Schwenningen','Baden-Württemberg',58,'72477','2020-10-16 04:20:15.000000',_binary '\0',NULL,'DATABASE',NULL),(22,'tannguyenminh@gmail.com','$2a$10$c9u299wIXYQ4GuNUtthJRO4/fxb/qaPXBIcgLqo.OzTqBM2e5Erm2','Tan','Nguyen Minh','0987667887','Ba Vi, Thanh Chuong','Soc Son','Ha Noi','Ha Noi',242,'142870','2020-11-12 14:35:37.000000',_binary '',NULL,'DATABASE',NULL),(23,'trangquynh269@gmail.com','$2a$10$pFQajpIUy38PV61fucqxmugLtQerPid3N1LvP2MsSlMMuUG283.Cm','Trang','Le Thi Quynh','0922664450','30 Do Huy Uyen','An Hai Bac district','Da Nang','Da Nang',242,'552000','2021-01-14 02:35:51.000000',_binary '',NULL,'DATABASE',NULL),(24,'nguyen.tuan.son@gmail.com','$2a$10$4YwxikvvFeDknQxWXoYHK.s0JicA2E1U4fjaomQ/tktD4Xx9R.Di6','Son','Nguyen Tuan','0984457819','123 Truc Bach','Tay Ho','Ha Noi','Hanoi',242,'127890','2021-01-10 02:40:58.000000',_binary '',NULL,'DATABASE',NULL),(25,'minhthu20@gmail.com','$2a$10$80H.3RSBQS1iT6hCJI56suOJFE.pBUx.DyhnmDv/ZjOGiJAQxjR6K','Thu','Trinh Minh','0977882312','14H8 Phan Van Truong','Cau Giay','Ha Noi','Hanoi',242,'113000','2020-01-14 02:56:08.000000',_binary '',NULL,'DATABASE',NULL),(26,'tran.thi.mai@gmail.com','$2a$10$YkVzbGU89318I2nL8z.NGeJN77.UJCavjY7PH7x3LfL1zIEOVzF7m','Mai','Tran Thi','0954876291','256A Vo Van Kiet','Phuoc My','Da Nang','Da Nang',242,'555000','2021-01-16 10:15:37.000000',_binary '',NULL,'DATABASE',NULL),(27,'nguyen.hoang.bach@gmail.com','$2a$10$G3RLX9mmiMafu0MxTomJp.43lX2khhp0IOKN4oZSDK689dRt71zGq','Bach','Nguyen Hoang','0910405069','620 Bach Dang','Hai Chau','Da Nang','Da Nang',242,'554000','2021-01-16 10:22:05.000000',_binary '\0',NULL,'DATABASE',NULL),(28,'ravi.kumar2009@gmail.com','$2a$10$yYkH67VJ6LVGScLHvxtyyOTCslPiY3ZM0SYArvur0JR8F6IlGy.Gu','Ravi','Kumar','026715849','M 55 2nd Floor, Part 2','','Delhi','Delhi',106,'110048','2020-05-16 10:28:38.000000',_binary '',NULL,'DATABASE',NULL),(29,'xue.hao.chu@gmail.com','$2a$10$suovD4HuFHy632QdAQnNTOwyTwHLs4NI8mT0gARBNxavM0IXl.HdW','Xue','Hao Chu','081005992','Choa Chu Kang Crescent, 683690','','Singapore','',199,'683690','2021-01-17 10:25:06.000000',_binary '',NULL,'DATABASE',NULL),(30,'mo.liang.237@gmail.com','$2a$10$JKIV3Hi4phMMKU/p2tqH8OXZaKNboZAwX6/nHdFoxWbeohie7NDuu','Mo','Liang','063237730','30 Robinson Road','#03-01B ROBINSON TOWERS','Singapore','',199,'048546','2020-04-12 10:35:37.000000',_binary '',NULL,'DATABASE',NULL),(31,'chan.ding.97@gmail.com','$2a$10$KlcH7aIiy/Hvt3NhCYbDH.toghsP2CbeBY7ZO9YT03o9dLkdNluBS','Chan','Ding','6567321372','260 Orchard Road, The Heeren','04-30/31 238855','Singapore','',199,'238855','2021-01-18 10:47:17.000000',_binary '',NULL,'DATABASE',NULL),(32,'zak.carey.91@gmail.com','$2a$10$E1IxQO8LTXWF0diVBB7bfOcwc8wwtWHu4dhRx3zkGemtcsb1Mf32G','Zak','Carey','0795602121','70 Guild Street','','London','',78,'N8 1HG','2021-01-20 11:03:49.000000',_binary '\0',NULL,'DATABASE',NULL),(33,'katherin.mc.knight@live.com','$2a$10$9ZbxZO2gJul3ups2FXU9se3vd3d5zn0VRXQnp0l1bS04dq3UHy5g2','Katherine','McKnight','8153287288','922  Emeral Dreams Drive','','Chicago','Illinois',234,'60601','2020-12-26 11:20:07.000000',_binary '',NULL,'DATABASE',NULL),(34,'pasty.aston.89@live.com','$2a$10$eISh5FVdov6DSOWeXpNeVeieJOwGe8gBC1zrLfKUKVqWrBFeIaMKy','Pasty','Aston','2129229661','1482  Rosewood Lane','','New York','New York',234,'10016','2020-05-26 11:34:41.000000',_binary '',NULL,'DATABASE',NULL),(35,'rekha.makavana@gmail.com','$2a$10$52Ah7rPRiReZ8FsQBRATfOlJl.XQfwGGaqa3vP6Z9uBKc7ADz7yCO','Rekha','Makavana','02226493101','Shop No 2, Shobhana Bldg.','Tilak Road, Opp. Dph, Santacruz (west)','Mumbai','Maharashtra',106,'400054','2020-09-01 09:26:20.000000',_binary '',NULL,'DATABASE',NULL),(36,'flynn.hackett.au@gmail.com','$2a$10$8oaaz3VHFE/PqpRMPnvABuWLZSl9lCT3plI8aMMejqJeVtv3bNUH.','Flynn','Hackett','073758521','19 Shirley Street','','Yatala','Queensland',14,'4207','2021-02-01 08:42:40.000000',_binary '',NULL,'DATABASE',NULL),(37,'akhilsnair50@gmail.com','','Akhil','S Nair','08921098467','Shivapriya (h)','Vallamkulam p.o','Thiruvalla','Kerala',106,'689541','2023-12-01 22:53:33.010000',_binary '',NULL,'GOOGLE',NULL),(38,'akhilsnair500@gmail.com','','Akhil','S Nair','08921098467','Shivapriya (h)','Vallamkulam p.o','Thiruvalla','Kerala',106,'689541','2023-12-04 22:24:50.892000',_binary '',NULL,'GOOGLE',NULL),(39,'sreesankar2526@gmail.com','$2a$10$sUdVdvIOxjpXdCNBDJlT2OCiZgl0bspBr//EmA1kSoW7izsuMv8.W','Sresankar','s s','6831797179','lshfladkja',';sfjslfjfks;','Adoor','Kerala',106,'691554','2023-12-05 19:33:34.498000',_binary '\0','i4e8EoGuTkH3AOm3qVSPZAWzUjzIAwYyYxS9KqR23F7ca3gxgQQonOE1YTjebmjO','DATABASE',NULL);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
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
