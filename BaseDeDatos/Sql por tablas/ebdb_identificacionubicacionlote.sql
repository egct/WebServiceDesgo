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
-- Table structure for table `identificacionubicacionlote`
--

DROP TABLE IF EXISTS `identificacionubicacionlote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `identificacionubicacionlote` (
  `ID_IULOTE` int(11) NOT NULL AUTO_INCREMENT,
  `ID_DDPLOTE` int(11) NOT NULL,
  `CLAVECATASTRALANTIGUO_IULOTE` char(26) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `NUMEROPREDIO_IULOTE` char(10) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CLAVECATASTRALNUEVO_IULOTE` char(26) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`ID_IULOTE`),
  KEY `FK_IDENTIFICACIONDIRECCION` (`ID_DDPLOTE`),
  CONSTRAINT `FK_IDENTIFICACIONDIRECCION` FOREIGN KEY (`ID_DDPLOTE`) REFERENCES `ddescriptivospredio_iulote` (`ID_DDPLOTE`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identificacionubicacionlote`
--

LOCK TABLES `identificacionubicacionlote` WRITE;
/*!40000 ALTER TABLE `identificacionubicacionlote` DISABLE KEYS */;
INSERT INTO `identificacionubicacionlote` VALUES (1,1,'897001','875111','321507'),(5,5,'4655004','6005','4004565'),(6,6,'4655004','6005','4004565'),(33,33,'4564','7899','55464'),(43,43,'','','');
/*!40000 ALTER TABLE `identificacionubicacionlote` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-09 12:22:43
