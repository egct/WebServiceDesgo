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
-- Table structure for table `ddescriptivospredio_iulote`
--

DROP TABLE IF EXISTS `ddescriptivospredio_iulote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ddescriptivospredio_iulote` (
  `ID_DDPLOTE` int(11) NOT NULL AUTO_INCREMENT,
  `ID_DLOTE` int(11) NOT NULL,
  `NOMBRESECTOR_DDPLOTE` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `NOMBREEDIFICIO_DDPLOTE` char(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `USOPREDIO_DDPLOTE` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `TIPOPREDIO_DDPLOTE` char(10) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `REGIMENTENECIA_DDPLOTE` char(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`ID_DDPLOTE`),
  KEY `FK_DIRECCIONDESCRIPTIVO` (`ID_DLOTE`),
  CONSTRAINT `FK_DIRECCIONDESCRIPTIVO` FOREIGN KEY (`ID_DLOTE`) REFERENCES `direccion_ddplote` (`ID_DLOTE`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ddescriptivospredio_iulote`
--

LOCK TABLES `ddescriptivospredio_iulote` WRITE;
/*!40000 ALTER TABLE `ddescriptivospredio_iulote` DISABLE KEYS */;
INSERT INTO `ddescriptivospredio_iulote` VALUES (1,1,'La Merced','Familia Cuichan Tipan','Vivienda','Rural','Popiedad Horizontal'),(5,6,'Conocoto','San Luis','Comercial','Rural','Unipropiedad'),(6,7,'Conocoto','San Luis','Comercial','Urbano','Popiedad Horizontal'),(33,34,'Alangasi','SN','SN','Rural','Unipropiedad'),(43,44,'','','','Rural','Unipropiedad');
/*!40000 ALTER TABLE `ddescriptivospredio_iulote` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-09 12:22:00
