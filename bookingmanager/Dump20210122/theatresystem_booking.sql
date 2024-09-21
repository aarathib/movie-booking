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
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `tno` int NOT NULL AUTO_INCREMENT,
  `username` varchar(10) DEFAULT NULL,
  `showid` int DEFAULT NULL,
  `bookedfor` date DEFAULT NULL,
  `tickets` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  PRIMARY KEY (`tno`),
  KEY `username_idx` (`username`),
  KEY `showid_idx` (`showid`),
  CONSTRAINT `showid` FOREIGN KEY (`showid`) REFERENCES `showt` (`showid`),
  CONSTRAINT `username` FOREIGN KEY (`username`) REFERENCES `user` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (1,'aarti',46,'2021-01-21',10,1000),(2,'aarti',42,'2021-01-22',10,1000),(3,'aarti',42,'2021-01-22',2,200),(4,'aarti',1,'2021-01-21',2,200),(5,'aarti',43,'2021-01-23',2,200),(6,'aarti',43,'2021-01-23',4,400),(7,'aarti',43,'2021-01-23',3,300),(8,'aarti',84,'2021-04-30',4,600),(9,'aarti',84,'2021-04-30',2,300),(10,'aarti',84,'2021-04-30',4,600),(11,'aarti',84,'2021-04-30',5,750),(12,'aarti',72,'2021-05-02',5,750),(13,'aarti',86,'2021-05-02',5,750),(14,'aarti',86,'2021-05-02',5,750);
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-22 19:57:24
