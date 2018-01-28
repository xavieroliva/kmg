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
-- Table structure for table `datatypes`
--

DROP TABLE IF EXISTS `datatypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datatypes` (
  `datatype` varchar(200) NOT NULL,
  `samples` longtext,
  `valid_pattern` varchar(2000) DEFAULT NULL,
  `token_pattern` varchar(2000) DEFAULT NULL,
  `token_datatype` varchar(200) DEFAULT NULL,
  `decompose_pattern` varchar(2000) DEFAULT NULL,
  `decompose_fields` varchar(2000) DEFAULT NULL,
  `normalize_expression` varchar(2000) DEFAULT NULL,
  `created` timestamp(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
  `timestamp` timestamp(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`datatype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datatypes`
--

LOCK TABLES `datatypes` WRITE;
/*!40000 ALTER TABLE `datatypes` DISABLE KEYS */;
INSERT INTO `datatypes` VALUES ('\\bussiness\\hotel',NULL,'\\d{4}',NULL,NULL,NULL,NULL,NULL,'2018-01-27 22:45:58.106','2018-01-27 08:13:02.916'),('\\credentials\\mail',NULL,'[a-z0-9\\.]+@([a-z0-9\\-]+\\.){1,4}([a-z]{2,5})',NULL,NULL,'([a-z0-9\\.]+)@((?:[a-z0-9\\-]+\\.){1,4}(?:[a-z]{2,5}))','mailbox,domain','toLowerCase()','2018-01-27 22:45:58.155','2018-01-27 09:26:40.489'),('\\global\\identifier',NULL,'[a-zA-Z]+\\\\w*',NULL,NULL,NULL,NULL,'replace(/[^a-zA-Z0-9_]/g,\"\\\")','2018-01-27 22:45:58.156','2018-01-27 09:24:17.523'),('\\http\\filepath',NULL,'(?:([a-zA-Z]):|\\\\\\\\\\\\\\\\(\\\\w+))(\\\\\\\\(?:.+))\\\\\\\\(.+)?(?:\\\\.(\\\\w+))?',NULL,NULL,'(?:([a-zA-Z]):|\\\\\\\\(\\w+))(\\\\(?:.+))\\\\(.+)?(?:\\.(\\w+))?','device,server,uripath,filename,extension',NULL,'2018-01-27 22:45:58.158','2018-01-27 09:26:21.431'),('\\http\\uripath',NULL,'\\/(.*)?(\\.(.*))?','/','foldername',NULL,NULL,NULL,'2018-01-27 22:45:58.159','2018-01-27 09:27:37.235'),('\\http\\url',NULL,'(ftp|http|https):\\/\\/(\\w+:{0,1}\\w*@)?(\\S+)(:[0-9]+)?(\\/|\\/.+)',NULL,NULL,'(ftp|http|https):\\\\/\\\\/(\\\\w+:{0,1}\\\\w*@)?(\\\\S+)(:[0-9]+)?(\\\\/|\\\\/.+)','protocol,user,domain,port,path,query',NULL,'2018-01-27 22:45:58.161','2018-01-27 09:29:07.946'),('\\language\\currency',NULL,'([1-9][0-9\\.\\,\']*)\\s*([â‚¬$])',NULL,NULL,'([1-9][0-9\\.\\,\']*)\\s*([â‚¬$])','amount,currency',NULL,'2018-01-27 22:45:58.162','2018-01-27 09:30:35.665'),('\\language\\language',NULL,'([a-z]{2})',NULL,NULL,NULL,NULL,'toLowerCase()','2018-01-27 22:45:58.164','2018-01-27 09:31:14.174'),('\\language\\locale',NULL,'([a-z]{2})_([A-Z]{2})',NULL,NULL,'([a-z]{2})_([A-Z]{2})','language,country',NULL,'2018-01-27 22:45:58.165','2018-01-27 09:31:58.640'),('\\language\\text',NULL,'(.+)','\\s','word',NULL,NULL,NULL,'2018-01-27 22:45:58.167','2018-01-27 09:32:48.810'),('\\language\\word',NULL,'([a-zA-Z]+)',NULL,NULL,NULL,NULL,NULL,'2018-01-27 22:45:58.168','2018-01-27 09:33:16.989'),('\\location\\country',NULL,'([A-Z]{2})',NULL,NULL,NULL,NULL,'toUpperCase()','2018-01-27 22:45:58.170','2018-01-27 09:33:50.401'),('\\network\\domain',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-27 22:45:58.171','2018-01-20 15:55:30.614'),('\\network\\ipv4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-27 22:45:58.173','2018-01-20 15:03:05.615'),('\\network\\network_cidr',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-27 22:45:58.174','2018-01-20 15:03:05.690'),('\\network\\socket',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-27 22:45:58.268','2018-01-20 15:03:05.709');
/*!40000 ALTER TABLE `datatypes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-28  0:04:01
