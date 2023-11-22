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
-- Table structure for table `play_in`
--

DROP TABLE IF EXISTS `play_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `play_in` (
  `TeamPlay` varchar(20) NOT NULL,
  `MatchPlay` varchar(6) NOT NULL,
  `HYearPlay` int NOT NULL,
  PRIMARY KEY (`TeamPlay`,`MatchPlay`,`HYearPlay`),
  KEY `FK_PLAY_RELATED` (`MatchPlay`,`HYearPlay`),
  CONSTRAINT `FK_PLAY_RELATED` FOREIGN KEY (`MatchPlay`, `HYearPlay`) REFERENCES `matches` (`MatchCode`, `M_HYearCode`) ON DELETE CASCADE,
  CONSTRAINT `FK_TEAM_PLAY` FOREIGN KEY (`TeamPlay`) REFERENCES `season_team` (`TeamName`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `play_in`
--

LOCK TABLES `play_in` WRITE;
/*!40000 ALTER TABLE `play_in` DISABLE KEYS */;
INSERT INTO `play_in` VALUES ('TeamAlpha','M1',2022),('TeamIndia','M12',2022),('TeamEcho','M19',2022),('TeamFoxtrot','M23',2022),('TeamGolf','M24',2022),('TeamHotel','M27',2022),('TeamCharlie','M3',2022),('TeamJuliet','M32',2022),('TeamDelta','M4',2022),('TeamBravo','M5',2022);
/*!40000 ALTER TABLE `play_in` ENABLE KEYS */;
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
