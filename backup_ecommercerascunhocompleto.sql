-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: ecommercerascunho
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `idCustomer` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(20) DEFAULT NULL,
  `Lname` varchar(10) NOT NULL,
  `Adrress` varchar(45) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `bdate` date DEFAULT NULL,
  PRIMARY KEY (`idCustomer`),
  UNIQUE KEY `unique_customer` (`idCustomer`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (21,'John','Doe','123 Main Street','H','1990-12-05'),(22,'Jane','Smith','456 Elm Street','M','1976-02-08'),(23,'Michael','Johnson','789 Oak Avenue','H','1972-09-29'),(24,'Emily','Brown','101 Maple Drive','M','2000-05-30'),(25,'Christopher','Wilson','202 Pine Lane','H','1973-10-27'),(26,'Jessica','Anderson','303 Cedar Road','M','2002-11-12'),(27,'David','Martinez','404 Birch Street','H','1982-11-13'),(28,'Sarah','Taylor','505 Willow Avenue','M','1970-09-27'),(29,'Daniel','Thomas','606 Oak Street','H','1970-02-04'),(30,'Amanda','Jackson','707 Elm Avenue','M','2003-04-05'),(31,'James','Miller','808 Cedar Street','H','1996-01-05'),(32,'Jennifer','Garcia','909 Maple Avenue','M','2000-04-11'),(33,'Matthew','Rodriguez','1010 Pine Drive','H','1973-05-13'),(34,'Elizabeth','Lopez','1111 Oak Lane','M','2000-12-22'),(35,'Ryan','Hernandez','1212 Elm Road','H','1974-10-17'),(36,'Samantha','Gonzalez','1313 Birch Avenue','M','1971-01-13'),(37,'William','Perez','1414 Willow Drive','H','1995-10-15'),(38,'Olivia','Sanchez','1515 Cedar Lane','M','1990-11-02'),(39,'Ethan','Lee','1616 Maple Road','H','1996-10-28'),(40,'Isabella','Moore','1717 Pine Street','M','1971-08-14'),(41,'Alberto','Costa','123-Endereço-Cidade','H','1972-04-26');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery`
--

DROP TABLE IF EXISTS `delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery` (
  `idDelivery` int NOT NULL AUTO_INCREMENT,
  `idSalesOrder` int NOT NULL,
  `Status` enum('Processing','Shipped','Delivered','Canceled') DEFAULT NULL,
  `trackingCode` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idDelivery`),
  KEY `index_delivery_sales_order` (`idSalesOrder`),
  CONSTRAINT `fk_delivery_salesOrder` FOREIGN KEY (`idSalesOrder`) REFERENCES `salesorder` (`idSalesOrder`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery`
--

LOCK TABLES `delivery` WRITE;
/*!40000 ALTER TABLE `delivery` DISABLE KEYS */;
INSERT INTO `delivery` VALUES (1,1,'Processing','TRK123456789'),(2,2,'Shipped','TRK234567890'),(3,3,'Delivered','TRK345678901'),(4,4,'Processing','TRK456789012'),(5,5,'Shipped','TRK567890123'),(6,6,'Delivered','TRK678901234'),(7,7,'Processing','TRK789012345'),(8,8,'Shipped','TRK890123456'),(9,9,'Delivered','TRK901234567'),(10,10,'Processing','TRK012345678'),(11,11,'Shipped','TRK123456789'),(12,12,'Delivered','TRK234567890'),(13,13,'Processing','TRK345678901'),(14,14,'Shipped','TRK456789012'),(15,15,'Delivered','TRK567890123'),(16,16,'Processing','TRK678901234'),(17,17,'Shipped','TRK789012345'),(18,18,'Delivered','TRK890123456'),(19,19,'Processing','TRK901234567'),(20,20,'Shipped','TRK012345678');
/*!40000 ALTER TABLE `delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `legalentity`
--

DROP TABLE IF EXISTS `legalentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `legalentity` (
  `idLegalEntity` int NOT NULL,
  `companyName` varchar(255) NOT NULL,
  `CNPJ` varchar(14) NOT NULL,
  PRIMARY KEY (`idLegalEntity`),
  UNIQUE KEY `unique_cnpj_legal_entity` (`CNPJ`),
  CONSTRAINT `fk_legal_entity_customer` FOREIGN KEY (`idLegalEntity`) REFERENCES `customer` (`idCustomer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `legalentity`
--

LOCK TABLES `legalentity` WRITE;
/*!40000 ALTER TABLE `legalentity` DISABLE KEYS */;
INSERT INTO `legalentity` VALUES (21,'Empresa A','12345678901234'),(22,'Empresa B','23456789012345'),(23,'Empresa C','34567890123456'),(24,'Empresa D','45678901234567'),(25,'Empresa E','56789012345678'),(26,'Empresa F','67890123456789'),(27,'Empresa G','78901234567890'),(28,'Empresa H','89012345678901'),(29,'Empresa I','90123456789012'),(30,'Empresa J','01234567890123');
/*!40000 ALTER TABLE `legalentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `naturalperson`
--

DROP TABLE IF EXISTS `naturalperson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `naturalperson` (
  `idNaturalPerson` int NOT NULL,
  `CPF` varchar(11) NOT NULL,
  `birthday_date` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idNaturalPerson`),
  UNIQUE KEY `unique_cpf_natural_person` (`CPF`),
  CONSTRAINT `fk_natural_person_customer` FOREIGN KEY (`idNaturalPerson`) REFERENCES `customer` (`idCustomer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `naturalperson`
--

LOCK TABLES `naturalperson` WRITE;
/*!40000 ALTER TABLE `naturalperson` DISABLE KEYS */;
INSERT INTO `naturalperson` VALUES (31,'12345678901','1990-01-01'),(32,'23456789012','1995-02-15'),(33,'34567890123','1987-05-20'),(34,'45678901234','1983-08-10'),(35,'56789012345','1979-10-25'),(36,'67890123456','1992-04-30'),(37,'78901234567','1986-07-07'),(38,'89012345678','1998-09-12'),(39,'90123456789','1980-12-18'),(40,'01234567890','1975-03-05');
/*!40000 ALTER TABLE `naturalperson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `idPayment` int NOT NULL AUTO_INCREMENT,
  `TypePayment` enum('Cash','Card','Crypto') DEFAULT NULL,
  `idCustomer` int NOT NULL,
  `idSalesOrder` int NOT NULL,
  PRIMARY KEY (`idPayment`),
  UNIQUE KEY `unique_payment_combo` (`idCustomer`,`idSalesOrder`),
  KEY `fk_payment_salesOrder` (`idSalesOrder`),
  CONSTRAINT `fk_payment_customer` FOREIGN KEY (`idCustomer`) REFERENCES `customer` (`idCustomer`),
  CONSTRAINT `fk_payment_salesOrder` FOREIGN KEY (`idSalesOrder`) REFERENCES `salesorder` (`idSalesOrder`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,'Cash',21,1),(2,'Card',22,2),(3,'Crypto',23,3),(4,'Card',24,4),(5,'Cash',25,5),(6,'Card',26,6),(7,'Crypto',27,7),(8,'Cash',28,8),(9,'Card',29,9),(10,'Crypto',30,10),(11,'Cash',31,11),(12,'Card',32,12),(13,'Crypto',33,13),(14,'Card',34,14),(15,'Cash',35,15),(16,'Card',36,16),(17,'Crypto',37,17),(18,'Cash',38,18),(19,'Card',39,19),(20,'Crypto',40,20);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `idProduct` int NOT NULL AUTO_INCREMENT,
  `Pname` varchar(45) NOT NULL,
  `Category` enum('Eletrônico','Vestuário','Alimentos','Brinquedos','Livros') NOT NULL,
  `Review` float DEFAULT '0',
  `Pdescription` varchar(45) DEFAULT NULL,
  `Price` float NOT NULL,
  PRIMARY KEY (`idProduct`),
  KEY `index_category` (`Category`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Smartphone X','Eletrônico',4.5,'Smartphone',999.99),(2,'Smart TV 4K','Eletrônico',4.8,'Televisor',1499.99),(3,'Camisa Polo','Vestuário',4.3,'Camisa',39.99),(4,'Calça Jeans','Vestuário',4,'Calça',49.99),(5,'Arroz','Alimentos',4.7,'Arroz branco',5.99),(6,'Feijão','Alimentos',4.6,'Feijão carioca',4.99),(7,'Bola de Futebol','Brinquedos',4.9,'Bola',19.99),(8,'Quebra-cabeça','Brinquedos',4.4,'Quebra-cabeça 1000 peças',15.99),(9,'Harry Potter','Livros',4.7,'Livro de ficção',29.99),(10,'A Culpa é das Estrelas','Livros',4.6,'Livro de romance',24.99),(11,'Tablet','Eletrônico',4.6,'Tablet',299.99),(12,'Jaqueta de Couro','Vestuário',4.5,'Jaqueta',79.99),(13,'Macarrão','Alimentos',4.8,'Macarrão espaguete',2.99),(14,'Lego','Brinquedos',4.8,'Conjunto de peças de montar',49.99),(15,'Kindle','Eletrônico',4.7,'Leitor digital',119.99),(16,'Vestido de Festa','Vestuário',4.6,'Vestido longo',89.99),(17,'Chocolate','Alimentos',4.9,'Barra de chocolate ao leite',3.99),(18,'Carro de Controle Remoto','Brinquedos',4.5,'Carro RC',29.99),(19,'O Senhor dos Anéis','Livros',4.9,'Livro de fantasia',39.99),(20,'Fone de Ouvido','Eletrônico',4.8,'Fone de ouvido sem fio',79.99),(21,'Xbox','Eletrônico',4.5,'Video-game',1599.99),(22,'Monitor','Eletrônico',5,'Monitor gamer',999),(23,'Teclado','Eletrônico',3,'Teclado gamer',299.99);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productorder`
--

DROP TABLE IF EXISTS `productorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productorder` (
  `idProductOrderProduct` int NOT NULL,
  `idProductOrder` int NOT NULL,
  `POQuantity` int DEFAULT '0',
  `POStatus` enum('Disponível','Sem estoque') DEFAULT 'Disponível',
  PRIMARY KEY (`idProductOrderProduct`,`idProductOrder`),
  KEY `fk_productOrder_product` (`idProductOrder`),
  CONSTRAINT `fk_productOrder_product` FOREIGN KEY (`idProductOrder`) REFERENCES `salesorder` (`idSalesOrder`),
  CONSTRAINT `fk_productOrder_seller` FOREIGN KEY (`idProductOrderProduct`) REFERENCES `product` (`idProduct`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productorder`
--

LOCK TABLES `productorder` WRITE;
/*!40000 ALTER TABLE `productorder` DISABLE KEYS */;
INSERT INTO `productorder` VALUES (1,1,10,'Disponível'),(2,1,5,'Disponível'),(3,1,15,'Disponível'),(4,2,8,'Disponível'),(5,2,12,'Disponível'),(6,2,20,'Disponível'),(7,3,18,'Disponível'),(8,3,6,'Disponível'),(9,3,25,'Disponível'),(10,4,30,'Disponível'),(11,4,10,'Disponível'),(12,4,15,'Disponível');
/*!40000 ALTER TABLE `productorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productseller`
--

DROP TABLE IF EXISTS `productseller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productseller` (
  `idPSeller` int NOT NULL,
  `idProduct` int NOT NULL,
  `ProdQuantity` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idPSeller`,`idProduct`),
  KEY `fk_product_product` (`idProduct`),
  CONSTRAINT `fk_product_product` FOREIGN KEY (`idProduct`) REFERENCES `product` (`idProduct`),
  CONSTRAINT `fk_product_seller` FOREIGN KEY (`idPSeller`) REFERENCES `seller` (`idSeller`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productseller`
--

LOCK TABLES `productseller` WRITE;
/*!40000 ALTER TABLE `productseller` DISABLE KEYS */;
INSERT INTO `productseller` VALUES (1,1,10),(1,3,20),(1,5,15),(2,2,5),(2,4,8),(2,6,12),(3,3,18),(3,5,25),(3,7,7),(4,4,6),(4,6,10),(4,8,14),(5,5,30),(5,7,10),(5,9,20),(6,6,15),(6,8,5),(6,10,18),(7,7,22),(7,9,28),(7,11,9),(8,8,8),(8,10,12),(8,12,16),(9,9,35),(9,11,15),(9,13,25),(10,10,20),(10,12,10),(10,14,30);
/*!40000 ALTER TABLE `productseller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productstorage`
--

DROP TABLE IF EXISTS `productstorage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productstorage` (
  `idProdStorage` int NOT NULL AUTO_INCREMENT,
  `storageLocation` varchar(50) DEFAULT NULL,
  `quantity` int DEFAULT '0',
  PRIMARY KEY (`idProdStorage`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productstorage`
--

LOCK TABLES `productstorage` WRITE;
/*!40000 ALTER TABLE `productstorage` DISABLE KEYS */;
INSERT INTO `productstorage` VALUES (1,'Prateleira 1',100),(2,'Prateleira 2',150),(3,'Estoque Central',200),(4,'Depósito 1',75),(5,'Prateleira 3',120),(6,'Depósito 2',80),(7,'Estoque Norte',90),(8,'Prateleira 4',110),(9,'Depósito 3',60),(10,'Estoque Sul',85);
/*!40000 ALTER TABLE `productstorage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productsupplier`
--

DROP TABLE IF EXISTS `productsupplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productsupplier` (
  `idPSupplier` int NOT NULL,
  `idPProduct` int NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`idPSupplier`,`idPProduct`),
  KEY `fk_product_supplier_product` (`idPProduct`),
  CONSTRAINT `fk_product_supplier_product` FOREIGN KEY (`idPProduct`) REFERENCES `product` (`idProduct`),
  CONSTRAINT `fk_product_supplier_supplier` FOREIGN KEY (`idPSupplier`) REFERENCES `supplier` (`idSupplier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productsupplier`
--

LOCK TABLES `productsupplier` WRITE;
/*!40000 ALTER TABLE `productsupplier` DISABLE KEYS */;
INSERT INTO `productsupplier` VALUES (1,1,50),(1,2,100),(2,3,75),(2,4,80),(3,5,120),(3,6,90),(4,7,110),(4,8,60),(5,9,85),(5,10,70);
/*!40000 ALTER TABLE `productsupplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salesorder`
--

DROP TABLE IF EXISTS `salesorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salesorder` (
  `idSalesOrder` int NOT NULL AUTO_INCREMENT,
  `idOrderClient` int NOT NULL,
  `OrderStatus` enum('Ordered','Sent','Delivered','Canceled') NOT NULL DEFAULT (_utf8mb4'Processing'),
  `orderDescription` varchar(45) DEFAULT NULL,
  `sendValue` float DEFAULT NULL,
  `paymentStatus` enum('Pending','Authorized','Processing','Completed','Failed') NOT NULL DEFAULT (_utf8mb4'Pending'),
  PRIMARY KEY (`idSalesOrder`),
  KEY `index_sales_order_client` (`idOrderClient`),
  CONSTRAINT `fk_salesOrders_customer` FOREIGN KEY (`idOrderClient`) REFERENCES `customer` (`idCustomer`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salesorder`
--

LOCK TABLES `salesorder` WRITE;
/*!40000 ALTER TABLE `salesorder` DISABLE KEYS */;
INSERT INTO `salesorder` VALUES (1,21,'Ordered','Smartphone X',500,'Authorized'),(2,21,'Ordered','Smart TV 4K',300,'Processing'),(3,22,'Ordered','Camisa Polo',700,'Completed'),(4,22,'Ordered','Calça Jeans',450,'Pending'),(5,23,'Ordered','Arroz',50,'Processing'),(6,23,'Ordered','Feijão',40,'Authorized'),(7,24,'Ordered','Bola de Futebol',30,'Completed'),(8,24,'Ordered','Quebra-cabeça',25,'Pending'),(9,25,'Ordered','Harry Potter',35,'Processing'),(10,25,'Ordered','A Culpa é das Estrelas',30,'Authorized'),(11,26,'Sent','Smartphone X',500,'Authorized'),(12,26,'Sent','Smart TV 4K',300,'Processing'),(13,27,'Sent','Camisa Polo',700,'Completed'),(14,27,'Sent','Calça Jeans',450,'Pending'),(15,28,'Sent','Arroz',50,'Processing'),(16,28,'Sent','Feijão',40,'Authorized'),(17,29,'Sent','Bola de Futebol',30,'Completed'),(18,29,'Sent','Quebra-cabeça',25,'Pending'),(19,30,'Sent','Harry Potter',35,'Processing'),(20,30,'Sent','A Culpa é das Estrelas',30,'Authorized'),(21,31,'Ordered','Smartphone X',500,'Authorized'),(22,32,'Ordered','Camisa Polo',120,'Processing'),(23,32,'Ordered','Calça Jeans',80,'Authorized'),(24,33,'Ordered','Arroz',25,'Processing'),(25,33,'Ordered','Feijão',20,'Completed'),(26,34,'Ordered','Bola de Futebol',50,'Pending'),(27,34,'Ordered','Quebra-cabeça',40,'Processing'),(28,35,'Ordered','Harry Potter',30,'Processing'),(29,35,'Ordered','A Culpa é das Estrelas',25,'Authorized'),(30,36,'Ordered','Tablet',200,'Processing'),(31,36,'Ordered','Jaqueta de Couro',150,'Pending');
/*!40000 ALTER TABLE `salesorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller`
--

DROP TABLE IF EXISTS `seller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seller` (
  `idSeller` int NOT NULL AUTO_INCREMENT,
  `SocialName` varchar(255) NOT NULL,
  `AbstName` varchar(45) DEFAULT NULL,
  `Adrress` varchar(45) DEFAULT NULL,
  `CNPJ` varchar(15) DEFAULT NULL,
  `CPF` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`idSeller`),
  UNIQUE KEY `unique_cnpj_seller` (`CNPJ`),
  UNIQUE KEY `unique_cpf_seller` (`CPF`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller`
--

LOCK TABLES `seller` WRITE;
/*!40000 ALTER TABLE `seller` DISABLE KEYS */;
INSERT INTO `seller` VALUES (1,'Vendedor A','Abreviação A','Endereço A','12345678901','12345678901'),(2,'Vendedor B','Abreviação B','Endereço B','23456789012','23456789012'),(3,'Vendedor C','Abreviação C','Endereço C','34567890123','34567890123'),(4,'Vendedor D','Abreviação D','Endereço D','45678901234','45678901234'),(5,'Vendedor E','Abreviação E','Endereço E','56789012345','56789012345'),(6,'Vendedor F','Abreviação F','Endereço F','67890123456','67890123456'),(7,'Vendedor G','Abreviação G','Endereço G','78901234567','78901234567'),(8,'Vendedor H','Abreviação H','Endereço H','89012345678','89012345678'),(9,'Vendedor I','Abreviação I','Endereço I','90123456789','90123456789'),(10,'Vendedor J','Abreviação J','Endereço J','01234567890','01234567890');
/*!40000 ALTER TABLE `seller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storagelocation`
--

DROP TABLE IF EXISTS `storagelocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `storagelocation` (
  `idLProduct` int NOT NULL,
  `idLStorage` int NOT NULL,
  `location` varchar(50) NOT NULL,
  PRIMARY KEY (`idLProduct`,`idLStorage`),
  KEY `fk_productStorageLocation_product` (`idLStorage`),
  CONSTRAINT `fk_productStorageLocation_product` FOREIGN KEY (`idLStorage`) REFERENCES `productstorage` (`idProdStorage`),
  CONSTRAINT `fk_productStorageLocation_seller` FOREIGN KEY (`idLProduct`) REFERENCES `product` (`idProduct`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storagelocation`
--

LOCK TABLES `storagelocation` WRITE;
/*!40000 ALTER TABLE `storagelocation` DISABLE KEYS */;
INSERT INTO `storagelocation` VALUES (1,1,'Rua dos Exemplos, 123'),(2,2,'Avenida Principal, 456'),(3,3,'Rua das Amostras, 789'),(4,4,'Avenida das Ruas, 321'),(5,5,'Rua dos Sonhos, 654'),(6,6,'Avenida da Liberdade, 987'),(7,7,'Rua dos Artistas, 741'),(8,8,'Avenida dos Prazeres, 852'),(9,9,'Rua das Flores, 963'),(10,10,'Avenida das Árvores, 147');
/*!40000 ALTER TABLE `storagelocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `idSupplier` int NOT NULL AUTO_INCREMENT,
  `SocialName` varchar(255) NOT NULL,
  `CNPJ` varchar(15) NOT NULL,
  `Contact` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idSupplier`),
  UNIQUE KEY `unique_supplier` (`CNPJ`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'Fornecedor A','12345678901234','Contato A'),(2,'Fornecedor B','23456789012345','Contato B'),(3,'Fornecedor C','34567890123456','Contato C'),(4,'Fornecedor D','45678901234567','Contato D'),(5,'Fornecedor E','56789012345678','Contato E'),(6,'Fornecedor F','67890123456789','Contato F'),(7,'Fornecedor G','78901234567890','Contato G'),(8,'Fornecedor H','89012345678901','Contato H'),(9,'Fornecedor I','90123456789012','Contato I'),(10,'Fornecedor J','01234567890123','Contato J');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'ecommercerascunho'
--

--
-- Dumping routines for database 'ecommercerascunho'
--
/*!50003 DROP PROCEDURE IF EXISTS `add_customer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_customer`(
    in fname VARCHAR(10) ,
    in Lname VARCHAR(10) ,
    in Adrress VARCHAR(45),
    in gender CHAR(1),
    in bdate DATE
)
begin
	insert into customer (fname, Lname, Adrress, gender, bdate) values (fname, Lname, Adrress, gender, bdate);
    
    select * from customer;
    select "Inserção bem sucedida" as message;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_product` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_product`(
    in Pname VARCHAR(45),
    in Category ENUM('Eletrônico', 'Vestuário', 'Alimentos', 'Brinquedos', 'Livros') ,
    in Review FLOAT,
    in Pdescription VARCHAR(45),
    in Price FLOAT(2)
)
begin 
	INSERT INTO product (Pname, Category, Review, Pdescription, Price) values (Pname, Category, Review, Pdescription, Price);
    
    select * from product;
    select "Inserção bem sucedida" as message;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sql_error` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sql_error`()
begin
		declare exit HANDLER FOR SQLEXCEPTION
			begin
				get DIAGNOSTICS CONDITION 1
					@p2 = MESSAGE_TEXT;
				select @p2 as transaction_error;
                rollback;
			end;
            
            start TRANSACTION;
            
                insert into product VALUES (@idproduct, "Teclado", 'Eletrônico', 3.0, "Teclado gamer", 299.99);
                
            commit;
	end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-08 15:01:37
