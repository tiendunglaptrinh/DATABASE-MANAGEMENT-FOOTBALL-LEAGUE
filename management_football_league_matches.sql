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
-- Table structure for table `matches`
--

DROP TABLE IF EXISTS `matches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matches` (
  `MatchCode` varchar(6) NOT NULL,
  `M_HYearCode` int NOT NULL,
  `TimeStart` time NOT NULL,
  `TimeFinish` time NOT NULL,
  `MatchDate` date DEFAULT NULL,
  `M_SCode` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`MatchCode`,`M_HYearCode`),
  KEY `FK_MATCH_YEAR` (`M_HYearCode`),
  KEY `FK_MATCH_STADIUM` (`M_SCode`),
  CONSTRAINT `FK_MATCH_STADIUM` FOREIGN KEY (`M_SCode`) REFERENCES `stadium` (`StadiumCode`) ON DELETE SET NULL,
  CONSTRAINT `FK_MATCH_YEAR` FOREIGN KEY (`M_HYearCode`) REFERENCES `season` (`HostYearCode`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matches`
--

LOCK TABLES `matches` WRITE;
/*!40000 ALTER TABLE `matches` DISABLE KEYS */;
INSERT INTO `matches` VALUES ('M1',2022,'18:00:00','20:00:00','2022-06-21','ABC01'),('M10',2022,'19:00:00','21:00:00','2022-06-30','DEF02'),('M11',2022,'18:00:00','20:00:00','2022-07-01','GHI03'),('M12',2022,'19:00:00','21:00:00','2022-07-02','GHI03'),('M13',2022,'20:00:00','22:00:00','2022-07-03','GHI03'),('M14',2022,'18:00:00','20:00:00','2022-07-04','GHI03'),('M15',2022,'19:00:00','21:00:00','2022-07-05','GHI03'),('M16',2022,'18:00:00','20:00:00','2022-07-06','JKL04'),('M17',2022,'19:00:00','21:00:00','2022-07-07','JKL04'),('M18',2022,'20:00:00','22:00:00','2022-07-08','JKL04'),('M19',2022,'18:00:00','20:00:00','2022-07-09','JKL04'),('M2',2022,'19:00:00','21:00:00','2022-06-22','ABC01'),('M20',2022,'19:00:00','21:00:00','2022-07-10','MNO05'),('M21',2022,'18:00:00','20:00:00','2022-07-11','MNO05'),('M22',2022,'19:00:00','21:00:00','2022-07-12','MNO05'),('M23',2022,'20:00:00','22:00:00','2022-07-13','PQR06'),('M24',2022,'18:00:00','20:00:00','2022-07-14','PQR06'),('M25',2022,'19:00:00','21:00:00','2022-07-15','STU07'),('M26',2022,'20:00:00','22:00:00','2022-07-16','STU07'),('M27',2022,'18:00:00','20:00:00','2022-07-17','STU07'),('M28',2022,'19:00:00','21:00:00','2022-07-18','STU07'),('M29',2022,'20:00:00','22:00:00','2022-07-19','STU07'),('M3',2022,'20:00:00','22:00:00','2022-06-23','ABC01'),('M30',2022,'18:00:00','20:00:00','2022-07-20','STU07'),('M31',2022,'19:00:00','21:00:00','2022-07-21','MNO05'),('M32',2022,'20:00:00','22:00:00','2022-07-22','MNO05'),('M33',2022,'18:00:00','20:00:00','2022-07-23','MNO05'),('M34',2022,'19:00:00','21:00:00','2022-07-24','MNO05'),('M35',2022,'20:00:00','22:00:00','2022-07-25','MNO05'),('M36',2022,'18:00:00','20:00:00','2022-07-26','PQR06'),('M37',2022,'19:00:00','21:00:00','2022-07-27','PQR06'),('M38',2022,'20:00:00','22:00:00','2022-07-28','PQR06'),('M39',2022,'18:00:00','20:00:00','2022-07-29','PQR06'),('M4',2022,'18:00:00','20:00:00','2022-06-24','ABC01'),('M40',2022,'19:00:00','21:00:00','2022-07-30','PQR06'),('M41',2022,'18:00:00','20:00:00','2022-07-31','STU07'),('M42',2022,'19:00:00','21:00:00','2022-08-01','STU07'),('M43',2022,'20:00:00','22:00:00','2022-08-02','STU07'),('M44',2022,'18:00:00','20:00:00','2022-08-03','STU07'),('M45',2022,'19:00:00','21:00:00','2022-08-04','STU07'),('M5',2022,'19:00:00','21:00:00','2022-06-25','ABC01'),('M6',2022,'18:00:00','20:00:00','2022-06-26','DEF02'),('M7',2022,'19:00:00','21:00:00','2022-06-27','DEF02'),('M8',2022,'20:00:00','22:00:00','2022-06-28','DEF02'),('M9',2022,'18:00:00','20:00:00','2022-06-29','DEF02');
/*!40000 ALTER TABLE `matches` ENABLE KEYS */;
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