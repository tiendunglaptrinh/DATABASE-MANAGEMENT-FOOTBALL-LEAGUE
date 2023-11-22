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
-- Table structure for table `nation`
--

DROP TABLE IF EXISTS `nation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nation` (
  `FFCountryCode` varchar(3) NOT NULL,
  `Continent` varchar(39) NOT NULL,
  `Nname` varchar(20) NOT NULL,
  PRIMARY KEY (`FFCountryCode`),
  UNIQUE KEY `Nname` (`Nname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nation`
--

LOCK TABLES `nation` WRITE;
/*!40000 ALTER TABLE `nation` DISABLE KEYS */;
INSERT INTO `nation` VALUES ('ARG','South America','Argentina'),('AUS','Oceania','Australia'),('AUT','Europe','Austria'),('BEL','Europe','Belgium'),('BGR','Europe','Bulgaria'),('BRA','South America','Brazil'),('CAN','North America','Canada'),('CHL','South America','Chile'),('CHN','Asia','China'),('COL','South America','Colombia'),('CZE','Europe','Czech Republic'),('DNK','Europe','Denmark'),('EGY','Africa','Egypt'),('ESP','Europe','Spain'),('FIN','Europe','Finland'),('FRA','Europe','France'),('GBR','Europe','United Kingdom'),('GER','Europe','Germany'),('HRV','Europe','Croatia'),('HUN','Europe','Hungary'),('IDN','Asia','Indonesia'),('IND','Asia','India'),('IRL','Europe','Ireland'),('IRN','Asia','Iran'),('ISR','Asia','Israel'),('ITA','Europe','Italy'),('JPN','Asia','Japan'),('KOR','Asia','South Korea'),('LKA','Asia','Sri Lanka'),('MEX','North America','Mexico'),('MNG','Asia','Mongolia'),('MYS','Asia','Malaysia'),('NGA','Africa','Nigeria'),('NGR','Africa','Ghana'),('NLD','Europe','Netherlands'),('NOR','Europe','Norway'),('POL','Europe','Poland'),('PRT','Europe','Portugal'),('RUS','Europe','Russia'),('SAU','Asia','Saudi Arabia'),('SGP','Asia','Singapore'),('SWE','Europe','Sweden'),('THA','Asia','Thailand'),('TUR','Asia','Turkey'),('UKR','Europe','Ukraine'),('USA','North America','United States'),('VNM','Asia','Vietnam'),('ZAF','Africa','South Africa');
/*!40000 ALTER TABLE `nation` ENABLE KEYS */;
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
