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
-- Table structure for table `gate_stadium`
--

DROP TABLE IF EXISTS `gate_stadium`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gate_stadium` (
  `GateStadium` int NOT NULL,
  `GS_SCode` varchar(5) NOT NULL,
  PRIMARY KEY (`GateStadium`,`GS_SCode`),
  KEY `FK_GATE_STADIUM` (`GS_SCode`),
  CONSTRAINT `FK_GATE_STADIUM` FOREIGN KEY (`GS_SCode`) REFERENCES `stadium` (`StadiumCode`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gate_stadium`
--

LOCK TABLES `gate_stadium` WRITE;
/*!40000 ALTER TABLE `gate_stadium` DISABLE KEYS */;
INSERT INTO `gate_stadium` VALUES (1,'ABC01'),(2,'ABC01'),(3,'ABC01'),(1,'DEF02'),(2,'DEF02'),(1,'GHI03'),(2,'GHI03'),(3,'GHI03'),(1,'JKL04'),(2,'JKL04'),(1,'MNO05'),(2,'MNO05'),(1,'PQR06'),(2,'PQR06'),(3,'PQR06'),(1,'STU07'),(2,'STU07'),(1,'VWX08'),(2,'VWX08'),(3,'VWX08');
/*!40000 ALTER TABLE `gate_stadium` ENABLE KEYS */;
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
