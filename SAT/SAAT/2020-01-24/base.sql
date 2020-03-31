-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sat
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `antena`
--

DROP TABLE IF EXISTS `antena`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `antena` (
  `idAntena` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Codigo` varchar(45) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Tipo` varchar(45) DEFAULT NULL,
  `Zona` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idAntena`),
  UNIQUE KEY `idAntena_UNIQUE` (`idAntena`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `antena`
--

LOCK TABLES `antena` WRITE;
/*!40000 ALTER TABLE `antena` DISABLE KEYS */;
/*!40000 ALTER TABLE `antena` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cliente` (
  `idCliente` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  `IP` varchar(45) NOT NULL,
  PRIMARY KEY (`idCliente`),
  UNIQUE KEY `idCliente_UNIQUE` (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=15558 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (15557,'Carlos','123321321');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datos_diagnostico`
--

DROP TABLE IF EXISTS `datos_diagnostico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `datos_diagnostico` (
  `idDatos_Diagnostico` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FK_Diagnostico` int(10) unsigned NOT NULL,
  `Key` varchar(45) NOT NULL,
  `Valor` varchar(45) DEFAULT NULL,
  `TS_Alta` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idDatos_Diagnostico`),
  UNIQUE KEY `idDatos_Diagnostico_UNIQUE` (`idDatos_Diagnostico`),
  KEY `fk_diagnostico_datosDiagnostico_Diagnostico_idx` (`FK_Diagnostico`),
  CONSTRAINT `fk_diagnostico_datosDiagnostico_Diagnostico` FOREIGN KEY (`FK_Diagnostico`) REFERENCES `diagnostico` (`idDiagnostico`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datos_diagnostico`
--

LOCK TABLES `datos_diagnostico` WRITE;
/*!40000 ALTER TABLE `datos_diagnostico` DISABLE KEYS */;
/*!40000 ALTER TABLE `datos_diagnostico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diagnostico`
--

DROP TABLE IF EXISTS `diagnostico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `diagnostico` (
  `idDiagnostico` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FK_Problema` int(10) unsigned NOT NULL,
  `FK_Resolucion` int(10) unsigned NOT NULL,
  `FK_Tecnico` int(10) unsigned NOT NULL,
  `FK_Cliente` int(10) unsigned NOT NULL,
  `TS_Alta` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `TS_UltimaModificacion` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idDiagnostico`),
  UNIQUE KEY `idDiagnostico_UNIQUE` (`idDiagnostico`),
  KEY `fk_problema_Diagnostico_Problema_idx` (`FK_Problema`),
  KEY `fk_resolucion_Diagnostico_Resolucion_idx` (`FK_Resolucion`),
  KEY `fk_tecnico_Diagnostico_Tecnico_idx` (`FK_Tecnico`),
  KEY `fk_cliente_Diagnostico_Cliente_idx` (`FK_Cliente`),
  CONSTRAINT `fk_cliente_Diagnostico_Cliente` FOREIGN KEY (`FK_Cliente`) REFERENCES `cliente` (`idCliente`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_problema_Diagnostico_Problema` FOREIGN KEY (`FK_Problema`) REFERENCES `problema` (`idProblema`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_resolucion_Diagnostico_Resolucion` FOREIGN KEY (`FK_Resolucion`) REFERENCES `resolucion` (`idResolucion`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_tecnico_Diagnostico_Tecnico` FOREIGN KEY (`FK_Tecnico`) REFERENCES `tecnico` (`idTecnico`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diagnostico`
--

LOCK TABLES `diagnostico` WRITE;
/*!40000 ALTER TABLE `diagnostico` DISABLE KEYS */;
INSERT INTO `diagnostico` VALUES (1,7,14,1,15557,'2019-12-01 22:45:13',NULL),(2,2,2,1,15557,'2019-12-01 22:45:13',NULL),(3,3,8,1,15557,'2019-12-01 22:45:13',NULL),(4,2,5,1,15557,'2019-12-02 00:27:59',NULL),(5,3,8,1,15557,'2019-12-02 00:30:13',NULL),(6,3,8,1,15557,'2019-12-02 00:35:06',NULL),(7,1,2,1,15557,'2019-12-02 00:35:28',NULL),(8,2,5,1,15557,'2019-12-02 22:01:28',NULL),(9,2,7,1,15557,'2019-12-19 04:40:13',NULL),(10,1,3,1,15557,'2019-12-19 04:40:26',NULL),(11,6,12,1,15557,'2019-12-19 04:41:51',NULL),(12,3,8,1,15557,'2019-12-19 04:43:04',NULL),(13,2,5,1,15557,'2019-12-19 04:43:45',NULL),(14,3,8,1,15557,'2019-12-19 04:43:57',NULL),(15,6,12,1,15557,'2019-12-19 04:44:07',NULL),(16,3,8,1,15557,'2019-12-19 04:44:22',NULL),(19,2,5,1,15557,'2019-12-19 05:23:06',NULL),(20,5,26,1,15557,'2019-12-19 05:23:13',NULL),(21,2,5,1,15557,'2019-12-19 05:24:14',NULL),(22,4,10,1,15557,'2019-12-19 06:34:00','2019-12-19 07:18:38'),(23,8,16,1,15557,'2020-01-06 19:21:29',NULL),(24,3,8,1,15557,'2020-01-06 23:31:51','2020-01-06 23:38:45');
/*!40000 ALTER TABLE `diagnostico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nota`
--

DROP TABLE IF EXISTS `nota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `nota` (
  `idNota` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Titulo` varchar(45) NOT NULL,
  `Comentario` varchar(80) DEFAULT NULL,
  `TS_Alta` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `FK_Cliente` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idNota`),
  UNIQUE KEY `idNota_UNIQUE` (`idNota`),
  KEY `fk_cliente_Nota_Cliente_idx` (`FK_Cliente`),
  CONSTRAINT `fk_cliente_Nota_Cliente` FOREIGN KEY (`FK_Cliente`) REFERENCES `cliente` (`idCliente`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nota`
--

LOCK TABLES `nota` WRITE;
/*!40000 ALTER TABLE `nota` DISABLE KEYS */;
INSERT INTO `nota` VALUES (1,'CC','Cuidado que este tipo es re pesado','2019-12-01 22:45:13',15557),(2,'2 Router','El tipo tiene 2 routers','2019-12-01 22:45:13',15557),(3,'asd','asd','2019-12-19 05:07:12',15557),(4,'1312','qwedeqwe','2019-12-19 05:07:27',15557),(5,'','','2019-12-19 05:10:46',15557),(6,'asd','qwqe2','2019-12-19 05:24:31',15557),(7,'Tiene un gato','El gato muerte el cable','2019-12-19 06:34:33',15557);
/*!40000 ALTER TABLE `nota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `panel`
--

DROP TABLE IF EXISTS `panel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `panel` (
  `idPanel` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Codigo` varchar(10) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `IP` varchar(25) NOT NULL,
  `Tipo` varchar(45) DEFAULT NULL,
  `FK_Antena` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idPanel`),
  UNIQUE KEY `idPanel_UNIQUE` (`idPanel`),
  KEY `fk_antena_Panel_Antena_idx` (`FK_Antena`),
  CONSTRAINT `fk_antena_Panel_Antena` FOREIGN KEY (`FK_Antena`) REFERENCES `antena` (`idAntena`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `panel`
--

LOCK TABLES `panel` WRITE;
/*!40000 ALTER TABLE `panel` DISABLE KEYS */;
/*!40000 ALTER TABLE `panel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `problema`
--

DROP TABLE IF EXISTS `problema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `problema` (
  `idProblema` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`idProblema`),
  UNIQUE KEY `idProblema_UNIQUE` (`idProblema`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `problema`
--

LOCK TABLES `problema` WRITE;
/*!40000 ALTER TABLE `problema` DISABLE KEYS */;
INSERT INTO `problema` VALUES (1,'Administracion'),(2,'Baja Velocidad'),(3,'Consultas'),(4,'Cortes'),(5,'Inconveniente Interno'),(6,'Nivel 2'),(7,'Problema General'),(8,'Redes Sociales'),(9,'Router'),(10,'Sin Internet');
/*!40000 ALTER TABLE `problema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resolucion`
--

DROP TABLE IF EXISTS `resolucion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `resolucion` (
  `idResolucion` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(45) NOT NULL,
  `FK_Problema` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idResolucion`),
  UNIQUE KEY `idResolucion_UNIQUE` (`idResolucion`),
  KEY `fk_problema_Resolucion_Problema_idx` (`FK_Problema`),
  CONSTRAINT `fk_problema_Resolucion_Problema` FOREIGN KEY (`FK_Problema`) REFERENCES `problema` (`idProblema`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resolucion`
--

LOCK TABLES `resolucion` WRITE;
/*!40000 ALTER TABLE `resolucion` DISABLE KEYS */;
INSERT INTO `resolucion` VALUES (1,'Resuelto',1),(2,'Cliente no responde',1),(3,'Derivado a otro sector',1),(4,'Suspendido',1),(5,'Resuelto',2),(6,'Cliente no responde',2),(7,'Ticket',2),(8,'IP Publica Fija',3),(9,'Resuelto',4),(10,'Cliente no responde',4),(11,'Ticket',4),(12,'Resuelto',6),(13,'Derivado a otro sector',6),(14,'Sin internet',7),(15,'Baja velocidad',7),(16,'Resuelto',8),(17,'Cliente no responde',8),(18,'Problema general',8),(19,'Resuelto',9),(20,'Cliente no responde',9),(21,'Derivado al local comercial',9),(22,'Ticket',9),(23,'Resuelto',10),(24,'Cliente no responde',10),(25,'Ticket',10),(26,'Resuelto',5),(27,'Asesorado',5);
/*!40000 ALTER TABLE `resolucion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecnico`
--

DROP TABLE IF EXISTS `tecnico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tecnico` (
  `idTecnico` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  `Apellido` varchar(45) NOT NULL,
  `TS_Alta` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idTecnico`),
  UNIQUE KEY `idTecnico_UNIQUE` (`idTecnico`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecnico`
--

LOCK TABLES `tecnico` WRITE;
/*!40000 ALTER TABLE `tecnico` DISABLE KEYS */;
INSERT INTO `tecnico` VALUES (1,'Juan','Rojas','2019-12-01 22:45:13'),(2,'Pedro','Perez','2020-01-03 22:45:13');
/*!40000 ALTER TABLE `tecnico` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-24  9:34:59
