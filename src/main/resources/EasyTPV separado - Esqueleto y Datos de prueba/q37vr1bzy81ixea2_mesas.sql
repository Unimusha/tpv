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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-12 13:48:43
