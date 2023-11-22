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
-- Table structure for table `coach`
--

DROP TABLE IF EXISTS `coach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coach` (
  `CoachCode` varchar(6) NOT NULL,
  `CoachCef` varchar(20) DEFAULT NULL,
  `Experience` int DEFAULT NULL,
  `LeadCode` varchar(10) DEFAULT NULL,
  `C_Team` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`CoachCode`),
  KEY `FK_COACH_IN_TEAM` (`C_Team`),
  KEY `FK_SUPER_COACH` (`LeadCode`),
  CONSTRAINT `FK_COACH_IN_TEAM` FOREIGN KEY (`C_Team`) REFERENCES `season_team` (`TeamName`) ON DELETE CASCADE,
  CONSTRAINT `FK_CODE_COACH_TEAM` FOREIGN KEY (`CoachCode`) REFERENCES `team_member` (`MemberCode`),
  CONSTRAINT `FK_SUPER_COACH` FOREIGN KEY (`LeadCode`) REFERENCES `coach` (`CoachCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coach`
--

LOCK TABLES `coach` WRITE;
/*!40000 ALTER TABLE `coach` DISABLE KEYS */;
INSERT INTO `coach` VALUES ('A01P01','UEFA Pro',5,NULL,'TeamAlpha'),('A01P02','UEFA B',3,'A01P01','TeamAlpha'),('B02P01','CONMEBOL Pro',4,NULL,'TeamBravo'),('B02P02','CONMEBOL A',2,'B02P01','TeamBravo'),('C03P01','AFC Pro',4,NULL,'TeamCharlie'),('C03P02','AFC A',2,'C03P01','TeamCharlie'),('D04P01','CAF Pro',3,NULL,'TeamDelta'),('D04P02','CAF B',1,'D04P01','TeamDelta'),('E05P01','AFC Pro',5,NULL,'TeamEcho'),('E05P02','AFC A',3,'E05P01','TeamEcho'),('F06P01','CAF Pro',4,NULL,'TeamFoxtrot'),('F06P02','CAF B',2,'F06P01','TeamFoxtrot'),('G07P01','AFC Pro',5,NULL,'TeamGolf'),('G07P02','AFC A',3,'G07P01','TeamGolf'),('H08P01','UEFA A',4,NULL,'TeamHotel'),('H08P02','UEFA B',2,'H08P01','TeamHotel'),('I09P01','CONMEBOL Pro',3,NULL,'TeamIndia'),('I09P02','CONMEBOL A',1,'I09P01','TeamIndia'),('J10P01','UEFA Pro',5,NULL,'TeamJuliet'),('J10P02','UEFA B',3,'J10P01','TeamJuliet');
/*!40000 ALTER TABLE `coach` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-22 14:14:03
