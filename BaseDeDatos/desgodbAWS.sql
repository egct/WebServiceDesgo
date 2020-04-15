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

--
-- Table structure for table `caracteristicasconstruccionlote`
--

DROP TABLE IF EXISTS `caracteristicasconstruccionlote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caracteristicasconstruccionlote` (
  `ID_CCLOTE` int(11) NOT NULL AUTO_INCREMENT,
  `ID_PH_CCLOTE` int(11) NOT NULL,
  `ID_CBP_CCLOTE` int(11) NOT NULL,
  `ID_DDB_CCLOTE` int(11) NOT NULL,
  PRIMARY KEY (`ID_CCLOTE`),
  KEY `FK_CARACTERISTICAPH` (`ID_PH_CCLOTE`),
  KEY `FK_CLAVECARACTERISTICA` (`ID_CBP_CCLOTE`),
  KEY `FK_DDESCRIPTIVOCARACTERISTICA` (`ID_DDB_CCLOTE`),
  CONSTRAINT `FK_CARACTERISTICAPH` FOREIGN KEY (`ID_PH_CCLOTE`) REFERENCES `ph_cclote` (`ID_PH_CCLOTE`),
  CONSTRAINT `FK_CLAVECARACTERISTICA` FOREIGN KEY (`ID_CBP_CCLOTE`) REFERENCES `clavebloquepiso_cclote` (`ID_CBP_CCLOTE`),
  CONSTRAINT `FK_DDESCRIPTIVOCARACTERISTICA` FOREIGN KEY (`ID_DDB_CCLOTE`) REFERENCES `datosdescriptivosbloque_cclote` (`ID_DDB_CCLOTE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caracteristicasconstruccionlote`
--

LOCK TABLES `caracteristicasconstruccionlote` WRITE;
/*!40000 ALTER TABLE `caracteristicasconstruccionlote` DISABLE KEYS */;
/*!40000 ALTER TABLE `caracteristicasconstruccionlote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caracterizacionlote`
--

DROP TABLE IF EXISTS `caracterizacionlote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caracterizacionlote` (
  `ID_CLOTE` int(11) NOT NULL AUTO_INCREMENT,
  `ID_II_CLOTE` int(11) NOT NULL,
  `AREA_CLOTE` decimal(10,0) DEFAULT NULL,
  `DIMENSIONFRENTE_CLOTE` decimal(10,0) DEFAULT NULL,
  `LOCALIZACIONMANZANA_CLOTE` char(2) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`ID_CLOTE`),
  KEY `FK_INFRAESTRUCTURACARACTERIZACION` (`ID_II_CLOTE`),
  CONSTRAINT `FK_INFRAESTRUCTURACARACTERIZACION` FOREIGN KEY (`ID_II_CLOTE`) REFERENCES `infraestructurainst_clote` (`ID_II_CLOTE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caracterizacionlote`
--

LOCK TABLES `caracterizacionlote` WRITE;
/*!40000 ALTER TABLE `caracterizacionlote` DISABLE KEYS */;
/*!40000 ALTER TABLE `caracterizacionlote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `circulo_m`
--

DROP TABLE IF EXISTS `circulo_m`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `circulo_m` (
  `ID_CC` int(11) NOT NULL AUTO_INCREMENT,
  `ID_M` int(11) NOT NULL,
  `LATITUD_CC` decimal(10,0) DEFAULT NULL,
  `LONGITUD_CC` decimal(10,0) DEFAULT NULL,
  `X_CC` decimal(10,0) DEFAULT NULL,
  `Y_CC` decimal(10,0) DEFAULT NULL,
  `Z_CC` decimal(10,0) DEFAULT NULL,
  `AREA_CC` decimal(10,0) DEFAULT NULL,
  `DIAMETRO_CC` decimal(10,0) DEFAULT NULL,
  `PERIMETRO` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`ID_CC`),
  KEY `FK_CIRCULOM` (`ID_M`),
  CONSTRAINT `FK_CIRCULOM` FOREIGN KEY (`ID_M`) REFERENCES `mapa` (`ID_M`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `circulo_m`
--

LOCK TABLES `circulo_m` WRITE;
/*!40000 ALTER TABLE `circulo_m` DISABLE KEYS */;
/*!40000 ALTER TABLE `circulo_m` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clavebloquepiso_cclote`
--

DROP TABLE IF EXISTS `clavebloquepiso_cclote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clavebloquepiso_cclote` (
  `ID_CBP_CCLOTE` int(11) NOT NULL AUTO_INCREMENT,
  `CODIGOUBICACION_CBP_CCLOTE` char(16) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CODIGOBLOQUE_CBP_CCLOTE` char(3) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CODIGOPISO_CBP_CCLOTE` char(2) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CODIGOUNIDAD_CBP_CCLOTE` char(3) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CLAVEBLOQUEPISO_CBP_CCLOTE` char(24) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`ID_CBP_CCLOTE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clavebloquepiso_cclote`
--

LOCK TABLES `clavebloquepiso_cclote` WRITE;
/*!40000 ALTER TABLE `clavebloquepiso_cclote` DISABLE KEYS */;
/*!40000 ALTER TABLE `clavebloquepiso_cclote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conyuge_pnpro`
--

DROP TABLE IF EXISTS `conyuge_pnpro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conyuge_pnpro` (
  `ID_PNPRO2` int(11) NOT NULL AUTO_INCREMENT,
  `ID_PNPRO` int(11) DEFAULT NULL,
  `NAPELLIDO_CON_PNPRO` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `NDIDENTIFICACION_CON_PNPRO` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `TELEFONO_CON_PNPRO` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CORREO_CON_PNPRO` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `TIPOIDENTIFICACION_CON_PNPRO` char(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CONDICIONFISICA_CON_PNPRO` char(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`ID_PNPRO2`),
  KEY `FK_CONYUGEPERSONA` (`ID_PNPRO`),
  CONSTRAINT `FK_CONYUGEPERSONA` FOREIGN KEY (`ID_PNPRO`) REFERENCES `personanatural_pro` (`ID_PNPRO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conyuge_pnpro`
--

LOCK TABLES `conyuge_pnpro` WRITE;
/*!40000 ALTER TABLE `conyuge_pnpro` DISABLE KEYS */;
/*!40000 ALTER TABLE `conyuge_pnpro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coopropietarios_illote`
--

DROP TABLE IF EXISTS `coopropietarios_illote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coopropietarios_illote` (
  `ID_COP_ILLOTE` int(11) NOT NULL AUTO_INCREMENT,
  `NAPELLIDOS_COP_ILLOTE` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `NDIDENTIFICACION_COP_ILLOTE` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `PORCENTAJE_COP_ILLOTE` decimal(10,0) DEFAULT NULL,
  `ALICUOTA_COP_ILLOTE` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `FESCRITURA_COP_ILLOTE` date DEFAULT NULL,
  `FINSCRIPCION_COP_ILLOTE` date DEFAULT NULL,
  PRIMARY KEY (`ID_COP_ILLOTE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coopropietarios_illote`
--

LOCK TABLES `coopropietarios_illote` WRITE;
/*!40000 ALTER TABLE `coopropietarios_illote` DISABLE KEYS */;
/*!40000 ALTER TABLE `coopropietarios_illote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuadrado_m`
--

DROP TABLE IF EXISTS `cuadrado_m`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuadrado_m` (
  `ID_C` int(11) NOT NULL AUTO_INCREMENT,
  `ID_M` int(11) NOT NULL,
  `LATITUD_C` decimal(10,0) DEFAULT NULL,
  `LONGITUD_C` decimal(10,0) DEFAULT NULL,
  `X_C` decimal(10,0) DEFAULT NULL,
  `Y_C` decimal(10,0) DEFAULT NULL,
  `Z_C` decimal(10,0) DEFAULT NULL,
  `AREA_C` decimal(10,0) DEFAULT NULL,
  `PERIMETRO_C` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`ID_C`),
  KEY `FK_CUADRADOM` (`ID_M`),
  CONSTRAINT `FK_CUADRADOM` FOREIGN KEY (`ID_M`) REFERENCES `mapa` (`ID_M`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuadrado_m`
--

LOCK TABLES `cuadrado_m` WRITE;
/*!40000 ALTER TABLE `cuadrado_m` DISABLE KEYS */;
/*!40000 ALTER TABLE `cuadrado_m` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datosdescriptivosbloque_cclote`
--

DROP TABLE IF EXISTS `datosdescriptivosbloque_cclote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datosdescriptivosbloque_cclote` (
  `ID_DDB_CCLOTE` int(11) NOT NULL AUTO_INCREMENT,
  `NIVELPISO_DDB_CCLOTE` char(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CONDICIONFISICA_DDB_CCLOTE` char(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `VALORCULTURAL_DDB_CCLOTE` char(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ESTADOCONSERVACION_DDB_CCLOTE` char(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ANIOCONSTRUCCION_DDB_CCLOTE` int(11) DEFAULT NULL,
  `ANIORESTAURACION_DDB_CCLOTE` int(11) DEFAULT NULL,
  `AREACONSTRUIDA_DDB_CCLOTE` decimal(10,0) DEFAULT NULL,
  `USOCONSTRUCTIVOPISO_DDB_CCLOTE` char(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`ID_DDB_CCLOTE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datosdescriptivosbloque_cclote`
--

LOCK TABLES `datosdescriptivosbloque_cclote` WRITE;
/*!40000 ALTER TABLE `datosdescriptivosbloque_cclote` DISABLE KEYS */;
/*!40000 ALTER TABLE `datosdescriptivosbloque_cclote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datosdunidad_vclote`
--

DROP TABLE IF EXISTS `datosdunidad_vclote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datosdunidad_vclote` (
  `ID_DDU_VCLOTE` int(11) NOT NULL AUTO_INCREMENT,
  `CLASIFICACIONVIVIENDA_DDU_VCLOTE` char(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `TIPODOCUMENTO_DDU_VCLOTE` char(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `TIPOVIVIENDA_DDU_VCLOTE` char(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CONDICIONOCUPACION_DDU_VCLOTE` char(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `DESCRIPCIONDOCIDEN_DDU_VCLOTE` char(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `APJEFEHGAR_DDU_VCLOTE` char(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`ID_DDU_VCLOTE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datosdunidad_vclote`
--

LOCK TABLES `datosdunidad_vclote` WRITE;
/*!40000 ALTER TABLE `datosdunidad_vclote` DISABLE KEYS */;
/*!40000 ALTER TABLE `datosdunidad_vclote` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `direccion_ddplote`
--

DROP TABLE IF EXISTS `direccion_ddplote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `direccion_ddplote` (
  `ID_DLOTE` int(11) NOT NULL AUTO_INCREMENT,
  `CALLEP_DLOTE` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `NO_DLOTE` char(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `INTERSECCION_DLOTE` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`ID_DLOTE`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direccion_ddplote`
--

LOCK TABLES `direccion_ddplote` WRITE;
/*!40000 ALTER TABLE `direccion_ddplote` DISABLE KEYS */;
INSERT INTO `direccion_ddplote` VALUES (1,'Av. Ilalo S/N','4220111','3 de Mayo'),(6,'Av general enriquez','2556','Planetas'),(7,'Av general enriquez','2556','Planetas'),(34,'Av.  Ilalo','9562302','Sn'),(44,'','','');
/*!40000 ALTER TABLE `direccion_ddplote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direccion_illote`
--

DROP TABLE IF EXISTS `direccion_illote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `direccion_illote` (
  `ID_DIR_ILLOTE` int(11) NOT NULL AUTO_INCREMENT,
  `PAIS_DIR_ILLOTE` char(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CIUDAD_DIR_ILLOTE` char(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CALLEP_DIR_ILLOTE` char(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `NO_DIR_ILLOTE` char(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `INTERSECCIOM_DIR_ILLOTE` char(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CELULAR_DIR_ILLOTE` char(15) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CONVENCIONAL_DIR_ILLOTE` char(15) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CORREO` char(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`ID_DIR_ILLOTE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direccion_illote`
--

LOCK TABLES `direccion_illote` WRITE;
/*!40000 ALTER TABLE `direccion_illote` DISABLE KEYS */;
/*!40000 ALTER TABLE `direccion_illote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documentotitulopro_illote`
--

DROP TABLE IF EXISTS `documentotitulopro_illote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documentotitulopro_illote` (
  `ID_DOC_ILLOTE` int(11) NOT NULL AUTO_INCREMENT,
  `NNOTARIA_DOC_ILLOTE` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CANTONITITULO_DOC_ILLOTE` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `FECHAINSCRIPCION_DOC_ILLOTE` date DEFAULT NULL,
  `FECHAPROTOCOLIZACION_DOC_ILLOTE` date DEFAULT NULL,
  `INCRIPCIONTITULO_DOC_ILLOTE` char(4) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `AREA_DOC_ILLOTE` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `UNIDADES_DOC_ILLOTE` char(10) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`ID_DOC_ILLOTE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documentotitulopro_illote`
--

LOCK TABLES `documentotitulopro_illote` WRITE;
/*!40000 ALTER TABLE `documentotitulopro_illote` DISABLE KEYS */;
/*!40000 ALTER TABLE `documentotitulopro_illote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `economialote`
--

DROP TABLE IF EXISTS `economialote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `economialote` (
  `ID_ELOTE` int(11) NOT NULL AUTO_INCREMENT,
  `AVALUOTIERRA_ELOTE` decimal(10,0) DEFAULT NULL,
  `AVALUOCON_ELOTE` decimal(10,0) DEFAULT NULL,
  `AVALUOTOTAL_ELOTE` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`ID_ELOTE`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `economialote`
--

LOCK TABLES `economialote` WRITE;
/*!40000 ALTER TABLE `economialote` DISABLE KEYS */;
INSERT INTO `economialote` VALUES (1,2,150,152),(2,11,150,161);
/*!40000 ALTER TABLE `economialote` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `estructura_ec`
--

DROP TABLE IF EXISTS `estructura_ec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estructura_ec` (
  `ID_EST` int(11) NOT NULL AUTO_INCREMENT,
  `COLUMNAS_EST` char(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `VIGA_EST` char(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `PARED_EST` char(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ENTREPISO_EST` char(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`ID_EST`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estructura_ec`
--

LOCK TABLES `estructura_ec` WRITE;
/*!40000 ALTER TABLE `estructura_ec` DISABLE KEYS */;
/*!40000 ALTER TABLE `estructura_ec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formulario`
--

DROP TABLE IF EXISTS `formulario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formulario` (
  `ID_FORMULARIO` int(11) NOT NULL AUTO_INCREMENT,
  `ID_CLOTE` int(11) DEFAULT NULL,
  `ID_ELOTE` int(11) DEFAULT NULL,
  `ID_VCLOTE` int(11) DEFAULT NULL,
  `ID_RLOTE` int(11) DEFAULT NULL,
  `ID_MLOTE` int(11) DEFAULT NULL,
  `ID_LLOTE` int(11) DEFAULT NULL,
  `ID_ILLOTE` int(11) DEFAULT NULL,
  `ID_GPLOTE` int(11) DEFAULT NULL,
  `ID_EC` int(11) DEFAULT NULL,
  `ID_IULOTE` int(11) NOT NULL,
  `ID_CCLOTE` int(11) DEFAULT NULL,
  `ID_M` int(11) DEFAULT NULL,
  `ID_USUARIO` int(11) DEFAULT NULL,
  `CODIGO_FORMULARIO` int(11) NOT NULL,
  `ESTADO_FORMULARIO` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID_FORMULARIO`),
  KEY `FK_CARACTERIZACIONFORMULARIO` (`ID_CLOTE`),
  KEY `FK_CCFORMULARIO` (`ID_CCLOTE`),
  KEY `FK_ECFORMULARIO` (`ID_EC`),
  KEY `FK_ECONOMIAFORMULARIO` (`ID_ELOTE`),
  KEY `FK_GRAFICOSFORMULARIO` (`ID_GPLOTE`),
  KEY `FK_IDENTIFICACIONLEGALFORMULARIO` (`ID_ILLOTE`),
  KEY `FK_IDENTIFICACIONUBICACIONFORMULARIO` (`ID_IULOTE`),
  KEY `FK_LIMITEFORMULARIO` (`ID_LLOTE`),
  KEY `FK_MAPAFORMULARIO` (`ID_M`),
  KEY `FK_MEJORASFORMULARIO` (`ID_MLOTE`),
  KEY `FK_RESPONSABLEFORMULARIO` (`ID_RLOTE`),
  KEY `FK_USUARIOFORMULARIO` (`ID_USUARIO`),
  KEY `FK_VIVIENDACENSALFORMULARIO` (`ID_VCLOTE`),
  CONSTRAINT `FK_CARACTERIZACIONFORMULARIO` FOREIGN KEY (`ID_CLOTE`) REFERENCES `caracterizacionlote` (`ID_CLOTE`),
  CONSTRAINT `FK_CCFORMULARIO` FOREIGN KEY (`ID_CCLOTE`) REFERENCES `caracteristicasconstruccionlote` (`ID_CCLOTE`),
  CONSTRAINT `FK_ECFORMULARIO` FOREIGN KEY (`ID_EC`) REFERENCES `elementosconstructivos` (`ID_EC`),
  CONSTRAINT `FK_ECONOMIAFORMULARIO` FOREIGN KEY (`ID_ELOTE`) REFERENCES `economialote` (`ID_ELOTE`),
  CONSTRAINT `FK_GRAFICOSFORMULARIO` FOREIGN KEY (`ID_GPLOTE`) REFERENCES `graficosprediolote` (`ID_GPLOTE`),
  CONSTRAINT `FK_IDENTIFICACIONLEGALFORMULARIO` FOREIGN KEY (`ID_ILLOTE`) REFERENCES `identificacionlegallote` (`ID_ILLOTE`),
  CONSTRAINT `FK_IDENTIFICACIONUBICACIONFORMULARIO` FOREIGN KEY (`ID_IULOTE`) REFERENCES `identificacionubicacionlote` (`ID_IULOTE`),
  CONSTRAINT `FK_LIMITEFORMULARIO` FOREIGN KEY (`ID_LLOTE`) REFERENCES `limiteslote` (`ID_LLOTE`),
  CONSTRAINT `FK_MAPAFORMULARIO` FOREIGN KEY (`ID_M`) REFERENCES `mapa` (`ID_M`),
  CONSTRAINT `FK_MEJORASFORMULARIO` FOREIGN KEY (`ID_MLOTE`) REFERENCES `mejoraslote` (`ID_MLOTE`),
  CONSTRAINT `FK_RESPONSABLEFORMULARIO` FOREIGN KEY (`ID_RLOTE`) REFERENCES `responsableslote` (`ID_RLOTE`),
  CONSTRAINT `FK_USUARIOFORMULARIO` FOREIGN KEY (`ID_USUARIO`) REFERENCES `usuario` (`ID_USUARIO`),
  CONSTRAINT `FK_VIVIENDACENSALFORMULARIO` FOREIGN KEY (`ID_VCLOTE`) REFERENCES `viviendacensallote` (`ID_VCLOTE`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formulario`
--

LOCK TABLES `formulario` WRITE;
/*!40000 ALTER TABLE `formulario` DISABLE KEYS */;
INSERT INTO `formulario` VALUES (3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,1,1724254205,0),(8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,NULL,NULL,1,1723954889,0),(9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6,NULL,NULL,1,1723954111,0),(25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,33,NULL,NULL,1,1166171232,1),(35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,43,NULL,NULL,1,1746171200,0);
/*!40000 ALTER TABLE `formulario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graficosprediolote`
--

DROP TABLE IF EXISTS `graficosprediolote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `graficosprediolote` (
  `ID_GPLOTE` int(11) NOT NULL AUTO_INCREMENT,
  `PLANOPREDIO_GPLOTE` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `FOTOGRAFIAFACHADA` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`ID_GPLOTE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graficosprediolote`
--

LOCK TABLES `graficosprediolote` WRITE;
/*!40000 ALTER TABLE `graficosprediolote` DISABLE KEYS */;
/*!40000 ALTER TABLE `graficosprediolote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `identificacionlegallote`
--

DROP TABLE IF EXISTS `identificacionlegallote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `identificacionlegallote` (
  `ID_ILLOTE` int(11) NOT NULL AUTO_INCREMENT,
  `ID_PRO` int(11) NOT NULL,
  `ID_PRE_ILLOTE` int(11) NOT NULL,
  `ID_COP_ILLOTE` int(11) NOT NULL,
  `ID_DIR_ILLOTE` int(11) NOT NULL,
  `ID_DOC_ILLOTE` int(11) NOT NULL,
  `FORMAADQUISICION` char(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`ID_ILLOTE`),
  KEY `FK_COOPROPIETARIOIDENTIFICACION` (`ID_COP_ILLOTE`),
  KEY `FK_DIRECCIONIDENTIFICACION` (`ID_DIR_ILLOTE`),
  KEY `FK_DOCUMENTOIDENTIFICACION` (`ID_DOC_ILLOTE`),
  KEY `FK_IDENTIFICACIONPREDIO` (`ID_PRE_ILLOTE`),
  KEY `FK_PROPIETARIOINDETIFICACION` (`ID_PRO`),
  CONSTRAINT `FK_COOPROPIETARIOIDENTIFICACION` FOREIGN KEY (`ID_COP_ILLOTE`) REFERENCES `coopropietarios_illote` (`ID_COP_ILLOTE`),
  CONSTRAINT `FK_DIRECCIONIDENTIFICACION` FOREIGN KEY (`ID_DIR_ILLOTE`) REFERENCES `direccion_illote` (`ID_DIR_ILLOTE`),
  CONSTRAINT `FK_DOCUMENTOIDENTIFICACION` FOREIGN KEY (`ID_DOC_ILLOTE`) REFERENCES `documentotitulopro_illote` (`ID_DOC_ILLOTE`),
  CONSTRAINT `FK_IDENTIFICACIONPREDIO` FOREIGN KEY (`ID_PRE_ILLOTE`) REFERENCES `prediotitulo_illote` (`ID_PRE_ILLOTE`),
  CONSTRAINT `FK_PROPIETARIOINDETIFICACION` FOREIGN KEY (`ID_PRO`) REFERENCES `propietario_illote` (`ID_PRO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identificacionlegallote`
--

LOCK TABLES `identificacionlegallote` WRITE;
/*!40000 ALTER TABLE `identificacionlegallote` DISABLE KEYS */;
/*!40000 ALTER TABLE `identificacionlegallote` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `instalacionnivelv_vclote`
--

DROP TABLE IF EXISTS `instalacionnivelv_vclote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instalacionnivelv_vclote` (
  `ID_INV_VCLOTE` int(11) NOT NULL AUTO_INCREMENT,
  `ACABADOPISO_INV_VCLOTE` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `EACABADOPISO_INV_VCLOTE` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `AGUAP_INV_VCLOTE` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `AGUAR_INV_VCLOTE` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `EEXCRETAS_INV_VCLOTE` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ENERGIAEP_INV_VCLOTE` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ELIMINACIONBASURA_INV_VCLOTE` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `TENENCIAVIVIENDA_INV_VCLOTE` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `NUMEROHABITACION_INV_VCLOTE` int(11) DEFAULT NULL,
  `NUMERODORMITORIO_INV_VCLOTE` int(11) DEFAULT NULL,
  `ESPACIODUCHARSE_INV_VCLOTE` int(11) DEFAULT NULL,
  `NUMEROHABITANTES` int(11) DEFAULT NULL,
  `NUMEROHOGARES_INV_VCLOTE` int(11) DEFAULT NULL,
  `TELEFONOCONVENCIONAL_INV_VCLOTE` tinyint(1) DEFAULT NULL,
  `NUMEROCELULARES_INV_VCLOTE` int(11) DEFAULT NULL,
  `SERVICIOINTERNET_INV_VCLOTE` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_INV_VCLOTE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instalacionnivelv_vclote`
--

LOCK TABLES `instalacionnivelv_vclote` WRITE;
/*!40000 ALTER TABLE `instalacionnivelv_vclote` DISABLE KEYS */;
/*!40000 ALTER TABLE `instalacionnivelv_vclote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `limiteslote`
--

DROP TABLE IF EXISTS `limiteslote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `limiteslote` (
  `ID_LLOTE` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRECOLINDANTES_LLOTE` char(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `AREAESCRITURA_LLOTE` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`ID_LLOTE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `limiteslote`
--

LOCK TABLES `limiteslote` WRITE;
/*!40000 ALTER TABLE `limiteslote` DISABLE KEYS */;
/*!40000 ALTER TABLE `limiteslote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lineas_m`
--

DROP TABLE IF EXISTS `lineas_m`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lineas_m` (
  `ID_L` int(11) NOT NULL AUTO_INCREMENT,
  `ID_M` int(11) NOT NULL,
  `LATITUD_L` decimal(10,0) DEFAULT NULL,
  `LONGITUD_L` decimal(10,0) DEFAULT NULL,
  `X_L` decimal(10,0) DEFAULT NULL,
  `Y_L` decimal(10,0) DEFAULT NULL,
  `Z_L` decimal(10,0) DEFAULT NULL,
  `DISTANCIA_L` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`ID_L`),
  KEY `FK_LINEAM` (`ID_M`),
  CONSTRAINT `FK_LINEAM` FOREIGN KEY (`ID_M`) REFERENCES `mapa` (`ID_M`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lineas_m`
--

LOCK TABLES `lineas_m` WRITE;
/*!40000 ALTER TABLE `lineas_m` DISABLE KEYS */;
/*!40000 ALTER TABLE `lineas_m` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mapa`
--

DROP TABLE IF EXISTS `mapa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapa` (
  `ID_M` int(11) NOT NULL AUTO_INCREMENT,
  `NAME_M` varchar(60) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ADDRESS_M` varchar(80) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `LAT_M` float(10,6) DEFAULT NULL,
  `LNG_M` float(10,6) DEFAULT NULL,
  `TYPE_M` varchar(30) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `X_M` float DEFAULT NULL,
  `Y_M` float DEFAULT NULL,
  PRIMARY KEY (`ID_M`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapa`
--

LOCK TABLES `mapa` WRITE;
/*!40000 ALTER TABLE `mapa` DISABLE KEYS */;
/*!40000 ALTER TABLE `mapa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mejoraslote`
--

DROP TABLE IF EXISTS `mejoraslote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mejoraslote` (
  `ID_MLOTE` int(11) NOT NULL AUTO_INCREMENT,
  `TIPOOBRA_MLOTE` char(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `MATERIALES_MLOTE` char(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `AREA_MLOTE` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`ID_MLOTE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mejoraslote`
--

LOCK TABLES `mejoraslote` WRITE;
/*!40000 ALTER TABLE `mejoraslote` DISABLE KEYS */;
/*!40000 ALTER TABLE `mejoraslote` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `personajuridica_pro`
--

DROP TABLE IF EXISTS `personajuridica_pro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personajuridica_pro` (
  `ID_PJURI` int(11) NOT NULL AUTO_INCREMENT,
  `RAZONSOCIAL_PJURI` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `RUC_PJURI` char(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `LUGARINSCRIPCION_PJURI` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `NACUERDOREGISTRO_PJURI` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `NOMBREREPRESENTANTE_PJURI` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `INSCRITO_PJURI` char(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `TIPOIDENTIFICACION_PJURI` char(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`ID_PJURI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personajuridica_pro`
--

LOCK TABLES `personajuridica_pro` WRITE;
/*!40000 ALTER TABLE `personajuridica_pro` DISABLE KEYS */;
/*!40000 ALTER TABLE `personajuridica_pro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personanatural_pro`
--

DROP TABLE IF EXISTS `personanatural_pro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personanatural_pro` (
  `ID_PNPRO` int(11) NOT NULL AUTO_INCREMENT,
  `NAPELLIDO_CON_PNPRO` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `NDIDENTIFICACION_CON_PNPRO` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `TELEFONO_CON_PNPRO` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CORREO_CON_PNPRO` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ESTADOCIVIL_PNPRO` char(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `TIPOIDENTIFICACION_CON_PNPRO` char(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CONDICIONFISICA_CON_PNPRO` char(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`ID_PNPRO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personanatural_pro`
--

LOCK TABLES `personanatural_pro` WRITE;
/*!40000 ALTER TABLE `personanatural_pro` DISABLE KEYS */;
/*!40000 ALTER TABLE `personanatural_pro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ph_cclote`
--

DROP TABLE IF EXISTS `ph_cclote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ph_cclote` (
  `ID_PH_CCLOTE` int(11) NOT NULL AUTO_INCREMENT,
  `ALICUOTA_PH_CCLOTE` decimal(10,0) DEFAULT NULL,
  `AREADECLARADA_PH_CCLOTE` decimal(10,0) DEFAULT NULL,
  `UNIDADMEDIDA_PH_CCLOTE` char(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `AREAAUEMENTOCONSTRUCTIVO_PH_CCLOTE` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`ID_PH_CCLOTE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ph_cclote`
--

LOCK TABLES `ph_cclote` WRITE;
/*!40000 ALTER TABLE `ph_cclote` DISABLE KEYS */;
/*!40000 ALTER TABLE `ph_cclote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poligono_m`
--

DROP TABLE IF EXISTS `poligono_m`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poligono_m` (
  `ID_POL` int(11) NOT NULL AUTO_INCREMENT,
  `ID_M` int(11) NOT NULL,
  `LATITUD_POL` decimal(10,0) DEFAULT NULL,
  `LONGITUD_POL` decimal(10,0) DEFAULT NULL,
  `X_POL` decimal(10,0) DEFAULT NULL,
  `Y_POL` decimal(10,0) DEFAULT NULL,
  `Z_POL` decimal(10,0) DEFAULT NULL,
  `AREA_POL` decimal(10,0) DEFAULT NULL,
  `PERIMETRO_POL` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`ID_POL`),
  KEY `FK_POLIGONOM` (`ID_M`),
  CONSTRAINT `FK_POLIGONOM` FOREIGN KEY (`ID_M`) REFERENCES `mapa` (`ID_M`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poligono_m`
--

LOCK TABLES `poligono_m` WRITE;
/*!40000 ALTER TABLE `poligono_m` DISABLE KEYS */;
/*!40000 ALTER TABLE `poligono_m` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prediotitulo_illote`
--

DROP TABLE IF EXISTS `prediotitulo_illote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prediotitulo_illote` (
  `ID_PRE_ILLOTE` int(11) NOT NULL AUTO_INCREMENT,
  `REQUIEREPERF_PRE_ILLOTE` tinyint(1) DEFAULT NULL,
  `ANIOSSINPER_PRE_ILLOTE` char(4) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ANIOSPOS_PRE_ILLOTE` char(4) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `NOMBREPUEBLO_PRE_ILLOTE` char(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`ID_PRE_ILLOTE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prediotitulo_illote`
--

LOCK TABLES `prediotitulo_illote` WRITE;
/*!40000 ALTER TABLE `prediotitulo_illote` DISABLE KEYS */;
/*!40000 ALTER TABLE `prediotitulo_illote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `propietario_illote`
--

DROP TABLE IF EXISTS `propietario_illote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `propietario_illote` (
  `ID_PRO` int(11) NOT NULL AUTO_INCREMENT,
  `TIPOPROPIETARIO_PER` char(10) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `PERSONERIAJURIDICA_PER` char(10) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`ID_PRO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propietario_illote`
--

LOCK TABLES `propietario_illote` WRITE;
/*!40000 ALTER TABLE `propietario_illote` DISABLE KEYS */;
/*!40000 ALTER TABLE `propietario_illote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `propietariotipoj`
--

DROP TABLE IF EXISTS `propietariotipoj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `propietariotipoj` (
  `ID_PJURI` int(11) NOT NULL,
  `ID_PRO` int(11) NOT NULL,
  PRIMARY KEY (`ID_PJURI`,`ID_PRO`),
  KEY `FK_PROPIETARIOTIPOJ2` (`ID_PRO`),
  CONSTRAINT `FK_PROPIETARIOTIPOJ` FOREIGN KEY (`ID_PJURI`) REFERENCES `personajuridica_pro` (`ID_PJURI`),
  CONSTRAINT `FK_PROPIETARIOTIPOJ2` FOREIGN KEY (`ID_PRO`) REFERENCES `propietario_illote` (`ID_PRO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propietariotipoj`
--

LOCK TABLES `propietariotipoj` WRITE;
/*!40000 ALTER TABLE `propietariotipoj` DISABLE KEYS */;
/*!40000 ALTER TABLE `propietariotipoj` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `propietariotipon`
--

DROP TABLE IF EXISTS `propietariotipon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `propietariotipon` (
  `ID_PNPRO` int(11) NOT NULL,
  `ID_PRO` int(11) NOT NULL,
  PRIMARY KEY (`ID_PNPRO`,`ID_PRO`),
  KEY `FK_PROPIETARIOTIPON2` (`ID_PRO`),
  CONSTRAINT `FK_PROPIETARIOTIPON` FOREIGN KEY (`ID_PNPRO`) REFERENCES `personanatural_pro` (`ID_PNPRO`),
  CONSTRAINT `FK_PROPIETARIOTIPON2` FOREIGN KEY (`ID_PRO`) REFERENCES `propietario_illote` (`ID_PRO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propietariotipon`
--

LOCK TABLES `propietariotipon` WRITE;
/*!40000 ALTER TABLE `propietariotipon` DISABLE KEYS */;
/*!40000 ALTER TABLE `propietariotipon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `punto_m`
--

DROP TABLE IF EXISTS `punto_m`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `punto_m` (
  `ID_P` int(11) NOT NULL AUTO_INCREMENT,
  `ID_M` int(11) NOT NULL,
  `LATITUD_P` decimal(10,0) DEFAULT NULL,
  `LONGITUD_P` decimal(10,0) DEFAULT NULL,
  `X_P` decimal(10,0) DEFAULT NULL,
  `Y_P` decimal(10,0) DEFAULT NULL,
  `Z_P` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`ID_P`),
  KEY `FK_PUNTOM` (`ID_M`),
  CONSTRAINT `FK_PUNTOM` FOREIGN KEY (`ID_M`) REFERENCES `mapa` (`ID_M`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `punto_m`
--

LOCK TABLES `punto_m` WRITE;
/*!40000 ALTER TABLE `punto_m` DISABLE KEYS */;
/*!40000 ALTER TABLE `punto_m` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `responsableslote`
--

DROP TABLE IF EXISTS `responsableslote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `responsableslote` (
  `ID_RLOTE` int(11) NOT NULL AUTO_INCREMENT,
  `ACTUALIZADORCEDULAPASAPORTE_RLOTE` char(10) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ACTUALIZADORFECHA_RLOTE` date DEFAULT NULL,
  `ACTUALIZADORFIRMA_RLOTE` char(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `FISCALIZADORCEDULAPASAPORTE_RLOTE` char(10) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `FISCALIZADORFECHA_RLOTE` date DEFAULT NULL,
  `FISCALIZADORFIRMA_RLOTE` char(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`ID_RLOTE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `responsableslote`
--

LOCK TABLES `responsableslote` WRITE;
/*!40000 ALTER TABLE `responsableslote` DISABLE KEYS */;
/*!40000 ALTER TABLE `responsableslote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipousuario`
--

DROP TABLE IF EXISTS `tipousuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipousuario` (
  `ID_TIPOUSUARIO` int(11) NOT NULL AUTO_INCREMENT,
  `NIVEL_TIPOUSUARIO` char(40) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`ID_TIPOUSUARIO`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipousuario`
--

LOCK TABLES `tipousuario` WRITE;
/*!40000 ALTER TABLE `tipousuario` DISABLE KEYS */;
INSERT INTO `tipousuario` VALUES (1,'Administrador'),(2,'Visualizador'),(3,'Gestor');
/*!40000 ALTER TABLE `tipousuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `ID_USUARIO` int(11) NOT NULL AUTO_INCREMENT,
  `ID_TIPOUSUARIO` int(11) NOT NULL,
  `ID_PERSONA` int(11) NOT NULL,
  `USUARIO_USUARIO` char(25) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CONTRASENIA_USUARIO` char(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `EMPRESA_USUARIO` char(25) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `SALT_USUARIO` int(11) NOT NULL,
  PRIMARY KEY (`ID_USUARIO`),
  KEY `FK_GENERAL` (`ID_PERSONA`),
  KEY `FK_TIPOUSUARIO` (`ID_TIPOUSUARIO`),
  CONSTRAINT `FK_GENERAL` FOREIGN KEY (`ID_PERSONA`) REFERENCES `persona` (`ID_PERSONA`),
  CONSTRAINT `FK_TIPOUSUARIO` FOREIGN KEY (`ID_TIPOUSUARIO`) REFERENCES `tipousuario` (`ID_TIPOUSUARIO`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,1,1,'egct','f9d4e342924e42f41f4833df59e19a8e417a7c7b955796ddcaadea1400fd133b','DESGO',100),(2,2,2,'aspb','aspb','DESGO2',0),(6,2,7,'cabas','cabas','DESGO',0),(9,2,13,'cab','cab','DESGO',0),(13,2,17,'egct2','egct2','DESGO',0),(14,2,7,'ca','f58593ec0e0de29e091db9b23e19fd5d9c24423b503db0460c45a1b9ae3efa0c','DESGO',620),(16,2,1,'edwinegct','e794d5287493453db702ed5a925d8aaee9a1d6395e5d7cca8f8fbc8a16521d26','DESGO',1705),(17,1,1,'edwin4','3a98e531dd2c780c83f81b4a97417f4909b0de2f9fc172ce56bcffd4c8424e12','DESGO',5755);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viviendacensallote`
--

DROP TABLE IF EXISTS `viviendacensallote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `viviendacensallote` (
  `ID_VCLOTE` int(11) NOT NULL AUTO_INCREMENT,
  `ID_DDU_VCLOTE` int(11) NOT NULL,
  `ID_INV_VCLOTE` int(11) NOT NULL,
  `CODIGOUNIDAD_VCLOTE` char(10) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `OBSERVACION_VCLOTE` text COLLATE utf8_spanish2_ci,
  PRIMARY KEY (`ID_VCLOTE`),
  KEY `FK_DDVIVIENDA` (`ID_DDU_VCLOTE`),
  KEY `FK_INVVIVIENDA` (`ID_INV_VCLOTE`),
  CONSTRAINT `FK_DDVIVIENDA` FOREIGN KEY (`ID_DDU_VCLOTE`) REFERENCES `datosdunidad_vclote` (`ID_DDU_VCLOTE`),
  CONSTRAINT `FK_INVVIVIENDA` FOREIGN KEY (`ID_INV_VCLOTE`) REFERENCES `instalacionnivelv_vclote` (`ID_INV_VCLOTE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viviendacensallote`
--

LOCK TABLES `viviendacensallote` WRITE;
/*!40000 ALTER TABLE `viviendacensallote` DISABLE KEYS */;
/*!40000 ALTER TABLE `viviendacensallote` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-09 12:28:54
