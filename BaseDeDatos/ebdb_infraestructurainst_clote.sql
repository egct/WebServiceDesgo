CREATE DATABASE  IF NOT EXISTS `ebdb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `ebdb`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: aa1ga9qmu3en46x.ceriwji5vpsm.us-east-1.rds.amazonaws.com    Database: ebdb
-- ------------------------------------------------------
-- Server version	5.7.22-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `infraestructurainst_clote`
--

DROP TABLE IF EXISTS `infraestructurainst_clote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `infraestructurainst_clote` (
  `ID_II_CLOTE` int(11) NOT NULL AUTO_INCREMENT,
  `AGUA_II_CLOTE` char(30) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ALCANTARILLADO_II_CLOTE` char(30) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ENERGIAELECTRICA_II_CLOTE` char(30) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `VIAURBANA_II_CLOTE` char(30) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `TIPOVIAACCESO` char(30) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `INFRAESTRUCTURAVIAL_II_CLOTE` char(30) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `OTROSSERVICIOS_II_CLOTE` char(30) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `TELEFONO_II_CLOTE` char(30) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`ID_II_CLOTE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infraestructurainst_clote`
--

LOCK TABLES `infraestructurainst_clote` WRITE;
/*!40000 ALTER TABLE `infraestructurainst_clote` DISABLE KEYS */;
/*!40000 ALTER TABLE `infraestructurainst_clote` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-09 12:19:36
