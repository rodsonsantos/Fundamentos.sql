CREATE DATABASE  IF NOT EXISTS `fundamentos_sql` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `fundamentos_sql`;
-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: fundamentos_sql
-- ------------------------------------------------------
-- Server version	9.1.0

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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nome_cliente` varchar(30) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Carlos Silva','carlos.silva@email.com'),(2,'Mariana Souza','mariana.souza@email.com'),(3,'João Pereira','joao.pereira@email.com'),(4,'Ana Lima',NULL),(5,'Lucas Oliveira','lucas.oliveira@email.com'),(6,'Fernanda Costa',NULL),(7,'Paula Mendes','paula.mendes@email.com'),(8,'Rafael Gomes',NULL);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabela_completa`
--

DROP TABLE IF EXISTS `tabela_completa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tabela_completa` (
  `id_cliente` int NOT NULL,
  `nome_cliente` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `id_venda` int NOT NULL DEFAULT '0',
  `id_produto` int NOT NULL,
  `produto_nome` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `categoria` enum('Roupas','Acessórios','Calçados') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `preco` decimal(6,2) DEFAULT NULL,
  `custo` decimal(6,2) DEFAULT NULL,
  `quantidade` int DEFAULT NULL,
  `data_venda` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabela_completa`
--

LOCK TABLES `tabela_completa` WRITE;
/*!40000 ALTER TABLE `tabela_completa` DISABLE KEYS */;
INSERT INTO `tabela_completa` VALUES (1,'Carlos Silva','carlos.silva@email.com',1,1,'Meia','Roupas',12.98,6.04,2,'2025-01-01'),(2,'Mariana Souza','mariana.souza@email.com',2,2,'Boné','Acessórios',21.45,12.14,2,'2025-01-02'),(3,'João Pereira','joao.pereira@email.com',3,3,'Bermuda','Roupas',101.18,62.18,4,'2025-01-03'),(4,'Ana Lima',NULL,4,4,'Carteira','Acessórios',233.08,107.60,4,'2025-01-04'),(5,'Lucas Oliveira','lucas.oliveira@email.com',5,5,'Bolsa','Acessórios',210.45,120.43,1,'2025-01-05'),(6,'Fernanda Costa',NULL,6,6,'Relógio','Acessórios',250.95,161.24,5,'2025-01-06'),(3,'João Pereira','joao.pereira@email.com',7,3,'Bermuda','Roupas',41.06,22.21,5,'2025-01-07'),(2,'Mariana Souza','mariana.souza@email.com',8,7,'Camiseta','Roupas',40.50,30.08,2,'2025-01-08'),(1,'Carlos Silva','carlos.silva@email.com',9,1,'Meia','Roupas',11.67,5.51,5,'2025-01-09'),(4,'Ana Lima',NULL,10,8,'Cinto','Acessórios',26.29,18.38,2,'2025-01-10'),(5,'Lucas Oliveira','lucas.oliveira@email.com',11,9,'Tênis','Calçados',412.31,188.52,1,'2025-01-11'),(1,'Carlos Silva','carlos.silva@email.com',12,1,'Meia','Roupas',9.87,5.18,4,'2025-01-12'),(6,'Fernanda Costa',NULL,13,5,'Bolsa','Acessórios',367.55,242.79,4,'2025-01-13'),(4,'Ana Lima',NULL,14,5,'Bolsa','Acessórios',382.91,234.77,4,'2025-01-14'),(2,'Mariana Souza','mariana.souza@email.com',15,6,'Relógio','Acessórios',468.89,250.72,5,'2025-01-15'),(3,'João Pereira','joao.pereira@email.com',16,7,'Camiseta','Roupas',42.92,31.07,1,'2025-01-16'),(5,'Lucas Oliveira','lucas.oliveira@email.com',17,2,'Boné','Acessórios',34.74,21.87,5,'2025-01-17'),(6,'Fernanda Costa',NULL,18,6,'Relógio','Acessórios',174.25,130.36,5,'2025-01-18'),(1,'Carlos Silva','carlos.silva@email.com',19,6,'Relógio','Acessórios',457.48,239.54,1,'2025-01-19'),(2,'Mariana Souza','mariana.souza@email.com',20,9,'Tênis','Calçados',215.39,122.32,1,'2025-01-20');
/*!40000 ALTER TABLE `tabela_completa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendas_lojas`
--

DROP TABLE IF EXISTS `vendas_lojas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendas_lojas` (
  `id_venda` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int NOT NULL,
  `id_produto` int NOT NULL,
  `produto_nome` varchar(20) NOT NULL,
  `categoria` enum('Roupas','Acessórios','Calçados') DEFAULT NULL,
  `preco` decimal(6,2) DEFAULT NULL,
  `custo` decimal(6,2) DEFAULT NULL,
  `quantidade` int DEFAULT NULL,
  `data_venda` date DEFAULT NULL,
  `mes` text GENERATED ALWAYS AS (monthname(`data_venda`)) VIRTUAL,
  `Dia` int GENERATED ALWAYS AS (dayofmonth(`data_venda`)) VIRTUAL,
  `Dia_semana` text GENERATED ALWAYS AS (dayname(`data_venda`)) VIRTUAL,
  PRIMARY KEY (`id_venda`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendas_lojas`
--

LOCK TABLES `vendas_lojas` WRITE;
/*!40000 ALTER TABLE `vendas_lojas` DISABLE KEYS */;
INSERT INTO `vendas_lojas` (`id_venda`, `id_cliente`, `id_produto`, `produto_nome`, `categoria`, `preco`, `custo`, `quantidade`, `data_venda`) VALUES (1,1,1,'Meia','Roupas',12.98,6.04,2,'2025-01-01'),(2,2,2,'Boné','Acessórios',21.45,12.14,2,'2025-01-02'),(3,3,3,'Bermuda','Roupas',101.18,62.18,4,'2025-01-03'),(4,4,4,'Carteira','Acessórios',233.08,107.60,4,'2025-01-04'),(5,5,5,'Bolsa','Acessórios',210.45,120.43,1,'2025-01-05'),(6,6,6,'Relógio','Acessórios',250.95,161.24,5,'2025-01-06'),(7,3,3,'Bermuda','Roupas',41.06,22.21,5,'2025-01-07'),(8,2,7,'Camiseta','Roupas',40.50,30.08,2,'2025-01-08'),(9,1,1,'Meia','Roupas',11.67,5.51,5,'2025-01-09'),(10,4,8,'Cinto','Acessórios',26.29,18.38,2,'2025-01-10'),(11,5,9,'Tênis','Calçados',412.31,188.52,1,'2025-01-11'),(12,1,1,'Meia','Roupas',9.87,5.18,4,'2025-01-12'),(13,6,5,'Bolsa','Acessórios',367.55,242.79,4,'2025-01-13'),(14,4,5,'Bolsa','Acessórios',382.91,234.77,4,'2025-01-14'),(15,2,6,'Relógio','Acessórios',468.89,250.72,5,'2025-01-15'),(16,3,7,'Camiseta','Roupas',42.92,31.07,1,'2025-01-16'),(17,5,2,'Boné','Acessórios',34.74,21.87,5,'2025-01-17'),(18,6,6,'Relógio','Acessórios',174.25,130.36,5,'2025-01-18'),(19,1,6,'Relógio','Acessórios',457.48,239.54,1,'2025-01-19'),(20,2,9,'Tênis','Calçados',215.39,122.32,1,'2025-01-20');
/*!40000 ALTER TABLE `vendas_lojas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-06 12:09:11
