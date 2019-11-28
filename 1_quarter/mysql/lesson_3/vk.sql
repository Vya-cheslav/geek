-- MySQL dump 10.13  Distrib 8.0.17, for macos10.14 (x86_64)
--
-- Host: localhost    Database: vk
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
-- Table structure for table `agg`
--

DROP TABLE IF EXISTS `agg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agg` (
  `likes_item_id` int(10) unsigned NOT NULL,
  `likes_count` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agg`
--

LOCK TABLES `agg` WRITE;
/*!40000 ALTER TABLE `agg` DISABLE KEYS */;
INSERT INTO `agg` VALUES (1,1),(1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(67,1),(68,1),(69,1),(70,1),(71,1),(72,1),(73,1),(74,1),(75,1),(76,1),(77,1),(78,1),(79,1),(80,1),(81,1),(82,1),(83,1),(84,1),(85,1),(86,1),(87,1),(88,1),(89,1),(90,1),(91,1),(92,1),(93,1),(94,1),(95,1),(96,1),(97,1),(98,1),(99,1),(100,1);
/*!40000 ALTER TABLE `agg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `communities`
--

DROP TABLE IF EXISTS `communities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communities`
--

LOCK TABLES `communities` WRITE;
/*!40000 ALTER TABLE `communities` DISABLE KEYS */;
INSERT INTO `communities` VALUES (13,'a'),(64,'ab'),(10,'accusamus'),(83,'accusantium'),(55,'alias'),(30,'aliquam'),(40,'aliquid'),(44,'amet'),(32,'animi'),(99,'aperiam'),(94,'aspernatur'),(70,'assumenda'),(2,'at'),(5,'aut'),(59,'autem'),(51,'commodi'),(16,'consectetur'),(58,'consequatur'),(48,'corporis'),(86,'culpa'),(80,'cumque'),(3,'deleniti'),(14,'dignissimos'),(97,'distinctio'),(81,'dolore'),(93,'dolores'),(8,'ea'),(25,'eaque'),(91,'eius'),(61,'eligendi'),(41,'eos'),(24,'est'),(52,'et'),(35,'eum'),(65,'ex'),(85,'excepturi'),(100,'exercitationem'),(75,'facilis'),(79,'harum'),(39,'hic'),(66,'impedit'),(78,'in'),(74,'inventore'),(71,'iure'),(17,'laboriosam'),(92,'laborum'),(90,'libero'),(43,'magni'),(18,'maiores'),(63,'minima'),(87,'modi'),(77,'molestiae'),(89,'molestias'),(12,'nam'),(29,'natus'),(20,'nihil'),(57,'nisi'),(15,'non'),(54,'nostrum'),(28,'nulla'),(96,'numquam'),(38,'occaecati'),(62,'odio'),(69,'odit'),(34,'officia'),(33,'omnis'),(84,'optio'),(21,'perferendis'),(47,'perspiciatis'),(7,'porro'),(23,'quaerat'),(46,'quam'),(4,'quasi'),(6,'qui'),(26,'quia'),(88,'quidem'),(72,'quo'),(68,'quos'),(67,'ratione'),(98,'rem'),(27,'repellat'),(9,'reprehenderit'),(36,'repudiandae'),(53,'rerum'),(76,'sapiente'),(22,'sed'),(31,'sequi'),(42,'sint'),(45,'sit'),(60,'sunt'),(95,'tempore'),(19,'unde'),(56,'ut'),(82,'vel'),(1,'velit'),(49,'veritatis'),(11,'voluptas'),(73,'voluptatem'),(50,'voluptates'),(37,'voluptatum');
/*!40000 ALTER TABLE `communities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `communities_users`
--

DROP TABLE IF EXISTS `communities_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`community_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communities_users`
--

LOCK TABLES `communities_users` WRITE;
/*!40000 ALTER TABLE `communities_users` DISABLE KEYS */;
INSERT INTO `communities_users` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30),(31,31),(32,32),(33,33),(34,34),(35,35),(36,36),(37,37),(38,38),(39,39),(40,40),(41,41),(42,42),(43,43),(44,44),(45,45),(46,46),(47,47),(48,48),(49,49),(50,50),(51,51),(52,52),(53,53),(54,54),(55,55),(56,56),(57,57),(58,58),(59,59),(60,60),(61,61),(62,62),(63,63),(64,64),(65,65),(66,66),(67,67),(68,68),(69,69),(70,70),(71,71),(72,72),(73,73),(74,74),(75,75),(76,76),(77,77),(78,78),(79,79),(80,80),(81,81),(82,82),(83,83),(84,84),(85,85),(86,86),(87,87),(88,88),(89,89),(90,90),(91,91),(92,92),(93,93),(94,94),(95,95),(96,96),(97,97),(98,98),(99,99),(100,100);
/*!40000 ALTER TABLE `communities_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friendship`
--

DROP TABLE IF EXISTS `friendship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL,
  `friend_id` int(10) unsigned NOT NULL,
  `status` varchar(20) NOT NULL,
  `requested_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `confirmed_at` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`,`friend_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friendship`
--

LOCK TABLES `friendship` WRITE;
/*!40000 ALTER TABLE `friendship` DISABLE KEYS */;
INSERT INTO `friendship` VALUES (1,1,'Quisquam odit conseq','1977-01-11 12:08:45','2011-08-22 02:17:29'),(2,2,'Minus facere non rep','2013-09-02 19:01:13','1975-10-24 20:19:05'),(3,3,'Neque sint cumque vo','1988-07-21 04:55:11','2007-01-20 21:33:57'),(4,4,'Ducimus sapiente non','1999-10-20 00:47:07','1975-05-25 12:57:58'),(5,5,'Quas fugit illo dolo','1987-11-19 08:46:29','1988-08-09 19:57:55'),(6,6,'Totam saepe at adipi','1975-04-06 02:52:36','2007-03-12 04:57:59'),(7,7,'Eius cumque dolore s','2005-10-13 13:00:05','1975-09-08 14:08:59'),(8,8,'Eum corrupti harum e','1991-12-18 02:35:07','1989-05-07 11:31:37'),(9,9,'Autem id nihil solut','2013-06-04 05:57:33','2004-01-25 09:22:21'),(10,10,'Sint ut in asperiore','1971-12-18 21:57:19','1977-08-09 18:48:38'),(11,11,'Temporibus facilis t','2003-07-07 04:53:58','2012-10-31 21:53:49'),(12,12,'Vitae et sed dolorem','2004-08-31 17:55:52','1989-11-23 14:08:52'),(13,13,'Dicta deserunt accus','2000-11-03 04:46:02','2017-12-08 09:16:59'),(14,14,'Aperiam rerum eaque ','2006-08-12 13:46:10','1987-03-06 13:50:56'),(15,15,'Totam inventore nemo','1979-12-29 04:52:18','2008-03-13 03:10:13'),(16,16,'Velit sint itaque ul','1973-10-13 11:07:27','2005-10-02 21:19:15'),(17,17,'Voluptas sed delenit','2014-03-31 00:29:45','1994-10-17 21:41:05'),(18,18,'Quia non ratione ani','1978-12-07 17:33:05','2004-03-19 17:47:49'),(19,19,'Corrupti et molestia','1970-05-02 09:06:11','1993-10-02 06:42:29'),(20,20,'Iure ipsam non illo ','1985-06-18 03:54:30','1989-01-21 01:37:38'),(21,21,'Magnam numquam solut','1972-10-01 04:31:34','1987-09-15 17:14:34'),(22,22,'Nihil dolores et qui','1977-12-15 06:21:35','2002-12-21 01:38:26'),(23,23,'Facere est eveniet q','1980-01-20 06:44:04','2014-09-24 13:01:56'),(24,24,'Magnam dignissimos m','2000-12-08 11:33:06','1981-04-29 09:27:02'),(25,25,'Omnis expedita aliqu','1994-09-04 00:45:12','1983-06-11 12:19:59'),(26,26,'Assumenda exercitati','1971-02-17 22:21:02','2005-10-09 12:08:39'),(27,27,'Quibusdam maxime err','2007-05-25 13:55:54','2009-06-08 08:17:57'),(28,28,'Officiis minus neces','2018-06-25 06:04:17','2013-10-01 20:02:41'),(29,29,'Et sit enim voluptat','2015-08-07 04:20:40','1978-01-27 20:57:30'),(30,30,'Totam itaque ullam v','2018-03-01 04:31:08','1993-02-22 21:17:20'),(31,31,'Consequatur voluptas','1977-10-02 12:41:09','1998-12-05 04:20:57'),(32,32,'Ipsa et non enim ass','1971-10-03 05:57:16','2005-09-17 06:00:38'),(33,33,'Nostrum at veniam po','1979-08-12 03:54:13','2009-01-28 17:15:52'),(34,34,'Et vitae iure expedi','1997-07-21 12:32:49','2004-12-02 23:32:37'),(35,35,'Fuga et totam except','1992-05-05 05:56:57','2008-06-11 17:28:34'),(36,36,'Qui illum sit et vel','1980-09-14 17:57:21','1995-06-15 15:25:46'),(37,37,'Reprehenderit ea non','2002-04-17 12:41:53','1980-08-17 14:07:51'),(38,38,'Vel cumque iure est ','1973-01-12 09:01:50','1996-09-15 00:09:12'),(39,39,'Dolore fuga molestia','1991-05-30 11:38:13','2015-06-03 09:36:51'),(40,40,'Occaecati rerum volu','2012-11-07 18:42:44','1994-05-26 07:57:27'),(41,41,'Nesciunt nam quasi s','1996-03-20 14:04:15','1990-04-26 16:50:35'),(42,42,'Consequatur velit in','1998-06-24 02:11:48','1970-12-17 11:42:53'),(43,43,'Commodi occaecati mo','1989-09-17 01:58:06','1995-03-06 00:32:57'),(44,44,'Et aut quidem ex. Of','2006-03-12 15:37:33','1993-05-05 23:26:52'),(45,45,'Voluptas minima rem ','2019-01-17 04:33:41','2013-11-19 12:28:46'),(46,46,'Ratione sint aut pro','2004-05-13 23:50:15','1985-08-30 20:06:49'),(47,47,'Est vitae accusamus ','1985-11-25 02:07:08','1998-02-25 03:35:41'),(48,48,'Voluptatibus sequi q','1983-10-25 03:58:27','2002-02-05 10:35:51'),(49,49,'Quis laboriosam volu','1979-01-29 03:02:54','1978-10-27 20:07:50'),(50,50,'Minima explicabo del','2017-12-09 06:21:30','1988-04-30 05:34:26'),(51,51,'Veritatis voluptatem','1971-01-03 09:25:56','1983-08-04 21:03:18'),(52,52,'Quas ratione et repe','2018-11-13 12:19:10','1979-10-04 06:47:03'),(53,53,'Nobis quaerat et eve','1975-09-14 07:04:56','1971-07-26 12:28:51'),(54,54,'Voluptate est deleni','2008-11-02 05:58:21','2002-10-04 04:05:54'),(55,55,'Provident hic simili','2010-02-18 14:08:43','2002-06-09 07:48:25'),(56,56,'Eius voluptatem est ','2000-11-20 20:17:30','2015-06-19 00:23:13'),(57,57,'Vero saepe sit aliqu','2015-01-29 10:59:53','2006-01-08 18:09:51'),(58,58,'Est aut ullam aperia','1997-01-05 17:20:47','1997-04-24 07:42:35'),(59,59,'In non iusto tempora','1986-03-02 21:24:55','1995-05-13 13:03:11'),(60,60,'Non totam debitis mo','2008-01-31 08:23:51','2005-04-25 15:22:24'),(61,61,'Fugiat nobis repella','1981-07-10 03:19:18','1994-08-02 14:09:09'),(62,62,'Nisi sed dignissimos','2007-11-09 12:26:07','1971-12-07 08:21:06'),(63,63,'Et facere eaque recu','1993-12-16 20:23:49','1985-09-23 20:52:46'),(64,64,'Aut iure sed nam exp','1990-09-11 18:26:40','1991-07-03 16:47:30'),(65,65,'Autem inventore reru','1997-05-01 10:43:48','2002-08-11 22:51:26'),(66,66,'Itaque reprehenderit','2010-11-21 11:20:43','1998-05-14 10:41:23'),(67,67,'Natus mollitia aperi','2011-09-08 08:32:09','2019-01-13 22:24:49'),(68,68,'Atque ea quo ad omni','1980-01-06 00:42:34','1999-12-09 15:25:31'),(69,69,'Tenetur et repudiand','1987-11-26 19:38:38','1992-12-10 17:19:00'),(70,70,'Totam fugit corrupti','2009-07-18 08:46:06','2001-03-21 21:31:52'),(71,71,'Accusantium explicab','2016-09-28 19:57:14','1987-09-28 19:24:10'),(72,72,'Corporis nesciunt mo','2004-04-07 19:15:36','2007-01-31 21:52:42'),(73,73,'Temporibus occaecati','1997-05-16 05:15:35','2004-05-23 18:07:26'),(74,74,'Tenetur hic ea omnis','1987-01-18 10:05:44','1975-10-20 06:14:07'),(75,75,'Voluptatibus eum in ','1973-11-27 04:49:00','2007-07-22 01:04:37'),(76,76,'Dolore aut praesenti','1975-06-04 20:26:26','2001-11-11 00:19:48'),(77,77,'Iure debitis digniss','2005-05-07 05:28:24','1996-08-12 08:10:34'),(78,78,'Placeat natus eius i','2010-06-22 12:29:48','1986-12-17 00:10:34'),(79,79,'Perspiciatis eos et ','2018-01-11 22:28:57','1983-12-28 09:59:08'),(80,80,'Modi qui omnis non a','1987-07-23 23:53:49','1982-10-11 13:26:20'),(81,81,'Eos ducimus voluptat','1973-12-15 08:18:52','2013-07-26 01:54:23'),(82,82,'Fugiat distinctio et','1994-05-28 21:45:50','2017-06-23 01:46:18'),(83,83,'Voluptas doloremque ','2009-05-04 02:27:46','2011-02-15 13:03:04'),(84,84,'Omnis id deserunt vo','1978-05-28 20:29:46','2003-06-25 14:43:25'),(85,85,'Aliquid est molestia','1972-02-14 21:45:22','2004-04-30 20:59:03'),(86,86,'Nisi odio adipisci n','2003-08-19 11:28:17','1985-02-26 01:47:15'),(87,87,'Earum et velit atque','1975-09-24 00:21:21','1997-06-17 12:16:41'),(88,88,'Qui laboriosam neque','1998-01-18 02:48:33','2012-08-22 11:00:25'),(89,89,'Dolores illo facere ','1985-09-03 14:28:36','1986-06-14 02:00:48'),(90,90,'Nihil sed dolorem re','2018-05-02 01:11:46','1983-02-13 10:35:20'),(91,91,'Quia magnam quia off','2006-09-11 22:18:05','1985-09-02 17:00:09'),(92,92,'Nihil tenetur volupt','1984-08-24 18:48:11','1983-02-19 07:53:59'),(93,93,'Laudantium itaque ar','1996-10-29 07:51:39','2000-04-16 22:47:23'),(94,94,'Dolores possimus ius','1977-02-21 06:44:52','2005-04-29 00:17:42'),(95,95,'Recusandae architect','2004-09-30 02:04:58','2007-04-16 01:24:46'),(96,96,'Et non eveniet est s','1989-11-01 04:06:02','1970-07-28 01:26:01'),(97,97,'Voluptatem veritatis','1989-05-24 17:25:13','1972-06-22 16:22:14'),(98,98,'Et ut velit repellen','2018-02-10 09:54:52','2004-03-29 18:56:21'),(99,99,'Ex ad autem a labori','1981-07-17 17:07:34','2002-08-12 08:07:53'),(100,100,'Sit animi iure conse','1991-06-18 20:36:05','2006-09-06 08:22:41');
/*!40000 ALTER TABLE `friendship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(10) unsigned NOT NULL,
  `media_type_id` int(10) unsigned NOT NULL,
  `owner_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (1,1,1,1),(2,2,2,2),(3,3,3,3),(4,4,4,4),(5,5,5,5),(6,6,6,6),(7,7,7,7),(8,8,8,8),(9,9,9,9),(10,10,10,10),(11,11,11,11),(12,12,12,12),(13,13,13,13),(14,14,14,14),(15,15,15,15),(16,16,16,16),(17,17,17,17),(18,18,18,18),(19,19,19,19),(20,20,20,20),(21,21,21,21),(22,22,22,22),(23,23,23,23),(24,24,24,24),(25,25,25,25),(26,26,26,26),(27,27,27,27),(28,28,28,28),(29,29,29,29),(30,30,30,30),(31,31,31,31),(32,32,32,32),(33,33,33,33),(34,34,34,34),(35,35,35,35),(36,36,36,36),(37,37,37,37),(38,38,38,38),(39,39,39,39),(40,40,40,40),(41,41,41,41),(42,42,42,42),(43,43,43,43),(44,44,44,44),(45,45,45,45),(46,46,46,46),(47,47,47,47),(48,48,48,48),(49,49,49,49),(50,50,50,50),(51,51,51,51),(52,52,52,52),(53,53,53,53),(54,54,54,54),(55,55,55,55),(56,56,56,56),(57,57,57,57),(58,58,58,58),(59,59,59,59),(60,60,60,60),(61,61,61,61),(62,62,62,62),(63,63,63,63),(64,64,64,64),(65,65,65,65),(66,66,66,66),(67,67,67,67),(68,68,68,68),(69,69,69,69),(70,70,70,70),(71,71,71,71),(72,72,72,72),(73,73,73,73),(74,74,74,74),(75,75,75,75),(76,76,76,76),(77,77,77,77),(78,78,78,78),(79,79,79,79),(80,80,80,80),(81,81,81,81),(82,82,82,82),(83,83,83,83),(84,84,84,84),(85,85,85,85),(86,86,86,86),(87,87,87,87),(88,88,88,88),(89,89,89,89),(90,90,90,90),(91,91,91,91),(92,92,92,92),(93,93,93,93),(94,94,94,94),(95,95,95,95),(96,96,96,96),(97,97,97,97),(98,98,98,98),(99,99,99,99),(100,100,100,100);
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insert_likes` BEFORE INSERT ON `likes` FOR EACH ROW update agg set likes_count = likes_count + 1 where likes_item_id = NEW.item_id */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `delete_likes` BEFORE DELETE ON `likes` FOR EACH ROW update agg set likes_count = likes_count - 1 where likes_item_id = OLD.item_id */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `media_type_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `filename` varchar(255) NOT NULL,
  `size` int(11) NOT NULL,
  `metadata` json DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,1,1,'nisi',50,NULL,'1993-03-17 04:16:28','2017-10-08 05:58:42'),(2,2,2,'sunt',955884980,NULL,'1994-05-26 15:00:01','1980-07-24 02:02:58'),(3,3,3,'itaque',9492940,NULL,'1982-12-02 18:48:36','1973-05-13 19:58:49'),(4,4,4,'deleniti',950,NULL,'1993-02-26 13:58:49','2017-10-28 01:49:37'),(5,5,5,'perferendis',39262,NULL,'1992-05-02 01:48:44','2006-06-20 13:55:59'),(6,6,6,'qui',184304,NULL,'1999-07-04 19:00:27','1970-08-24 09:00:45'),(7,7,7,'doloribus',62848,NULL,'2008-02-12 15:16:38','1990-01-04 12:42:22'),(8,8,8,'sunt',8337,NULL,'2005-09-02 20:01:06','2004-05-06 03:04:38'),(9,9,9,'quia',51367,NULL,'1986-09-13 18:05:05','2014-04-15 02:14:19'),(10,10,10,'ab',610,NULL,'1990-11-20 15:25:51','1991-09-17 16:25:38'),(11,11,11,'aliquid',73407,NULL,'1985-03-28 07:15:40','1999-02-12 18:57:53'),(12,12,12,'animi',730063049,NULL,'1982-01-15 00:17:37','1988-07-02 07:31:31'),(13,13,13,'aut',6623,NULL,'2015-10-04 20:22:05','1975-08-06 17:38:47'),(14,14,14,'laborum',46054,NULL,'1972-06-20 17:20:15','1995-08-30 19:22:56'),(15,15,15,'optio',179,NULL,'2009-08-31 00:14:39','1986-10-16 15:25:27'),(16,16,16,'est',5614,NULL,'1980-11-07 14:15:09','2005-04-11 11:31:33'),(17,17,17,'enim',93,NULL,'1985-06-15 19:26:45','1993-01-06 14:49:01'),(18,18,18,'ad',44883469,NULL,'1982-10-19 14:20:13','1988-08-17 06:27:49'),(19,19,19,'rerum',2525,NULL,'2008-01-14 22:38:49','1987-11-12 06:09:53'),(20,20,20,'recusandae',498183439,NULL,'1978-06-18 22:20:08','1990-03-20 21:55:39'),(21,21,21,'porro',3335964,NULL,'1993-01-22 03:43:33','2009-03-08 01:01:57'),(22,22,22,'perferendis',3,NULL,'2000-03-15 10:50:21','1989-02-12 15:19:30'),(23,23,23,'cupiditate',32557,NULL,'2006-07-05 14:45:12','2005-11-29 17:18:53'),(24,24,24,'ut',538,NULL,'1974-11-26 16:43:46','1998-03-19 04:23:04'),(25,25,25,'consequuntur',3635821,NULL,'1973-06-19 11:37:59','1999-12-14 08:05:30'),(26,26,26,'ea',90,NULL,'1974-03-21 19:58:42','2001-09-07 23:37:36'),(27,27,27,'quas',17565,NULL,'1997-05-08 08:56:44','2010-09-11 15:40:06'),(28,28,28,'quo',1,NULL,'2003-09-08 12:54:16','2011-07-14 12:35:41'),(29,29,29,'sit',933478188,NULL,'2018-09-03 06:51:47','2019-06-30 14:26:02'),(30,30,30,'omnis',98597796,NULL,'1982-10-30 18:37:51','2019-03-26 10:23:34'),(31,31,31,'eaque',73286,NULL,'2008-01-12 15:45:53','1992-03-24 03:23:24'),(32,32,32,'odit',709176688,NULL,'2003-10-04 00:04:08','1994-06-26 00:40:09'),(33,33,33,'nesciunt',9656,NULL,'1970-12-06 09:41:01','1986-10-04 08:52:38'),(34,34,34,'natus',18,NULL,'1992-05-15 00:00:25','1998-08-01 12:28:40'),(35,35,35,'dolorem',4,NULL,'1976-03-04 09:28:38','1974-07-06 00:31:21'),(36,36,36,'qui',42,NULL,'1999-11-02 03:01:33','1987-04-28 07:30:13'),(37,37,37,'accusamus',682,NULL,'2007-05-16 22:12:26','1997-12-02 22:40:34'),(38,38,38,'ipsa',4768899,NULL,'1978-08-31 13:00:03','1973-03-22 12:08:35'),(39,39,39,'molestiae',81061698,NULL,'2009-11-08 15:30:04','2019-06-15 13:27:59'),(40,40,40,'impedit',99222,NULL,'1992-11-12 02:58:49','2006-11-29 06:11:32'),(41,41,41,'delectus',0,NULL,'1992-02-10 03:23:26','1979-03-29 15:49:47'),(42,42,42,'id',91300,NULL,'2019-05-21 19:10:56','1977-10-12 20:44:47'),(43,43,43,'sunt',808614317,NULL,'1983-08-08 23:01:40','1998-11-11 02:23:19'),(44,44,44,'nemo',264587,NULL,'1977-04-04 21:42:08','1996-01-26 07:19:02'),(45,45,45,'sint',3945794,NULL,'1997-05-03 03:13:59','2004-08-01 19:28:38'),(46,46,46,'sed',91,NULL,'2017-11-05 00:10:36','2011-02-11 17:52:15'),(47,47,47,'illo',6,NULL,'2006-05-30 12:43:51','1980-04-14 16:13:03'),(48,48,48,'reiciendis',447,NULL,'1996-11-30 10:31:01','1971-04-17 11:53:44'),(49,49,49,'animi',3459,NULL,'2010-06-07 15:47:25','1991-12-12 07:36:10'),(50,50,50,'eos',864499708,NULL,'2014-01-27 14:28:49','2010-12-28 06:18:04'),(51,51,51,'eum',84977293,NULL,'2006-11-10 01:18:13','2003-03-28 10:23:35'),(52,52,52,'occaecati',5,NULL,'1988-07-10 20:29:31','1988-05-03 08:16:54'),(53,53,53,'asperiores',267,NULL,'1987-12-30 18:02:53','1997-06-11 11:41:08'),(54,54,54,'voluptas',86,NULL,'1990-04-27 22:50:15','1985-08-16 16:20:46'),(55,55,55,'veritatis',51439,NULL,'2012-03-17 13:09:05','2001-02-12 17:46:14'),(56,56,56,'minus',867,NULL,'2018-10-24 21:04:49','1983-12-31 05:23:46'),(57,57,57,'praesentium',6838039,NULL,'1989-02-09 05:47:15','2008-12-01 17:29:48'),(58,58,58,'quae',86,NULL,'2001-11-17 20:16:25','1980-08-09 03:40:55'),(59,59,59,'eaque',1026005,NULL,'2014-10-22 15:16:20','2009-08-20 19:43:20'),(60,60,60,'libero',5,NULL,'1994-12-20 01:31:24','2007-11-20 22:58:33'),(61,61,61,'necessitatibus',32562,NULL,'1990-12-09 13:17:25','1997-01-01 04:01:41'),(62,62,62,'totam',15406,NULL,'2000-10-07 04:40:15','2010-05-18 05:22:31'),(63,63,63,'asperiores',76923,NULL,'1982-04-04 17:00:44','1994-05-26 09:47:42'),(64,64,64,'ut',7435583,NULL,'2007-12-15 14:06:52','2013-08-26 06:44:26'),(65,65,65,'quod',7067447,NULL,'1974-05-28 09:58:40','2019-06-02 01:59:32'),(66,66,66,'aspernatur',631,NULL,'2002-08-25 23:44:50','2007-03-09 07:09:04'),(67,67,67,'voluptatem',435712931,NULL,'2005-03-23 01:38:51','1973-08-30 04:32:56'),(68,68,68,'temporibus',579797,NULL,'1993-07-21 12:44:31','1975-03-04 20:55:05'),(69,69,69,'in',37715,NULL,'2003-05-08 09:25:48','1985-09-09 18:15:00'),(70,70,70,'labore',38329,NULL,'2014-07-11 16:21:14','1988-08-07 01:27:41'),(71,71,71,'ipsum',34,NULL,'1993-10-30 09:04:02','2018-02-25 13:55:57'),(72,72,72,'blanditiis',41,NULL,'1994-01-27 14:53:25','1988-02-09 01:36:38'),(73,73,73,'enim',12172,NULL,'1989-09-21 10:41:48','1980-11-08 16:06:37'),(74,74,74,'itaque',230,NULL,'1972-09-27 08:06:39','1972-04-16 13:09:40'),(75,75,75,'quia',376246,NULL,'1970-05-07 11:45:38','2009-03-11 00:54:21'),(76,76,76,'consequatur',4112548,NULL,'1997-07-10 04:09:42','1981-06-21 05:53:13'),(77,77,77,'velit',525883,NULL,'1983-09-05 19:56:24','1998-02-25 21:11:33'),(78,78,78,'nostrum',2498211,NULL,'2000-01-09 17:05:42','2011-06-09 18:38:05'),(79,79,79,'assumenda',1096565,NULL,'1974-07-09 22:11:14','2004-02-05 17:12:01'),(80,80,80,'rerum',88547,NULL,'2008-06-26 15:19:55','2017-01-29 12:51:51'),(81,81,81,'dolores',4889825,NULL,'2005-01-07 21:57:28','1992-07-23 10:14:52'),(82,82,82,'aut',55552736,NULL,'2009-09-03 07:00:43','2008-12-23 07:08:31'),(83,83,83,'ad',13663630,NULL,'1971-04-28 15:24:20','1997-04-15 13:17:56'),(84,84,84,'dolores',880697,NULL,'1993-03-24 06:56:53','2013-04-20 11:25:15'),(85,85,85,'qui',149981,NULL,'2014-07-24 20:49:51','2007-12-26 05:04:49'),(86,86,86,'officia',6,NULL,'2001-11-18 09:10:10','1992-06-07 10:08:27'),(87,87,87,'iste',9923,NULL,'2008-11-08 10:20:09','2016-03-31 08:51:59'),(88,88,88,'laudantium',82,NULL,'1970-09-21 08:24:37','1994-11-11 09:13:37'),(89,89,89,'omnis',1556,NULL,'2012-10-10 08:31:26','2006-11-23 13:08:43'),(90,90,90,'id',561179845,NULL,'1976-11-28 14:24:26','1987-04-29 12:48:50'),(91,91,91,'sapiente',5975,NULL,'1978-04-21 05:27:56','2018-12-26 22:27:44'),(92,92,92,'quo',93943,NULL,'1993-07-27 15:22:05','1999-09-23 22:57:32'),(93,93,93,'eaque',6388592,NULL,'1984-05-03 12:31:12','1987-08-09 19:41:04'),(94,94,94,'quis',550463,NULL,'2013-11-13 19:33:41','2015-09-04 11:33:47'),(95,95,95,'iure',521531,NULL,'1993-06-13 10:11:59','2005-10-01 17:42:20'),(96,96,96,'vel',189829410,NULL,'1970-07-29 22:48:37','2010-12-06 00:53:21'),(97,97,97,'qui',5577,NULL,'1970-11-13 17:07:53','2004-11-20 07:37:01'),(98,98,98,'explicabo',0,NULL,'1991-06-22 17:51:50','1973-09-11 08:46:39'),(99,99,99,'consequatur',85254880,NULL,'1987-06-04 01:26:58','2004-02-13 23:59:10'),(100,100,100,'facere',1,NULL,'1979-11-15 10:45:33','2011-12-08 16:05:48');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insert_media` BEFORE INSERT ON `media` FOR EACH ROW insert into agg (likes_item_id, likes_count) values (NEW.id, 0) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `media_types`
--

DROP TABLE IF EXISTS `media_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_types`
--

LOCK TABLES `media_types` WRITE;
/*!40000 ALTER TABLE `media_types` DISABLE KEYS */;
INSERT INTO `media_types` VALUES (71,'ab'),(18,'accusamus'),(90,'ad'),(85,'aliquid'),(88,'amet'),(43,'architecto'),(98,'asperiores'),(82,'atque'),(28,'aut'),(25,'autem'),(49,'blanditiis'),(29,'commodi'),(56,'consectetur'),(77,'consequatur'),(68,'corporis'),(8,'debitis'),(26,'deleniti'),(65,'dolor'),(27,'dolorem'),(54,'doloremque'),(83,'dolores'),(95,'ducimus'),(81,'ea'),(30,'eaque'),(11,'eos'),(13,'est'),(9,'et'),(41,'eum'),(22,'eveniet'),(69,'ex'),(12,'expedita'),(44,'fuga'),(4,'fugiat'),(97,'fugit'),(16,'id'),(36,'in'),(17,'ipsa'),(89,'ipsum'),(92,'itaque'),(96,'labore'),(21,'laboriosam'),(93,'laudantium'),(19,'maiores'),(2,'minima'),(84,'minus'),(1,'modi'),(58,'molestiae'),(91,'molestias'),(32,'nemo'),(66,'nihil'),(10,'non'),(72,'nostrum'),(37,'odio'),(59,'odit'),(51,'officiis'),(38,'omnis'),(87,'optio'),(7,'pariatur'),(47,'perferendis'),(80,'placeat'),(5,'porro'),(74,'possimus'),(55,'praesentium'),(63,'provident'),(75,'quaerat'),(57,'quam'),(24,'qui'),(6,'quia'),(35,'quibusdam'),(46,'quidem'),(23,'quo'),(20,'quod'),(94,'reiciendis'),(64,'repellat'),(79,'repellendus'),(52,'reprehenderit'),(48,'repudiandae'),(86,'rerum'),(40,'saepe'),(31,'sapiente'),(3,'sed'),(33,'sequi'),(73,'sint'),(76,'sit'),(50,'soluta'),(70,'tempora'),(60,'tempore'),(45,'totam'),(39,'ullam'),(42,'unde'),(61,'ut'),(14,'velit'),(34,'veniam'),(99,'veritatis'),(15,'vero'),(100,'voluptas'),(78,'voluptate'),(67,'voluptates'),(53,'voluptatibus'),(62,'voluptatum');
/*!40000 ALTER TABLE `media_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `from_user_id` int(10) unsigned NOT NULL,
  `to_user_id` int(10) unsigned NOT NULL,
  `body` text NOT NULL,
  `important` tinyint(1) DEFAULT NULL,
  `delivered` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`from_user_id`,`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,1,'Quia dolor quia omnis odit. Quasi sint omnis accusantium rem pariatur incidunt quia. Dolores eos non nisi amet dicta blanditiis. Quibusdam magnam veniam id nihil. Quas ea maxime delectus eum voluptatem.',NULL,NULL,'1977-02-27 06:36:54'),(2,2,'Dolore veniam accusamus commodi saepe facere. Nostrum mollitia qui dolore ut illum minus. Quam nam ut nulla. Ut veniam ducimus esse.',NULL,NULL,'2014-05-29 11:44:34'),(3,3,'Enim et repellendus laboriosam nesciunt eos saepe. Repellendus fuga velit vitae accusamus. Quia iste ut doloremque id. Atque natus aut maxime eos dolor. Asperiores deleniti asperiores fugiat inventore qui.',NULL,NULL,'1989-07-14 18:02:48'),(4,4,'Nisi dolores dolorum dolorum minima omnis saepe. Dicta ullam totam repellat impedit. Harum assumenda et consequatur consectetur repudiandae illum ut.',NULL,NULL,'2015-05-25 08:05:03'),(5,5,'Beatae quia facere corrupti consequatur. Quidem distinctio dolorem repudiandae ab omnis. Provident adipisci nam non totam non aut. Impedit accusamus in doloribus repudiandae itaque maxime.',NULL,NULL,'1997-01-08 15:57:55'),(6,6,'Qui perspiciatis doloremque repellat. Eius impedit sunt nostrum vero. Quod laudantium fugit aspernatur nemo.',NULL,NULL,'1989-01-08 19:37:21'),(7,7,'Temporibus quidem aliquid esse. Libero non numquam sapiente vel. Optio distinctio fugiat nostrum voluptas. Eum fuga quo quam corporis enim deleniti voluptates dicta.',NULL,NULL,'2007-03-17 04:43:56'),(8,8,'Est iste qui necessitatibus doloremque. Animi accusamus placeat quod voluptates magnam temporibus. Sunt quos earum recusandae veniam ut sint dolor. Officiis modi adipisci nihil quis quas accusantium est.',NULL,NULL,'2006-03-27 22:09:24'),(9,9,'Numquam ea quas nihil laborum tempore voluptatibus ut. Qui esse quidem quam nobis molestiae inventore nihil quia. Mollitia tempora corrupti iusto modi assumenda. Occaecati aut soluta velit rerum illo minus nobis. Sit facilis aut porro sed velit rerum.',NULL,NULL,'1975-09-29 13:02:03'),(10,10,'Velit veniam blanditiis beatae illum nemo et mollitia. Dignissimos animi quia sequi repellat. Cupiditate cum illo ut tempora ducimus facere voluptas. Sit natus aut expedita quis facilis explicabo quo molestiae.',NULL,NULL,'2013-04-03 06:27:36'),(11,11,'Enim libero quidem veritatis corrupti est non et ad. Velit doloribus et aperiam id. Perferendis consequatur magnam esse et dignissimos aspernatur. Facilis fugit totam officia error sunt temporibus et cum.',NULL,NULL,'2002-09-29 06:36:40'),(12,12,'Qui animi quis qui autem rerum alias. Temporibus quos ut sit laboriosam. Repellendus voluptates culpa autem dolores est recusandae. Eos omnis commodi possimus.',NULL,NULL,'2003-02-16 08:59:50'),(13,13,'Natus occaecati dignissimos sunt aperiam. Delectus quis adipisci est minus magni ad alias vel. Consequatur doloribus voluptates voluptas et delectus porro commodi.',NULL,NULL,'1976-09-17 22:02:32'),(14,14,'Voluptatibus et assumenda enim consequuntur ut sed. Consequatur amet qui laborum ex corrupti animi est. Laboriosam ab voluptas et ut odio ipsa blanditiis. Recusandae quis voluptates veritatis sit.',NULL,NULL,'2016-09-26 07:29:46'),(15,15,'Repellendus accusantium officia aspernatur labore doloremque provident. Praesentium quo placeat voluptatum similique. Nulla ratione facilis est et dolorem debitis sint. Quia minus vel cupiditate minus esse consequatur.',NULL,NULL,'1997-04-13 13:40:54'),(16,16,'Repellat vel repudiandae dolores repellendus sed optio explicabo autem. Quo dolorem perspiciatis sint autem vitae quaerat beatae.',NULL,NULL,'1979-05-26 20:29:10'),(17,17,'Ut quia sit sunt occaecati. Eveniet delectus magni consectetur. Aliquid nostrum aspernatur quis quibusdam.',NULL,NULL,'1975-07-11 23:09:49'),(18,18,'Facere et suscipit velit ipsa iste id. Facilis maxime natus aliquam tenetur fugiat quis. Dicta non reiciendis commodi cum occaecati pariatur.',NULL,NULL,'1992-09-20 22:48:36'),(19,19,'In quod quas est delectus. Distinctio eaque non placeat et vel. Tempora reprehenderit qui necessitatibus quam ut. Molestiae aperiam asperiores error dignissimos molestiae. Occaecati velit voluptas dolor velit blanditiis molestiae.',NULL,NULL,'1980-10-19 08:27:32'),(20,20,'Culpa et eligendi vel id beatae ipsa. Quia est error rerum adipisci eum. Rerum voluptate necessitatibus consequatur qui ut minus. Voluptates velit voluptas non dolore est eum.',NULL,NULL,'1989-04-15 09:57:58'),(21,21,'Aliquid ipsam aut quia officiis reiciendis sapiente laudantium. Voluptas eos minus sunt facilis distinctio ea harum quos. Quisquam ut itaque similique dolores necessitatibus eos. Mollitia ipsum excepturi recusandae et est.',NULL,NULL,'1989-12-05 00:05:24'),(22,22,'Sit velit consequatur accusantium aut. Eum ducimus consequatur mollitia autem. Amet culpa quis quia sed molestias incidunt optio. Ex quo ut tempora et ea eveniet quidem saepe.',NULL,NULL,'1984-03-23 13:28:25'),(23,23,'Ea minus quod odit. Quam voluptatibus esse magni quis ducimus ab quam dolores.',NULL,NULL,'1973-12-17 21:08:55'),(24,24,'Porro dolores consequuntur aut illo et. Aliquam harum nobis excepturi ut. Commodi ut at quibusdam doloribus officia.',NULL,NULL,'1990-07-27 20:00:09'),(25,25,'Qui similique aspernatur provident quia ducimus. Dolorem ea qui odio quo fugiat. Quo sunt quasi aut eius odit ullam.',NULL,NULL,'2018-12-26 04:15:31'),(26,26,'Facilis ratione aperiam sed optio veniam. Esse at voluptatem ducimus ab et delectus. Non dolorem et vel aut.',NULL,NULL,'1996-10-18 22:30:52'),(27,27,'Quidem ratione doloribus corporis libero. Voluptatum ut veniam beatae. Vero modi distinctio ducimus quidem qui aut sunt rem.',NULL,NULL,'1981-10-31 07:38:15'),(28,28,'Nam cupiditate tenetur est mollitia. Aut distinctio praesentium assumenda voluptatem. Omnis ullam et vero assumenda autem aut. Alias deleniti quos dolor veniam est consectetur ab.',NULL,NULL,'1984-05-04 15:37:37'),(29,29,'Quasi amet quis accusantium quis illo magnam. Quo est quia delectus eos omnis.',NULL,NULL,'1999-06-11 03:44:02'),(30,30,'Nihil aspernatur ipsa voluptas itaque aspernatur dolore voluptatem. Libero aut mollitia porro sit amet aut quis. Quo ipsum vero expedita. Natus quae maxime cumque tenetur quibusdam.',NULL,NULL,'1982-01-18 14:08:23'),(31,31,'Voluptatem et fugit saepe voluptatem ipsa possimus cumque. Facere nulla ad illo est voluptas tempora. Iure aspernatur rerum perspiciatis inventore quibusdam. Et sed iste officiis id dolore quia neque minus.',NULL,NULL,'2005-07-04 14:28:38'),(32,32,'Reprehenderit sint rerum deserunt et enim. Ducimus doloremque voluptates laboriosam in. Provident quasi dolorem nulla quia sunt excepturi.',NULL,NULL,'2001-10-11 05:12:54'),(33,33,'Vero voluptatem nihil quaerat. Porro minus sunt quas praesentium quia nobis.',NULL,NULL,'2001-02-02 21:45:31'),(34,34,'Dolor cum quia atque saepe. Qui commodi mollitia ut voluptatum ea. Distinctio sint ipsam voluptatem. Ea maiores incidunt molestiae sit.',NULL,NULL,'1979-08-13 08:39:02'),(35,35,'Aut voluptate et eos. Repellat minima et dignissimos quae. Non sapiente rerum dolor dolor possimus voluptate et dicta. Fugiat explicabo fugiat modi facere dolores ullam.',NULL,NULL,'1984-07-15 19:51:29'),(36,36,'Beatae voluptate rerum velit minus impedit. Nam labore eos voluptatem assumenda sit qui dolorem dicta. Illum excepturi eaque eos sed est occaecati.',NULL,NULL,'1995-09-27 13:13:07'),(37,37,'Molestiae sit architecto quam ea quia quam nihil quos. Autem voluptates quia quidem dolorum accusamus. Ut culpa laborum doloremque consequuntur reiciendis ea.',NULL,NULL,'1974-11-18 02:05:05'),(38,38,'Laudantium et repellendus omnis molestiae consequatur recusandae natus. Iure impedit deleniti sint quo quia at illum. Nisi quo placeat fugiat quos molestiae in aut. Ad sequi distinctio fuga sequi non.',NULL,NULL,'2003-02-05 18:02:55'),(39,39,'Officiis cum ab ea omnis voluptates repudiandae. In quibusdam iste expedita qui quisquam expedita. Modi natus delectus dicta sed. Itaque eligendi cumque in rerum. Enim voluptatum id harum id.',NULL,NULL,'2015-12-30 11:08:07'),(40,40,'Ex voluptatem vel non ratione voluptatem exercitationem dolore. Est et et tenetur nostrum. Non velit et alias quidem aut qui eius dolore. Suscipit excepturi magni maiores minus neque doloremque magni.',NULL,NULL,'1973-09-20 22:33:19'),(41,41,'Inventore eos praesentium sit optio. Assumenda perferendis et sit voluptatibus.',NULL,NULL,'1976-01-31 05:24:23'),(42,42,'Laboriosam consequatur autem doloribus rerum autem. Rerum ut alias ut. Asperiores ipsum voluptas inventore ut facere est eligendi.',NULL,NULL,'1995-09-11 02:06:09'),(43,43,'Ipsa molestiae iusto laborum. Unde rerum eius ut dolores et amet. Laudantium consectetur aut aliquam quaerat mollitia itaque.',NULL,NULL,'2005-03-10 22:19:52'),(44,44,'Tenetur sapiente delectus voluptate quibusdam molestias minus. Hic unde dicta et sint ut. Dolor soluta voluptates veritatis voluptatem voluptas ut. Sed harum porro veritatis quia qui nihil.',NULL,NULL,'1996-06-22 03:31:32'),(45,45,'Qui velit asperiores voluptatem sit labore ut ea. Iure doloremque sequi quod id nihil minus natus. Dicta aut velit aut sunt velit nisi.',NULL,NULL,'1984-11-21 22:40:52'),(46,46,'Dolorem inventore sint ut voluptas veritatis voluptatem debitis. Nemo ducimus occaecati et doloribus. Corporis ipsum ab ut officiis. Harum dolorem dolorum et. Corporis accusantium mollitia autem.',NULL,NULL,'2009-11-02 19:20:10'),(47,47,'In optio excepturi qui a dolores repellendus omnis. Qui quia id odio consequatur id hic iste. Non qui eligendi placeat non.',NULL,NULL,'2012-08-31 01:24:47'),(48,48,'Dolores nihil sunt hic amet velit excepturi. Sunt dolores sunt est nam voluptates.',NULL,NULL,'1985-02-12 17:21:38'),(49,49,'Numquam voluptatem expedita vel a. Nam ullam sed natus quod. Quidem tempora ut quia qui rerum.',NULL,NULL,'2007-05-08 12:16:14'),(50,50,'Similique magnam expedita provident. Sequi sint cupiditate et rerum maiores fuga non quaerat. Ipsum quo velit eos soluta.',NULL,NULL,'2013-03-07 08:53:24'),(51,51,'Labore doloribus quaerat amet et et asperiores. Dolores amet quis eveniet aspernatur dolorum ex facilis. Tempore assumenda iure distinctio labore ducimus non.',NULL,NULL,'2014-09-12 18:19:12'),(52,52,'Fugiat corporis et voluptatum sequi consequatur tempora autem. Neque odio quos qui et perferendis. Quibusdam fugiat illum et delectus et quisquam.',NULL,NULL,'1990-04-16 00:29:41'),(53,53,'Ducimus quos quos qui similique. Quae quis itaque ratione qui et amet. Aut ducimus mollitia tempora. Quis exercitationem asperiores et unde omnis omnis et.',NULL,NULL,'2007-12-05 08:16:30'),(54,54,'Quia porro nostrum sint ducimus possimus accusamus ad incidunt. Eos libero rem voluptas aspernatur aliquid iusto. Eos cupiditate dicta odio est perspiciatis atque ut labore.',NULL,NULL,'1981-05-06 19:50:14'),(55,55,'Sit eius dolorum dolor et iure est laboriosam. Vel quasi magnam et quia nihil at. Dicta commodi animi ut non ducimus. Ullam explicabo qui quis aperiam.',NULL,NULL,'2000-12-30 14:58:50'),(56,56,'Aut ab ipsam molestias eum nostrum facilis laudantium officiis. Aperiam doloribus praesentium qui autem. Corrupti magni non quas explicabo repellat ea nam.',NULL,NULL,'1998-01-21 23:50:52'),(57,57,'Illo voluptatem provident architecto vel maiores. Eius ipsam voluptate perferendis voluptate quibusdam. Minima possimus sint hic sint id eaque.',NULL,NULL,'1970-07-22 04:07:30'),(58,58,'Est et voluptatum et. Quae dolore voluptatibus corporis repellat consequatur. Quam ut error eveniet quam autem dolor a. Sed consequatur eius beatae molestiae tenetur distinctio cumque.',NULL,NULL,'1972-10-04 03:46:43'),(59,59,'Omnis sed facere consequuntur iusto. In a temporibus sed sed ipsum. Aspernatur magni quas est modi unde dolores explicabo. Ducimus fugiat aliquid et veniam.',NULL,NULL,'2010-03-16 14:37:36'),(60,60,'Suscipit culpa ab beatae quia. Omnis fugit corporis ducimus praesentium dolorum voluptas. Sit sint earum tempore voluptate.',NULL,NULL,'1972-11-14 18:32:50'),(61,61,'Et et et voluptas ut dolor. Velit ad numquam officia. Quaerat vero id fugit cupiditate. Et voluptas aut at.',NULL,NULL,'1985-10-24 16:50:03'),(62,62,'Iusto eos neque facere laborum consectetur quod. Vel debitis quis est amet. Error ratione illum eligendi rerum ut. Ullam rem voluptatem et non possimus porro fugiat.',NULL,NULL,'1994-03-07 23:56:15'),(63,63,'Illo nemo rerum necessitatibus atque sunt. Dolor vel consequatur animi consequatur fugit adipisci. Aliquam voluptas eius debitis quod. Non quo eum sed velit.',NULL,NULL,'1993-02-04 06:56:24'),(64,64,'Qui porro aspernatur reiciendis vero. Doloribus saepe nobis nisi quod exercitationem ut quibusdam.',NULL,NULL,'1984-02-29 00:18:05'),(65,65,'Sint tempore officia ut. Debitis tempora laudantium quidem sed dolorum dolores. Natus culpa at doloribus et ipsum. Culpa ullam nemo illo qui dolor delectus et.',NULL,NULL,'1980-04-26 11:29:51'),(66,66,'Voluptatibus possimus commodi numquam perferendis maxime non iure. Enim voluptates dignissimos nostrum quae aliquid et in. Iusto rerum quam culpa recusandae ut. Quis qui quo nemo vel in fuga non.',NULL,NULL,'2019-05-17 11:58:14'),(67,67,'Sequi corporis modi soluta ut nihil aut magni. Aliquid itaque quia laudantium culpa eos ipsam veniam. Et vel ad ut.',NULL,NULL,'1991-01-28 03:52:59'),(68,68,'Et et perspiciatis blanditiis exercitationem itaque. Nobis veniam tempora aut repudiandae et esse sed. Quis iste sunt omnis optio. Veniam rem occaecati aut ut accusantium voluptatem.',NULL,NULL,'2010-11-12 23:51:11'),(69,69,'Est dolores asperiores quibusdam sit esse harum aut molestiae. Cumque perferendis quis vel minus molestiae et atque. Sit et commodi error et. Adipisci quo nemo rerum quisquam hic earum.',NULL,NULL,'1977-08-31 06:35:50'),(70,70,'Numquam nobis dolores aut magni est iusto. Error officia quis quo. Consequatur nesciunt veritatis qui nesciunt eveniet saepe qui. Et repellendus quia laudantium laudantium.',NULL,NULL,'1973-05-26 12:13:27'),(71,71,'Magnam et ut necessitatibus facilis nostrum repellendus. Illo aut et voluptatem dicta.',NULL,NULL,'1996-05-29 16:54:40'),(72,72,'Explicabo dolor ut aut quae facere quia consequuntur aliquid. Velit architecto nesciunt quasi.',NULL,NULL,'2008-07-07 06:03:27'),(73,73,'Adipisci modi fuga sed cumque in veniam. Nulla voluptatibus modi id est dicta doloribus. Voluptas itaque quos et dolorum.',NULL,NULL,'1976-01-17 09:54:25'),(74,74,'Maxime similique numquam sit et repellat. Eum quod porro non non. In doloremque qui iste occaecati.',NULL,NULL,'1993-09-02 04:10:27'),(75,75,'Non tempora corporis voluptates hic deserunt. Non eligendi modi tenetur voluptatem. Voluptatum non nihil animi ut. Facilis est fuga itaque eaque nesciunt dolor eum accusamus.',NULL,NULL,'1985-03-16 00:50:18'),(76,76,'Praesentium esse eum at. Totam tempore nisi autem tenetur et laboriosam. A perferendis optio quisquam quo quisquam aut atque consequatur.',NULL,NULL,'1979-05-16 11:58:30'),(77,77,'Cum tempora praesentium ipsum consequuntur exercitationem ad ratione. Nihil sunt aut eos neque. Veritatis animi aliquid nesciunt molestiae et inventore aliquam.',NULL,NULL,'1974-06-07 19:30:15'),(78,78,'Modi consequuntur quis totam repudiandae mollitia. Sunt a delectus deserunt ut. Nulla sint nesciunt quia rem et velit. Officia eius quibusdam mollitia velit.',NULL,NULL,'1970-09-26 10:39:17'),(79,79,'Dolores assumenda beatae cumque suscipit exercitationem saepe qui consectetur. Nihil qui incidunt ut alias. Vel non quia est dolor vitae dolor. A magnam in adipisci dicta quisquam nulla quod.',NULL,NULL,'1998-12-03 21:44:18'),(80,80,'Nihil nam sint laudantium ratione. Sint voluptas nihil atque voluptates in et nisi. Nostrum quaerat animi perspiciatis explicabo eos omnis quod.',NULL,NULL,'1986-07-31 02:43:46'),(81,81,'Maiores ea odit et velit quidem voluptatibus voluptates. Officia fuga at quia exercitationem officia qui officiis ducimus. Culpa ut et et quia.',NULL,NULL,'1991-02-10 08:13:10'),(82,82,'Nobis laboriosam repellat qui. Totam perferendis totam ut consequatur est minus voluptatum. Nam hic sit blanditiis facilis similique adipisci dolor.',NULL,NULL,'2017-05-08 22:15:34'),(83,83,'Voluptatem molestiae eos quidem dicta cum suscipit. Dolorum assumenda natus nemo omnis. Aut repudiandae suscipit expedita. Eaque velit magni a.',NULL,NULL,'1993-11-29 14:00:47'),(84,84,'Sed eveniet officia possimus perspiciatis. Dolorem debitis quis quia ut nulla animi modi. Consequatur officia vel est ipsa aut.',NULL,NULL,'1995-12-27 05:19:19'),(85,85,'Minima porro non illum in nihil. Est nam iste at rem distinctio eligendi. Qui id error neque.',NULL,NULL,'1979-10-05 15:51:09'),(86,86,'Ut est accusamus dolore ullam expedita fugit et. Nesciunt saepe inventore sint laudantium eveniet. Minus aut velit aut temporibus accusamus.',NULL,NULL,'1981-04-19 00:10:43'),(87,87,'Modi quam dolorum beatae dolore. Omnis architecto vel eaque id. Eaque eum temporibus natus atque non.',NULL,NULL,'1985-01-08 15:03:03'),(88,88,'Adipisci id adipisci quidem quibusdam iste eos doloremque. Exercitationem aliquid reprehenderit officiis qui.',NULL,NULL,'1971-12-06 06:10:15'),(89,89,'A expedita sit sequi perferendis vel quia animi et. Accusantium eos sint ad asperiores sit. Aut eligendi nihil dolores dicta adipisci reiciendis repellendus.',NULL,NULL,'1982-05-11 16:34:16'),(90,90,'Voluptatem incidunt repellat aspernatur voluptates officia sapiente. Et impedit veniam officiis recusandae qui quia. Iste animi ut perferendis. Incidunt est omnis facilis nobis at qui.',NULL,NULL,'2000-09-14 03:07:02'),(91,91,'Consequatur reprehenderit maiores consectetur rerum ut placeat voluptatem. Aut quas ducimus recusandae qui molestiae et est. Explicabo eum sit aut harum animi.',NULL,NULL,'2006-02-03 11:33:10'),(92,92,'Dolorem odit et dolor neque. Ducimus enim consequatur quae fugiat accusantium harum nulla. Unde voluptas totam eum in. Adipisci exercitationem consequatur perspiciatis reprehenderit saepe sit natus accusantium.',NULL,NULL,'1993-01-26 11:20:56'),(93,93,'Sint explicabo voluptatum fuga. Aliquam quibusdam sunt id error. Nulla sit deleniti ipsa labore expedita. Et consequatur id necessitatibus cum consequatur aut omnis molestiae.',NULL,NULL,'1972-10-20 04:51:36'),(94,94,'Repellat aut qui a adipisci voluptatum. Tenetur in qui aliquid laudantium accusantium consequatur. Veritatis necessitatibus ut odit molestias veniam delectus. Temporibus sequi eos ad vitae nisi.',NULL,NULL,'2008-02-01 20:13:05'),(95,95,'Aut ducimus ipsa nisi nam omnis velit aut et. Delectus animi nostrum aut fugit sunt. Hic sed perspiciatis non minima dignissimos laborum repellendus. Consequatur sequi provident nihil dolores commodi eaque.',NULL,NULL,'1975-06-04 20:08:18'),(96,96,'Non facilis ullam quod nemo earum et temporibus. Ad ut qui ut maiores. Qui sunt ipsam quos exercitationem ratione blanditiis libero.',NULL,NULL,'1972-10-23 08:37:43'),(97,97,'Consequatur laudantium sed soluta recusandae maiores corporis. Culpa qui est error. Sint dolorum et voluptatem. Similique delectus error ut.',NULL,NULL,'1980-06-14 02:49:39'),(98,98,'Voluptatum beatae labore rerum voluptatem dolorem illo nisi. Sequi aut incidunt in exercitationem repudiandae et. Neque explicabo soluta itaque.',NULL,NULL,'1989-12-28 06:20:40'),(99,99,'Harum voluptatem enim quibusdam ut delectus. Quam ipsa a itaque et. Ea ea consequatur illum perferendis fugiat.',NULL,NULL,'2016-03-29 06:43:07'),(100,100,'Voluptatem officia ipsum non est incidunt rem enim placeat. Dolore quibusdam eveniet dignissimos ut doloribus. Necessitatibus repudiandae porro amet tempore voluptate quos. A minima sint laboriosam neque fugit.',NULL,NULL,'1982-06-27 10:14:39');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL,
  `sex` char(1) NOT NULL,
  `birthday` date DEFAULT NULL,
  `birthday_year` int(11) DEFAULT NULL,
  `birthday_moth` int(11) DEFAULT NULL,
  `birthday_day` int(11) DEFAULT NULL,
  `hometown` varchar(100) DEFAULT NULL,
  `photo_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,'','1981-04-09',1981,4,9,NULL,0),(2,'','1993-11-02',1993,11,2,NULL,0),(3,'','2018-06-18',2018,6,18,NULL,0),(4,'','1975-02-09',1975,2,9,NULL,0),(5,'','2001-10-28',2001,10,28,NULL,0),(6,'','1984-09-03',1984,9,3,NULL,0),(7,'','1980-01-12',1980,1,12,NULL,0),(8,'','2010-09-05',2010,9,5,NULL,0),(9,'','2011-09-05',2011,9,5,NULL,0),(10,'','1980-03-28',1980,3,28,NULL,0),(11,'','2011-02-01',2011,2,1,NULL,0),(12,'','1976-04-16',1976,4,16,NULL,0),(13,'','1973-07-26',1973,7,26,NULL,0),(14,'','2011-01-05',2011,1,5,NULL,0),(15,'','1989-04-07',1989,4,7,NULL,0),(16,'','2009-02-17',2009,2,17,NULL,0),(17,'','1987-05-05',1987,5,5,NULL,0),(18,'','2000-08-22',2000,8,22,NULL,0),(19,'','1996-01-10',1996,1,10,NULL,0),(20,'','2003-12-26',2003,12,26,NULL,0),(21,'','1986-10-10',1986,10,10,NULL,0),(22,'','1987-09-08',1987,9,8,NULL,0),(23,'','2006-02-07',2006,2,7,NULL,0),(24,'','1998-10-14',1998,10,14,NULL,0),(25,'','1985-06-16',1985,6,16,NULL,0),(26,'','2010-02-06',2010,2,6,NULL,0),(27,'','1985-08-10',1985,8,10,NULL,0),(28,'','1974-07-02',1974,7,2,NULL,0),(29,'','1981-07-15',1981,7,15,NULL,0),(30,'','2001-05-15',2001,5,15,NULL,0),(31,'','1971-01-28',1971,1,28,NULL,0),(32,'','1979-08-05',1979,8,5,NULL,0),(33,'','2001-01-08',2001,1,8,NULL,0),(34,'','2002-09-05',2002,9,5,NULL,0),(35,'','2016-09-04',2016,9,4,NULL,0),(36,'','2010-08-22',2010,8,22,NULL,0),(37,'','2011-04-09',2011,4,9,NULL,0),(38,'','1972-12-09',1972,12,9,NULL,0),(39,'','2002-08-12',2002,8,12,NULL,0),(40,'','2003-10-11',2003,10,11,NULL,0),(41,'','2012-06-24',2012,6,24,NULL,0),(42,'','1970-07-07',1970,7,7,NULL,0),(43,'','2002-07-27',2002,7,27,NULL,0),(44,'','1978-02-03',1978,2,3,NULL,0),(45,'','2000-09-11',2000,9,11,NULL,0),(46,'','1978-09-30',1978,9,30,NULL,0),(47,'','2004-09-25',2004,9,25,NULL,0),(48,'','1976-11-14',1976,11,14,NULL,0),(49,'','1990-02-09',1990,2,9,NULL,0),(50,'','1972-06-17',1972,6,17,NULL,0),(51,'','1981-08-02',1981,8,2,NULL,0),(52,'','1973-04-14',1973,4,14,NULL,0),(53,'','1980-10-05',1980,10,5,NULL,0),(54,'','1974-07-29',1974,7,29,NULL,0),(55,'','1994-10-17',1994,10,17,NULL,0),(56,'','1995-03-12',1995,3,12,NULL,0),(57,'','2003-05-29',2003,5,29,NULL,0),(58,'','2003-09-13',2003,9,13,NULL,0),(59,'','2006-03-23',2006,3,23,NULL,0),(60,'','2016-04-24',2016,4,24,NULL,0),(61,'','1999-05-25',1999,5,25,NULL,0),(62,'','2002-07-23',2002,7,23,NULL,0),(63,'','1982-07-21',1982,7,21,NULL,0),(64,'','1982-10-04',1982,10,4,NULL,0),(65,'','1988-03-23',1988,3,23,NULL,0),(66,'','1976-02-01',1976,2,1,NULL,0),(67,'','2015-03-27',2015,3,27,NULL,0),(68,'','1983-01-06',1983,1,6,NULL,0),(69,'','1983-08-14',1983,8,14,NULL,0),(70,'','2001-01-24',2001,1,24,NULL,0),(71,'','2009-04-06',2009,4,6,NULL,0),(72,'','1994-05-09',1994,5,9,NULL,0),(73,'','1982-08-14',1982,8,14,NULL,0),(74,'','2011-01-31',2011,1,31,NULL,0),(75,'','2008-01-07',2008,1,7,NULL,0),(76,'','2009-01-26',2009,1,26,NULL,0),(77,'','1989-10-24',1989,10,24,NULL,0),(78,'','1992-07-14',1992,7,14,NULL,0),(79,'','2012-07-31',2012,7,31,NULL,0),(80,'','2003-06-19',2003,6,19,NULL,0),(81,'','1998-10-25',1998,10,25,NULL,0),(82,'','2009-01-20',2009,1,20,NULL,0),(83,'','1984-03-08',1984,3,8,NULL,0),(84,'','1991-03-12',1991,3,12,NULL,0),(85,'','1993-02-27',1993,2,27,NULL,0),(86,'','2007-07-12',2007,7,12,NULL,0),(87,'','1978-07-25',1978,7,25,NULL,0),(88,'','1998-02-08',1998,2,8,NULL,0),(89,'','2019-06-10',2019,6,10,NULL,0),(90,'','1980-11-25',1980,11,25,NULL,0),(91,'','1985-11-29',1985,11,29,NULL,0),(92,'','2016-02-25',2016,2,25,NULL,0),(93,'','1972-09-14',1972,9,14,NULL,0),(94,'','1996-07-06',1996,7,6,NULL,0),(95,'','2007-07-05',2007,7,5,NULL,0),(96,'','1975-11-02',1975,11,2,NULL,0),(97,'','2007-01-14',2007,1,14,NULL,0),(98,'','1974-02-19',1974,2,19,NULL,0),(99,'','1983-03-22',1983,3,22,NULL,0),(100,'','1975-01-14',1975,1,14,NULL,0);
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insert_profile` BEFORE INSERT ON `profiles` FOR EACH ROW SET NEW.birthday_year = year(NEW.birthday), NEW.birthday_moth = month(NEW.birthday), NEW.birthday_day = day(NEW.birthday) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `update_profile` BEFORE UPDATE ON `profiles` FOR EACH ROW SET NEW.birthday_year = year(NEW.birthday), NEW.birthday_moth = month(NEW.birthday), NEW.birthday_day = day(NEW.birthday) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `email` varchar(120) NOT NULL,
  `phone` varchar(120) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Ines','Ryan','crooks.noel@example.org','(750)563-6929x807','2001-12-16 12:13:56','1997-05-23 07:48:21'),(2,'Cody','Walter','delta62@example.net','306-037-7422x71103','1978-09-28 01:11:59','1981-02-04 09:04:21'),(3,'Demarcus','Kertzmann','stoltenberg.malika@example.org','1-003-011-0814x3426','1994-02-24 20:59:49','2000-11-29 09:47:26'),(4,'Reed','Nicolas','simonis.regan@example.net','717.917.1540x527','2002-04-25 22:27:02','1998-12-02 22:03:16'),(5,'Ellis','Kihn','chaim.gutkowski@example.net','820-579-3312x51526','2002-06-10 18:58:52','2015-07-05 11:09:49'),(6,'Taya','Nienow','malinda19@example.com','(304)760-9894','1980-06-11 20:18:03','1973-06-02 17:51:24'),(7,'Fae','Conn','melissa56@example.com','316-724-0554','1993-05-10 14:30:42','2016-06-26 03:30:50'),(8,'Darlene','Kuhn','koss.laverne@example.com','690-942-2706x524','1987-02-01 01:14:35','1997-12-26 19:55:12'),(9,'Cullen','Powlowski','darius.bahringer@example.net','485-495-4214','2015-10-15 22:36:54','2004-06-28 23:35:48'),(10,'Cierra','Schoen','hodkiewicz.taryn@example.net','1-991-828-7178','2015-12-06 12:23:40','2014-08-09 09:46:52'),(11,'Lambert','Bartoletti','bpurdy@example.net','04778526375','1979-11-15 19:13:27','2013-06-08 12:47:14'),(12,'Montana','Beier','wehner.roosevelt@example.com','00711738682','2002-07-19 09:44:48','2014-09-24 15:55:20'),(13,'Seamus','Blick','dallas.cummings@example.com','(256)812-3228x8295','2012-10-09 23:07:20','1978-11-07 17:47:46'),(14,'Amely','Nader','haag.lucinda@example.org','(103)553-2339','1985-05-10 10:05:33','2010-01-05 05:36:27'),(15,'Camden','Pfannerstill','andy.lind@example.org','1-866-931-3193','2017-08-02 09:36:50','2019-05-04 13:57:12'),(16,'Chanel','Lynch','lottie65@example.net','+71(8)7959144977','1974-04-22 09:57:04','1986-08-18 19:39:04'),(17,'Amaya','Mayert','lyric.connelly@example.com','876-044-5621x26902','2004-10-14 01:43:48','1980-11-21 22:24:54'),(18,'Arden','Buckridge','simonis.walter@example.net','228-298-4789x5650','1976-02-21 20:00:11','2010-07-15 15:47:46'),(19,'Alysha','Kuhic','ejerde@example.com','181-864-8411x8905','2012-07-19 05:59:26','2012-08-04 19:21:38'),(20,'Alisa','Rempel','irosenbaum@example.org','(478)171-6997x654','1974-08-25 20:35:57','1986-11-13 06:07:55'),(21,'Magdalena','Schiller','kyla.lang@example.org','396-669-5935x43534','2003-07-26 08:43:21','1987-05-23 06:51:08'),(22,'Assunta','Volkman','lisa.will@example.com','680.386.0565x500','1998-03-27 22:50:40','2007-05-11 14:38:31'),(23,'Fletcher','Conn','celestine.nicolas@example.org','214.862.9766','2002-05-18 02:34:35','2006-02-08 08:14:48'),(24,'Garland','Hartmann','schneider.ray@example.org','02963672730','2001-05-08 19:22:41','2003-03-22 20:12:37'),(25,'Florian','Blanda','koss.cassandra@example.net','(201)729-2473x9604','2017-01-20 20:19:27','1994-03-26 14:32:56'),(26,'Cameron','Hand','whomenick@example.net','1-757-168-7722x7116','1978-07-29 02:21:57','2007-08-28 03:07:41'),(27,'Jayde','Walter','carleton.o\'hara@example.net','732.505.3384x562','2017-09-24 15:29:12','2018-01-26 00:17:01'),(28,'Ivy','Kuhlman','torp.shemar@example.com','122-133-4351x63467','2002-09-09 21:47:16','2019-06-22 12:45:53'),(29,'Blanca','Legros','augusta.koss@example.com','920-733-6264x65750','1970-12-19 07:31:56','1972-03-12 00:07:26'),(30,'Gerald','Abshire','marion95@example.org','(125)121-7390x789','2007-12-30 21:29:42','2013-05-14 17:43:55'),(31,'Misty','Rowe','adrianna.torp@example.org','1-634-355-8845x5044','1975-01-11 23:19:28','1997-02-21 20:46:52'),(32,'Scotty','Lang','oemard@example.net','(968)189-8427x1999','2008-09-14 19:16:19','1971-10-27 13:16:43'),(33,'Melyssa','Bartell','ruby.kirlin@example.net','1-233-859-2052x86878','2013-03-25 02:39:47','1983-10-05 06:22:34'),(34,'Abbie','Sawayn','evelyn.goldner@example.org','125.868.1466x4203','2019-04-15 01:29:36','1992-02-02 23:08:17'),(35,'Frank','Bartell','vgrimes@example.net','1-862-030-3781','2001-07-22 23:31:45','1986-05-04 03:48:55'),(36,'Alba','Quigley','otto97@example.com','907-615-3484x679','1976-06-12 22:11:27','2000-01-07 20:26:12'),(37,'Reta','Kassulke','lebsack.courtney@example.com','(531)914-6673x7601','2003-10-05 13:37:46','1985-06-08 20:17:13'),(38,'Brice','Hermann','kozey.milford@example.net','07946742088','2015-05-17 18:35:57','1971-07-31 21:08:18'),(39,'Layla','Lesch','eveline.grant@example.net','1-258-360-1616x26469','1981-12-18 17:19:57','2018-10-28 06:22:38'),(40,'Eve','Christiansen','greenfelder.daisy@example.com','03529771743','2010-10-17 03:22:51','1970-11-22 21:26:41'),(41,'Vernice','Brakus','schmidt.lia@example.org','(052)621-0210x986','1986-02-24 05:12:55','2013-09-09 19:21:39'),(42,'Demetris','Eichmann','pkautzer@example.org','191-850-4985','2009-06-15 12:08:33','2004-12-11 00:08:12'),(43,'Willa','Oberbrunner','hoeger.morgan@example.net','06803471807','1975-10-21 05:04:54','2018-11-23 14:42:31'),(44,'Nettie','Brown','sbalistreri@example.com','1-345-503-6155x66144','1998-12-03 05:51:24','1980-06-18 13:55:44'),(45,'Jenifer','Cremin','etromp@example.com','1-915-223-6880x82215','2007-05-01 03:35:30','2004-08-03 18:36:49'),(46,'Kamryn','Hickle','mcdermott.vicente@example.net','(533)303-9333','1976-11-07 11:00:37','1982-12-02 21:09:03'),(47,'Julia','Gleason','mckenzie.dorian@example.com','973.028.1183x0207','1996-08-11 12:22:17','1980-08-19 22:19:52'),(48,'Freda','Barrows','altenwerth.david@example.net','(667)078-0233x6683','1999-07-10 04:45:29','1981-11-14 19:33:22'),(49,'Annie','Hauck','tressie34@example.org','144-937-0995x204','1990-10-14 20:36:30','2019-04-13 06:43:05'),(50,'Raphaelle','Bogan','tess37@example.com','267.600.2359x69638','1991-11-12 18:10:39','1984-02-12 08:29:11'),(51,'Mozelle','White','vern58@example.com','+56(3)0243828094','1992-08-23 09:55:15','1979-03-31 09:47:09'),(52,'Aniya','Blick','treutel.lula@example.org','(635)039-6920','1972-02-04 04:25:49','1998-07-15 00:41:56'),(53,'Blair','Lueilwitz','cathryn.feil@example.com','05482393603','1975-11-04 22:17:30','2016-04-22 01:01:47'),(54,'Alba','Hagenes','iheathcote@example.com','(902)600-2919x4534','1997-12-16 02:21:15','1978-02-08 05:55:05'),(55,'Ansel','Leannon','madonna66@example.net','269.693.8143x4167','1988-09-30 11:02:41','1980-09-25 22:12:47'),(56,'Judd','Wyman','armando52@example.com','321-758-7125x2169','1979-04-29 11:59:38','2014-10-19 09:05:42'),(57,'Elva','Lemke','ethyl.kirlin@example.net','558.003.2657x34617','1970-04-08 22:10:37','1993-04-21 11:43:02'),(58,'Orrin','Hagenes','gislason.dejah@example.net','(276)984-8026','1987-08-18 15:46:19','2013-03-29 01:49:05'),(59,'Terrence','Johnston','alfred77@example.com','+40(1)4407516611','1986-11-29 15:57:03','1973-02-19 11:00:53'),(60,'Phyllis','Bashirian','nikolaus.ebba@example.net','(957)081-9645','1980-10-18 14:42:55','1981-04-27 06:21:48'),(61,'Hillard','Hermiston','lcummings@example.net','574.951.4214','2012-01-11 08:19:57','1972-05-10 01:07:46'),(62,'Bernardo','Kub','emmie68@example.org','116-882-3261','2018-04-08 16:51:07','2012-01-11 05:21:35'),(63,'Savannah','Kuphal','tbradtke@example.org','02181493916','2002-06-26 06:24:06','2011-12-19 09:05:09'),(64,'Shea','Schmitt','spinka.brady@example.com','024-908-2864x33897','1978-02-23 06:07:53','2006-02-28 21:59:15'),(65,'Juanita','O\'Hara','gibson.dax@example.org','+64(8)8658957186','1984-06-16 17:18:32','2013-12-03 04:35:25'),(66,'Frederique','Upton','sammy.spencer@example.com','+42(8)0360153958','1985-12-11 02:52:07','1970-03-18 01:58:22'),(67,'Jerrell','Schuppe','deckow.ellis@example.net','(029)311-0548x2471','1991-03-20 22:28:01','1997-01-25 07:26:45'),(68,'Curtis','Hand','harber.hazel@example.com','847.043.5472x3055','1982-11-29 10:17:05','1980-09-30 15:18:00'),(69,'Amber','Herman','mills.keely@example.org','+75(6)2856413670','1989-09-04 00:24:36','1973-12-26 16:00:56'),(70,'Lilian','Stiedemann','ecruickshank@example.com','(442)388-4380','2005-08-28 08:32:22','1995-12-04 17:32:28'),(71,'Maxime','Kohler','torphy.joanne@example.net','03104980833','2009-04-08 22:48:25','2004-05-05 12:45:01'),(72,'Chyna','Towne','clemmie.willms@example.org','+84(5)1297969206','1988-12-11 20:35:38','1981-12-24 14:01:33'),(73,'Evalyn','Greenfelder','camren44@example.org','(151)728-3485x47144','2013-07-04 09:12:44','2009-12-26 13:43:34'),(74,'Krystal','Gerlach','paris88@example.org','248-371-6156','1996-12-21 23:15:25','2009-01-04 02:28:02'),(75,'Lavada','Donnelly','csporer@example.com','720.024.0385x4258','2007-08-30 22:31:13','1984-03-16 12:24:07'),(76,'Dell','Jones','hadley69@example.org','1-052-995-5368','2009-09-25 16:19:38','1979-01-12 00:23:23'),(77,'Jerel','Runte','wwindler@example.net','941-810-7379','1973-04-09 19:07:42','2005-08-13 22:27:59'),(78,'Parker','Mohr','vella94@example.com','083.311.4734','1985-06-11 17:34:36','2001-05-30 22:14:11'),(79,'Riley','Powlowski','hilll.terrence@example.com','1-611-659-9593','2007-10-17 06:46:32','1975-09-02 09:09:38'),(80,'Hulda','Krajcik','adriel.mann@example.org','813-098-8068','1998-05-30 16:52:37','2006-03-30 11:45:32'),(81,'Natasha','O\'Kon','kilback.lauriane@example.com','902-851-9067','1986-01-07 19:01:48','2003-01-27 11:44:33'),(82,'Ryley','Towne','reta.mayer@example.net','242.085.2088x352','1976-02-11 19:09:24','1984-03-27 12:05:24'),(83,'Celine','Shanahan','labbott@example.org','208.763.1076','1993-09-26 13:12:43','1987-07-02 11:55:21'),(84,'Avis','Hermann','damian.gleason@example.com','(050)841-6474','1983-05-11 05:56:55','1978-06-11 12:02:05'),(85,'Mitchell','Reinger','lance20@example.net','1-760-919-1403x3490','1984-10-07 15:49:32','1990-05-03 01:42:15'),(86,'Maxie','Boyer','ehamill@example.com','(543)973-3255x05825','2006-10-06 14:07:36','1982-10-12 09:04:19'),(87,'Deangelo','Rippin','kira39@example.net','1-961-834-2601x0418','1975-03-17 20:32:46','2000-11-11 16:03:51'),(88,'Madisen','Doyle','apouros@example.org','1-642-737-9745','1990-06-26 21:12:42','1989-04-22 09:07:50'),(89,'Pierre','Hand','ivah.smith@example.com','1-658-671-8547x1850','1987-08-22 08:12:59','2005-08-09 08:19:17'),(90,'Dora','Lesch','zluettgen@example.org','331.061.8338','2016-01-31 16:03:40','1977-09-12 02:29:16'),(91,'Immanuel','Dare','bmayert@example.net','(484)647-1022x563','1981-12-27 08:52:18','2006-05-23 15:18:15'),(92,'Arturo','D\'Amore','ocorkery@example.org','640.551.1563','1983-03-11 09:06:31','1998-12-10 05:33:46'),(93,'Joelle','Leannon','dward@example.org','849.333.2950','2010-09-06 14:06:15','1985-10-30 02:48:38'),(94,'Jettie','Goodwin','vkemmer@example.org','964.913.8488x25359','1976-01-11 16:37:48','2012-01-23 04:43:03'),(95,'Santina','Huels','wiley34@example.org','1-662-399-6810','2009-07-09 04:36:38','1984-09-14 22:18:18'),(96,'Everette','Goyette','eli52@example.org','1-981-421-0155x075','1973-12-04 01:59:31','2012-09-21 23:03:08'),(97,'Joany','Herzog','olson.kory@example.net','963.925.0107','1975-04-19 22:27:30','2008-11-22 21:46:30'),(98,'Amir','Ruecker','zroberts@example.net','030-642-9005x63473','1995-06-29 19:23:35','1976-10-29 14:26:18'),(99,'Kelli','Cormier','flavie79@example.net','1-017-612-0608','2010-08-11 02:22:34','1981-07-25 23:02:34'),(100,'Katelin','Ebert','ruecker.river@example.net','153-545-7365','1999-01-26 05:52:42','2006-04-08 06:28:40');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-13 12:22:10
