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
-- Table structure for table `data`
--

DROP TABLE IF EXISTS `data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datatype` varchar(200) NOT NULL,
  `value` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data`
--

LOCK TABLES `data` WRITE;
/*!40000 ALTER TABLE `data` DISABLE KEYS */;
INSERT INTO `data` VALUES (1,'mail','xavier.oliva@melia.com'),(2,'url','http://www.melia.com/'),(3,'hotel','0345'),(4,'ipv4','123.23.11.34'),(5,'ipv4','23.34.110.1'),(6,'url','http://www.melia.com'),(7,'network_cidr','194.179.51.248/29'),(8,'url','https://portal.appdynamics.com/account/subscriptions/151508631967FKM/'),(9,'domain','www.melia.com'),(10,'domain','WWW.MELIA.COM'),(11,'identifier','devices'),(12,'identifier','true devices'),(13,'domain','www.trypleon.solmelia.com '),(14,'url','https://www.melia.com/en/hotels/spain/leon/tryp-leon'),(17,'filepath','C:\\\\Users\\\\xvlv001\\\\OneDrive - MHI\\\\PowerPoint'),(18,'urlpath','/account/subscriptions/151508631967FKM/image.jpg'),(19,'filepath','C:\\\\Users\\\\xvlv001\\\\OneDrive - MHI\\\\development\\\\kmg\\\\objects\\\\datatypes.json'),(20,'url','https://wiki.magnolia-cms.com/display/WIKI/Jackrabbit+Repository+Configuration+File#JackrabbitRepositoryConfigurationFile-DataStore'),(21,'identifier','TrueIdentifier'),(22,'identifier','codigo postal'),(23,'identifier','Código Postal'),(24,'identifier','codigo_postal'),(25,'identifier','$codigo'),(26,'identifier','code.in_motion'),(27,'language','es'),(28,'language','en'),(29,'country','EN'),(30,'country','GB'),(31,'locale','es_ES'),(32,'locale','en_GB'),(33,'locale','en_US'),(34,'aws_region','eu-west-1'),(35,'urlpath','/software/pases_melia/FixLogs/Melia_CSTM_WCM.war'),(37,'properties','{\n	\"mode\" : \"stream\",\n	\"publisher\" : \"\\\\relationships\",\n	\"relationship_type\" : \"\\\"IN\\\"\",\n	\"source_code\" : \"ID\",\n	\"source_label\" : \"\\\"aws_resource\\\"\",\n	\"subscriber\" : \".\",\n	\"target_code\" : \"Region\",\n	\"target_label\" : \"\\\"aws_region\\\"\"\n}'),(38,'properties','{\n	\"metastring\" : \"nslookup ${domain}\",\n	\"mode\" : \"stream\",\n	\"publisher\" : \"\\\\areas\\\\test2\\\\cmd\",\n	\"subscriber\" : \".\",\n	\"token_end\" : \"}\",\n	\"token_start\" : \"${\"\n}');
/*!40000 ALTER TABLE `data` ENABLE KEYS */;
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
