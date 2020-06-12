CREATE DATABASE  IF NOT EXISTS `q37vr1bzy81ixea2` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `q37vr1bzy81ixea2`;
-- MariaDB dump 10.17  Distrib 10.4.11-MariaDB, for Win64 (AMD64)
--
-- Host: eporqep6b4b8ql12.chr7pe7iynqr.eu-west-1.rds.amazonaws.com    Database: q37vr1bzy81ixea2
-- ------------------------------------------------------
-- Server version	10.4.8-MariaDB-log

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
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias` (
  `id_categoria` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) NOT NULL,
  `borrado` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Ensaladas',1),(2,'Entrantes',0),(4,'Arroces',0),(5,'Carnes',0),(6,'Pescados',0),(7,'Pasta',1),(8,'Laura',1),(9,'Bebidas',1),(10,'Vinos',1),(11,'Helados',1),(12,'Tartas',1),(13,'Vinos',1),(14,'Postres',1),(15,'Postres',1),(16,'Pastas',1),(17,'Vinos',1),(18,'Estolaca',1),(19,'Otracat',1),(20,'Editamos',1),(21,'Pasta',0),(22,'Pizzas',0),(23,'Refrescos',1),(24,'Bebidas',0),(25,'Vinos',0),(26,'Helados',0),(27,'Nuevacategoriaeditada',1),(28,'Licores',1),(29,'Nuevaeditamos',1),(30,'Catogriaeditada',1),(31,'Vivoedit',1),(32,'Cateditado',1),(33,'Vivoedit',1),(34,'Vivocatedit',1),(35,'Vivocatedit',1),(36,'Vivocatedit',1);
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comandas`
--

DROP TABLE IF EXISTS `comandas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comandas` (
  `id_comanda` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_mesa` bigint(20) unsigned NOT NULL,
  `completado_barra` tinyint(1) DEFAULT 0,
  `completado_cocina` tinyint(1) DEFAULT 0,
  `pagado` tinyint(1) DEFAULT 0,
  `hora_creacion_comanda` time NOT NULL,
  `borrado` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id_comanda`),
  KEY `fk_mesa_idx` (`id_mesa`),
  CONSTRAINT `fk_mesa` FOREIGN KEY (`id_mesa`) REFERENCES `mesas` (`id_mesa`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=214 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comandas`
--

LOCK TABLES `comandas` WRITE;
/*!40000 ALTER TABLE `comandas` DISABLE KEYS */;
INSERT INTO `comandas` VALUES (83,40,NULL,0,NULL,'10:22:01',1),(84,38,1,NULL,NULL,'10:22:08',1),(85,39,NULL,0,NULL,'10:22:15',1),(86,44,NULL,0,NULL,'10:23:10',1),(87,20,NULL,NULL,NULL,'10:24:06',1),(88,24,NULL,0,NULL,'10:25:14',1),(89,25,1,NULL,NULL,'10:43:16',1),(90,31,NULL,0,NULL,'10:43:24',1),(91,33,NULL,0,NULL,'10:43:37',1),(92,37,1,0,NULL,'10:59:21',1),(93,46,NULL,NULL,NULL,'12:26:05',1),(94,43,NULL,NULL,NULL,'12:27:55',1),(95,30,NULL,NULL,NULL,'12:29:31',1),(96,19,NULL,NULL,NULL,'12:31:07',1),(97,35,NULL,NULL,NULL,'12:36:38',1),(98,36,NULL,NULL,NULL,'12:37:13',1),(99,18,NULL,NULL,NULL,'12:37:48',1),(100,21,NULL,NULL,NULL,'12:38:49',1),(101,41,NULL,NULL,NULL,'12:43:27',1),(102,45,NULL,NULL,NULL,'12:43:37',1),(103,40,NULL,0,NULL,'12:44:42',1),(104,38,NULL,0,NULL,'12:44:46',1),(105,39,NULL,0,NULL,'12:47:18',1),(106,44,NULL,0,NULL,'13:27:41',1),(107,20,NULL,0,NULL,'13:27:44',1),(108,24,NULL,0,NULL,'13:27:46',1),(109,25,NULL,0,NULL,'13:27:49',1),(110,31,NULL,0,NULL,'13:27:52',1),(111,33,NULL,0,NULL,'13:27:54',1),(112,37,NULL,0,NULL,'13:27:57',1),(113,46,NULL,0,NULL,'13:28:01',1),(114,43,NULL,0,NULL,'13:29:00',1),(115,30,NULL,0,NULL,'13:29:04',1),(116,19,NULL,0,NULL,'13:29:12',1),(117,35,NULL,0,NULL,'13:33:21',1),(118,36,NULL,0,NULL,'13:33:28',1),(119,21,NULL,0,NULL,'13:33:33',1),(120,18,NULL,0,NULL,'13:56:40',1),(121,45,NULL,NULL,NULL,'13:56:47',1),(122,41,NULL,0,NULL,'13:57:01',1),(123,40,1,NULL,NULL,'14:36:14',1),(124,38,1,NULL,NULL,'14:36:18',1),(125,40,1,NULL,NULL,'14:37:49',1),(126,38,NULL,NULL,NULL,'14:37:55',1),(127,39,1,NULL,NULL,'15:11:52',1),(128,44,1,NULL,NULL,'15:12:03',1),(129,20,1,NULL,NULL,'15:12:32',1),(130,24,1,NULL,NULL,'15:13:18',1),(131,40,1,NULL,NULL,'16:24:29',1),(132,38,1,NULL,NULL,'16:24:32',1),(133,39,1,NULL,NULL,'16:24:37',1),(134,44,1,NULL,NULL,'16:24:59',1),(135,20,1,1,NULL,'16:25:58',1),(136,24,1,1,NULL,'16:32:14',1),(137,25,1,NULL,NULL,'16:35:10',1),(138,31,1,NULL,NULL,'16:35:22',1),(139,33,1,1,NULL,'16:35:27',1),(140,37,1,1,NULL,'16:36:51',1),(141,46,1,1,NULL,'16:38:33',1),(142,43,1,1,NULL,'16:38:43',1),(143,30,1,1,NULL,'16:39:11',1),(144,19,1,1,NULL,'18:11:01',1),(145,31,1,NULL,NULL,'18:12:01',1),(146,31,1,NULL,NULL,'18:12:14',1),(147,31,1,NULL,NULL,'18:12:16',1),(148,51,NULL,1,NULL,'18:50:43',1),(149,52,1,1,NULL,'19:00:41',1),(150,53,1,NULL,NULL,'19:04:26',1),(151,21,1,1,NULL,'19:10:05',1),(152,36,1,1,NULL,'19:12:59',1),(153,50,NULL,1,NULL,'19:15:36',1),(154,24,NULL,1,NULL,'19:31:13',1),(155,45,NULL,1,NULL,'19:31:38',1),(156,41,NULL,1,NULL,'19:35:38',1),(157,30,1,NULL,NULL,'19:36:01',1),(158,48,NULL,1,NULL,'19:36:21',1),(159,49,NULL,1,NULL,'19:37:03',1),(160,55,NULL,1,NULL,'13:09:31',1),(161,56,NULL,1,NULL,'09:31:36',1),(162,57,1,1,NULL,'09:32:48',1),(163,54,1,1,NULL,'12:00:50',1),(164,58,NULL,NULL,NULL,'11:24:26',1),(165,56,NULL,1,NULL,'11:26:57',1),(166,51,NULL,NULL,NULL,'18:10:06',1),(167,56,NULL,NULL,NULL,'20:00:14',1),(168,57,NULL,NULL,NULL,'20:00:24',1),(169,53,NULL,NULL,NULL,'20:00:36',1),(170,54,1,1,NULL,'20:10:27',1),(171,55,1,1,NULL,'20:17:18',1),(172,52,NULL,NULL,NULL,'20:19:05',1),(173,55,NULL,NULL,NULL,'10:16:31',1),(174,55,NULL,NULL,NULL,'10:26:04',1),(175,55,NULL,NULL,NULL,'10:29:27',1),(176,55,NULL,NULL,NULL,'10:33:39',1),(177,55,NULL,NULL,NULL,'10:34:44',1),(178,51,NULL,NULL,NULL,'10:35:45',1),(179,55,NULL,NULL,NULL,'10:59:33',1),(180,55,NULL,NULL,NULL,'10:59:44',1),(181,70,NULL,NULL,NULL,'10:59:47',1),(182,54,NULL,NULL,NULL,'10:59:50',1),(183,54,NULL,NULL,NULL,'11:00:29',1),(184,71,NULL,NULL,NULL,'11:00:34',1),(185,56,NULL,NULL,NULL,'11:01:02',1),(186,33,NULL,NULL,NULL,'11:16:29',1),(187,33,NULL,NULL,NULL,'11:24:30',1),(188,74,NULL,NULL,NULL,'11:24:36',1),(189,70,1,1,NULL,'11:24:52',1),(190,54,NULL,1,NULL,'11:24:55',1),(191,71,NULL,NULL,NULL,'12:09:39',1),(192,73,NULL,NULL,NULL,'12:09:57',1),(193,75,NULL,NULL,NULL,'12:10:56',1),(194,76,NULL,NULL,NULL,'14:47:27',0),(195,77,NULL,NULL,NULL,'14:52:19',0),(196,78,NULL,NULL,NULL,'14:53:10',0),(197,79,NULL,NULL,NULL,'14:54:16',1),(198,92,NULL,NULL,NULL,'14:57:54',0),(199,93,NULL,NULL,NULL,'14:59:17',0),(200,94,NULL,NULL,NULL,'15:00:07',0),(201,79,NULL,1,NULL,'15:55:53',0),(202,80,NULL,NULL,NULL,'16:00:34',0),(203,81,1,1,NULL,'16:30:38',1),(204,81,NULL,1,NULL,'16:35:58',1),(205,81,NULL,NULL,NULL,'08:30:56',0),(206,85,NULL,1,NULL,'11:04:27',1),(207,82,1,1,NULL,'12:03:40',1),(208,82,1,1,NULL,'12:32:45',1),(209,82,1,1,NULL,'13:44:04',1),(210,82,1,1,NULL,'15:42:36',1),(211,82,1,1,NULL,'21:38:51',1),(212,82,1,1,NULL,'06:57:39',1),(213,82,1,1,NULL,'08:10:04',1);
/*!40000 ALTER TABLE `comandas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comandasproductos`
--

DROP TABLE IF EXISTS `comandasproductos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comandasproductos` (
  `id_comanda_producto` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_comanda` bigint(20) unsigned NOT NULL,
  `id_producto` bigint(20) unsigned NOT NULL,
  `unidades_producto` bigint(20) NOT NULL,
  `comentario` varchar(255) DEFAULT NULL,
  `borrado` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id_comanda_producto`),
  KEY `fk_comanda_idx` (`id_comanda`),
  KEY `fk_producto_idx` (`id_producto`),
  CONSTRAINT `fk_comanda` FOREIGN KEY (`id_comanda`) REFERENCES `comandas` (`id_comanda`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_producto` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=889 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comandasproductos`
--

LOCK TABLES `comandasproductos` WRITE;
/*!40000 ALTER TABLE `comandasproductos` DISABLE KEYS */;
INSERT INTO `comandasproductos` VALUES (153,83,6,1,NULL,1),(154,83,14,1,NULL,1),(155,83,8,1,NULL,1),(156,83,37,1,NULL,1),(157,83,41,1,NULL,1),(158,84,42,1,NULL,1),(159,84,45,1,NULL,1),(160,84,44,1,NULL,1),(161,84,43,1,NULL,1),(162,85,6,1,NULL,1),(163,85,14,1,NULL,1),(164,85,42,1,NULL,1),(165,85,45,1,NULL,1),(166,86,6,1,'CUARTA COMANDA',1),(167,86,14,1,NULL,1),(168,86,14,1,NULL,1),(169,87,42,1,'Quinta comanda',1),(170,87,45,1,NULL,1),(171,87,44,1,NULL,1),(172,88,6,7,NULL,1),(173,88,6,1,NULL,1),(174,89,42,1,NULL,1),(175,89,45,1,NULL,1),(176,89,44,1,NULL,1),(177,90,42,1,NULL,1),(178,90,45,1,NULL,1),(179,90,44,1,NULL,1),(180,90,41,1,NULL,1),(181,90,37,1,NULL,1),(182,90,6,1,NULL,1),(183,91,14,1,NULL,1),(184,91,37,1,NULL,1),(185,91,41,1,NULL,1),(186,92,6,1,'Sin lechuga, tomate y huevo',1),(187,92,42,1,NULL,1),(188,92,45,1,NULL,1),(189,92,44,1,NULL,1),(190,92,43,1,NULL,1),(191,93,41,1,NULL,1),(192,93,41,1,NULL,1),(193,93,41,1,NULL,1),(194,93,41,1,NULL,1),(195,93,41,1,NULL,1),(196,93,41,1,NULL,1),(197,94,41,1,NULL,1),(198,94,41,1,NULL,1),(199,94,41,1,NULL,1),(200,94,41,1,NULL,1),(201,94,41,1,NULL,1),(202,94,41,1,NULL,1),(203,94,41,1,NULL,1),(204,94,41,1,NULL,1),(205,94,41,1,NULL,1),(206,94,41,1,NULL,1),(207,95,41,1,NULL,1),(208,95,41,1,NULL,1),(209,95,41,1,NULL,1),(210,95,41,1,NULL,1),(211,95,41,1,NULL,1),(212,96,41,1,NULL,1),(213,96,41,1,NULL,1),(214,96,41,1,NULL,1),(215,96,41,1,NULL,1),(216,96,41,1,NULL,1),(217,96,41,1,NULL,1),(218,96,41,1,NULL,1),(219,96,41,1,NULL,1),(220,96,41,1,NULL,1),(221,96,41,1,NULL,1),(222,96,41,1,NULL,1),(223,96,41,1,NULL,1),(224,96,41,1,NULL,1),(225,96,41,1,NULL,1),(226,96,41,1,NULL,1),(227,97,6,1,NULL,1),(228,97,6,1,NULL,1),(229,97,6,1,NULL,1),(230,97,6,1,NULL,1),(231,97,6,1,NULL,1),(232,97,6,1,NULL,1),(233,97,6,1,NULL,1),(234,97,6,1,NULL,1),(235,97,6,1,NULL,1),(236,98,6,1,NULL,1),(237,98,6,1,NULL,1),(238,98,6,1,NULL,1),(239,98,6,1,NULL,1),(240,98,6,1,NULL,1),(241,98,6,1,NULL,1),(242,98,6,1,NULL,1),(243,99,14,1,NULL,1),(244,99,14,1,NULL,1),(245,99,14,1,NULL,1),(246,99,6,1,NULL,1),(247,99,6,1,NULL,1),(248,99,6,1,NULL,1),(249,100,6,1,NULL,1),(250,100,6,1,NULL,1),(251,100,6,1,NULL,1),(252,100,6,1,NULL,1),(253,100,6,1,NULL,1),(254,100,6,1,NULL,1),(255,101,6,1,NULL,1),(256,101,42,1,NULL,1),(257,101,42,1,NULL,1),(258,101,42,1,NULL,1),(259,102,42,1,NULL,1),(260,102,42,1,NULL,1),(261,102,45,1,NULL,1),(262,102,44,1,NULL,1),(263,102,43,1,NULL,1),(264,103,41,1,NULL,1),(265,103,38,1,NULL,1),(266,103,39,1,NULL,1),(267,104,41,1,NULL,1),(268,104,38,1,NULL,1),(269,104,39,1,NULL,1),(270,105,6,1,NULL,1),(271,105,6,1,NULL,1),(272,105,6,1,NULL,1),(273,105,6,1,NULL,1),(274,106,6,1,NULL,1),(275,106,6,1,NULL,1),(276,106,6,1,NULL,1),(277,107,6,1,NULL,1),(278,108,6,1,NULL,1),(279,108,6,1,NULL,1),(280,109,6,1,NULL,1),(281,109,6,1,NULL,1),(282,109,6,1,NULL,1),(283,110,6,1,NULL,1),(284,110,6,1,NULL,1),(285,110,6,1,NULL,1),(286,111,6,1,NULL,1),(287,111,6,1,NULL,1),(288,111,6,1,NULL,1),(289,112,6,1,NULL,1),(290,112,6,1,NULL,1),(291,112,6,1,NULL,1),(292,112,6,1,NULL,1),(293,113,6,1,NULL,1),(294,113,6,1,NULL,1),(295,113,6,1,NULL,1),(296,113,6,1,NULL,1),(297,114,6,1,NULL,1),(298,114,6,1,NULL,1),(299,114,6,1,NULL,1),(300,114,6,1,NULL,1),(301,115,6,1,NULL,1),(302,115,6,1,NULL,1),(303,115,6,1,NULL,1),(304,115,6,1,NULL,1),(305,115,6,1,NULL,1),(306,115,6,1,NULL,1),(307,116,6,1,NULL,1),(308,116,6,1,NULL,1),(309,116,6,1,NULL,1),(310,116,6,1,NULL,1),(311,116,6,1,NULL,1),(312,117,6,1,NULL,1),(313,117,6,1,NULL,1),(314,117,6,1,NULL,1),(315,117,6,1,NULL,1),(316,117,6,1,NULL,1),(317,118,6,1,NULL,1),(318,118,6,1,NULL,1),(319,118,6,1,NULL,1),(320,118,6,1,NULL,1),(321,118,6,1,NULL,1),(322,119,6,1,NULL,1),(323,119,6,1,NULL,1),(324,119,6,1,NULL,1),(325,119,6,1,NULL,1),(326,119,6,1,NULL,1),(327,120,41,1,NULL,1),(328,120,41,1,NULL,1),(329,120,41,1,NULL,1),(330,121,6,1,NULL,1),(331,121,6,1,NULL,1),(332,121,6,1,NULL,1),(333,122,6,1,NULL,1),(334,123,42,1,NULL,1),(335,123,45,1,NULL,1),(336,123,44,1,NULL,1),(337,123,43,1,NULL,1),(338,124,42,1,NULL,1),(339,124,42,1,NULL,1),(340,124,42,1,NULL,1),(341,125,6,1,NULL,1),(342,125,14,1,NULL,1),(343,125,8,1,NULL,1),(344,125,42,1,NULL,1),(345,125,45,1,NULL,1),(346,125,44,1,NULL,1),(347,126,6,1,NULL,1),(348,126,14,1,NULL,1),(349,126,8,1,NULL,1),(350,126,42,1,NULL,1),(351,126,45,1,NULL,1),(352,126,44,1,NULL,1),(353,127,42,1,NULL,1),(354,127,45,1,NULL,1),(355,127,44,1,NULL,1),(356,128,42,1,NULL,1),(357,128,42,1,NULL,1),(358,128,42,1,NULL,1),(359,128,42,1,NULL,1),(360,128,42,1,NULL,1),(361,129,42,1,NULL,1),(362,129,42,1,NULL,1),(363,129,42,1,NULL,1),(364,129,42,1,NULL,1),(365,130,42,1,NULL,1),(366,130,42,1,NULL,1),(367,130,42,1,NULL,1),(368,131,42,1,NULL,1),(369,131,45,1,NULL,1),(370,131,44,1,NULL,1),(371,132,42,1,NULL,1),(372,132,45,1,NULL,1),(373,132,44,1,NULL,1),(374,133,42,1,NULL,1),(375,133,45,1,NULL,1),(376,133,44,1,NULL,1),(377,134,42,1,NULL,1),(378,134,45,1,NULL,1),(379,134,44,1,NULL,1),(380,135,41,1,NULL,1),(381,135,38,1,NULL,1),(382,135,39,1,NULL,1),(383,135,42,1,NULL,1),(384,135,45,1,NULL,1),(385,135,44,1,NULL,1),(386,136,41,1,NULL,1),(387,136,38,1,NULL,1),(388,136,39,1,NULL,1),(389,136,42,1,NULL,1),(390,136,45,1,NULL,1),(391,136,44,1,NULL,1),(392,137,42,1,NULL,1),(393,137,42,1,NULL,1),(394,137,42,1,NULL,1),(395,137,45,1,NULL,1),(396,137,42,1,NULL,1),(397,138,41,1,NULL,1),(398,138,38,1,NULL,1),(399,138,39,1,NULL,1),(400,138,42,1,NULL,1),(401,138,45,1,NULL,1),(402,138,44,1,NULL,1),(403,139,41,1,NULL,1),(404,139,38,1,NULL,1),(405,139,39,1,NULL,1),(406,139,42,1,NULL,1),(407,139,45,1,NULL,1),(408,139,44,1,NULL,1),(409,140,42,1,NULL,1),(410,140,45,1,NULL,1),(411,140,44,1,NULL,1),(412,140,41,1,NULL,1),(413,140,38,1,NULL,1),(414,140,39,1,NULL,1),(415,141,41,1,NULL,1),(416,141,38,1,NULL,1),(417,141,39,1,NULL,1),(418,141,40,1,NULL,1),(419,141,42,1,NULL,1),(420,141,45,1,NULL,1),(421,141,44,1,NULL,1),(422,141,43,1,NULL,1),(423,141,42,1,NULL,1),(424,141,45,1,NULL,1),(425,141,44,1,NULL,1),(426,141,43,1,NULL,1),(427,142,41,1,NULL,1),(428,142,38,1,NULL,1),(429,142,39,1,NULL,1),(430,142,42,1,NULL,1),(431,142,45,1,NULL,1),(432,142,44,1,NULL,1),(433,143,41,1,'de estolaka',1),(434,143,42,1,'con gas',1),(435,144,41,1,NULL,1),(436,144,38,1,NULL,1),(437,144,39,1,NULL,1),(438,144,39,1,NULL,1),(439,144,42,1,NULL,1),(440,144,45,1,NULL,1),(441,144,44,1,NULL,1),(442,138,38,1,NULL,0),(443,138,39,1,NULL,0),(444,138,41,1,NULL,0),(445,138,45,1,NULL,0),(446,138,44,1,NULL,0),(447,138,42,1,NULL,0),(448,138,38,1,NULL,0),(449,138,39,1,NULL,0),(450,138,41,1,NULL,0),(451,138,45,1,NULL,0),(452,138,44,1,NULL,0),(453,138,42,1,NULL,0),(454,138,38,1,NULL,0),(455,138,39,1,NULL,0),(456,138,41,1,NULL,0),(457,138,45,1,NULL,0),(458,138,44,1,NULL,0),(459,138,42,1,NULL,0),(460,148,82,1,NULL,1),(461,148,82,2,NULL,1),(462,148,41,1,NULL,1),(463,149,82,2,NULL,1),(464,149,41,1,'poco hecho',1),(465,149,42,8,NULL,1),(466,150,42,1,NULL,1),(467,150,44,2,NULL,1),(468,150,43,1,NULL,1),(469,151,42,1,'2 servicios y del tiempo manso',1),(470,151,44,1,'sin hielo y rapidito',1),(471,151,43,1,NULL,1),(472,151,33,1,NULL,1),(473,151,37,1,NULL,1),(474,151,36,1,NULL,1),(475,151,41,5,'jose es un poco manso',1),(476,152,42,4,NULL,1),(477,152,44,1,NULL,1),(478,152,43,1,'jose es 1 poco cortito',1),(479,152,38,5,NULL,1),(480,152,82,1,NULL,1),(481,152,82,1,NULL,1),(482,152,82,1,NULL,1),(483,152,82,1,NULL,1),(484,153,82,1,NULL,1),(485,153,82,1,NULL,1),(486,153,82,1,NULL,1),(487,153,38,5,'esto es un comentario para jose',1),(488,154,82,1,NULL,1),(489,154,41,1,NULL,1),(490,154,38,1,NULL,1),(491,154,39,1,NULL,1),(492,155,41,1,NULL,1),(493,155,38,1,NULL,1),(494,155,39,1,NULL,1),(495,156,82,1,'esta mierda funciona',1),(496,157,33,1,NULL,1),(497,157,33,1,NULL,1),(498,157,33,1,'has visto como funciona',1),(499,158,41,1,NULL,1),(500,158,38,1,NULL,1),(501,158,38,1,NULL,1),(502,158,39,1,NULL,1),(503,158,39,1,NULL,1),(504,159,41,5,'MANSO VES COMO FUNCIONA ',1),(505,159,38,1,NULL,1),(506,159,39,1,NULL,1),(507,159,40,1,NULL,1),(508,160,38,1,NULL,1),(509,160,40,1,NULL,1),(510,160,39,1,NULL,1),(511,160,41,1,NULL,1),(512,160,83,1,NULL,1),(513,160,83,1,NULL,1),(514,161,82,1,NULL,1),(515,161,86,1,NULL,1),(516,161,41,5,'hola chicos',1),(517,162,82,1,NULL,1),(518,162,86,1,NULL,1),(519,162,91,5,'hola chicos',1),(520,162,89,1,'con 3 copas',1),(521,163,82,1,NULL,1),(522,163,38,5,'caldosito',1),(523,163,89,1,'2 mansos',1),(524,164,91,1,NULL,1),(525,164,38,1,NULL,1),(526,164,38,1,NULL,1),(527,164,91,1,NULL,1),(528,164,89,1,NULL,1),(529,164,90,1,NULL,1),(530,165,91,1,NULL,1),(531,165,38,1,NULL,1),(532,165,92,1,NULL,1),(533,165,92,1,NULL,1),(534,165,91,1,NULL,1),(535,165,91,1,NULL,1),(536,165,44,1,NULL,1),(537,165,90,1,NULL,1),(538,165,90,1,NULL,1),(539,165,90,1,NULL,1),(540,165,89,1,NULL,1),(541,166,91,1,NULL,1),(542,166,42,1,'Estoy añadiendo un comentario',1),(543,166,91,1,NULL,1),(544,166,91,1,NULL,1),(545,166,38,1,NULL,1),(546,167,38,1,NULL,1),(547,167,40,1,NULL,1),(548,167,39,1,NULL,1),(549,167,42,1,NULL,1),(550,167,44,1,NULL,1),(551,167,43,1,NULL,1),(552,168,37,1,NULL,1),(553,168,84,1,NULL,1),(554,168,36,1,NULL,1),(555,168,35,1,NULL,1),(556,168,89,1,NULL,1),(557,168,90,1,NULL,1),(558,168,42,1,NULL,1),(559,168,44,1,NULL,1),(560,169,38,1,NULL,1),(561,169,86,1,NULL,1),(562,169,82,1,NULL,1),(563,169,41,1,NULL,1),(564,169,89,1,NULL,1),(565,169,42,1,NULL,1),(566,169,42,1,NULL,1),(567,170,86,1,NULL,1),(568,170,82,1,NULL,1),(569,170,40,5,'caldosico',1),(570,170,42,1,'2 copas',1),(571,170,89,1,'2 copas',1),(572,171,86,1,NULL,1),(573,171,82,1,NULL,1),(574,171,38,5,'caldosico',1),(575,171,42,1,NULL,1),(576,171,90,1,'cn hielo',1),(577,172,38,1,NULL,1),(578,172,38,1,NULL,1),(579,172,38,1,NULL,1),(580,173,38,1,NULL,1),(581,173,40,1,NULL,1),(582,173,39,1,NULL,1),(583,174,86,1,NULL,1),(584,174,82,1,NULL,1),(585,174,42,1,NULL,1),(586,174,44,1,NULL,1),(587,175,86,1,NULL,1),(588,175,82,1,NULL,1),(589,175,86,1,NULL,1),(590,175,86,1,NULL,1),(591,176,86,1,NULL,1),(592,176,86,1,NULL,1),(593,176,86,1,NULL,1),(594,176,86,1,NULL,1),(595,176,86,1,NULL,1),(596,176,86,1,NULL,1),(597,176,86,1,NULL,1),(598,176,86,1,NULL,1),(599,176,86,1,NULL,1),(600,176,86,1,NULL,1),(601,176,86,1,NULL,1),(602,176,86,1,NULL,1),(603,176,86,1,NULL,1),(604,176,86,1,NULL,1),(605,176,86,1,NULL,1),(606,176,86,1,NULL,1),(607,176,86,1,NULL,1),(608,176,86,1,NULL,1),(609,176,86,1,NULL,1),(610,176,86,1,NULL,1),(611,176,86,1,NULL,1),(612,176,86,1,NULL,1),(613,176,86,1,NULL,1),(614,176,86,1,NULL,1),(615,177,38,1,NULL,1),(616,177,40,1,NULL,1),(617,177,39,1,NULL,1),(618,177,41,1,NULL,1),(619,177,83,1,NULL,1),(620,177,40,1,NULL,1),(621,177,38,1,NULL,1),(622,177,39,1,NULL,1),(623,178,37,1,NULL,1),(624,178,84,1,NULL,1),(625,178,84,1,NULL,1),(626,178,37,1,NULL,1),(627,179,86,1,NULL,1),(628,179,82,1,NULL,1),(629,179,82,1,NULL,1),(630,179,82,1,NULL,1),(631,179,38,1,NULL,1),(632,179,40,1,NULL,1),(633,179,38,1,NULL,1),(634,179,38,1,NULL,1),(635,179,40,1,NULL,1),(636,179,42,1,NULL,1),(637,179,44,1,NULL,1),(638,180,38,1,NULL,1),(639,180,40,1,NULL,1),(640,181,86,1,NULL,1),(641,181,82,1,NULL,1),(642,182,37,1,NULL,1),(643,182,37,1,NULL,1),(644,182,37,1,NULL,1),(645,183,38,1,NULL,1),(646,183,38,1,NULL,1),(647,183,40,1,NULL,1),(648,183,40,1,NULL,1),(649,183,39,1,NULL,1),(650,183,89,1,NULL,1),(651,183,90,1,NULL,1),(652,183,88,1,NULL,1),(653,184,38,1,NULL,1),(654,184,40,1,NULL,1),(655,184,40,1,NULL,1),(656,184,43,1,NULL,1),(657,184,44,1,NULL,1),(658,184,42,1,NULL,1),(659,185,86,5,'joder',1),(660,186,38,1,NULL,1),(661,186,40,1,NULL,1),(662,186,42,1,NULL,1),(663,186,44,1,NULL,1),(664,187,38,1,NULL,1),(665,187,38,1,NULL,1),(666,187,38,1,NULL,1),(667,187,38,1,NULL,1),(668,187,38,1,NULL,1),(669,188,38,1,NULL,1),(670,188,38,1,NULL,1),(671,188,42,1,NULL,1),(672,188,42,1,NULL,1),(673,188,42,1,NULL,1),(674,188,42,1,NULL,1),(675,189,38,1,NULL,1),(676,189,38,1,NULL,1),(677,189,38,1,NULL,1),(678,189,42,1,NULL,1),(679,189,42,1,NULL,1),(680,189,42,1,NULL,1),(681,190,38,1,NULL,1),(682,190,38,1,NULL,1),(683,190,38,1,NULL,1),(684,191,38,1,NULL,1),(685,191,38,1,NULL,1),(686,191,38,1,NULL,1),(687,191,38,1,NULL,1),(688,191,38,1,NULL,1),(689,191,38,1,NULL,1),(690,191,38,1,NULL,1),(691,191,38,1,NULL,1),(692,191,38,1,NULL,1),(693,191,38,1,NULL,1),(694,191,38,1,NULL,1),(695,191,38,1,NULL,1),(696,191,38,1,NULL,1),(697,191,38,1,NULL,1),(698,191,38,1,NULL,1),(699,191,38,1,NULL,1),(700,191,38,1,NULL,1),(701,191,38,1,NULL,1),(702,191,38,1,NULL,1),(703,191,38,1,NULL,1),(704,191,38,1,NULL,1),(705,191,38,1,NULL,1),(706,191,38,1,NULL,1),(707,191,38,1,NULL,1),(708,191,38,1,NULL,1),(709,191,38,1,NULL,1),(710,191,38,1,NULL,1),(711,191,42,1,NULL,1),(712,191,42,1,NULL,1),(713,191,42,1,NULL,1),(714,191,42,1,NULL,1),(715,191,42,1,NULL,1),(716,191,42,1,NULL,1),(717,191,42,1,NULL,1),(718,191,42,1,NULL,1),(719,191,42,1,NULL,1),(720,191,42,1,NULL,1),(721,191,42,1,NULL,1),(722,191,42,1,NULL,1),(723,191,42,1,NULL,1),(724,191,42,1,NULL,1),(725,191,42,1,NULL,1),(726,191,42,1,NULL,1),(727,191,42,1,NULL,1),(728,191,42,1,NULL,1),(729,191,42,1,NULL,1),(730,191,42,1,NULL,1),(731,191,42,1,NULL,1),(732,191,42,1,NULL,1),(733,191,42,1,NULL,1),(734,191,42,1,NULL,1),(735,191,42,1,NULL,1),(736,191,44,1,NULL,1),(737,191,44,1,NULL,1),(738,191,44,1,NULL,1),(739,191,43,1,NULL,1),(740,191,43,1,NULL,1),(741,191,42,1,NULL,1),(742,191,42,1,NULL,1),(743,191,44,1,NULL,1),(744,191,87,1,NULL,1),(745,191,87,1,NULL,1),(746,192,38,1,NULL,1),(747,192,38,1,NULL,1),(748,192,38,1,NULL,1),(749,192,38,1,NULL,1),(750,192,38,1,NULL,1),(751,192,38,1,NULL,1),(752,192,38,1,NULL,1),(753,192,38,1,NULL,1),(754,192,38,1,NULL,1),(755,192,38,1,NULL,1),(756,192,38,1,NULL,1),(757,192,38,1,NULL,1),(758,192,38,1,NULL,1),(759,192,38,1,NULL,1),(760,192,38,1,NULL,1),(761,192,38,1,NULL,1),(762,193,42,1,NULL,1),(763,193,44,1,NULL,1),(764,193,43,1,NULL,1),(765,193,87,1,NULL,1),(766,194,103,1,NULL,0),(767,194,98,1,NULL,0),(768,194,104,1,NULL,0),(769,194,113,1,NULL,0),(770,194,116,1,'poco hecho',0),(771,194,112,1,'al .',0),(772,194,114,1,'quemado',0),(773,194,142,1,'con 3 copas',0),(774,194,133,1,'con 3 copas',0),(775,195,100,1,'con doble de keso',0),(776,195,101,1,NULL,0),(777,195,105,1,'pasaditos',0),(778,195,109,3,NULL,0),(779,195,144,1,'una copa con asa para un manco',0),(780,195,140,1,NULL,0),(781,195,135,1,NULL,0),(782,195,133,1,'sin hielo',0),(783,196,105,1,NULL,0),(784,196,101,1,NULL,0),(785,196,122,1,NULL,0),(786,196,121,1,'',0),(787,196,123,1,'muy hecha',0),(788,196,142,1,'con 4 copas',0),(789,196,140,1,NULL,0),(790,196,135,1,NULL,0),(791,197,104,1,NULL,1),(792,197,105,1,NULL,1),(793,197,101,1,NULL,1),(794,197,98,1,'sin lechuga',1),(795,197,128,1,NULL,1),(796,197,131,1,NULL,1),(797,197,127,1,NULL,1),(798,197,129,1,'bien hecha',1),(799,197,142,1,'con 3 copas y hielo',1),(800,197,143,1,'con 1 copa',1),(801,198,103,1,NULL,0),(802,198,98,1,NULL,0),(803,198,104,1,NULL,0),(804,198,128,1,'doble de keso',0),(805,198,131,1,NULL,0),(806,198,129,1,NULL,0),(807,198,142,1,'con 3 copas',0),(808,198,140,1,NULL,0),(809,198,135,1,'sin vaso',0),(810,199,99,1,NULL,0),(811,199,100,1,NULL,0),(812,199,108,5,'Reserva: Raquel',0),(813,199,143,1,'con casera, hielo y 4 copas',0),(814,199,145,1,'de fresa',0),(815,199,148,1,'de oreo',0),(816,199,133,1,'con 3 copas',0),(817,200,122,1,NULL,0),(818,200,121,1,'sin salsa boloñesa',0),(819,200,123,1,NULL,0),(820,200,142,1,'con 3 copas',0),(821,201,116,1,NULL,0),(822,201,113,1,'comemeelpene\n',0),(823,201,112,1,NULL,0),(824,202,116,1,NULL,0),(825,202,113,1,NULL,0),(826,202,115,1,NULL,0),(827,202,142,1,NULL,0),(828,203,103,1,NULL,1),(829,203,98,1,'sin lehuga',1),(830,203,104,1,NULL,1),(831,203,122,1,NULL,1),(832,203,121,1,NULL,1),(833,203,123,1,NULL,1),(834,203,135,3,NULL,1),(835,203,133,1,'3 copas',1),(836,204,103,1,NULL,1),(837,204,103,1,NULL,1),(838,204,103,1,NULL,1),(839,204,98,1,NULL,1),(840,204,104,1,NULL,1),(841,205,116,1,NULL,0),(842,205,113,1,NULL,0),(843,205,112,1,NULL,0),(844,206,104,1,NULL,1),(845,206,103,1,NULL,1),(846,206,98,1,NULL,1),(847,207,104,1,NULL,1),(848,207,103,1,NULL,1),(849,207,98,1,NULL,1),(850,207,106,5,NULL,1),(851,207,133,1,'2 copas',1),(852,207,143,1,'con 2 copas',1),(853,208,104,1,NULL,1),(854,208,103,1,NULL,1),(855,208,98,1,NULL,1),(856,208,108,5,'caldosico',1),(857,208,142,1,'5 copas bien y hielo',1),(858,208,133,1,'con 3 copas y hielo',1),(859,209,104,1,NULL,1),(860,209,103,1,NULL,1),(861,209,98,1,NULL,1),(862,209,108,5,'caldosico',1),(863,209,142,1,'con 3 copas',1),(864,209,133,1,'con hielos y 3 copas',1),(865,210,104,1,NULL,1),(866,210,103,1,NULL,1),(867,210,98,1,NULL,1),(868,210,108,5,'caldosico',1),(869,210,133,1,'con 2 copas',1),(870,210,142,1,'con 3 copas',1),(871,211,104,1,NULL,1),(872,211,103,1,NULL,1),(873,211,98,1,NULL,1),(874,211,108,5,'caldosico',1),(875,211,142,1,'con 3 copas',1),(876,211,133,1,'bien freskita',1),(877,212,104,1,NULL,1),(878,212,103,1,NULL,1),(879,212,98,1,NULL,1),(880,212,108,5,'calsoko',1),(881,212,142,1,'con 2 copas y hielo\n',1),(882,212,133,1,'con 3 copas',1),(883,213,104,1,NULL,1),(884,213,103,1,NULL,1),(885,213,98,1,NULL,1),(886,213,108,5,'calsocio',1),(887,213,142,1,'con 3 copas',1),(888,213,133,1,'fría y con 2 copas para niños',1);
/*!40000 ALTER TABLE `comandasproductos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mesas`
--

DROP TABLE IF EXISTS `mesas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mesas` (
  `id_mesa` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_usuario` bigint(20) unsigned NOT NULL,
  `numero_mesa` bigint(20) unsigned NOT NULL,
  `numero_personas` bigint(20) NOT NULL,
  `borrado` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id_mesa`),
  KEY `fk_usuarioMesa_idx` (`id_usuario`),
  CONSTRAINT `fk_usuarioMesa` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mesas`
--

LOCK TABLES `mesas` WRITE;
/*!40000 ALTER TABLE `mesas` DISABLE KEYS */;
INSERT INTO `mesas` VALUES (1,1,1,6,1),(2,1,2,4,1),(3,1,3,2,1),(4,1,4,2,1),(5,1,5,2,1),(6,1,6,6,1),(7,1,7,8,1),(8,1,8,10,1),(9,1,9,6,1),(10,1,10,4,1),(11,1,11,4,1),(12,1,12,6,1),(16,53,2,8,1),(17,53,2,6,1),(18,53,4,2,1),(19,53,3,10,1),(20,53,6,8,1),(21,53,12,12,1),(22,53,13,4,1),(23,53,99,13,1),(24,53,15,2,1),(25,53,232,2323,1),(26,53,69,69,1),(27,53,69,69,1),(28,53,69,69,1),(29,53,69,13,1),(30,53,12,13,1),(31,53,1,2,1),(32,53,69,13,1),(33,53,5,3,1),(34,53,12,4,1),(35,53,1,1,1),(36,53,69,69,1),(37,53,34234,432423,1),(38,53,13,31,1),(39,53,55,2,1),(40,53,55,3,1),(41,53,55,3,1),(42,53,69,69,1),(43,53,55,3,1),(44,53,55,3,1),(45,53,55,3,1),(46,53,232,2323,1),(47,53,10,1,1),(48,53,10,10,1),(49,53,10,10,1),(50,53,10,10,1),(51,74,24,5,1),(52,74,55,4,1),(53,74,7,5,1),(54,74,34,2,1),(55,74,1,6,1),(56,74,2,4,1),(57,74,3,7,1),(58,74,4,2,1),(59,74,2,31,1),(60,74,56,4,1),(61,74,35,5,1),(62,74,35,5,1),(63,74,35,5,1),(64,74,35,1,1),(65,74,35,1,1),(66,74,5,1,1),(67,74,3,1,1),(68,74,5,1,1),(69,74,3,5,1),(70,74,12,2,1),(71,74,54,2,1),(72,74,1,123,1),(73,74,56,4,1),(74,53,32,126,1),(75,74,57,2,1),(76,79,1,2,0),(77,79,2,4,0),(78,79,3,2,0),(79,79,4,6,0),(80,79,5,2,0),(81,79,6,2,0),(82,79,7,4,0),(83,79,8,2,0),(84,79,9,4,0),(85,79,10,4,0),(86,79,11,4,0),(87,79,12,3,0),(88,79,13,10,0),(89,79,14,4,0),(90,79,15,6,0),(91,79,16,8,0),(92,85,1,4,0),(93,85,2,2,0),(94,85,3,4,0),(95,85,4,2,0),(96,85,5,12,0),(97,85,6,10,0),(98,85,7,12,0),(99,85,8,2,0),(100,85,9,1,0),(101,85,10,2,0),(102,85,11,2,0),(103,85,12,4,0),(104,79,18,4,1),(105,79,17,4,1),(106,79,13,3,0),(107,79,18,4,1),(108,79,19,4,1),(109,79,18,6,1),(110,79,18,6,1),(111,79,18,2,1),(112,79,17,4,1),(113,79,17,4,1);
/*!40000 ALTER TABLE `mesas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `id_producto` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_categoria` bigint(20) unsigned NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `precio` double DEFAULT NULL,
  `barra` tinyint(1) NOT NULL DEFAULT 0,
  `cocina` tinyint(1) NOT NULL DEFAULT 0,
  `borrado` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id_producto`),
  KEY `fk_usuarioCategoria_idx` (`id_categoria`),
  CONSTRAINT `fk_categoria` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,8,'123',123,0,1,1),(2,1,'ensalada ',1.1,0,1,1),(3,1,'ensalada ',20,0,1,1),(4,1,'ensalada ',2,0,1,1),(5,1,'ensalada ',1,0,1,1),(6,1,'ensaladas',1,0,1,1),(7,1,'ensalada ',1,0,1,1),(8,1,'ensalada',2,0,1,1),(9,1,'ensalada',5,0,1,1),(11,1,'ensalada',5,0,1,1),(12,1,'ensalada',3,0,1,1),(14,1,'ensalada',3,0,1,1),(15,1,'ensalada',3,0,1,1),(16,1,'ensalada',3,0,1,1),(17,1,'ensalada',3,0,1,1),(18,1,'ensalada',3,0,1,1),(19,1,'ensalada',NULL,0,1,1),(33,2,'entrante',1,1,0,1),(34,2,'Gambas al ajillo',14,0,1,1),(35,2,'Jamón Ibérico',15,0,1,1),(36,2,'Croquetas caseras',8,0,1,1),(37,2,'entrante',NULL,0,1,1),(38,4,'arroz de pollo',9,0,1,1),(39,4,'arroz de Mariscos',11,0,1,1),(40,4,'arroz a banda',10,0,1,1),(41,4,'arroz estolaca',15,0,1,1),(42,9,'agua',NULL,1,0,1),(43,9,'fanta-naranja',NULL,1,0,1),(44,9,'coca-cola',NULL,1,0,1),(45,9,'birra',35,1,0,1),(46,1,'Ens1',12,0,1,1),(47,1,'Ens2',12,0,1,1),(48,4,'Estolaca',12,0,1,1),(49,2,'Astolaka',1,0,1,1),(50,6,'LauraEsMiAmol',1,0,1,1),(51,8,'Pizza La Zenia',10,0,1,1),(52,4,'asd',12,0,1,1),(53,1,'Spaggeti Carbonara',3,0,1,1),(54,1,'sdfdwsf',12,1,0,1),(55,4,'ass',123,1,0,1),(56,1,'asd',123,1,0,1),(57,2,'123',123,0,1,1),(58,2,'ult1',123,1,0,1),(59,7,'Spaggeti Bolognesa',10,0,1,1),(60,10,'Sfsdf',13,1,0,1),(61,11,'Mansolitika',13,0,1,1),(62,4,'Assadasdasd',12,0,1,1),(63,2,'Manso',2,0,1,1),(64,1,'Probandoalert',1,1,0,1),(65,2,'Probando El Producto',12,1,0,1),(66,4,'Asdas',123,0,1,1),(67,4,'Sdfsdf',123,1,0,1),(68,4,'Sdfsd',123,0,1,1),(69,4,'Sd',1231,1,0,1),(70,2,'Fsdf',123,1,0,1),(71,2,'Dsfsd',12,1,0,1),(72,4,'Dsffds',123,0,1,1),(73,2,'Sdfsd',1,1,0,1),(74,2,'Fsdfsd',12,0,1,1),(75,5,'Mierdolakas',12,1,0,1),(76,4,'Ensaladamod2',12,1,0,1),(77,2,'Sdfdsf',12,1,0,1),(78,4,'Mierdecilla',1,1,0,1),(79,2,'LauriñA',1,1,0,1),(80,15,'Estolacas',15,0,1,1),(81,2,'Almeja',31,0,1,1),(82,1,'Ensalada De La Casa',12,0,1,1),(83,5,'Entrecot',18,0,1,1),(84,2,'Magra Con Tomate',6,0,1,1),(85,2,'Alitas De Pollo',9,0,1,1),(86,1,'Ensalada De Pollo',12,0,1,1),(87,9,'Cerveza',1.5,1,0,1),(88,17,'Vino Tinto Casa',10,1,0,1),(89,17,'Vino Rosado Casa',10,1,0,1),(90,17,'Vino Blanco Casa',11,1,0,1),(91,4,'EstolacaEdiatada',12,0,1,1),(92,4,'ProductoEdit',12,0,1,1),(93,5,'Tranca De Manso',69,0,1,1),(94,1,'MOdificamos',11,1,0,1),(95,4,'Editamos',12,0,1,1),(96,1,'MODIFICAMOS',15,0,1,1),(97,6,'EDITAMOS',15,0,1,1),(98,2,'Ensalada Mixta',6,0,1,0),(99,2,'Ensalada de la Casa',8.5,0,1,0),(100,2,'Ensalada Cesar',10,0,1,0),(101,2,'Ensaladilla Rusa',4,0,1,0),(102,2,'patatas bravas',5,0,1,1),(103,2,'Croquetas Caseras',7,0,1,0),(104,2,'Alitas de pollo',7.5,0,1,0),(105,2,'Chopitos',9,0,1,0),(106,4,'Paella Mixta',10.5,0,1,0),(107,4,'Paella Pollo',10.5,0,1,0),(108,4,'Arroz a banda',11.5,0,1,0),(109,4,'Fideguá',11.5,0,1,0),(110,4,'Arroz negro',12.5,0,1,0),(111,4,'Paella de marisco',12.5,0,1,0),(112,5,'Entrecot de ternera',16,0,1,0),(113,5,'Pollo empanado',12,0,1,0),(114,5,'Pollo asado',14,0,1,0),(115,5,'Carrillada de cerdo',13.5,0,1,0),(116,5,'Solomillo de ternera',21,0,1,0),(117,6,'Doarada',14.5,0,1,0),(118,6,'Salmón eneldo',16,0,1,0),(119,6,'Lubica con verduras',13.5,0,1,0),(120,6,'Merluza romana',13,0,1,0),(121,21,'Espagueti boloñesa',9.5,0,1,0),(122,21,'Espagueti carbonara',9.5,0,1,0),(123,21,'Lasaña boloñesa',10.5,0,1,0),(124,21,'Lasaña verduras',10.5,0,1,0),(125,22,'Margarita',7.5,0,1,0),(126,22,'Romana',8.5,0,1,0),(127,22,'Murciana',9,0,1,0),(128,22,'4 Quesos',9.5,0,1,0),(129,22,'María',9,0,1,0),(130,22,'La Zenia',10,0,1,0),(131,22,'Barco del Machaca',10,0,1,0),(132,22,'Satan (picante)',9,0,1,0),(133,24,'Agua Grande',2.8,1,0,0),(134,24,'Agua pequeña',1.8,1,0,0),(135,24,'Tercio',2,1,0,0),(136,24,'Quinto',1.2,1,0,0),(137,24,'Coca-Cola',1.8,1,0,0),(138,24,'Fanta Naranja',1.8,1,0,0),(139,24,'Fanta-Limon',1.8,1,0,0),(140,24,'Aquarius',1.8,1,0,0),(141,24,'Nestea',1.8,1,0,0),(142,25,'Blanco de la Casa',10,1,0,0),(143,25,'Tinto de la Casa',10,1,0,0),(144,25,'Rosado de la Casa',10,1,0,0),(145,26,'Cucurucho',2.5,1,0,0),(146,26,'Cucurucho doble',4.4,1,0,0),(147,26,'Copa 1 bola',2.5,1,0,0),(148,26,'Copa 2 bolas',4.4,1,0,0),(149,26,'Copa 3 bolas',6.6,1,0,0),(150,2,'Ensalada EDIT',8,0,1,1),(151,2,'torreznos',12,0,1,1),(152,2,'EstamsEdit',15,0,1,1),(153,2,'editamos',13,0,1,1),(154,2,'VIVoedit',15,0,1,1),(155,2,'vivoedit',12,0,1,1),(156,2,'vivoedit',12,0,1,1),(157,2,'vivoedit',12,0,1,1),(158,4,'vivos',12,0,1,1),(159,5,'vivoedit',12,0,1,1);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id_usuario` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(35) NOT NULL,
  `apellidos` varchar(45) NOT NULL,
  `email` varchar(60) NOT NULL,
  `contrasenia` varchar(255) NOT NULL,
  `rango` int(1) NOT NULL,
  `borrado` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Juan','Cuesta','juancuesta@gmail.com','$2a$10$LYCd1QexfADjIsUMAet7A.QDhmonMeYV81mtPFKqU0JQ4/UVzBmMK',0,1),(53,'Pepe','Gutierrez','pepegutierrez@gmail.com','$2a$10$.QCPCrSaCGA7E.DSSguJ7uZ6HMGvZphbcSaz/vX5PotdyrkmAuDWG',1,1),(54,'María','UnPajote','mariaunpajote@gmail.com','$2a$10$A1rhnT5RsvZ12dxRm9.hIeYjip316HMsRWIrw9lZ7jkN/jRgHAW3O',2,1),(56,'Laura','López','lauralopez@gmail.com','$2a$10$ah0X6PRUeBQmSbEcLgek7efsMb8hfJVhrW2.OCAMlf4wSmXcDLcWu',3,1),(71,'Alex','Clemente','tecnolex.es@gmail.com','$2a$10$9n4wRjyQhZioLgk6EkYGZuvcNAH1oBwDLWQqIPwWowogbJQwtU6t6',1,1),(72,'Manso','Culoeado','manso.culeado@gmail.com','$2a$10$BtqcaEc5vxHHtypeC4JBh.2bgg/zfw9V3OYsXNU9dJM4PHhk.qm42',2,1),(73,'Manso2','Culeado2','manso2@gmail.com','$2a$10$ZdXF1rpjG8nFOalPZIbVVO4PdgOSM5AEGL1YHfiNXqfkXB5TlRf66',3,1),(74,'J.Clemente','Gallego','j.clemente.gallego@gmail.com','$2a$10$HxeWX.RcoWg8QfrJ46r9VuqbUKk0pYhxs0zmMdllm3qM5AZRPhE92',1,1),(75,'Jorge','Orenes','jorge@gmail.com','$2a$10$Fx57mF0YCDWi7XAOa45G3.WvUFbLm4LSNebC0Uhe0hxS05GRtlnd.',0,1),(76,'HéCtor','IbañEzz','hector@gmail.com','$2a$10$/aEISp632txqJPPeQYSkLOLqiZNUWZkFfLmKvFroHfe634Fk0LThq',3,1),(77,'Jose','Clemente','josemika1994@gmail.com','$2a$10$sEWSZ3iDYhI5mLijM7nabeu44QG32yG26aDnXz9WUDvtF3MPRJ3aC',2,1),(78,'Eusebio','Gil','eusebiogil@gmail.com','$2a$10$CQeWFb0tMe3fSIQn/snkZeI7M3EXfkD6hl8TjxxF4asB8PpMpRZrC',0,0),(79,'John','Doe','johndoe@gmail.com','$2a$10$CukAcnsBs/ev2hGueSZHpeBv0cvX7XRN9KD12w2Ss3l3I7sgeB7Ey',1,0),(80,'Alberto','Chicote','albertochicote@gmail.com','$2a$10$pjGdN1UZmZlwO3yptaMm5OJ5f3jyiarteuubvbRmhUazDbugT4Oke',3,0),(81,'Javier','Muelas','javiermuelas@gmail.com','$2a$10$e87gzLfI61yVjpsOahbzvOfBSnG4NCg7FAPqdui.8uap9MiskKV82',2,0),(82,'Profesor1','Tester','profesor1iesdosmares@gmail.com','$2a$10$BtGyMPt5PiaS2McbDGnV8.BRzQNa6DxflN5SIBaVpyBjyXkwIZ0/y',0,0),(83,'Sdfsdfsdsdf','Sdfsdfs','tecnolex.es@gmail.com','$2a$10$PU900KOT/dKKXfkX2mmQae/jPjoM6GtIW4Z5JN1fT4JdFM98nNX7W',1,1),(84,'Sdfsfsdffs','Sdfsfsfsd','tecnolex.es@gmail.com','$2a$10$.jwF0eIubJY03JS6CiveEO68MaX3hxEv1xmH6V4rDltZi9OEwjM2K',2,1),(85,'Profesor2','Tester','profesor2iesdosmares@gmail.com','$2a$10$Tt0HdFd1QXK5UhAVzsOLn.bZoKJ1rdurLDWDagFuBy1Ixwc312HMy',1,0),(86,'Profesor3','Tester','profesor3iesdosmares@gmail.com','$2a$10$9Bk2h./e7tpd3cdfalQaue53PSeRlnCVmXlHaxiXrjKQpzcRZIadK',2,0),(87,'Profesor4','Tester','profesor4@gmail.com','$2a$10$BuyI1bLBzZsC8bTHaSfWveEuPtMKmVZA5n6TlwCPCQ19KtnkZ/Eo.',3,0),(94,'Lauras','Lopez','atravesdelaura@gmail.com','$2a$10$afEa/94x9G0r5xn2k0915uE1uDZrqIQuUE5JE9hak4p892GVwWBUG',3,0),(95,'Joseantonio','Manuel','joseantonio@gmail.com','$2a$10$kVJaoSSkbM5ZpPlGVXw.cukgqWILqFQx20Jst6X8xRA7rRVHIyFrW',1,1),(96,'Preseneditamos','Presen','presen@gmail.com','$2a$10$.E37WR0nFICekBJgPTQun.GP0kXi5iszX243iVZzBUeXdH41ZpbaS',0,1),(97,'Vivoedit','Vivo','vivo@gmail.com','$2a$10$82bm3bqycahWdoaot4EWh.3fFeKRiPVnTpKvp5tEgyKSORlF9.Biy',1,1),(98,'Vivos','Vivos','vivo@gmail.com','$2a$10$Rj/64OBi2kM4DxNGlI/LGOxwNMV2lpB2cpzurZX6JG.ZRYV6IoPoO',0,1),(99,'Vivoedit','Vivo','vivo@gmail.com','$2a$10$G1J4GkefqwCYsjGiiS45yeolzH1jq0jP8sIYEzX1g8.RDD4AYA7eC',0,1),(100,'Vivos','Vivos','vivo@gmail.com','$2a$10$3bnyZj7rA/wWTLwNv6jJO.K25jb7CLvliOHds.kzERza1cXKmnu.K',0,1),(101,'Vivos','Vivos','vivo@gmail.com','$2a$10$e2ivQYsm4TzthURko3Cd/uNIRg4sRycYQQQzjISyw.lTmWTUn4R4K',1,1),(102,'Vvivos','Vivos','vivo@gmail.com','$2a$10$bmg1G5Xbd1Rb0OTAmhgDfeuCW05CAe5GuQXVnW8HN9aP5XGSOU0tC',0,1);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-12 13:49:17
