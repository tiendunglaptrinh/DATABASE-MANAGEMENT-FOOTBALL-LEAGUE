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
-- Table structure for table `team_member`
--

DROP TABLE IF EXISTS `team_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team_member` (
  `MemberCode` varchar(6) NOT NULL,
  `FName` varchar(15) NOT NULL,
  `Minit` varchar(15) NOT NULL,
  `LName` varchar(15) NOT NULL,
  `Age` int NOT NULL,
  `Gender` char(1) NOT NULL,
  `Nationality` varchar(20) NOT NULL,
  `TM_Team` varchar(20) NOT NULL,
  PRIMARY KEY (`MemberCode`),
  KEY `FK_TEAM_IN_SEASON` (`TM_Team`),
  CONSTRAINT `FK_TEAM_IN_SEASON` FOREIGN KEY (`TM_Team`) REFERENCES `season_team` (`TeamName`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_member`
--

LOCK TABLES `team_member` WRITE;
/*!40000 ALTER TABLE `team_member` DISABLE KEYS */;
INSERT INTO `team_member` VALUES ('A01P01','John','A','Doe',25,'M','USA','TeamAlpha'),('A01P02','Jane','B','Smith',27,'F','CAN','TeamAlpha'),('A01P03','Robert','C','Johnson',23,'M','ENG','TeamAlpha'),('A01P04','Emily','D','Anderson',26,'F','AUS','TeamAlpha'),('A01P05','William','E','Davis',24,'M','BRA','TeamAlpha'),('A01P06','Emma','F','Garcia',22,'F','FRA','TeamAlpha'),('A01P07','Michael','G','Brown',28,'M','GER','TeamAlpha'),('A01P08','Sophia','H','Wilson',25,'F','ITA','TeamAlpha'),('A01P09','James','I','Martinez',23,'M','JPN','TeamAlpha'),('A01P10','Olivia','J','Lopez',27,'F','KOR','TeamAlpha'),('B02P01','Daniel','A','Hernandez',24,'M','ARG','TeamBravo'),('B02P02','Ava','B','Wang',26,'F','CHI','TeamBravo'),('B02P03','Ethan','C','Luna',22,'M','COL','TeamBravo'),('B02P04','Mia','D','Lee',28,'F','IND','TeamBravo'),('B02P05','Noah','E','Nguyen',24,'M','JPN','TeamBravo'),('B02P06','Isabella','F','Kim',23,'F','KOR','TeamBravo'),('B02P07','Liam','G','Singh',27,'M','USA','TeamBravo'),('B02P08','Zoe','H','Nguyen',25,'F','VIE','TeamBravo'),('B02P09','Alexander','I','Smith',23,'M','RUS','TeamBravo'),('B02P10','Sophie','J','Harris',28,'F','SWE','TeamBravo'),('C03P01','William','A','Brown',26,'M','AUS','TeamCharlie'),('C03P02','Emma','B','Garcia',24,'F','BRA','TeamCharlie'),('C03P03','James','C','Martinez',22,'M','CAN','TeamCharlie'),('C03P04','Sophia','D','Davis',28,'F','CHI','TeamCharlie'),('C03P05','Aiden','E','Hernandez',25,'M','COL','TeamCharlie'),('C03P06','Luna','F','Wang',23,'F','ENG','TeamCharlie'),('C03P07','Elijah','G','Johnson',27,'M','FRA','TeamCharlie'),('C03P08','Olivia','H','Lopez',25,'F','GER','TeamCharlie'),('C03P09','Liam','I','Anderson',23,'M','IND','TeamCharlie'),('C03P10','Zoe','J','Smith',28,'F','ITA','TeamCharlie'),('D04P01','Ethan','A','Wilson',24,'M','JPN','TeamDelta'),('D04P02','Mia','B','Lopez',26,'F','KOR','TeamDelta'),('D04P03','Noah','C','Nguyen',22,'M','MEX','TeamDelta'),('D04P04','Isabella','D','Harris',28,'F','NED','TeamDelta'),('D04P05','Liam','E','Wang',25,'M','POR','TeamDelta'),('D04P06','Sophie','F','Lee',23,'F','RUS','TeamDelta'),('D04P07','Alexander','G','Singh',27,'M','SWE','TeamDelta'),('D04P08','Zoe','H','Smith',25,'F','USA','TeamDelta'),('D04P09','Elijah','I','Garcia',23,'M','VIE','TeamDelta'),('D04P10','Luna','J','Anderson',28,'F','ARG','TeamDelta'),('E05P01','Aiden','A','Nguyen',25,'M','BRA','TeamEcho'),('E05P02','Zoe','B','Hernandez',28,'F','CAN','TeamEcho'),('E05P03','Sophie','C','Wang',23,'F','COL','TeamEcho'),('E05P04','Alexander','D','Singh',24,'M','ENG','TeamEcho'),('E05P05','Luna','E','Lopez',26,'F','FRA','TeamEcho'),('E05P06','Elijah','F','Smith',22,'M','GER','TeamEcho'),('E05P07','Olivia','G','Johnson',27,'F','IND','TeamEcho'),('E05P08','Liam','H','Martinez',25,'M','ITA','TeamEcho'),('E05P09','William','I','Brown',23,'M','JPN','TeamEcho'),('E05P10','Emma','J','Davis',24,'F','KOR','TeamEcho'),('F06P01','Ava','A','Garcia',26,'F','MEX','TeamFoxtrot'),('F06P02','Liam','B','Wang',24,'M','NED','TeamFoxtrot'),('F06P03','Noah','C','Brown',28,'M','POR','TeamFoxtrot'),('F06P04','Sophia','D','Lopez',22,'F','RUS','TeamFoxtrot'),('F06P05','Ethan','E','Hernandez',25,'M','SWE','TeamFoxtrot'),('F06P06','Mia','F','Johnson',23,'F','USA','TeamFoxtrot'),('F06P07','Olivia','G','Martinez',27,'F','VIE','TeamFoxtrot'),('F06P08','Zoe','H','Smith',24,'F','ARG','TeamFoxtrot'),('F06P09','Alexander','I','Singh',28,'M','BRA','TeamFoxtrot'),('F06P10','Luna','J','Nguyen',22,'F','CHI','TeamFoxtrot'),('G07P01','Sophie','A','Wang',23,'F','COL','TeamGolf'),('G07P02','Ethan','B','Lee',27,'M','ENG','TeamGolf'),('G07P03','Isabella','C','Anderson',25,'F','FRA','TeamGolf'),('G07P04','Aiden','D','Brown',23,'M','GER','TeamGolf'),('G07P05','Mia','E','Garcia',28,'F','IND','TeamGolf'),('G07P06','Noah','F','Hernandez',24,'M','ITA','TeamGolf'),('G07P07','Zoe','G','Johnson',22,'F','JPN','TeamGolf'),('G07P08','Liam','H','Lopez',27,'M','KOR','TeamGolf'),('G07P09','Olivia','I','Smith',25,'F','MEX','TeamGolf'),('G07P10','Luna','J','Nguyen',23,'F','NED','TeamGolf'),('H08P01','Elijah','K','Smith',26,'M','RUS','TeamHotel'),('H08P02','Olivia','L','Garcia',23,'F','SWE','TeamHotel'),('H08P03','Aiden','M','Brown',28,'M','USA','TeamHotel'),('H08P04','Zoe','N','Martinez',25,'F','VIE','TeamHotel'),('H08P05','Sophie','O','Anderson',23,'F','ARG','TeamHotel'),('H08P06','Ethan','P','Lopez',27,'M','COL','TeamHotel'),('H08P07','Isabella','Q','Wang',25,'F','ENG','TeamHotel'),('H08P08','Ava','R','Hernandez',23,'F','FRA','TeamHotel'),('H08P09','Noah','S','Johnson',28,'M','GER','TeamHotel'),('H08P10','Liam','T','Nguyen',22,'M','IND','TeamHotel'),('I09P01','Emma','K','Harris',24,'F','ITA','TeamIndia'),('I09P02','Michael','L','Singh',26,'M','JPN','TeamIndia'),('I09P03','Ava','M','Wang',22,'F','KOR','TeamIndia'),('I09P04','Luna','N','Lee',28,'F','MEX','TeamIndia'),('I09P05','Noah','O','Lopez',24,'M','NED','TeamIndia'),('I09P06','Sophia','P','Anderson',23,'F','POR','TeamIndia'),('I09P07','Elijah','Q','Smith',27,'M','RUS','TeamIndia'),('I09P08','Olivia','R','Garcia',25,'F','SWE','TeamIndia'),('I09P09','Liam','S','Brown',23,'M','USA','TeamIndia'),('I09P10','Zoe','T','Martinez',28,'F','VIE','TeamIndia'),('J10P01','Alexander','K','Hernandez',25,'M','BRA','TeamJuliet'),('J10P02','Luna','L','Wang',28,'F','CHI','TeamJuliet'),('J10P03','Noah','M','Brown',23,'M','COL','TeamJuliet'),('J10P04','Sophie','N','Garcia',24,'F','ENG','TeamJuliet'),('J10P05','Ethan','O','Johnson',26,'M','FRA','TeamJuliet'),('J10P06','Isabella','P','Anderson',22,'F','GER','TeamJuliet'),('J10P07','Aiden','Q','Lopez',27,'M','IND','TeamJuliet'),('J10P08','Zoe','R','Martinez',25,'F','ITA','TeamJuliet'),('J10P09','Olivia','S','Smith',23,'F','JPN','TeamJuliet'),('J10P10','Liam','T','Nguyen',28,'M','KOR','TeamJuliet');
/*!40000 ALTER TABLE `team_member` ENABLE KEYS */;
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
