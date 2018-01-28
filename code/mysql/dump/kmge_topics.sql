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
-- Table structure for table `topics`
--

DROP TABLE IF EXISTS `topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topics` (
  `topic` varchar(200) NOT NULL,
  `retention` varchar(45) DEFAULT NULL,
  `content` varchar(45) DEFAULT NULL,
  `created` timestamp(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
  `timestamp` timestamp(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`topic`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topics`
--

LOCK TABLES `topics` WRITE;
/*!40000 ALTER TABLE `topics` DISABLE KEYS */;
INSERT INTO `topics` VALUES ('\\areas',NULL,NULL,'2018-01-27 22:45:37.281','2018-01-10 15:01:32.382'),('\\areas\\devops',NULL,NULL,'2018-01-27 22:45:37.298','2018-01-09 08:54:17.920'),('\\areas\\devops\\application',NULL,NULL,'2018-01-27 22:45:37.299','2018-01-09 08:20:53.774'),('\\areas\\devops\\application\\json',NULL,NULL,'2018-01-27 22:45:37.301','2018-01-10 17:56:20.732'),('\\areas\\devops\\aws_inventory',NULL,NULL,'2018-01-27 22:45:37.302','2018-01-08 19:00:27.841'),('\\areas\\devops\\aws_inventory\\json',NULL,NULL,'2018-01-27 22:45:37.303','2018-01-09 10:46:41.821'),('\\areas\\devops\\component_akamai',NULL,NULL,'2018-01-27 22:45:37.305','2018-01-08 16:01:56.802'),('\\areas\\devops\\component_akamai\\json',NULL,NULL,'2018-01-27 22:45:37.306','2018-01-09 09:23:26.369'),('\\areas\\devops\\component_wps_caches',NULL,NULL,'2018-01-27 22:45:37.308','2018-01-08 18:58:22.118'),('\\areas\\devops\\component_wps_caches\\json',NULL,NULL,'2018-01-27 22:45:37.309','2018-01-09 09:23:59.498'),('\\areas\\http',NULL,NULL,'2018-01-27 22:45:37.310','2018-01-08 12:16:40.865'),('\\areas\\http\\content_type',NULL,NULL,'2018-01-27 22:45:37.312','2018-01-06 19:50:30.416'),('\\areas\\http\\content_typegraphml',NULL,NULL,'2018-01-27 22:45:37.313','2018-01-06 19:50:36.667'),('\\areas\\http\\file_extension',NULL,NULL,'2018-01-27 22:45:37.315','2018-01-06 19:50:50.461'),('\\areas\\http\\har',NULL,NULL,'2018-01-27 22:45:37.316','2018-01-06 19:50:59.804'),('\\areas\\http\\http_headers',NULL,NULL,'2018-01-27 22:45:37.317','2018-01-06 19:51:04.226'),('\\areas\\http\\http_method',NULL,NULL,'2018-01-27 22:45:37.319','2018-01-06 19:51:08.399'),('\\areas\\http\\http_status',NULL,NULL,'2018-01-27 22:45:37.321','2018-01-06 19:51:12.555'),('\\areas\\http\\http_status_group',NULL,NULL,'2018-01-27 22:45:37.322','2018-01-06 19:51:16.690'),('\\areas\\http\\http_status_group_node',NULL,NULL,'2018-01-27 22:45:37.324','2018-01-06 19:51:21.757'),('\\areas\\http\\urls',NULL,NULL,'2018-01-27 22:45:37.325','2018-01-09 17:11:04.199'),('\\areas\\http\\urls\\http_errors',NULL,NULL,'2018-01-27 22:45:37.327','2018-01-09 16:09:51.617'),('\\areas\\http\\urls\\http_headers',NULL,NULL,'2018-01-27 22:45:37.328','2018-01-09 15:23:33.160'),('\\areas\\http\\urls\\http_results',NULL,NULL,'2018-01-27 22:45:37.330','2018-01-09 15:23:25.974'),('\\areas\\http\\urls\\http_status',NULL,NULL,'2018-01-27 22:45:37.331','2018-01-09 17:10:59.451'),('\\areas\\http\\urls\\json',NULL,NULL,'2018-01-27 22:45:37.332','2018-01-10 16:09:43.725'),('\\areas\\http\\urls\\json\\http',NULL,NULL,'2018-01-27 22:45:37.334','2018-01-10 16:09:41.445'),('\\areas\\language',NULL,NULL,'2018-01-27 22:45:37.335','2018-01-08 12:16:57.990'),('\\areas\\language\\language',NULL,NULL,'2018-01-27 22:45:37.338','2018-01-09 11:06:17.418'),('\\areas\\language\\language\\json',NULL,NULL,'2018-01-27 22:45:37.339','2018-01-09 11:05:28.869'),('\\areas\\language\\stopwords',NULL,NULL,'2018-01-27 22:45:37.341','2018-01-06 19:51:38.951'),('\\areas\\location',NULL,NULL,'2018-01-27 22:45:37.342','2018-01-08 19:03:41.312'),('\\areas\\location\\continents',NULL,NULL,'2018-01-27 22:45:37.343','2018-01-08 19:03:41.312'),('\\areas\\location\\continents\\json',NULL,NULL,'2018-01-27 22:45:37.345','2018-01-08 15:49:16.595'),('\\areas\\location\\geonames_countryInfo',NULL,NULL,'2018-01-27 22:45:37.346','2018-01-10 16:13:51.436'),('\\areas\\location\\geonames_countryInfo\\http',NULL,NULL,'2018-01-27 22:45:37.347','2018-01-10 16:13:49.529'),('\\areas\\location\\geonames_countryInfo\\json',NULL,NULL,'2018-01-27 22:45:37.349','2018-01-09 10:23:22.634'),('\\areas\\network',NULL,NULL,'2018-01-27 22:45:37.350','2018-01-08 12:19:55.189'),('\\areas\\network\\domains',NULL,NULL,'2018-01-27 22:45:37.353','2018-01-08 19:06:33.901'),('\\areas\\network\\domains\\json',NULL,NULL,'2018-01-27 22:45:37.354','2018-01-08 19:06:32.034'),('\\areas\\network\\domain_zone',NULL,NULL,'2018-01-27 22:45:37.351','2018-01-06 19:52:30.384'),('\\areas\\network\\network',NULL,NULL,'2018-01-27 22:45:37.356','2018-01-10 16:14:20.117'),('\\areas\\network\\network\\json',NULL,NULL,'2018-01-27 22:45:37.358','2018-01-10 16:14:16.628'),('\\areas\\network\\nslookup_a',NULL,NULL,'2018-01-27 22:45:37.359','2018-01-03 12:59:09.398'),('\\areas\\network\\port',NULL,NULL,'2018-01-27 22:45:37.361','2018-01-08 19:07:56.177'),('\\areas\\network\\port\\json',NULL,NULL,'2018-01-27 22:45:37.362','2018-01-08 19:07:54.431'),('\\areas\\organization',NULL,NULL,'2018-01-27 22:45:37.363','2018-01-09 11:35:20.637'),('\\areas\\organization\\hotels',NULL,NULL,'2018-01-27 22:45:37.368','2018-01-08 19:09:18.009'),('\\areas\\organization\\hotels\\json',NULL,NULL,'2018-01-27 22:45:37.369','2018-01-08 19:09:15.751'),('\\areas\\organization\\hotel_wifi',NULL,NULL,'2018-01-27 22:45:37.365','2018-01-08 19:08:51.775'),('\\areas\\organization\\hotel_wifi\\json',NULL,NULL,'2018-01-27 22:45:37.366','2018-01-08 19:08:49.458'),('\\areas\\organization\\mhi_brands',NULL,NULL,'2018-01-27 22:45:37.370','2018-01-09 11:36:55.770'),('\\areas\\organization\\mhi_brands\\json',NULL,NULL,'2018-01-27 22:45:37.372','2018-01-09 11:36:53.535'),('\\areas\\organization\\mhi_hotels',NULL,NULL,'2018-01-27 22:45:37.373','2018-01-09 11:37:02.257'),('\\areas\\organization\\mhi_hotels\\json',NULL,NULL,'2018-01-27 22:45:37.375','2018-01-09 11:36:59.991'),('\\areas\\organization\\organization_component',NULL,NULL,'2018-01-27 22:45:37.376','2018-01-08 19:09:34.824'),('\\areas\\organization\\organization_component\\json',NULL,NULL,'2018-01-27 22:45:37.378','2018-01-08 19:09:31.897'),('\\areas\\pattern',NULL,NULL,'2018-01-27 22:45:37.379','2018-01-06 19:47:18.693'),('\\areas\\person',NULL,NULL,'2018-01-27 22:45:37.381','2018-01-09 08:30:30.916'),('\\areas\\test2',NULL,NULL,'2018-01-27 22:45:37.382','2018-01-10 16:16:35.298'),('\\areas\\test2\\cmd',NULL,NULL,'2018-01-27 22:45:37.383','2018-01-09 12:16:07.290'),('\\areas\\test2\\cmd_result',NULL,NULL,'2018-01-27 22:45:37.385','2018-01-10 16:16:53.297'),('\\areas\\test2\\cmd_result\\json',NULL,NULL,'2018-01-27 22:45:37.386','2018-01-10 16:16:48.728'),('\\areas\\test2\\json',NULL,NULL,'2018-01-27 22:45:37.388','2018-01-10 06:17:45.759'),('\\areas\\test3',NULL,NULL,'2018-01-27 22:45:37.389','2018-01-10 21:49:04.286'),('\\areas\\test3\\filecontent',NULL,NULL,'2018-01-27 22:45:37.391','2018-01-10 15:05:38.095'),('\\areas\\test3\\json',NULL,NULL,'2018-01-27 22:45:37.392','2018-01-10 21:49:04.286'),('\\areas\\time',NULL,NULL,'2018-01-27 22:45:37.393','2018-01-08 12:20:46.472'),('\\areas\\time\\timezone',NULL,NULL,'2018-01-27 22:45:37.395','2018-01-08 19:10:28.890'),('\\areas\\time\\timezone\\json',NULL,NULL,'2018-01-27 22:45:37.396','2018-01-08 19:10:26.705'),('\\contexts',NULL,NULL,'2018-01-27 22:45:37.398','2018-01-19 17:40:44.497'),('\\nodes',NULL,NULL,'2018-01-27 22:45:37.399','2018-01-07 23:28:53.313'),('\\relationships',NULL,NULL,'2018-01-27 22:45:37.447','2018-01-07 23:28:37.222');
/*!40000 ALTER TABLE `topics` ENABLE KEYS */;
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
