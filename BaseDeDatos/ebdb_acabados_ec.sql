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
-- Table structure for table `acabados_ec`
--

DROP TABLE IF EXISTS `acabados_ec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acabados_ec` (
  `ID_AC` int(11) NOT NULL AUTO_INCREMENT,
  `PISO_AC` char(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `PUERTAS_AC` char(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `VENTANA_AC` char(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `REVESTIMIENTOPARED_AC` char(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `REVESTIMIENTOCUBIERTA_AC` char(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `TUMBADO_AC` char(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ENERGIAELECTRICAP_AC` char(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ELRMINACIONEXCRETAS_AC` char(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `TIPOACABADO_AC` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`ID_AC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acabados_ec`
--

LOCK TABLES `acabados_ec` WRITE;
/*!40000 ALTER TABLE `acabados_ec` DISABLE KEYS */;
/*!40000 ALTER TABLE `acabados_ec` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-09 12:19:50
