CREATE DATABASE  IF NOT EXISTS `transporte_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `transporte_db`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: transporte_db
-- ------------------------------------------------------
-- Server version	9.0.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `puntuaciones`
--

DROP TABLE IF EXISTS `puntuaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `puntuaciones` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_apellido` varchar(255) NOT NULL,
  `puntuacion` int NOT NULL,
  `comentario` text,
  `fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `puntuaciones`
--

LOCK TABLES `puntuaciones` WRITE;
/*!40000 ALTER TABLE `puntuaciones` DISABLE KEYS */;
INSERT INTO `puntuaciones` VALUES (1,'Maria Moran',4,'Muy Lindo el viaje al acuario de Mendoza.Gracias!','2024-10-09 22:51:57'),(2,'Marcos Antonin',4,'Muy amable el chofer! gracias!','2024-10-09 22:52:33'),(3,'Carla Pana',5,'Excelente viaje, muy atento el chofer con los niños!','2024-10-09 22:53:37'),(4,'Domingo Domizi',5,'El chofer es muy simpático y educado','2024-10-17 02:42:40'),(5,'Luisina Brandol',2,'Buen Servicio','2025-03-26 03:27:51'),(8,'Armando Man',3,'Regular servicio!','2025-03-26 03:51:11'),(9,'Carla Mendoza',0,'Muy amable el chofer y cordial con los niños','2025-03-30 22:15:48'),(10,'Armando Barrera',0,'Bien','2025-03-30 22:28:43'),(11,'Jimena Perea',4,'El refrigerio muy completo! El chofer muy paciente','2025-03-30 22:59:10'),(12,'Marcela Araya',4,'Gracias por la paciencia con los niños!','2025-04-01 04:10:20'),(13,'Luisina Brandolin',5,'Gracias!!','2025-04-01 22:41:47');
/*!40000 ALTER TABLE `puntuaciones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-28 20:59:19
