CREATE DATABASE  IF NOT EXISTS `dbpeluqueriacanina` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `dbpeluqueriacanina`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: dbpeluqueriacanina
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `dueno`
--

DROP TABLE IF EXISTS `dueno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dueno` (
  `DNI` varchar(8) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Apellido` varchar(45) NOT NULL,
  `Telefono` varchar(20) NOT NULL,
  `Direccion` varchar(50) NOT NULL,
  PRIMARY KEY (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dueno`
--

LOCK TABLES `dueno` WRITE;
/*!40000 ALTER TABLE `dueno` DISABLE KEYS */;
INSERT INTO `dueno` VALUES ('12156790','Eduardo','Gonzalez','3514654177','Libertad 123');
/*!40000 ALTER TABLE `dueno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historial`
--

DROP TABLE IF EXISTS `historial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historial` (
  `ID_Historial` int NOT NULL AUTO_INCREMENT,
  `Fecha` datetime DEFAULT NULL,
  `Perro` int NOT NULL,
  `Descripcion` varchar(200) NOT NULL,
  `Monto` int DEFAULT NULL,
  PRIMARY KEY (`ID_Historial`),
  KEY `Perro` (`Perro`),
  CONSTRAINT `historial_ibfk_1` FOREIGN KEY (`Perro`) REFERENCES `perro` (`ID_Perro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historial`
--

LOCK TABLES `historial` WRITE;
/*!40000 ALTER TABLE `historial` DISABLE KEYS */;
/*!40000 ALTER TABLE `historial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perro`
--

DROP TABLE IF EXISTS `perro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perro` (
  `ID_Perro` int NOT NULL AUTO_INCREMENT,
  `DNI_dueno` varchar(8) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Fecha_nac` date DEFAULT NULL,
  `Sexo` varchar(10) NOT NULL,
  PRIMARY KEY (`ID_Perro`),
  KEY `DNI_dueno` (`DNI_dueno`),
  CONSTRAINT `perro_ibfk_1` FOREIGN KEY (`DNI_dueno`) REFERENCES `dueno` (`DNI`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perro`
--

LOCK TABLES `perro` WRITE;
/*!40000 ALTER TABLE `perro` DISABLE KEYS */;
INSERT INTO `perro` VALUES (1,'12156790','loky','2020-01-10','masculino');
/*!40000 ALTER TABLE `perro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'dbpeluqueriacanina'
--

--
-- Dumping routines for database 'dbpeluqueriacanina'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-12 22:34:24
