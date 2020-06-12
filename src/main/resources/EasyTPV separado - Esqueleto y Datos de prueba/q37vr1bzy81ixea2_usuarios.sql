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

-- Dump completed on 2020-06-12 13:48:42
