-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: mmd_dental
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
-- Table structure for table `dim_dentista`
--

DROP TABLE IF EXISTS `dim_dentista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_dentista` (
  `ï»¿ID_DENTISTA` int NOT NULL,
  `NOME` text,
  `ESPECIALIDADE` text,
  PRIMARY KEY (`ï»¿ID_DENTISTA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_dentista`
--

LOCK TABLES `dim_dentista` WRITE;
/*!40000 ALTER TABLE `dim_dentista` DISABLE KEYS */;
INSERT INTO `dim_dentista` VALUES (1,'Dr. JoÃ£o Silva','Ortodontia'),(2,'Dra. Maria Oliveira','Endodontia'),(3,'Dr. Pedro Santos','Periodontia'),(4,'Dra. Ana Costa','PrÃ³tese DentÃ¡ria'),(5,'Dr. Lucas Almeida','Odontopediatria'),(6,' Dr.Pedro alvarez',' Ortodontia'),(7,' Dra.Miriam Isabell',' Endodontia'),(8,' Dr.AndrÃ© Cotoco',' Periodontia'),(9,' Dra.Rozanne rocha',' PrÃ³tese DentÃ¡ria'),(10,' Dr.Tomas Santos',' Odontopediatria');
/*!40000 ALTER TABLE `dim_dentista` ENABLE KEYS */;
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
-- Table structure for table `dim_orcamento`
--

DROP TABLE IF EXISTS `dim_orcamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_orcamento` (
  `ID_ORCAMENTO` int NOT NULL,
  `DATA_ORCAMENTO` text,
  `DESCRICAO` text,
  `VALOR` int DEFAULT NULL,
  `STATUS` int DEFAULT NULL,
  PRIMARY KEY (`ID_ORCAMENTO`),
  KEY `fk_orcamento_dim_status_idx` (`STATUS`),
  CONSTRAINT `fk_orcamento_dim_status` FOREIGN KEY (`STATUS`) REFERENCES `dim_status` (`id_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_orcamento`
--

LOCK TABLES `dim_orcamento` WRITE;
/*!40000 ALTER TABLE `dim_orcamento` DISABLE KEYS */;
INSERT INTO `dim_orcamento` VALUES (1,'01/01/2024',' Limpeza realizada',200,1),(2,'04/01/2024',' Protese instalada',300,4),(3,'07/01/2024',' Limpeza concluida',400,4),(4,'10/01/2024',' Protese sendo criada',1000,3),(5,'13/01/2024',' Fluor aplicado',250,4),(6,'16/01/2024',' Tartaro removido',200,1),(7,'19/01/2024',' Tratamento de gengivite concluido',300,1),(8,'22/01/2024',' Fluor aplicado',1000,4),(9,'25/01/2024',' Tratamento de gengivite',210,2),(10,'28/01/2024',' Carie retirada',250,4),(11,'31/01/2024','Finalizado com sucesso',400,3),(12,'03/02/2024','Finalizado com sucesso',1000,1),(13,'06/02/2024','Finalizado com sucesso',200,3),(14,'09/02/2024','Finalizado com sucesso',210,1),(15,'12/02/2024','Finalizado com sucesso',300,2),(16,'15/02/2024','Finalizado com sucesso',250,3),(17,'18/02/2024','Finalizado com sucesso',400,3),(18,'21/02/2024','Finalizado com sucesso',300,1),(19,'24/02/2024','Finalizado com sucesso',1000,4),(20,'27/02/2024','Finalizado com sucesso',200,1),(21,'01/03/2024','Finalizado com sucesso',250,4),(22,'04/03/2024','Finalizado com sucesso',210,3),(23,'07/03/2024','Finalizado com sucesso',400,4),(24,'10/03/2024','Finalizado com sucesso',300,2),(25,'13/03/2024','Finalizado com sucesso',1000,1),(26,'16/03/2024','Finalizado com sucesso',200,2),(27,'19/03/2024','Finalizado com sucesso',210,1),(28,'22/03/2024','Finalizado com sucesso',250,2),(29,'25/03/2024','Finalizado com sucesso',400,3),(30,'28/03/2024','Finalizado com sucesso',300,4),(31,'31/03/2024','Finalizado com sucesso',1000,1),(32,'03/04/2024','Finalizado com sucesso',200,1),(33,'06/04/2024','Finalizado com sucesso',250,3),(34,'09/04/2024','Finalizado com sucesso',210,4),(35,'12/04/2024','Finalizado com sucesso',400,1),(36,'15/04/2024','Finalizado com sucesso',300,4),(37,'18/04/2024','Finalizado com sucesso',1000,3),(38,'21/04/2024','Finalizado com sucesso',200,4),(39,'24/04/2024','Finalizado com sucesso',250,2),(40,'27/04/2024','Finalizado com sucesso',210,3),(41,'30/04/2024','Finalizado com sucesso',400,1),(42,'03/05/2024','Finalizado com sucesso',300,2),(43,'06/05/2024','Finalizado com sucesso',1000,1),(44,'09/05/2024','Finalizado com sucesso',200,2),(45,'12/05/2024','Finalizado com sucesso',250,1),(46,'15/05/2024','Finalizado com sucesso',210,2),(47,'18/05/2024','Finalizado com sucesso',400,3),(48,'21/05/2024','Finalizado com sucesso',300,2),(49,'24/05/2024','Finalizado com sucesso',1000,2),(50,'27/05/2024','Finalizado com sucesso',200,1),(51,'30/05/2024','Finalizado com sucesso',250,4),(52,'02/06/2024','Finalizado com sucesso',210,4),(53,'05/06/2024','Finalizado com sucesso',400,4),(54,'08/06/2024','Finalizado com sucesso',300,4),(55,'11/06/2024','Finalizado com sucesso',1000,2),(56,'14/06/2024','Finalizado com sucesso',200,3),(57,'17/06/2024','Finalizado com sucesso',250,4),(58,'02/01/2024','Finalizado com sucesso',210,4),(59,'05/01/2024','Finalizado com sucesso',400,1),(60,'08/01/2024','Finalizado com sucesso',300,4),(61,'11/01/2024','Finalizado com sucesso',1000,1),(62,'14/01/2024','Finalizado com sucesso',200,4),(63,'17/01/2024','Finalizado com sucesso',250,1),(64,'20/01/2024','Finalizado com sucesso',210,3),(65,'23/01/2024','Finalizado com sucesso',400,1),(66,'26/01/2024','Finalizado com sucesso',300,3),(67,'29/01/2024','Finalizado com sucesso',1000,3),(68,'01/02/2024','Finalizado com sucesso',200,4),(69,'04/02/2024','Finalizado com sucesso',250,2),(70,'07/02/2024','Finalizado com sucesso',210,4),(71,'10/02/2024','Finalizado com sucesso',400,1),(72,'13/02/2024','Finalizado com sucesso',300,1),(73,'16/02/2024','Finalizado com sucesso',1000,4),(74,'19/02/2024','Finalizado com sucesso',200,1),(75,'22/02/2024','Finalizado com sucesso',250,4),(76,'25/02/2024','Finalizado com sucesso',210,2),(77,'28/02/2024','Finalizado com sucesso',400,4),(78,'02/03/2024','Finalizado com sucesso',300,3),(79,'05/03/2024','Finalizado com sucesso',1000,2),(80,'08/03/2024','Finalizado com sucesso',200,1),(81,'11/03/2024','Finalizado com sucesso',250,1),(82,'14/03/2024','Finalizado com sucesso',210,3),(83,'17/03/2024','Finalizado com sucesso',400,1),(84,'20/03/2024','Finalizado com sucesso',300,4),(85,'23/03/2024','Finalizado com sucesso',1000,3),(86,'26/03/2024','Finalizado com sucesso',200,1),(87,'29/03/2024','Finalizado com sucesso',250,4),(88,'01/04/2024','Finalizado com sucesso',210,3),(89,'04/04/2024','Finalizado com sucesso',400,2),(90,'07/04/2024','Finalizado com sucesso',300,2),(91,'10/04/2024','Finalizado com sucesso',1000,1),(92,'13/04/2024','Finalizado com sucesso',200,4),(93,'16/04/2024','Finalizado com sucesso',250,2),(94,'19/04/2024','Finalizado com sucesso',210,4),(95,'22/04/2024','Finalizado com sucesso',400,3),(96,'25/04/2024','Finalizado com sucesso',300,3),(97,'28/04/2024','Finalizado com sucesso',1000,2),(98,'01/05/2024','Finalizado com sucesso',200,4),(99,'04/05/2024','Finalizado com sucesso',250,4);
/*!40000 ALTER TABLE `dim_orcamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_paciente`
--

DROP TABLE IF EXISTS `dim_paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_paciente` (
  `ï»¿ID_PACIENTE` int NOT NULL,
  `NOME` text,
  `DATA_NASCIMENTO` text,
  `GENERO` int DEFAULT NULL,
  `CIDADE` text,
  PRIMARY KEY (`ï»¿ID_PACIENTE`),
  KEY `fk_paciente_dim_genero1_idx` (`GENERO`),
  CONSTRAINT `fk_paciente_dim_genero1` FOREIGN KEY (`GENERO`) REFERENCES `dim_genero` (`id_genero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_paciente`
--

LOCK TABLES `dim_paciente` WRITE;
/*!40000 ALTER TABLE `dim_paciente` DISABLE KEYS */;
INSERT INTO `dim_paciente` VALUES (1,'Miguel Silva','01/05/1984',1,'São Paulo'),(2,'Ana Santos','18/09/1965',2,'São Paulo'),(3,'Gustavo Oliveira','23/11/1977',1,'São Paulo'),(4,'Marina Souza','07/12/1970',2,'São Paulo'),(5,'Leonardo Pereira','14/02/1975',1,'São Paulo'),(6,'Beatriz Costa','30/10/1962',2,'São Paulo'),(7,'Rafael Martins','05/07/1992',1,'São Paulo'),(8,'Larissa Almeida','12/08/1964',2,'São Paulo'),(9,'Matheus Ferreira','19/06/1988',1,'São Paulo'),(10,'Amanda Carvalho','25/03/1973',2,'São Paulo'),(11,'Gabriel Rodrigues','11/04/1979',1,'Distrito Federal'),(12,'Juliana Nunes','09/01/1978',2,'Distrito Federal'),(13,'Lucas Lima','27/06/1971',1,'São Paulo'),(14,'Fernanda Gomes','03/09/1969',2,'São Paulo'),(15,'Daniel Barbosa','22/11/1983',1,'Distrito Federal'),(16,'Isabela Ribeiro','10/10/1985',2,'Distrito Federal'),(17,'Thiago Rocha','21/07/1974',1,'São Paulo'),(18,'Camila Barbosa','28/12/1963',2,'São Paulo'),(19,'João Oliveira','15/01/1967',1,'São Paulo'),(20,'Letícia Santos','31/08/1961',2,'Distrito Federal'),(21,'André Pereira','02/05/1976',1,'Distrito Federal'),(22,'Carolina Silva','20/04/1980',2,'São Paulo'),(23,'Bruno Costa','06/02/1982',1,'São Paulo'),(24,'Gabriela Martins','24/11/1981',2,'São Paulo'),(25,'Pedro Almeida','17/03/1972',1,'Distrito Federal'),(26,'Mariana Fernandes','29/09/1968',2,'São Paulo'),(27,'Matias Carvalho','16/12/1966',1,'Distrito Federal'),(28,'Luiza Rodrigues','08/07/1990',2,'São Paulo'),(29,'Diego Gomes','04/06/1986',1,'Distrito Federal'),(30,'Manuela Costa','13/08/1979',2,'Distrito Federal'),(31,'Lucas Ferreira','26/01/1987',1,'Distrito Federal'),(32,'Ana Laura Carvalho','23/09/1976',2,'São Paulo'),(33,'Joaquim Nunes','09/05/1971',1,'São Paulo'),(34,'Vitória Gomes','14/10/1978',2,'Distrito Federal'),(35,'Rafael Lima','18/04/1975',1,'São Paulo'),(36,'Clara Ribeiro','01/11/1984',2,'São Paulo'),(37,'Samuel Rocha','19/02/1988',1,'São Paulo'),(38,'Bruna Barbosa','05/03/1964',2,'São Paulo'),(39,'Eduardo Oliveira','12/07/1962',1,'São Paulo'),(40,'Mariana Santos','27/08/1977',2,'Distrito Federal'),(41,'Gustavo Silva','10/06/1992',1,'Distrito Federal'),(42,'Valentina Costa','30/03/1985',2,'Distrito Federal'),(43,'Carlos Martins','21/05/1973',1,'Distrito Federal'),(44,'Laura Almeida','08/09/1983',2,'São Paulo'),(45,'Henrique Ferreira','03/12/1965',1,'São Paulo'),(46,'Fernanda Carvalho','15/11/1969',2,'São Paulo'),(47,'José Rodrigues','07/01/1970',1,'Distrito Federal'),(48,'Sofia Ribeiro','25/10/1989',2,'Distrito Federal'),(49,'Lucas Pereira','20/06/1981',1,'Distrito Federal'),(50,'Isabela Gomes','11/12/1974',2,'Distrito Federal'),(51,'Miguel Oliveira','28/04/1982',1,'Distrito Federal'),(52,'Beatriz Martins','26/02/1968',2,'Distrito Federal'),(53,'Rafael Souza','17/07/1980',1,'Distrito Federal'),(54,'Larissa Costa','02/09/1972',2,'Distrito Federal'),(55,'Matheus Almeida','16/03/1961',1,'São Paulo'),(56,'Amanda Fernandes','22/08/1986',2,'Distrito Federal'),(57,'Gabriel Barbosa','29/01/1976',1,'São Paulo'),(58,'Juliana Lima','06/11/1967',2,'Distrito Federal'),(59,'Leonardo Ribeiro','24/07/1991',1,'Distrito Federal'),(60,'Camila Rocha','13/05/1993',2,'Distrito Federal'),(61,'João Gomes','04/04/1963',1,'São Paulo'),(62,'Letícia Barbosa','18/12/1960',2,'São Paulo'),(63,'André Ferreira','09/02/1978',1,'São Paulo'),(64,'Carolina Carvalho','05/01/1971',2,'Distrito Federal'),(65,'Bruno Nunes','01/10/1987',1,'Distrito Federal'),(66,'Gabriela Gomes','21/08/1984',2,'São Paulo'),(67,'Pedro Lima','14/06/1990',1,'São Paulo'),(68,'Mariana Ribeiro','03/03/1989',2,'Distrito Federal'),(69,'Matias Rocha','10/09/1976',1,'Distrito Federal'),(70,'Luiza Barbosa','27/04/1964',2,'Distrito Federal'),(71,'Diego Oliveira','19/11/1982',1,'Distrito Federal'),(72,'Manuela Almeida','08/07/1973',2,'São Paulo'),(73,'Lucas Costa','16/05/1975',1,'Distrito Federal'),(74,'Ana Laura Martins','30/01/1980',2,'Distrito Federal'),(75,'Joaquim Santos','12/12/1966',1,'São Paulo'),(76,'Vitória Ferreira','25/08/1977',2,'Distrito Federal'),(77,'Rafael Carvalho','07/02/1992',1,'Distrito Federal'),(78,'Clara Fernandes','15/09/1968',2,'Distrito Federal'),(79,'Samuel Barbosa','28/10/1983',1,'Distrito Federal'),(80,'Bruna Lima','11/06/1985',2,'Distrito Federal'),(81,'Eduardo Ribeiro','22/04/1979',1,'Distrito Federal'),(82,'Mariana Rocha','06/03/1962',2,'São Paulo'),(83,'Gustavo Gomes','23/12/1961',1,'Distrito Federal'),(84,'Valentina Barbosa','20/11/1981',2,'São Paulo'),(85,'Carlos Ferreira','02/08/1990',1,'Distrito Federal'),(86,'Laura Carvalho','18/09/1974',2,'São Paulo'),(87,'Henrique Nunes','09/05/1963',1,'Distrito Federal'),(88,'Fernanda Gomes','01/07/1988',2,'Distrito Federal'),(89,'José Oliveira','04/04/1969',1,'São Paulo'),(90,'Sofia Almeida','17/03/1978',2,'Distrito Federal'),(91,'Lucas Martins','13/01/1986',1,'São Paulo'),(92,'Isabela Ferreira','29/10/1972',2,'Distrito Federal'),(93,'Rafael Carvalho','05/12/1970',1,'São Paulo'),(94,'Larissa Lima','24/06/1991',2,'São Paulo'),(95,'Matheus Ribeiro','14/08/1989',1,'Distrito Federal');
/*!40000 ALTER TABLE `dim_paciente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_pagamento`
--

DROP TABLE IF EXISTS `dim_pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_pagamento` (
  `ID_PAGAMENTO` int NOT NULL,
  `DATA_PAGAMENTO` text,
  `VALOR` int DEFAULT NULL,
  `METODO_PAGAMENTO` text,
  `Orcamento_id_orcamento` int DEFAULT NULL,
  PRIMARY KEY (`ID_PAGAMENTO`),
  KEY `fk_pagamento_orcamento1_idx` (`Orcamento_id_orcamento`),
  CONSTRAINT `fk_pagamento_orcamento1` FOREIGN KEY (`Orcamento_id_orcamento`) REFERENCES `dim_orcamento` (`ID_ORCAMENTO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_pagamento`
--

LOCK TABLES `dim_pagamento` WRITE;
/*!40000 ALTER TABLE `dim_pagamento` DISABLE KEYS */;
INSERT INTO `dim_pagamento` VALUES (1,'01/01/2024',200,'4',1),(2,'04/01/2024',300,'1',2),(3,'07/01/2024',400,'3',3),(4,'10/01/2024',1000,'3',4),(5,'13/01/2024',250,'1',5),(6,'16/01/2024',200,'3',6),(7,'19/01/2024',300,'3',7),(8,'22/01/2024',1000,'1',8),(9,'25/01/2024',210,'3',9),(10,'28/01/2024',250,'1',10),(11,'31/01/2024',400,'4',11),(12,'03/02/2024',1000,'3',12),(13,'06/02/2024',200,'2',13),(14,'09/02/2024',210,'1',14),(15,'12/02/2024',300,'3',15),(16,'15/02/2024',250,'4',16),(17,'18/02/2024',400,'3',17),(18,'21/02/2024',300,'4',18),(19,'24/02/2024',1000,'3',19),(20,'27/02/2024',200,'3',20),(21,'01/03/2024',250,'2',21),(22,'04/03/2024',210,'1',22),(23,'07/03/2024',400,'4',23),(24,'10/03/2024',300,'3',24),(25,'13/03/2024',1000,'3',25),(26,'16/03/2024',200,'4',26),(27,'19/03/2024',210,'2',27),(28,'22/03/2024',250,'3',28),(29,'25/03/2024',400,'1',29),(30,'28/03/2024',300,'1',30),(31,'31/03/2024',1000,'4',31),(32,'03/04/2024',200,'1',32),(33,'06/04/2024',250,'2',33),(34,'09/04/2024',210,'1',34),(35,'12/04/2024',400,'2',35),(36,'15/04/2024',300,'4',36),(37,'18/04/2024',1000,'4',37),(38,'21/04/2024',200,'1',38),(39,'24/04/2024',250,'1',39),(40,'27/04/2024',210,'2',40),(41,'30/04/2024',400,'4',41),(42,'03/05/2024',300,'3',42),(43,'06/05/2024',1000,'3',43),(44,'09/05/2024',200,'3',44),(45,'12/05/2024',250,'2',45),(46,'15/05/2024',210,'2',46),(47,'18/05/2024',400,'3',47),(48,'21/05/2024',300,'4',48),(49,'24/05/2024',1000,'2',49),(50,'27/05/2024',200,'4',50),(51,'30/05/2024',250,'3',51),(52,'02/06/2024',210,'1',52),(53,'05/06/2024',400,'4',53),(54,'08/06/2024',300,'3',54),(55,'11/06/2024',1000,'2',55),(56,'14/06/2024',200,'1',56),(57,'17/06/2024',250,'3',57),(58,'02/01/2024',210,'1',58),(59,'05/01/2024',400,'2',59),(60,'08/01/2024',300,'1',60),(61,'11/01/2024',1000,'3',61),(62,'14/01/2024',200,'2',62),(63,'17/01/2024',250,'4',63),(64,'20/01/2024',210,'4',64),(65,'23/01/2024',400,'3',65),(66,'26/01/2024',300,'4',66),(67,'29/01/2024',1000,'2',67),(68,'01/02/2024',200,'2',68),(69,'04/02/2024',250,'2',69),(70,'07/02/2024',210,'1',70),(71,'10/02/2024',400,'1',71),(72,'13/02/2024',300,'1',72),(73,'16/02/2024',1000,'4',73),(74,'19/02/2024',200,'2',74),(75,'22/02/2024',250,'1',75),(76,'25/02/2024',210,'4',76),(77,'28/02/2024',400,'2',77),(78,'02/03/2024',300,'3',78),(79,'05/03/2024',1000,'2',79),(80,'08/03/2024',200,'3',80),(81,'11/03/2024',250,'3',81),(82,'14/03/2024',210,'4',82),(83,'17/03/2024',400,'4',83),(84,'20/03/2024',300,'4',84),(85,'23/03/2024',1000,'4',85),(86,'26/03/2024',200,'4',86),(87,'29/03/2024',250,'1',87),(88,'01/04/2024',210,'4',88),(89,'04/04/2024',400,'4',89),(90,'07/04/2024',300,'3',90),(91,'10/04/2024',1000,'3',91),(92,'13/04/2024',200,'3',92),(93,'16/04/2024',250,'2',93),(94,'19/04/2024',210,'2',94),(95,'22/04/2024',400,'3',95),(96,'25/04/2024',300,'2',96),(97,'28/04/2024',1000,'1',97),(98,'01/05/2024',200,'1',98),(99,'04/05/2024',250,'1',99);
/*!40000 ALTER TABLE `dim_pagamento` ENABLE KEYS */;
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
INSERT INTO `dim_status` VALUES (1,'Orçado'),(2,'Contratado'),(3,'Em andamento'),(4,'Concluido');
/*!40000 ALTER TABLE `dim_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dimtempo`
--

DROP TABLE IF EXISTS `dimtempo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dimtempo` (
  `idDimtempo` int NOT NULL,
  `data` date NOT NULL,
  `ano` int NOT NULL,
  `mes` int NOT NULL,
  `dia` int NOT NULL,
  `bimestre` int NOT NULL,
  `semestre` int NOT NULL,
  `NomeDia` varchar(9) NOT NULL,
  `NomeMes` varchar(9) NOT NULL,
  `FinaldeSemana` char(1) DEFAULT 'F',
  PRIMARY KEY (`idDimtempo`),
  CONSTRAINT `dimtempo_chk_1` CHECK ((`finaldesemana` in (_utf8mb4'T',_utf8mb4'F')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dimtempo`
--

LOCK TABLES `dimtempo` WRITE;
/*!40000 ALTER TABLE `dimtempo` DISABLE KEYS */;
/*!40000 ALTER TABLE `dimtempo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `f_consulta`
--

DROP TABLE IF EXISTS `f_consulta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `f_consulta` (
  `ID_CONSULTA` int NOT NULL,
  `DATA_CONSULTA` text,
  `TIPO_SERVICO` int DEFAULT NULL,
  `Consultorio_id_consultorio` int DEFAULT NULL,
  `Dentista_id_dentista` int DEFAULT NULL,
  `Paciente_id_paciente` int DEFAULT NULL,
  `orcamento_ID_ORCAMENTO` int DEFAULT NULL,
  PRIMARY KEY (`ID_CONSULTA`),
  KEY `fk_consulta_dentista1_idx` (`Dentista_id_dentista`),
  KEY `fk_consulta_paciente1_idx` (`Paciente_id_paciente`),
  KEY `fk_consulta_orcamento1_idx` (`orcamento_ID_ORCAMENTO`),
  CONSTRAINT `fk_consulta_dentista1` FOREIGN KEY (`Dentista_id_dentista`) REFERENCES `dim_dentista` (`ï»¿ID_DENTISTA`),
  CONSTRAINT `fk_consulta_orcamento1` FOREIGN KEY (`orcamento_ID_ORCAMENTO`) REFERENCES `dim_orcamento` (`ID_ORCAMENTO`),
  CONSTRAINT `fk_consulta_paciente1` FOREIGN KEY (`Paciente_id_paciente`) REFERENCES `dim_paciente` (`ï»¿ID_PACIENTE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `f_consulta`
--

LOCK TABLES `f_consulta` WRITE;
/*!40000 ALTER TABLE `f_consulta` DISABLE KEYS */;
INSERT INTO `f_consulta` VALUES (1,'01/01/2024',1,2,1,27,27),(2,'04/01/2024',2,8,2,53,53),(3,'07/01/2024',3,2,1,16,16),(5,'13/01/2024',5,3,9,69,69),(6,'16/01/2024',1,10,4,87,87),(7,'19/01/2024',2,5,1,4,4),(8,'22/01/2024',6,9,6,64,64),(9,'25/01/2024',4,4,8,30,30),(10,'28/01/2024',5,1,9,61,61),(11,'31/01/2024',3,7,10,88,88),(12,'03/02/2024',6,3,6,49,49),(13,'06/02/2024',1,6,9,20,20),(14,'09/02/2024',4,8,3,81,81),(15,'12/02/2024',2,2,10,46,46),(16,'15/02/2024',5,10,3,7,7),(17,'18/02/2024',3,4,5,36,36),(18,'21/02/2024',2,9,8,55,55),(20,'27/02/2024',1,5,8,73,73),(21,'01/03/2024',5,7,2,89,89),(22,'04/03/2024',4,2,6,19,19),(23,'07/03/2024',3,5,2,51,51),(24,'10/03/2024',2,4,4,13,13),(25,'13/03/2024',6,1,1,86,86),(26,'16/03/2024',1,7,5,9,9),(27,'19/03/2024',4,6,1,28,28),(28,'22/03/2024',5,8,7,60,60),(29,'25/03/2024',3,3,9,85,85),(30,'28/03/2024',2,10,6,39,39),(31,'31/03/2024',6,9,3,12,12),(32,'03/04/2024',1,2,7,92,92),(33,'06/04/2024',5,7,7,68,68),(34,'09/04/2024',4,9,5,26,26),(35,'12/04/2024',3,1,3,83,83),(36,'15/04/2024',2,5,6,6,6),(37,'18/04/2024',6,3,2,14,14),(38,'21/04/2024',1,8,1,84,84),(39,'24/04/2024',5,6,10,32,32),(40,'27/04/2024',4,10,1,95,95),(41,'30/04/2024',3,4,5,76,76),(42,'03/05/2024',2,2,8,50,50),(43,'06/05/2024',6,6,10,15,15),(44,'09/05/2024',1,3,9,91,91),(45,'12/05/2024',5,8,10,17,17),(46,'15/05/2024',4,5,10,59,59),(47,'18/05/2024',3,7,7,2,2),(48,'21/05/2024',2,9,2,47,47),(49,'24/05/2024',6,1,3,79,79),(50,'27/05/2024',1,4,9,10,10),(52,'02/06/2024',4,5,9,33,33),(53,'05/06/2024',3,2,5,65,65),(54,'08/06/2024',2,4,5,23,23),(55,'11/06/2024',6,9,2,74,74),(56,'14/06/2024',1,6,9,21,21),(57,'17/06/2024',5,1,9,5,5),(58,'02/01/2024',4,8,8,94,94),(59,'05/01/2024',3,3,9,31,31),(60,'08/01/2024',2,7,3,72,72),(61,'11/01/2024',6,10,5,34,34),(62,'14/01/2024',1,2,6,11,11),(63,'17/01/2024',5,5,10,77,77),(64,'20/01/2024',4,7,4,22,22),(65,'23/01/2024',3,3,10,37,37),(66,'26/01/2024',2,9,8,80,80),(67,'29/01/2024',6,6,3,56,56),(68,'01/02/2024',1,8,6,24,24),(69,'04/02/2024',5,4,3,8,8),(70,'07/02/2024',4,1,7,40,40),(71,'10/02/2024',3,10,4,18,18),(72,'13/02/2024',2,2,6,71,71),(73,'16/02/2024',6,8,9,38,38),(75,'22/02/2024',5,5,9,63,63),(76,'25/02/2024',4,3,7,42,42),(77,'28/02/2024',3,9,6,75,75),(78,'02/03/2024',2,7,4,3,3),(79,'05/03/2024',6,6,6,70,70),(80,'08/03/2024',1,4,2,45,45),(81,'11/03/2024',5,10,8,90,90),(82,'14/03/2024',4,2,5,25,25),(83,'17/03/2024',3,7,6,1,1),(84,'20/03/2024',2,4,4,57,57),(85,'23/03/2024',6,6,10,82,82),(86,'26/03/2024',1,3,8,48,48),(87,'29/03/2024',5,9,7,41,41),(88,'01/04/2024',4,5,6,54,54),(89,'04/04/2024',3,8,6,78,78),(90,'07/04/2024',2,1,2,35,35),(91,'10/04/2024',6,2,5,62,62),(92,'13/04/2024',1,6,4,29,29),(93,'16/04/2024',5,3,10,66,66),(94,'19/04/2024',4,8,8,58,58),(95,'22/04/2024',3,7,5,52,52);
/*!40000 ALTER TABLE `f_consulta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-23  0:52:04
