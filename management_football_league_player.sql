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
-- Table structure for table `player`
--

DROP TABLE IF EXISTS `player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player` (
  `PlayerCode` varchar(6) NOT NULL,
  `Status` varchar(15) NOT NULL,
  `Role` varchar(15) NOT NULL,
  `ShirtNum` int NOT NULL,
  PRIMARY KEY (`PlayerCode`),
  CONSTRAINT `FK_CODE_PLAYER_TEAM` FOREIGN KEY (`PlayerCode`) REFERENCES `team_member` (`MemberCode`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player`
--

LOCK TABLES `player` WRITE;
/*!40000 ALTER TABLE `player` DISABLE KEYS */;
INSERT INTO `player` VALUES ('A01P05','Fit','Forward',9),('A01P06','Fit','Midfielder',8),('A01P07','Injured','Defender',5),('A01P08','Fit','Goalkeeper',1),('A01P09','Fit','Forward',11),('A01P10','Fit','Midfielder',7),('B02P05','Fit','Forward',10),('B02P06','Injured','Midfielder',6),('B02P07','Fit','Defender',4),('B02P08','Fit','Goalkeeper',1),('B02P09','Fit','Forward',11),('B02P10','Fit','Midfielder',8),('C03P05','Fit','Forward',9),('C03P06','Fit','Midfielder',8),('C03P07','Injured','Defender',5),('C03P08','Fit','Goalkeeper',1),('C03P09','Fit','Forward',11),('C03P10','Fit','Midfielder',7),('D04P05','Fit','Forward',10),('D04P06','Fit','Midfielder',6),('D04P07','Fit','Defender',4),('D04P08','Fit','Goalkeeper',1),('D04P09','Fit','Forward',11),('D04P10','Fit','Midfielder',8),('E05P05','Fit','Forward',9),('E05P06','Fit','Midfielder',8),('E05P07','Injured','Defender',5),('E05P08','Fit','Goalkeeper',1),('E05P09','Fit','Forward',11),('E05P10','Fit','Midfielder',7),('F06P05','Fit','Forward',10),('F06P06','Fit','Midfielder',6),('F06P07','Fit','Defender',4),('F06P08','Fit','Goalkeeper',1),('F06P09','Fit','Forward',11),('F06P10','Fit','Midfielder',8),('G07P05','Fit','Forward',9),('G07P06','Fit','Midfielder',8),('G07P07','Injured','Defender',5),('G07P08','Fit','Goalkeeper',1),('G07P09','Fit','Forward',11),('G07P10','Fit','Midfielder',7),('H08P05','Fit','Forward',9),('H08P06','Fit','Midfielder',8),('H08P07','Fit','Defender',5),('H08P08','Fit','Goalkeeper',1),('H08P09','Fit','Forward',11),('H08P10','Fit','Midfielder',7),('I09P05','Fit','Forward',10),('I09P06','Fit','Midfielder',6),('I09P07','Fit','Defender',4),('I09P08','Fit','Goalkeeper',1),('I09P09','Fit','Forward',11),('I09P10','Fit','Midfielder',8),('J10P05','Fit','Forward',9),('J10P06','Fit','Midfielder',8),('J10P07','Fit','Defender',5),('J10P08','Fit','Goalkeeper',1),('J10P09','Fit','Forward',11),('J10P10','Fit','Midfielder',7);
/*!40000 ALTER TABLE `player` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-22 13:59:11
