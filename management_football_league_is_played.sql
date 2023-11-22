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
-- Table structure for table `is_played`
--

DROP TABLE IF EXISTS `is_played`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `is_played` (
  `is_PlayedCode` varchar(6) NOT NULL,
  `is_MatchCode` varchar(6) NOT NULL,
  `is_YearCode` int NOT NULL,
  `Role` varchar(2) NOT NULL,
  `TimeIn` time NOT NULL,
  `TimeOut` time NOT NULL,
  PRIMARY KEY (`is_PlayedCode`,`is_MatchCode`,`is_YearCode`),
  KEY `FK_PLAYED_RELATED` (`is_MatchCode`,`is_YearCode`),
  CONSTRAINT `FK_PLAYED_RELATED` FOREIGN KEY (`is_MatchCode`, `is_YearCode`) REFERENCES `matches` (`MatchCode`, `M_HYearCode`) ON DELETE CASCADE,
  CONSTRAINT `FK_PLAYER_PLAY` FOREIGN KEY (`is_PlayedCode`) REFERENCES `player` (`PlayerCode`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `is_played`
--

LOCK TABLES `is_played` WRITE;
/*!40000 ALTER TABLE `is_played` DISABLE KEYS */;
INSERT INTO `is_played` VALUES ('A01P07','M2',2022,'MF','17:00:00','18:30:00'),('B02P06','M2',2022,'PL','17:00:00','18:30:00'),('C03P05','M5',2022,'DF','21:00:00','22:30:00'),('C03P05','M6',2022,'DF','14:00:00','15:30:00'),('D04P09','M5',2022,'PL','21:00:00','22:30:00'),('E05P07','M4',2022,'MF','20:00:00','21:30:00'),('E05P07','M5',2022,'MF','21:00:00','22:30:00'),('F06P10','M2',2022,'DF','17:00:00','18:30:00'),('F06P10','M4',2022,'DF','20:00:00','21:30:00'),('G07P06','M2',2022,'PL','17:00:00','18:30:00'),('G07P06','M4',2022,'PL','20:00:00','21:30:00'),('H08P10','M1',2022,'MF','15:00:00','16:30:00'),('H08P10','M3',2022,'MF','19:00:00','20:30:00'),('I09P06','M1',2022,'DF','15:00:00','16:30:00'),('I09P06','M3',2022,'DF','19:00:00','20:30:00'),('J10P08','M1',2022,'PL','15:00:00','16:30:00'),('J10P08','M3',2022,'PL','19:00:00','20:30:00');
/*!40000 ALTER TABLE `is_played` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-22 13:59:09
