-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: lost_and_found
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.22.04.1

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
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact` (
  `idcontact` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `message` varchar(425) NOT NULL,
  PRIMARY KEY (`idcontact`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (3,'aisha juma','aisha@gmail.com','sijapata laptop yangu mpaka leo .naomba ditso mnisaidie'),(4,'jums mgund','mgunhum@yahoo.com','sijampata mtu aliyepost kuwa ameiona baiskeli yangu');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `found_item`
--

DROP TABLE IF EXISTS `found_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `found_item` (
  `idfound_item` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `date_found` date NOT NULL,
  `description` varchar(45) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `phone_number` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `place_found` varchar(45) NOT NULL,
  PRIMARY KEY (`idfound_item`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `found_item`
--

LOCK TABLES `found_item` WRITE;
/*!40000 ALTER TABLE `found_item` DISABLE KEYS */;
INSERT INTO `found_item` VALUES (5,'keys','2024-01-12','6 keys,with one car key','uploads/1706951518511-keys.jpg','+255762556767','wens@gmail.com','study area dining'),(6,'pc-adapter','2024-01-09','black small pin hp adapter','uploads/1706951608872-pc_adapter.webp','+255762556767','denis@gmail.com','libary-2'),(7,'hand-bag','2024-01-25','black girlshy hand bag','uploads/1706951682517-hand bag.jpeg','+255762556767','aineess@gmail.com','hostel block 1');
/*!40000 ALTER TABLE `found_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lost_item`
--

DROP TABLE IF EXISTS `lost_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lost_item` (
  `idlost_item` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `date_lost` date NOT NULL,
  `description` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `phone_number` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `place_lost` varchar(45) NOT NULL,
  PRIMARY KEY (`idlost_item`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lost_item`
--

LOCK TABLES `lost_item` WRITE;
/*!40000 ALTER TABLE `lost_item` DISABLE KEYS */;
INSERT INTO `lost_item` VALUES (13,'bicycle','2023-09-23','white bicycle, about 3 feet tall ,witha basket','uploads/1706951020288-bicycle.jpeg','+255762556767','jopud@gmail.com','dining hall'),(14,'iphone','2024-01-23','white iphone-se, with a cracked mirror','uploads/1706951128414-iPhone-SE-2022-Starlight-Back-in-Hand.webp','+255672435643','johevans@gmail.com','tt-10-2'),(15,'hp-laptop','2024-02-01','black laptop,about 12inches wide','uploads/1706951219000-hp-laptop-500x500.webp','+255743123456','frnkjohn@yahoo.com','tt-7-1'),(16,'book','2024-01-12','green book , with a title how to make money','uploads/1706951318950-how to make money.jpg','+255762556767','denisfrancis960@gmail.com','libary-1'),(17,'phone','2024-01-02','itel-pink phone , a small one','uploads/1706951399252-itel.jpeg','+255743123456','denis@gmail.com','computer department');
/*!40000 ALTER TABLE `lost_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'lost_and_found'
--

--
-- Dumping routines for database 'lost_and_found'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-03 12:26:12
