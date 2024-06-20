CREATE DATABASE  IF NOT EXISTS `staging_dental2` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `staging_dental2`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: staging_dental2
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
-- Table structure for table `consulta`
--

DROP TABLE IF EXISTS `consulta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consulta` (
  `ID_CONSULTA` int NOT NULL,
  `DATA_CONSULTA` text,
  `TIPO_SERVICO` int DEFAULT NULL,
  `Consultorio_id_consultorio` int DEFAULT NULL,
  `Dentista_id_dentista` int DEFAULT NULL,
  `Paciente_id_paciente` int DEFAULT NULL,
  PRIMARY KEY (`ID_CONSULTA`),
  KEY `fk_consulta_dentista1_idx` (`Dentista_id_dentista`),
  KEY `fk_consulta_paciente1_idx` (`Paciente_id_paciente`),
  KEY `idx_tipo_servico` (`TIPO_SERVICO`),
  CONSTRAINT `fk_consulta_dentista1` FOREIGN KEY (`Dentista_id_dentista`) REFERENCES `dentista` (`ï»¿ID_DENTISTA`),
  CONSTRAINT `fk_consulta_paciente1` FOREIGN KEY (`Paciente_id_paciente`) REFERENCES `paciente` (`ï»¿ID_PACIENTE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consulta`
--

LOCK TABLES `consulta` WRITE;
/*!40000 ALTER TABLE `consulta` DISABLE KEYS */;
INSERT INTO `consulta` VALUES (1,'10/01/2024',1,1,2,1),(2,'11/02/2024',2,9,1,9),(3,'13/03/2024',3,10,5,10),(4,'14/04/2024',6,2,4,2),(5,'15/05/2024',5,8,3,8),(6,'03/06/2024',1,3,5,3),(7,'31/05/2024',2,7,1,7),(8,'03/05/2024',6,4,4,4),(9,'23/04/2024',4,6,5,6),(10,'02/04/2024',5,5,2,5);
/*!40000 ALTER TABLE `consulta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dentista`
--

DROP TABLE IF EXISTS `dentista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dentista` (
  `ï»¿ID_DENTISTA` int NOT NULL,
  `NOME` text,
  `ESPECIALIDADE` text,
  `TELEFONE` bigint DEFAULT NULL,
  `EMAIL` text,
  `CRO` int DEFAULT NULL,
  `UF_CRO` text,
  PRIMARY KEY (`ï»¿ID_DENTISTA`)
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

--
-- Table structure for table `dim_genero`
--

DROP TABLE IF EXISTS `dim_genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_genero` (
  `id_genero` int NOT NULL,
  `desc_genero` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_genero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_genero`
--

LOCK TABLES `dim_genero` WRITE;
/*!40000 ALTER TABLE `dim_genero` DISABLE KEYS */;
INSERT INTO `dim_genero` VALUES (1,'Masculino'),(2,'Feminino');
/*!40000 ALTER TABLE `dim_genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_metodopagamento`
--

DROP TABLE IF EXISTS `dim_metodopagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_metodopagamento` (
  `id_metodopagamento` int NOT NULL,
  `desc_metodopagamento` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`id_metodopagamento`),
  CONSTRAINT `fk_dim_metodopagamento_pagamento` FOREIGN KEY (`id_metodopagamento`) REFERENCES `pagamento` (`METODO_PAGAMENTO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_metodopagamento`
--

LOCK TABLES `dim_metodopagamento` WRITE;
/*!40000 ALTER TABLE `dim_metodopagamento` DISABLE KEYS */;
INSERT INTO `dim_metodopagamento` VALUES (1,'Dinheiro'),(2,'Pix'),(3,'Cartão Débido'),(4,'Cartão Crédito');
/*!40000 ALTER TABLE `dim_metodopagamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_status`
--

DROP TABLE IF EXISTS `dim_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_status` (
  `id_status` int NOT NULL,
  `desc_status` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`id_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_status`
--

LOCK TABLES `dim_status` WRITE;
/*!40000 ALTER TABLE `dim_status` DISABLE KEYS */;
INSERT INTO `dim_status` VALUES (1,'Orçado'),(2,'Contratado'),(3,'Em andamento'),(4,'Concluído');
/*!40000 ALTER TABLE `dim_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_tiposervico`
--

DROP TABLE IF EXISTS `dim_tiposervico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_tiposervico` (
  `Id_tiposervico` int NOT NULL,
  `desc_tiposervico` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id_tiposervico`),
  CONSTRAINT `fk_dim_tiposervico_consulta1` FOREIGN KEY (`Id_tiposervico`) REFERENCES `consulta` (`TIPO_SERVICO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_tiposervico`
--

LOCK TABLES `dim_tiposervico` WRITE;
/*!40000 ALTER TABLE `dim_tiposervico` DISABLE KEYS */;
INSERT INTO `dim_tiposervico` VALUES (1,'Limpeza dos dentes'),(2,'Cuidados com as gengivas'),(3,'Tratamentos de cáries'),(4,'Remoção de tártaro'),(5,'Aplicação de flúor'),(6,'Protese dentária'),(7,'Restauração'),(8,'Resino'),(9,'Manutençao protese'),(10,'Extração de dentes');
/*!40000 ALTER TABLE `dim_tiposervico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orcamento`
--

DROP TABLE IF EXISTS `orcamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orcamento` (
  `ID_ORCAMENTO` int NOT NULL,
  `DATA_ORCAMENTO` text,
  `DESCRICAO` text,
  `VALOR` int DEFAULT NULL,
  `STATUS` int DEFAULT NULL,
  `paciente_ï»¿ID_PACIENTE` int NOT NULL,
  PRIMARY KEY (`ID_ORCAMENTO`,`paciente_ï»¿ID_PACIENTE`),
  KEY `fk_orcamento_dim_status_idx` (`STATUS`),
  KEY `fk_orcamento_paciente1_idx` (`paciente_ï»¿ID_PACIENTE`),
  CONSTRAINT `fk_orcamento_dim_status` FOREIGN KEY (`STATUS`) REFERENCES `dim_status` (`id_status`),
  CONSTRAINT `fk_orcamento_paciente1` FOREIGN KEY (`paciente_ï»¿ID_PACIENTE`) REFERENCES `paciente` (`ï»¿ID_PACIENTE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orcamento`
--

LOCK TABLES `orcamento` WRITE;
/*!40000 ALTER TABLE `orcamento` DISABLE KEYS */;
INSERT INTO `orcamento` VALUES (1,' 2024-01-10',' Limpeza realizada',200,1,1),(2,' 2024-02-11',' Protese instalada',1000,4,2),(3,' 2024-03-13',' Limpeza concluida',200,4,3),(4,' 2024-04-14',' Protese sendo criada',1000,3,4),(5,' 2024-05-15',' Fluor aplicado',250,4,5),(6,' 2024-06-03',' Tartaro removido',210,1,6),(7,' 2024-05-31',' Tratamento de gengivite concluido',300,1,7),(8,' 2024-05-03',' Fluor aplicado',250,4,8),(9,' 2024-04-23',' Tratamento de gengivite',300,2,9),(10,' 2024-04-02',' Carie retirada',400,4,10);
/*!40000 ALTER TABLE `orcamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paciente`
--

DROP TABLE IF EXISTS `paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paciente` (
  `ï»¿ID_PACIENTE` int NOT NULL,
  `NOME` text,
  `DATA_NASCIMENTO` text,
  `GENERO` int DEFAULT NULL,
  `ENDERECO` text,
  `UF` text,
  `CEP` int DEFAULT NULL,
  `TELEFONE` bigint DEFAULT NULL,
  `EMAIL` text,
  `CIDADE` text,
  `CPF` bigint DEFAULT NULL,
  PRIMARY KEY (`ï»¿ID_PACIENTE`),
  KEY `fk_paciente_dim_genero1_idx` (`GENERO`),
  CONSTRAINT `fk_paciente_dim_genero1` FOREIGN KEY (`GENERO`) REFERENCES `dim_genero` (`id_genero`)
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

--
-- Table structure for table `pagamento`
--

DROP TABLE IF EXISTS `pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagamento` (
  `ID_PAGAMENTO` int NOT NULL,
  `DATA_PAGAMENTO` text,
  `VALOR` int DEFAULT NULL,
  `METODO_PAGAMENTO` int DEFAULT NULL,
  `Orcamento_id_orcamento` int DEFAULT NULL,
  PRIMARY KEY (`ID_PAGAMENTO`),
  KEY `fk_pagamento_orcamento1_idx` (`Orcamento_id_orcamento`),
  KEY `idx_metodo_pagamento` (`METODO_PAGAMENTO`),
  CONSTRAINT `fk_pagamento_orcamento1` FOREIGN KEY (`Orcamento_id_orcamento`) REFERENCES `orcamento` (`ID_ORCAMENTO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagamento`
--

LOCK TABLES `pagamento` WRITE;
/*!40000 ALTER TABLE `pagamento` DISABLE KEYS */;
INSERT INTO `pagamento` VALUES (1,' ',200,5,1),(2,' 2024-03-15',1000,4,2),(3,' 2024-04-15',200,2,3),(4,' 2024-05-10',1000,3,4),(5,' 2024-05-31',250,1,5),(6,' ',210,5,6),(7,' ',300,5,7),(8,' 2024-04-19',250,3,8),(9,' 2024-04-20',300,4,9),(10,' 2024-05-13',400,4,10);
/*!40000 ALTER TABLE `pagamento` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-19 13:21:16
