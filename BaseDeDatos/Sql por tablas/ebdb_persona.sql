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
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persona` (
  `ID_PERSONA` int(11) NOT NULL AUTO_INCREMENT,
  `PNOMBRE_PERSONA` char(25) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `SNOMBRE_PERSONA` char(25) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `PAPELLIDO_PERSONA` char(25) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `SAPELLIDO_PERSONA` char(25) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `TELEFONO_PERSONA` char(25) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CORREO_PERSONA` char(25) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CARGO_PERSONA` char(25) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `PROFESION_PERSONA` char(25) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CEDULA_PERSONA` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `FOTO_PERSONA` varchar(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `EMPRESA_PERSONA` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`ID_PERSONA`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES (1,'Edwin','Giovanny','Cuichan','Tipan','0984467071','egct@outlook.es','Administrador','Ingeniero','1723953053','http://lacarpa.com.mx/wp-content/uploads/2019/06/whats-appfoto-perfil.png','DESGO'),(2,'Alexander','Sebastian','Portilla','Bravo','0984467072','alexander@outlook.es','Root','Ingeniero sistemas','1723953054','http://lacarpa.com.mx/wp-content/uploads/2019/06/whats-appfoto-perfil.png','DESGO'),(7,'Carlos','Alexis','Cabascango','Arias','022385592','ca@outlook.es','root','Desarrollador','1723953055',NULL,'DESGO'),(13,'Carla','Alexa','Cab','Ari','022385593','cabs@outlook.es','root','Desarrollador','1723953056','http://lacarpa.com.mx/wp-content/uploads/2019/06/whats-appfoto-perfil.png','EMAPSQ'),(17,'egct2','edwin','cuichan','egct2','0984467073','egct2@outlook.es','Superisor','Ingeniero','1723953054','topologiaredTotal.png','EMAPSQ');
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-09 12:21:21
