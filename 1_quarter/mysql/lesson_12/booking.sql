-- MySQL dump 10.13  Distrib 8.0.17, for macos10.14 (x86_64)
--
-- Host: localhost    Database: booking
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `hotel_id` int(11) NOT NULL,
  `room_id` int(10) NOT NULL,
  `client_id` int(10) NOT NULL,
  `date_from` datetime NOT NULL,
  `date_to` datetime NOT NULL,
  `it_is_paid` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`,`hotel_id`,`room_id`,`client_id`),
  KEY `bookings_IDX1` (`client_id`),
  KEY `bookings_IDX2` (`hotel_id`),
  KEY `bookings_IDX3` (`room_id`,`hotel_id`),
  CONSTRAINT `client_fk` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  CONSTRAINT `hotel_fk` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`),
  CONSTRAINT `room_fk` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Заказы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `citys`
--

DROP TABLE IF EXISTS `citys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `citys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `descr` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `citys_IDX1` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `sex` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Клиенты';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `currency`
--

DROP TABLE IF EXISTS `currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currency` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `descr` varchar(150) NOT NULL,
  `multiplicity` decimal(10,3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `exchange`
--

DROP TABLE IF EXISTS `exchange`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exchange` (
  `currency_id` int(4) NOT NULL,
  `currency_base_id` int(4) NOT NULL,
  `date` datetime NOT NULL,
  `value` decimal(10,3) DEFAULT NULL,
  PRIMARY KEY (`currency_id`,`currency_base_id`,`date`),
  KEY `exchange_fk2` (`currency_base_id`),
  CONSTRAINT `exchange_fk` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`id`),
  CONSTRAINT `exchange_fk2` FOREIGN KEY (`currency_base_id`) REFERENCES `currency` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fotos`
--

DROP TABLE IF EXISTS `fotos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fotos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hotel_id` int(10) NOT NULL,
  `path_size1` varchar(1024) NOT NULL,
  `path_size2` varchar(1024) NOT NULL,
  `path_size_hd` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fotos_fk` (`hotel_id`),
  CONSTRAINT `fotos_fk` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Фото';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hotel_types`
--

DROP TABLE IF EXISTS `hotel_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotel_types` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hotels`
--

DROP TABLE IF EXISTS `hotels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `descr` varchar(100) DEFAULT NULL,
  `stars` int(1) DEFAULT NULL,
  `hotel_type` int(2) DEFAULT NULL,
  `city_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hotels_fk` (`hotel_type`),
  KEY `hotels_IDX1` (`id`),
  KEY `hotels_IDX2` (`city_id`),
  CONSTRAINT `hotels_fk` FOREIGN KEY (`hotel_type`) REFERENCES `hotel_types` (`id`),
  CONSTRAINT `hotels_fk2` FOREIGN KEY (`city_id`) REFERENCES `citys` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lessors`
--

DROP TABLE IF EXISTS `lessors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lessors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `descr` varchar(150) NOT NULL,
  `role` enum('director','staff') DEFAULT NULL,
  `hotel_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `lessor_fk` (`hotel_id`),
  CONSTRAINT `lessor_fk` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locations` (
  `hotel_id` int(10) NOT NULL,
  `adr` varchar(1024) NOT NULL,
  `latitude` decimal(9,6) NOT NULL,
  `longitude` decimal(9,6) NOT NULL,
  PRIMARY KEY (`hotel_id`),
  CONSTRAINT `locations_fk` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `lessor_id` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `date` datetime NOT NULL,
  `mess` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `client_fk2` (`client_id`),
  KEY `lessor_fk2` (`lessor_id`),
  CONSTRAINT `client_fk2` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  CONSTRAINT `lessor_fk2` FOREIGN KEY (`lessor_id`) REFERENCES `lessors` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Переписка';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `prices`
--

DROP TABLE IF EXISTS `prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prices` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `hotel_id` int(11) NOT NULL,
  `room_id` int(10) NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `currency_id` int(4) NOT NULL,
  `date_from` datetime NOT NULL,
  `date_to` datetime NOT NULL,
  `is_mepty` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`,`hotel_id`,`room_id`,`currency_id`),
  KEY `currency_fk` (`currency_id`),
  KEY `hotel_fk` (`hotel_id`),
  KEY `room_fk` (`room_id`),
  KEY `prices_IDX1` (`id`),
  KEY `prices_IDX2` (`hotel_id`),
  KEY `prices_IDX3` (`date_from`,`date_to`,`is_mepty`),
  CONSTRAINT `currency_fk2` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`id`),
  CONSTRAINT `hotel_fk2` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`),
  CONSTRAINT `room_fk2` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Предложение или прайс';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`%`*/ /*!50003 TRIGGER `tr_date_cor` BEFORE INSERT ON `prices` FOR EACH ROW set NEW.date_from = DATE_FORMAT(NEW.date_from,'%Y-%m-%d 14-00-00')
and NEW.date_to = DATE_FORMAT(NEW.date_to,'%Y-%m-%d 12-00-00') */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `responses`
--

DROP TABLE IF EXISTS `responses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `responses` (
  `id` int(11) NOT NULL,
  `hotel_id` int(10) NOT NULL,
  `text` text NOT NULL,
  `star` int(1) NOT NULL,
  PRIMARY KEY (`id`,`hotel_id`),
  KEY `responses_fk` (`hotel_id`),
  CONSTRAINT `responses_fk` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Отзывы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hotel_id` int(10) NOT NULL,
  `num_of_rooms` int(2) NOT NULL,
  `ref1` tinyint(1) NOT NULL,
  `ref2` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rooms_fk` (`hotel_id`),
  KEY `rooms_IDX1` (`id`,`hotel_id`),
  CONSTRAINT `rooms_fk` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Номер в гостинице';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `v_bookings`
--

DROP TABLE IF EXISTS `v_bookings`;
/*!50001 DROP VIEW IF EXISTS `v_bookings`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_bookings` AS SELECT 
 1 AS `client`,
 1 AS `hotel`,
 1 AS `room`,
 1 AS `date_from`,
 1 AS `date_to`,
 1 AS `is_paid`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_price`
--

DROP TABLE IF EXISTS `v_price`;
/*!50001 DROP VIEW IF EXISTS `v_price`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_price` AS SELECT 
 1 AS `id`,
 1 AS `city`,
 1 AS `hotel`,
 1 AS `room`,
 1 AS `ref1`,
 1 AS `ref2`,
 1 AS `amount`,
 1 AS `date_from`,
 1 AS `date_to`,
 1 AS `is_mepty`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `v_bookings`
--

/*!50001 DROP VIEW IF EXISTS `v_bookings`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_bookings` AS select `c`.`name` AS `client`,`h`.`name` AS `hotel`,`r`.`num_of_rooms` AS `room`,`my_b`.`date_from` AS `date_from`,`my_b`.`date_to` AS `date_to`,`my_b`.`it_is_paid` AS `is_paid` from (((`bookings` `my_b` join `clients` `c` on((`my_b`.`client_id` = `c`.`id`))) join `hotels` `h` on((`my_b`.`hotel_id` = `h`.`id`))) join `rooms` `r` on(((`my_b`.`room_id` = `r`.`id`) and (`my_b`.`hotel_id` = `r`.`hotel_id`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_price`
--

/*!50001 DROP VIEW IF EXISTS `v_price`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_price` AS select `p`.`id` AS `id`,`c`.`name` AS `city`,`h`.`name` AS `hotel`,`r`.`num_of_rooms` AS `room`,`r`.`ref1` AS `ref1`,`r`.`ref2` AS `ref2`,`p`.`amount` AS `amount`,`p`.`date_from` AS `date_from`,`p`.`date_to` AS `date_to`,`p`.`is_mepty` AS `is_mepty` from (((`prices` `p` join `hotels` `h` on((`p`.`hotel_id` = `h`.`id`))) join `rooms` `r` on(((`p`.`room_id` = `r`.`id`) and (`r`.`hotel_id` = `p`.`hotel_id`)))) join `citys` `c` on((`c`.`id` = `h`.`city_id`))) */;
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

-- Dump completed on 2019-09-26 18:02:22
