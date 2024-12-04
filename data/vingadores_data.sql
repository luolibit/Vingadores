CREATE DATABASE  IF NOT EXISTS `vingadores` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `vingadores`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: vingadores
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
-- Table structure for table `chip_gps`
--

DROP TABLE IF EXISTS `chip_gps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chip_gps` (
  `id_chip_gps` int NOT NULL AUTO_INCREMENT,
  `localização_atual` varchar(255) NOT NULL,
  `ultima_localização` varchar(255) NOT NULL,
  `id_tornozeleira` int NOT NULL,
  PRIMARY KEY (`id_chip_gps`),
  KEY `fk_id_tornozeleira_idx` (`id_tornozeleira`),
  CONSTRAINT `fk_id_tornozeleira` FOREIGN KEY (`id_tornozeleira`) REFERENCES `tornozeleira` (`id_tornozeleira`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chip_gps`
--

LOCK TABLES `chip_gps` WRITE;
/*!40000 ALTER TABLE `chip_gps` DISABLE KEYS */;
/*!40000 ALTER TABLE `chip_gps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `convocacao`
--

DROP TABLE IF EXISTS `convocacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `convocacao` (
  `id_convocacao` int NOT NULL AUTO_INCREMENT,
  `motivo` text NOT NULL,
  `data_convocacao` datetime NOT NULL,
  `data_comparecimento` datetime DEFAULT NULL,
  `status` enum('Pendente','Comparecido','Ausente') NOT NULL,
  `id_heroi` int NOT NULL,
  PRIMARY KEY (`id_convocacao`),
  KEY `fk_id_heroi_idx` (`id_heroi`),
  CONSTRAINT `fk_id_heroi` FOREIGN KEY (`id_heroi`) REFERENCES `heroi` (`id_heroi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `convocacao`
--

LOCK TABLES `convocacao` WRITE;
/*!40000 ALTER TABLE `convocacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `convocacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fraquezas`
--

DROP TABLE IF EXISTS `fraquezas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fraquezas` (
  `id_fraquezas` int NOT NULL AUTO_INCREMENT,
  `nome_fraquezas` varchar(100) NOT NULL,
  PRIMARY KEY (`id_fraquezas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fraquezas`
--

LOCK TABLES `fraquezas` WRITE;
/*!40000 ALTER TABLE `fraquezas` DISABLE KEYS */;
/*!40000 ALTER TABLE `fraquezas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `habilidade`
--

DROP TABLE IF EXISTS `habilidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `habilidade` (
  `id_habilidade` int NOT NULL AUTO_INCREMENT,
  `nome_habilidade` varchar(100) NOT NULL,
  PRIMARY KEY (`id_habilidade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `habilidade`
--

LOCK TABLES `habilidade` WRITE;
/*!40000 ALTER TABLE `habilidade` DISABLE KEYS */;
/*!40000 ALTER TABLE `habilidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `heroi`
--

DROP TABLE IF EXISTS `heroi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `heroi` (
  `id_heroi` int NOT NULL AUTO_INCREMENT,
  `nome_heroi` varchar(45) DEFAULT NULL,
  `nome_real` varchar(45) DEFAULT NULL,
  `categoria` varchar(45) DEFAULT NULL,
  `poderes` varchar(45) DEFAULT NULL,
  `poder_principal` varchar(45) DEFAULT NULL,
  `fraquezas` varchar(45) DEFAULT NULL,
  `nivel_forca` int DEFAULT NULL,
  PRIMARY KEY (`id_heroi`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `heroi`
--

LOCK TABLES `heroi` WRITE;
/*!40000 ALTER TABLE `heroi` DISABLE KEYS */;
INSERT INTO `heroi` VALUES (1,'Homem de Ferro','Tony Stark','Humano','Soltar raio,voar','Soltar raio','Impostos',10000),(2,'Homem Aranha','Peter Parker','Meta-Humano','Soltar teia,Aderência','Sotar teia','Responsabilidade,Emoções',8000),(3,'Hulk','Bruce Banner','Meta-Humano','Força','Força','Inteligência',10000);
/*!40000 ALTER TABLE `heroi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `heroi_fraquezas`
--

DROP TABLE IF EXISTS `heroi_fraquezas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `heroi_fraquezas` (
  `id_heroi_fraquezas` int NOT NULL AUTO_INCREMENT,
  `id_heroi` int NOT NULL,
  `id_fraquezas` int NOT NULL,
  PRIMARY KEY (`id_heroi_fraquezas`),
  KEY `id_fraquezas_idx` (`id_fraquezas`),
  KEY `fk_id_heroi_her_fra_idx` (`id_heroi`),
  CONSTRAINT `fk_id_fraquezas_her_fra` FOREIGN KEY (`id_fraquezas`) REFERENCES `fraquezas` (`id_fraquezas`),
  CONSTRAINT `fk_id_heroi_her_fra` FOREIGN KEY (`id_heroi`) REFERENCES `heroi` (`id_heroi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `heroi_fraquezas`
--

LOCK TABLES `heroi_fraquezas` WRITE;
/*!40000 ALTER TABLE `heroi_fraquezas` DISABLE KEYS */;
/*!40000 ALTER TABLE `heroi_fraquezas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `heroi_habilidade`
--

DROP TABLE IF EXISTS `heroi_habilidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `heroi_habilidade` (
  `id_heroi_habilidade` int NOT NULL AUTO_INCREMENT,
  `id_heroi` int NOT NULL,
  `id_habilidade` int NOT NULL,
  PRIMARY KEY (`id_heroi_habilidade`),
  CONSTRAINT `fk_id_habilidade_her_hab` FOREIGN KEY (`id_heroi_habilidade`) REFERENCES `habilidade` (`id_habilidade`),
  CONSTRAINT `fk_id_heroi_her_hab` FOREIGN KEY (`id_heroi_habilidade`) REFERENCES `heroi` (`id_heroi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `heroi_habilidade`
--

LOCK TABLES `heroi_habilidade` WRITE;
/*!40000 ALTER TABLE `heroi_habilidade` DISABLE KEYS */;
/*!40000 ALTER TABLE `heroi_habilidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mandado_prisao`
--

DROP TABLE IF EXISTS `mandado_prisao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mandado_prisao` (
  `id_mandado_prisao` int NOT NULL AUTO_INCREMENT,
  `motivo` text NOT NULL,
  `data_emissao` datetime NOT NULL,
  `status` enum('Pendente','Cumprido','Cancelado') NOT NULL,
  `id_heroi` int NOT NULL,
  PRIMARY KEY (`id_mandado_prisao`),
  KEY `fk_heroi_id_idx` (`id_heroi`),
  CONSTRAINT `fk_heroi_id` FOREIGN KEY (`id_heroi`) REFERENCES `heroi` (`id_heroi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mandado_prisao`
--

LOCK TABLES `mandado_prisao` WRITE;
/*!40000 ALTER TABLE `mandado_prisao` DISABLE KEYS */;
/*!40000 ALTER TABLE `mandado_prisao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tornozeleira`
--

DROP TABLE IF EXISTS `tornozeleira`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tornozeleira` (
  `id_tornozeleira` int NOT NULL AUTO_INCREMENT,
  `status` enum('Ativo','Inativo') NOT NULL,
  `data_ativacao` datetime DEFAULT NULL,
  `data_desativação` datetime DEFAULT NULL,
  `id_heroi` int NOT NULL,
  PRIMARY KEY (`id_tornozeleira`),
  KEY `fk_id_heroi_idx` (`id_heroi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tornozeleira`
--

LOCK TABLES `tornozeleira` WRITE;
/*!40000 ALTER TABLE `tornozeleira` DISABLE KEYS */;
/*!40000 ALTER TABLE `tornozeleira` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'vingadores'
--

--
-- Dumping routines for database 'vingadores'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-04 13:49:10
