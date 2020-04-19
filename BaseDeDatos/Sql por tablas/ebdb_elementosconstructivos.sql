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
-- Table structure for table `elementosconstructivos`
--

DROP TABLE IF EXISTS `elementosconstructivos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elementosconstructivos` (
  `ID_EC` int(11) NOT NULL AUTO_INCREMENT,
  `ID_EST` int(11) NOT NULL,
  `ID_AC` int(11) NOT NULL,
  `NB_EC` char(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `NP_EC` char(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `UC_EC` char(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CUBIERTA_EC` char(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `USOCONSTRUCCION_EC` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`ID_EC`),
  KEY `FK_ACABADOSEC` (`ID_AC`),
  KEY `FK_ESTRUCTURAEC` (`ID_EST`),
  CONSTRAINT `FK_ACABADOSEC` FOREIGN KEY (`ID_AC`) REFERENCES `acabados_ec` (`ID_AC`),
  CONSTRAINT `FK_ESTRUCTURAEC` FOREIGN KEY (`ID_EST`) REFERENCES `estructura_ec` (`ID_EST`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elementosconstructivos`
--

LOCK TABLES `elementosconstructivos` WRITE;
/*!40000 ALTER TABLE `elementosconstructivos` DISABLE KEYS */;
/*!40000 ALTER TABLE `elementosconstructivos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-09 12:22:36