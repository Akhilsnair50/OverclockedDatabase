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
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `key` varchar(128) NOT NULL,
  `value` varchar(5000) NOT NULL,
  `category` enum('CURRENCY','GENERAL','MAIL_SERVER','MAIL_TEMPLATES','PAYMENT') NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES ('COPYRIGHT','Copyright (C) 2023 Overclocked Ltd.','GENERAL'),('CURRENCY_ID','1','CURRENCY'),('CURRENCY_SYMBOL','₹','CURRENCY'),('CURRENCY_SYMBOL_POSITION','before','CURRENCY'),('CUSTOMER_VERIFY_CONTENT','Dear [[name]],<div><br></div><div>Please click the link to verify your registration</div><div><br></div><span style=\"font-size:24px;\"><font color=\"#008000\">\r\n<a href=\"[[URL]]\" target=\"_self\">Click here to VERIFY</a></font></span><span style=\"font-size:24px;\"><b></b></span><a href=\"[[URL]]\" target=\"_self\"></a><span style=\"font-size:24px;\"><b><font color=\"#0000ff\"></font></b></span><span style=\"font-size:16px;\"><br>\r\n<br>\r\n<span style=\"font-size:16px;\">thank you,</span></span><span style=\"font-size:12px;\"><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Akhil<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;The Overclocked Team</span><div><span style=\"font-size:16px;\"><font face=\"Geneva\"></font></span></div><div><br></div>','MAIL_TEMPLATES'),('CUSTOMER_VERIFY_SUBJECT','Please verify your registration to continue shopping','MAIL_TEMPLATES'),('DECIMAL_DIGITS','2','CURRENCY'),('DECIMAL_POINT_TYPE','POINT','CURRENCY'),('MAIL_FROM','akhilsnair50@gmail.com','MAIL_SERVER'),('MAIL_HOST','smtp-relay.brevo.com','MAIL_SERVER'),('MAIL_PASSWORD','6vZLVCazXwAybNQK','MAIL_SERVER'),('MAIL_PORT','587','MAIL_SERVER'),('MAIL_SENDER_NAME','Overclocked Team','MAIL_SERVER'),('MAIL_USERNAME','akhilsnair50@gmail.com','MAIL_SERVER'),('ORDER_CONFIRMATION_CONTENT','<span id=\"docs-internal-guid-4d968c7d-7fff-3c6b-7de4-70d135cc37cc\"><div><span style=\"font-size: 11pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; white-space-collapse: preserve;\"></span></div><span style=\"font-size:24px;\">Dear [[name]],<br>\r\n<font color=\"#000000\"><br>\r\nThis email is to confirm that you have successfully placed an order through our website.<br>\r\nPlease review the following order summary:</font></span><div><span style=\"font-size: 11pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; white-space-collapse: preserve;\"></span></div><br><div><span style=\"font-size: 11pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; white-space-collapse: preserve;\">Order id : [[orderId]]</span></div><div><span style=\"font-size: 11pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; white-space-collapse: preserve;\">Order time : [[orderTime]]</span></div><div><span style=\"font-size: 11pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; white-space-collapse: preserve;\">Ship to : [[shippingAddress]]</span></div><div><span style=\"font-size: 11pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; white-space-collapse: preserve;\">Total : [[total]]</span></div><div><span style=\"font-size: 11pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; white-space-collapse: preserve;\">Payment Method : [[paymentMethod]]</span></div><br><div><span style=\"font-size: 11pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; white-space-collapse: preserve;\">We are currently processing your order. [[orderLink]] to view full details of your order on our website(login required).</span></div><font color=\"#e36c09\"><br><br></font><div><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; white-space-collapse: preserve;\"><font color=\"#e36c09\">Thank you for choosing Overclocked.</font></span></div><font color=\"#e36c09\"><br></font><div><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; white-space-collapse: preserve;\"><font color=\"#e36c09\">Akhil,</font></span></div><div><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; white-space-collapse: preserve;\"><font color=\"#e36c09\">Overclocked Team</font></span></div><br></span>','MAIL_TEMPLATES'),('ORDER_CONFIRMATION_SUBJECT','Confirmation of order ID :  #[[orderId]]','MAIL_TEMPLATES'),('PAYPAL_API_BASE_URL','https://api-m.sandbox.paypal.com','PAYMENT'),('PAYPAL_API_CLIENT_ID','Adadada','PAYMENT'),('PAYPAL_API_CLIENT_SECRET','DADAaadadad','PAYMENT'),('SITE_LOGO','logosmall.png','GENERAL'),('SITE_NAME','Overclocked','GENERAL'),('SMTP_AUTH','true','MAIL_SERVER'),('SMTP_SECURED','true','MAIL_SERVER'),('THOUSANDS_POINT_TYPE','COMMA','CURRENCY');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
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
