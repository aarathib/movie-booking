-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: theatresystem
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `showt`
--

DROP TABLE IF EXISTS `showt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `showt` (
  `showid` int NOT NULL AUTO_INCREMENT,
  `movieid` int DEFAULT NULL,
  `time` time DEFAULT NULL,
  `price` int DEFAULT NULL,
  `tname` varchar(45) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `rseats` int DEFAULT NULL,
  `tseats` int DEFAULT NULL,
  PRIMARY KEY (`showid`),
  KEY `movieid_idx` (`movieid`),
  KEY `tname_idx` (`tname`),
  CONSTRAINT `movieid` FOREIGN KEY (`movieid`) REFERENCES `movie` (`movieid`),
  CONSTRAINT `tname` FOREIGN KEY (`tname`) REFERENCES `theatre` (`tname`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `showt`
--

LOCK TABLES `showt` WRITE;
/*!40000 ALTER TABLE `showt` DISABLE KEYS */;
INSERT INTO `showt` VALUES (1,8,'14:00:00',100,'jose','2021-01-21',98,100),(2,8,'14:00:00',100,'anand','2021-01-21',100,100),(41,7,'21:00:00',100,'ccktym','2021-01-21',100,100),(42,7,'21:00:00',100,'ccktym','2021-01-22',88,100),(43,7,'21:00:00',100,'ccktym','2021-01-23',91,100),(44,7,'21:00:00',100,'ccktym','2021-01-24',100,100),(45,7,'21:00:00',100,'ccktym','2021-01-25',100,100),(46,7,'14:00:00',100,'ccktym','2021-01-21',190,200),(60,7,'21:00:00',100,'ccktym','2021-01-22',100,100),(61,7,'14:00:00',100,'ccktym','2021-01-25',100,100),(62,7,'14:00:00',100,'ccktym','2021-01-26',100,100),(63,7,'14:00:00',100,'ccktym','2021-01-27',100,100),(64,7,'14:00:00',100,'ccktym','2021-01-28',100,100),(65,7,'14:00:00',100,'ccktym','2021-01-29',100,100),(66,8,'18:00:00',100,'ccktym','2021-01-28',100,100),(67,8,'18:00:00',100,'ccktym','2021-01-29',100,100),(68,8,'18:00:00',100,'ccktym','2021-01-30',100,100),(69,8,'18:00:00',100,'ccktym','2021-01-31',100,100),(70,10,'18:00:00',150,'ccktym','2021-04-30',100,100),(71,10,'18:00:00',150,'ccktym','2021-05-01',100,100),(72,10,'18:00:00',150,'ccktym','2021-05-02',95,100),(73,10,'18:00:00',150,'ccktym','2021-05-03',100,100),(74,10,'18:00:00',150,'ccktym','2021-05-04',100,100),(75,10,'18:00:00',150,'ccktym','2021-05-05',100,100),(76,10,'18:00:00',150,'ccktym','2021-05-06',100,100),(77,10,'21:00:00',150,'ccktym','2021-04-30',100,100),(78,10,'21:00:00',150,'ccktym','2021-05-01',100,100),(79,10,'21:00:00',150,'ccktym','2021-05-02',100,100),(80,10,'21:00:00',150,'ccktym','2021-05-03',100,100),(81,10,'21:00:00',150,'ccktym','2021-05-04',100,100),(82,10,'21:00:00',150,'ccktym','2021-05-05',100,100),(83,10,'21:00:00',150,'ccktym','2021-05-06',100,100),(84,10,'21:00:00',150,'jose','2021-04-30',85,100),(85,10,'21:00:00',150,'jose','2021-05-01',100,100),(86,10,'21:00:00',150,'jose','2021-05-02',90,100),(87,10,'21:00:00',150,'jose','2021-05-03',100,100),(88,10,'21:00:00',150,'jose','2021-05-04',100,100),(89,10,'21:00:00',150,'jose','2021-05-05',100,100),(90,10,'21:00:00',150,'jose','2021-05-06',100,100),(91,12,'18:00:00',100,'jose','2021-01-21',100,100),(92,12,'18:00:00',100,'jose','2021-01-22',100,100),(93,12,'18:00:00',100,'jose','2021-01-23',100,100),(94,12,'18:00:00',100,'jose','2021-01-24',100,100),(95,12,'18:00:00',100,'jose','2021-01-25',100,100),(96,8,'18:00:00',100,'ccktym','2021-01-22',100,100),(97,8,'18:00:00',100,'ccktym','2021-01-23',100,100),(98,8,'18:00:00',100,'ccktym','2021-01-24',100,100),(99,8,'18:00:00',100,'ccktym','2021-01-25',100,100),(100,8,'18:00:00',100,'ccktym','2021-01-26',100,100),(101,12,'21:00:00',100,'jose','2021-01-15',100,100),(102,12,'21:00:00',100,'jose','2021-01-16',100,100),(103,12,'21:00:00',100,'jose','2021-01-17',100,100),(104,12,'21:00:00',100,'jose','2021-01-18',100,100),(105,12,'21:00:00',100,'jose','2021-01-19',100,100),(106,12,'21:00:00',100,'jose','2021-01-20',100,100),(107,12,'21:00:00',100,'jose','2021-01-21',100,100),(108,12,'21:00:00',100,'jose','2021-01-22',100,100),(109,12,'21:00:00',100,'jose','2021-01-23',100,100),(110,12,'21:00:00',100,'jose','2021-01-24',100,100),(111,12,'21:00:00',100,'jose','2021-01-25',100,100),(112,12,'21:00:00',100,'jose','2021-01-26',100,100),(113,12,'21:00:00',100,'jose','2021-01-27',100,100),(114,12,'21:00:00',100,'jose','2021-01-28',100,100);
/*!40000 ALTER TABLE `showt` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-22 19:57:23
