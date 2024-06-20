CREATE DATABASE  IF NOT EXISTS `staging_dental` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `staging_dental`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: staging_dental
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `dentista`
--

DROP TABLE IF EXISTS `dentista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dentista` (
  `ï»¿ID_DENTISTA` int DEFAULT NULL,
  `NOME` text,
  `ESPECIALIDADE` text,
  `TELEFONE` bigint DEFAULT NULL,
  `EMAIL` text,
  `CRO` int DEFAULT NULL,
  `UF_CRO` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dentista`
--

LOCK TABLES `dentista` WRITE;
/*!40000 ALTER TABLE `dentista` DISABLE KEYS */;
INSERT INTO `dentista` VALUES (1,'Dr. JoÃ£o Silva','Ortodontia',5511987654321,'joao.silva@clinicaodonto.com',12345,'SP'),(2,'Dra. Maria Oliveira','Endodontia',5511998765432,'maria.oliveira@clinicaodonto.com',54321,'SP'),(3,'Dr. Pedro Santos','Periodontia',5511976543210,'pedro.santos@clinicaodonto.com',67890,'SP'),(4,'Dra. Ana Costa','PrÃ³tese DentÃ¡ria',5511912345678,'ana.costa@clinicaodonto.com',13579,'SP'),(5,'Dr. Lucas Almeida','Odontopediatria',5511923456789,'lucas.almeida@clinicaodonto.com',24680,'SP'),(6,' Dr.Pedro alvarez',' Ortodontia',5561992839243,' pedro.alvarez@clinicaodonto.com',92755,' DF'),(7,' Dra.Miriam Isabell',' Endodontia',5561994234254,' miriam@clinicaodonto.com',83674,' DF'),(8,' Dr.AndrÃ© Cotoco',' Periodontia',5561906327445,' andre@clinicaodonto.com',23452,' DF'),(9,' Dra.Rozanne rocha',' PrÃ³tese DentÃ¡ria',5561905762356,' rocha@clinicaodonto.com',11214,' DF'),(10,' Dr.Tomas Santos',' Odontopediatria',5561976264532,' santos@clinicaodonto.com',14682,' DF');
/*!40000 ALTER TABLE `dentista` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-19 10:05:46
