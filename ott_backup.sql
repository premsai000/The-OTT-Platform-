-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: ott_platform
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Temporary view structure for view `arpu_customer`
--

DROP TABLE IF EXISTS `arpu_customer`;
/*!50001 DROP VIEW IF EXISTS `arpu_customer`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `arpu_customer` AS SELECT 
 1 AS `sum(price)`,
 1 AS `year`,
 1 AS `FirstName`,
 1 AS `email`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact` (
  `contact_id` int NOT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `FirstName` varchar(255) NOT NULL,
  `Age` int DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone_otp_ver` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `email_otp_ver` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`contact_id`,`email`),
  KEY `idx_pname` (`LastName`,`FirstName`,`email`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (123,'dhubey','Aaradhya',22,'6308131925','Aaradhya@gmail.com',NULL,'T'),(126,'reddy','Adah',25,'6302172024','Adah@gmail.com',NULL,'T'),(129,'raj','Adhira',19,'6301112232','Adhira@gmail.com',NULL,'T'),(132,'mishra','Alisha',22,'6301321233','Alisha@gmail.com',NULL,'T'),(135,'roje','Amoli',28,'6305162328','Amoli@gmail.com',NULL,'T'),(138,'nik','Anaisha',26,'6302243235','Anaisha@gmail.com',NULL,'T'),(141,'vin','Ananya',28,'6302528394','Ananya@gmail.com',NULL,'T'),(144,'diz','Anika',45,'6309174247','Anika@gmail.com',NULL,'T'),(147,'nen','Anushka',56,'6300161923','Anushka@gmail.com',NULL,'T'),(150,'vasu','Asmee',34,'6304263541','Asmee@gmail.com','T','T'),(153,'polo','Avni',33,'3301923252','Avni@gmail.com','T','T'),(156,'den','Carina',45,'3307192527','Carina@gmail.com','T','T'),(159,'nobe','Chara',55,'3301214253','Chara@gmail.com','T','T'),(162,'math','Drishti',67,'3302025313','Drishti@gmail.com','T','T'),(165,'reddy','Ela',67,'3300182437','Ela@gmail.com','T','T'),(168,'reddy','Eshika',76,'3301831394','Eshika@gmail.com','T','T'),(171,'venkat','Geetika',33,'3301015273','Geetika@gmail.com',NULL,'T'),(174,'reddy','Gulika',33,'3309214647','Gulika@gmail.com','T','T'),(177,'reddy','Hiya',55,'3301323253','Hiya@gmail.com','T','T'),(180,'ram','Hiral',77,'3301418252','Hiral@gmail.com','T','T'),(183,'den','Ira',91,'3308192232','Ira@gmail.com','T','T'),(186,'df','Ishana',77,'3301621243','Ishana@gmail.com','T','T'),(189,'ch','Ishita',23,'3302531323','Ishita@gmail.com','T','T'),(192,'reddy','Jeevika',34,'3301522264','Jeevika@gmail.com','T','T'),(195,'den','prem',91,'3301721222','prem@gmail.com',NULL,'T'),(198,'kr','sai',77,'3301819353','sai@gmail.com',NULL,'T'),(201,'jin','reddy',23,'3302263031','reddy@gmail.com',NULL,'T'),(204,'bun','phani',34,'3306192335','phani@gmail.com',NULL,'T'),(207,'roger','reddie',91,'3305272830','reddie@gmail.com',NULL,'T');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `op_promotion`
--

DROP TABLE IF EXISTS `op_promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `op_promotion` (
  `op_promo_id` int NOT NULL,
  `promotion_id` int NOT NULL,
  `amount` decimal(10,6) NOT NULL,
  `promo_start_date` date NOT NULL,
  `promo_end_date` date NOT NULL,
  `ordered_product_id` int NOT NULL,
  PRIMARY KEY (`op_promo_id`),
  KEY `ordered_product_id` (`ordered_product_id`),
  CONSTRAINT `op_promotion_ibfk_1` FOREIGN KEY (`ordered_product_id`) REFERENCES `ordered_product` (`ordered_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `op_promotion`
--

LOCK TABLES `op_promotion` WRITE;
/*!40000 ALTER TABLE `op_promotion` DISABLE KEYS */;
INSERT INTO `op_promotion` VALUES (10,1,10.000000,'2023-10-01','2023-10-31',53457),(11,2,5.000000,'2022-10-02','2022-11-01',53622),(12,3,15.000000,'2021-05-02','2021-06-01',53487);
/*!40000 ALTER TABLE `op_promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_item`
--

DROP TABLE IF EXISTS `order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_item` (
  `order_item_id` int NOT NULL,
  `order_id` int NOT NULL,
  `ordered_product_id` int NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `ordered_product_id` (`ordered_product_id`),
  CONSTRAINT `order_item_ibfk_1` FOREIGN KEY (`ordered_product_id`) REFERENCES `ordered_product` (`ordered_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_item`
--

LOCK TABLES `order_item` WRITE;
/*!40000 ALTER TABLE `order_item` DISABLE KEYS */;
INSERT INTO `order_item` VALUES (2345,23457,53457),(2352,23457,53462),(2359,23457,53467),(2366,23464,53472),(2373,23471,53477),(2380,23478,53482),(2387,23478,53487),(2394,23485,53492),(2401,23492,53497),(2408,23499,53502),(2415,23506,53507),(2422,23506,53512),(2429,23513,53517),(2436,23520,53522),(2443,23527,53527),(2450,23534,53532),(2457,23534,53537),(2464,23541,53542),(2471,23548,53547),(2478,23555,53552),(2485,23562,53557),(2492,23569,53562),(2499,23576,53567),(2506,23583,53572),(2513,23590,53577),(2520,23597,53582),(2527,23604,53587),(2534,23611,53592),(2541,23618,53597),(2548,23625,53602),(2555,23632,53607),(2562,23639,53612),(2569,23646,53617),(2576,23653,53622);
/*!40000 ALTER TABLE `order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordered_product`
--

DROP TABLE IF EXISTS `ordered_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordered_product` (
  `ordered_product_id` int NOT NULL,
  `product_id` int DEFAULT NULL,
  `srv_start_date` datetime DEFAULT NULL,
  `srv_end_date` datetime DEFAULT NULL,
  PRIMARY KEY (`ordered_product_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `ordered_product_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordered_product`
--

LOCK TABLES `ordered_product` WRITE;
/*!40000 ALTER TABLE `ordered_product` DISABLE KEYS */;
INSERT INTO `ordered_product` VALUES (53457,1121,'2023-10-01 00:00:00','2023-10-31 00:00:00'),(53462,111,'2023-10-01 00:00:00','2023-10-31 00:00:00'),(53467,1111,'2023-10-01 00:00:00','2023-10-31 00:00:00'),(53472,114,'2022-10-02 00:00:00','2022-11-01 00:00:00'),(53477,155,'2021-05-02 00:00:00','2021-06-01 00:00:00'),(53482,111,'2021-05-02 00:00:00','2021-06-01 00:00:00'),(53487,1551,'2021-05-02 00:00:00','2021-06-01 00:00:00'),(53492,114,'2019-06-03 00:00:00','2019-07-03 00:00:00'),(53497,155,'2021-06-03 00:00:00','2021-07-03 00:00:00'),(53502,111,'2022-10-02 00:00:00','2022-11-01 00:00:00'),(53507,112,'2021-07-03 00:00:00','2021-08-02 00:00:00'),(53512,1141,'2021-07-03 00:00:00','2021-08-02 00:00:00'),(53517,155,'2002-06-03 00:00:00','2002-07-03 00:00:00'),(53522,111,'2022-10-02 00:00:00','2022-11-01 00:00:00'),(53527,112,'2022-10-02 00:00:00','2022-11-01 00:00:00'),(53532,155,'2022-10-02 00:00:00','2022-11-01 00:00:00'),(53537,1121,'2022-10-02 00:00:00','2022-11-01 00:00:00'),(53542,111,'2019-05-02 00:00:00','2019-06-01 00:00:00'),(53547,112,'2019-05-02 00:00:00','2019-06-01 00:00:00'),(53552,114,'2019-05-02 00:00:00','2019-06-01 00:00:00'),(53557,155,'2019-06-03 00:00:00','2019-07-03 00:00:00'),(53562,111,'2018-06-03 00:00:00','2018-07-03 00:00:00'),(53567,112,'2019-07-03 00:00:00','2019-08-02 00:00:00'),(53572,112,'2018-06-03 00:00:00','2018-07-03 00:00:00'),(53577,155,'2018-06-03 00:00:00','2018-07-03 00:00:00'),(53582,111,'2022-10-02 00:00:00','2022-11-01 00:00:00'),(53587,112,'2018-06-03 00:00:00','2018-07-03 00:00:00'),(53592,114,'2018-06-03 00:00:00','2018-07-03 00:00:00'),(53597,155,'2018-06-03 00:00:00','2018-07-03 00:00:00'),(53602,155,'2019-07-03 00:00:00','2019-08-02 00:00:00'),(53607,114,'2018-06-03 00:00:00','2018-07-03 00:00:00'),(53612,155,'2018-06-03 00:00:00','2018-07-03 00:00:00'),(53617,155,'2022-10-02 00:00:00','2022-11-01 00:00:00'),(53622,155,'2022-10-02 00:00:00','2022-11-01 00:00:00');
/*!40000 ALTER TABLE `ordered_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_ID` int NOT NULL,
  `order_date` date NOT NULL,
  `contact_id` int DEFAULT NULL,
  PRIMARY KEY (`order_ID`),
  KEY `contact_id` (`contact_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`contact_id`) REFERENCES `contact` (`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (23457,'2023-10-01',123),(23464,'2022-10-02',126),(23471,'2021-05-02',129),(23478,'2021-05-02',132),(23485,'2019-06-03',135),(23492,'2021-06-03',138),(23499,'2022-10-02',141),(23506,'2021-07-03',144),(23513,'2002-06-03',147),(23520,'2002-06-03',150),(23527,'2022-10-02',153),(23534,'2022-10-02',156),(23541,'2019-05-02',159),(23548,'2019-05-02',162),(23555,'2019-05-02',165),(23562,'2019-06-03',168),(23569,'2018-06-03',171),(23576,'2019-07-03',174),(23583,'2018-06-03',177),(23590,'2018-06-03',180),(23597,'2022-10-02',183),(23604,'2018-06-03',186),(23611,'2018-06-03',189),(23618,'2018-06-03',192),(23625,'2019-07-03',195),(23632,'2018-06-03',198),(23639,'2018-06-03',201),(23646,'2022-10-02',204),(23653,'2022-10-02',207);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `payment_id` int NOT NULL,
  `order_id` int NOT NULL,
  `contact_id` int NOT NULL,
  `payment_date` date NOT NULL,
  `payment_method` varchar(30) DEFAULT NULL,
  `price` decimal(10,6) DEFAULT NULL,
  `tax` decimal(10,6) DEFAULT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `order_id` (`order_id`),
  KEY `contact_id` (`contact_id`),
  CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_ID`),
  CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`contact_id`) REFERENCES `contact` (`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (112263,23471,129,'2021-05-02','gpay',109.990000,NULL),(112266,23478,132,'2021-05-02','applepay',154.990000,NULL),(112269,23485,135,'2019-06-03','samsungpay',74.990000,NULL),(112272,23492,138,'2021-06-03','gpay',99.990000,NULL),(112275,23499,141,'2022-10-02','samsungpay',109.990000,NULL),(112278,23506,144,'2021-07-03','gpay',154.990000,NULL),(112281,23513,147,'2002-06-03','visa',74.990000,NULL),(112284,23520,150,'2002-06-03','visa',99.990000,NULL),(112287,23527,153,'2022-10-02','visa',109.990000,NULL),(112290,23534,156,'2022-10-02','discover',154.990000,NULL),(112293,23541,159,'2019-05-02','amex',74.990000,NULL),(112296,23548,162,'2019-05-02','mastercard',99.990000,NULL),(112299,23562,168,'2019-06-03','discover',154.990000,NULL),(112302,23569,171,'2018-06-03','discover',74.990000,NULL),(112305,23576,174,'2019-07-03','amex',99.990000,NULL),(112308,23583,177,'2018-06-03','mastercard',109.990000,NULL),(112311,23590,180,'2018-06-03','discover',154.990000,NULL),(112314,23597,183,'2022-10-02','amex',74.990000,NULL),(112317,23604,186,'2018-06-03','mastercard',99.990000,NULL),(112320,23618,192,'2018-06-03','discover',154.990000,NULL),(112323,23625,195,'2019-07-03','amex',74.990000,NULL),(112326,23632,198,'2018-06-03','mastercard',99.990000,NULL),(112329,23639,201,'2018-06-03','discover',109.990000,NULL),(112332,23646,204,'2022-10-02','amex',154.990000,NULL),(112335,23653,207,'2022-10-02','amex',154.990000,NULL),(112390,23471,129,'2021-05-02','gpay',109.990000,20.001818),(113999,23471,129,'2021-05-02','gpay',109.990000,20.001818),(114000,23478,132,'2021-05-02','applepay',154.990000,14.194464),(114001,23485,135,'2019-06-03','samsungpay',74.990000,29.337245),(114002,23492,138,'2021-06-03','gpay',99.990000,22.002200),(114003,23499,141,'2022-10-02','samsungpay',109.990000,20.001818);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_payment_insert` BEFORE INSERT ON `payment` FOR EACH ROW set new.tax  = (22/new.price)*100 */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_id` int NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `price` decimal(10,6) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `base` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Bolt_on` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `tax` decimal(10,6) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (111,'entertainment',74.990000,'30 days','T',NULL,0.000000),(112,'Choice',99.990000,'30 days','T',NULL,0.000000),(114,'Ultimate',109.990000,'30 days','T',NULL,0.000000),(155,'Premier ',154.990000,'30 days','T',NULL,0.000000),(1111,'Hbomax',14.990000,'30 days',NULL,'T',0.000000),(1121,'Showtime',11.000000,'30 days',NULL,'T',0.000000),(1141,'Epix',6.000000,'30 days',NULL,'T',0.000000),(1551,'starz ',11.000000,'30 days',NULL,'T',0.000000);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `product_count`
--

DROP TABLE IF EXISTS `product_count`;
/*!50001 DROP VIEW IF EXISTS `product_count`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `product_count` AS SELECT 
 1 AS `name`,
 1 AS `count`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `promotion`
--

DROP TABLE IF EXISTS `promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promotion` (
  `promotion_id` int NOT NULL,
  `promotion_code` varchar(30) NOT NULL,
  `promotion_name` varchar(30) NOT NULL,
  `price_off` varchar(30) NOT NULL,
  PRIMARY KEY (`promotion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion`
--

LOCK TABLES `promotion` WRITE;
/*!40000 ALTER TABLE `promotion` DISABLE KEYS */;
INSERT INTO `promotion` VALUES (1,'off_10','10$off','10'),(2,'off_5','5$off','5'),(3,'off_15','15$off','15');
/*!40000 ALTER TABLE `promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `total_collections`
--

DROP TABLE IF EXISTS `total_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `total_collections` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` char(30) NOT NULL,
  `collections` decimal(10,3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `total_collections`
--

LOCK TABLES `total_collections` WRITE;
/*!40000 ALTER TABLE `total_collections` DISABLE KEYS */;
INSERT INTO `total_collections` VALUES (1,'totally_charged_amount',7000.000),(2,'tax',1000.000),(3,'refund',700.000);
/*!40000 ALTER TABLE `total_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `arpu_customer`
--

/*!50001 DROP VIEW IF EXISTS `arpu_customer`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `arpu_customer` AS select sum(`p`.`price`) AS `sum(price)`,year(`p`.`payment_date`) AS `year`,`a`.`FirstName` AS `FirstName`,`a`.`email` AS `email` from (`contact` `a` join `payment` `p` on((`p`.`contact_id` = `a`.`contact_id`))) group by year(`p`.`payment_date`),`a`.`FirstName`,`a`.`email` order by year(`p`.`payment_date`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `product_count`
--

/*!50001 DROP VIEW IF EXISTS `product_count`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `product_count` AS select `p`.`Name` AS `name`,count(distinct `op`.`ordered_product_id`) AS `count` from (`product` `p` join `ordered_product` `op` on((`op`.`product_id` = `p`.`product_id`))) group by `p`.`Name` */;
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

-- Dump completed on 2023-04-25  4:46:08
