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
-- Table structure for table `paciente`
--

DROP TABLE IF EXISTS `paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paciente` (
  `ï»¿ID_PACIENTE` int DEFAULT NULL,
  `NOME` text,
  `DATA_NASCIMENTO` text,
  `GENERO` int DEFAULT NULL,
  `ENDERECO` text,
  `UF` text,
  `CEP` int DEFAULT NULL,
  `TELEFONE` bigint DEFAULT NULL,
  `EMAIL` text,
  `CIDADE` text,
  `CPF` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paciente`
--

LOCK TABLES `paciente` WRITE;
/*!40000 ALTER TABLE `paciente` DISABLE KEYS */;
INSERT INTO `paciente` VALUES (1,'JoÃ£o Silva','10/05/1980',1,'Rua Joaquim Nabuco 402 - Casa2','SP',1234567,11912345678,'joao.silva@email.com','SÃ£o Paulo',12345678900),(2,'Maria Santos','20/08/1992',2,'RUA VALINS 746','SP',2345678,11923456789,'maria.santos@email.com','SÃ£o Paulo',23456789011),(3,'JosÃ© Oliveira','15/03/1985',1,'RUA MARECHAL DEODORO 153','SP',3456789,11934567890,'jose.oliveira@email.com','SÃ£o Paulo',34567890122),(4,'Ana Pereira','25/11/1990',2,'Avenida 3 080','SP',4567890,11945678901,'ana.pereira@email.com','SÃ£o Paulo',45678901233),(5,'Carlos Martins','12/07/1988',1,'Av. Dr. Acir Alves Leite 265','SP',5678901,11956789012,'carlos.martins@email.com','SÃ£o Paulo',56789012344),(6,'Aline Costa','30/04/1995',2,'RUA ALAGOAS 327','SP',6789012,11967890123,'aline.costa@email.com','SÃ£o Paulo',67890123455),(7,'Fernando Oliveira','18/09/1983',1,'PRAÃ‡A GERONIMO CARLOS SOARES SN','SP',7890123,11978901234,'fernando.oliveira@email.com','SÃ£o Paulo',78901234566),(8,'Luciana Almeida','05/02/1993',2,' Rua: SÃ£o JoÃ£o 1060','SP',8901234,11989012345,'luciana.almeida@email.com','SÃ£o Paulo',89012345677),(9,'Ricardo Nunes','22/06/1987',1,'AVENIDA DOIS 30','SP',9012345,11990123456,'ricardo.nunes@email.com','SÃ£o Paulo',90123456788),(10,'Paula Lima','08/01/1998',2,'RUA TREZE DE MAIO 1887','SP',123456,11900123456,'paula.lima@email.com','SÃ£o Paulo',1234567899);
/*!40000 ALTER TABLE `paciente` ENABLE KEYS */;
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
