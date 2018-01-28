-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: kmge
-- ------------------------------------------------------
-- Server version	5.7.18-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services` (
  `service` varchar(200) NOT NULL,
  `parameters` json DEFAULT NULL,
  `publisher` varchar(200) DEFAULT NULL,
  `subscriber` varchar(200) DEFAULT NULL,
  `created` timestamp(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
  `timestamp` timestamp(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`service`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES ('cmd','{\"command\": \"\"}','.\\cmd_result','.','2018-01-27 22:20:03.481','2018-01-20 21:50:09.162'),('extract','{\"value\": \"\", \"fields\": \"\", \"pattern\": \"\"}','.\\json','.','2018-01-27 22:20:03.552','2018-01-21 23:24:08.823'),('filecsv','{\"value\": \"\", \"fields\": \"code\", \"filter\": \"#\", \"headers\": \"N\", \"separator\": \",\"}','.\\json','.','2018-01-27 22:20:03.554','2018-01-21 23:25:09.831'),('fileload','{\"filename\": \"\"}','.\\json','.','2018-01-27 22:20:03.555','2018-01-21 23:25:31.408'),('filepattern','{\"pattern\": \".*\"}',NULL,NULL,'2018-01-27 22:20:03.557','2018-01-20 21:49:57.384'),('filepatternline','{\"pattern\": \".*\"}',NULL,NULL,'2018-01-27 22:20:03.558','2018-01-20 21:49:55.115'),('filerow','{\"filename\": \"\"}','.\\json','.','2018-01-27 22:20:03.559','2018-01-21 23:26:58.364'),('filter','{\"operator\": \"\", \"operand_left\": \"\", \"operand_right\": \"\", \"publisher_true\": \".\\\\true\", \"publisher_false\": \".\\\\false\"}',NULL,'.','2018-01-27 22:20:03.561','2018-01-21 23:47:12.096'),('folder','{\"folder\": \"\", \"pattern\": \".+\", \"extension\": \"\"}','.',NULL,'2018-01-27 22:20:03.562','2018-01-27 08:06:40.084'),('http','{\"url\": \"\", \"method\": \"\", \"publisher_errors\": \".\\\\http_errors\", \"publisher_status\": \".\\\\http_status\", \"publisher_headers\": \".\\\\http_headers\", \"publisher_results\": \".\\\\http_results\"}','.\\http','.','2018-01-27 22:20:03.563','2018-01-21 23:28:37.021'),('map','{\"properties\": \"\"}','\\relationships','.','2018-01-27 22:20:03.565','2018-01-21 23:29:19.848'),('mapnode','{\"code\": \"code\", \"name\": \"name\", \"label\": \"label\"}','\\nodes','.','2018-01-27 22:20:03.566','2018-01-20 21:49:41.723'),('maprelationship','{\"source_code\": \"source_code\", \"target_code\": \"target_code\", \"source_label\": \"source_label\", \"target_label\": \"target_label\", \"relationship_type\": \"relationship_type\"}','\\relationships','.','2018-01-27 22:20:03.567','2018-01-20 21:49:39.199'),('metric','{\"period\": \"60\", \"aggregate\": \"SUM,AVG,CNT\", \"timestamp\": \"time\", \"metric_metastring\": \"\\\"\\\"\"}',NULL,NULL,'2018-01-27 22:20:03.568','2018-01-20 21:49:37.191'),('mysqlsql','{\"sql\": \"SELECT * FROM INFORMATION_SCHEMA.tables\", \"fields\": \"TABLE_SCHEMA,TABLE_NAME,TABLE_TYPE,TABLE_COLLATION\", \"filesql\": \"test.sql\"}','.','.','2018-01-27 22:20:03.569','2018-01-21 23:30:51.509'),('mysqltable','{\"table\": \"tables\", \"schema\": \"INFORMATION_SCHEMA\"}','.\\json',NULL,'2018-01-27 22:20:03.570','2018-01-21 23:31:05.947'),('neo4j','{\"cypher\": \"MATCH (n:domain) RETURN n\", \"cypher_file\": \"\"}','.\\json','.','2018-01-27 22:20:03.571','2018-01-21 23:31:23.876'),('node','{\"code\": \"\", \"label\": \"\", \"dataset\": \"\"}',NULL,'.','2018-01-27 22:20:03.572','2018-01-27 08:04:51.019'),('path','{\"fields\": \"code\", \"headers\": \"N\", \"extension\": \"csv\", \"separator\": \",\", \"line_filter\": \"#\"}','.\\json',NULL,'2018-01-27 22:20:03.573','2018-01-20 21:49:25.842'),('relationship','{}',NULL,'.','2018-01-27 22:20:03.574','2018-01-20 21:49:19.431'),('token','{\"fields\": \"\", \"token_end\": \"}\", \"metastring\": \"\", \"token_start\": \"${\", \"metastring_file\": \"\"}','.\\token','.','2018-01-27 22:20:03.656','2018-01-21 23:31:49.347');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-28  0:04:00
