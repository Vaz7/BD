-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: videomino
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `nif` int NOT NULL,
  `data_nascimento` date NOT NULL,
  `email` varchar(100) NOT NULL,
  `n_telemovel` int NOT NULL,
  `morada` int NOT NULL,
  PRIMARY KEY (`username`),
  KEY `morada` (`morada`),
  CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`morada`) REFERENCES `morada` (`idMorada`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES ('AdelioFernandes','password456','Adelio Fernandes',123512567,'1995-05-10','adelio@gmail.com',987654321,2),('GoncaloGoncalves','password789','Goncalo GonÃ§alves',957638956,'1988-09-15','goncalo@sapo.com',919912341,3),('HenriquePereira','password333','Henrique Pereira',987654321,'2001-12-12','henriquep@gmail.com',916457689,1),('HenriqueVaz','password123','Henrique Vaz',123456789,'2001-05-18','henrique@hotmailcom',910910910,1);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra`
--

DROP TABLE IF EXISTS `compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compra` (
  `idCompra` int NOT NULL AUTO_INCREMENT,
  `data` date NOT NULL,
  `n_artigos` int NOT NULL,
  `preco_total` decimal(7,2) NOT NULL,
  `idFornecedor` int NOT NULL,
  PRIMARY KEY (`idCompra`),
  KEY `idFornecedor` (`idFornecedor`),
  CONSTRAINT `compra_ibfk_1` FOREIGN KEY (`idFornecedor`) REFERENCES `fornecedor` (`idFornecedor`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra`
--

LOCK TABLES `compra` WRITE;
/*!40000 ALTER TABLE `compra` DISABLE KEYS */;
INSERT INTO `compra` VALUES (1,'2023-05-18',5,125.50,1),(2,'2023-05-19',10,250.00,2),(3,'2023-05-20',3,75.99,3);
/*!40000 ALTER TABLE `compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra_filme`
--

DROP TABLE IF EXISTS `compra_filme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compra_filme` (
  `id_compra` int NOT NULL,
  `id_filme` int NOT NULL,
  `quantidade` int NOT NULL,
  PRIMARY KEY (`id_compra`,`id_filme`),
  KEY `id_filme` (`id_filme`),
  CONSTRAINT `compra_filme_ibfk_1` FOREIGN KEY (`id_compra`) REFERENCES `compra` (`idCompra`),
  CONSTRAINT `compra_filme_ibfk_2` FOREIGN KEY (`id_filme`) REFERENCES `filme` (`idFilme`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra_filme`
--

LOCK TABLES `compra_filme` WRITE;
/*!40000 ALTER TABLE `compra_filme` DISABLE KEYS */;
INSERT INTO `compra_filme` VALUES (1,3,1),(2,2,2),(3,1,3);
/*!40000 ALTER TABLE `compra_filme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filme`
--

DROP TABLE IF EXISTS `filme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filme` (
  `idFilme` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `data` date NOT NULL,
  `restricao_idade` int NOT NULL,
  `genero` varchar(25) NOT NULL,
  `galarduacoes` text,
  `sinopse` text NOT NULL,
  `stock` int NOT NULL,
  `preco` decimal(7,2) NOT NULL,
  PRIMARY KEY (`idFilme`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filme`
--

LOCK TABLES `filme` WRITE;
/*!40000 ALTER TABLE `filme` DISABLE KEYS */;
INSERT INTO `filme` VALUES (1,'The Shawshank Redemption','1994-10-14',16,'Drama','9.3/10, 94%','Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.',10,9.99),(2,'The Godfather','1972-03-24',16,'Crime','9.2/10, 98%','The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.',5,9.99),(3,'Pulp Fiction','1994-10-14',18,'Crime','8.9/10, 94%','The lives of two mob hitmen, a boxer, a gangster\'s wife, and a pair of diner bandits intertwine in four tales of violence and redemption.',15,9.99);
/*!40000 ALTER TABLE `filme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedor`
--

DROP TABLE IF EXISTS `fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fornecedor` (
  `idFornecedor` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `nif` int NOT NULL,
  `iban` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`idFornecedor`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedor`
--

LOCK TABLES `fornecedor` WRITE;
/*!40000 ALTER TABLE `fornecedor` DISABLE KEYS */;
INSERT INTO `fornecedor` VALUES (1,'Joaquim Alberto',123456789,'PT123456789','quim@gmail.com'),(2,'Carlos Pereira',987654321,'PT987654321','pereira@sapo.com'),(3,'Armindo Araujo',654321987,'PT654321987','mindo@gmail.com');
/*!40000 ALTER TABLE `fornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionário`
--

DROP TABLE IF EXISTS `funcionário`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionário` (
  `idFuncionário` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `data_nascimento` date NOT NULL,
  `iban` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL,
  `n_telemovel` int NOT NULL,
  `morada` int NOT NULL,
  PRIMARY KEY (`idFuncionário`),
  KEY `morada` (`morada`),
  CONSTRAINT `funcionário_ibfk_1` FOREIGN KEY (`morada`) REFERENCES `morada` (`idMorada`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionário`
--

LOCK TABLES `funcionário` WRITE;
/*!40000 ALTER TABLE `funcionário` DISABLE KEYS */;
INSERT INTO `funcionário` VALUES (1,'Joquim Albero','1980-05-10','GB12ABCD56789012345678','johndoe@example.com',91994125,1),(2,'Nelo Pereira','1985-12-15','US34EFGH90123456789012','janesmith@example.com',987654365,2),(3,'Joaquim Augusto','1992-07-20','CA56IJKL34567890123456','michaeljohnson@example.com',12345316,3);
/*!40000 ALTER TABLE `funcionário` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `morada`
--

DROP TABLE IF EXISTS `morada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `morada` (
  `idMorada` int NOT NULL AUTO_INCREMENT,
  `rua` varchar(100) NOT NULL,
  `num_porta` int NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `codigo_postal` varchar(10) NOT NULL,
  PRIMARY KEY (`idMorada`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `morada`
--

LOCK TABLES `morada` WRITE;
/*!40000 ALTER TABLE `morada` DISABLE KEYS */;
INSERT INTO `morada` VALUES (1,'Rua do Carmo',25,'Lisboa','1200-090'),(2,'Rua da ConstituiÃ§Ã£o',500,'Porto','4200-195'),(3,'Avenida da Liberdade',100,'Lisboa','1250-096');
/*!40000 ALTER TABLE `morada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `idReview` int NOT NULL AUTO_INCREMENT,
  `rating` int NOT NULL,
  `comentario` text NOT NULL,
  `id_filme` int NOT NULL,
  PRIMARY KEY (`idReview`),
  KEY `id_filme` (`id_filme`),
  CONSTRAINT `review_ibfk_1` FOREIGN KEY (`id_filme`) REFERENCES `filme` (`idFilme`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,8,'Great movie! Highly recommended.',2),(2,7,'Decent film, but could have been better.',1),(3,9,'Absolutely loved it. A must-watch!',3);
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venda`
--

DROP TABLE IF EXISTS `venda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venda` (
  `idVenda` int NOT NULL AUTO_INCREMENT,
  `idCliente` varchar(20) NOT NULL,
  `idFuncionário` int NOT NULL,
  `n_artigos` int NOT NULL,
  `preco_final` decimal(7,2) NOT NULL,
  `metodo` tinyint NOT NULL,
  `autenticidade` tinyint NOT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`idVenda`),
  KEY `idCliente` (`idCliente`),
  KEY `idFuncionário` (`idFuncionário`),
  CONSTRAINT `venda_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`username`),
  CONSTRAINT `venda_ibfk_2` FOREIGN KEY (`idFuncionário`) REFERENCES `funcionário` (`idFuncionário`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venda`
--

LOCK TABLES `venda` WRITE;
/*!40000 ALTER TABLE `venda` DISABLE KEYS */;
INSERT INTO `venda` VALUES (1,'HenriqueVaz',1,3,25.50,1,1,'2023-01-01'),(2,'GoncaloGoncalves',2,2,15.00,2,0,'2023-01-02'),(3,'HenriquePereira',1,1,9.99,1,1,'2023-01-03');
/*!40000 ALTER TABLE `venda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venda_filme`
--

DROP TABLE IF EXISTS `venda_filme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venda_filme` (
  `id_venda` int NOT NULL,
  `id_filme` int NOT NULL,
  `quantidade` int NOT NULL,
  PRIMARY KEY (`id_venda`,`id_filme`),
  KEY `id_filme` (`id_filme`),
  CONSTRAINT `venda_filme_ibfk_1` FOREIGN KEY (`id_venda`) REFERENCES `venda` (`idVenda`),
  CONSTRAINT `venda_filme_ibfk_2` FOREIGN KEY (`id_filme`) REFERENCES `filme` (`idFilme`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venda_filme`
--

LOCK TABLES `venda_filme` WRITE;
/*!40000 ALTER TABLE `venda_filme` DISABLE KEYS */;
INSERT INTO `venda_filme` VALUES (1,3,3),(2,2,2),(3,1,2);
/*!40000 ALTER TABLE `venda_filme` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-04 17:59:59
