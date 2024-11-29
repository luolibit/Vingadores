-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: trabalho
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `autor`
--

DROP TABLE IF EXISTS `autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autor` (
  `id_autor` int NOT NULL AUTO_INCREMENT,
  `nome_autor` varchar(255) DEFAULT NULL,
  `nacionalidade` varchar(45) DEFAULT NULL,
  `data_nascimento` date NOT NULL,
  PRIMARY KEY (`id_autor`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autor`
--

LOCK TABLES `autor` WRITE;
/*!40000 ALTER TABLE `autor` DISABLE KEYS */;
INSERT INTO `autor` VALUES (1,'Monteiro Lobato','Brasileiro','1882-04-18'),(2,'Machado de Assis','Brasileiro','1908-09-29'),(3,'Clarice Lispector','Brasileiro','1920-12-10'),(4,'Guimarães rosa','Brasileiro','1908-06-27'),(5,'Jorge Amado','Brasileiro','1912-08-10');
/*!40000 ALTER TABLE `autor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `autor_genero`
--

DROP TABLE IF EXISTS `autor_genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autor_genero` (
  `id_autor_genero` int NOT NULL AUTO_INCREMENT,
  `id_autor` int NOT NULL,
  `id_genero` int NOT NULL,
  PRIMARY KEY (`id_autor_genero`),
  KEY `id_autor` (`id_autor`),
  KEY `id_genero` (`id_genero`),
  CONSTRAINT `autor_genero_ibfk_1` FOREIGN KEY (`id_autor`) REFERENCES `autor` (`id_autor`),
  CONSTRAINT `autor_genero_ibfk_2` FOREIGN KEY (`id_genero`) REFERENCES `genero` (`id_genero`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autor_genero`
--

LOCK TABLES `autor_genero` WRITE;
/*!40000 ALTER TABLE `autor_genero` DISABLE KEYS */;
INSERT INTO `autor_genero` VALUES (1,1,1),(2,2,6),(3,3,7),(4,3,1),(5,4,6),(6,5,6);
/*!40000 ALTER TABLE `autor_genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `editora`
--

DROP TABLE IF EXISTS `editora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `editora` (
  `id_editora` int NOT NULL AUTO_INCREMENT,
  `nome_editora` varchar(255) DEFAULT NULL,
  `endereco_editora` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_editora`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `editora`
--

LOCK TABLES `editora` WRITE;
/*!40000 ALTER TABLE `editora` DISABLE KEYS */;
INSERT INTO `editora` VALUES (1,'Saraiva','av. Sapopemba, 8134'),(2,'Abril','Praça Carlos Gomes, 42'),(3,'Globo','R. sete de abril, 261'),(4,'Vida','R. Conde de Sardezas, 246'),(5,'Record','R. do Paraiso, 139');
/*!40000 ALTER TABLE `editora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `editora_genero`
--

DROP TABLE IF EXISTS `editora_genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `editora_genero` (
  `id_editora_genero` int NOT NULL AUTO_INCREMENT,
  `id_editora` int NOT NULL,
  `id_genero` int NOT NULL,
  PRIMARY KEY (`id_editora_genero`),
  KEY `id_editora` (`id_editora`),
  KEY `id_genero` (`id_genero`),
  CONSTRAINT `editora_genero_ibfk_1` FOREIGN KEY (`id_editora`) REFERENCES `editora` (`id_editora`),
  CONSTRAINT `editora_genero_ibfk_2` FOREIGN KEY (`id_genero`) REFERENCES `genero` (`id_genero`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `editora_genero`
--

LOCK TABLES `editora_genero` WRITE;
/*!40000 ALTER TABLE `editora_genero` DISABLE KEYS */;
INSERT INTO `editora_genero` VALUES (1,1,1),(2,1,6),(3,2,6),(4,3,6),(5,3,7),(6,4,1),(7,4,3),(8,5,1),(9,5,6);
/*!40000 ALTER TABLE `editora_genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emprestimo`
--

DROP TABLE IF EXISTS `emprestimo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emprestimo` (
  `id_emprestimo` int NOT NULL AUTO_INCREMENT,
  `data_emprestimo` date NOT NULL,
  `id_livro` int NOT NULL,
  `id_leitor` int NOT NULL,
  PRIMARY KEY (`id_emprestimo`),
  KEY `id_livro` (`id_livro`),
  KEY `id_leitor` (`id_leitor`),
  CONSTRAINT `emprestimo_ibfk_1` FOREIGN KEY (`id_livro`) REFERENCES `livro` (`id_livro`),
  CONSTRAINT `emprestimo_ibfk_2` FOREIGN KEY (`id_leitor`) REFERENCES `leitor` (`id_leitor`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emprestimo`
--

LOCK TABLES `emprestimo` WRITE;
/*!40000 ALTER TABLE `emprestimo` DISABLE KEYS */;
INSERT INTO `emprestimo` VALUES (1,'2024-06-21',5,1),(2,'2024-01-27',4,2),(3,'2022-05-22',3,3),(4,'2024-08-15',2,4),(5,'2024-04-22',1,5),(6,'2023-09-21',3,5);
/*!40000 ALTER TABLE `emprestimo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `emprestimo_view`
--

DROP TABLE IF EXISTS `emprestimo_view`;
/*!50001 DROP VIEW IF EXISTS `emprestimo_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `emprestimo_view` AS SELECT 
 1 AS `id_emprestimo`,
 1 AS `nome_leitor`,
 1 AS `nome_livro`,
 1 AS `data_emprestimo`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `genero`
--

DROP TABLE IF EXISTS `genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genero` (
  `id_genero` int NOT NULL AUTO_INCREMENT,
  `nome_genero` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_genero`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
INSERT INTO `genero` VALUES (1,'Drama'),(2,'Suspense'),(3,'Ação'),(4,'Terror'),(5,'Comédia'),(6,'realismo'),(7,'intimismo');
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leitor`
--

DROP TABLE IF EXISTS `leitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leitor` (
  `id_leitor` int NOT NULL AUTO_INCREMENT,
  `nome_leitor` varchar(255) DEFAULT NULL,
  `cpf_leitor` bigint NOT NULL,
  `endereco_leitor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_leitor`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leitor`
--

LOCK TABLES `leitor` WRITE;
/*!40000 ALTER TABLE `leitor` DISABLE KEYS */;
INSERT INTO `leitor` VALUES (1,'Matheus Inouye',1111111111,'av. nazaré 402'),(2,'Bruno Dutra',1111111112,'av. barão de ladario 24'),(3,'Felipe Dorneles',1111111222,'av. carrão 71'),(4,'Guilherme Kenzo',1111111232,'av. sonata aurora 420'),(5,'Gustavo Amorim',1111111233,'av. the goat  01');
/*!40000 ALTER TABLE `leitor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `livro`
--

DROP TABLE IF EXISTS `livro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `livro` (
  `id_livro` int NOT NULL AUTO_INCREMENT,
  `nome_livro` varchar(255) DEFAULT NULL,
  `data_publicacao` date NOT NULL,
  PRIMARY KEY (`id_livro`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livro`
--

LOCK TABLES `livro` WRITE;
/*!40000 ALTER TABLE `livro` DISABLE KEYS */;
INSERT INTO `livro` VALUES (1,'Dom Casmurro','1899-09-21'),(2,'Tieta','1970-08-17'),(3,'O Saci','1921-05-30'),(4,'Covert Joy','1971-08-20'),(5,'Sagaran','1946-03-18');
/*!40000 ALTER TABLE `livro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `livro_autor`
--

DROP TABLE IF EXISTS `livro_autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `livro_autor` (
  `id_livro_autor` int NOT NULL AUTO_INCREMENT,
  `id_livro` int NOT NULL,
  `id_autor` int NOT NULL,
  PRIMARY KEY (`id_livro_autor`),
  KEY `id_livro` (`id_livro`),
  KEY `id_autor` (`id_autor`),
  CONSTRAINT `livro_autor_ibfk_1` FOREIGN KEY (`id_livro`) REFERENCES `livro` (`id_livro`),
  CONSTRAINT `livro_autor_ibfk_2` FOREIGN KEY (`id_autor`) REFERENCES `autor` (`id_autor`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livro_autor`
--

LOCK TABLES `livro_autor` WRITE;
/*!40000 ALTER TABLE `livro_autor` DISABLE KEYS */;
INSERT INTO `livro_autor` VALUES (1,4,3),(2,1,2),(3,5,4),(4,3,1),(5,2,5);
/*!40000 ALTER TABLE `livro_autor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publicacao`
--

DROP TABLE IF EXISTS `publicacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publicacao` (
  `id_publicacao` int NOT NULL AUTO_INCREMENT,
  `id_livro` int NOT NULL,
  `id_editora` int NOT NULL,
  `id_autor` int NOT NULL,
  PRIMARY KEY (`id_publicacao`),
  KEY `id_livro` (`id_livro`),
  KEY `id_editora` (`id_editora`),
  KEY `id_autor` (`id_autor`),
  CONSTRAINT `publicacao_ibfk_1` FOREIGN KEY (`id_livro`) REFERENCES `livro` (`id_livro`),
  CONSTRAINT `publicacao_ibfk_2` FOREIGN KEY (`id_editora`) REFERENCES `editora` (`id_editora`),
  CONSTRAINT `publicacao_ibfk_3` FOREIGN KEY (`id_autor`) REFERENCES `autor` (`id_autor`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publicacao`
--

LOCK TABLES `publicacao` WRITE;
/*!40000 ALTER TABLE `publicacao` DISABLE KEYS */;
INSERT INTO `publicacao` VALUES (1,1,4,2),(2,2,5,5),(3,3,3,1),(4,4,2,3),(5,5,1,4);
/*!40000 ALTER TABLE `publicacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `emprestimo_view`
--

/*!50001 DROP VIEW IF EXISTS `emprestimo_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `emprestimo_view` AS select `emprestimo`.`id_emprestimo` AS `id_emprestimo`,`leitor`.`nome_leitor` AS `nome_leitor`,`livro`.`nome_livro` AS `nome_livro`,`emprestimo`.`data_emprestimo` AS `data_emprestimo` from ((`emprestimo` join `leitor` on((`emprestimo`.`id_leitor` = `leitor`.`id_leitor`))) join `livro` on((`emprestimo`.`id_livro` = `livro`.`id_livro`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-27 16:40:12
