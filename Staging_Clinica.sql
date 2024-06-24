CREATE DATABASE  IF NOT EXISTS `staging_clinica` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `staging_clinica`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: staging_clinica
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
  `ï»¿ID_CONSULTA` int DEFAULT NULL,
  `DATA_CONSULTA` text,
  `TIPO_SERVICO` int DEFAULT NULL,
  `Consultorio_ID_Consultorio` int DEFAULT NULL,
  `Dentista_ID_Dentista` int DEFAULT NULL,
  `Paciente_ID_Paciente` int DEFAULT NULL,
  `orcamento_id_orcamento` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consulta`
--

LOCK TABLES `consulta` WRITE;
/*!40000 ALTER TABLE `consulta` DISABLE KEYS */;
INSERT INTO `consulta` VALUES (1,'01/01/2024',1,2,1,27,27),(2,'04/01/2024',2,8,2,53,53),(3,'07/01/2024',3,2,1,16,16),(4,'10/01/2024',6,6,5,98,98),(5,'13/01/2024',5,3,9,69,69),(6,'16/01/2024',1,10,4,87,87),(7,'19/01/2024',2,5,1,4,4),(8,'22/01/2024',6,9,6,64,64),(9,'25/01/2024',4,4,8,30,30),(10,'28/01/2024',5,1,9,61,61),(11,'31/01/2024',3,7,10,88,88),(12,'03/02/2024',6,3,6,49,49),(13,'06/02/2024',1,6,9,20,20),(14,'09/02/2024',4,8,3,81,81),(15,'12/02/2024',2,2,10,46,46),(16,'15/02/2024',5,10,3,7,7),(17,'18/02/2024',3,4,5,36,36),(18,'21/02/2024',2,9,8,55,55),(19,'24/02/2024',6,1,1,96,96),(20,'27/02/2024',1,5,8,73,73),(21,'01/03/2024',5,7,2,89,89),(22,'04/03/2024',4,2,6,19,19),(23,'07/03/2024',3,5,2,51,51),(24,'10/03/2024',2,4,4,13,13),(25,'13/03/2024',6,1,1,86,86),(26,'16/03/2024',1,7,5,9,9),(27,'19/03/2024',4,6,1,28,28),(28,'22/03/2024',5,8,7,60,60),(29,'25/03/2024',3,3,9,85,85),(30,'28/03/2024',2,10,6,39,39),(31,'31/03/2024',6,9,3,12,12),(32,'03/04/2024',1,2,7,92,92),(33,'06/04/2024',5,7,7,68,68),(34,'09/04/2024',4,9,5,26,26),(35,'12/04/2024',3,1,3,83,83),(36,'15/04/2024',2,5,6,6,6),(37,'18/04/2024',6,3,2,14,14),(38,'21/04/2024',1,8,1,84,84),(39,'24/04/2024',5,6,10,32,32),(40,'27/04/2024',4,10,1,95,95),(41,'30/04/2024',3,4,5,76,76),(42,'03/05/2024',2,2,8,50,50),(43,'06/05/2024',6,6,10,15,15),(44,'09/05/2024',1,3,9,91,91),(45,'12/05/2024',5,8,10,17,17),(46,'15/05/2024',4,5,10,59,59),(47,'18/05/2024',3,7,7,2,2),(48,'21/05/2024',2,9,2,47,47),(49,'24/05/2024',6,1,3,79,79),(50,'27/05/2024',1,4,9,10,10),(51,'30/05/2024',5,10,3,99,99),(52,'02/06/2024',4,5,9,33,33),(53,'05/06/2024',3,2,5,65,65),(54,'08/06/2024',2,4,5,23,23),(55,'11/06/2024',6,9,2,74,74),(56,'14/06/2024',1,6,9,21,21),(57,'17/06/2024',5,1,9,5,5),(58,'02/01/2024',4,8,8,94,94),(59,'05/01/2024',3,3,9,31,31),(60,'08/01/2024',2,7,3,72,72),(61,'11/01/2024',6,10,5,34,34),(62,'14/01/2024',1,2,6,11,11),(63,'17/01/2024',5,5,10,77,77),(64,'20/01/2024',4,7,4,22,22),(65,'23/01/2024',3,3,10,37,37),(66,'26/01/2024',2,9,8,80,80),(67,'29/01/2024',6,6,3,56,56),(68,'01/02/2024',1,8,6,24,24),(69,'04/02/2024',5,4,3,8,8),(70,'07/02/2024',4,1,7,40,40),(71,'10/02/2024',3,10,4,18,18),(72,'13/02/2024',2,2,6,71,71),(73,'16/02/2024',6,8,9,38,38),(74,'19/02/2024',1,1,7,97,97),(75,'22/02/2024',5,5,9,63,63),(76,'25/02/2024',4,3,7,42,42),(77,'28/02/2024',3,9,6,75,75),(78,'02/03/2024',2,7,4,3,3),(79,'05/03/2024',6,6,6,70,70),(80,'08/03/2024',1,4,2,45,45),(81,'11/03/2024',5,10,8,90,90),(82,'14/03/2024',4,2,5,25,25),(83,'17/03/2024',3,7,6,1,1),(84,'20/03/2024',2,4,4,57,57),(85,'23/03/2024',6,6,10,82,82),(86,'26/03/2024',1,3,8,48,48),(87,'29/03/2024',5,9,7,41,41),(88,'01/04/2024',4,5,6,54,54),(89,'04/04/2024',3,8,6,78,78),(90,'07/04/2024',2,1,2,35,35),(91,'10/04/2024',6,2,5,62,62),(92,'13/04/2024',1,6,4,29,29),(93,'16/04/2024',5,3,10,66,66),(94,'19/04/2024',4,8,8,58,58),(95,'22/04/2024',3,7,5,52,52);
/*!40000 ALTER TABLE `consulta` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `orcamento`
--

DROP TABLE IF EXISTS `orcamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orcamento` (
  `ï»¿ID_ORCAMENTO` int DEFAULT NULL,
  `DATA_ORCAMENTO` text,
  `DESCRICAO` text,
  `VALOR` int DEFAULT NULL,
  `STATUS` int DEFAULT NULL,
  `Paciente_ID_Paciente` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orcamento`
--

LOCK TABLES `orcamento` WRITE;
/*!40000 ALTER TABLE `orcamento` DISABLE KEYS */;
INSERT INTO `orcamento` VALUES (1,'01/01/2024',' Limpeza realizada',200,1,27),(2,'04/01/2024',' Protese instalada',300,4,53),(3,'07/01/2024',' Limpeza concluida',400,4,16),(4,'10/01/2024',' Protese sendo criada',1000,3,98),(5,'13/01/2024',' Fluor aplicado',250,4,69),(6,'16/01/2024',' Tartaro removido',200,1,87),(7,'19/01/2024',' Tratamento de gengivite concluido',300,1,4),(8,'22/01/2024',' Fluor aplicado',1000,4,64),(9,'25/01/2024',' Tratamento de gengivite',210,2,30),(10,'28/01/2024',' Carie retirada',250,4,61),(11,'31/01/2024','Finalizado com sucesso',400,3,88),(12,'03/02/2024','Finalizado com sucesso',1000,1,49),(13,'06/02/2024','Finalizado com sucesso',200,3,20),(14,'09/02/2024','Finalizado com sucesso',210,1,81),(15,'12/02/2024','Finalizado com sucesso',300,2,46),(16,'15/02/2024','Finalizado com sucesso',250,3,7),(17,'18/02/2024','Finalizado com sucesso',400,3,36),(18,'21/02/2024','Finalizado com sucesso',300,1,55),(19,'24/02/2024','Finalizado com sucesso',1000,4,96),(20,'27/02/2024','Finalizado com sucesso',200,1,73),(21,'01/03/2024','Finalizado com sucesso',250,4,89),(22,'04/03/2024','Finalizado com sucesso',210,3,19),(23,'07/03/2024','Finalizado com sucesso',400,4,51),(24,'10/03/2024','Finalizado com sucesso',300,2,13),(25,'13/03/2024','Finalizado com sucesso',1000,1,86),(26,'16/03/2024','Finalizado com sucesso',200,2,9),(27,'19/03/2024','Finalizado com sucesso',210,1,28),(28,'22/03/2024','Finalizado com sucesso',250,2,60),(29,'25/03/2024','Finalizado com sucesso',400,3,85),(30,'28/03/2024','Finalizado com sucesso',300,4,39),(31,'31/03/2024','Finalizado com sucesso',1000,1,12),(32,'03/04/2024','Finalizado com sucesso',200,1,92),(33,'06/04/2024','Finalizado com sucesso',250,3,68),(34,'09/04/2024','Finalizado com sucesso',210,4,26),(35,'12/04/2024','Finalizado com sucesso',400,1,83),(36,'15/04/2024','Finalizado com sucesso',300,4,6),(37,'18/04/2024','Finalizado com sucesso',1000,3,14),(38,'21/04/2024','Finalizado com sucesso',200,4,84),(39,'24/04/2024','Finalizado com sucesso',250,2,32),(40,'27/04/2024','Finalizado com sucesso',210,3,95),(41,'30/04/2024','Finalizado com sucesso',400,1,76),(42,'03/05/2024','Finalizado com sucesso',300,2,50),(43,'06/05/2024','Finalizado com sucesso',1000,1,15),(44,'09/05/2024','Finalizado com sucesso',200,2,91),(45,'12/05/2024','Finalizado com sucesso',250,1,17),(46,'15/05/2024','Finalizado com sucesso',210,2,59),(47,'18/05/2024','Finalizado com sucesso',400,3,2),(48,'21/05/2024','Finalizado com sucesso',300,2,47),(49,'24/05/2024','Finalizado com sucesso',1000,2,79),(50,'27/05/2024','Finalizado com sucesso',200,1,10),(51,'30/05/2024','Finalizado com sucesso',250,4,99),(52,'02/06/2024','Finalizado com sucesso',210,4,33),(53,'05/06/2024','Finalizado com sucesso',400,4,65),(54,'08/06/2024','Finalizado com sucesso',300,4,23),(55,'11/06/2024','Finalizado com sucesso',1000,2,74),(56,'14/06/2024','Finalizado com sucesso',200,3,21),(57,'17/06/2024','Finalizado com sucesso',250,4,5),(58,'02/01/2024','Finalizado com sucesso',210,4,94),(59,'05/01/2024','Finalizado com sucesso',400,1,31),(60,'08/01/2024','Finalizado com sucesso',300,4,72),(61,'11/01/2024','Finalizado com sucesso',1000,1,34),(62,'14/01/2024','Finalizado com sucesso',200,4,11),(63,'17/01/2024','Finalizado com sucesso',250,1,77),(64,'20/01/2024','Finalizado com sucesso',210,3,22),(65,'23/01/2024','Finalizado com sucesso',400,1,37),(66,'26/01/2024','Finalizado com sucesso',300,3,80),(67,'29/01/2024','Finalizado com sucesso',1000,3,56),(68,'01/02/2024','Finalizado com sucesso',200,4,24),(69,'04/02/2024','Finalizado com sucesso',250,2,8),(70,'07/02/2024','Finalizado com sucesso',210,4,40),(71,'10/02/2024','Finalizado com sucesso',400,1,18),(72,'13/02/2024','Finalizado com sucesso',300,1,71),(73,'16/02/2024','Finalizado com sucesso',1000,4,38),(74,'19/02/2024','Finalizado com sucesso',200,1,97),(75,'22/02/2024','Finalizado com sucesso',250,4,63),(76,'25/02/2024','Finalizado com sucesso',210,2,42),(77,'28/02/2024','Finalizado com sucesso',400,4,75),(78,'02/03/2024','Finalizado com sucesso',300,3,3),(79,'05/03/2024','Finalizado com sucesso',1000,2,70),(80,'08/03/2024','Finalizado com sucesso',200,1,45),(81,'11/03/2024','Finalizado com sucesso',250,1,90),(82,'14/03/2024','Finalizado com sucesso',210,3,25),(83,'17/03/2024','Finalizado com sucesso',400,1,1),(84,'20/03/2024','Finalizado com sucesso',300,4,57),(85,'23/03/2024','Finalizado com sucesso',1000,3,82),(86,'26/03/2024','Finalizado com sucesso',200,1,48),(87,'29/03/2024','Finalizado com sucesso',250,4,41),(88,'01/04/2024','Finalizado com sucesso',210,3,54),(89,'04/04/2024','Finalizado com sucesso',400,2,78),(90,'07/04/2024','Finalizado com sucesso',300,2,35),(91,'10/04/2024','Finalizado com sucesso',1000,1,62),(92,'13/04/2024','Finalizado com sucesso',200,4,29),(93,'16/04/2024','Finalizado com sucesso',250,2,66),(94,'19/04/2024','Finalizado com sucesso',210,4,58),(95,'22/04/2024','Finalizado com sucesso',400,3,52),(96,'25/04/2024','Finalizado com sucesso',300,3,43),(97,'28/04/2024','Finalizado com sucesso',1000,2,67),(98,'01/05/2024','Finalizado com sucesso',200,4,93),(99,'04/05/2024','Finalizado com sucesso',250,4,44);
/*!40000 ALTER TABLE `orcamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paciente`
--

DROP TABLE IF EXISTS `paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paciente` (
  `ID_PACIENTE` int DEFAULT NULL,
  `Nome` text,
  `DATA_NASCIMENTO` text,
  `GENERO` int DEFAULT NULL,
  `ENDERECO` text,
  `UF` text,
  `CEP` int DEFAULT NULL,
  `TELEFONE` int DEFAULT NULL,
  `Email` text,
  `CIDADE` text,
  `CPF` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paciente`
--

LOCK TABLES `paciente` WRITE;
/*!40000 ALTER TABLE `paciente` DISABLE KEYS */;
INSERT INTO `paciente` VALUES (1,'Miguel Silva','01/05/1984',1,'Rua das Flores, 123','SP',1000000,987654321,'miguel.silva@email.com','São Paulo',45678901234),(2,'Ana Santos','18/09/1965',2,'Avenida dos Pássaros, 456','SP',2000000,923456789,'ana.santos@email.com','São Paulo',98765432109),(3,'Gustavo Oliveira','23/11/1977',1,'Travessa das Águas, 789','SP',3000000,876543210,'gustavo.oliveira@email.com','São Paulo',12345678901),(4,'Marina Souza','07/12/1970',2,'Alameda das Estrelas, 101','SP',4000000,912345678,'marina.souza@email.com','São Paulo',89012345678),(5,'Leonardo Pereira','14/02/1975',1,'Praça das Artes, 234','SP',5000000,890123456,'leonardo.pereira@email.com','São Paulo',56789012345),(6,'Beatriz Costa','30/10/1962',2,'Rua das Pedras, 567','SP',6000000,865432109,'beatriz.costa@email.com','São Paulo',23456789012),(7,'Rafael Martins','05/07/1992',1,'Avenida das Rosas, 789','SP',7000000,834567890,'rafael.martins@email.com','São Paulo',90123456789),(8,'Larissa Almeida','12/08/1964',2,'Travessa das Oliveiras, 111','SP',8000000,856789012,'larissa.almeida@email.com','São Paulo',34567890123),(9,'Matheus Ferreira','19/06/1988',1,'Alameda dos Ipês, 222','SP',9000000,812345678,'matheus.ferreira@email.com','São Paulo',67890123456),(10,'Amanda Carvalho','25/03/1973',2,'Praça das Árvores, 333','SP',10000000,878901234,'amanda.carvalho@email.com','São Paulo',1234567890),(11,'Gabriel Rodrigues','11/04/1979',1,'Rua dos Girassóis, 444','DF',11000000,801234567,'gabriel.rodrigues@email.com','Distrito Federal',89012345670),(12,'Juliana Nunes','09/01/1978',2,'Avenida das Bromélias, 555','DF',12000000,843210987,'juliana.nunes@email.com','Distrito Federal',45678901235),(13,'Lucas Lima','27/06/1971',1,'Travessa das Orquídeas, 666','SP',13000000,856789012,'lucas.lima@email.com','São Paulo',56789012340),(14,'Fernanda Gomes','03/09/1969',2,'Alameda das Acácias, 777','SP',14000000,823456789,'fernanda.gomes@email.com','São Paulo',67890123459),(15,'Daniel Barbosa','22/11/1983',1,'Praça das Palmeiras, 888','DF',15000000,890123456,'daniel.barbosa@email.com','Distrito Federal',78901234506),(16,'Isabela Ribeiro','10/10/1985',2,'Rua das Violetas, 999','DF',16000000,856789012,'isabela.ribeiro@email.com','Distrito Federal',89012345012),(17,'Thiago Rocha','21/07/1974',1,'Avenida das Hortênsias, 1010','SP',17000000,834567890,'thiago.rocha@email.com','São Paulo',12345678903),(18,'Camila Barbosa','28/12/1963',2,'Travessa das Tulipas, 1111','SP',18000000,856789012,'camila.barbosa@email.com','São Paulo',23456789014),(19,'João Oliveira','15/01/1967',1,'Alameda das Magnólias, 1212','SP',19000000,890123456,'joao.oliveira@email.com','São Paulo',34567890125),(20,'Letícia Santos','31/08/1961',2,'Praça das Dálias, 1313','DF',20000000,843210987,'leticia.santos@email.com','Distrito Federal',45678901236),(21,'André Pereira','02/05/1976',1,'Rua das Begônias, 1414','DF',21000000,865432109,'andre.pereira@email.com','Distrito Federal',56789012347),(22,'Carolina Silva','20/04/1980',2,'Avenida das Laranjeiras, 1515','SP',22000000,801234567,'carolina.silva@email.com','São Paulo',67890123458),(23,'Bruno Costa','06/02/1982',1,'Travessa das Margaridas, 1616','SP',23000000,834567890,'bruno.costa@email.com','São Paulo',78901234569),(24,'Gabriela Martins','24/11/1981',2,'Alameda das Azaleias, 1717','SP',24000000,878901234,'gabriela.martins@email.com','São Paulo',89012345670),(25,'Pedro Almeida','17/03/1972',1,'Praça das Bromélias, 1818','DF',25000000,812345678,'pedro.almeida@email.com','Distrito Federal',90123456781),(26,'Mariana Fernandes','29/09/1968',2,'Rua das Begônias, 1919','SP',26000000,865432109,'mariana.fernandes@email.com','São Paulo',1234567892),(27,'Matias Carvalho','16/12/1966',1,'Avenida das Orquídeas, 2020','DF',27000000,856789012,'matias.carvalho@email.com','Distrito Federal',12345678903),(28,'Luiza Rodrigues','08/07/1990',2,'Travessa das Violetas, 2121','SP',28000000,823456789,'luiza.rodrigues@email.com','São Paulo',23456789014),(29,'Diego Gomes','04/06/1986',1,'Alameda das Palmeiras, 2222','DF',29000000,856789012,'diego.gomes@email.com','Distrito Federal',34567890125),(30,'Manuela Costa','13/08/1979',2,'Praça das Mangueiras, 2323','DF',30000000,843210987,'manuela.costa@email.com','Distrito Federal',45678901236),(31,'Lucas Ferreira','26/01/1987',1,'Rua das Acácias, 2424','DF',31000000,878901234,'lucas.ferreira@email.com','Distrito Federal',56789012347),(32,'Ana Laura Carvalho','23/09/1976',2,'Avenida das Rosas, 2525','SP',32000000,834567890,'analaura.carvalho@email.com','São Paulo',67890123458),(33,'Joaquim Nunes','09/05/1971',1,'Travessa dos Ipês, 2626','SP',33000000,856789012,'joaquim.nunes@email.com','São Paulo',78901234569),(34,'Vitória Gomes','14/10/1978',2,'Alameda dos Lírios, 2727','DF',34000000,801234567,'vitoria.gomes@email.com','Distrito Federal',89012345670),(35,'Rafael Lima','18/04/1975',1,'Praça das Azaleias, 2828','SP',35000000,856789012,'rafael.lima@email.com','São Paulo',90123456781),(36,'Clara Ribeiro','01/11/1984',2,'Rua das Magnólias, 2929','SP',36000000,890123456,'clara.ribeiro@email.com','São Paulo',1234567892),(37,'Samuel Rocha','19/02/1988',1,'Avenida das Tulipas, 3030','SP',37000000,865432109,'samuel.rocha@email.com','São Paulo',12345678903),(38,'Bruna Barbosa','05/03/1964',2,'Travessa das Dálias, 3131','SP',38000000,856789012,'bruna.barbosa@email.com','São Paulo',23456789014),(39,'Eduardo Oliveira','12/07/1962',1,'Alameda das Begônias, 3232','SP',39000000,812345678,'eduardo.oliveira@email.com','São Paulo',34567890125),(40,'Mariana Santos','27/08/1977',2,'Praça das Violetas, 3333','DF',40000000,843210987,'mariana.santos@email.com','Distrito Federal',45678901236),(41,'Gustavo Silva','10/06/1992',1,'Rua das Orquídeas, 3434','DF',41000000,856789012,'gustavo.silva@email.com','Distrito Federal',56789012347),(42,'Valentina Costa','30/03/1985',2,'Avenida das Margaridas, 3535','DF',42000000,834567890,'valentina.costa@email.com','Distrito Federal',67890123458),(43,'Carlos Martins','21/05/1973',1,'Travessa das Azaleias, 3636','DF',43000000,856789012,'carlos.martins@email.com','Distrito Federal',78901234569),(44,'Laura Almeida','08/09/1983',2,'Alameda dos Girassóis, 3737','SP',44000000,890123456,'laura.almeida@email.com','São Paulo',89012345670),(45,'Henrique Ferreira','03/12/1965',1,'Praça das Laranjeiras, 3838','SP',45000000,801234567,'henrique.ferreira@email.com','São Paulo',90123456781),(46,'Fernanda Carvalho','15/11/1969',2,'Rua das Bromélias, 3939','SP',46000000,856789012,'fernanda.carvalho@email.com','São Paulo',1234567892),(47,'José Rodrigues','07/01/1970',1,'Avenida das Tulipas, 4040','DF',47000000,878901234,'jose.rodrigues@email.com','Distrito Federal',12345678903),(48,'Sofia Ribeiro','25/10/1989',2,'Travessa dos Ipês, 4141','DF',48000000,823456789,'sofia.ribeiro@email.com','Distrito Federal',23456789014),(49,'Lucas Pereira','20/06/1981',1,'Alameda das Magnólias, 4242','DF',49000000,865432109,'lucas.pereira@email.com','Distrito Federal',34567890125),(50,'Isabela Gomes','11/12/1974',2,'Praça das Acácias, 4343','DF',50000000,812345678,'isabela.gomes@email.com','Distrito Federal',45678901236),(51,'Miguel Oliveira','28/04/1982',1,'Rua das Rosas, 4444','DF',51000000,856789012,'miguel.oliveira@email.com','Distrito Federal',56789012347),(52,'Beatriz Martins','26/02/1968',2,'Avenida dos Lírios, 4545','DF',52000000,843210987,'beatriz.martins@email.com','Distrito Federal',67890123458),(53,'Rafael Souza','17/07/1980',1,'Travessa das Palmeiras, 4646','DF',53000000,834567890,'rafael.souza@email.com','Distrito Federal',78901234569),(54,'Larissa Costa','02/09/1972',2,'Alameda das Begônias, 4747','DF',54000000,890123456,'larissa.costa@email.com','Distrito Federal',89012345670),(55,'Matheus Almeida','16/03/1961',1,'Praça das Orquídeas, 4848','SP',55000000,856789012,'matheus.almeida@email.com','São Paulo',90123456781),(56,'Amanda Fernandes','22/08/1986',2,'Rua das Azaleias, 4949','DF',56000000,801234567,'amanda.fernandes@email.com','Distrito Federal',1234567892),(57,'Gabriel Barbosa','29/01/1976',1,'Avenida dos Girassóis, 5050','SP',57000000,856789012,'gabriel.barbosa@email.com','São Paulo',12345678903),(58,'Juliana Lima','06/11/1967',2,'Travessa das Laranjeiras, 5151','DF',58000000,865432109,'juliana.lima@email.com','Distrito Federal',23456789014),(59,'Leonardo Ribeiro','24/07/1991',1,'Alameda das Mangueiras, 5252','DF',59000000,878901234,'leonardo.ribeiro@email.com','Distrito Federal',34567890125),(60,'Camila Rocha','13/05/1993',2,'Praça das Bromélias, 5353','DF',60000000,823456789,'camila.rocha@email.com','Distrito Federal',45678901236),(61,'João Gomes','04/04/1963',1,'Rua das Dálias, 5454','SP',61000000,843210987,'joao.gomes@email.com','São Paulo',56789012347),(62,'Letícia Barbosa','18/12/1960',2,'Avenida das Violetas, 5555','SP',62000000,812345678,'leticia.barbosa@email.com','São Paulo',67890123458),(63,'André Ferreira','09/02/1978',1,'Travessa das Acácias, 5656','SP',63000000,856789012,'andre.ferreira@email.com','São Paulo',78901234569),(64,'Carolina Carvalho','05/01/1971',2,'Alameda dos Crisântemos, 5757','DF',64000000,890123456,'carolina.carvalho@email.com','Distrito Federal',89012345670),(65,'Bruno Nunes','01/10/1987',1,'Praça das Margaridas, 5858','DF',65000000,801234567,'bruno.nunes@email.com','Distrito Federal',90123456781),(66,'Gabriela Gomes','21/08/1984',2,'Rua das Tulipas, 5959','SP',66000000,834567890,'gabriela.gomes@email.com','São Paulo',1234567892),(67,'Pedro Lima','14/06/1990',1,'Avenida das Lírios, 6060','SP',67000000,856789012,'pedro.lima@email.com','São Paulo',12345678903),(68,'Mariana Ribeiro','03/03/1989',2,'Travessa das Rosas, 6161','DF',68000000,865432109,'mariana.ribeiro@email.com','Distrito Federal',23456789014),(69,'Matias Rocha','10/09/1976',1,'Alameda das Magnólias, 6262','DF',69000000,878901234,'matias.rocha@email.com','Distrito Federal',34567890125),(70,'Luiza Barbosa','27/04/1964',2,'Praça das Orquídeas, 6363','DF',70000000,823456789,'luiza.barbosa@email.com','Distrito Federal',45678901236),(71,'Diego Oliveira','19/11/1982',1,'Rua das Azaleias, 6464','DF',71000000,856789012,'diego.oliveira@email.com','Distrito Federal',56789012347),(72,'Manuela Almeida','08/07/1973',2,'Avenida dos Ipês, 6565','SP',72000000,843210987,'manuela.almeida@email.com','São Paulo',67890123458),(73,'Lucas Costa','16/05/1975',1,'Travessa das Magnólias, 6666','DF',73000000,801234567,'lucas.costa@email.com','Distrito Federal',78901234569),(74,'Ana Laura Martins','30/01/1980',2,'Alameda das Orquídeas, 6767','DF',74000000,890123456,'analaura.martins@email.com','Distrito Federal',89012345670),(75,'Joaquim Santos','12/12/1966',1,'Praça dos Girassóis, 6868','SP',75000000,856789012,'joaquim.santos@email.com','São Paulo',90123456781),(76,'Vitória Ferreira','25/08/1977',2,'Rua das Laranjeiras, 6969','DF',76000000,834567890,'vitoria.ferreira@email.com','Distrito Federal',1234567892),(77,'Rafael Carvalho','07/02/1992',1,'Avenida das Acácias, 7070','DF',77000000,865432109,'rafael.carvalho@email.com','Distrito Federal',12345678903),(78,'Clara Fernandes','15/09/1968',2,'Travessa dos Crisântemos, 7171','DF',78000000,856789012,'clara.fernandes@email.com','Distrito Federal',23456789014),(79,'Samuel Barbosa','28/10/1983',1,'Alameda das Margaridas, 7272','DF',79000000,878901234,'samuel.barbosa@email.com','Distrito Federal',34567890125),(80,'Bruna Lima','11/06/1985',2,'Praça das Tulipas, 7373','DF',80000000,812345678,'bruna.lima@email.com','Distrito Federal',45678901236),(81,'Eduardo Ribeiro','22/04/1979',1,'Rua das Violetas, 7474','DF',81000000,856789012,'eduardo.ribeiro@email.com','Distrito Federal',56789012347),(82,'Mariana Rocha','06/03/1962',2,'Avenida das Lírios, 7575','SP',82000000,843210987,'mariana.rocha@email.com','São Paulo',67890123458),(83,'Gustavo Gomes','23/12/1961',1,'Travessa das Rosas, 7676','DF',83000000,890123456,'gustavo.gomes@email.com','Distrito Federal',78901234569),(84,'Valentina Barbosa','20/11/1981',2,'Alameda dos Crisântemos, 7777','SP',84000000,801234567,'valentina.barbosa@email.com','São Paulo',89012345670),(85,'Carlos Ferreira','02/08/1990',1,'Praça das Magnólias, 7878','DF',85000000,856789012,'carlos.ferreira@email.com','Distrito Federal',90123456781),(86,'Laura Carvalho','18/09/1974',2,'Rua das Tulipas, 7979','SP',86000000,834567890,'laura.carvalho@email.com','São Paulo',1234567892),(87,'Henrique Nunes','09/05/1963',1,'Avenida das Orquídeas, 8080','DF',87000000,865432109,'henrique.nunes@email.com','Distrito Federal',12345678903),(88,'Fernanda Gomes','01/07/1988',2,'Travessa das Begônias, 8181','DF',88000000,878901234,'fernanda.gomes@email.com','Distrito Federal',23456789014),(89,'José Oliveira','04/04/1969',1,'Alameda dos Girassóis, 8282','SP',89000000,823456789,'jose.oliveira@email.com','São Paulo',34567890125),(90,'Sofia Almeida','17/03/1978',2,'Praça das Azaleias, 8383','DF',90000000,843210987,'sofia.almeida@email.com','Distrito Federal',45678901236),(91,'Lucas Martins','13/01/1986',1,'Rua das Laranjeiras, 8484','SP',91000000,856789012,'lucas.martins@email.com','São Paulo',56789012347),(92,'Isabela Ferreira','29/10/1972',2,'Avenida dos Ipês, 8585','DF',92000000,801234567,'isabela.ferreira@email.com','Distrito Federal',67890123458),(93,'Rafael Carvalho','05/12/1970',1,'Travessa das Violetas, 8686','SP',93000000,890123456,'rafael.carvalho@email.com','São Paulo',78901234569),(94,'Larissa Lima','24/06/1991',2,'Alameda das Acácias, 8787','SP',94000000,856789012,'larissa.lima@email.com','São Paulo',89012345670),(95,'Matheus Ribeiro','14/08/1989',1,'Praça das Dálias, 8888','DF',95000000,834567890,'matheus.ribeiro@email.com','Distrito Federal',90123456781);
/*!40000 ALTER TABLE `paciente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagamento`
--

DROP TABLE IF EXISTS `pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagamento` (
  `ï»¿ID_PAGAMENTO` int DEFAULT NULL,
  `DATA_PAGAMENTO` text,
  `VALOR` int DEFAULT NULL,
  `METODO_PAGAMENTO` int DEFAULT NULL,
  `Orcamento_ID_Orcamento` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagamento`
--

LOCK TABLES `pagamento` WRITE;
/*!40000 ALTER TABLE `pagamento` DISABLE KEYS */;
INSERT INTO `pagamento` VALUES (1,'01/01/2024',200,4,1),(2,'04/01/2024',300,1,2),(3,'07/01/2024',400,3,3),(4,'10/01/2024',1000,3,4),(5,'13/01/2024',250,1,5),(6,'16/01/2024',200,3,6),(7,'19/01/2024',300,3,7),(8,'22/01/2024',1000,1,8),(9,'25/01/2024',210,3,9),(10,'28/01/2024',250,1,10),(11,'31/01/2024',400,4,11),(12,'03/02/2024',1000,3,12),(13,'06/02/2024',200,2,13),(14,'09/02/2024',210,1,14),(15,'12/02/2024',300,3,15),(16,'15/02/2024',250,4,16),(17,'18/02/2024',400,3,17),(18,'21/02/2024',300,4,18),(19,'24/02/2024',1000,3,19),(20,'27/02/2024',200,3,20),(21,'01/03/2024',250,2,21),(22,'04/03/2024',210,1,22),(23,'07/03/2024',400,4,23),(24,'10/03/2024',300,3,24),(25,'13/03/2024',1000,3,25),(26,'16/03/2024',200,4,26),(27,'19/03/2024',210,2,27),(28,'22/03/2024',250,3,28),(29,'25/03/2024',400,1,29),(30,'28/03/2024',300,1,30),(31,'31/03/2024',1000,4,31),(32,'03/04/2024',200,1,32),(33,'06/04/2024',250,2,33),(34,'09/04/2024',210,1,34),(35,'12/04/2024',400,2,35),(36,'15/04/2024',300,4,36),(37,'18/04/2024',1000,4,37),(38,'21/04/2024',200,1,38),(39,'24/04/2024',250,1,39),(40,'27/04/2024',210,2,40),(41,'30/04/2024',400,4,41),(42,'03/05/2024',300,3,42),(43,'06/05/2024',1000,3,43),(44,'09/05/2024',200,3,44),(45,'12/05/2024',250,2,45),(46,'15/05/2024',210,2,46),(47,'18/05/2024',400,3,47),(48,'21/05/2024',300,4,48),(49,'24/05/2024',1000,2,49),(50,'27/05/2024',200,4,50),(51,'30/05/2024',250,3,51),(52,'02/06/2024',210,1,52),(53,'05/06/2024',400,4,53),(54,'08/06/2024',300,3,54),(55,'11/06/2024',1000,2,55),(56,'14/06/2024',200,1,56),(57,'17/06/2024',250,3,57),(58,'02/01/2024',210,1,58),(59,'05/01/2024',400,2,59),(60,'08/01/2024',300,1,60),(61,'11/01/2024',1000,3,61),(62,'14/01/2024',200,2,62),(63,'17/01/2024',250,4,63),(64,'20/01/2024',210,4,64),(65,'23/01/2024',400,3,65),(66,'26/01/2024',300,4,66),(67,'29/01/2024',1000,2,67),(68,'01/02/2024',200,2,68),(69,'04/02/2024',250,2,69),(70,'07/02/2024',210,1,70),(71,'10/02/2024',400,1,71),(72,'13/02/2024',300,1,72),(73,'16/02/2024',1000,4,73),(74,'19/02/2024',200,2,74),(75,'22/02/2024',250,1,75),(76,'25/02/2024',210,4,76),(77,'28/02/2024',400,2,77),(78,'02/03/2024',300,3,78),(79,'05/03/2024',1000,2,79),(80,'08/03/2024',200,3,80),(81,'11/03/2024',250,3,81),(82,'14/03/2024',210,4,82),(83,'17/03/2024',400,4,83),(84,'20/03/2024',300,4,84),(85,'23/03/2024',1000,4,85),(86,'26/03/2024',200,4,86),(87,'29/03/2024',250,1,87),(88,'01/04/2024',210,4,88),(89,'04/04/2024',400,4,89),(90,'07/04/2024',300,3,90),(91,'10/04/2024',1000,3,91),(92,'13/04/2024',200,3,92),(93,'16/04/2024',250,2,93),(94,'19/04/2024',210,2,94),(95,'22/04/2024',400,3,95),(96,'25/04/2024',300,2,96),(97,'28/04/2024',1000,1,97),(98,'01/05/2024',200,1,98),(99,'04/05/2024',250,1,99);
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

-- Dump completed on 2024-06-24  9:17:50
