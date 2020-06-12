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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-12 13:48:41
