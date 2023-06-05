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
INSERT INTO `cliente` VALUES ('anacosta','passabc','Ana Costa',721654987,'2002-03-05','anacosta@gmail.com',945678901,4),('andreAlmeida','pass3456','André Almeida',789321654,'2001-09-19','andrealmeida@gmail.com',912345678,11),('antoniopereira','pass789','António Pereira',456789123,'2004-07-20','antoniopereira@gmail.com',934567690,3),('carlosfernandes','pass0123','Carlos Fernandes',456789123,'1988-01-14','carlosfernandes@gmail.com',936789012,15),('catarinasantos','pass7890','Catarina Santos',981123654,'1999-04-26','catarinasantos@gmail.com',923456789,12),('inespereira','pass1234','Inês Pereira',456789123,'1991-04-30','inespereira@gmail.com',919012345,8),('inespereira2','pass12345','Inês Pereira',980123654,'2002-10-02','inespereira2@gmail.com',969012345,18),('joaosilva','pass123','João Silva',123456789,'2000-05-10','joaosilva@gmail.com',912345678,1),('manuelsantos','pass8901','Manuel Santos',789321654,'1982-03-27','manuelsantos@gmail.com',968901234,17),('marianafernandes','pass90123','Mariana Fernandes',987654321,'2001-12-15','marianafernandes@gmail.com',911234567,20),('mariasantos','pass456','Maria Santos',937654321,'1991-12-15','mariasantos@gmail.com',913456789,2),('martafernandes','pass9012','Marta Fernandes',654987321,'2002-02-13','martafernandes@gmail.com',921234567,10),('miguelsantos','passxyz','Miguel Santos',987523650,'2001-11-25','miguelsantos@gmail.com',938901234,7),('paulosilva','pass2345','Paulo Silva',123456789,'2001-11-01','paulosilva@gmail.com',934567890,13),('pedrofernandes','passdef','Pedro Fernandes',654987221,'2001-09-12','pedrofernandes@gmail.com',916789018,5),('ricardocosta','pass5678','Ricardo Costa',321654987,'2003-08-06','ricardocosta@gmail.com',920123456,9),('ruicosta','pass56789','Rui Costa',123456789,'2000-05-08','ruicosta@gmail.com',990123456,19),('saraalmeida','pass4567','Sara Almeida',321654987,'1995-08-20','saraalmeida@gmail.com',967890123,16),('sofiaalmeida','passtuv','Sofia Almeida',789326594,'2002-06-18','sofiaalmeida@gmail.com',969890123,6),('teresacosta','pass6789','Teresa Costa',987654321,'1990-06-07','teresacosta@gmail.com',965678901,14);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `clienteview`
--

DROP TABLE IF EXISTS `clienteview`;
/*!50001 DROP VIEW IF EXISTS `clienteview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `clienteview` AS SELECT 
 1 AS `Username`,
 1 AS `Nome`,
 1 AS `NIF`,
 1 AS `Data de Nascimento`,
 1 AS `E-Mail`,
 1 AS `Contacto`,
 1 AS `Endereço`*/;
SET character_set_client = @saved_cs_client;

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
  KEY `idx_data_compra` (`data`),
  CONSTRAINT `compra_ibfk_1` FOREIGN KEY (`idFornecedor`) REFERENCES `fornecedor` (`idFornecedor`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra`
--

LOCK TABLES `compra` WRITE;
/*!40000 ALTER TABLE `compra` DISABLE KEYS */;
INSERT INTO `compra` VALUES (1,'2023-05-10',3,29.97,1),(2,'2023-06-03',2,19.98,2),(3,'2023-05-10',1,9.99,3),(4,'2023-05-13',4,39.96,4),(5,'2023-05-14',2,19.98,5),(6,'2023-05-15',1,9.99,5),(7,'2023-05-16',3,9.97,1),(8,'2023-05-17',2,9.98,2),(9,'2023-05-18',1,9.99,3),(10,'2023-05-19',4,39.96,4),(11,'2023-05-20',2,19.98,5),(12,'2023-05-21',1,9.99,3),(13,'2023-05-22',3,29.97,1),(14,'2023-05-23',2,19.98,2),(15,'2023-05-24',1,9.99,3),(16,'2023-05-25',4,39.96,4),(17,'2023-05-26',2,19.98,5),(18,'2023-05-27',1,9.99,2),(19,'2023-05-28',3,29.97,1),(20,'2023-05-29',2,19.98,2),(21,'2023-05-30',1,9.99,3);
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
INSERT INTO `compra_filme` VALUES (1,1,5),(1,2,5),(2,4,6),(2,5,8),(3,6,7),(4,7,4),(4,8,5),(4,9,3),(4,10,8),(5,11,6),(5,12,7),(6,13,8),(7,14,6),(7,15,5),(7,16,4),(8,17,12),(8,18,4),(9,19,9),(10,20,5),(10,21,6),(10,22,4),(10,23,6),(11,24,5),(11,25,8),(12,26,9),(13,27,3),(13,28,4),(13,29,5),(14,20,4),(14,31,5),(15,32,5),(16,33,6),(16,34,7),(16,35,8),(16,36,8),(17,37,4),(17,38,4),(18,39,6),(19,1,5),(19,2,6),(19,40,3),(20,3,12),(20,4,11),(21,5,10);
/*!40000 ALTER TABLE `compra_filme` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `atualizarStockCompra` AFTER INSERT ON `compra_filme` FOR EACH ROW BEGIN
    IF NEW.quantidade > 0 AND EXISTS (
        SELECT 1 FROM Compra -- isto faz uma tabela de 1's, só para saber se há algum
        WHERE idCompra = NEW.id_compra
        AND data_prevista = CURDATE()
    ) THEN
        UPDATE Filme
        SET stock = stock + NEW.quantidade
        WHERE idFilme = NEW.id_filme;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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
  PRIMARY KEY (`idFilme`),
  KEY `idx_preco` (`preco`),
  KEY `idx_genero` (`genero`),
  KEY `idx_data` (`data`),
  KEY `idx_idFilme` (`idFilme`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filme`
--

LOCK TABLES `filme` WRITE;
/*!40000 ALTER TABLE `filme` DISABLE KEYS */;
INSERT INTO `filme` VALUES (1,'Aventuras no Espaço','2000-01-01',12,'Ficção Científica','Prémio de Melhores Efeitos Especiais','Uma emocionante jornada pelo espaço sideral.',10,9.99),(2,'O Mistério do Enigma','2005-05-15',16,'Terror','Nenhum','Um Terror cheio de reviravoltas e segredos.',8,8.99),(3,'Amor em Paris','1998-09-10',14,'Romance','Prémio de Melhor Filme Romântico','Uma história de amor ambientada nas ruas de Paris.',5,7.99),(4,'A Era dos Dragões','1997-03-20',16,'Aventura','Prémio de Melhor Filme de Aventura','Uma jornada épica com dragões e heróis destemidos.',12,9.99),(5,'O Segredo das Profundezas','2003-07-05',12,'Ação','Nenhum','Uma aventura subaquática cheia de perigos.',10,8.99),(6,'O Último Samurai','2002-02-15',14,'Drama','Prémio de Melhor Ator','A história de um samurai em tempos de mudança.',6,9.99),(7,'A Vingança do Destino','2006-11-30',16,'Ação','Nenhum','Um herói em busca de vingança contra seus inimigos.',8,4.49),(8,'No Limite da Realidade','1995-04-25',16,'Ficção Científica','Nenhum','Uma viagem alucinante pelos limites da mente humana.',10,12.39),(9,'O Enigma da Esfinge','1999-08-12',14,'Mistério','Prémio de Melhor Roteiro','Um quebra-cabeças complexo a ser desvendado.',7,15.99),(10,'Aventuras na Floresta','2001-06-10',12,'Aventura','Nenhum','Uma emocionante jornada pela selva desconhecida.',10,7.99),(11,'Amor Proibido','1996-12-20',18,'Romance','Prémio de Melhor Filme Romântico','Um amor que desafia todas as convenções sociais.',4,10.99),(12,'O Segredo da Ilha Perdida','2004-08-05',12,'Aventura','Prémio de Melhor Direção de Arte','Uma ilha cheia de mistérios e tesouros escondidos.',9,4.99),(13,'O Julgamento Final','2001-01-15',16,'Terror','Nenhum','Um Terror intenso com um julgamento de vida ou morte.',7,8.49),(14,'O Fantasma do Passado','1994-11-10',12,'Drama','Prémio de Melhor Ator Coadjuvante','Um drama emocionante sobre redenção e perdão.',6,9.99),(15,'O Legado Perdido','2003-03-25',14,'Ação','Prémio de Melhor Filme de Ação','Uma busca por um tesouro escondido com muitos perigos no caminho.',10,19.79),(16,'No Limite do Abismo','2005-07-12',16,'Terror','Nenhum','Uma história de sobrevivência em um ambiente hostil.',8,5.50),(17,'O Labirinto Misterioso','1998-02-15',12,'Mistério','Prémio de Melhor Filme de Mistério','Um labirinto cheio de enigmas e segredos ocultos.',5,8.40),(18,'Aventuras no Velho Oeste','2000-11-30',12,'Aventura','Nenhum','Uma jornada emocionante pela era dos cowboys.',10,10.95),(19,'A Última Esperança','1997-04-25',16,'Ficção Científica','Prémio de Melhores Efeitos Visuais','Uma batalha épica pela sobrevivência da humanidade.',7,8.99),(20,'O Enigma do Passado','2002-08-12',14,'Terror','Prémio de Melhor Filme de Terror','Um mistério que envolve segredos sombrios do passado.',9,5.99),(21,'O Segredo da Montanha','2003-06-10',12,'Aventura','Nenhum','Uma expedição perigosa em busca de um tesouro perdido.',10,10.99),(22,'Amor Proibido','1999-12-20',18,'Romance','Prémio de Melhor Filme Romântico','Um amor que desafia todas as convenções sociais.',4,13.80),(23,'Aventuras na Cidade Perdida','2004-08-05',12,'Aventura','Prémio de Melhor Fotografia','Uma jornada em busca de uma cidade lendária.',9,18.99),(24,'O Segredo do Portal','1996-01-15',16,'Ficção Científica','Nenhum','Uma descoberta que pode mudar o destino da humanidade.',7,7.89),(25,'A Vingança do Passado','2001-11-10',12,'Drama','Nenhum','Uma história de vingança em busca de redenção.',6,21.49),(26,'O Tesouro Esquecido','1999-03-25',14,'Ação','Prémio de Melhor Efeitos Especiais','Uma caça ao tesouro cheia de perigos e obstáculos.',10,19.99),(27,'No Limite da Sobrevivência','2002-07-12',16,'Terror','Nenhum','Uma luta pela sobrevivência em um ambiente hostil.',8,9.93),(28,'O Mistério do Quadro','1997-02-15',12,'Mistério','Prémio de Melhor Filme de Mistério','Um quadro com segredos ocultos que precisam ser desvendados.',5,8.29),(29,'Aventuras no Novo Mundo','1999-11-30',12,'Aventura','Nenhum','Uma jornada emocionante pelos mistérios do Novo Mundo.',10,12.99),(30,'O Último Desafio','1995-04-15',16,'Ação','Prémio de Melhor Cena de Ação','Um desafio que testará os limites de coragem e determinação.',7,11.95),(31,'O Enigma do Espelho','1998-08-12',14,'Terror','Prémio de Melhor Filme de Terror','Um espelho com um segredo sinistro que ameaça a vida dos protagonistas.',9,16.99),(32,'Aventuras na Terra Encantada','2001-06-10',12,'Aventura','Nenhum','Uma jornada mágica por um reino cheio de encantos e perigos.',10,9.99),(33,'Amor Proibido','1996-12-20',18,'Romance','Prémio de Melhor Filme Romântico','Um amor que desafia todas as convenções sociais.',4,14.30),(34,'O Segredo do Templo','2004-08-05',12,'Aventura','Prémio de Melhor Direção de Arte','Um templo antigo com segredos que podem mudar o mundo.',9,8.99),(35,'No Limite da Escuridão','1996-01-15',16,'Terror','Nenhum','Uma investigação que revela segredos sombrios e perigosos.',7,22.99),(36,'O Legado Perdido','1994-11-10',12,'Drama','Prémio de Melhor Filme de Drama','Uma busca por um legado esquecido que pode mudar vidas.',6,19.99),(37,'Aventuras no Reino Submerso','2003-03-25',14,'Ação','Prémio de Melhor Filme de Ação','Uma aventura épica em um reino submarino cheio de perigos.',10,8.99),(38,'O Segredo do Labirinto','2005-07-12',16,'Terror','Nenhum','Um labirinto mortal que desafia a inteligência e a coragem.',8,5.59),(39,'O Mistério do Manuscrito','1998-02-15',12,'Mistério','Prémio de Melhor Roteiro','Um manuscrito antigo com segredos que podem abalar a sociedade.',5,8.90),(40,'Aventuras no Velho Oeste','2000-11-30',12,'Aventura','Nenhum','Uma jornada emocionante pela era dos cowboys.',10,9.12);
/*!40000 ALTER TABLE `filme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `filmeview`
--

DROP TABLE IF EXISTS `filmeview`;
/*!50001 DROP VIEW IF EXISTS `filmeview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `filmeview` AS SELECT 
 1 AS `ID`,
 1 AS `Nome do Filme`,
 1 AS `Data de Lançamento`,
 1 AS `Restrição`,
 1 AS `Categoria`,
 1 AS `Galardoações`,
 1 AS `Sinopse`,
 1 AS `Preço`*/;
SET character_set_client = @saved_cs_client;

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedor`
--

LOCK TABLES `fornecedor` WRITE;
/*!40000 ALTER TABLE `fornecedor` DISABLE KEYS */;
INSERT INTO `fornecedor` VALUES (1,'Henrique Gonçalves',123456789,'PT50002700000001234567833','henriquegoncalves@gmail.com'),(2,'Joaquim Teixeira',986654321,'PT50002700000001234567844','joaquimteixeira@gmail.com'),(3,'Pedro Almeida',555555555,'PT50002700000001234567855','pedroalmeida@gmail.com'),(4,'António Hneriques',111111111,'PT50002700000001234567866','antoniohenriques@gmail.com'),(5,'Miguel Costa',999999999,'PT50002700000001234567877','miguelcosta@gmail.com');
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
INSERT INTO `funcionário` VALUES (1,'João Silva','1990-05-10','PT000000000123456789','joao.silva.10@video.com',912345678,21),(2,'Maria Luís','1985-12-15','PT000000000987654321','mariasantosluis12@video.com',923456789,22),(3,'Pedro Costa','1995-08-20','PT000000000567891234','pedro95.costa@video.com',934567890,23);
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `morada`
--

LOCK TABLES `morada` WRITE;
/*!40000 ALTER TABLE `morada` DISABLE KEYS */;
INSERT INTO `morada` VALUES (1,'Rua José Castilha',78,'Lisboa','1000-001'),(2,'Rua Santo Padre José',2,'Porto','4000-002'),(3,'Avenida Central',34,'Braga','4700-003'),(4,'Travessa da esquina',2,'Coimbra','3000-004'),(5,'Praça da alegria',54,'Faro','8000-005'),(6,'Rua da porta fechada',26,'Viseu','3500-006'),(7,'Avenida da Europa',77,'Évora','7000-007'),(8,'Rua da loja',81,'Portalegre','7300-008'),(9,'Avenida pequena',19,'Guarda','6300-009'),(10,'Rua dos pescadores',10,'Setúbal','2900-010'),(11,'Avenida dos marinheiros',11,'Viana do Castelo','4900-011'),(12,'Rua José Santos Silva',22,'Santarém','2000-012'),(13,'Avenida Osnabruck',143,'Vila Real','5000-013'),(14,'Travessa do encanto',14,'Aveiro','3800-014'),(15,'Praça Oriental',57,'Leiria','2400-015'),(16,'Rua Pedro Santos',16,'Bragança','5300-016'),(17,'Avenida Principal',107,'Covilhã','6200-017'),(18,'Rua Rei Carlos I',98,'Chaves','5400-018'),(19,'Avenida do estádio',119,'Barcelos','4750-019'),(20,'Rua da luz',10,'Vila Nova de Famalicão','4760-020'),(21,'Rua do café',98,'Braga','4700-023'),(22,'Praceta do descampado',119,'Braga','4710-003'),(23,'Rua da rotunda das nações',10,'Braga','4700-478');
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
  KEY `idx_rating` (`rating`),
  CONSTRAINT `review_ibfk_1` FOREIGN KEY (`id_filme`) REFERENCES `filme` (`idFilme`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,8,'Um filme cheio de ação e reviravoltas emocionantes.',1),(2,6,'A trama é interessante, mas o final deixou a desejar.',2),(3,9,'Uma história de amor apaixonante e envolvente.',3),(4,7,'As cenas de ação são empolgantes, mas o enredo poderia ser mais desenvolvido.',4),(5,8,'Um filme subaquático repleto de adrenalina.',5),(6,9,'As atuações são incríveis e a história é emocionante.',6),(7,5,'A trama é previsível e os diálogos são fracos.',7),(8,8,'Uma experiência visualmente deslumbrante.',8),(9,7,'Um mistério intrigante que mantém o espectador interessado.',9),(10,9,'Uma aventura emocionante e cheia de surpresas.',10),(11,6,'O romance é forçado e o enredo não convence.',11),(12,8,'Uma ilha cheia de mistérios que cativa o espectador.',12),(13,7,'O Terror é envolvente, mas algumas cenas são previsíveis.',13),(14,9,'Uma história comovente que toca o coração.',14),(15,8,'As cenas de ação são emocionantes e bem coreografadas.',15),(16,7,'Um Terror com momentos de tensão e Terror.',16),(17,6,'O mistério é interessante, mas o desfecho é decepcionante.',17),(18,8,'Uma aventura divertida e repleta de ação.',18),(19,7,'Os efeitos visuais são impressionantes, mas o enredo é fraco.',19),(20,9,'Um Terror eletrizante que mantém o espectador vidrado.',20),(21,8,'Uma jornada emocionante cheia de perigos e descobertas.',21),(22,6,'O romance é clichê e previsível.',22),(23,9,'Uma aventura cheia de adrenalina e paisagens deslumbrantes.',23),(24,7,'Um filme de ficção científica intrigante e cheio de reviravoltas.',24),(25,8,'Uma história de vingança bem construída e cativante.',25),(26,9,'Os efeitos especiais são impressionantes e a ação é eletrizante.',26),(27,6,'O enredo é confuso e o ritmo do filme é lento.',27),(28,8,'Uma comédia divertida e cheia de momentos hilários.',28),(29,7,'As atuações são boas, mas a história é previsível.',29),(30,9,'Um filme emocionante que faz refletir sobre a vida.',30);
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
  KEY `idx_data_venda` (`data`),
  KEY `idx_idFuncionario` (`idFuncionário`),
  CONSTRAINT `venda_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`username`),
  CONSTRAINT `venda_ibfk_2` FOREIGN KEY (`idFuncionário`) REFERENCES `funcionário` (`idFuncionário`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venda`
--

LOCK TABLES `venda` WRITE;
/*!40000 ALTER TABLE `venda` DISABLE KEYS */;
INSERT INTO `venda` VALUES (1,'joaosilva',1,1,29.38,1,0,'2023-05-01'),(2,'pedrofernandes',2,2,33.37,0,1,'2023-05-02'),(3,'sofiaalmeida',1,3,49.59,0,1,'2023-05-03'),(4,'joaosilva',3,4,42.16,1,0,'2023-05-04'),(5,'mariasantos',2,5,10.99,0,1,'2023-05-05'),(6,'catarinasantos',2,6,58.95,0,1,'2023-05-06'),(7,'miguelsantos',2,1,13.49,1,0,'2023-05-07'),(8,'ruicosta',3,2,52.81,0,1,'2023-05-08'),(9,'mariasantos',1,3,20.44,0,1,'2023-05-09'),(10,'antoniopereira',1,4,31.98,1,0,'2023-05-10'),(11,'andreAlmeida',1,5,48.27,0,1,'2023-05-11'),(12,'catarinasantos',2,6,53.96,0,1,'2023-06-03');
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
INSERT INTO `venda_filme` VALUES (1,1,1),(1,22,1),(1,38,1),(2,14,1),(2,17,1),(2,20,1),(3,4,1),(3,5,1),(3,25,1),(3,40,1),(4,7,1),(4,8,1),(4,28,1),(4,31,1),(5,11,1),(6,6,2),(6,14,1),(6,21,1),(6,23,1),(6,37,1),(7,3,1),(7,16,1),(8,15,1),(8,18,1),(8,29,1),(8,39,1),(9,13,1),(9,30,1),(10,34,1),(10,35,1),(11,9,1),(11,10,1),(11,32,1),(11,33,1),(12,4,1),(12,19,1),(12,26,1),(12,36,1);
/*!40000 ALTER TABLE `venda_filme` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `atualizarStockVenda` AFTER INSERT ON `venda_filme` FOR EACH ROW BEGIN
    IF NEW.quantidade > 0 AND EXISTS (
        SELECT 1 FROM Venda 
        WHERE idVenda = NEW.id_Venda
        AND data = CURDATE()
    ) THEN
        UPDATE Filme
        SET stock = stock - NEW.quantidade
        WHERE idFilme = NEW.id_filme;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `vendasview`
--

DROP TABLE IF EXISTS `vendasview`;
/*!50001 DROP VIEW IF EXISTS `vendasview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vendasview` AS SELECT 
 1 AS `ID Venda`,
 1 AS `Nº Artigos`,
 1 AS `Preço`,
 1 AS `Data de Venda`,
 1 AS `Username Cliente`,
 1 AS `Filme`,
 1 AS `Quantidade`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'videomino'
--
/*!50003 DROP FUNCTION IF EXISTS `calcularTotalFaturado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `calcularTotalFaturado`(data1 DATE, data2 DATE) RETURNS float
    DETERMINISTIC
BEGIN
	DECLARE total DECIMAL(10,2);
	SET total = (SELECT SUM(v.preco_final)
				FROM Venda AS v
                WHERE v.data BETWEEN data1 AND data2);
	RETURN total;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ClientesTable` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ClientesTable`()
BEGIN
	SELECT * FROM ClienteView;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ComprasFornecedores` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ComprasFornecedores`(IN data1 DATE, IN data2 DATE)
BEGIN
	SELECT c.idCompra, c.data, c.n_artigos, c.preco_total, f.idFuncionário, f.nome AS nome_funcionario
	FROM Compra c
	INNER JOIN Funcionário f ON c.idFornecedor = f.idFuncionário
	WHERE c.data BETWEEN data1 AND data2
	ORDER BY c.data;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ConsultaComprasUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ConsultaComprasUser`(IN userID VARCHAR(20))
BEGIN
	SELECT *
    FROM VendasView AS vv 
    WHERE vv.`Username Cliente` = userID
    ORDER BY vv.`Data de Venda` DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `FilmeGenero` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `FilmeGenero`(IN gender VARCHAR(50))
BEGIN
	SELECT *
    FROM Filme
    WHERE genero = gender;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `FilmesEntrePreços` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `FilmesEntrePreços`(IN preco1 INT, IN preco2 INT)
BEGIN
	SELECT * 
    FROM Filme 
    WHERE preco BETWEEN preco1 AND preco2;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `FilmesTable` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `FilmesTable`()
BEGIN
	SELECT * FROM FilmeView;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `FuncionariosTable` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `FuncionariosTable`()
BEGIN
	SELECT * FROM Funcionário;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `OrdenaFilmesData` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `OrdenaFilmesData`(IN ordenacao VARCHAR(4))
BEGIN 
    DECLARE ordenar_por VARCHAR(4);

    IF ordenacao = 'ASC' THEN
        SET ordenar_por = 'ASC';
    ELSE
        SET ordenar_por = 'DESC';
    END IF;

    SET @sql = CONCAT('SELECT * FROM Filme ORDER BY data ', ordenar_por); -- variavel temporária
    PREPARE stmt FROM @sql; -- tipo malloc 
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `OrdenaFilmesRating` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `OrdenaFilmesRating`(IN ordenacao VARCHAR(4))
BEGIN 
    DECLARE ordenar_por VARCHAR(4);

    IF ordenacao = 'ASC' THEN
        SET ordenar_por = 'ASC';
    ELSE
        SET ordenar_por = 'DESC';
    END IF;

    SET @sql = CONCAT('SELECT Filme.*, Review.rating FROM Filme 
					  INNER JOIN Review ON Review.id_Filme = Filme.idFilme ORDER BY Review.rating ', ordenar_por); -- variavel temporária
    PREPARE stmt FROM @sql; -- tipo malloc 
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `TopClientePeriodo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `TopClientePeriodo`(IN dataesc DATETIME)
BEGIN
	SELECT cliente.username, cliente.nome, COUNT(venda_filme.id_filme) AS total_compras
	FROM Venda venda
	INNER JOIN Venda_filme AS venda_filme ON venda.idVenda = venda_filme.id_venda
	INNER JOIN Cliente cliente ON venda.idCliente = cliente.username
	WHERE venda.data >= dataesc
	GROUP BY cliente.username, cliente.nome
	ORDER BY total_compras DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `TopFilmesAno` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `TopFilmesAno`(IN Ano1 INT, IN Ano2 INT)
BEGIN
	SELECT vf.id_filme, f.nome, COUNT(vf.id_filme) AS total_vendas
	FROM Venda v
	INNER JOIN Venda_filme AS vf ON v.idVenda = vf.id_venda
	INNER JOIN Filme AS f ON vf.id_filme = f.idFilme
	WHERE YEAR(v.data) BETWEEN Ano1 AND Ano2
	GROUP BY vf.id_filme, f.nome
	ORDER BY total_vendas DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `TopFilmesMes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `TopFilmesMes`(IN Mes1 INT, IN Mes2 INT)
BEGIN
	SELECT vf.id_filme, f.nome, COUNT(vf.id_filme) AS total_vendas
	FROM Venda v
	INNER JOIN Venda_filme AS vf ON v.idVenda = vf.id_venda
	INNER JOIN Filme AS f ON vf.id_filme = f.idFilme
	WHERE MONTH(v.data) BETWEEN Mes1 AND Mes2
	GROUP BY vf.id_filme, f.nome
	ORDER BY total_vendas DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `TopTerror` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `TopTerror`()
BEGIN
	SELECT c.username, c.nome, COUNT(vf.id_filme) AS total_compras
	FROM Cliente c
	INNER JOIN Venda v ON c.username = v.idCliente
	INNER JOIN Venda_filme vf ON v.idVenda = vf.id_venda
	INNER JOIN Filme f ON vf.id_filme = f.idFilme
	WHERE YEAR(CURDATE()) - YEAR(c.data_nascimento) BETWEEN 18 AND 23
	AND f.genero = 'Terror'
	GROUP BY c.username, c.nome
	HAVING COUNT(vf.id_filme) > 1
	ORDER BY total_compras DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `VendasFuncionario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `VendasFuncionario`(IN idf INT, IN data1 DATE, IN data2 DATE)
BEGIN
	SELECT v.idVenda, v.preco_final, v.data
	FROM Venda v
	INNER JOIN Funcionário AS f ON f.idFuncionário = v.idFuncionário
	WHERE v.data >= data1 AND v.data <= data2 AND f.idFuncionário = idf
	-- GROUP BY f.idFuncionário, f.nome
	ORDER BY v.data DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `VerificaFilmeStock` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `VerificaFilmeStock`(IN movie INT)
BEGIN 
	SELECT idFilme, nome, stock
    FROM Filme
    WHERE idFilme = movie;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `clienteview`
--

/*!50001 DROP VIEW IF EXISTS `clienteview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `clienteview` AS select `c`.`username` AS `Username`,`c`.`nome` AS `Nome`,`c`.`nif` AS `NIF`,`c`.`data_nascimento` AS `Data de Nascimento`,`c`.`email` AS `E-Mail`,`c`.`n_telemovel` AS `Contacto`,concat(`m`.`rua`,' ',`m`.`num_porta`,' ',`m`.`cidade`,' ',`m`.`codigo_postal`) AS `Endereço` from (`cliente` `c` join `morada` `m` on((`c`.`morada` = `m`.`idMorada`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `filmeview`
--

/*!50001 DROP VIEW IF EXISTS `filmeview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `filmeview` AS select `filme`.`idFilme` AS `ID`,`filme`.`nome` AS `Nome do Filme`,`filme`.`data` AS `Data de Lançamento`,`filme`.`restricao_idade` AS `Restrição`,`filme`.`genero` AS `Categoria`,`filme`.`galarduacoes` AS `Galardoações`,`filme`.`sinopse` AS `Sinopse`,`filme`.`preco` AS `Preço` from `filme` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vendasview`
--

/*!50001 DROP VIEW IF EXISTS `vendasview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vendasview` AS select `v`.`idVenda` AS `ID Venda`,`v`.`n_artigos` AS `Nº Artigos`,`v`.`preco_final` AS `Preço`,`v`.`data` AS `Data de Venda`,`c`.`username` AS `Username Cliente`,`f`.`nome` AS `Filme`,`vf`.`quantidade` AS `Quantidade` from (((`venda` `v` join `cliente` `c` on((`c`.`username` = `v`.`idCliente`))) join `venda_filme` `vf` on((`v`.`idVenda` = `vf`.`id_venda`))) join `filme` `f` on((`vf`.`id_filme` = `f`.`idFilme`))) order by `v`.`data` desc,`v`.`idVenda` desc */;
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

-- Dump completed on 2023-06-05 19:11:52
