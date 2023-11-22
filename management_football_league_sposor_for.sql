-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: management_football_league
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `sposor_for`
--

DROP TABLE IF EXISTS `sposor_for`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sposor_for` (
  `SF_Name` varchar(15) NOT NULL,
  `SF_Team` varchar(20) NOT NULL,
  `Finance` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`SF_Name`,`SF_Team`),
  KEY `FK_SPONFOR_TEAM` (`SF_Team`),
  CONSTRAINT `FK_SPONFOR_NAME` FOREIGN KEY (`SF_Name`) REFERENCES `sponsor` (`SpsName`) ON DELETE CASCADE,
  CONSTRAINT `FK_SPONFOR_TEAM` FOREIGN KEY (`SF_Team`) REFERENCES `season_team` (`TeamName`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sposor_for`
--

LOCK TABLES `sposor_for` WRITE;
/*!40000 ALTER TABLE `sposor_for` DISABLE KEYS */;
INSERT INTO `sposor_for` VALUES ('Adidas','TeamBravo',800000.00),('Apple','TeamFoxtrot',2000000.00),('Coca-Cola','TeamCharlie',1200000.00),('Ford','TeamHotel',1100000.00),('KFC','TeamJuliet',1600000.00),('McDonald\'s','TeamIndia',1800000.00),('Nike','TeamAlpha',1000000.00),('Pepsi','TeamDelta',900000.00),('Samsung','TeamEcho',1500000.00),('Toyota','TeamGolf',1300000.00);
/*!40000 ALTER TABLE `sposor_for` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-22 13:59:10
