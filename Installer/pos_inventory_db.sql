-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: pos_inventory_db
-- ------------------------------------------------------
-- Server version	5.7.6-m16-log

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
-- Temporary table structure for view `annual_sales_report`
--

DROP TABLE IF EXISTS `annual_sales_report`;
/*!50001 DROP VIEW IF EXISTS `annual_sales_report`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `annual_sales_report` (
  `Year` tinyint NOT NULL,
  `AVG_Sales` tinyint NOT NULL,
  `Sales` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `audit_trail_tbl`
--

DROP TABLE IF EXISTS `audit_trail_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit_trail_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(45) NOT NULL,
  `receipt_id` int(11) DEFAULT NULL,
  `activity` longtext,
  `date` date DEFAULT NULL,
  `time` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_receipt_fk_idx` (`receipt_id`),
  CONSTRAINT `audit_receipt_fk` FOREIGN KEY (`receipt_id`) REFERENCES `receipt_tbl` (`invoice_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=298 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_trail_tbl`
--

LOCK TABLES `audit_trail_tbl` WRITE;
/*!40000 ALTER TABLE `audit_trail_tbl` DISABLE KEYS */;
INSERT INTO `audit_trail_tbl` VALUES (1,'Rabi',NULL,'added new User saito007','2016-01-17','12:4:26'),(2,'Randy',NULL,'completed a transaction: POS_00041','2016-01-17','18:8:8'),(3,'Randy',NULL,'completed a transaction: POS_00045','2016-01-18','14:48:15'),(4,'Randy',NULL,'completed a transaction: POS_00048','2016-01-18','14:51:51'),(5,'Randy',NULL,'completed a transaction: POS_00050','2016-01-18','14:55:0'),(6,'Karen',NULL,'completed a transaction: Payment: Php 300.00','2016-01-18','14:56:4'),(7,'Randy',NULL,'completed a transaction: POS_00054','2016-01-18','14:59:48'),(8,'Karen',NULL,'completed a transaction: Payment: Php 500.00','2016-01-18','15:1:43'),(9,'Karen',NULL,'completed a transaction: Payment: Php 400.00','2016-01-18','15:3:36'),(10,'Karen',NULL,'completed a transaction: Payment: Php 400.00','2016-01-18','15:6:48'),(11,'Karen',NULL,'completed a transaction: Payment: Php 400.00','2016-01-18','15:7:49'),(12,'Jerwin',NULL,'added a new stock of product','2016-01-19','21:23:26'),(13,'Jerwin',NULL,'has added a new product','2016-01-19','21:23:26'),(14,'Randy',NULL,'completed a transaction: POS_00072','2016-01-20','20:37:14'),(15,'Randy',NULL,'completed a transaction: POS_00075','2016-01-20','20:45:0'),(16,'Randy',NULL,'completed a transaction: POS_00080','2016-01-20','23:51:48'),(17,'Karen',NULL,'completed a transaction: Payment: Php 3,000.00','2016-01-21','0:2:15'),(18,'Karen',NULL,'completed a transaction: Payment: Php 0.00','2016-01-21','0:2:40'),(19,'Randy',NULL,'completed a transaction: POS_00086','2016-01-21','0:43:21'),(20,'Randy',NULL,'completed a transaction: POS_00087','2016-01-21','0:51:15'),(21,'Karen',NULL,'completed a transaction: Payment: Php 6,000.00','2016-01-21','0:54:14'),(22,'Randy',NULL,'completed a transaction: POS_00090','2016-01-21','1:42:3'),(23,'Randy',NULL,'completed a transaction: POS_00092','2016-01-21','1:45:0'),(24,'Karen',NULL,'completed a transaction: Payment: Php 400.00','2016-01-21','1:48:3'),(25,'Randy',NULL,'completed a transaction: POS_00095','2016-01-21','1:52:27'),(26,'Karen',NULL,'completed a transaction: Payment: Php 2,000.00','2016-01-21','1:53:46'),(27,'Jerwin',NULL,'added a new stock of product','2016-01-24','15:51:20'),(28,'Jerwin',NULL,'has added a new product','2016-01-24','15:51:21'),(29,'Jerwin',NULL,'added a new stock of product','2016-01-24','15:58:45'),(30,'Jerwin',NULL,'has added a new product','2016-01-24','15:58:45'),(31,'Jerwin',NULL,'added a new stock of product','2016-01-24','16:10:7'),(32,'Jerwin',NULL,'added a new stock of product','2016-01-24','16:12:30'),(33,'Jerwin',NULL,'added a new stock of product','2016-01-24','16:13:2'),(34,'Jerwin',NULL,'has updated the product A','2016-01-24','16:53:25'),(35,'Jerwin',NULL,'has updated the product A','2016-01-24','17:18:31'),(36,'Jerwin',NULL,'has updated the product A slim notebook','2016-01-24','17:23:47'),(37,'Randy',NULL,'completed a transaction: POS_00098','2016-01-24','17:30:24'),(38,'Karen',NULL,'completed a transaction: Payment: Php 300.00','2016-01-24','17:31:30'),(39,'Jerwin',NULL,'has updated the product A slim notebook','2016-01-24','17:34:15'),(40,'Jerwin',NULL,'has updated the product Cherry mobile','2016-01-24','17:36:31'),(41,'Jerwin',NULL,'added a new stock of product','2016-01-24','21:7:25'),(42,'Jerwin',NULL,'has added a new product','2016-01-24','21:7:25'),(43,'Jerwin',NULL,'has updated the product Mechanical Safety Edge','2016-01-24','21:8:22'),(44,'Jerwin',NULL,'added a new stock of product','2016-01-24','21:18:44'),(45,'Jerwin',NULL,'has added a new product','2016-01-24','21:18:44'),(46,'Jerwin',NULL,'added a new stock of product','2016-01-24','21:19:17'),(47,'Jerwin',NULL,'has added a new product','2016-01-24','21:19:17'),(48,'Jerwin',NULL,'has updated the product FLAP BARRIER GATE','2016-01-24','21:20:52'),(49,'Rabi',NULL,'updated User Rabi','2016-01-26','11:40:7'),(50,'Rabi',NULL,'updated User Randy','2016-01-26','11:44:11'),(51,'Rabi',NULL,'updated User Randy','2016-01-26','11:47:7'),(52,'Rabi',NULL,'updated User Jerwin','2016-01-26','11:49:1'),(53,'Rabi',NULL,'updated User Rabi','2016-01-26','11:52:41'),(54,'Rabi',NULL,'updated User Rabi','2016-01-26','11:55:0'),(55,'Rabi',NULL,'updated User Rabi','2016-01-26','12:0:46'),(56,'Rabi',NULL,'updated User Rabi','2016-01-26','12:2:38'),(57,'Rabi',NULL,'updated User Rabi','2016-01-26','12:12:31'),(58,'Rabi',NULL,'updated User Rabi','2016-02-09','4:59:2'),(59,'Rabi',NULL,'updated User Rabi','2016-02-09','5:3:41'),(60,'Rabi',NULL,'updated User Rabi','2016-02-09','5:3:59'),(61,'Rabi',NULL,'updated User Rabi','2016-02-10','14:5:4'),(62,'Jerwin',NULL,'added a new stock of product','2016-02-10','14:32:59'),(63,'Jerwin',NULL,'has added a new product','2016-02-10','14:32:59'),(64,'Jerwin',NULL,'added a new stock of product','2016-02-10','14:58:13'),(65,'Jerwin',NULL,'has added a new product','2016-02-10','14:58:13'),(66,'Jerwin',NULL,'added a new stock of product','2016-02-10','14:58:33'),(67,'Jerwin',NULL,'added a new stock of product','2016-02-10','15:0:46'),(68,'Jerwin',NULL,'has added a new product','2016-02-10','15:0:47'),(69,'Karen',NULL,'completed a transaction: POS_00110','2016-02-12','22:0:35'),(70,'Randy',NULL,'completed a transaction: POS_00112','2016-02-12','22:2:11'),(71,'Karen',NULL,'completed a transaction: Payment: Php 500.00','2016-02-12','22:3:7'),(72,'Jerwin',NULL,'added a new stock of product','2016-02-12','22:3:47'),(73,'Jerwin',NULL,'added a new stock of product','2016-02-12','22:10:34'),(74,'Rabi',NULL,'has updated the product Ultima','2016-02-12','22:11:1'),(75,'Karen',NULL,'completed a transaction: POS_00116','2016-02-12','22:13:31'),(76,'Randy',NULL,'completed a transaction: POS_00118','2016-02-12','22:14:5'),(77,'Karen',NULL,'completed a transaction: Payment: Php 300.00','2016-02-12','22:14:57'),(78,'Rabi',NULL,'updated User Rabi','2016-02-14','10:59:8'),(79,'Rabi',NULL,'updated User Rabi','2016-02-14','11:1:54'),(80,'Jerwin',NULL,'added a new stock of product','2016-02-14','13:31:54'),(81,'Rabi',NULL,'added a new stock of product','2016-02-14','14:45:56'),(82,'Rabi',NULL,'has added a new product','2016-02-14','14:45:57'),(83,'Randy',NULL,'completed a transaction: POS_00145','2016-02-14','14:49:41'),(84,'Karen',NULL,'completed a transaction: Payment: Php 160,000.00','2016-02-14','14:54:32'),(85,'Rabi',NULL,'added a new stock of product','2016-02-14','15:50:2'),(86,'Rabi',NULL,'has added a new product','2016-02-14','15:50:2'),(87,'Rabi',NULL,'updated User Karen','2016-02-14','16:7:16'),(88,'Rabi',NULL,'updated User Karen','2016-02-14','15:58:38'),(89,'Karen',NULL,'completed a transaction: Payment: Php 0.00','2016-02-14','16:1:52'),(90,'Karen',NULL,'completed a transaction: Payment: Php 0.00','2016-02-14','16:2:9'),(91,'Karen',NULL,'completed a transaction: Payment: Php 0.00','2016-02-14','16:2:18'),(92,'Karen',NULL,'completed a transaction: Payment: Php 0.00','2016-02-14','16:2:35'),(93,'Karen',NULL,'completed a transaction: Payment: Php 0.00','2016-02-14','16:2:41'),(94,'Randy',NULL,'completed a transaction: POS_00150','2016-02-14','16:5:0'),(95,'Randy',NULL,'completed a transaction: POS_00158','2016-02-14','16:6:1'),(96,'Karen',NULL,'completed a transaction: Payment: Php 800,000.00','2016-02-14','16:9:59'),(97,'Karen',NULL,'updated User Karen','2016-02-14','16:15:59'),(98,'Rabi',NULL,'added a new stock of product','2016-02-14','17:4:44'),(99,'Rabi',NULL,'has added a new product','2016-02-14','17:4:44'),(100,'Rabi',NULL,'added a new stock of product','2016-02-14','17:12:53'),(101,'Rabi',NULL,'has added a new product','2016-02-14','17:12:53'),(102,'Rabi',NULL,'added a new stock of product','2016-02-14','17:14:44'),(103,'Rabi',NULL,'has added a new product','2016-02-14','17:14:44'),(104,'Rabi',NULL,'added a new stock of product','2016-02-14','17:16:16'),(105,'Rabi',NULL,'has added a new product','2016-02-14','17:16:16'),(106,'Rabi',NULL,'added a new stock of product','2016-02-14','17:17:37'),(107,'Rabi',NULL,'has added a new product','2016-02-14','17:17:37'),(108,'Rabi',NULL,'added a new stock of product','2016-02-14','17:20:16'),(109,'Rabi',NULL,'has added a new product','2016-02-14','17:20:16'),(110,'Rabi',NULL,'added a new stock of product','2016-02-14','17:22:33'),(111,'Rabi',NULL,'has added a new product','2016-02-14','17:22:33'),(112,'Rabi',NULL,'added a new stock of product','2016-02-14','17:24:40'),(113,'Rabi',NULL,'has added a new product','2016-02-14','17:24:40'),(114,'Rabi',NULL,'added a new stock of product','2016-02-14','17:26:0'),(115,'Rabi',NULL,'has added a new product','2016-02-14','17:26:1'),(116,'Rabi',NULL,'added a new stock of product','2016-02-14','17:27:34'),(117,'Rabi',NULL,'has added a new product','2016-02-14','17:27:34'),(118,'Rabi',NULL,'added a new stock of product','2016-02-14','17:29:12'),(119,'Rabi',NULL,'has added a new product','2016-02-14','17:29:13'),(120,'Rabi',NULL,'added a new stock of product','2016-02-14','17:34:41'),(121,'Rabi',NULL,'has added a new product','2016-02-14','17:34:41'),(122,'Rabi',NULL,'added a new stock of product','2016-02-14','17:38:49'),(123,'Rabi',NULL,'has added a new product','2016-02-14','17:38:49'),(124,'Rabi',NULL,'added a new stock of product','2016-02-14','17:41:49'),(125,'Rabi',NULL,'has added a new product','2016-02-14','17:41:49'),(126,'Rabi',NULL,'added a new stock of product','2016-02-14','17:45:30'),(127,'Rabi',NULL,'has added a new product','2016-02-14','17:45:30'),(128,'Rabi',NULL,'added a new stock of product','2016-02-14','17:48:16'),(129,'Rabi',NULL,'has added a new product','2016-02-14','17:48:16'),(130,'Rabi',NULL,'added a new stock of product','2016-02-14','17:49:50'),(131,'Rabi',NULL,'has added a new product','2016-02-14','17:49:50'),(132,'Rabi',NULL,'added a new stock of product','2016-02-14','17:52:3'),(133,'Rabi',NULL,'has added a new product','2016-02-14','17:52:3'),(134,'Rabi',NULL,'added a new stock of product','2016-02-14','17:53:54'),(135,'Rabi',NULL,'has added a new product','2016-02-14','17:53:54'),(136,'Rabi',NULL,'added a new stock of product','2016-02-14','17:55:27'),(137,'Rabi',NULL,'has added a new product','2016-02-14','17:55:27'),(138,'Rabi',NULL,'added a new stock of product','2016-02-14','17:57:2'),(139,'Rabi',NULL,'has added a new product','2016-02-14','17:57:2'),(140,'Rabi',NULL,'added a new stock of product','2016-02-14','17:58:45'),(141,'Rabi',NULL,'has added a new product','2016-02-14','17:58:45'),(142,'Rabi',NULL,'added a new stock of product','2016-02-14','18:0:34'),(143,'Rabi',NULL,'has added a new product','2016-02-14','18:0:34'),(144,'Rabi',NULL,'added a new stock of product','2016-02-14','18:2:14'),(145,'Rabi',NULL,'has added a new product','2016-02-14','18:2:14'),(146,'Rabi',NULL,'added a new stock of product','2016-02-14','18:3:35'),(147,'Rabi',NULL,'has added a new product','2016-02-14','18:3:36'),(148,'Rabi',NULL,'added a new stock of product','2016-02-14','18:5:14'),(149,'Rabi',NULL,'has added a new product','2016-02-14','18:5:14'),(150,'Rabi',NULL,'added a new stock of product','2016-02-21','13:49:39'),(151,'Rabi',NULL,'added a new stock of product','2016-02-21','13:50:53'),(152,'Randy',NULL,'completed a transaction: POS_00002','2016-02-21','17:0:25'),(153,'Karen',NULL,'completed a transaction: Payment: Php 200,000.00','2016-02-21','17:2:30'),(154,'Randy',NULL,'completed a transaction: POS_00005','2016-02-21','17:4:36'),(155,'Randy',NULL,'completed a transaction: POS_00007','2016-02-21','17:6:3'),(156,'Randy',NULL,'completed a transaction: POS_00008','2016-02-21','17:9:38'),(157,'Randy',NULL,'completed a transaction: POS_00010','2016-02-21','17:18:44'),(158,'Randy',NULL,'completed a transaction: POS_00013','2016-02-21','17:21:0'),(159,'Randy',NULL,'completed a transaction: POS_00017','2016-02-21','17:26:45'),(160,'Randy',NULL,'completed a transaction: POS_00019','2016-02-21','17:31:34'),(161,'Randy',NULL,'completed a transaction: POS_00022','2016-02-21','17:38:21'),(162,'Rabi',NULL,'updated User Rabi','2016-02-21','18:7:19'),(163,'Rabi',NULL,'updated User Jerwin','2016-02-21','18:9:22'),(164,'Rabi',NULL,'has updated the product Varifocal IR Camera','2016-02-21','18:26:42'),(165,'Randy',NULL,'completed a transaction: POS_00046','2016-02-22','14:22:25'),(166,'Randy',NULL,'completed a transaction: POS_00048','2016-02-22','14:26:9'),(167,'Karen',NULL,'completed a transaction: Payment: Php 2,000,000.00','2016-02-22','14:30:32'),(168,'Karen',NULL,'completed a transaction: Payment: Php 14,000.00','2016-02-22','16:7:41'),(169,'Randy',NULL,'completed a transaction: POS_00049','2016-02-22','6:45:51'),(170,'Randy',NULL,'completed a transaction: POS_00049','2016-02-22','8:11:25'),(171,'Randy',NULL,'completed a transaction: POS_00049','2016-02-22','8:17:17'),(172,'Randy',NULL,'completed a transaction: POS_00049','2016-02-22','8:37:6'),(173,'Randy',NULL,'completed a transaction: POS_00049','2016-02-22','8:39:12'),(174,'Randy',NULL,'completed a transaction: POS_00049','2016-02-22','8:40:3'),(175,'Randy',NULL,'completed a transaction: POS_00049','2016-02-22','8:42:33'),(176,'Randy',NULL,'completed a transaction: POS_00049','2016-02-22','8:47:8'),(177,'Randy',NULL,'completed a transaction: POS_00049','2016-02-22','8:49:19'),(178,'Randy',NULL,'completed a transaction: POS_00049','2016-02-22','8:50:37'),(179,'Randy',NULL,'completed a transaction: POS_00049','2016-02-22','8:55:47'),(180,'Randy',NULL,'completed a transaction: POS_00049','2016-02-22','8:57:15'),(181,'Randy',NULL,'completed a transaction: POS_00049','2016-02-22','9:0:10'),(182,'Randy',NULL,'completed a transaction: POS_00049','2016-02-22','9:2:59'),(183,'Randy',NULL,'completed a transaction: POS_00049','2016-02-22','9:4:13'),(184,'Randy',NULL,'completed a transaction: POS_00049','2016-02-22','9:11:22'),(185,'Randy',NULL,'completed a transaction: POS_00049','2016-02-22','9:40:34'),(186,'Randy',NULL,'completed a transaction: POS_00049','2016-02-22','9:45:45'),(187,'Randy',NULL,'completed a transaction: POS_00096','2016-02-25','12:0:38'),(188,'Randy',NULL,'completed a transaction: POS_00099','2016-02-25','12:48:10'),(189,'Randy',NULL,'completed a transaction: POS_00100','2016-02-25','12:48:36'),(190,'Randy',NULL,'completed a transaction: POS_00102','2016-02-25','12:49:9'),(191,'Randy',NULL,'completed a transaction: POS_00105','2016-02-25','12:50:47'),(192,'Randy',NULL,'completed a transaction: POS_00121','2016-02-25','13:15:38'),(193,'Karen',NULL,'completed a transaction: Payment: Php 6,000.00','2016-02-25','13:21:50'),(194,'Karen',NULL,'completed a transaction: Payment: Php 1,500.00','2016-02-25','13:23:41'),(195,'Randy',NULL,'completed a transaction: POS_00128','2016-02-25','14:43:2'),(196,'Randy',NULL,'completed a transaction: POS_00130','2016-02-25','14:46:26'),(197,'Randy',NULL,'completed a transaction: POS_00132','2016-02-25','14:47:13'),(198,'Randy',NULL,'completed a transaction: POS_00135','2016-02-25','15:5:7'),(199,'Karen',NULL,'completed a transaction: Payment: Php 8,000.00','2016-02-25','15:5:49'),(200,'Randy',NULL,'completed a transaction: POS_00139','2016-02-25','15:7:28'),(201,'Randy',NULL,'completed a transaction: POS_00141','2016-02-25','15:7:52'),(202,'Karen',NULL,'completed a transaction: Payment: Php 150,000.00','2016-02-25','15:11:15'),(203,'Randy',NULL,'completed a transaction: POS_00144','2016-02-25','15:14:31'),(204,'Karen',NULL,'completed a transaction: Payment: Php 250,000.00','2016-02-25','15:17:10'),(205,'Randy',NULL,'completed a transaction: POS_00149','2016-02-25','15:19:56'),(206,'Karen',NULL,'completed a transaction: Payment: Php 350.00','2016-02-25','15:20:14'),(207,'Randy',NULL,'completed a transaction: POS_00154','2016-02-25','15:25:11'),(208,'Karen',NULL,'completed a transaction: Payment: Php 350.00','2016-02-25','15:25:53'),(209,'Randy',NULL,'completed a transaction: POS_00157','2016-02-25','15:27:42'),(210,'Karen',NULL,'completed a transaction: Payment: Php 350.00','2016-02-25','15:28:48'),(211,'Randy',NULL,'completed a transaction: POS_00161','2016-02-25','15:33:35'),(212,'Karen',NULL,'completed a transaction: Payment: Php 350.00','2016-02-25','15:34:24'),(213,'Randy',NULL,'completed a transaction: POS_00165','2016-02-25','15:37:45'),(214,'Karen',NULL,'completed a transaction: Payment: Php 350.00','2016-02-25','15:42:54'),(215,'Randy',NULL,'completed a transaction: POS_00169','2016-02-25','15:46:50'),(216,'Randy',NULL,'completed a transaction: POS_00171','2016-02-25','16:1:43'),(217,'Randy',NULL,'completed a transaction: POS_00173','2016-02-25','16:11:13'),(218,'Randy',NULL,'completed a transaction: POS_00175','2016-02-25','16:14:14'),(219,'Randy',NULL,'completed a transaction: POS_00176','2016-02-25','16:14:52'),(220,'Randy',NULL,'completed a transaction: POS_00177','2016-02-25','16:15:13'),(221,'Randy',NULL,'completed a transaction: POS_00179','2016-02-25','16:17:58'),(222,'Karen',NULL,'completed a transaction: Payment: Php 350.00','2016-02-25','16:20:53'),(223,'Randy',NULL,'completed a transaction: POS_00183','2016-02-25','16:23:45'),(224,'Karen',NULL,'completed a transaction: Payment: Php 350.00','2016-02-25','16:24:0'),(225,'Randy',NULL,'completed a transaction: POS_00187','2016-02-25','16:25:47'),(226,'Karen',NULL,'completed a transaction: Payment: Php 350.00','2016-02-25','16:26:23'),(227,'Randy',NULL,'completed a transaction: POS_00191','2016-02-25','16:28:23'),(228,'Karen',NULL,'completed a transaction: Payment: Php 350.00','2016-02-25','16:28:53'),(229,'Randy',NULL,'completed a transaction: POS_00195','2016-02-25','16:32:58'),(230,'Karen',NULL,'completed a transaction: Payment: Php 300.00','2016-02-25','16:33:43'),(231,'Randy',NULL,'completed a transaction: POS_00199','2016-02-25','16:37:0'),(232,'Karen',NULL,'completed a transaction: Payment: Php 300.00','2016-02-25','16:37:35'),(233,'Randy',NULL,'completed a transaction: POS_00203','2016-02-25','16:39:35'),(234,'Randy',NULL,'completed a transaction: POS_00204','2016-02-25','16:40:10'),(235,'Randy',NULL,'completed a transaction: POS_00206','2016-02-25','16:40:33'),(236,'Randy',NULL,'completed a transaction: POS_00207','2016-02-25','16:40:56'),(237,'Randy',NULL,'completed a transaction: POS_00208','2016-02-25','16:41:5'),(238,'Randy',NULL,'completed a transaction: POS_00210','2016-02-25','16:52:54'),(239,'Karen',NULL,'completed a transaction: Payment: Php 350.00','2016-02-25','16:53:25'),(240,'Karen',NULL,'completed a transaction: POS_00229','2016-02-25','18:23:31'),(241,'Karen',NULL,'completed a transaction: POS_00231','2016-02-25','18:25:2'),(242,'Karen',NULL,'completed a transaction: POS_00233','2016-02-25','18:29:17'),(243,'Karen',NULL,'completed a transaction: POS_00234','2016-02-25','18:30:29'),(244,'Karen',NULL,'completed a transaction: POS_00239','2016-02-25','18:44:57'),(245,'Karen',NULL,'completed a transaction: POS_00243','2016-02-25','18:47:8'),(246,'Karen',NULL,'completed a transaction: POS_00244','2016-02-25','18:47:31'),(247,'Karen',NULL,'completed a transaction: POS_00247','2016-02-25','18:51:58'),(248,'Randy',NULL,'completed a transaction: POS_00249','2016-02-25','18:52:53'),(249,'Randy',NULL,'completed a transaction: POS_00251','2016-02-25','18:54:42'),(250,'Karen',NULL,'completed a transaction: Payment: Php 350.00','2016-02-25','18:55:19'),(251,'Randy',NULL,'completed a transaction: POS_00255','2016-02-29','2:23:10'),(252,'Randy',NULL,'completed a transaction: POS_00257','2016-02-29','4:23:25'),(253,'Karen',NULL,'completed a transaction: Payment: Php 0.00','2016-02-29','5:33:56'),(254,'Karen',NULL,'completed a transaction: Payment: Php 0.00','2016-02-29','5:36:33'),(255,'Karen',NULL,'completed a transaction: Payment: Php 500.00','2016-02-29','6:19:47'),(256,'Karen',NULL,'completed a transaction: Payment: Php 50,000.00','2016-02-29','6:21:5'),(257,'Karen',NULL,'completed a transaction: Payment: Php 5,000.00','2016-02-29','6:23:55'),(258,'Karen',NULL,'completed a transaction: Payment: Php 5,000.00','2016-02-29','6:32:39'),(259,'Karen',NULL,'completed a transaction: Payment: Php 5,000.00','2016-02-29','6:34:38'),(260,'Karen',NULL,'completed a transaction: Payment: Php 99,999.00','2016-02-29','6:42:18'),(261,'Karen',NULL,'completed a transaction: Payment: Php 5,000.00','2016-02-29','6:42:43'),(262,'Karen',NULL,'completed a transaction: Payment: Php 500.00','2016-02-29','6:43:5'),(263,'Karen',NULL,'completed a transaction: Payment: Php 9,999.00','2016-02-29','6:43:31'),(264,'Karen',NULL,'completed a transaction: Payment: Php 500.00','2016-02-29','6:47:25'),(265,'Karen',NULL,'completed a transaction: Payment: Php 500.00','2016-02-29','6:52:35'),(266,'Karen',NULL,'completed a transaction: Payment: Php 75,000.00','2016-02-29','6:57:23'),(267,'Randy',NULL,'completed a transaction: POS_00307','2016-02-29','7:11:22'),(268,'Karen',NULL,'completed a transaction: Payment: Php 135.00','2016-02-29','7:11:47'),(269,'Randy',NULL,'completed a transaction: POS_00311','2016-02-29','8:10:45'),(270,'Karen',NULL,'completed a transaction: Payment: Php 700.00','2016-02-29','8:11:28'),(271,'Randy',NULL,'completed a transaction: POS_00315','2016-02-29','8:22:58'),(272,'Karen',NULL,'completed a transaction: Payment: Php 700.00','2016-02-29','8:25:49'),(273,'Randy',NULL,'completed a transaction: POS_00319','2016-02-29','8:38:54'),(274,'Karen',NULL,'completed a transaction: Payment: Php 700.00','2016-02-29','8:39:24'),(275,'Randy',NULL,'completed a transaction: POS_00323','2016-02-29','8:45:40'),(276,'Karen',NULL,'completed a transaction: Payment: Php 2,000.00','2016-02-29','8:46:14'),(277,'Rabi',NULL,'has updated the product FingerPrint Access Control Terminals','2016-03-02','22:1:48'),(278,'Rabi',NULL,'added new User roddex','2016-03-02','22:28:18'),(279,'Rabi',NULL,'updated User roddex','2016-03-02','22:28:38'),(280,'Rabi',NULL,'removed the User roddex','2016-03-02','22:28:44'),(281,'Randy',NULL,'completed a transaction: POS_00327','2016-03-20','18:59:39'),(282,'Karen',NULL,'completed a transaction: Payment: Php 25,000.00','2016-03-20','19:0:44'),(283,'Randy',NULL,'completed a transaction: POS_00332','2016-03-20','19:3:37'),(284,'Randy',NULL,'completed a transaction: POS_00334','2016-03-20','19:5:10'),(285,'Karen',NULL,'completed a transaction: Payment: Php 8,000,000.00','2016-03-20','19:7:17'),(286,'Randy',NULL,'completed a transaction: POS_00340','2016-03-20','19:16:47'),(287,'Karen',NULL,'completed a transaction: Payment: Php 14,000,000.00','2016-03-20','19:22:25'),(288,'Randy',NULL,'completed a transaction: POS_00348','2016-03-20','19:39:47'),(289,'Randy',NULL,'completed a transaction: POS_00349','2016-03-20','19:42:2'),(290,'Karen',NULL,'completed a transaction: Payment: Php 3,000,000.00','2016-03-20','19:42:26'),(291,'Karen',NULL,'completed a transaction: Payment: Php 3,000,000.00','2016-03-20','19:43:43'),(292,'Randy',NULL,'completed a transaction: POS_00354','2016-03-20','19:49:30'),(293,'Karen',NULL,'completed a transaction: Payment: Php 3,000,000.00','2016-03-20','19:49:58'),(294,'Randy',NULL,'completed a transaction: POS_00358','2016-03-20','19:57:3'),(295,'Karen',NULL,'completed a transaction: Payment: Php 3,000,000.00','2016-03-20','19:57:30'),(296,'Randy',NULL,'completed a transaction: POS_00362','2016-03-20','20:6:23'),(297,'Karen',NULL,'completed a transaction: Payment: Php 3,000,000.00','2016-03-20','20:7:11');
/*!40000 ALTER TABLE `audit_trail_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `audit_trail_view`
--

DROP TABLE IF EXISTS `audit_trail_view`;
/*!50001 DROP VIEW IF EXISTS `audit_trail_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `audit_trail_view` (
  `date` tinyint NOT NULL,
  `time` tinyint NOT NULL,
  `activity` tinyint NOT NULL,
  `user_id` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `availed_discounts_tbl`
--

DROP TABLE IF EXISTS `availed_discounts_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `availed_discounts_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` int(11) NOT NULL,
  `discount_type` int(11) NOT NULL,
  `discount_title` varchar(45) NOT NULL,
  `less` decimal(8,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `invoice_id_idx` (`invoice_id`),
  CONSTRAINT `invoice_id` FOREIGN KEY (`invoice_id`) REFERENCES `product_invoice_tbl` (`invoice_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `availed_discounts_tbl`
--

LOCK TABLES `availed_discounts_tbl` WRITE;
/*!40000 ALTER TABLE `availed_discounts_tbl` DISABLE KEYS */;
INSERT INTO `availed_discounts_tbl` VALUES (1,132,1,'BULK',5.00),(2,132,2,'HOLYWEEK',100.00),(3,135,1,'BULK',5.00),(4,135,2,'HOLYWEEK',100.00),(5,139,1,'SC/PWD',20.00),(6,139,2,'HOLYWEEK',100.00),(7,141,1,'SC/PWD',20.00),(8,141,2,'HOLYWEEK',100.00),(9,144,1,'SC/PWD',20.00),(10,144,2,'HOLYWEEK',100.00),(11,149,1,'SC/PWD',20.00),(12,154,1,'SC/PWD',20.00),(13,157,1,'SC/PWD',20.00),(14,161,1,'SC/PWD',20.00),(15,165,1,'SC/PWD',20.00),(16,169,1,'SC/PWD',20.00),(17,171,1,'SC/PWD',20.00),(18,173,1,'SC/PWD',20.00),(19,175,1,'SC/PWD',20.00),(20,177,1,'SC/PWD',20.00),(21,179,1,'SC/PWD',20.00),(22,183,1,'SC/PWD',20.00),(23,187,1,'SC/PWD',20.00),(24,191,1,'SC/PWD',20.00),(25,195,1,'SC/PWD',20.00),(26,195,1,'BULK',5.00),(27,199,1,'BULK',5.00),(28,199,2,'HOLYWEEK',100.00),(29,203,1,'SC/PWD',20.00),(30,203,1,'BULK',5.00),(31,203,2,'HOLYWEEK',100.00),(32,204,2,'HOLYWEEK',100.00),(33,210,1,'SC/PWD',20.00),(34,229,1,'SC/PWD',20.00),(35,231,1,'SC/PWD',20.00),(36,233,1,'SC/PWD',20.00),(37,234,1,'SC/PWD',20.00),(38,234,2,'HOLYWEEK',100.00),(39,239,1,'SC/PWD',20.00),(40,243,1,'SC/PWD',20.00),(41,247,1,'SC/PWD',20.00),(42,251,1,'SC/PWD',20.00),(43,255,2,'HOLYWEEK',100.00),(44,327,1,'BULK',5.00),(45,332,2,'XMAS',100.00),(46,334,1,'BULK',5.00),(47,340,1,'BULK',5.00),(48,348,1,'BULK',5.00),(49,349,1,'BULK',5.00),(50,354,1,'BULK',5.00),(51,358,1,'BULK',5.00),(52,362,1,'BULK',5.00);
/*!40000 ALTER TABLE `availed_discounts_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `bestsellers`
--

DROP TABLE IF EXISTS `bestsellers`;
/*!50001 DROP VIEW IF EXISTS `bestsellers`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `bestsellers` (
  `Name` tinyint NOT NULL,
  `Item_Sold` tinyint NOT NULL,
  `Percent_Share` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `category_tbl`
--

DROP TABLE IF EXISTS `category_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_tbl`
--

LOCK TABLES `category_tbl` WRITE;
/*!40000 ALTER TABLE `category_tbl` DISABLE KEYS */;
INSERT INTO `category_tbl` VALUES (1,'Camera'),(2,'Proximity Card'),(3,'Card'),(4,'Card Readers'),(5,'Door Locks'),(6,'Access Control'),(7,'Panic Button'),(8,'Siren');
/*!40000 ALTER TABLE `category_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_profile_tbl`
--

DROP TABLE IF EXISTS `company_profile_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_profile_tbl` (
  `compname` varchar(70) NOT NULL,
  `address` text,
  `contactno` varchar(13) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `logo_path` text,
  `vat_reg_tin` varchar(45) DEFAULT NULL,
  `tax` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`compname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_profile_tbl`
--

LOCK TABLES `company_profile_tbl` WRITE;
/*!40000 ALTER TABLE `company_profile_tbl` DISABLE KEYS */;
INSERT INTO `company_profile_tbl` VALUES ('Akira','25 Santiago St,. Quezon City','09195558899','email','H:\\\\\\\\decaf\\Pictures\\Onodera\\Kosaki Onodera.jpg','008-069-074-007',0.12);
/*!40000 ALTER TABLE `company_profile_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_tbl`
--

DROP TABLE IF EXISTS `customer_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) NOT NULL,
  `middlename` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `mobile_number` varchar(45) DEFAULT NULL,
  `telephone_number` varchar(45) DEFAULT NULL,
  `email_address` varchar(45) DEFAULT NULL,
  `address` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_tbl`
--

LOCK TABLES `customer_tbl` WRITE;
/*!40000 ALTER TABLE `customer_tbl` DISABLE KEYS */;
INSERT INTO `customer_tbl` VALUES (1,'jdklfjskl','jfdlkf;','jfdklj','fdjklfjf','fdjklfjf','jfdlskfjsld','dlkfjlds ljflafldj'),(2,'','','','','','',' '),(3,'Raineir Rabi','Ramirez','Abordo','AshleyLoves','09192223456','ashleybabes@gmail.com','Sa puso ni Ashley Sa puso ni Ashley'),(4,'Christopher John','Amper','Ponce','09194441782','09194441782','amorphyst@gmail.com','83 Magsaysay St. Doña Faustina Subd. San Bartolome Novaliches, Quezon City'),(5,'Christopher John','Amper','Ponce','09194441782','09194441782','amorphyst@gmail.com','83 Magsaysay St. Doña Faustina Subd. San Bartolome Novaliches Quezon City'),(6,'Carla Jean','Aragon','Acta','09233005665','09233005665','carlajeanacta@gmail.com','17 Israel Street, Jordan Heights Subd. Novaliches, Q.C. Metro Manila'),(7,'Randy','Cinco','Panol','09264142434','09264142434','decafmind@gmail.com','G44 Abbey Road Bagbag Novaliches Quezon City');
/*!40000 ALTER TABLE `customer_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `daily_sales_report`
--

DROP TABLE IF EXISTS `daily_sales_report`;
/*!50001 DROP VIEW IF EXISTS `daily_sales_report`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `daily_sales_report` (
  `Date` tinyint NOT NULL,
  `Sales` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `discount_type_tbl`
--

DROP TABLE IF EXISTS `discount_type_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discount_type_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `discount_type` varchar(45) NOT NULL,
  `flag` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount_type_tbl`
--

LOCK TABLES `discount_type_tbl` WRITE;
/*!40000 ALTER TABLE `discount_type_tbl` DISABLE KEYS */;
INSERT INTO `discount_type_tbl` VALUES (1,'Percentage',1),(2,'Fixed',1);
/*!40000 ALTER TABLE `discount_type_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discounts_tbl`
--

DROP TABLE IF EXISTS `discounts_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discounts_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(2) NOT NULL,
  `descrpt` text NOT NULL,
  `less` decimal(8,2) NOT NULL,
  `flag` int(1) NOT NULL,
  `title` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title_UNIQUE` (`title`),
  KEY `type_idx` (`type`),
  CONSTRAINT `type` FOREIGN KEY (`type`) REFERENCES `discount_type_tbl` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discounts_tbl`
--

LOCK TABLES `discounts_tbl` WRITE;
/*!40000 ALTER TABLE `discounts_tbl` DISABLE KEYS */;
INSERT INTO `discounts_tbl` VALUES (1,1,'Senior Citizens and Person with Disabilities',20.00,1,'SC/PWD'),(2,2,'Christmas Discount',100.00,1,'XMAS'),(3,1,'100pcs and above',5.00,1,'BULK'),(4,2,'Holyweek bulk order. Minimum of 500pcs to avail.',100.00,1,'HOLYWEEK'),(5,1,'10% discount on all merchandise. Until Feb, 29 2016',10.00,1,'OPENING'),(6,1,'5% discount on all items. From Dec. 20 - 31 2016 only.',5.00,1,'YEAREND'),(7,1,'3% Discount on all Made in China items. From Feb 5 - 20 2016 ',3.00,1,'CHINESE'),(8,2,'100 pesos less on all single purchase item worth 5000 pesos and above. From Oct. 20 - 25, 2016',100.00,1,'STO.NINO'),(11,2,'EXAMPLE',100.00,0,'SAMPLE');
/*!40000 ALTER TABLE `discounts_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_tbl`
--

DROP TABLE IF EXISTS `employee_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(45) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `middlename` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) NOT NULL,
  `mobile_no` varchar(45) DEFAULT NULL,
  `telephone_no` varchar(45) DEFAULT NULL,
  `email_address` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `image_path` mediumtext,
  PRIMARY KEY (`id`),
  KEY `employee_user_fk_idx` (`user_id`),
  CONSTRAINT `employee_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_tbl` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_tbl`
--

LOCK TABLES `employee_tbl` WRITE;
/*!40000 ALTER TABLE `employee_tbl` DISABLE KEYS */;
INSERT INTO `employee_tbl` VALUES (1,'Randy','Randy','C','Panol','09264142434','09264142434','decafmind@gmail.com','G44 Abbey Road Bagbag Novaliches Quezon City','C:\\\\Petvet\\Images\\754282.jpg'),(2,'Francis','Francis','X','Caceres','0933764751','t','akira@google.com','jdlfkj','C:\\\\Petvet\\Images\\233469.jpg'),(3,'Jerwin','Jerwin','V','Alog','093276278','t','a.markjerwin@gmail.com','Novaliches, Q.C.','C:\\\\Petvet\\Images\\334903.jpg'),(4,'Rabi','Rainier','A','Abordo','8490384038403','232-434-23','decafmind@gmail.com','Llano, Caloocan City','C:\\\\Users\\Randy\\AppData\\Local\\Exogenesis\\Images\\825958.jpg'),(5,'Karen','Karen','F','Paje','0923263746232','3287328372897','kp@gmail.com','jflskj','C:\\\\Users\\Randy\\AppData\\Local\\Exogenesis\\Images\\139355.jpg'),(6,'jessea','Jessea','R','Malanao','09356080445','232-434-23','jessea@m.com','Dito','C:\\\\Petvet\\Images\\937495.jpg'),(7,'saito007','Francis','R','Caceres','09264142434','123-4456','francissaito@gmail.com','ramirez st.',''),(8,'roddex','fdf','jfklds','jflkdsfj','0923726473647',NULL,'decafmind@gmail.com','fjdklfjsdklfjkdlsf','C:\\\\Users\\Randy\\AppData\\Local\\Exogenesis\\Images\\231605.jpg');
/*!40000 ALTER TABLE `employee_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fallback_tbl`
--

DROP TABLE IF EXISTS `fallback_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fallback_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `squery` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fallback_tbl`
--

LOCK TABLES `fallback_tbl` WRITE;
/*!40000 ALTER TABLE `fallback_tbl` DISABLE KEYS */;
INSERT INTO `fallback_tbl` VALUES (1,'Who was your favorite cartoon character as a child?'),(2,'What was your childhood nickname?'),(3,'What is the name of your favorite childhood friend?'),(4,'In what city or town did your mother and father first meet?'),(5,'What was the name of the hospital where you were born?');
/*!40000 ALTER TABLE `fallback_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fraud`
--

DROP TABLE IF EXISTS `fraud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fraud` (
  `Productno` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Productname` varchar(45) NOT NULL,
  `date` varchar(45) NOT NULL,
  PRIMARY KEY (`Productno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fraud`
--

LOCK TABLES `fraud` WRITE;
/*!40000 ALTER TABLE `fraud` DISABLE KEYS */;
/*!40000 ALTER TABLE `fraud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_tbl`
--

DROP TABLE IF EXISTS `inventory_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` varchar(20) DEFAULT NULL,
  `stockin_datetime` datetime DEFAULT NULL,
  `qty_received` int(11) DEFAULT NULL,
  `qty_onhand` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `inventory_product_tbl_idx` (`product_id`),
  CONSTRAINT `inventory_product_tbl` FOREIGN KEY (`product_id`) REFERENCES `product_tbl` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_tbl`
--

LOCK TABLES `inventory_tbl` WRITE;
/*!40000 ALTER TABLE `inventory_tbl` DISABLE KEYS */;
INSERT INTO `inventory_tbl` VALUES (1,'A000001','2016-02-14 17:04:44',20,20),(2,'ABC000025','2016-02-14 17:12:53',20,20),(3,'ABC000013','2016-02-14 17:14:44',100,100),(4,'ABC000005','2016-02-14 17:16:15',100,100),(5,'ABC000020','2016-02-14 17:17:37',100,100),(6,'ABC000022','2016-02-14 17:20:16',100,100),(7,'ABC000009','2016-02-14 17:22:32',100,100),(8,'ABC000026','2016-02-14 17:24:39',100,100),(9,'ABC000015','2016-02-14 17:26:00',100,100),(10,'ABC000014','2016-02-14 17:27:33',100,100),(11,'AB000001','2016-02-14 17:29:12',100,100),(12,'ABC000030','2016-02-14 17:34:41',20,20),(13,'ABC000003','2016-02-14 17:38:48',65,65),(14,'ABC000002','2016-02-14 17:41:48',100,100),(15,'ABC000023','2016-02-14 17:45:30',75,75),(16,'ABC000012','2016-02-14 17:48:15',65,65),(17,'ABC000028','2016-02-14 17:49:50',45,45),(18,'ABC000021','2016-02-14 17:52:02',95,95),(19,'ABC000017','2016-02-14 17:53:53',56,56),(20,'ABC000019','2016-02-14 17:55:27',65,65),(21,'ABC000010','2016-02-14 17:57:01',75,75),(22,'ABC000029','2016-02-14 17:58:45',95,95),(23,'ABC000024','2016-02-14 18:00:33',100,100),(24,'ABC000027','2016-02-14 18:02:14',100,100),(25,'ABC000016','2016-02-14 18:03:34',100,100),(26,'ABC000011','2016-02-14 18:05:13',100,100),(27,'A000001','2016-02-21 13:49:38',40,40),(28,'A000001','2016-02-21 13:50:51',10,10),(29,'ABC000022',NULL,NULL,-12),(30,'AB000001',NULL,NULL,-92),(31,'AB000001',NULL,NULL,-1),(32,'ABC000013',NULL,NULL,-5),(33,'ABC000013',NULL,NULL,-1),(34,'ABC000016',NULL,NULL,-5),(35,'ABC000021',NULL,NULL,-1),(36,'ABC000021',NULL,NULL,-2),(37,'ABC000027',NULL,NULL,-1),(38,'ABC000027',NULL,NULL,-1),(39,'ABC000027',NULL,NULL,-1),(40,'ABC000027',NULL,NULL,-1),(41,'ABC000027',NULL,NULL,-1),(42,'ABC000027',NULL,NULL,-1),(43,'ABC000027',NULL,NULL,-1),(44,'ABC000027',NULL,NULL,-1),(45,'ABC000027',NULL,NULL,-1),(46,'ABC000027',NULL,NULL,-1),(47,'ABC000027',NULL,NULL,-1),(48,'ABC000027',NULL,NULL,-1),(49,'ABC000027',NULL,NULL,-1),(50,'ABC000027',NULL,NULL,-1),(51,'ABC000027',NULL,NULL,-1),(52,'ABC000027',NULL,NULL,-1),(53,'ABC000027',NULL,NULL,-1),(54,'ABC000027',NULL,NULL,-1),(55,'ABC000027',NULL,NULL,-1),(56,'ABC000027',NULL,NULL,-1),(57,'ABC000027',NULL,NULL,-1),(58,'ABC000029',NULL,NULL,-1),(59,'ABC000029',NULL,NULL,-1),(60,'ABC000027',NULL,NULL,-1),(61,'ABC000027',NULL,NULL,-1),(62,'ABC000027',NULL,NULL,-1),(63,'ABC000027',NULL,NULL,-1),(64,'ABC000027',NULL,NULL,-1),(65,'ABC000027',NULL,NULL,-1),(66,'ABC000027',NULL,NULL,-1),(67,'ABC000014',NULL,NULL,-30),(68,'ABC000029',NULL,NULL,-1),(69,'ABC000029',NULL,NULL,-5),(70,'ABC000029',NULL,NULL,-5),(71,'ABC000029',NULL,NULL,-5),(72,'ABC000027',NULL,NULL,-5),(73,'AB000001',NULL,NULL,-2),(74,'ABC000012',NULL,NULL,-15),(75,'ABC000017',NULL,NULL,-1),(76,'ABC000017',NULL,NULL,-5),(77,'ABC000017',NULL,NULL,-1),(78,'ABC000017',NULL,NULL,-1),(79,'ABC000017',NULL,NULL,-1),(80,'ABC000017',NULL,NULL,-1),(81,'ABC000017',NULL,NULL,-1);
/*!40000 ALTER TABLE `inventory_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `inventory_view`
--

DROP TABLE IF EXISTS `inventory_view`;
/*!50001 DROP VIEW IF EXISTS `inventory_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `inventory_view` (
  `Name` tinyint NOT NULL,
  `Description` tinyint NOT NULL,
  `Barcode` tinyint NOT NULL,
  `UnitCost` tinyint NOT NULL,
  `Unit_price` tinyint NOT NULL,
  `Category` tinyint NOT NULL,
  `Stock_since` tinyint NOT NULL,
  `Supplier` tinyint NOT NULL,
  `Qty_Received` tinyint NOT NULL,
  `Qty_On_Hand` tinyint NOT NULL,
  `Warranty` tinyint NOT NULL,
  `Replacement` tinyint NOT NULL,
  `SerialCode` tinyint NOT NULL,
  `Unit` tinyint NOT NULL,
  `MaintainingStocks` tinyint NOT NULL,
  `Archive` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `invoice_tbl`
--

DROP TABLE IF EXISTS `invoice_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoice_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `employee_id` varchar(45) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `invoice_employee_fk_idx` (`employee_id`),
  KEY `invoice_customer_fk_idx` (`customer_id`),
  CONSTRAINT `invoice_customer_fk` FOREIGN KEY (`customer_id`) REFERENCES `customer_tbl` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=367 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_tbl`
--

LOCK TABLES `invoice_tbl` WRITE;
/*!40000 ALTER TABLE `invoice_tbl` DISABLE KEYS */;
INSERT INTO `invoice_tbl` VALUES (1,'2016-02-21','16:57:55','Karen',NULL),(2,'2016-02-21','16:59:34','Randy',NULL),(3,'2016-02-21','16:59:36','Karen',NULL),(4,'2016-02-21','17:00:21','Karen',NULL),(5,'2016-02-21','17:01:42','Randy',NULL),(6,'2016-02-21','17:02:44','Karen',NULL),(7,'2016-02-21','17:04:34','Randy',NULL),(8,'2016-02-21','17:06:14','Randy',NULL),(9,'2016-02-21','17:10:00','Randy',NULL),(10,'2016-02-21','17:17:29','Randy',NULL),(11,'2016-02-21','17:18:41','Randy',NULL),(12,'2016-02-21','17:20:25','Karen',NULL),(13,'2016-02-21','17:20:26','Randy',NULL),(14,'2016-02-21','17:21:33','Randy',NULL),(15,'2016-02-21','17:23:13','Karen',NULL),(16,'2016-02-21','17:23:52','Randy',NULL),(17,'2016-02-21','17:24:39','Randy',NULL),(18,'2016-02-21','17:28:48','Randy',NULL),(19,'2016-02-21','17:30:57','Randy',NULL),(20,'2016-02-21','17:31:58','Randy',NULL),(21,'2016-02-21','17:32:32','Randy',NULL),(22,'2016-02-21','17:36:18','Randy',NULL),(23,'2016-02-21','17:38:50','Randy',NULL),(24,'2016-02-21','17:39:06','Randy',NULL),(25,'2016-02-21','17:39:08','Randy',NULL),(26,'2016-02-21','17:42:09','Karen',NULL),(27,'2016-02-21','18:02:37','Randy',NULL),(28,'2016-02-21','18:11:01','Karen',NULL),(29,'2016-02-22','12:55:07','Randy',NULL),(30,'2016-02-22','12:55:34','Randy',NULL),(31,'2016-02-22','12:56:25','Randy',NULL),(32,'2016-02-22','12:58:17','Randy',NULL),(33,'2016-02-22','12:59:46','Randy',NULL),(34,'2016-02-22','13:00:45','Randy',NULL),(35,'2016-02-22','13:05:58','Randy',NULL),(36,'2016-02-22','13:06:26','Randy',NULL),(37,'2016-02-22','13:27:01','Randy',NULL),(38,'2016-02-22','13:31:21','Randy',NULL),(39,'2016-02-22','13:33:51','Randy',NULL),(40,'2016-02-22','13:35:46','Randy',NULL),(41,'2016-02-22','13:44:43','Randy',NULL),(42,'2016-02-22','14:13:40','Randy',NULL),(43,'2016-02-22','14:14:12','Randy',NULL),(44,'2016-02-22','14:15:22','Randy',NULL),(45,'2016-02-22','14:16:38','Randy',NULL),(46,'2016-02-22','14:21:25','Randy',NULL),(47,'2016-02-22','14:22:29','Randy',NULL),(48,'2016-02-22','14:25:02','Randy',NULL),(49,'2016-02-22','14:26:12','Randy',NULL),(50,'2016-02-22','14:29:57','Karen',NULL),(51,'2016-02-22','14:30:39','Karen',NULL),(52,'2016-02-22','16:07:18','Karen',NULL),(53,'2016-02-22','16:07:56','Karen',NULL),(54,'2016-02-22','06:45:03','Randy',NULL),(55,'2016-02-22','06:45:55','Randy',NULL),(56,'2016-02-22','08:08:57','Randy',NULL),(57,'2016-02-22','08:11:42','Randy',NULL),(58,'2016-02-22','08:15:34','Randy',NULL),(59,'2016-02-22','08:16:03','Randy',NULL),(60,'2016-02-22','08:18:28','Randy',NULL),(61,'2016-02-22','08:36:37','Randy',NULL),(62,'2016-02-22','08:37:27','Randy',NULL),(63,'2016-02-22','08:39:05','Randy',NULL),(64,'2016-02-22','08:39:21','Randy',NULL),(65,'2016-02-22','08:39:57','Randy',NULL),(66,'2016-02-22','08:40:21','Randy',NULL),(67,'2016-02-22','08:42:19','Randy',NULL),(68,'2016-02-22','08:42:53','Randy',NULL),(69,'2016-02-22','08:46:54','Randy',NULL),(70,'2016-02-22','08:47:32','Randy',NULL),(71,'2016-02-22','08:49:14','Randy',NULL),(72,'2016-02-22','08:49:29','Randy',NULL),(73,'2016-02-22','08:50:33','Randy',NULL),(74,'2016-02-22','08:50:58','Randy',NULL),(75,'2016-02-22','08:55:43','Randy',NULL),(76,'2016-02-22','08:56:12','Randy',NULL),(77,'2016-02-22','08:57:11','Randy',NULL),(78,'2016-02-22','08:57:56','Randy',NULL),(79,'2016-02-22','08:59:58','Randy',NULL),(80,'2016-02-22','09:00:46','Randy',NULL),(81,'2016-02-22','09:02:50','Randy',NULL),(82,'2016-02-22','09:03:11','Randy',NULL),(83,'2016-02-22','09:04:09','Randy',NULL),(84,'2016-02-22','09:04:37','Randy',NULL),(85,'2016-02-22','09:11:04','Randy',NULL),(86,'2016-02-22','09:11:29','Randy',NULL),(87,'2016-02-22','09:40:25','Randy',NULL),(88,'2016-02-22','09:40:59','Randy',NULL),(89,'2016-02-22','09:44:37','Karen',NULL),(90,'2016-02-22','09:45:38','Randy',NULL),(91,'2016-02-22','09:45:46','Randy',NULL),(92,'2016-02-22','09:45:50','Randy',NULL),(93,'2016-02-22','09:46:08','Randy',NULL),(94,'2016-02-25','11:55:52','Randy',NULL),(95,'2016-02-25','11:56:56','Karen',NULL),(96,'2016-02-25','11:59:14','Randy',NULL),(97,'2016-02-25','12:00:52','Randy',NULL),(98,'2016-02-25','12:01:08','Karen',NULL),(99,'2016-02-25','12:47:39','Randy',NULL),(100,'2016-02-25','12:48:15','Randy',NULL),(101,'2016-02-25','12:48:38','Randy',NULL),(102,'2016-02-25','12:48:58','Randy',NULL),(103,'2016-02-25','12:49:11','Randy',NULL),(104,'2016-02-25','12:49:18','Karen',NULL),(105,'2016-02-25','12:50:33','Randy',NULL),(106,'2016-02-25','12:50:49','Randy',NULL),(107,'2016-02-25','12:50:56','Karen',NULL),(108,'2016-02-25','12:54:39','Karen',NULL),(109,'2016-02-25','12:56:26','Randy',NULL),(110,'2016-02-25','12:56:33','Karen',NULL),(111,'2016-02-25','12:59:08','Karen',NULL),(112,'2016-02-25','13:01:22','Randy',NULL),(113,'2016-02-25','13:01:28','Karen',NULL),(114,'2016-02-25','13:04:02','Karen',NULL),(115,'2016-02-25','13:04:33','Karen',NULL),(116,'2016-02-25','13:05:13','Karen',NULL),(117,'2016-02-25','13:07:14','Karen',NULL),(118,'2016-02-25','13:07:23','Karen',NULL),(119,'2016-02-25','13:08:31','Karen',NULL),(120,'2016-02-25','13:08:59','Karen',NULL),(121,'2016-02-25','13:15:20','Randy',NULL),(122,'2016-02-25','13:15:41','Randy',NULL),(123,'2016-02-25','13:15:48','Karen',NULL),(124,'2016-02-25','13:21:16','Karen',NULL),(125,'2016-02-25','13:22:29','Karen',NULL),(126,'2016-02-25','13:23:35','Karen',NULL),(127,'2016-02-25','13:23:48','Karen',NULL),(128,'2016-02-25','14:42:15','Randy',NULL),(129,'2016-02-25','14:43:08','Randy',NULL),(130,'2016-02-25','14:44:23','Randy',NULL),(131,'2016-02-25','14:46:29','Randy',NULL),(132,'2016-02-25','14:47:07','Randy',NULL),(133,'2016-02-25','14:47:14','Randy',NULL),(134,'2016-02-25','15:04:51','Karen',NULL),(135,'2016-02-25','15:04:57','Randy',NULL),(136,'2016-02-25','15:05:09','Randy',NULL),(137,'2016-02-25','15:05:32','Karen',NULL),(138,'2016-02-25','15:06:58','Karen',NULL),(139,'2016-02-25','15:07:16','Randy',NULL),(140,'2016-02-25','15:07:29','Randy',NULL),(141,'2016-02-25','15:07:41','Randy',NULL),(142,'2016-02-25','15:08:05','Randy',NULL),(143,'2016-02-25','15:11:00','Karen',NULL),(144,'2016-02-25','15:14:23','Randy',NULL),(145,'2016-02-25','15:14:41','Randy',NULL),(146,'2016-02-25','15:17:00','Karen',NULL),(147,'2016-02-25','15:19:02','Karen',NULL),(148,'2016-02-25','15:19:32','Karen',NULL),(149,'2016-02-25','15:19:41','Randy',NULL),(150,'2016-02-25','15:19:58','Randy',NULL),(151,'2016-02-25','15:20:04','Karen',NULL),(152,'2016-02-25','15:23:38','Karen',NULL),(153,'2016-02-25','15:24:53','Karen',NULL),(154,'2016-02-25','15:25:02','Randy',NULL),(155,'2016-02-25','15:25:15','Randy',NULL),(156,'2016-02-25','15:25:32','Karen',NULL),(157,'2016-02-25','15:27:22','Randy',NULL),(158,'2016-02-25','15:27:43','Randy',NULL),(159,'2016-02-25','15:28:15','Karen',NULL),(160,'2016-02-25','15:29:35','Karen',NULL),(161,'2016-02-25','15:33:20','Randy',NULL),(162,'2016-02-25','15:33:37','Randy',NULL),(163,'2016-02-25','15:33:46','Karen',NULL),(164,'2016-02-25','15:34:59','Karen',NULL),(165,'2016-02-25','15:37:38','Randy',NULL),(166,'2016-02-25','15:38:09','Randy',NULL),(167,'2016-02-25','15:38:16','Karen',NULL),(168,'2016-02-25','15:45:18','Karen',NULL),(169,'2016-02-25','15:46:34','Randy',NULL),(170,'2016-02-25','15:48:06','Randy',NULL),(171,'2016-02-25','16:00:25','Randy',NULL),(172,'2016-02-25','16:03:36','Randy',NULL),(173,'2016-02-25','16:10:57','Randy',NULL),(174,'2016-02-25','16:13:02','Randy',NULL),(175,'2016-02-25','16:14:05','Randy',NULL),(176,'2016-02-25','16:14:47','Randy',NULL),(177,'2016-02-25','16:15:06','Randy',NULL),(178,'2016-02-25','16:15:25','Randy',NULL),(179,'2016-02-25','16:17:54','Randy',NULL),(180,'2016-02-25','16:18:41','Randy',NULL),(181,'2016-02-25','16:20:44','Karen',NULL),(182,'2016-02-25','16:21:06','Karen',NULL),(183,'2016-02-25','16:23:41','Randy',NULL),(184,'2016-02-25','16:23:48','Randy',NULL),(185,'2016-02-25','16:23:54','Karen',NULL),(186,'2016-02-25','16:24:25','Karen',NULL),(187,'2016-02-25','16:25:43','Randy',NULL),(188,'2016-02-25','16:25:49','Randy',NULL),(189,'2016-02-25','16:25:54','Karen',NULL),(190,'2016-02-25','16:26:53','Karen',NULL),(191,'2016-02-25','16:28:17','Randy',NULL),(192,'2016-02-25','16:28:24','Randy',NULL),(193,'2016-02-25','16:28:47','Karen',NULL),(194,'2016-02-25','16:29:18','Karen',NULL),(195,'2016-02-25','16:32:50','Randy',NULL),(196,'2016-02-25','16:33:25','Randy',NULL),(197,'2016-02-25','16:33:32','Karen',NULL),(198,'2016-02-25','16:34:18','Karen',NULL),(199,'2016-02-25','16:36:47','Randy',NULL),(200,'2016-02-25','16:37:20','Randy',NULL),(201,'2016-02-25','16:37:27','Karen',NULL),(202,'2016-02-25','16:37:52','Karen',NULL),(203,'2016-02-25','16:39:23','Randy',NULL),(204,'2016-02-25','16:39:48','Randy',NULL),(205,'2016-02-25','16:40:13','Randy',NULL),(206,'2016-02-25','16:40:22','Randy',NULL),(207,'2016-02-25','16:40:41','Randy',NULL),(208,'2016-02-25','16:40:59','Randy',NULL),(209,'2016-02-25','16:41:07','Randy',NULL),(210,'2016-02-25','16:52:49','Randy',NULL),(211,'2016-02-25','16:52:56','Randy',NULL),(212,'2016-02-25','16:53:05','Karen',NULL),(213,'2016-02-25','16:53:45','Karen',NULL),(214,'2016-02-25','16:55:42','Karen',NULL),(215,'2016-02-25','16:56:42','Karen',NULL),(216,'2016-02-25','16:57:52','Karen',NULL),(217,'2016-02-25','16:58:19','Karen',NULL),(218,'2016-02-25','17:36:06','Karen',NULL),(219,'2016-02-25','17:37:13','Karen',NULL),(220,'2016-02-25','17:38:59','Karen',NULL),(221,'2016-02-25','17:41:43','Karen',NULL),(222,'2016-02-25','17:42:36','Karen',NULL),(223,'2016-02-25','17:44:00','Karen',NULL),(224,'2016-02-25','17:58:22','Karen',NULL),(225,'2016-02-25','18:02:01','Karen',NULL),(226,'2016-02-25','18:17:00','Karen',NULL),(227,'2016-02-25','18:21:01','Karen',NULL),(228,'2016-02-25','18:21:32','Karen',NULL),(229,'2016-02-25','18:23:19','Karen',NULL),(230,'2016-02-25','18:23:43','Karen',NULL),(231,'2016-02-25','18:24:50','Karen',NULL),(232,'2016-02-25','18:26:11','Karen',NULL),(233,'2016-02-25','18:29:03','Karen',NULL),(234,'2016-02-25','18:30:01','Karen',NULL),(235,'2016-02-25','18:30:45','Karen',NULL),(236,'2016-02-25','18:38:30','Karen',NULL),(237,'2016-02-25','18:41:03','Karen',NULL),(238,'2016-02-25','18:42:41','Karen',NULL),(239,'2016-02-25','18:44:40','Karen',NULL),(240,'2016-02-25','18:45:14','Karen',NULL),(241,'2016-02-25','18:45:47','Karen',NULL),(242,'2016-02-25','18:46:16','Karen',NULL),(243,'2016-02-25','18:46:56','Karen',NULL),(244,'2016-02-25','18:47:15','Karen',NULL),(245,'2016-02-25','18:47:34','Karen',NULL),(246,'2016-02-25','18:50:04','Karen',NULL),(247,'2016-02-25','18:51:31','Karen',NULL),(248,'2016-02-25','18:52:01','Karen',NULL),(249,'2016-02-25','18:52:43','Randy',NULL),(250,'2016-02-25','18:52:55','Randy',NULL),(251,'2016-02-25','18:54:28','Randy',NULL),(252,'2016-02-25','18:54:51','Randy',NULL),(253,'2016-02-25','18:54:59','Karen',NULL),(254,'2016-02-25','18:55:29','Karen',NULL),(255,'2016-02-29','02:07:33','Randy',NULL),(256,'2016-02-29','02:24:10','Randy',NULL),(257,'2016-02-29','04:22:47','Randy',NULL),(258,'2016-02-29','04:23:30','Randy',NULL),(259,'2016-02-29','05:28:42','Karen',NULL),(260,'2016-02-29','05:30:29','Karen',NULL),(261,'2016-02-29','05:33:50','Karen',NULL),(262,'2016-02-29','05:34:03','Karen',NULL),(263,'2016-02-29','05:34:25','Karen',NULL),(264,'2016-02-29','05:36:25','Karen',NULL),(265,'2016-02-29','05:36:35','Karen',NULL),(266,'2016-02-29','05:36:57','Karen',NULL),(267,'2016-02-29','05:42:32','Karen',NULL),(268,'2016-02-29','05:47:09','Karen',NULL),(269,'2016-02-29','05:49:11','Karen',NULL),(270,'2016-02-29','05:50:51','Karen',NULL),(271,'2016-02-29','06:02:28','Karen',NULL),(272,'2016-02-29','06:05:45','Karen',NULL),(273,'2016-02-29','06:06:07','Karen',NULL),(274,'2016-02-29','06:16:41','Karen',NULL),(275,'2016-02-29','06:19:35','Karen',NULL),(276,'2016-02-29','06:20:12','Karen',NULL),(277,'2016-02-29','06:21:01','Karen',NULL),(278,'2016-02-29','06:21:08','Karen',NULL),(279,'2016-02-29','06:23:52','Karen',NULL),(280,'2016-02-29','06:24:00','Karen',NULL),(281,'2016-02-29','06:28:42','Karen',NULL),(282,'2016-02-29','06:30:19','Karen',NULL),(283,'2016-02-29','06:31:43','Karen',NULL),(284,'2016-02-29','06:32:43','Karen',NULL),(285,'2016-02-29','06:34:27','Karen',NULL),(286,'2016-02-29','06:34:41','Karen',NULL),(287,'2016-02-29','06:39:29','Karen',NULL),(288,'2016-02-29','06:40:34','Karen',NULL),(289,'2016-02-29','06:42:23','Karen',NULL),(290,'2016-02-29','06:42:45','Karen',NULL),(291,'2016-02-29','06:43:08','Karen',NULL),(292,'2016-02-29','06:44:34','Karen',NULL),(293,'2016-02-29','06:46:54','Karen',NULL),(294,'2016-02-29','06:47:05','Karen',NULL),(295,'2016-02-29','06:47:13','Karen',NULL),(296,'2016-02-29','06:47:30','Karen',NULL),(297,'2016-02-29','06:48:29','Karen',NULL),(298,'2016-02-29','06:49:17','Karen',NULL),(299,'2016-02-29','06:49:54','Karen',NULL),(300,'2016-02-29','06:52:14','Karen',NULL),(301,'2016-02-29','06:52:39','Karen',NULL),(302,'2016-02-29','06:54:29','Karen',NULL),(303,'2016-02-29','06:56:25','Karen',NULL),(304,'2016-02-29','06:56:56','Karen',NULL),(305,'2016-02-29','06:57:25','Karen',NULL),(306,'2016-02-29','07:10:42','Randy',NULL),(307,'2016-02-29','07:10:59','Randy',NULL),(308,'2016-02-29','07:11:25','Randy',NULL),(309,'2016-02-29','07:11:30','Karen',NULL),(310,'2016-02-29','07:11:52','Karen',NULL),(311,'2016-02-29','08:10:07','Randy',NULL),(312,'2016-02-29','08:10:49','Randy',NULL),(313,'2016-02-29','08:11:16','Karen',NULL),(314,'2016-02-29','08:11:32','Karen',NULL),(315,'2016-02-29','08:22:46','Randy',NULL),(316,'2016-02-29','08:23:01','Randy',NULL),(317,'2016-02-29','08:23:07','Karen',NULL),(318,'2016-02-29','08:25:52','Karen',NULL),(319,'2016-02-29','08:38:34','Randy',NULL),(320,'2016-02-29','08:38:58','Randy',NULL),(321,'2016-02-29','08:39:10','Karen',NULL),(322,'2016-02-29','08:39:29','Karen',NULL),(323,'2016-02-29','08:45:18','Randy',NULL),(324,'2016-02-29','08:45:41','Randy',NULL),(325,'2016-02-29','08:45:47','Karen',NULL),(326,'2016-02-29','08:46:19','Karen',NULL),(327,'2016-03-20','18:59:02','Randy',NULL),(328,'2016-03-20','19:00:13','Randy',NULL),(329,'2016-03-20','19:00:25','Karen',NULL),(330,'2016-03-20','19:01:22','Karen',NULL),(331,'2016-03-20','19:02:08','Randy',NULL),(332,'2016-03-20','19:03:04','Randy',NULL),(333,'2016-03-20','19:04:37','Randy',NULL),(334,'2016-03-20','19:04:44','Randy',NULL),(335,'2016-03-20','19:06:41','Randy',NULL),(336,'2016-03-20','19:06:50','Karen',NULL),(337,'2016-03-20','19:10:10','Karen',NULL),(338,'2016-03-20','19:15:49','Randy',NULL),(339,'2016-03-20','19:15:59','Karen',NULL),(340,'2016-03-20','19:16:29','Randy',NULL),(341,'2016-03-20','19:16:52','Randy',NULL),(342,'2016-03-20','19:17:05','Karen',NULL),(343,'2016-03-20','19:17:19','Randy',NULL),(344,'2016-03-20','19:17:31','Karen',NULL),(345,'2016-03-20','19:20:51','Karen',NULL),(346,'2016-03-20','19:22:17','Karen',NULL),(347,'2016-03-20','19:23:38','Karen',NULL),(348,'2016-03-20','19:39:35','Randy',NULL),(349,'2016-03-20','19:41:40','Randy',NULL),(350,'2016-03-20','19:42:08','Randy',NULL),(351,'2016-03-20','19:42:17','Karen',NULL),(352,'2016-03-20','19:43:23','Karen',NULL),(353,'2016-03-20','19:46:08','Karen',NULL),(354,'2016-03-20','19:49:18','Randy',NULL),(355,'2016-03-20','19:49:32','Randy',NULL),(356,'2016-03-20','19:49:42','Karen',NULL),(357,'2016-03-20','19:53:12','Karen',NULL),(358,'2016-03-20','19:56:46','Randy',NULL),(359,'2016-03-20','19:57:05','Randy',NULL),(360,'2016-03-20','19:57:12','Karen',NULL),(361,'2016-03-20','20:03:56','Karen',NULL),(362,'2016-03-20','20:06:03','Randy',NULL),(363,'2016-03-20','20:06:25','Randy',NULL),(364,'2016-03-20','20:06:43','Randy',NULL),(365,'2016-03-20','20:06:53','Karen',NULL),(366,'2016-03-20','20:10:52','Karen',NULL);
/*!40000 ALTER TABLE `invoice_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_trail_tbl`
--

DROP TABLE IF EXISTS `login_trail_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_trail_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(45) NOT NULL,
  `datetime_in` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `datetime_out` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `login_employee_fk_idx` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1483 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_trail_tbl`
--

LOCK TABLES `login_trail_tbl` WRITE;
/*!40000 ALTER TABLE `login_trail_tbl` DISABLE KEYS */;
INSERT INTO `login_trail_tbl` VALUES (1,'Jerwin','2015-10-09 01:34:54','2015-10-09 01:35:11'),(2,'Randy','2015-10-09 01:35:42','2015-10-09 01:35:42'),(3,'Randy','2015-10-09 01:36:53','2015-10-09 01:36:53'),(4,'Jerwin','2015-10-09 01:37:45','2015-10-09 01:37:49'),(5,'','2015-10-09 01:37:55','2015-10-09 01:40:37'),(6,'Randy','2015-10-09 01:42:51','2015-10-09 01:42:51'),(7,'','2015-10-09 01:43:24','2015-10-09 01:43:24'),(8,'Randy','2015-10-09 01:45:09','2015-10-09 01:45:09'),(9,'Randy','2015-10-09 01:46:23','2015-10-09 01:46:23'),(10,'Randy','2015-10-09 01:50:08','2015-10-09 01:50:08'),(11,'Randy','2015-10-09 01:52:10','2015-10-09 01:52:10'),(12,'Jerwin','2015-10-09 01:58:36','2015-10-09 01:58:39'),(13,'','2015-10-09 01:58:42','2015-10-09 01:58:42'),(14,'Randy','2015-10-09 01:58:43','2015-10-09 01:58:43'),(15,'','2015-10-09 01:59:38','2015-10-09 01:59:38'),(16,'','2015-10-09 02:02:09','2015-10-09 02:02:09'),(17,'Randy','2015-10-09 02:04:43','2015-10-09 02:04:43'),(18,'','2015-10-09 02:04:49','2015-10-09 02:04:50'),(19,'Jerwin','2015-10-09 02:04:57','2015-10-09 02:05:00'),(20,'','2015-10-09 02:05:08','2015-10-09 02:06:37'),(21,'Jerwin','2015-10-09 02:07:31','2015-10-09 02:07:39'),(22,'','2015-10-09 02:07:47','2015-10-09 02:08:09'),(23,'Karen','2015-10-09 02:08:57','2015-10-09 02:09:39'),(24,'Jerwin','2015-10-09 02:09:45','2015-10-09 02:09:45'),(25,'Randy','2015-10-09 02:11:30','2015-10-09 02:11:30'),(26,'Randy','2015-10-09 02:12:03','2015-10-09 02:12:03'),(27,'Randy','2015-10-09 02:12:33','2015-10-09 02:12:33'),(28,'Randy','2015-10-09 02:14:33','2015-10-09 02:14:33'),(29,'Randy','2015-10-09 02:15:01','2015-10-09 02:15:01'),(30,'Jerwin','2015-10-09 02:15:46','2015-10-09 02:15:46'),(31,'Randy','2015-10-09 02:17:28','2015-10-09 02:17:28'),(32,'Jerwin','2015-10-09 02:19:27','2015-10-09 02:19:27'),(33,'Jerwin','2015-10-09 02:27:35','2015-10-09 02:27:35'),(34,'Jerwin','2015-10-09 02:28:50','2015-10-09 02:28:50'),(35,'Jerwin','2015-10-09 02:34:06','2015-10-09 02:34:06'),(36,'Jerwin','2015-10-09 02:36:25','2015-10-09 02:36:25'),(37,'Jerwin','2015-10-09 02:40:31','2015-10-09 02:41:19'),(38,'Jerwin','2015-10-09 02:41:45','2015-10-09 02:42:41'),(39,'Jerwin','2015-10-09 02:44:28','2015-10-09 02:44:28'),(40,'Jerwin','2015-10-09 02:45:12','2015-10-09 02:45:52'),(41,'Jerwin','2015-10-09 02:46:58','2015-10-09 02:50:44'),(42,'Randy','2015-10-09 08:48:15','2015-10-09 08:48:16'),(43,'Randy','2015-10-09 19:04:02','2015-10-09 19:05:28'),(44,'Randy','2015-10-09 19:19:55','2015-10-09 19:20:06'),(45,'Randy','2015-10-09 19:20:41','2015-10-09 19:21:49'),(46,'Randy','2015-10-09 19:44:21','2015-10-09 19:45:31'),(47,'Randy','2015-10-09 19:53:16','2015-10-09 19:53:29'),(48,'Randy','2015-10-10 20:43:34','2015-10-10 20:47:12'),(49,'Randy','2015-10-10 20:48:27','2015-10-10 20:48:40'),(50,'Randy','2015-10-10 20:49:51','2015-10-10 20:50:54'),(51,'Randy','2015-10-10 20:51:40','2015-10-10 20:51:40'),(52,'Randy','2015-10-10 20:55:58','2015-10-10 20:55:58'),(53,'Karen','2015-10-10 21:01:24','2015-10-10 21:02:39'),(54,'Karen','2015-10-10 21:03:03','2015-10-10 21:03:56'),(55,'Randy','2015-10-10 21:16:29','2015-10-10 21:16:35'),(56,'Karen','2015-10-10 21:16:41','2015-10-10 21:17:14'),(57,'Randy','2015-10-10 21:17:26','2015-10-10 21:17:52'),(58,'Randy','2015-10-10 21:18:27','2015-10-10 21:19:44'),(59,'Randy','2015-10-10 21:24:20','2015-10-10 21:25:12'),(60,'Randy','2015-10-10 21:32:36','2015-10-10 21:33:12'),(61,'Randy','2015-10-10 21:34:40','2015-10-10 21:35:03'),(62,'Randy','2015-10-10 21:36:12','2015-10-10 21:37:23'),(63,'Randy','2015-10-10 21:43:16','2015-10-10 21:44:11'),(64,'Randy','2015-10-10 21:44:38','2015-10-10 21:44:49'),(65,'Randy','2015-10-11 09:46:30','2015-10-11 09:46:33'),(66,'Randy','2015-10-11 09:55:17','2015-10-11 09:56:22'),(67,'Randy','2015-10-11 10:01:02','2015-10-11 10:03:42'),(68,'Randy','2015-10-11 10:04:41','2015-10-11 10:06:11'),(69,'Randy','2015-10-11 10:09:57','2015-10-11 10:10:12'),(70,'Randy','2015-10-13 22:12:27','2015-10-13 22:12:37'),(71,'Randy','2015-10-13 22:16:15','2015-10-13 22:16:23'),(72,'Randy','2015-10-13 22:20:45','2015-10-13 22:20:52'),(73,'Randy','2015-10-13 22:22:38','2015-10-13 22:22:44'),(74,'Randy','2015-10-13 22:24:02','2015-10-13 22:24:02'),(75,'Randy','2015-10-13 22:24:45','2015-10-13 22:25:09'),(76,'Randy','2015-10-13 22:26:05','2015-10-13 22:26:10'),(77,'Randy','2015-10-13 22:27:15','2015-10-13 22:27:32'),(78,'Randy','2015-10-13 22:28:02','2015-10-13 22:28:07'),(79,'','2015-10-13 22:32:41','2015-10-13 22:32:48'),(80,'Randy','2015-10-13 22:42:05','2015-10-13 22:42:12'),(81,'Randy','2015-10-13 22:49:03','2015-10-13 22:50:53'),(82,'Randy','2015-10-13 22:56:24','2015-10-13 22:57:47'),(83,'Randy','2015-10-13 23:04:45','2015-10-13 23:05:04'),(84,'Randy','2015-10-13 23:06:25','2015-10-13 23:06:34'),(85,'Randy','2015-10-13 23:08:09','2015-10-13 23:08:16'),(86,'Randy','2015-10-13 23:09:05','2015-10-13 23:09:19'),(87,'Randy','2015-10-13 23:13:03','2015-10-13 23:13:22'),(88,'Randy','2015-10-13 23:13:59','2015-10-13 23:15:18'),(89,'Randy','2015-10-13 23:59:45','2015-10-13 23:59:55'),(90,'Randy','2015-10-14 00:00:09','2015-10-14 00:00:22'),(91,'Randy','2015-10-14 00:18:58','2015-10-14 00:19:25'),(92,'Randy','2015-10-14 00:36:37','2015-10-14 00:36:37'),(93,'Randy','2015-10-14 00:49:12','2015-10-14 00:49:12'),(94,'Randy','2015-10-14 00:51:12','2015-10-14 00:51:12'),(95,'Randy','2015-10-14 00:56:55','2015-10-14 00:56:55'),(96,'Randy','2015-10-14 01:01:35','2015-10-14 01:01:54'),(97,'Randy','2015-10-14 01:11:40','2015-10-14 01:11:51'),(98,'Jerwin','2015-10-14 01:12:01','2015-10-14 01:13:10'),(99,'Randy','2015-10-14 01:14:08','2015-10-14 01:15:10'),(100,'Randy','2015-10-14 01:16:27','2015-10-14 01:16:27'),(101,'Randy','2015-10-14 01:17:45','2015-10-14 01:17:45'),(102,'Randy','2015-10-14 01:30:07','2015-10-14 01:30:07'),(103,'Randy','2015-10-14 01:34:16','2015-10-14 01:35:44'),(104,'Jerwin','2015-10-14 01:37:19','2015-10-14 01:38:11'),(105,'Randy','2015-10-14 16:48:06','2015-10-14 16:48:45'),(106,'Randy','2015-10-14 17:06:25','2015-10-14 17:06:27'),(107,'Randy','2015-10-14 18:11:15','2015-10-14 18:11:27'),(108,'Randy','2015-10-15 07:49:14','2015-10-15 07:49:14'),(109,'Randy','2015-10-15 07:50:45','2015-10-15 07:51:15'),(110,'Karen','2015-10-15 08:05:14','2015-10-15 08:05:17'),(111,'Karen','2015-10-15 08:07:49','2015-10-15 08:07:53'),(112,'Jerwin','2015-10-15 08:08:30','2015-10-15 08:08:39'),(113,'Jerwin','2015-10-15 08:10:55','2015-10-15 08:10:59'),(114,'Randy','2015-10-15 08:11:45','2015-10-15 08:11:45'),(115,'Randy','2015-10-15 08:25:23','2015-10-15 08:25:28'),(116,'Randy','2015-10-15 08:27:21','2015-10-15 08:27:26'),(117,'Randy','2015-10-15 08:28:21','2015-10-15 08:28:24'),(118,'Randy','2015-10-15 08:46:16','2015-10-15 08:47:25'),(119,'Randy','2015-10-15 08:47:36','2015-10-15 08:47:44'),(120,'Karen','2015-10-15 08:47:49','2015-10-15 08:49:22'),(121,'Jerwin','2015-10-15 08:50:04','2015-10-15 08:50:29'),(122,'Jerwin','2015-10-15 09:01:47','2015-10-15 09:01:47'),(123,'Karen','2015-10-15 09:05:53','2015-10-15 09:05:58'),(124,'Jerwin','2015-10-15 09:06:38','2015-10-15 09:06:38'),(125,'Jerwin','2015-10-15 09:09:55','2015-10-15 09:09:55'),(126,'Jerwin','2015-10-15 09:13:02','2015-10-15 09:13:02'),(127,'Jerwin','2015-10-15 09:15:59','2015-10-15 09:15:59'),(128,'Jerwin','2015-10-15 09:17:16','2015-10-15 09:17:16'),(129,'Jerwin','2015-10-15 09:21:14','2015-10-15 09:21:38'),(130,'Jerwin','2015-10-15 09:22:26','2015-10-15 09:24:21'),(131,'Jerwin','2015-10-15 09:26:28','2015-10-15 09:26:28'),(132,'Jerwin','2015-10-15 09:28:22','2015-10-15 09:28:55'),(133,'Jerwin','2015-10-15 09:30:27','2015-10-15 09:31:35'),(134,'Jerwin','2015-10-15 09:32:15','2015-10-15 09:32:15'),(135,'Jerwin','2015-10-15 09:34:11','2015-10-15 09:34:37'),(136,'Jerwin','2015-10-15 09:35:46','2015-10-15 09:36:06'),(137,'Jerwin','2015-10-15 09:37:06','2015-10-15 09:37:28'),(138,'Jerwin','2015-10-15 09:41:42','2015-10-15 09:41:53'),(139,'Jerwin','2015-10-15 09:42:30','2015-10-15 09:43:54'),(140,'Jerwin','2015-10-15 09:45:29','2015-10-15 09:45:50'),(141,'Jerwin','2015-10-15 09:46:24','2015-10-15 09:46:59'),(142,'Jerwin','2015-10-15 09:48:27','2015-10-15 09:48:27'),(143,'','2015-10-15 09:51:20','2015-10-15 09:51:21'),(144,'Jerwin','2015-10-15 09:51:45','2015-10-15 09:52:17'),(145,'Jerwin','2015-10-15 09:53:00','2015-10-15 09:53:27'),(146,'Jerwin','2015-10-15 09:54:49','2015-10-15 09:56:15'),(147,'Karen','2015-10-15 09:56:19','2015-10-15 09:56:30'),(148,'Jerwin','2015-10-15 09:56:37','2015-10-15 09:56:47'),(149,'Jerwin','2015-10-15 09:58:24','2015-10-15 09:58:45'),(150,'Jerwin','2015-10-15 09:59:54','2015-10-15 10:00:11'),(151,'Karen','2015-10-15 10:46:56','2015-10-15 10:48:23'),(152,'Jerwin','2015-10-15 10:48:29','2015-10-15 10:48:35'),(153,'Jerwin','2015-10-15 10:49:47','2015-10-15 10:50:04'),(154,'Karen','2015-10-15 10:50:09','2015-10-15 10:51:20'),(155,'Jerwin','2015-10-15 10:52:19','2015-10-15 10:53:48'),(156,'Randy','2015-10-15 10:53:52','2015-10-15 10:55:11'),(157,'Karen','2015-10-15 10:55:18','2015-10-15 10:55:18'),(158,'Karen','2015-10-15 10:59:48','2015-10-15 10:59:48'),(159,'Karen','2015-10-15 11:00:57','2015-10-15 11:00:57'),(160,'Karen','2015-10-15 11:03:33','2015-10-15 11:03:33'),(161,'Karen','2015-10-15 11:05:37','2015-10-15 11:05:37'),(162,'Karen','2015-10-15 11:07:04','2015-10-15 11:07:04'),(163,'Karen','2015-10-15 11:09:31','2015-10-15 11:09:31'),(164,'Karen','2015-10-15 11:12:24','2015-10-15 11:12:24'),(165,'Karen','2015-10-15 11:14:58','2015-10-15 11:14:58'),(166,'Karen','2015-10-15 11:17:45','2015-10-15 11:18:34'),(167,'Karen','2015-10-15 11:18:53','2015-10-15 11:19:13'),(168,'Karen','2015-10-15 11:21:04','2015-10-15 11:21:19'),(169,'Randy','2015-10-15 11:21:44','2015-10-15 11:22:24'),(170,'Karen','2015-10-15 11:35:16','2015-10-15 11:35:21'),(171,'Jerwin','2015-10-15 11:35:24','2015-10-15 11:37:49'),(172,'Jerwin','2015-10-15 11:40:03','2015-10-15 11:40:26'),(173,'Jerwin','2015-10-15 11:41:27','2015-10-15 11:42:59'),(174,'Randy','2015-10-15 11:43:09','2015-10-15 11:43:44'),(175,'Karen','2015-10-15 11:43:54','2015-10-15 11:46:02'),(176,'Karen','2015-10-15 11:46:07','2015-10-15 11:46:19'),(177,'Randy','2015-10-15 11:46:26','2015-10-15 11:47:47'),(178,'Karen','2015-10-15 11:47:55','2015-10-15 11:49:05'),(179,'Jerwin','2015-10-15 11:49:16','2015-10-15 11:49:27'),(180,'Jerwin','2015-10-15 11:50:25','2015-10-15 11:50:32'),(181,'Jerwin','2015-10-15 12:00:05','2015-10-15 12:00:05'),(182,'','2015-10-15 12:00:21','2015-10-15 12:00:52'),(183,'Randy','2015-10-15 12:01:07','2015-10-15 12:01:07'),(184,'Jerwin','2015-10-15 12:06:35','2015-10-15 12:06:38'),(185,'Karen','2015-10-15 12:06:48','2015-10-15 12:06:49'),(186,'Francis','2015-10-15 12:07:07','2015-10-15 12:11:24'),(187,'Karen','2015-10-15 12:12:20','2015-10-15 12:12:21'),(188,'Francis','2015-10-15 12:12:26','2015-10-15 12:12:26'),(189,'','2015-10-15 12:17:39','2015-10-15 12:17:41'),(190,'Karen','2015-10-15 12:17:57','2015-10-15 12:17:57'),(191,'Jerwin','2015-10-15 12:22:51','2015-10-15 12:22:51'),(192,'Jerwin','2015-10-15 12:23:04','2015-10-15 12:23:05'),(193,'Randy','2015-10-15 12:23:16','2015-10-15 12:23:16'),(194,'Francis','2015-10-15 12:24:56','2015-10-15 12:25:27'),(195,'Randy','2015-10-15 12:30:26','2015-10-15 12:31:20'),(196,'Randy','2015-10-15 12:31:26','2015-10-15 12:31:59'),(197,'Randy','2015-10-15 12:33:44','2015-10-15 12:33:44'),(198,'Karen','2015-10-15 12:35:18','2015-10-15 12:35:18'),(199,'Randy','2015-10-15 12:35:48','2015-10-15 12:35:48'),(200,'Francis','2015-10-15 12:35:48','2015-10-15 12:35:48'),(201,'Jerwin','2015-10-15 12:36:17','2015-10-15 12:36:17'),(202,'','2015-10-15 12:37:53','2015-10-15 12:37:54'),(203,'Randy','2015-10-15 12:37:58','2015-10-15 12:37:58'),(204,'Randy','2015-10-15 12:47:41','2015-10-15 12:47:41'),(205,'Jerwin','2015-10-15 12:48:27','2015-10-15 12:48:27'),(206,'Karen','2015-10-15 12:49:28','2015-10-15 13:00:12'),(207,'Rabi','2015-10-15 13:00:32','2015-10-15 13:06:53'),(208,'','2015-10-15 13:10:43','2015-10-15 13:10:54'),(209,'Karen','2015-10-15 13:11:01','2015-10-15 13:11:01'),(210,'','2015-10-15 13:14:33','2015-10-15 13:22:46'),(211,'','2015-10-15 13:30:54','2015-10-15 13:30:54'),(212,'Karen','2015-10-15 13:34:53','2015-10-15 13:34:53'),(213,'','2015-10-15 13:35:18','2015-10-15 13:40:56'),(214,'Jerwin','2015-10-15 13:51:03','2015-10-15 13:51:03'),(215,'','2015-10-15 14:00:20','2015-10-15 14:00:22'),(216,'Karen','2015-10-15 14:01:32','2015-10-15 14:01:32'),(217,'Karen','2015-10-15 14:08:54','2015-10-15 14:11:31'),(218,'Karen','2015-10-15 14:12:08','2015-10-15 14:12:18'),(219,'Randy','2015-10-15 14:12:44','2015-10-15 14:14:39'),(220,'Jerwin','2015-10-15 14:14:43','2015-10-15 14:16:37'),(221,'Randy','2015-10-15 14:16:41','2015-10-15 14:22:53'),(222,'Randy','2015-10-15 14:29:12','2015-10-15 14:33:31'),(223,'Karen','2015-10-15 14:33:40','2015-10-15 14:34:15'),(224,'Randy','2015-10-15 14:34:22','2015-10-15 14:35:47'),(225,'Jerwin','2015-10-15 14:36:27','2015-10-15 14:36:27'),(226,'Randy','2015-10-15 14:44:33','2015-10-15 14:46:02'),(227,'Randy','2015-10-15 14:47:52','2015-10-15 14:48:26'),(228,'Randy','2015-10-15 14:52:35','2015-10-15 14:53:26'),(229,'Randy','2015-10-15 14:55:26','2015-10-15 14:55:26'),(230,'Karen','2015-10-15 15:00:02','2015-10-15 15:00:06'),(231,'Randy','2015-10-15 15:01:45','2015-10-15 15:03:06'),(232,'Randy','2015-10-15 15:04:59','2015-10-15 15:06:01'),(233,'Jerwin','2015-10-15 15:14:32','2015-10-15 15:16:06'),(234,'Randy','2015-10-15 15:16:09','2015-10-15 15:17:04'),(235,'Jerwin','2015-10-15 15:18:25','2015-10-15 15:18:52'),(236,'Jerwin','2015-10-15 15:18:57','2015-10-15 15:18:57'),(237,'Jerwin','2015-10-15 15:22:59','2015-10-15 15:24:07'),(238,'Rabi','2015-10-15 15:24:36','2015-10-15 15:25:06'),(239,'Jerwin','2015-10-15 15:25:47','2015-10-15 15:26:09'),(240,'Jerwin','2015-10-15 15:26:36','2015-10-15 15:26:46'),(241,'Randy','2015-10-15 15:26:53','2015-10-15 15:27:06'),(242,'Randy','2015-10-15 15:28:58','2015-10-15 15:29:15'),(243,'Jerwin','2015-10-15 15:29:35','2015-10-15 15:30:29'),(244,'Jerwin','2015-10-15 15:30:38','2015-10-15 15:31:58'),(245,'Randy','2015-10-15 15:32:02','2015-10-15 15:33:12'),(246,'Karen','2015-10-15 15:33:16','2015-10-15 15:33:38'),(247,'Jerwin','2015-10-15 15:33:47','2015-10-15 15:34:05'),(248,'Jerwin','2015-10-15 15:40:25','2015-10-15 15:40:25'),(249,'Jerwin','2015-10-15 15:42:52','2015-10-15 15:43:20'),(250,'Karen','2015-10-15 15:44:39','2015-10-15 15:44:42'),(251,'Jerwin','2015-10-15 15:44:52','2015-10-15 15:45:20'),(252,'Jerwin','2015-10-15 15:45:23','2015-10-15 15:45:47'),(253,'Jerwin','2015-10-15 15:47:54','2015-10-15 15:48:49'),(254,'Karen','2015-10-15 15:48:54','2015-10-15 15:48:59'),(255,'Randy','2015-10-15 15:53:51','2015-10-15 15:53:51'),(256,'Randy','2015-10-15 16:00:07','2015-10-15 16:00:37'),(257,'Karen','2015-10-15 16:01:05','2015-10-15 16:01:36'),(258,'Randy','2015-10-15 16:10:41','2015-10-15 16:10:44'),(259,'Karen','2015-10-15 16:10:49','2015-10-15 16:10:57'),(260,'Karen','2015-10-15 16:11:23','2015-10-15 16:11:23'),(261,'Randy','2015-10-15 16:12:05','2015-10-15 16:12:15'),(262,'Randy','2015-10-15 16:12:51','2015-10-15 16:13:04'),(263,'Karen','2015-10-15 16:13:42','2015-10-15 16:13:42'),(264,'Randy','2015-10-15 16:14:16','2015-10-15 16:14:20'),(265,'Karen','2015-10-15 16:16:23','2015-10-15 16:17:34'),(266,'Jerwin','2015-10-15 16:18:22','2015-10-15 16:18:32'),(267,'Jerwin','2015-10-15 16:18:39','2015-10-15 16:18:44'),(268,'Randy','2015-10-15 16:18:39','2015-10-15 16:18:39'),(269,'Randy','2015-10-15 16:19:14','2015-10-15 16:19:34'),(270,'Randy','2015-10-15 16:19:40','2015-10-15 16:19:43'),(271,'Karen','2015-10-15 16:19:46','2015-10-15 16:20:07'),(272,'Randy','2015-10-15 16:21:17','2015-10-15 16:21:58'),(273,'Randy','2015-10-15 16:22:20','2015-10-15 16:22:57'),(274,'Randy','2015-10-15 16:23:01','2015-10-15 16:24:28'),(275,'Jerwin','2015-10-15 16:25:39','2015-10-15 16:25:49'),(276,'Karen','2015-10-15 16:25:53','2015-10-15 16:25:58'),(277,'Randy','2015-10-15 16:26:01','2015-10-15 16:26:10'),(278,'Jerwin','2015-10-15 16:27:18','2015-10-15 16:27:25'),(279,'Randy','2015-10-15 16:27:35','2015-10-15 16:27:35'),(280,'','2015-10-15 16:32:28','2015-10-15 16:32:28'),(281,'Randy','2015-10-15 16:32:46','2015-10-15 16:34:35'),(282,'Jerwin','2015-10-15 16:35:00','2015-10-15 16:35:02'),(283,'Karen','2015-10-15 16:35:05','2015-10-15 16:35:08'),(284,'Randy','2015-10-15 16:35:11','2015-10-15 16:35:29'),(285,'Randy','2015-10-15 16:36:19','2015-10-15 16:37:21'),(286,'','2015-10-15 16:37:24','2015-10-15 16:38:22'),(287,'Jerwin','2015-10-15 16:38:30','2015-10-15 16:38:34'),(288,'Randy','2015-10-15 16:43:04','2015-10-15 16:43:16'),(289,'Jerwin','2015-10-15 16:44:53','2015-10-15 16:45:01'),(290,'Randy','2015-10-15 16:45:15','2015-10-15 16:45:31'),(291,'Jerwin','2015-10-15 17:57:12','2015-10-15 17:57:12'),(292,'Rabi','2015-10-15 17:57:32','2015-10-15 17:57:32'),(293,'Randy','2015-10-15 17:57:48','2015-10-15 17:57:48'),(294,'Karen','2015-10-15 17:57:53','2015-10-15 17:58:13'),(295,'Rabi','2015-10-15 18:05:42','2015-10-15 18:06:01'),(296,'Rabi','2015-10-15 18:26:18','2015-10-15 18:37:31'),(297,'Rabi','2015-10-15 18:37:37','2015-10-15 18:37:37'),(298,'Jerwin','2015-10-15 18:40:53','2015-10-15 18:41:34'),(299,'','2015-10-15 18:42:55','2015-10-15 18:42:59'),(300,'Jerwin','2015-10-15 18:43:04','2015-10-15 18:51:51'),(301,'Jerwin','2015-10-15 18:51:57','2015-10-15 18:52:57'),(302,'Randy','2015-10-15 18:53:15','2015-10-15 18:53:15'),(303,'Karen','2015-10-15 19:16:40','2015-10-15 19:16:40'),(304,'Jerwin','2015-10-15 19:21:13','2015-10-15 19:25:57'),(305,'Rabi','2015-10-15 19:26:21','2015-10-15 19:26:21'),(306,'Jerwin','2015-10-15 19:31:32','2015-10-15 19:31:33'),(307,'','2015-10-15 19:31:51','2015-10-15 19:32:36'),(308,'','2015-10-29 09:45:25','2015-10-29 09:48:23'),(309,'Francis','2015-10-29 09:48:40','2015-10-29 09:49:00'),(310,'Jerwin','2015-10-29 09:49:04','2015-10-29 09:50:25'),(311,'Francis','2015-10-29 09:50:30','2015-10-29 09:51:28'),(312,'','2015-10-29 09:53:02','2015-10-29 09:53:03'),(313,'Karen','2015-10-29 09:53:07','2015-10-29 09:55:35'),(314,'Jerwin','2015-10-29 09:55:43','2015-10-29 09:55:54'),(315,'Rabi','2016-01-12 12:50:12','2016-01-12 12:50:12'),(316,'Rabi','2016-01-12 12:50:53','2016-01-12 12:52:15'),(317,'Jerwin','2016-01-12 12:57:24','2016-01-12 12:58:26'),(318,'Jerwin','2016-01-12 13:07:49','2016-01-12 13:07:57'),(319,'Jerwin','2016-01-12 13:15:39','2016-01-12 13:15:44'),(320,'Jerwin','2016-01-12 13:16:10','2016-01-12 13:16:19'),(321,'Jerwin','2016-01-12 13:25:08','2016-01-12 13:25:21'),(322,'Jerwin','2016-01-12 13:29:33','2016-01-12 13:30:19'),(323,'Jerwin','2016-01-12 13:31:58','2016-01-12 13:33:19'),(324,'Jerwin','2016-01-12 13:33:23','2016-01-12 13:33:57'),(325,'Jerwin','2016-01-12 13:36:02','2016-01-12 13:36:41'),(326,'Jerwin','2016-01-12 13:38:01','2016-01-12 13:38:18'),(327,'Jerwin','2016-01-12 13:45:06','2016-01-12 13:45:08'),(328,'Jerwin','2016-01-12 13:46:55','2016-01-12 13:47:07'),(329,'Jerwin','2016-01-12 13:47:20','2016-01-12 13:47:25'),(330,'Jerwin','2016-01-12 13:48:18','2016-01-12 13:48:28'),(331,'Jerwin','2016-01-12 13:49:59','2016-01-12 13:51:58'),(332,'Jerwin','2016-01-12 13:52:22','2016-01-12 13:53:54'),(333,'Jerwin','2016-01-12 13:56:13','2016-01-12 13:56:47'),(334,'Jerwin','2016-01-12 13:57:17','2016-01-12 13:58:44'),(335,'Jerwin','2016-01-12 13:58:51','2016-01-12 13:59:33'),(336,'Jerwin','2016-01-12 13:59:51','2016-01-12 13:59:55'),(337,'Jerwin','2016-01-12 13:59:59','2016-01-12 14:00:04'),(338,'Jerwin','2016-01-12 14:00:16','2016-01-12 14:00:29'),(339,'Jerwin','2016-01-12 14:01:49','2016-01-12 14:01:52'),(340,'Jerwin','2016-01-12 14:02:24','2016-01-12 14:02:29'),(341,'Jerwin','2016-01-12 14:04:09','2016-01-12 14:04:12'),(342,'Jerwin','2016-01-12 14:06:31','2016-01-12 14:06:31'),(343,'Jerwin','2016-01-12 14:12:12','2016-01-12 14:12:19'),(344,'Jerwin','2016-01-12 14:12:46','2016-01-12 14:12:50'),(345,'Jerwin','2016-01-12 14:13:40','2016-01-12 14:13:40'),(346,'Jerwin','2016-01-12 14:16:50','2016-01-12 14:16:50'),(347,'Jerwin','2016-01-12 14:18:22','2016-01-12 14:18:22'),(348,'Jerwin','2016-01-12 14:19:15','2016-01-12 14:19:18'),(349,'Jerwin','2016-01-12 14:19:54','2016-01-12 14:20:47'),(350,'Jerwin','2016-01-12 14:22:34','2016-01-12 14:22:46'),(351,'Jerwin','2016-01-12 14:24:13','2016-01-12 14:26:47'),(352,'Jerwin','2016-01-12 14:33:18','2016-01-12 14:35:15'),(353,'Jerwin','2016-01-12 14:35:22','2016-01-12 14:35:30'),(354,'Jerwin','2016-01-12 14:37:49','2016-01-12 14:38:06'),(355,'Jerwin','2016-01-12 14:38:27','2016-01-12 14:38:30'),(356,'Jerwin','2016-01-12 14:38:54','2016-01-12 14:39:24'),(357,'Jerwin','2016-01-12 14:40:20','2016-01-12 14:41:01'),(358,'Jerwin','2016-01-12 14:41:23','2016-01-12 14:41:43'),(359,'Jerwin','2016-01-12 14:42:12','2016-01-12 14:42:29'),(360,'Jerwin','2016-01-12 14:51:48','2016-01-12 14:51:55'),(361,'Jerwin','2016-01-12 14:52:15','2016-01-12 14:52:23'),(362,'Jerwin','2016-01-12 14:53:33','2016-01-12 14:54:07'),(363,'Jerwin','2016-01-12 14:58:45','2016-01-12 14:59:17'),(364,'Jerwin','2016-01-12 15:00:06','2016-01-12 15:00:54'),(365,'Jerwin','2016-01-12 15:02:19','2016-01-12 15:03:47'),(366,'Jerwin','2016-01-12 15:04:01','2016-01-12 15:06:34'),(367,'Jerwin','2016-01-12 15:06:53','2016-01-12 15:07:15'),(368,'Jerwin','2016-01-12 15:07:56','2016-01-12 15:07:59'),(369,'Jerwin','2016-01-12 15:08:53','2016-01-12 15:09:26'),(370,'Jerwin','2016-01-12 15:10:12','2016-01-12 15:12:01'),(371,'Jerwin','2016-01-12 15:23:17','2016-01-12 15:23:34'),(372,'Jerwin','2016-01-12 15:24:51','2016-01-12 15:25:07'),(373,'Jerwin','2016-01-12 15:25:25','2016-01-12 15:25:25'),(374,'Jerwin','2016-01-12 15:26:15','2016-01-12 15:26:15'),(375,'Jerwin','2016-01-12 15:28:13','2016-01-12 15:28:13'),(376,'Jerwin','2016-01-12 15:29:24','2016-01-12 15:30:31'),(377,'Jerwin','2016-01-12 15:31:40','2016-01-12 15:32:13'),(378,'Jerwin','2016-01-12 15:33:13','2016-01-12 15:34:05'),(379,'Jerwin','2016-01-12 15:34:27','2016-01-12 15:34:33'),(380,'Jerwin','2016-01-12 15:35:03','2016-01-12 15:35:33'),(381,'Jerwin','2016-01-12 15:39:30','2016-01-12 15:41:41'),(382,'Jerwin','2016-01-12 15:43:13','2016-01-12 15:44:47'),(383,'Jerwin','2016-01-12 15:45:00','2016-01-12 15:45:17'),(384,'Jerwin','2016-01-12 15:46:01','2016-01-12 15:46:17'),(385,'Jerwin','2016-01-12 15:46:35','2016-01-12 15:47:13'),(386,'Jerwin','2016-01-12 15:47:25','2016-01-12 15:48:13'),(387,'Jerwin','2016-01-12 15:48:18','2016-01-12 15:49:05'),(388,'Jerwin','2016-01-12 15:49:23','2016-01-12 15:49:55'),(389,'Jerwin','2016-01-12 15:50:11','2016-01-12 15:52:28'),(390,'Jerwin','2016-01-12 16:01:39','2016-01-12 16:02:29'),(391,'Jerwin','2016-01-12 16:03:59','2016-01-12 16:05:21'),(392,'Jerwin','2016-01-12 16:14:27','2016-01-12 16:15:13'),(393,'Jerwin','2016-01-12 16:15:53','2016-01-12 16:16:24'),(394,'Jerwin','2016-01-12 16:17:50','2016-01-12 16:17:57'),(395,'Jerwin','2016-01-12 16:19:20','2016-01-12 16:26:02'),(396,'Jerwin','2016-01-12 16:27:27','2016-01-12 16:27:52'),(397,'Jerwin','2016-01-12 16:28:50','2016-01-12 16:28:57'),(398,'Jerwin','2016-01-12 16:29:27','2016-01-12 16:29:32'),(399,'Jerwin','2016-01-12 16:30:27','2016-01-12 16:30:35'),(400,'Jerwin','2016-01-12 16:32:11','2016-01-12 16:32:15'),(401,'Jerwin','2016-01-12 16:35:57','2016-01-12 16:36:10'),(402,'Jerwin','2016-01-12 16:36:14','2016-01-12 16:39:12'),(403,'Jerwin','2016-01-12 16:39:24','2016-01-12 16:39:33'),(404,'Jerwin','2016-01-12 16:40:13','2016-01-12 16:40:37'),(405,'Jerwin','2016-01-12 16:41:26','2016-01-12 16:41:31'),(406,'Jerwin','2016-01-12 16:44:00','2016-01-12 16:44:03'),(407,'Jerwin','2016-01-12 16:45:01','2016-01-12 16:45:07'),(408,'Jerwin','2016-01-12 16:45:24','2016-01-12 16:45:29'),(409,'Jerwin','2016-01-12 16:45:51','2016-01-12 16:45:52'),(410,'Jerwin','2016-01-12 16:46:20','2016-01-12 16:46:22'),(411,'Jerwin','2016-01-12 16:46:42','2016-01-12 16:46:47'),(412,'Jerwin','2016-01-12 16:47:44','2016-01-12 16:47:49'),(413,'Jerwin','2016-01-12 16:48:15','2016-01-12 16:48:20'),(414,'Jerwin','2016-01-12 16:48:42','2016-01-12 16:48:55'),(415,'Jerwin','2016-01-12 16:50:19','2016-01-12 16:50:21'),(416,'Jerwin','2016-01-12 16:50:44','2016-01-12 16:50:49'),(417,'Jerwin','2016-01-12 16:51:09','2016-01-12 16:51:13'),(418,'Jerwin','2016-01-12 16:51:31','2016-01-12 16:51:37'),(419,'Jerwin','2016-01-12 16:52:02','2016-01-12 16:52:05'),(420,'Jerwin','2016-01-12 16:52:38','2016-01-12 16:52:43'),(421,'Jerwin','2016-01-12 16:53:45','2016-01-12 16:53:50'),(422,'Jerwin','2016-01-12 16:54:16','2016-01-12 16:54:23'),(423,'Jerwin','2016-01-12 16:55:03','2016-01-12 16:55:12'),(424,'Jerwin','2016-01-12 16:55:44','2016-01-12 16:55:48'),(425,'Jerwin','2016-01-12 16:56:17','2016-01-12 16:56:22'),(426,'Jerwin','2016-01-12 16:56:54','2016-01-12 16:56:57'),(427,'Jerwin','2016-01-12 16:57:19','2016-01-12 16:57:24'),(428,'Jerwin','2016-01-12 16:59:52','2016-01-12 17:00:02'),(429,'Jerwin','2016-01-12 17:01:00','2016-01-12 17:01:09'),(430,'Jerwin','2016-01-12 17:02:16','2016-01-12 17:02:21'),(431,'Jerwin','2016-01-12 17:02:42','2016-01-12 17:02:52'),(432,'Jerwin','2016-01-12 17:03:55','2016-01-12 17:04:06'),(433,'Jerwin','2016-01-12 17:11:15','2016-01-12 17:11:19'),(434,'Jerwin','2016-01-12 17:11:55','2016-01-12 17:12:00'),(435,'Jerwin','2016-01-12 17:13:47','2016-01-12 17:13:54'),(436,'Jerwin','2016-01-12 17:14:10','2016-01-12 17:14:12'),(437,'Jerwin','2016-01-12 17:15:39','2016-01-12 17:15:43'),(438,'Jerwin','2016-01-12 17:16:26','2016-01-12 17:16:30'),(439,'Jerwin','2016-01-12 17:16:56','2016-01-12 17:17:00'),(440,'Jerwin','2016-01-12 17:17:17','2016-01-12 17:17:38'),(441,'Jerwin','2016-01-12 17:17:43','2016-01-12 17:17:45'),(442,'Rabi','2016-01-12 17:17:54','2016-01-12 17:18:13'),(443,'Jerwin','2016-01-12 17:18:36','2016-01-12 17:21:05'),(444,'Jerwin','2016-01-12 17:21:36','2016-01-12 17:21:53'),(445,'Jerwin','2016-01-12 17:22:04','2016-01-12 17:22:11'),(446,'Jerwin','2016-01-12 17:23:29','2016-01-12 17:23:39'),(447,'Jerwin','2016-01-12 17:24:34','2016-01-12 17:24:42'),(448,'Jerwin','2016-01-12 17:28:26','2016-01-12 17:28:32'),(449,'Jerwin','2016-01-12 17:29:08','2016-01-12 17:29:25'),(450,'Jerwin','2016-01-12 17:30:11','2016-01-12 17:30:30'),(451,'Jerwin','2016-01-12 17:31:03','2016-01-12 17:31:12'),(452,'Jerwin','2016-01-12 17:32:47','2016-01-12 17:32:49'),(453,'Jerwin','2016-01-12 17:34:04','2016-01-12 17:34:06'),(454,'Jerwin','2016-01-12 17:39:19','2016-01-12 17:39:24'),(455,'Jerwin','2016-01-12 17:41:49','2016-01-12 17:41:51'),(456,'Jerwin','2016-01-12 17:56:06','2016-01-12 17:56:09'),(457,'Jerwin','2016-01-12 17:57:02','2016-01-12 17:57:04'),(458,'Jerwin','2016-01-12 17:58:14','2016-01-12 17:58:29'),(459,'Jerwin','2016-01-12 18:05:22','2016-01-12 18:05:54'),(460,'Jerwin','2016-01-12 18:07:52','2016-01-12 18:07:56'),(461,'Jerwin','2016-01-12 18:08:16','2016-01-12 18:08:20'),(462,'Jerwin','2016-01-12 18:10:01','2016-01-12 18:10:12'),(463,'Jerwin','2016-01-12 18:20:28','2016-01-12 18:20:49'),(464,'Jerwin','2016-01-12 18:21:15','2016-01-12 18:21:15'),(465,'Jerwin','2016-01-12 18:24:41','2016-01-12 18:24:44'),(466,'Jerwin','2016-01-12 18:25:01','2016-01-12 18:25:15'),(467,'Jerwin','2016-01-13 09:08:59','2016-01-13 09:10:14'),(468,'Jerwin','2016-01-13 09:10:20','2016-01-13 09:10:25'),(469,'Jerwin','2016-01-13 09:10:39','2016-01-13 09:11:53'),(470,'Jerwin','2016-01-13 09:18:19','2016-01-13 09:19:34'),(471,'Jerwin','2016-01-13 09:19:55','2016-01-13 09:19:55'),(472,'Jerwin','2016-01-13 09:25:48','2016-01-13 09:25:48'),(473,'Jerwin','2016-01-13 09:30:15','2016-01-13 09:30:15'),(474,'Jerwin','2016-01-13 09:36:14','2016-01-13 09:39:13'),(475,'Jerwin','2016-01-13 09:46:20','2016-01-13 09:46:27'),(476,'Jerwin','2016-01-13 09:47:56','2016-01-13 09:48:03'),(477,'Jerwin','2016-01-13 09:49:38','2016-01-13 09:50:06'),(478,'Jerwin','2016-01-13 10:33:48','2016-01-13 10:34:07'),(479,'Jerwin','2016-01-13 12:13:56','2016-01-13 12:13:56'),(480,'Jerwin','2016-01-13 12:15:57','2016-01-13 12:15:57'),(481,'Jerwin','2016-01-13 12:17:27','2016-01-13 12:17:27'),(482,'Jerwin','2016-01-13 12:20:31','2016-01-13 12:20:31'),(483,'Jerwin','2016-01-13 12:32:43','2016-01-13 12:32:43'),(484,'Jerwin','2016-01-13 12:34:24','2016-01-13 12:34:24'),(485,'Jerwin','2016-01-13 12:37:54','2016-01-13 12:37:54'),(486,'Jerwin','2016-01-13 12:41:11','2016-01-13 12:41:11'),(487,'Jerwin','2016-01-13 12:42:35','2016-01-13 12:42:35'),(488,'Jerwin','2016-01-13 12:47:40','2016-01-13 12:47:40'),(489,'Jerwin','2016-01-13 12:48:15','2016-01-13 12:48:15'),(490,'Jerwin','2016-01-13 12:49:40','2016-01-13 12:49:40'),(491,'Jerwin','2016-01-13 12:53:24','2016-01-13 12:53:31'),(492,'Jerwin','2016-01-13 12:59:30','2016-01-13 12:59:30'),(493,'Jerwin','2016-01-13 13:00:48','2016-01-13 13:00:48'),(494,'Jerwin','2016-01-13 13:05:24','2016-01-13 13:05:33'),(495,'Jerwin','2016-01-13 13:05:43','2016-01-13 13:05:43'),(496,'Jerwin','2016-01-13 13:14:04','2016-01-13 13:14:16'),(497,'Jerwin','2016-01-13 13:15:18','2016-01-13 13:15:18'),(498,'Jerwin','2016-01-13 13:16:08','2016-01-13 13:16:17'),(499,'Jerwin','2016-01-13 13:18:51','2016-01-13 13:19:56'),(500,'Jerwin','2016-01-13 13:20:14','2016-01-13 13:22:11'),(501,'Jerwin','2016-01-13 13:22:52','2016-01-13 13:22:52'),(502,'Jerwin','2016-01-13 13:24:41','2016-01-13 13:25:24'),(503,'Jerwin','2016-01-13 13:29:00','2016-01-13 13:29:28'),(504,'Jerwin','2016-01-13 13:38:44','2016-01-13 13:38:44'),(505,'Jerwin','2016-01-13 13:41:51','2016-01-13 13:42:56'),(506,'Jerwin','2016-01-13 13:43:11','2016-01-13 13:44:19'),(507,'Jerwin','2016-01-13 13:45:32','2016-01-13 13:45:32'),(508,'Jerwin','2016-01-13 13:49:15','2016-01-13 13:49:15'),(509,'Jerwin','2016-01-13 13:51:26','2016-01-13 13:51:26'),(510,'Jerwin','2016-01-13 13:53:30','2016-01-13 13:53:30'),(511,'Jerwin','2016-01-13 14:02:38','2016-01-13 14:05:29'),(512,'Jerwin','2016-01-13 14:09:14','2016-01-13 14:09:14'),(513,'Jerwin','2016-01-13 14:10:18','2016-01-13 14:10:52'),(514,'Jerwin','2016-01-13 14:11:03','2016-01-13 14:11:29'),(515,'Jerwin','2016-01-13 14:14:12','2016-01-13 14:14:57'),(516,'Jerwin','2016-01-13 14:15:10','2016-01-13 14:15:38'),(517,'Jerwin','2016-01-13 14:17:00','2016-01-13 14:17:26'),(518,'Jerwin','2016-01-13 14:22:06','2016-01-13 14:22:25'),(519,'Jerwin','2016-01-13 14:23:46','2016-01-13 14:23:47'),(520,'Rabi','2016-01-13 14:23:51','2016-01-13 14:23:54'),(521,'Jerwin','2016-01-13 14:31:30','2016-01-13 14:31:39'),(522,'Jerwin','2016-01-13 14:39:20','2016-01-13 14:39:27'),(523,'Jerwin','2016-01-13 14:43:37','2016-01-13 14:43:44'),(524,'Jerwin','2016-01-13 14:45:26','2016-01-13 14:45:34'),(525,'Jerwin','2016-01-13 14:46:47','2016-01-13 14:47:17'),(526,'Jerwin','2016-01-13 14:47:28','2016-01-13 14:48:12'),(527,'Jerwin','2016-01-13 14:48:23','2016-01-13 14:48:33'),(528,'Jerwin','2016-01-17 10:11:58','2016-01-17 10:12:49'),(529,'Rabi','2016-01-17 10:13:14','2016-01-17 10:15:35'),(530,'Rabi','2016-01-17 11:15:35','2016-01-17 11:15:46'),(531,'Karen','2016-01-17 11:16:13','2016-01-17 11:16:34'),(532,'Rabi','2016-01-17 11:55:35','2016-01-17 11:55:35'),(533,'Rabi','2016-01-17 13:13:45','2016-01-17 13:57:48'),(534,'Rabi','2016-01-17 15:45:35','2016-01-17 15:59:15'),(535,'Randy','2016-01-17 16:28:56','2016-01-17 16:35:56'),(536,'Karen','2016-01-17 16:36:00','2016-01-17 16:49:20'),(537,'Karen','2016-01-17 16:49:58','2016-01-17 16:50:39'),(538,'Randy','2016-01-17 17:05:49','2016-01-17 17:06:31'),(539,'Randy','2016-01-17 17:16:12','2016-01-17 17:16:20'),(540,'Rabi','2016-01-17 17:19:22','2016-01-17 17:19:32'),(541,'Rabi','2016-01-17 17:28:46','2016-01-17 17:29:37'),(542,'Rabi','2016-01-17 17:41:55','2016-01-17 17:43:19'),(543,'Rabi','2016-01-17 17:44:45','2016-01-17 17:44:44'),(544,'Karen','2016-01-17 17:52:01','2016-01-17 17:52:08'),(545,'Karen','2016-01-17 17:53:34','2016-01-17 17:53:45'),(546,'Karen','2016-01-17 17:55:38','2016-01-17 17:55:54'),(547,'Karen','2016-01-17 17:56:14','2016-01-17 17:56:41'),(548,'Randy','2016-01-17 18:06:24','2016-01-17 18:08:30'),(549,'Karen','2016-01-17 18:08:47','2016-01-17 18:13:41'),(550,'Randy','2016-01-17 18:15:23','2016-01-17 18:15:23'),(551,'Karen','2016-01-17 18:24:48','2016-01-17 18:24:51'),(552,'Rabi','2016-01-17 18:25:19','2016-01-17 18:25:21'),(553,'Rabi','2016-01-17 18:25:49','2016-01-17 18:25:52'),(554,'Rabi','2016-01-17 18:26:17','2016-01-17 18:27:36'),(555,'Rabi','2016-01-17 18:49:55','2016-01-17 18:49:58'),(556,'Rabi','2016-01-17 18:50:43','2016-01-17 18:51:17'),(557,'Rabi','2016-01-17 18:53:49','2016-01-17 18:53:56'),(558,'Rabi','2016-01-17 18:57:57','2016-01-17 18:58:12'),(559,'Rabi','2016-01-17 19:00:37','2016-01-17 19:01:02'),(560,'Rabi','2016-01-17 19:01:11','2016-01-17 19:01:21'),(561,'Rabi','2016-01-17 19:01:25','2016-01-17 19:01:49'),(562,'Rabi','2016-01-17 19:01:57','2016-01-17 19:05:04'),(563,'Randy','2016-01-17 19:51:32','2016-01-17 19:51:44'),(564,'Karen','2016-01-17 19:52:06','2016-01-17 19:52:13'),(565,'Rabi','2016-01-17 20:34:02','2016-01-17 20:35:11'),(566,'Jerwin','2016-01-18 13:56:18','2016-01-18 13:56:28'),(567,'Jerwin','2016-01-18 13:57:20','2016-01-18 13:57:20'),(568,'Jerwin','2016-01-18 14:01:10','2016-01-18 14:01:10'),(569,'Jerwin','2016-01-18 14:05:45','2016-01-18 14:06:14'),(570,'Rabi','2016-01-18 14:11:07','2016-01-18 14:11:10'),(571,'Jerwin','2016-01-18 14:11:15','2016-01-18 14:11:30'),(572,'Jerwin','2016-01-18 14:11:56','2016-01-18 14:13:27'),(573,'Jerwin','2016-01-18 14:16:14','2016-01-18 14:16:23'),(574,'Rabi','2016-01-18 14:16:45','2016-01-18 14:17:43'),(575,'Jerwin','2016-01-18 14:21:36','2016-01-18 14:22:23'),(576,'Rabi','2016-01-18 14:23:18','2016-01-18 14:28:44'),(577,'Jerwin','2016-01-18 14:33:01','2016-01-18 14:33:22'),(578,'Jerwin','2016-01-18 14:41:48','2016-01-18 14:42:38'),(579,'Jerwin','2016-01-18 14:45:08','2016-01-18 14:45:59'),(580,'Randy','2016-01-18 14:46:03','2016-01-18 14:48:37'),(581,'Karen','2016-01-18 14:48:40','2016-01-18 14:49:09'),(582,'Rabi','2016-01-18 14:49:13','2016-01-18 14:49:14'),(583,'Randy','2016-01-18 14:49:18','2016-01-18 14:51:58'),(584,'Jerwin','2016-01-18 14:54:30','2016-01-18 14:54:39'),(585,'Randy','2016-01-18 14:54:46','2016-01-18 14:55:34'),(586,'Karen','2016-01-18 14:55:40','2016-01-18 14:56:39'),(587,'Jerwin','2016-01-18 14:56:44','2016-01-18 14:56:51'),(588,'Karen','2016-01-18 14:58:33','2016-01-18 14:58:36'),(589,'Randy','2016-01-18 14:58:41','2016-01-18 14:59:56'),(590,'Karen','2016-01-18 15:00:08','2016-01-18 15:02:20'),(591,'Karen','2016-01-18 15:03:26','2016-01-18 15:06:59'),(592,'Karen','2016-01-18 15:07:36','2016-01-18 15:08:22'),(593,'Jerwin','2016-01-18 15:09:23','2016-01-18 15:10:27'),(594,'Jerwin','2016-01-18 15:25:53','2016-01-18 15:25:59'),(595,'Jerwin','2016-01-18 15:26:58','2016-01-18 15:30:59'),(596,'Jerwin','2016-01-18 15:32:14','2016-01-18 15:38:45'),(597,'Jerwin','2016-01-18 15:41:38','2016-01-18 15:42:48'),(598,'Jerwin','2016-01-18 15:43:20','2016-01-18 15:43:41'),(599,'Jerwin','2016-01-18 15:44:37','2016-01-18 15:44:48'),(600,'Jerwin','2016-01-18 16:37:08','2016-01-18 16:37:18'),(601,'Jerwin','2016-01-18 16:38:20','2016-01-18 16:38:33'),(602,'Jerwin','2016-01-18 16:39:48','2016-01-18 16:39:57'),(603,'Jerwin','2016-01-18 16:40:43','2016-01-18 16:41:07'),(604,'Jerwin','2016-01-18 16:41:41','2016-01-18 16:42:35'),(605,'Jerwin','2016-01-18 16:43:31','2016-01-18 16:44:23'),(606,'Jerwin','2016-01-18 17:33:02','2016-01-18 17:34:11'),(607,'Jerwin','2016-01-18 17:35:01','2016-01-18 17:35:01'),(608,'Rabi','2016-01-18 17:38:35','2016-01-18 17:41:55'),(609,'Rabi','2016-01-18 17:42:23','2016-01-18 17:43:17'),(610,'Jerwin','2016-01-18 17:43:37','2016-01-18 17:43:37'),(611,'Randy','2016-01-18 20:00:10','2016-01-18 20:00:17'),(612,'Randy','2016-01-18 20:24:43','2016-01-18 20:24:49'),(613,'Rabi','2016-01-18 20:24:56','2016-01-18 20:25:13'),(614,'Rabi','2016-01-18 21:20:33','2016-01-18 21:22:48'),(615,'Jerwin','2016-01-18 22:10:58','2016-01-18 22:11:25'),(616,'Jerwin','2016-01-18 22:13:05','2016-01-18 22:19:57'),(617,'Rabi','2016-01-18 22:24:15','2016-01-18 22:25:43'),(618,'Jerwin','2016-01-18 22:28:38','2016-01-18 22:29:16'),(619,'Jerwin','2016-01-18 22:32:36','2016-01-18 22:34:19'),(620,'Jerwin','2016-01-18 22:35:16','2016-01-18 22:35:35'),(621,'Jerwin','2016-01-18 22:37:01','2016-01-18 22:37:16'),(622,'Jerwin','2016-01-18 22:40:55','2016-01-18 22:41:08'),(623,'Jerwin','2016-01-18 22:44:09','2016-01-18 22:44:28'),(624,'Jerwin','2016-01-18 23:06:06','2016-01-18 23:06:36'),(625,'Jerwin','2016-01-18 23:14:55','2016-01-18 23:16:16'),(626,'Randy','2016-01-19 07:09:53','2016-01-19 07:10:01'),(627,'Karen','2016-01-19 07:31:07','2016-01-19 07:31:13'),(628,'Jerwin','2016-01-19 07:40:44','2016-01-19 07:41:11'),(629,'Jerwin','2016-01-19 07:53:21','2016-01-19 07:53:51'),(630,'Jerwin','2016-01-19 08:10:02','2016-01-19 08:10:02'),(631,'Jerwin','2016-01-19 08:22:25','2016-01-19 08:22:33'),(632,'Jerwin','2016-01-19 08:25:45','2016-01-19 08:26:15'),(633,'Jerwin','2016-01-19 08:26:54','2016-01-19 08:27:02'),(634,'Jerwin','2016-01-19 08:37:58','2016-01-19 08:39:05'),(635,'Jerwin','2016-01-19 08:40:16','2016-01-19 08:40:36'),(636,'Rabi','2016-01-19 08:42:35','2016-01-19 08:42:35'),(637,'Jerwin','2016-01-19 08:46:20','2016-01-19 08:46:31'),(638,'Jerwin','2016-01-19 08:54:58','2016-01-19 08:55:21'),(639,'Jerwin','2016-01-19 09:42:26','2016-01-19 09:43:08'),(640,'Jerwin','2016-01-19 19:26:32','2016-01-19 19:26:32'),(641,'Jerwin','2016-01-19 19:28:35','2016-01-19 19:28:35'),(642,'Randy','2016-01-19 19:29:42','2016-01-19 19:29:48'),(643,'Jerwin','2016-01-19 19:30:06','2016-01-19 19:30:27'),(644,'Jerwin','2016-01-19 19:33:55','2016-01-19 19:35:21'),(645,'Jerwin','2016-01-19 19:40:10','2016-01-19 19:44:46'),(646,'Jerwin','2016-01-19 20:27:52','2016-01-19 20:29:40'),(647,'Jerwin','2016-01-19 20:30:58','2016-01-19 20:32:06'),(648,'Jerwin','2016-01-19 20:42:17','2016-01-19 20:44:03'),(649,'Jerwin','2016-01-19 20:51:29','2016-01-19 20:53:33'),(650,'Jerwin','2016-01-19 20:55:15','2016-01-19 20:55:15'),(651,'Jerwin','2016-01-19 21:15:36','2016-01-19 21:16:58'),(652,'Jerwin','2016-01-19 21:18:04','2016-01-19 21:21:42'),(653,'Jerwin','2016-01-19 21:22:28','2016-01-19 21:24:42'),(654,'Jerwin','2016-01-20 18:53:57','2016-01-20 18:54:06'),(655,'Jerwin','2016-01-20 18:54:14','2016-01-20 18:54:28'),(656,'Karen','2016-01-20 18:54:35','2016-01-20 18:54:41'),(657,'Randy','2016-01-20 18:54:48','2016-01-20 18:55:25'),(658,'Jerwin','2016-01-20 18:55:33','2016-01-20 18:55:52'),(659,'Randy','2016-01-20 18:55:58','2016-01-20 18:56:13'),(660,'Jerwin','2016-01-20 18:57:02','2016-01-20 18:57:06'),(661,'Randy','2016-01-20 18:57:15','2016-01-20 18:58:50'),(662,'Randy','2016-01-20 19:07:33','2016-01-20 19:10:48'),(663,'Randy','2016-01-20 19:19:02','2016-01-20 19:57:06'),(664,'Randy','2016-01-20 19:57:36','2016-01-20 20:02:31'),(665,'Randy','2016-01-20 20:25:58','2016-01-20 20:30:46'),(666,'Karen','2016-01-20 20:30:55','2016-01-20 20:31:08'),(667,'Randy','2016-01-20 20:32:51','2016-01-20 20:37:28'),(668,'Randy','2016-01-20 20:37:59','2016-01-20 20:39:11'),(669,'Randy','2016-01-20 20:43:50','2016-01-20 20:45:18'),(670,'Karen','2016-01-20 20:45:21','2016-01-20 20:46:11'),(671,'Jerwin','2016-01-20 20:52:34','2016-01-20 20:56:51'),(672,'Jerwin','2016-01-20 23:06:32','2016-01-20 23:07:01'),(673,'Randy','2016-01-20 23:07:38','2016-01-20 23:08:05'),(674,'Rabi','2016-01-20 23:16:02','2016-01-20 23:17:01'),(675,'Karen','2016-01-20 23:16:41','2016-01-20 23:17:08'),(676,'Randy','2016-01-20 23:20:33','2016-01-20 23:20:32'),(677,'Rabi','2016-01-20 23:21:03','2016-01-20 23:21:22'),(678,'Rabi','2016-01-20 23:27:31','2016-01-20 23:27:31'),(679,'Randy','2016-01-20 23:33:49','2016-01-20 23:34:16'),(680,'Karen','2016-01-20 23:43:52','2016-01-20 23:43:51'),(681,'Randy','2016-01-20 23:44:15','2016-01-20 23:44:42'),(682,'Karen','2016-01-20 23:46:04','2016-01-20 23:47:38'),(683,'Randy','2016-01-20 23:50:26','2016-01-20 23:50:25'),(684,'Karen','2016-01-20 23:52:54','2016-01-20 23:53:21'),(685,'Randy','2016-01-21 00:09:28','2016-01-21 00:09:27'),(686,'Karen','2016-01-21 01:24:58','2016-01-21 01:40:52'),(687,'Karen','2016-01-21 01:42:38','2016-01-21 02:06:21'),(688,'Jerwin','2016-01-24 00:38:19','2016-01-24 00:39:01'),(689,'Jerwin','2016-01-24 15:23:44','2016-01-24 15:26:48'),(690,'Jerwin','2016-01-24 15:30:26','2016-01-24 15:30:26'),(691,'Jerwin','2016-01-24 15:50:28','2016-01-24 15:52:41'),(692,'Jerwin','2016-01-24 15:55:49','2016-01-24 15:58:58'),(693,'Jerwin','2016-01-24 16:04:41','2016-01-24 16:04:57'),(694,'Jerwin','2016-01-24 16:09:15','2016-01-24 16:09:26'),(695,'Jerwin','2016-01-24 16:09:55','2016-01-24 16:10:42'),(696,'Jerwin','2016-01-24 16:12:25','2016-01-24 16:13:17'),(697,'Jerwin','2016-01-24 16:29:38','2016-01-24 16:29:38'),(698,'Jerwin','2016-01-24 16:37:35','2016-01-24 16:38:27'),(699,'Jerwin','2016-01-24 16:38:49','2016-01-24 16:40:21'),(700,'Jerwin','2016-01-24 16:45:07','2016-01-24 16:45:28'),(701,'Jerwin','2016-01-24 16:47:03','2016-01-24 16:47:50'),(702,'Jerwin','2016-01-24 16:48:25','2016-01-24 16:49:25'),(703,'Jerwin','2016-01-24 16:50:06','2016-01-24 16:51:01'),(704,'Jerwin','2016-01-24 16:51:37','2016-01-24 16:52:16'),(705,'Jerwin','2016-01-24 16:53:04','2016-01-24 16:53:35'),(706,'Jerwin','2016-01-24 17:00:09','2016-01-24 17:00:28'),(707,'Jerwin','2016-01-24 17:06:11','2016-01-24 17:06:16'),(708,'Jerwin','2016-01-24 17:09:26','2016-01-24 17:10:08'),(709,'Jerwin','2016-01-24 17:11:22','2016-01-24 17:12:18'),(710,'Jerwin','2016-01-24 17:13:17','2016-01-24 17:13:37'),(711,'Jerwin','2016-01-24 17:15:48','2016-01-24 17:16:46'),(712,'Jerwin','2016-01-24 17:18:10','2016-01-24 17:19:06'),(713,'Jerwin','2016-01-24 17:20:09','2016-01-24 17:21:46'),(714,'Jerwin','2016-01-24 17:22:53','2016-01-24 17:24:08'),(715,'Jerwin','2016-01-24 17:29:39','2016-01-24 17:29:56'),(716,'Randy','2016-01-24 17:30:00','2016-01-24 17:30:30'),(717,'Karen','2016-01-24 17:30:37','2016-01-24 17:31:35'),(718,'Jerwin','2016-01-24 17:33:42','2016-01-24 17:34:22'),(719,'Jerwin','2016-01-24 17:36:17','2016-01-24 17:37:23'),(720,'Jerwin','2016-01-24 18:01:52','2016-01-24 18:02:25'),(721,'Randy','2016-01-24 18:02:30','2016-01-24 18:02:57'),(722,'Karen','2016-01-24 18:05:04','2016-01-24 18:05:04'),(723,'Randy','2016-01-24 18:05:11','2016-01-24 18:08:46'),(724,'Karen','2016-01-24 18:10:27','2016-01-24 18:10:30'),(725,'Randy','2016-01-24 18:10:39','2016-01-24 18:11:05'),(726,'Randy','2016-01-24 18:11:44','2016-01-24 18:11:57'),(727,'Jerwin','2016-01-24 18:14:40','2016-01-24 18:14:46'),(728,'Randy','2016-01-24 18:14:51','2016-01-24 18:15:43'),(729,'Karen','2016-01-24 18:17:06','2016-01-24 18:17:11'),(730,'Randy','2016-01-24 18:17:24','2016-01-24 18:17:43'),(731,'Rabi','2016-01-24 18:29:37','2016-01-24 18:29:37'),(732,'Rabi','2016-01-24 18:32:04','2016-01-24 18:33:17'),(733,'Jerwin','2016-01-24 18:34:52','2016-01-24 18:35:05'),(734,'Jerwin','2016-01-24 18:35:52','2016-01-24 18:37:48'),(735,'Jerwin','2016-01-24 18:39:18','2016-01-24 18:39:33'),(736,'Jerwin','2016-01-24 18:40:04','2016-01-24 18:40:07'),(737,'Jerwin','2016-01-24 18:40:39','2016-01-24 18:41:17'),(738,'Jerwin','2016-01-24 18:59:16','2016-01-24 18:59:49'),(739,'Jerwin','2016-01-24 19:00:45','2016-01-24 19:01:08'),(740,'Jerwin','2016-01-24 19:03:01','2016-01-24 19:03:20'),(741,'Jerwin','2016-01-24 19:04:45','2016-01-24 19:06:39'),(742,'Jerwin','2016-01-24 19:25:37','2016-01-24 19:25:53'),(743,'Jerwin','2016-01-24 19:26:50','2016-01-24 19:26:59'),(744,'Jerwin','2016-01-24 19:27:34','2016-01-24 19:27:34'),(745,'Jerwin','2016-01-24 19:28:28','2016-01-24 19:31:51'),(746,'Jerwin','2016-01-24 19:32:25','2016-01-24 19:33:52'),(747,'Jerwin','2016-01-24 19:34:19','2016-01-24 19:34:58'),(748,'Jerwin','2016-01-24 19:35:57','2016-01-24 19:36:34'),(749,'Jerwin','2016-01-24 19:40:08','2016-01-24 19:40:16'),(750,'Jerwin','2016-01-24 19:45:51','2016-01-24 19:46:01'),(751,'Jerwin','2016-01-24 19:46:58','2016-01-24 19:47:23'),(752,'Jerwin','2016-01-24 21:05:08','2016-01-24 21:09:13'),(753,'Jerwin','2016-01-24 21:17:29','2016-01-24 21:25:23'),(754,'Randy','2016-01-24 21:47:13','2016-01-24 21:47:18'),(755,'Jerwin','2016-01-24 21:47:30','2016-01-24 21:47:34'),(756,'Jerwin','2016-01-26 11:39:38','2016-01-26 11:39:40'),(757,'Rabi','2016-01-26 11:39:49','2016-01-26 11:40:59'),(758,'Rabi','2016-01-26 11:43:35','2016-01-26 11:49:37'),(759,'Jerwin','2016-01-26 11:52:17','2016-01-26 11:52:20'),(760,'Rabi','2016-01-26 11:52:31','2016-01-26 11:53:07'),(761,'Jerwin','2016-01-26 11:53:50','2016-01-26 11:53:55'),(762,'Rabi','2016-01-26 11:54:03','2016-01-26 11:55:13'),(763,'Rabi','2016-01-26 11:59:56','2016-01-26 12:03:44'),(764,'Rabi','2016-01-26 12:12:02','2016-01-26 12:12:38'),(765,'Jerwin','2016-01-26 12:27:26','2016-01-26 12:27:36'),(766,'Rabi','2016-02-07 21:52:03','2016-02-07 21:52:28'),(767,'Rabi','2016-02-09 04:53:35','2016-02-09 04:53:35'),(768,'Rabi','2016-02-09 04:55:49','2016-02-09 04:55:49'),(769,'Rabi','2016-02-09 04:58:41','2016-02-09 05:00:12'),(770,'Rabi','2016-02-09 05:01:08','2016-02-09 05:04:18'),(771,'Rabi','2016-02-09 18:57:52','2016-02-09 18:58:00'),(772,'Rabi','2016-02-09 19:01:33','2016-02-09 19:01:39'),(773,'Rabi','2016-02-09 19:02:02','2016-02-09 19:02:09'),(774,'Rabi','2016-02-09 19:02:34','2016-02-09 19:02:52'),(775,'Jerwin','2016-02-09 19:03:27','2016-02-09 19:03:31'),(776,'Jerwin','2016-02-09 19:03:50','2016-02-09 19:04:00'),(777,'Jerwin','2016-02-09 19:04:46','2016-02-09 19:04:50'),(778,'Rabi','2016-02-09 19:05:36','2016-02-09 19:05:39'),(779,'Rabi','2016-02-09 19:06:01','2016-02-09 19:06:06'),(780,'Rabi','2016-02-09 19:06:48','2016-02-09 19:06:51'),(781,'Rabi','2016-02-09 19:07:57','2016-02-09 19:08:11'),(782,'Rabi','2016-02-09 19:08:38','2016-02-09 19:08:45'),(783,'Rabi','2016-02-09 19:09:11','2016-02-09 19:10:19'),(784,'Rabi','2016-02-09 19:10:37','2016-02-09 19:11:02'),(785,'Rabi','2016-02-09 19:14:42','2016-02-09 19:15:59'),(786,'Rabi','2016-02-09 19:18:16','2016-02-09 19:31:32'),(787,'Rabi','2016-02-09 19:48:14','2016-02-09 19:49:10'),(788,'Rabi','2016-02-09 20:00:04','2016-02-09 20:01:01'),(789,'Rabi','2016-02-09 20:01:40','2016-02-09 20:02:10'),(790,'Rabi','2016-02-09 20:04:50','2016-02-09 20:06:49'),(791,'Rabi','2016-02-09 20:13:36','2016-02-09 20:14:13'),(792,'Rabi','2016-02-09 20:20:53','2016-02-09 20:20:59'),(793,'Rabi','2016-02-09 20:21:14','2016-02-09 20:21:27'),(794,'Jerwin','2016-02-09 20:22:50','2016-02-09 20:22:52'),(795,'Rabi','2016-02-09 20:22:56','2016-02-09 20:23:04'),(796,'Rabi','2016-02-09 20:23:50','2016-02-09 20:24:14'),(797,'Jerwin','2016-02-10 09:08:29','2016-02-10 09:08:52'),(798,'Jerwin','2016-02-10 09:20:52','2016-02-10 09:20:52'),(799,'Jerwin','2016-02-10 09:22:53','2016-02-10 09:22:53'),(800,'Jerwin','2016-02-10 09:23:47','2016-02-10 09:28:56'),(801,'Jerwin','2016-02-10 09:32:46','2016-02-10 09:32:46'),(802,'Jerwin','2016-02-10 09:34:37','2016-02-10 09:37:53'),(803,'Jerwin','2016-02-10 09:41:05','2016-02-10 09:41:20'),(804,'Jerwin','2016-02-10 09:45:32','2016-02-10 09:45:32'),(805,'Randy','2016-02-10 09:46:00','2016-02-10 09:46:07'),(806,'Randy','2016-02-10 09:46:59','2016-02-10 09:46:59'),(807,'Rabi','2016-02-10 09:49:38','2016-02-10 09:50:21'),(808,'Rabi','2016-02-10 09:51:29','2016-02-10 09:51:35'),(809,'Rabi','2016-02-10 09:52:13','2016-02-10 09:52:16'),(810,'Jerwin','2016-02-10 09:59:25','2016-02-10 09:59:32'),(811,'Jerwin','2016-02-10 10:01:24','2016-02-10 10:01:51'),(812,'Rabi','2016-02-10 10:01:56','2016-02-10 10:02:12'),(813,'Jerwin','2016-02-10 10:15:45','2016-02-10 10:15:55'),(814,'Jerwin','2016-02-10 10:17:35','2016-02-10 10:19:09'),(815,'Jerwin','2016-02-10 10:22:44','2016-02-10 10:23:21'),(816,'Jerwin','2016-02-10 10:26:22','2016-02-10 10:26:42'),(817,'Jerwin','2016-02-10 10:29:46','2016-02-10 10:30:07'),(818,'Jerwin','2016-02-10 10:44:38','2016-02-10 10:44:38'),(819,'Jerwin','2016-02-10 10:47:28','2016-02-10 10:48:11'),(820,'Jerwin','2016-02-10 10:48:56','2016-02-10 10:51:36'),(821,'Rabi','2016-02-10 10:53:32','2016-02-10 10:54:24'),(822,'Rabi','2016-02-10 10:57:07','2016-02-10 10:57:07'),(823,'Jerwin','2016-02-10 11:02:32','2016-02-10 11:02:38'),(824,'Rabi','2016-02-10 11:03:03','2016-02-10 11:03:42'),(825,'Rabi','2016-02-10 11:04:49','2016-02-10 11:21:17'),(826,'Rabi','2016-02-10 11:37:48','2016-02-10 11:38:30'),(827,'Rabi','2016-02-10 11:41:55','2016-02-10 11:42:48'),(828,'Rabi','2016-02-10 11:45:29','2016-02-10 11:46:03'),(829,'Rabi','2016-02-10 11:46:54','2016-02-10 11:47:16'),(830,'Rabi','2016-02-10 11:47:43','2016-02-10 11:48:05'),(831,'Rabi','2016-02-10 11:50:36','2016-02-10 11:52:02'),(832,'Rabi','2016-02-10 11:53:09','2016-02-10 11:53:25'),(833,'Rabi','2016-02-10 11:53:57','2016-02-10 11:55:39'),(834,'Rabi','2016-02-10 11:58:44','2016-02-10 11:59:22'),(835,'Jerwin','2016-02-10 12:05:43','2016-02-10 12:06:45'),(836,'Rabi','2016-02-10 12:06:50','2016-02-10 12:14:00'),(837,'Jerwin','2016-02-10 12:14:06','2016-02-10 12:15:42'),(838,'Jerwin','2016-02-10 12:17:01','2016-02-10 12:18:03'),(839,'Rabi','2016-02-10 12:26:03','2016-02-10 12:26:18'),(840,'Rabi','2016-02-10 12:26:39','2016-02-10 12:27:53'),(841,'Rabi','2016-02-10 12:28:11','2016-02-10 12:29:20'),(842,'Rabi','2016-02-10 12:30:02','2016-02-10 12:31:30'),(843,'Rabi','2016-02-10 12:34:34','2016-02-10 12:34:41'),(844,'Rabi','2016-02-10 12:35:51','2016-02-10 12:35:59'),(845,'Rabi','2016-02-10 12:36:41','2016-02-10 12:36:47'),(846,'Rabi','2016-02-10 12:38:06','2016-02-10 12:38:26'),(847,'Rabi','2016-02-10 12:39:16','2016-02-10 12:39:40'),(848,'Rabi','2016-02-10 12:40:19','2016-02-10 12:43:59'),(849,'Rabi','2016-02-10 12:44:49','2016-02-10 12:46:50'),(850,'Rabi','2016-02-10 12:48:40','2016-02-10 12:49:14'),(851,'Rabi','2016-02-10 13:09:04','2016-02-10 13:09:09'),(852,'Karen','2016-02-10 13:09:13','2016-02-10 13:09:36'),(853,'Rabi','2016-02-10 13:09:40','2016-02-10 13:09:59'),(854,'Karen','2016-02-10 13:10:07','2016-02-10 13:10:18'),(855,'Rabi','2016-02-10 13:10:25','2016-02-10 13:10:37'),(856,'Karen','2016-02-10 13:10:40','2016-02-10 13:10:46'),(857,'Rabi','2016-02-10 13:18:43','2016-02-10 13:18:54'),(858,'Randy','2016-02-10 13:18:58','2016-02-10 13:19:03'),(859,'Rabi','2016-02-10 13:19:12','2016-02-10 13:19:23'),(860,'Rabi','2016-02-10 13:19:33','2016-02-10 13:19:46'),(861,'Randy','2016-02-10 13:19:50','2016-02-10 13:19:52'),(862,'Rabi','2016-02-10 13:38:56','2016-02-10 13:39:19'),(863,'Rabi','2016-02-10 13:43:35','2016-02-10 13:44:02'),(864,'Rabi','2016-02-10 13:52:58','2016-02-10 13:58:34'),(865,'Randy','2016-02-10 13:59:11','2016-02-10 13:59:15'),(866,'Rabi','2016-02-10 13:59:19','2016-02-10 13:59:44'),(867,'Rabi','2016-02-10 14:00:26','2016-02-10 14:00:43'),(868,'Rabi','2016-02-10 14:02:57','2016-02-10 14:07:32'),(869,'Randy','2016-02-10 14:09:01','2016-02-10 14:09:04'),(870,'Jerwin','2016-02-10 14:09:07','2016-02-10 14:09:25'),(871,'Jerwin','2016-02-10 14:12:00','2016-02-10 14:12:29'),(872,'Jerwin','2016-02-10 14:13:01','2016-02-10 14:14:32'),(873,'Jerwin','2016-02-10 14:16:29','2016-02-10 14:16:29'),(874,'Rabi','2016-02-10 14:17:05','2016-02-10 14:17:05'),(875,'Rabi','2016-02-10 14:18:39','2016-02-10 14:18:47'),(876,'Jerwin','2016-02-10 14:18:51','2016-02-10 14:19:54'),(877,'Jerwin','2016-02-10 14:21:56','2016-02-10 14:21:56'),(878,'Jerwin','2016-02-10 14:28:28','2016-02-10 14:28:33'),(879,'Jerwin','2016-02-10 14:28:37','2016-02-10 14:28:38'),(880,'Rabi','2016-02-10 14:28:42','2016-02-10 14:28:43'),(881,'Randy','2016-02-10 14:28:47','2016-02-10 14:28:49'),(882,'Jerwin','2016-02-10 14:31:57','2016-02-10 14:31:58'),(883,'Jerwin','2016-02-10 14:36:18','2016-02-10 14:37:11'),(884,'Jerwin','2016-02-10 14:38:30','2016-02-10 14:38:44'),(885,'Jerwin','2016-02-10 14:43:16','2016-02-10 14:43:47'),(886,'Jerwin','2016-02-10 14:49:11','2016-02-10 14:49:34'),(887,'Jerwin','2016-02-10 14:50:24','2016-02-10 14:50:24'),(888,'Jerwin','2016-02-10 14:56:19','2016-02-10 14:56:19'),(889,'Jerwin','2016-02-10 14:57:38','2016-02-10 14:59:03'),(890,'Jerwin','2016-02-10 14:59:56','2016-02-10 15:01:52'),(891,'Jerwin','2016-02-10 15:03:18','2016-02-10 15:05:07'),(892,'Jerwin','2016-02-10 15:06:56','2016-02-10 15:09:12'),(893,'Jerwin','2016-02-10 15:10:28','2016-02-10 15:13:06'),(894,'Jerwin','2016-02-10 15:13:26','2016-02-10 15:14:08'),(895,'Jerwin','2016-02-10 15:16:24','2016-02-10 15:17:02'),(896,'Jerwin','2016-02-10 15:20:17','2016-02-10 15:20:40'),(897,'Jerwin','2016-02-10 15:22:05','2016-02-10 15:22:14'),(898,'Rabi','2016-02-10 15:22:46','2016-02-10 15:25:53'),(899,'Rabi','2016-02-10 15:33:46','2016-02-10 15:34:45'),(900,'Rabi','2016-02-10 15:36:39','2016-02-10 15:37:28'),(901,'Jerwin','2016-02-10 15:38:16','2016-02-10 15:39:00'),(902,'Rabi','2016-02-10 15:40:56','2016-02-10 15:41:39'),(903,'Randy','2016-02-12 21:22:55','2016-02-12 21:23:19'),(904,'Rabi','2016-02-12 21:23:25','2016-02-12 21:24:15'),(905,'Rabi','2016-02-12 21:25:35','2016-02-12 21:25:58'),(906,'Rabi','2016-02-12 21:26:49','2016-02-12 21:27:18'),(907,'Rabi','2016-02-12 21:27:56','2016-02-12 21:27:56'),(908,'Rabi','2016-02-12 21:38:11','2016-02-12 21:40:19'),(909,'Rabi','2016-02-12 21:46:08','2016-02-12 21:46:37'),(910,'Rabi','2016-02-12 21:47:58','2016-02-12 21:48:25'),(911,'Rabi','2016-02-12 21:48:41','2016-02-12 21:50:39'),(912,'Karen','2016-02-12 21:50:58','2016-02-12 21:51:09'),(913,'Rabi','2016-02-12 21:51:17','2016-02-12 21:51:38'),(914,'Karen','2016-02-12 21:51:42','2016-02-12 21:51:42'),(915,'Rabi','2016-02-12 21:56:51','2016-02-12 21:57:05'),(916,'Jerwin','2016-02-12 21:57:14','2016-02-12 21:57:38'),(917,'Rabi','2016-02-12 21:59:15','2016-02-12 22:00:05'),(918,'Karen','2016-02-12 22:00:09','2016-02-12 22:00:46'),(919,'Rabi','2016-02-12 22:00:53','2016-02-12 22:01:36'),(920,'Karen','2016-02-12 22:01:40','2016-02-12 22:01:46'),(921,'Randy','2016-02-12 22:01:50','2016-02-12 22:02:23'),(922,'Karen','2016-02-12 22:02:27','2016-02-12 22:03:26'),(923,'Jerwin','2016-02-12 22:03:33','2016-02-12 22:03:51'),(924,'Rabi','2016-02-12 22:03:56','2016-02-12 22:03:56'),(925,'Rabi','2016-02-12 22:08:28','2016-02-12 22:09:36'),(926,'Jerwin','2016-02-12 22:10:12','2016-02-12 22:10:40'),(927,'Rabi','2016-02-12 22:10:46','2016-02-12 22:11:23'),(928,'Rabi','2016-02-12 22:12:46','2016-02-12 22:12:58'),(929,'Karen','2016-02-12 22:13:12','2016-02-12 22:13:37'),(930,'Rabi','2016-02-12 22:13:42','2016-02-12 22:13:53'),(931,'Randy','2016-02-12 22:13:57','2016-02-12 22:14:11'),(932,'Karen','2016-02-12 22:14:15','2016-02-12 22:15:10'),(933,'Rabi','2016-02-12 22:16:32','2016-02-12 22:17:38'),(934,'Rabi','2016-02-12 22:18:31','2016-02-12 22:19:04'),(935,'Randy','2016-02-14 10:48:45','2016-02-14 10:48:45'),(936,'Karen','2016-02-14 10:50:02','2016-02-14 10:50:30'),(937,'Rabi','2016-02-14 10:52:31','2016-02-14 10:52:35'),(938,'Randy','2016-02-14 11:06:43','2016-02-14 10:55:02'),(939,'Randy','2016-02-14 11:08:23','2016-02-14 11:04:12'),(940,'Rabi','2016-02-14 10:57:41','2016-02-14 10:57:41'),(941,'Rabi','2016-02-14 11:16:38','2016-02-14 11:06:38'),(942,'Randy','2016-02-14 11:26:01','2016-02-14 11:15:52'),(943,'Randy','2016-02-14 11:28:59','2016-02-14 11:31:53'),(944,'Rabi','2016-02-14 11:28:03','2016-02-14 11:28:02'),(945,'Randy','2016-02-14 11:43:59','2016-02-14 11:35:19'),(946,'Jerwin','2016-02-14 11:37:35','2016-02-14 11:37:35'),(947,'Jerwin','2016-02-14 11:40:22','2016-02-14 11:40:22'),(948,'Randy','2016-02-14 11:52:33','2016-02-14 11:41:01'),(949,'Randy','2016-02-14 11:56:45','2016-02-14 11:45:32'),(950,'Randy','2016-02-14 11:58:56','2016-02-14 11:47:13'),(951,'Jerwin','2016-02-14 11:47:51','2016-02-14 11:47:51'),(952,'Randy','2016-02-14 12:01:24','2016-02-14 11:49:46'),(953,'Randy','2016-02-14 12:02:27','2016-02-14 11:50:46'),(954,'Randy','2016-02-14 12:04:52','2016-02-14 11:52:52'),(955,'Randy','2016-02-14 12:06:27','2016-02-14 11:54:27'),(956,'Jerwin','2016-02-14 11:54:30','2016-02-14 11:54:30'),(957,'Randy','2016-02-14 12:08:44','2016-02-14 11:56:44'),(958,'Randy','2016-02-14 12:09:33','2016-02-14 11:57:32'),(959,'Randy','2016-02-14 12:11:00','2016-02-14 11:59:33'),(960,'Randy','2016-02-14 12:11:46','2016-02-14 12:00:43'),(961,'Randy','2016-02-14 12:13:25','2016-02-14 12:01:30'),(962,'Randy','2016-02-14 12:13:50','2016-02-14 12:01:50'),(963,'Randy','2016-02-14 12:16:06','2016-02-14 12:04:31'),(964,'Randy','2016-02-14 12:16:54','2016-02-14 12:07:52'),(965,'Jerwin','2016-02-14 12:08:56','2016-02-14 12:08:56'),(966,'Jerwin','2016-02-14 12:10:17','2016-02-14 12:10:17'),(967,'Jerwin','2016-02-14 12:11:01','2016-02-14 12:11:01'),(968,'Randy','2016-02-14 12:25:02','2016-02-14 12:15:17'),(969,'Jerwin','2016-02-14 12:14:09','2016-02-14 12:14:09'),(970,'Randy','2016-02-14 12:28:55','2016-02-14 12:17:23'),(971,'Jerwin','2016-02-14 12:17:09','2016-02-14 12:17:09'),(972,'Randy','2016-02-14 12:30:31','2016-02-14 12:18:50'),(973,'Rabi','2016-02-14 12:34:36','2016-02-14 12:34:11'),(974,'Jerwin','2016-02-14 12:23:25','2016-02-14 12:23:25'),(975,'Rabi','2016-02-14 12:46:55','2016-02-14 12:34:55'),(976,'Rabi','2016-02-14 12:50:55','2016-02-14 12:41:57'),(977,'Jerwin','2016-02-14 12:39:00','2016-02-14 12:39:00'),(978,'Rabi','2016-02-14 12:39:57','2016-02-14 12:39:57'),(979,'Rabi','2016-02-14 12:41:36','2016-02-14 12:41:36'),(980,'Rabi','2016-02-14 12:54:28','2016-02-14 12:45:19'),(981,'Rabi','2016-02-14 12:43:06','2016-02-14 12:43:06'),(982,'Rabi','2016-02-14 13:01:28','2016-02-14 13:03:25'),(983,'Jerwin','2016-02-14 12:53:39','2016-02-14 12:53:39'),(984,'Rabi','2016-02-14 13:03:36','2016-02-14 13:04:37'),(985,'Rabi','2016-02-14 13:09:01','2016-02-14 13:09:01'),(986,'Karen','2016-02-14 13:21:27','2016-02-14 13:12:17'),(987,'Rabi','2016-02-14 13:11:10','2016-02-14 13:11:10'),(988,'Rabi','2016-02-14 13:12:13','2016-02-14 13:12:13'),(989,'Randy','2016-02-14 13:24:26','2016-02-14 13:16:22'),(990,'Rabi','2016-02-14 13:13:01','2016-02-14 13:13:01'),(991,'Rabi','2016-02-14 13:14:15','2016-02-14 13:14:15'),(992,'Rabi','2016-02-14 13:15:06','2016-02-14 13:15:06'),(993,'Jerwin','2016-02-14 13:28:33','2016-02-14 13:16:33'),(994,'Rabi','2016-02-14 13:17:14','2016-02-14 13:17:14'),(995,'Jerwin','2016-02-14 13:28:49','2016-02-14 13:28:55'),(996,'Jerwin','2016-02-14 13:30:15','2016-02-14 13:30:19'),(997,'Jerwin','2016-02-14 13:30:41','2016-02-14 13:31:48'),(998,'Jerwin','2016-02-14 13:32:25','2016-02-14 13:32:31'),(999,'Jerwin','2016-02-14 13:32:53','2016-02-14 13:32:57'),(1000,'Jerwin','2016-02-14 13:33:45','2016-02-14 13:36:14'),(1001,'Rabi','2016-02-14 13:56:34','2016-02-14 13:58:33'),(1002,'Jerwin','2016-02-14 13:49:45','2016-02-14 13:49:45'),(1003,'Jerwin','2016-02-14 13:50:19','2016-02-14 13:50:19'),(1004,'Jerwin','2016-02-14 13:54:10','2016-02-14 13:54:10'),(1005,'Jerwin','2016-02-14 13:56:21','2016-02-14 13:56:21'),(1006,'Karen','2016-02-14 14:10:53','2016-02-14 14:00:33'),(1007,'Rabi','2016-02-14 13:59:28','2016-02-14 13:59:28'),(1008,'Rabi','2016-02-14 14:00:34','2016-02-14 14:00:34'),(1009,'Rabi','2016-02-14 14:01:25','2016-02-14 14:01:53'),(1010,'Rabi','2016-02-14 14:15:17','2016-02-14 14:12:55'),(1011,'Jerwin','2016-02-14 14:03:35','2016-02-14 14:03:35'),(1012,'Rabi','2016-02-14 14:04:17','2016-02-14 14:04:17'),(1013,'Karen','2016-02-14 14:06:06','2016-02-14 14:06:08'),(1014,'Rabi','2016-02-14 14:12:49','2016-02-14 14:12:52'),(1015,'Rabi','2016-02-14 14:17:11','2016-02-14 14:17:11'),(1016,'Jerwin','2016-02-14 14:29:41','2016-02-14 14:17:40'),(1017,'Randy','2016-02-14 14:17:50','2016-02-14 14:17:52'),(1018,'Karen','2016-02-14 14:19:33','2016-02-14 14:20:01'),(1019,'Karen','2016-02-14 14:35:54','2016-02-14 14:36:22'),(1020,'Randy','2016-02-14 14:36:42','2016-02-14 15:47:29'),(1021,'Rabi','2016-02-14 16:03:19','2016-02-14 15:59:05'),(1022,'Karen','2016-02-14 15:53:03','2016-02-14 15:53:32'),(1023,'Rabi','2016-02-14 15:55:23','2016-02-14 15:55:26'),(1024,'Rabi','2016-02-14 15:55:53','2016-02-14 15:56:22'),(1025,'Rabi','2016-02-14 15:56:48','2016-02-14 15:56:48'),(1026,'Jerwin','2016-02-14 15:56:59','2016-02-14 15:57:28'),(1027,'Rabi','2016-02-14 15:58:50','2016-02-14 15:58:52'),(1028,'Randy','2016-02-14 15:59:06','2016-02-14 15:59:09'),(1029,'Karen','2016-02-14 15:59:55','2016-02-14 15:59:55'),(1030,'Rabi','2016-02-14 16:07:11','2016-02-14 16:07:14'),(1031,'Karen','2016-02-14 16:08:21','2016-02-14 16:17:29'),(1032,'Karen','2016-02-14 16:17:34','2016-02-14 16:17:54'),(1033,'Karen','2016-02-14 16:18:01','2016-02-14 16:18:06'),(1034,'Rabi','2016-02-14 16:22:15','2016-02-14 16:24:08'),(1035,'Karen','2016-02-14 16:24:15','2016-02-14 16:25:09'),(1036,'Rabi','2016-02-14 16:25:15','2016-02-14 16:33:16'),(1037,'Rabi','2016-02-14 16:51:41','2016-02-14 16:49:13'),(1038,'Rabi','2016-02-14 16:42:15','2016-02-14 16:42:15'),(1039,'Rabi','2016-02-14 16:44:31','2016-02-14 16:44:31'),(1040,'Randy','2016-02-14 16:46:08','2016-02-14 16:46:08'),(1041,'Rabi','2016-02-14 16:46:19','2016-02-14 16:46:19'),(1042,'Rabi','2016-02-14 16:47:51','2016-02-14 16:47:51'),(1043,'Rabi','2016-02-14 16:49:05','2016-02-14 16:49:05'),(1044,'Rabi','2016-02-14 16:53:00','2016-02-14 16:53:20'),(1045,'Rabi','2016-02-14 16:53:24','2016-02-14 16:59:27'),(1046,'Rabi','2016-02-14 16:59:39','2016-02-14 18:05:18'),(1047,'Rabi','2016-02-21 13:39:17','2016-02-21 13:41:26'),(1048,'Jerwin','2016-02-21 13:46:07','2016-02-21 13:48:24'),(1049,'Rabi','2016-02-21 13:48:28','2016-02-21 13:51:19'),(1050,'Rabi','2016-02-21 13:54:02','2016-02-21 13:54:19'),(1051,'Jerwin','2016-02-21 13:54:26','2016-02-21 13:54:55'),(1052,'Jerwin','2016-02-21 13:56:06','2016-02-21 13:56:12'),(1053,'Randy','2016-02-21 13:56:17','2016-02-21 13:57:41'),(1054,'Jerwin','2016-02-21 13:57:47','2016-02-21 13:58:01'),(1055,'Jerwin','2016-02-21 14:01:18','2016-02-21 14:01:24'),(1056,'Jerwin','2016-02-21 14:01:28','2016-02-21 14:01:47'),(1057,'Jerwin','2016-02-21 14:03:22','2016-02-21 14:03:23'),(1058,'Jerwin','2016-02-21 14:03:31','2016-02-21 14:03:41'),(1059,'Randy','2016-02-21 15:50:16','2016-02-21 15:50:26'),(1060,'Rabi','2016-02-21 15:56:34','2016-02-21 15:56:55'),(1061,'Rabi','2016-02-21 15:59:57','2016-02-21 16:02:05'),(1062,'Rabi','2016-02-21 16:05:46','2016-02-21 16:07:04'),(1063,'Rabi','2016-02-21 16:23:27','2016-02-21 16:25:04'),(1064,'Rabi','2016-02-21 16:25:27','2016-02-21 16:27:08'),(1065,'Randy','2016-02-21 16:27:46','2016-02-21 16:28:17'),(1066,'Rabi','2016-02-21 16:26:55','2016-02-21 16:27:47'),(1067,'Jerwin','2016-02-21 16:28:45','2016-02-21 16:28:45'),(1068,'Rabi','2016-02-21 16:30:20','2016-02-21 16:32:04'),(1069,'Jerwin','2016-02-21 16:32:09','2016-02-21 16:34:00'),(1070,'Rabi','2016-02-21 16:31:18','2016-02-21 16:32:10'),(1071,'Rabi','2016-02-21 16:34:28','2016-02-21 16:35:18'),(1072,'Karen','2016-02-21 16:35:02','2016-02-21 16:35:30'),(1073,'Randy','2016-02-21 16:35:13','2016-02-21 16:35:41'),(1074,'Jerwin','2016-02-21 16:48:01','2016-02-21 16:50:24'),(1075,'Karen','2016-02-21 16:50:49','2016-02-21 16:51:00'),(1076,'Randy','2016-02-21 16:51:21','2016-02-21 16:52:11'),(1077,'Jerwin','2016-02-21 16:52:43','2016-02-21 16:54:00'),(1078,'Rabi','2016-02-21 16:54:08','2016-02-21 16:54:06'),(1079,'Randy','2016-02-21 16:53:21','2016-02-21 16:54:13'),(1080,'Karen','2016-02-21 16:54:18','2016-02-21 16:57:20'),(1081,'Randy','2016-02-21 16:56:44','2016-02-21 16:57:36'),(1082,'Karen','2016-02-21 16:57:48','2016-02-21 16:57:46'),(1083,'Randy','2016-02-21 16:59:05','2016-02-21 16:58:58'),(1084,'Jerwin','2016-02-21 17:06:33','2016-02-21 17:09:50'),(1085,'Rabi','2016-02-21 17:10:01','2016-02-21 17:12:01'),(1086,'Jerwin','2016-02-21 17:12:12','2016-02-21 17:14:00'),(1087,'Jerwin','2016-02-21 17:14:34','2016-02-21 17:15:46'),(1088,'Rabi','2016-02-21 17:15:55','2016-02-21 17:15:54'),(1089,'Randy','2016-02-21 17:17:25','2016-02-21 17:17:19'),(1090,'Rabi','2016-02-21 17:18:08','2016-02-21 17:19:29'),(1091,'Karen','2016-02-21 17:19:59','2016-02-21 17:19:58'),(1092,'Randy','2016-02-21 17:20:30','2016-02-21 17:20:23'),(1093,'Rabi','2016-02-21 17:19:49','2016-02-21 17:20:41'),(1094,'Jerwin','2016-02-21 17:20:40','2016-02-21 17:21:32'),(1095,'Jerwin','2016-02-21 17:22:42','2016-02-21 17:22:46'),(1096,'Karen','2016-02-21 17:22:09','2016-02-21 17:23:01'),(1097,'Randy','2016-02-21 17:24:43','2016-02-21 17:24:36'),(1098,'Jerwin','2016-02-21 17:30:14','2016-02-21 17:30:13'),(1099,'Randy','2016-02-21 17:30:51','2016-02-21 17:30:51'),(1100,'Rabi','2016-02-21 17:31:25','2016-02-21 17:31:19'),(1101,'Randy','2016-02-21 17:32:31','2016-02-21 17:32:31'),(1102,'Randy','2016-02-21 17:35:53','2016-02-21 17:41:55'),(1103,'Karen','2016-02-21 17:42:03','2016-02-21 17:42:22'),(1104,'Rabi','2016-02-21 17:42:48','2016-02-21 17:43:40'),(1105,'Jerwin','2016-02-21 17:44:21','2016-02-21 17:44:20'),(1106,'Randy','2016-02-21 17:44:46','2016-02-21 17:49:43'),(1107,'Karen','2016-02-21 17:49:56','2016-02-21 17:49:51'),(1108,'Randy','2016-02-21 18:02:36','2016-02-21 18:03:20'),(1109,'Rabi','2016-02-21 18:05:26','2016-02-21 18:05:32'),(1110,'Rabi','2016-02-21 18:05:46','2016-02-21 18:05:40'),(1111,'Karen','2016-02-21 18:08:47','2016-02-21 18:11:20'),(1112,'Jerwin','2016-02-21 18:12:14','2016-02-21 18:15:48'),(1113,'Randy','2016-02-21 18:16:10','2016-02-21 18:16:47'),(1114,'Karen','2016-02-21 18:30:00','2016-02-21 18:29:55'),(1115,'Rabi','2016-02-21 22:46:15','2016-02-21 22:49:03'),(1116,'Randy','2016-02-22 12:55:05','2016-02-22 12:55:12'),(1117,'Jerwin','2016-02-22 12:55:18','2016-02-22 12:55:30'),(1118,'Randy','2016-02-22 12:55:33','2016-02-22 12:56:21'),(1119,'Randy','2016-02-22 12:56:24','2016-02-22 12:56:42'),(1120,'Jerwin','2016-02-22 12:56:52','2016-02-22 12:58:12'),(1121,'Randy','2016-02-22 12:58:16','2016-02-22 12:58:58'),(1122,'Randy','2016-02-22 12:59:45','2016-02-22 13:00:26'),(1123,'Randy','2016-02-22 13:00:44','2016-02-22 13:01:16'),(1124,'Randy','2016-02-22 13:05:57','2016-02-22 13:06:07'),(1125,'Jerwin','2016-02-22 13:06:12','2016-02-22 13:06:21'),(1126,'Randy','2016-02-22 13:06:26','2016-02-22 13:06:48'),(1127,'Randy','2016-02-22 13:27:00','2016-02-22 13:30:20'),(1128,'Randy','2016-02-22 13:31:17','2016-02-22 13:31:17'),(1129,'Randy','2016-02-22 13:33:50','2016-02-22 13:33:50'),(1130,'Randy','2016-02-22 13:35:45','2016-02-22 13:35:45'),(1131,'Randy','2016-02-22 13:44:42','2016-02-22 13:44:51'),(1132,'Jerwin','2016-02-22 13:45:05','2016-02-22 13:45:05'),(1133,'Jerwin','2016-02-22 13:48:27','2016-02-22 13:48:33'),(1134,'Jerwin','2016-02-22 13:48:43','2016-02-22 13:49:03'),(1135,'Rabi','2016-02-22 13:49:08','2016-02-22 13:51:26'),(1136,'Jerwin','2016-02-22 14:00:46','2016-02-22 14:01:31'),(1137,'Jerwin','2016-02-22 14:01:55','2016-02-22 14:03:05'),(1138,'Jerwin','2016-02-22 14:04:47','2016-02-22 14:05:00'),(1139,'Jerwin','2016-02-22 14:12:45','2016-02-22 14:13:31'),(1140,'Randy','2016-02-22 14:13:39','2016-02-22 14:13:50'),(1141,'Jerwin','2016-02-22 14:13:57','2016-02-22 14:14:04'),(1142,'Randy','2016-02-22 14:14:10','2016-02-22 14:15:00'),(1143,'Jerwin','2016-02-22 14:15:05','2016-02-22 14:15:16'),(1144,'Randy','2016-02-22 14:15:21','2016-02-22 14:16:03'),(1145,'Randy','2016-02-22 14:16:36','2016-02-22 14:20:35'),(1146,'Randy','2016-02-22 14:21:24','2016-02-22 14:22:46'),(1147,'Randy','2016-02-22 14:25:01','2016-02-22 14:26:13'),(1148,'Jerwin','2016-02-22 14:28:57','2016-02-22 14:29:16'),(1149,'Karen','2016-02-22 14:29:55','2016-02-22 14:30:57'),(1150,'Jerwin','2016-02-22 14:31:02','2016-02-22 14:31:18'),(1151,'Jerwin','2016-02-22 14:32:09','2016-02-22 14:34:10'),(1152,'Jerwin','2016-02-22 14:36:10','2016-02-22 14:36:23'),(1153,'Jerwin','2016-02-22 14:38:47','2016-02-22 14:38:53'),(1154,'Jerwin','2016-02-22 14:39:46','2016-02-22 14:39:52'),(1155,'Jerwin','2016-02-22 14:41:31','2016-02-22 14:41:39'),(1156,'Jerwin','2016-02-22 14:42:28','2016-02-22 14:42:28'),(1157,'Jerwin','2016-02-22 14:46:35','2016-02-22 15:39:37'),(1158,'Jerwin','2016-02-22 15:44:03','2016-02-22 15:44:10'),(1159,'Randy','2016-02-22 15:44:28','2016-02-22 15:44:29'),(1160,'Jerwin','2016-02-22 15:44:34','2016-02-22 15:44:39'),(1161,'Jerwin','2016-02-22 15:46:49','2016-02-22 15:46:59'),(1162,'Randy','2016-02-22 15:47:34','2016-02-22 15:47:36'),(1163,'Jerwin','2016-02-22 15:47:48','2016-02-22 15:48:00'),(1164,'Jerwin','2016-02-22 15:49:48','2016-02-22 15:50:05'),(1165,'Jerwin','2016-02-22 16:02:18','2016-02-22 16:02:24'),(1166,'Jerwin','2016-02-22 16:03:21','2016-02-22 16:03:27'),(1167,'Jerwin','2016-02-22 16:04:01','2016-02-22 16:04:10'),(1168,'Jerwin','2016-02-22 16:04:18','2016-02-22 16:04:26'),(1169,'Jerwin','2016-02-22 16:05:30','2016-02-22 16:06:25'),(1170,'Karen','2016-02-22 16:07:13','2016-02-22 16:08:28'),(1171,'Rabi','2016-02-22 16:15:10','2016-02-22 16:15:57'),(1172,'Rabi','2016-02-22 16:26:04','2016-02-22 16:26:22'),(1173,'Rabi','2016-02-22 16:32:58','2016-02-22 16:33:18'),(1174,'Randy','2016-02-23 15:01:48','2016-02-23 15:01:53'),(1175,'Randy','2016-02-23 20:12:53','2016-02-22 09:46:10'),(1176,'Randy','2016-02-22 06:44:36','2016-02-22 06:44:36'),(1177,'Randy','2016-02-22 08:08:21','2016-02-22 08:08:21'),(1178,'Randy','2016-02-22 08:13:29','2016-02-22 08:13:29'),(1179,'Randy','2016-02-22 08:15:32','2016-02-22 08:15:32'),(1180,'Randy','2016-02-22 08:33:34','2016-02-22 08:33:34'),(1181,'Randy','2016-02-22 08:39:04','2016-02-22 08:39:04'),(1182,'Randy','2016-02-22 08:39:57','2016-02-22 08:39:57'),(1183,'Randy','2016-02-22 08:42:19','2016-02-22 08:42:19'),(1184,'Randy','2016-02-22 08:46:40','2016-02-22 08:46:40'),(1185,'Randy','2016-02-22 08:49:13','2016-02-22 08:49:13'),(1186,'Randy','2016-02-22 08:50:32','2016-02-22 08:50:32'),(1187,'Randy','2016-02-22 08:55:42','2016-02-22 08:55:42'),(1188,'Randy','2016-02-22 08:57:10','2016-02-22 08:57:10'),(1189,'Randy','2016-02-22 08:59:57','2016-02-22 08:59:57'),(1190,'Randy','2016-02-22 09:02:50','2016-02-22 09:02:50'),(1191,'Randy','2016-02-22 09:04:08','2016-02-22 09:04:08'),(1192,'Randy','2016-02-22 09:10:35','2016-02-22 09:10:35'),(1193,'Randy','2016-02-22 09:40:23','2016-02-22 09:40:23'),(1194,'Karen','2016-02-22 09:44:15','2016-02-22 09:44:15'),(1195,'Randy','2016-02-22 09:45:38','2016-02-22 09:45:38'),(1196,'Randy','2016-02-22 09:46:07','2016-02-22 09:46:07'),(1197,'Karen','2016-02-25 11:53:27','2016-02-25 11:55:11'),(1198,'Randy','2016-02-25 11:55:15','2016-02-25 11:56:49'),(1199,'Karen','2016-02-25 11:56:56','2016-02-25 11:57:28'),(1200,'Randy','2016-02-25 11:59:13','2016-02-25 12:01:02'),(1201,'Karen','2016-02-25 12:01:07','2016-02-25 12:07:27'),(1202,'Randy','2016-02-25 12:47:37','2016-02-25 12:48:40'),(1203,'Karen','2016-02-25 12:48:45','2016-02-25 12:48:47'),(1204,'Randy','2016-02-25 12:48:51','2016-02-25 12:49:13'),(1205,'Karen','2016-02-25 12:49:17','2016-02-25 12:49:40'),(1206,'Randy','2016-02-25 12:50:32','2016-02-25 12:50:51'),(1207,'Karen','2016-02-25 12:50:55','2016-02-25 12:52:23'),(1208,'Karen','2016-02-25 12:54:38','2016-02-25 12:55:10'),(1209,'Randy','2016-02-25 12:56:25','2016-02-25 12:56:29'),(1210,'Karen','2016-02-25 12:56:33','2016-02-25 12:56:48'),(1211,'Randy','2016-02-25 12:59:01','2016-02-25 12:59:03'),(1212,'Karen','2016-02-25 12:59:07','2016-02-25 12:59:34'),(1213,'Randy','2016-02-25 13:01:21','2016-02-25 13:01:25'),(1214,'Karen','2016-02-25 13:01:28','2016-02-25 13:01:36'),(1215,'Randy','2016-02-25 13:03:56','2016-02-25 13:03:58'),(1216,'Karen','2016-02-25 13:04:01','2016-02-25 13:04:45'),(1217,'Karen','2016-02-25 13:05:12','2016-02-25 13:05:21'),(1218,'Karen','2016-02-25 13:07:14','2016-02-25 13:07:29'),(1219,'Karen','2016-02-25 13:08:31','2016-02-25 13:09:03'),(1220,'Randy','2016-02-25 13:15:20','2016-02-25 13:15:43'),(1221,'Karen','2016-02-25 13:15:48','2016-02-25 13:16:23'),(1222,'Karen','2016-02-25 13:21:15','2016-02-25 13:22:32'),(1223,'Karen','2016-02-25 13:23:34','2016-02-25 13:23:51'),(1224,'Randy','2016-02-25 14:42:12','2016-02-25 14:43:24'),(1225,'Randy','2016-02-25 14:44:22','2016-02-25 14:46:33'),(1226,'Randy','2016-02-25 14:47:06','2016-02-25 14:47:16'),(1227,'Karen','2016-02-25 15:04:38','2016-02-25 15:04:54'),(1228,'Randy','2016-02-25 15:04:57','2016-02-25 15:05:13'),(1229,'Karen','2016-02-25 15:05:23','2016-02-25 15:07:00'),(1230,'Randy','2016-02-25 15:07:03','2016-02-25 15:07:32'),(1231,'Karen','2016-02-25 15:07:35','2016-02-25 15:07:38'),(1232,'Randy','2016-02-25 15:07:40','2016-02-25 15:08:06'),(1233,'Karen','2016-02-25 15:10:59','2016-02-25 15:10:59'),(1234,'Randy','2016-02-25 15:14:20','2016-02-25 15:14:43'),(1235,'Karen','2016-02-25 15:16:59','2016-02-25 15:19:03'),(1236,'Karen','2016-02-25 15:19:07','2016-02-25 15:19:38'),(1237,'Randy','2016-02-25 15:19:41','2016-02-25 15:19:59'),(1238,'Karen','2016-02-25 15:20:03','2016-02-25 15:23:40'),(1239,'Karen','2016-02-25 15:24:53','2016-02-25 15:24:59'),(1240,'Randy','2016-02-25 15:25:02','2016-02-25 15:25:28'),(1241,'Karen','2016-02-25 15:25:32','2016-02-25 15:25:32'),(1242,'Randy','2016-02-25 15:27:22','2016-02-25 15:27:45'),(1243,'Karen','2016-02-25 15:28:15','2016-02-25 15:29:36'),(1244,'Randy','2016-02-25 15:33:19','2016-02-25 15:33:42'),(1245,'Karen','2016-02-25 15:33:46','2016-02-25 15:35:01'),(1246,'Randy','2016-02-25 15:37:28','2016-02-25 15:38:11'),(1247,'Karen','2016-02-25 15:38:16','2016-02-25 15:45:22'),(1248,'Randy','2016-02-25 15:46:33','2016-02-25 15:48:07'),(1249,'Randy','2016-02-25 16:00:24','2016-02-25 16:03:40'),(1250,'Randy','2016-02-25 16:10:56','2016-02-25 16:13:03'),(1251,'Randy','2016-02-25 16:14:04','2016-02-25 16:15:27'),(1252,'Randy','2016-02-25 16:17:52','2016-02-25 16:18:44'),(1253,'Karen','2016-02-25 16:20:28','2016-02-25 16:21:08'),(1254,'Randy','2016-02-25 16:23:32','2016-02-25 16:23:49'),(1255,'Karen','2016-02-25 16:23:53','2016-02-25 16:24:26'),(1256,'Randy','2016-02-25 16:25:43','2016-02-25 16:25:50'),(1257,'Karen','2016-02-25 16:25:54','2016-02-25 16:26:55'),(1258,'Randy','2016-02-25 16:28:17','2016-02-25 16:28:37'),(1259,'Karen','2016-02-25 16:28:47','2016-02-25 16:29:21'),(1260,'Randy','2016-02-25 16:32:50','2016-02-25 16:33:26'),(1261,'Karen','2016-02-25 16:33:32','2016-02-25 16:34:20'),(1262,'Randy','2016-02-25 16:36:46','2016-02-25 16:37:22'),(1263,'Karen','2016-02-25 16:37:27','2016-02-25 16:37:53'),(1264,'Randy','2016-02-25 16:39:23','2016-02-25 16:40:15'),(1265,'Randy','2016-02-25 16:40:21','2016-02-25 16:41:09'),(1266,'Randy','2016-02-25 16:52:48','2016-02-25 16:52:58'),(1267,'Karen','2016-02-25 16:53:04','2016-02-25 16:53:48'),(1268,'Rabi','2016-02-25 16:54:19','2016-02-25 16:54:56'),(1269,'Rabi','2016-02-25 16:55:27','2016-02-25 16:55:29'),(1270,'Karen','2016-02-25 16:55:40','2016-02-25 16:56:17'),(1271,'Karen','2016-02-25 16:56:41','2016-02-25 16:56:57'),(1272,'Karen','2016-02-25 16:57:51','2016-02-25 16:57:55'),(1273,'Karen','2016-02-25 16:58:19','2016-02-25 16:58:53'),(1274,'Karen','2016-02-25 17:35:59','2016-02-25 17:36:26'),(1275,'Karen','2016-02-25 17:37:13','2016-02-25 17:37:21'),(1276,'Karen','2016-02-25 17:38:59','2016-02-25 17:39:04'),(1277,'Karen','2016-02-25 17:41:42','2016-02-25 17:41:50'),(1278,'Karen','2016-02-25 17:42:34','2016-02-25 17:42:34'),(1279,'Karen','2016-02-25 17:43:59','2016-02-25 17:47:09'),(1280,'Karen','2016-02-25 17:58:21','2016-02-25 17:58:38'),(1281,'Karen','2016-02-25 18:02:01','2016-02-25 18:02:27'),(1282,'Karen','2016-02-25 18:16:59','2016-02-25 18:17:30'),(1283,'Karen','2016-02-25 18:21:00','2016-02-25 18:22:24'),(1284,'Karen','2016-02-25 18:23:18','2016-02-25 18:23:46'),(1285,'Karen','2016-02-25 18:24:49','2016-02-25 18:26:13'),(1286,'Karen','2016-02-25 18:29:02','2016-02-25 18:30:47'),(1287,'Karen','2016-02-25 18:38:30','2016-02-25 18:39:06'),(1288,'Karen','2016-02-25 18:41:01','2016-02-25 18:41:28'),(1289,'Karen','2016-02-25 18:42:40','2016-02-25 18:42:56'),(1290,'Karen','2016-02-25 18:44:40','2016-02-25 18:46:23'),(1291,'Karen','2016-02-25 18:46:56','2016-02-25 18:47:51'),(1292,'Karen','2016-02-25 18:50:04','2016-02-25 18:50:21'),(1293,'Karen','2016-02-25 18:51:30','2016-02-25 18:52:03'),(1294,'Rabi','2016-02-25 18:52:21','2016-02-25 18:52:29'),(1295,'Randy','2016-02-25 18:52:42','2016-02-25 18:52:56'),(1296,'Randy','2016-02-25 18:54:27','2016-02-25 18:54:53'),(1297,'Karen','2016-02-25 18:54:59','2016-02-25 18:55:31'),(1298,'Rabi','2016-02-25 19:32:04','2016-02-25 19:33:56'),(1299,'Rabi','2016-02-25 20:18:51','2016-02-25 20:19:21'),(1300,'Rabi','2016-02-25 20:20:48','2016-02-25 20:46:45'),(1301,'Rabi','2016-02-25 20:49:40','2016-02-25 20:51:04'),(1302,'Rabi','2016-02-25 20:54:02','2016-02-25 20:54:18'),(1303,'Rabi','2016-02-25 20:54:59','2016-02-25 20:55:08'),(1304,'Rabi','2016-02-25 21:31:10','2016-02-25 21:33:23'),(1305,'Rabi','2016-02-25 22:00:24','2016-02-25 22:01:28'),(1306,'Rabi','2016-02-25 22:04:33','2016-02-25 22:04:44'),(1307,'Rabi','2016-02-25 22:11:29','2016-02-25 22:13:52'),(1308,'Rabi','2016-02-25 22:15:32','2016-02-25 22:16:14'),(1309,'Rabi','2016-02-25 22:17:09','2016-02-25 22:18:07'),(1310,'Rabi','2016-02-25 22:18:46','2016-02-25 22:19:49'),(1311,'Rabi','2016-02-25 22:22:48','2016-02-25 22:23:42'),(1312,'Rabi','2016-02-25 22:26:05','2016-02-25 22:26:21'),(1313,'Rabi','2016-02-25 22:27:47','2016-02-25 22:28:11'),(1314,'Rabi','2016-02-25 22:29:35','2016-02-25 22:30:24'),(1315,'Rabi','2016-02-25 22:38:15','2016-02-25 22:38:33'),(1316,'Rabi','2016-02-25 22:40:32','2016-02-25 22:40:52'),(1317,'Rabi','2016-02-25 22:49:49','2016-02-25 22:50:02'),(1318,'Randy','2016-02-25 22:58:34','2016-02-25 22:58:48'),(1319,'Rabi','2016-02-25 22:58:52','2016-02-25 23:13:42'),(1320,'Randy','2016-02-29 02:02:42','2016-02-29 02:25:58'),(1321,'Randy','2016-02-29 04:00:54','2016-02-29 04:23:33'),(1322,'Jerwin','2016-02-29 04:48:04','2016-02-29 04:48:32'),(1323,'Rabi','2016-02-29 04:48:37','2016-02-29 04:52:04'),(1324,'Rabi','2016-02-29 04:55:19','2016-02-29 04:55:56'),(1325,'Rabi','2016-02-29 04:57:54','2016-02-29 04:58:10'),(1326,'Rabi','2016-02-29 05:01:16','2016-02-29 05:01:34'),(1327,'Rabi','2016-02-29 05:02:25','2016-02-29 05:02:36'),(1328,'Rabi','2016-02-29 05:04:54','2016-02-29 05:05:12'),(1329,'Rabi','2016-02-29 05:20:10','2016-02-29 05:21:25'),(1330,'Rabi','2016-02-29 05:22:36','2016-02-29 05:22:53'),(1331,'Rabi','2016-02-29 05:27:16','2016-02-29 05:27:44'),(1332,'Karen','2016-02-29 05:28:41','2016-02-29 05:28:47'),(1333,'Karen','2016-02-29 05:30:28','2016-02-29 05:31:12'),(1334,'Karen','2016-02-29 05:33:48','2016-02-29 05:34:05'),(1335,'Karen','2016-02-29 05:34:24','2016-02-29 05:34:35'),(1336,'Karen','2016-02-29 05:36:25','2016-02-29 05:36:36'),(1337,'Karen','2016-02-29 05:36:55','2016-02-29 05:37:17'),(1338,'Karen','2016-02-29 05:40:44','2016-02-29 05:40:49'),(1339,'Karen','2016-02-29 05:42:27','2016-02-29 05:42:35'),(1340,'Karen','2016-02-29 05:43:04','2016-02-29 05:43:19'),(1341,'Karen','2016-02-29 05:47:08','2016-02-29 05:47:08'),(1342,'Karen','2016-02-29 05:49:09','2016-02-29 05:49:09'),(1343,'Karen','2016-02-29 05:50:50','2016-02-29 05:50:59'),(1344,'Karen','2016-02-29 05:51:37','2016-02-29 05:51:54'),(1345,'Karen','2016-02-29 05:54:14','2016-02-29 05:54:42'),(1346,'Karen','2016-02-29 05:59:15','2016-02-29 05:59:33'),(1347,'Karen','2016-02-29 06:00:13','2016-02-29 06:00:27'),(1348,'Karen','2016-02-29 06:01:52','2016-02-29 06:02:01'),(1349,'Karen','2016-02-29 06:02:19','2016-02-29 06:02:34'),(1350,'Karen','2016-02-29 06:05:31','2016-02-29 06:06:10'),(1351,'Karen','2016-02-29 06:08:02','2016-02-29 06:08:09'),(1352,'Karen','2016-02-29 06:09:11','2016-02-29 06:09:11'),(1353,'Karen','2016-02-29 06:13:05','2016-02-29 06:13:21'),(1354,'Karen','2016-02-29 06:16:29','2016-02-29 06:16:46'),(1355,'Karen','2016-02-29 06:19:34','2016-02-29 06:20:17'),(1356,'Karen','2016-02-29 06:20:56','2016-02-29 06:21:10'),(1357,'Karen','2016-02-29 06:23:51','2016-02-29 06:24:01'),(1358,'Karen','2016-02-29 06:28:41','2016-02-29 06:28:51'),(1359,'Karen','2016-02-29 06:30:17','2016-02-29 06:30:30'),(1360,'Karen','2016-02-29 06:31:42','2016-02-29 06:33:06'),(1361,'Karen','2016-02-29 06:34:26','2016-02-29 06:34:50'),(1362,'Karen','2016-02-29 06:39:28','2016-02-29 06:39:50'),(1363,'Karen','2016-02-29 06:40:33','2016-02-29 06:44:36'),(1364,'Karen','2016-02-29 06:46:53','2016-02-29 06:47:07'),(1365,'Karen','2016-02-29 06:47:12','2016-02-29 06:47:40'),(1366,'Karen','2016-02-29 06:48:29','2016-02-29 06:49:11'),(1367,'Karen','2016-02-29 06:49:15','2016-02-29 06:49:24'),(1368,'Karen','2016-02-29 06:49:53','2016-02-29 06:50:00'),(1369,'Karen','2016-02-29 06:52:10','2016-02-29 06:52:43'),(1370,'Karen','2016-02-29 06:54:28','2016-02-29 06:54:36'),(1371,'Karen','2016-02-29 06:56:25','2016-02-29 06:56:28'),(1372,'Karen','2016-02-29 06:56:55','2016-02-29 06:57:27'),(1373,'Karen','2016-02-29 06:57:50','2016-02-29 06:58:02'),(1374,'Randy','2016-02-29 06:58:06','2016-02-29 06:58:09'),(1375,'Karen','2016-02-29 06:58:12','2016-02-29 06:58:14'),(1376,'Rabi','2016-02-29 06:58:20','2016-02-29 06:58:29'),(1377,'Karen','2016-02-29 06:58:33','2016-02-29 06:58:37'),(1378,'Rabi','2016-02-29 07:03:03','2016-02-29 07:03:26'),(1379,'Rabi','2016-02-29 07:05:04','2016-02-29 07:05:33'),(1380,'Rabi','2016-02-29 07:08:31','2016-02-29 07:09:50'),(1381,'Randy','2016-02-29 07:10:41','2016-02-29 07:11:26'),(1382,'Karen','2016-02-29 07:11:29','2016-02-29 07:11:54'),(1383,'Rabi','2016-02-29 07:11:58','2016-02-29 07:12:13'),(1384,'Rabi','2016-02-29 07:12:53','2016-02-29 07:24:33'),(1385,'Randy','2016-02-29 08:10:06','2016-02-29 08:10:51'),(1386,'Karen','2016-02-29 08:10:56','2016-02-29 08:11:34'),(1387,'Randy','2016-02-29 08:15:27','2016-02-29 08:23:02'),(1388,'Karen','2016-02-29 08:23:06','2016-02-29 08:25:57'),(1389,'Randy','2016-02-29 08:38:19','2016-02-29 08:39:00'),(1390,'Karen','2016-02-29 08:39:09','2016-02-29 08:39:30'),(1391,'Rabi','2016-02-29 08:40:21','2016-02-29 08:40:51'),(1392,'Randy','2016-02-29 08:45:17','2016-02-29 08:45:43'),(1393,'Karen','2016-02-29 08:45:46','2016-02-29 08:46:21'),(1394,'Rabi','2016-02-29 08:46:27','2016-02-29 08:46:48'),(1395,'Karen','2016-02-29 08:47:23','2016-02-29 08:47:24'),(1396,'Rabi','2016-02-29 08:47:30','2016-02-29 08:47:35'),(1397,'Rabi','2016-02-29 08:49:06','2016-02-29 08:49:08'),(1398,'Rabi','2016-02-29 08:51:44','2016-02-29 08:51:44'),(1399,'Rabi','2016-02-29 08:54:20','2016-02-29 08:54:51'),(1400,'Rabi','2016-02-29 08:55:51','2016-02-29 08:55:54'),(1401,'Rabi','2016-02-29 08:57:08','2016-02-29 08:57:18'),(1402,'Rabi','2016-02-29 08:57:45','2016-02-29 08:57:49'),(1403,'Rabi','2016-02-29 08:59:29','2016-02-29 08:59:32'),(1404,'Rabi','2016-02-29 09:05:44','2016-02-29 09:05:53'),(1405,'Rabi','2016-02-29 09:10:07','2016-02-29 09:10:32'),(1406,'Rabi','2016-02-29 09:12:53','2016-02-29 09:13:05'),(1407,'Rabi','2016-02-29 09:25:10','2016-02-29 09:25:43'),(1408,'Rabi','2016-02-29 09:27:08','2016-02-29 09:27:14'),(1409,'Jerwin','2016-03-02 20:54:14','2016-03-02 20:54:20'),(1410,'Rabi','2016-03-02 20:54:26','2016-03-02 20:56:49'),(1411,'Jerwin','2016-03-02 20:56:56','2016-03-02 20:57:09'),(1412,'Jerwin','2016-03-02 21:08:42','2016-03-02 21:09:10'),(1413,'Jerwin','2016-03-02 21:10:11','2016-03-02 21:10:23'),(1414,'Jerwin','2016-03-02 21:10:27','2016-03-02 21:10:34'),(1415,'Jerwin','2016-03-02 21:12:01','2016-03-02 21:12:08'),(1416,'Jerwin','2016-03-02 21:13:15','2016-03-02 21:13:21'),(1417,'Rabi','2016-03-02 21:13:26','2016-03-02 21:13:41'),(1418,'Jerwin','2016-03-02 21:15:36','2016-03-02 21:15:40'),(1419,'Rabi','2016-03-02 21:15:44','2016-03-02 21:15:57'),(1420,'Jerwin','2016-03-02 21:18:40','2016-03-02 21:18:44'),(1421,'Rabi','2016-03-02 21:18:48','2016-03-02 21:18:53'),(1422,'Jerwin','2016-03-02 21:20:11','2016-03-02 21:21:04'),(1423,'Jerwin','2016-03-02 21:22:38','2016-03-02 21:22:59'),(1424,'Jerwin','2016-03-02 21:24:44','2016-03-02 21:25:07'),(1425,'Rabi','2016-03-02 21:25:11','2016-03-02 21:25:28'),(1426,'Rabi','2016-03-02 21:27:18','2016-03-02 21:28:04'),(1427,'Jerwin','2016-03-02 21:28:11','2016-03-02 21:28:24'),(1428,'Jerwin','2016-03-02 21:33:02','2016-03-02 21:36:07'),(1429,'Rabi','2016-03-02 21:49:30','2016-03-02 21:51:34'),(1430,'Rabi','2016-03-02 21:56:14','2016-03-02 21:57:27'),(1431,'Jerwin','2016-03-02 22:00:16','2016-03-02 22:00:27'),(1432,'Rabi','2016-03-02 22:00:32','2016-03-02 22:03:24'),(1433,'Jerwin','2016-03-02 22:05:28','2016-03-02 22:05:44'),(1434,'Rabi','2016-03-02 22:25:38','2016-03-02 22:29:58'),(1435,'Rabi','2016-03-02 22:33:24','2016-03-02 22:33:27'),(1436,'Rabi','2016-03-02 22:37:05','2016-03-02 22:38:30'),(1437,'Rabi','2016-03-03 06:15:25','2016-03-03 06:15:45'),(1438,'Rabi','2016-03-03 06:16:52','2016-03-03 06:17:08'),(1439,'Rabi','2016-03-03 06:18:18','2016-03-03 06:18:34'),(1440,'Rabi','2016-03-03 06:19:46','2016-03-03 06:20:54'),(1441,'Rabi','2016-03-03 06:21:47','2016-03-03 06:21:47'),(1442,'Rabi','2016-03-03 06:23:07','2016-03-03 06:23:07'),(1443,'Rabi','2016-03-03 06:25:02','2016-03-03 06:25:02'),(1444,'Rabi','2016-03-03 06:25:33','2016-03-03 06:25:33'),(1445,'Randy','2016-03-03 06:26:56','2016-03-03 06:26:58'),(1446,'Rabi','2016-03-03 06:27:03','2016-03-03 06:27:29'),(1447,'Rabi','2016-03-03 06:30:31','2016-03-03 06:31:02'),(1448,'Jerwin','2016-03-03 06:31:37','2016-03-03 06:31:39'),(1449,'Rabi','2016-03-03 06:31:44','2016-03-03 06:32:35'),(1450,'Rabi','2016-03-03 06:44:14','2016-03-03 06:44:14'),(1451,'Rabi','2016-03-03 06:45:54','2016-03-03 06:45:54'),(1452,'Rabi','2016-03-03 06:47:25','2016-03-03 06:47:25'),(1453,'Rabi','2016-03-03 06:49:34','2016-03-03 06:49:59'),(1454,'Jerwin','2016-03-03 07:00:00','2016-03-03 07:03:41'),(1455,'Jerwin','2016-03-20 18:58:42','2016-03-20 18:58:54'),(1456,'Randy','2016-03-20 18:59:01','2016-03-20 19:00:17'),(1457,'Karen','2016-03-20 19:00:24','2016-03-20 19:01:25'),(1458,'Jerwin','2016-03-20 19:01:38','2016-03-20 19:02:01'),(1459,'Randy','2016-03-20 19:02:07','2016-03-20 19:02:43'),(1460,'Jerwin','2016-03-20 19:02:47','2016-03-20 19:03:00'),(1461,'Randy','2016-03-20 19:03:03','2016-03-20 19:04:39'),(1462,'Randy','2016-03-20 19:04:43','2016-03-20 19:06:45'),(1463,'Karen','2016-03-20 19:06:49','2016-03-20 19:10:12'),(1464,'Randy','2016-03-20 19:15:48','2016-03-20 19:15:53'),(1465,'Karen','2016-03-20 19:15:58','2016-03-20 19:16:21'),(1466,'Randy','2016-03-20 19:16:26','2016-03-20 19:16:56'),(1467,'Karen','2016-03-20 19:17:04','2016-03-20 19:17:13'),(1468,'Randy','2016-03-20 19:17:18','2016-03-20 19:17:25'),(1469,'Karen','2016-03-20 19:17:29','2016-03-20 19:20:44'),(1470,'Karen','2016-03-20 19:20:50','2016-03-20 19:20:50'),(1471,'Karen','2016-03-20 19:22:16','2016-03-20 19:23:40'),(1472,'Jerwin','2016-03-20 19:39:17','2016-03-20 19:39:25'),(1473,'Randy','2016-03-20 19:39:30','2016-03-20 19:42:11'),(1474,'Karen','2016-03-20 19:42:16','2016-03-20 19:46:11'),(1475,'Randy','2016-03-20 19:49:15','2016-03-20 19:49:34'),(1476,'Karen','2016-03-20 19:49:41','2016-03-20 19:53:48'),(1477,'Randy','2016-03-20 19:56:45','2016-03-20 19:57:07'),(1478,'Karen','2016-03-20 19:57:11','2016-03-20 20:04:00'),(1479,'Randy','2016-03-20 20:06:02','2016-03-20 20:06:27'),(1480,'Karen','2016-03-20 20:06:32','2016-03-20 20:06:36'),(1481,'Randy','2016-03-20 20:06:42','2016-03-20 20:06:46'),(1482,'Karen','2016-03-20 20:06:52','2016-03-20 20:10:55');
/*!40000 ALTER TABLE `login_trail_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `login_trail_view`
--

DROP TABLE IF EXISTS `login_trail_view`;
/*!50001 DROP VIEW IF EXISTS `login_trail_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `login_trail_view` (
  `employee_name` tinyint NOT NULL,
  `datetime_in` tinyint NOT NULL,
  `datetime_out` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `monthly_sales_report`
--

DROP TABLE IF EXISTS `monthly_sales_report`;
/*!50001 DROP VIEW IF EXISTS `monthly_sales_report`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `monthly_sales_report` (
  `Month_index` tinyint NOT NULL,
  `Month` tinyint NOT NULL,
  `Sales` tinyint NOT NULL,
  `Year` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `product_inspection_view`
--

DROP TABLE IF EXISTS `product_inspection_view`;
/*!50001 DROP VIEW IF EXISTS `product_inspection_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `product_inspection_view` (
  `Item_Code` tinyint NOT NULL,
  `Description` tinyint NOT NULL,
  `Category` tinyint NOT NULL,
  `Unit_Price` tinyint NOT NULL,
  `Specification` tinyint NOT NULL,
  `Warranty` tinyint NOT NULL,
  `Replacement_Period` tinyint NOT NULL,
  `Quantity_On_Hand` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `product_invoice_tbl`
--

DROP TABLE IF EXISTS `product_invoice_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_invoice_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` int(11) DEFAULT NULL,
  `product_id` varchar(20) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL,
  `consumed` bit(1) DEFAULT b'0',
  `discount_percent` decimal(8,2) DEFAULT '0.00',
  `discount_fixed` decimal(8,2) DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `invoice_fk_idx` (`invoice_id`),
  KEY `product_fk_idx` (`product_id`),
  CONSTRAINT `invoice_fk` FOREIGN KEY (`invoice_id`) REFERENCES `invoice_tbl` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `product_fk` FOREIGN KEY (`product_id`) REFERENCES `product_tbl` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_invoice_tbl`
--

LOCK TABLES `product_invoice_tbl` WRITE;
/*!40000 ALTER TABLE `product_invoice_tbl` DISABLE KEYS */;
INSERT INTO `product_invoice_tbl` VALUES (1,1,'CTVB1D1015M00',50,15000.00,'',0.00,0.00),(2,5,'CTVB1D1015M00',1,300.00,'',0.00,0.00),(3,15,'CTVB1D1015M00',1,300.00,'',0.00,0.00),(4,28,'ACCB1D1015M30',100,20000.00,'\0',0.00,0.00),(5,28,'SWGB1D1015M09',7,1400.00,'\0',0.00,0.00),(6,28,'CTVB1D1015M00',2,600.00,'\0',0.00,0.00),(7,50,'ACCB1D1015M30',1,200.00,'',0.00,0.00),(8,54,'CTVB1D1015M00',1,400.00,'',0.00,0.00),(9,72,'SWGB1D1015M09',1,200.00,'\0',0.00,0.00),(10,75,'SWGB1D1015M09',3,600.00,'\0',0.00,0.00),(11,80,'CTVB1D1015M00',1,400.00,'',0.00,0.00),(12,80,'SWGB1D1015M09',12,2400.00,'',0.00,0.00),(13,86,'CTVB1D1015M00',8,3200.00,'\0',0.00,0.00),(14,87,'CTVB1D1015M00',14,5600.00,'',0.00,0.00),(15,90,'ACCB1D1015M30',5,1000.00,'\0',0.00,0.00),(16,92,'ACCB1D1015M30',1,200.00,'',0.00,0.00),(17,95,'ACCB1D1015M30',5,1000.00,'',0.00,0.00),(18,95,'SWGB1D1015M09',1,200.00,'',0.00,0.00),(19,95,'CTVB1D1015M00',1,400.00,'',0.00,0.00),(20,98,'SWGB1D1015M09',1,200.00,'',0.00,0.00),(21,98,'SWGB1D1015M09',-1,-200.00,'\0',0.00,0.00),(22,95,'ACCB1D1015M30',-2,-400.00,'\0',0.00,0.00),(23,95,'ACCB1D1015M30',-2,-400.00,'\0',0.00,0.00),(24,110,'ACCB1D1015M30',5,1000.00,'',0.00,0.00),(25,112,'ACCB1D1015M30',2,400.00,'',0.00,0.00),(26,116,'ACCB1D1015M30',2,400.00,'',0.00,0.00),(27,118,'ACCB1D1015M30',1,200.00,'',0.00,0.00),(28,2,'ABC000022',12,180000.00,'',0.00,0.00),(29,5,'ABC000022',2,30000.00,'\0',0.00,0.00),(30,5,'ABC000027',22,8800.00,'\0',0.00,0.00),(31,5,'ABC000026',20,740000.00,'\0',0.00,0.00),(32,7,'ABC000030',1,168000.00,'\0',0.00,0.00),(33,7,'ABC000026',25,925000.00,'\0',0.00,0.00),(34,8,'ABC000030',1,168000.00,'\0',0.00,0.00),(35,8,'ABC000014',11,27225.00,'\0',0.00,0.00),(36,10,'ABC000014',33,81675.00,'\0',0.00,0.00),(37,13,'ABC000014',1,2475.00,'\0',0.00,0.00),(38,17,'ABC000014',30,74250.00,'',0.00,0.00),(39,19,'ABC000003',1,122722.00,'\0',0.00,0.00),(40,22,'ABC000014',12,29700.00,'\0',0.00,0.00),(41,39,'A000001',70,840000.00,'\0',20.00,0.00),(42,40,'A000001',70,840000.00,'\0',20.00,0.00),(43,46,'AB000001',92,1196000.00,'',0.00,0.00),(44,48,'AB000001',1,13000.00,'',0.00,100.00),(45,49,'A000001',1,12000.00,'\0',0.00,0.00),(46,49,'A000001',5,60000.00,'\0',25.00,100.00),(47,49,'A000001',1,12000.00,'\0',25.00,100.00),(48,49,'A000001',1,12000.00,'\0',5.00,100.00),(49,49,'A000001',1,12000.00,'\0',5.00,100.00),(50,49,'A000001',1,12000.00,'\0',5.00,100.00),(51,49,'A000001',1,12000.00,'\0',5.00,100.00),(52,49,'A000001',1,12000.00,'\0',5.00,100.00),(53,49,'A000001',1,12000.00,'\0',5.00,100.00),(54,49,'A000001',1,12000.00,'\0',5.00,100.00),(55,49,'A000001',1,12000.00,'\0',5.00,100.00),(56,49,'A000001',1,12000.00,'\0',5.00,100.00),(57,49,'A000001',1,12000.00,'\0',5.00,100.00),(58,49,'A000001',1,12000.00,'\0',5.00,100.00),(59,49,'A000001',1,12000.00,'\0',5.00,100.00),(60,49,'A000001',1,12000.00,'\0',5.00,100.00),(61,49,'A000001',1,12000.00,'\0',0.00,0.00),(62,49,'A000001',1,12000.00,'\0',0.00,0.00),(63,96,'A000001',5,60000.00,'\0',5.00,0.00),(64,99,'ABC000012',1,355560.00,'\0',0.00,0.00),(65,100,'ABC000013',1,1400.00,'\0',0.00,0.00),(66,102,'ABC000013',5,7000.00,'',20.00,100.00),(67,105,'ABC000013',5,7000.00,'\0',5.00,100.00),(68,121,'ABC000013',1,1400.00,'',0.00,0.00),(69,128,'ABC000016',5,8500.00,'\0',5.00,100.00),(70,130,'ABC000016',5,8500.00,'\0',5.00,100.00),(71,132,'ABC000016',5,8500.00,'\0',5.00,100.00),(72,135,'ABC000016',5,8500.00,'',5.00,100.00),(73,139,'ABC000021',1,155566.00,'',20.00,100.00),(74,141,'ABC000021',2,311132.00,'',20.00,100.00),(75,144,'ABC000021',1,155566.00,'\0',20.00,100.00),(76,149,'ABC000027',1,400.00,'',20.00,0.00),(77,154,'ABC000027',1,400.00,'',20.00,0.00),(78,157,'ABC000027',1,400.00,'',20.00,0.00),(79,161,'ABC000027',1,400.00,'',20.00,0.00),(80,165,'ABC000027',1,400.00,'',20.00,0.00),(81,169,'ABC000027',1,400.00,'\0',20.00,0.00),(82,171,'ABC000027',1,400.00,'\0',20.00,0.00),(83,173,'ABC000027',1,400.00,'\0',20.00,0.00),(84,175,'ABC000027',1,400.00,'\0',20.00,0.00),(85,176,'ABC000027',1,400.00,'\0',0.00,0.00),(86,177,'ABC000027',1,400.00,'',20.00,0.00),(87,179,'ABC000027',1,400.00,'',20.00,0.00),(88,183,'ABC000027',1,400.00,'',20.00,0.00),(89,187,'ABC000027',1,400.00,'',20.00,0.00),(90,191,'ABC000027',1,400.00,'',20.00,0.00),(91,195,'ABC000027',1,400.00,'',25.00,0.00),(92,199,'ABC000027',1,400.00,'',5.00,100.00),(93,203,'ABC000027',1,400.00,'',25.00,100.00),(94,204,'ABC000027',1,400.00,'',0.00,100.00),(95,206,'ABC000027',1,400.00,'',0.00,0.00),(96,207,'ABC000027',1,400.00,'',0.00,0.00),(97,208,'ABC000027',1,400.00,'',0.00,0.00),(98,210,'ABC000027',1,400.00,'',20.00,0.00),(99,229,'ABC000027',1,400.00,'',20.00,0.00),(100,231,'ABC000027',1,400.00,'',20.00,0.00),(101,233,'ABC000027',1,400.00,'',20.00,0.00),(102,234,'ABC000027',1,400.00,'',20.00,100.00),(103,239,'ABC000027',1,400.00,'',20.00,0.00),(104,243,'ABC000027',1,400.00,'',20.00,0.00),(105,244,'ABC000027',1,400.00,'',0.00,0.00),(106,247,'ABC000027',1,400.00,'',20.00,0.00),(107,249,'ABC000027',1,400.00,'',0.00,0.00),(108,251,'ABC000027',1,400.00,'',20.00,0.00),(109,255,'ABC000029',1,130.70,'',0.00,100.00),(110,257,'ABC000029',1,130.70,'',0.00,0.00),(111,307,'ABC000029',1,130.70,'',0.00,0.00),(112,311,'ABC000029',5,653.50,'',0.00,0.00),(113,315,'ABC000029',5,653.50,'',0.00,0.00),(114,319,'ABC000029',5,653.50,'',0.00,0.00),(115,323,'ABC000027',5,2000.00,'',0.00,0.00),(116,327,'AB000001',2,26000.00,'',5.00,0.00),(117,332,'ABC000017',13,37698388.00,'\0',0.00,100.00),(118,332,'ABC000012',2,711120.00,'\0',0.00,100.00),(119,334,'ABC000012',15,5333400.00,'',5.00,0.00),(120,334,'ABC000017',1,2899876.00,'',5.00,0.00),(121,340,'ABC000017',5,14499380.00,'',5.00,0.00),(122,348,'ABC000017',1,2899876.00,'',5.00,0.00),(123,349,'ABC000017',1,2899876.00,'',5.00,0.00),(124,354,'ABC000017',1,2899876.00,'',5.00,0.00),(125,358,'ABC000017',1,2899876.00,'',5.00,0.00),(126,362,'ABC000017',1,2899876.00,'',5.00,0.00);
/*!40000 ALTER TABLE `product_invoice_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_return_tbl`
--

DROP TABLE IF EXISTS `product_return_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_return_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_invoice_id` int(11) DEFAULT NULL,
  `qty_returned` varchar(45) DEFAULT NULL,
  `date_returned` date DEFAULT NULL,
  `reason` mediumtext,
  `product_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `return_invoice_id_idx` (`product_invoice_id`),
  CONSTRAINT `return_invoice_id` FOREIGN KEY (`product_invoice_id`) REFERENCES `product_invoice_tbl` (`invoice_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_return_tbl`
--

LOCK TABLES `product_return_tbl` WRITE;
/*!40000 ALTER TABLE `product_return_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_return_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `product_return_view`
--

DROP TABLE IF EXISTS `product_return_view`;
/*!50001 DROP VIEW IF EXISTS `product_return_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `product_return_view` (
  `transaction_no` tinyint NOT NULL,
  `product` tinyint NOT NULL,
  `qty_returned` tinyint NOT NULL,
  `date_returned` tinyint NOT NULL,
  `supplier` tinyint NOT NULL,
  `reason` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `product_tbl`
--

DROP TABLE IF EXISTS `product_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_tbl` (
  `id` varchar(20) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `description` text,
  `unit` varchar(45) DEFAULT NULL,
  `unit_cost` decimal(10,2) DEFAULT NULL,
  `unit_price` decimal(10,2) DEFAULT NULL,
  `maintaining_stocks` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `warranty` varchar(45) DEFAULT NULL,
  `replacement` varchar(45) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `serial_code` varchar(45) DEFAULT NULL,
  `archive` enum('1','0') DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `product_category_fk_idx` (`category_id`),
  KEY `product_supplier_fk_idx` (`supplier_id`),
  CONSTRAINT `product_category_fk` FOREIGN KEY (`category_id`) REFERENCES `category_tbl` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `product_supplier_fk` FOREIGN KEY (`supplier_id`) REFERENCES `supplier_tbl` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_tbl`
--

LOCK TABLES `product_tbl` WRITE;
/*!40000 ALTER TABLE `product_tbl` DISABLE KEYS */;
INSERT INTO `product_tbl` VALUES ('A000001','Varifocal IR Camera','1/3\" sony Color CCD/600TVL','PCS',11978.40,12000.00,10,1,'1 year','1 year',1,'00001','1'),('AB000001','Varifocal IR Camera','1/3\" Sharp Color CCD/600TVL/OSD Control ','pcs',12397.00,13000.00,10,1,'1 year','1 year',1,'000011','0'),('ABC000002','Varifocal IR Camera','1/3\" Sony Color 480TVL','200',14264.00,156890.00,10,1,'1 week','1 month',3,'000014','0'),('ABC000003','Varifocal IR Camera','1/3\" Sony COLOR/600TVL','55',12171.00,122722.00,10,1,'1 week','1 month',3,'000013','0'),('ABC000005','Varifocal IR Camera','1/4\" sharp Color CCD/420TVL Sharp','pcs',1577.40,1600.00,10,1,'1 year','1 year',1,'00004','1'),('ABC000009','Access Control Terminals','FingerPrint Professional Access Control Terminal','pcs',39600.00,40000.00,10,6,'1 year','1 year',1,'00007','0'),('ABC000010','FingerPrint Access Control Terminals','Access Control Terminals','PIECE',31350.00,31555.00,10,6,'1 week','3 months',2,'SS-7080','0'),('ABC000011','Access Control Terminals','FingerPrint Professional Access Control  Terminal-SS-7020','pcs',39600.00,40000.00,10,6,'1 year','1 year',1,'000030','0'),('ABC000012','Access Control Terminals','Fingerprint Pro','25',31350.00,355560.00,10,6,'1 WEEK','3 months',2,'SS-7020S','0'),('ABC000013','Card Reader','RFID Professional Wiegand/ Card Readers-SS10E','pcs',1320.00,1400.00,10,4,'1 year','1 year',1,'00003','1'),('ABC000014','Card Readers','RFID Professional Wiegand/ Card Readers-SS-30E','pcs',2475.00,2475.00,10,4,'1 year','1 year',1,'000010','0'),('ABC000015','Card Reader','RFID Professional Wiegand / Card Readers-SS-20M','pcs',1320.00,1400.00,10,4,'1 year','1 year',1,'00009','0'),('ABC000016','Card Readers','RFID Professional Wiegand/ Card Readers-SS-10E','pcs',1650.00,1700.00,10,4,'1 year','1 year',1,'000027','0'),('ABC000017','FingerPrint DoorLocks','Hi-Tech','75',19800.00,2899876.00,10,5,'1 week','3 months',2,'L1000','0'),('ABC000019','FingerPrint Door Locks','Door Lock','45',13200.00,133969.00,10,5,'1 week','3 months',2,'L100','0'),('ABC000020','Door Locks','Finger Print Door Locks','pcs',8250.00,9000.00,10,5,'1 year','1 year',1,'00005','0'),('ABC000021','Proximity Card  and Time Attendane Terminals','Pro Prox Card Time and Attendance','35',12375.00,155566.00,10,2,'1 week','3 months',2,'SS-200','0'),('ABC000022','Proximity Card Time Attendance Terminals','Professional Proximity Card Time&Attendance Terminals Smart-SS-300 ','pcs',14025.00,15000.00,10,2,'1 year','1 year',1,'00006','0'),('ABC000023','TProximity Card and Time Attendance','Professional Proximity Card Time and Attendance','85',25575.00,265765.00,10,2,'1 week','3 months',2,'SS-400','0'),('ABC000024','Proximity Card Time and Attendance','Pro Prox Card Time and Attendance','65',330000.00,3333000.00,10,2,'1 week ','3 months',2,'SS-680','0'),('ABC000025','Proximity Card Time Attendace','Professional Proximity Card Time & Attendace TerminalsSmart-SS-2000 Smart','pcs',47850.00,48000.00,10,2,'1 year','1 year',1,'00002','0'),('ABC000026','Proximity Card Time Attendance Terminals','Professional Proximity Card Time&Attendance Terminals Smart-SS-880','pcs',36300.00,37000.00,10,2,'1 year','1 year',1,'00008','0'),('ABC000027','Siren Series','Siren without light','pcs',363.00,400.00,10,8,'1 year','1 year',1,'000028','0'),('ABC000028','Siren Series','Strobe Light','55',643.00,743.00,10,8,'1 week','3 months',2,'0000015','0'),('ABC000029','Panic Button','Big Panic Button','85',128.70,130.70,10,7,'1 week','3 months',2,'000019','0'),('ABC000030','Panic Button','Panic Button Small','25',13846.00,168000.00,10,7,'1 week','1 month',2,'000012','0');
/*!40000 ALTER TABLE `product_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `product_transaction_view`
--

DROP TABLE IF EXISTS `product_transaction_view`;
/*!50001 DROP VIEW IF EXISTS `product_transaction_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `product_transaction_view` (
  `transaction_id` tinyint NOT NULL,
  `description` tinyint NOT NULL,
  `unit_price` tinyint NOT NULL,
  `qty_sold` tinyint NOT NULL,
  `grp_price` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `product_variants_tbl`
--

DROP TABLE IF EXISTS `product_variants_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_variants_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `variant` varchar(30) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `unit_price` decimal(10,2) DEFAULT NULL,
  `var_level` int(11) DEFAULT NULL,
  `product_id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `product_variants_tbl_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product_tbl` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_variants_tbl`
--

LOCK TABLES `product_variants_tbl` WRITE;
/*!40000 ALTER TABLE `product_variants_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_variants_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `purchased_product_view`
--

DROP TABLE IF EXISTS `purchased_product_view`;
/*!50001 DROP VIEW IF EXISTS `purchased_product_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `purchased_product_view` (
  `Name` tinyint NOT NULL,
  `Barcode` tinyint NOT NULL,
  `quantity` tinyint NOT NULL,
  `unit_price` tinyint NOT NULL,
  `Sales` tinyint NOT NULL,
  `category` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `receipt_tbl`
--

DROP TABLE IF EXISTS `receipt_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `receipt_tbl` (
  `invoice_id` int(11) NOT NULL,
  `net_price` decimal(10,2) NOT NULL,
  `cash_tender` decimal(10,2) NOT NULL,
  `changed` decimal(10,2) NOT NULL,
  `cname` varchar(45) DEFAULT NULL,
  `address` longtext,
  PRIMARY KEY (`invoice_id`),
  CONSTRAINT `receipt_invoice_fk` FOREIGN KEY (`invoice_id`) REFERENCES `invoice_tbl` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receipt_tbl`
--

LOCK TABLES `receipt_tbl` WRITE;
/*!40000 ALTER TABLE `receipt_tbl` DISABLE KEYS */;
INSERT INTO `receipt_tbl` VALUES (4,180000.00,200000.00,20000.00,'Mico Lozada','Quezon City'),(50,1196000.00,2000000.00,804000.00,'',''),(52,13000.00,14000.00,1000.00,'Randy',''),(124,5500.00,6000.00,500.00,'',''),(126,1400.00,1500.00,100.00,'',''),(137,7975.00,8000.00,25.00,'',''),(143,124352.80,150000.00,25647.20,'',''),(146,248805.60,250000.00,1194.40,'',''),(151,320.00,350.00,30.00,'',''),(156,320.00,350.00,30.00,'',''),(159,320.00,350.00,30.00,'',''),(163,320.00,350.00,30.00,'Randy','Sauyo'),(167,320.00,350.00,30.00,'',''),(181,320.00,350.00,30.00,'',''),(185,320.00,350.00,30.00,'',''),(189,320.00,350.00,30.00,'',''),(193,320.00,350.00,30.00,'',''),(197,300.00,300.00,0.00,'',''),(201,280.00,300.00,20.00,'',''),(212,320.00,350.00,30.00,'',''),(229,320.00,350.00,30.00,'',''),(231,320.00,350.00,30.00,'',''),(233,320.00,350.00,30.00,'',''),(234,220.00,300.00,80.00,'',''),(239,320.00,350.00,30.00,'',''),(243,320.00,350.00,30.00,'',''),(244,400.00,400.00,0.00,'',''),(247,320.00,350.00,30.00,'',''),(253,320.00,350.00,30.00,'',''),(261,0.00,0.00,0.00,'',''),(264,0.00,0.00,0.00,'',''),(275,130.70,500.00,369.30,'',''),(277,0.00,50000.00,50000.00,'',''),(279,0.00,5000.00,5000.00,'',''),(283,30.70,5000.00,4969.30,'',''),(285,400.00,5000.00,4600.00,'',''),(288,400.00,99999.00,99599.00,'',''),(289,400.00,5000.00,4600.00,'',''),(290,400.00,500.00,100.00,'',''),(291,300.00,9999.00,9699.00,'',''),(295,200.00,500.00,300.00,'',''),(300,320.00,500.00,180.00,'',''),(304,74250.00,75000.00,750.00,'CJ','Ponce'),(309,130.70,135.00,4.30,'',''),(313,653.50,700.00,46.50,'',''),(317,653.50,700.00,46.50,'',''),(321,653.50,700.00,46.50,'CJ','QC'),(325,2000.00,2000.00,0.00,'',''),(329,24700.00,25000.00,300.00,'',''),(336,7821612.20,8000000.00,178387.80,'',''),(346,13774411.00,14000000.00,225589.00,'',''),(351,2754882.20,3000000.00,245117.80,'',''),(352,2754882.20,3000000.00,245117.80,'',''),(356,2754882.20,3000000.00,245117.80,'',''),(360,2754882.20,3000000.00,245117.80,'',''),(365,2754882.20,3000000.00,245117.80,'','');
/*!40000 ALTER TABLE `receipt_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reserve`
--

DROP TABLE IF EXISTS `reserve`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reserve` (
  `invoice` varchar(45) NOT NULL,
  `productname` varchar(45) NOT NULL,
  `price` varchar(45) NOT NULL,
  `date` varchar(34) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserve`
--

LOCK TABLES `reserve` WRITE;
/*!40000 ALTER TABLE `reserve` DISABLE KEYS */;
/*!40000 ALTER TABLE `reserve` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `sales_today_view`
--

DROP TABLE IF EXISTS `sales_today_view`;
/*!50001 DROP VIEW IF EXISTS `sales_today_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sales_today_view` (
  `Date` tinyint NOT NULL,
  `Total_Sales` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `stock_movement_tbl`
--

DROP TABLE IF EXISTS `stock_movement_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock_movement_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sold_items` int(11) NOT NULL,
  `product_id` varchar(20) NOT NULL,
  `monthly` int(2) NOT NULL,
  `yearly` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id_idx` (`product_id`),
  CONSTRAINT `product_id` FOREIGN KEY (`product_id`) REFERENCES `product_tbl` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_movement_tbl`
--

LOCK TABLES `stock_movement_tbl` WRITE;
/*!40000 ALTER TABLE `stock_movement_tbl` DISABLE KEYS */;
INSERT INTO `stock_movement_tbl` VALUES (1,5,'ABC000029',2,2016);
/*!40000 ALTER TABLE `stock_movement_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `stock_movement_view`
--

DROP TABLE IF EXISTS `stock_movement_view`;
/*!50001 DROP VIEW IF EXISTS `stock_movement_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `stock_movement_view` (
  `sold_items` tinyint NOT NULL,
  `product_id` tinyint NOT NULL,
  `monthly` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `supplier_tbl`
--

DROP TABLE IF EXISTS `supplier_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supplier_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `address` mediumtext,
  `contact_number` varchar(45) DEFAULT NULL,
  `contact_person` varchar(45) DEFAULT NULL,
  `archive` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier_tbl`
--

LOCK TABLES `supplier_tbl` WRITE;
/*!40000 ALTER TABLE `supplier_tbl` DISABLE KEYS */;
INSERT INTO `supplier_tbl` VALUES (1,'GuardTech','Brgy. Sta. Lucia Quezon City','09165934321','Jermiah Flores','\0'),(2,'SMART','Caloocan City','09394217631','Paolo Villamor','\0'),(3,'SONY','Manila, Philippines','09394217631','Paolo Villamor','\0');
/*!40000 ALTER TABLE `supplier_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_settings_tbl`
--

DROP TABLE IF EXISTS `system_settings_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_settings_tbl` (
  `name` varchar(45) NOT NULL,
  `value` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_settings_tbl`
--

LOCK TABLES `system_settings_tbl` WRITE;
/*!40000 ALTER TABLE `system_settings_tbl` DISABLE KEYS */;
INSERT INTO `system_settings_tbl` VALUES ('mode','advance');
/*!40000 ALTER TABLE `system_settings_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_sample`
--

DROP TABLE IF EXISTS `tbl_sample`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_sample` (
  `user` varchar(45) NOT NULL,
  `pass` varchar(45) DEFAULT NULL,
  `Lname` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sample`
--

LOCK TABLES `tbl_sample` WRITE;
/*!40000 ALTER TABLE `tbl_sample` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_sample` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_tbl`
--

DROP TABLE IF EXISTS `user_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_tbl` (
  `id` varchar(45) NOT NULL,
  `password` longtext,
  `access_level` enum('ADMIN','CASHIER','INVENTORY_PERSONNEL','STAFF') DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `active` bit(1) DEFAULT NULL,
  `session_status` bit(1) DEFAULT b'0',
  `fallbackid` int(11) DEFAULT NULL,
  `fallbackans` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_tbl`
--

LOCK TABLES `user_tbl` WRITE;
/*!40000 ALTER TABLE `user_tbl` DISABLE KEYS */;
INSERT INTO `user_tbl` VALUES ('CJ','1000:0kvsVNGnZ7YHYCyvXMrJClQKCyM3h828:E6n/fB2//+RrY6GzaPn1PxEyMXyKRXfa','ADMIN','2015-09-06 01:36:36','\0','\0',1,'Dog'),('Francis','1000:cXsSfDJE5IpkCpPgsqZLjTAUbSUrwP3z:VdDAcu3dy/POkaLO9lo5S4HK5nvNpdJ7','STAFF','2015-09-13 11:02:09','\0','\0',1,'Dog'),('Jerwin','1000:gBMaS7CPoPuWssMx7Mp62asrgwOA92sS:upbW17soJuVdyFv6uhZC+s9Uif7nE+Gt','INVENTORY_PERSONNEL','2015-09-13 11:24:38','','\0',1,'Dog'),('jessea','1000:IV6vfxHd3+oZOpzhuvQqaWqKFWgnlxF7:QwX+pD/fdR9ceKrThIYMHoeiA3iBTlML','STAFF','2015-10-04 18:05:49','\0','\0',1,'Dog'),('Karen','1000:MC2hqaVscON7bSPVsrdlPXJk1L6crrFD:0WgLdA1IbCGI2Ky0qmfO+8MyYoLDi+PA','CASHIER','2015-09-17 09:40:51','','\0',1,'Dog'),('Rabi','1000:JQ7Krc6eL01CNWzahmeGl3cnE8UgfSDo:IVh/sn6SQvxcwn/qNRbxDMNcVAPobCib','ADMIN','2015-09-13 13:35:25','','\0',2,'Cat'),('Randy','1000:f4SEmab2lco1yQqFfOqN+w4oSy0shM2d:HaURFbRfMKDTUUseYyzvlRdPnuR9gaAa','STAFF','2015-09-13 10:52:08','','\0',1,'Dog'),('roddex','1000:/4G41JoIft3x6HK37pxYXrYKs23w6r/Z:NVOulGOCZ+DG4iRdAv13tmgPJVtbr9Bi','CASHIER','2016-03-02 22:28:18','\0','\0',3,'1000:WIds7BaSUBQm04pWyJC//Z+vduZ4bJ6Y:Yr426JuFrQgSN/JwzDWsnjWFLyjOXzQy'),('saito007','1000:Cnh0F5RmDA94Q05inmY2eW9shFvm64oT:kTntHSf4lWEDHy1zotxffHCh9E9VKgpA','STAFF','2016-01-17 12:04:26','','\0',4,'1000:l4tzx4DJjzVXPv28Sr4TK0Pz9nUjJhjW:ayv0aVBjxoadGKADotDxDHlntDW23Re9');
/*!40000 ALTER TABLE `user_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `weekly_sales_report`
--

DROP TABLE IF EXISTS `weekly_sales_report`;
/*!50001 DROP VIEW IF EXISTS `weekly_sales_report`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `weekly_sales_report` (
  `Date` tinyint NOT NULL,
  `Week` tinyint NOT NULL,
  `Begin` tinyint NOT NULL,
  `End` tinyint NOT NULL,
  `Sales` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `annual_sales_report`
--

/*!50001 DROP TABLE IF EXISTS `annual_sales_report`*/;
/*!50001 DROP VIEW IF EXISTS `annual_sales_report`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`pos_user`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `annual_sales_report` AS select date_format(`invoice_tbl`.`date`,'%Y') AS `Year`,avg(`receipt_tbl`.`net_price`) AS `AVG_Sales`,sum(`receipt_tbl`.`net_price`) AS `Sales` from (`receipt_tbl` join `invoice_tbl` on((`receipt_tbl`.`invoice_id` = `invoice_tbl`.`id`))) group by `Year` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `audit_trail_view`
--

/*!50001 DROP TABLE IF EXISTS `audit_trail_view`*/;
/*!50001 DROP VIEW IF EXISTS `audit_trail_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`pos_user`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `audit_trail_view` AS select `audit_trail_tbl`.`date` AS `date`,`audit_trail_tbl`.`time` AS `time`,concat(`employee_tbl`.`firstname`,' ',`employee_tbl`.`middlename`,' ',`employee_tbl`.`lastname`,' ',convert(`audit_trail_tbl`.`activity` using utf8)) AS `activity`,`audit_trail_tbl`.`employee_id` AS `user_id` from ((`audit_trail_tbl` left join `user_tbl` on((convert(`audit_trail_tbl`.`employee_id` using utf8) = `user_tbl`.`id`))) left join `employee_tbl` on((`user_tbl`.`id` = `employee_tbl`.`user_id`))) order by `audit_trail_tbl`.`date`,`audit_trail_tbl`.`date` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `bestsellers`
--

/*!50001 DROP TABLE IF EXISTS `bestsellers`*/;
/*!50001 DROP VIEW IF EXISTS `bestsellers`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`pos_user`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `bestsellers` AS select `purchased_product_view`.`Name` AS `Name`,`purchased_product_view`.`quantity` AS `Item_Sold`,(cast((`purchased_product_view`.`quantity` / (select sum(`purchased_product_view`.`quantity`) from `purchased_product_view`)) as decimal(3,2)) * 100) AS `Percent_Share` from `purchased_product_view` order by `Percent_Share` desc limit 10 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `daily_sales_report`
--

/*!50001 DROP TABLE IF EXISTS `daily_sales_report`*/;
/*!50001 DROP VIEW IF EXISTS `daily_sales_report`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`pos_user`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `daily_sales_report` AS select `invoice_tbl`.`date` AS `Date`,sum(`receipt_tbl`.`net_price`) AS `Sales` from (`receipt_tbl` join `invoice_tbl` on((`receipt_tbl`.`invoice_id` = `invoice_tbl`.`id`))) group by `invoice_tbl`.`date` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `inventory_view`
--

/*!50001 DROP TABLE IF EXISTS `inventory_view`*/;
/*!50001 DROP VIEW IF EXISTS `inventory_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`pos_user`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `inventory_view` AS select `product_tbl`.`name` AS `Name`,`product_tbl`.`description` AS `Description`,`product_tbl`.`id` AS `Barcode`,`product_tbl`.`unit_cost` AS `UnitCost`,`product_tbl`.`unit_price` AS `Unit_price`,`category_tbl`.`name` AS `Category`,`inventory_tbl`.`stockin_datetime` AS `Stock_since`,`supplier_tbl`.`name` AS `Supplier`,sum(`inventory_tbl`.`qty_received`) AS `Qty_Received`,sum(`inventory_tbl`.`qty_onhand`) AS `Qty_On_Hand`,`product_tbl`.`warranty` AS `Warranty`,`product_tbl`.`replacement` AS `Replacement`,`product_tbl`.`serial_code` AS `SerialCode`,`product_tbl`.`unit` AS `Unit`,`product_tbl`.`maintaining_stocks` AS `MaintainingStocks`,`product_tbl`.`archive` AS `Archive` from (((`inventory_tbl` join `product_tbl` on((`inventory_tbl`.`product_id` = `product_tbl`.`id`))) join `category_tbl` on((`product_tbl`.`category_id` = `category_tbl`.`id`))) join `supplier_tbl` on((`product_tbl`.`supplier_id` = `supplier_tbl`.`id`))) group by `inventory_tbl`.`product_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `login_trail_view`
--

/*!50001 DROP TABLE IF EXISTS `login_trail_view`*/;
/*!50001 DROP VIEW IF EXISTS `login_trail_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`pos_user`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `login_trail_view` AS select concat(`employee_tbl`.`firstname`,' ',`employee_tbl`.`lastname`) AS `employee_name`,`login_trail_tbl`.`datetime_in` AS `datetime_in`,`login_trail_tbl`.`datetime_out` AS `datetime_out` from ((`login_trail_tbl` left join `user_tbl` on((convert(`login_trail_tbl`.`user_id` using utf8) = `user_tbl`.`id`))) left join `employee_tbl` on((`user_tbl`.`id` = `employee_tbl`.`user_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `monthly_sales_report`
--

/*!50001 DROP TABLE IF EXISTS `monthly_sales_report`*/;
/*!50001 DROP VIEW IF EXISTS `monthly_sales_report`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`pos_user`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `monthly_sales_report` AS select month(`invoice_tbl`.`date`) AS `Month_index`,monthname(`invoice_tbl`.`date`) AS `Month`,sum(`receipt_tbl`.`net_price`) AS `Sales`,year(`invoice_tbl`.`date`) AS `Year` from (`receipt_tbl` join `invoice_tbl` on((`receipt_tbl`.`invoice_id` = `invoice_tbl`.`id`))) group by `Month` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `product_inspection_view`
--

/*!50001 DROP TABLE IF EXISTS `product_inspection_view`*/;
/*!50001 DROP VIEW IF EXISTS `product_inspection_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`pos_user`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `product_inspection_view` AS select `inventory_view`.`Barcode` AS `Item_Code`,`inventory_view`.`Name` AS `Description`,`inventory_view`.`Category` AS `Category`,`inventory_view`.`Unit_price` AS `Unit_Price`,`product_tbl`.`description` AS `Specification`,`product_tbl`.`warranty` AS `Warranty`,`product_tbl`.`replacement` AS `Replacement_Period`,`inventory_view`.`Qty_On_Hand` AS `Quantity_On_Hand` from (`product_tbl` join `inventory_view` on((`product_tbl`.`id` = `inventory_view`.`Barcode`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `product_return_view`
--

/*!50001 DROP TABLE IF EXISTS `product_return_view`*/;
/*!50001 DROP VIEW IF EXISTS `product_return_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`pos_user`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `product_return_view` AS select `product_return_tbl`.`product_invoice_id` AS `transaction_no`,`product_tbl`.`name` AS `product`,`product_return_tbl`.`qty_returned` AS `qty_returned`,`product_return_tbl`.`date_returned` AS `date_returned`,`supplier_tbl`.`name` AS `supplier`,`product_return_tbl`.`reason` AS `reason` from ((`product_return_tbl` left join `product_tbl` on((`product_return_tbl`.`product_id` = `product_tbl`.`id`))) left join `supplier_tbl` on((`product_tbl`.`supplier_id` = `supplier_tbl`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `product_transaction_view`
--

/*!50001 DROP TABLE IF EXISTS `product_transaction_view`*/;
/*!50001 DROP VIEW IF EXISTS `product_transaction_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`pos_user`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `product_transaction_view` AS select `product_invoice_tbl`.`invoice_id` AS `transaction_id`,`product_tbl`.`name` AS `description`,`product_tbl`.`unit_price` AS `unit_price`,`product_invoice_tbl`.`quantity` AS `qty_sold`,`product_invoice_tbl`.`subtotal` AS `grp_price` from (`product_invoice_tbl` join `product_tbl` on((`product_tbl`.`id` = `product_invoice_tbl`.`product_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `purchased_product_view`
--

/*!50001 DROP TABLE IF EXISTS `purchased_product_view`*/;
/*!50001 DROP VIEW IF EXISTS `purchased_product_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`pos_user`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `purchased_product_view` AS select `ps`.`name` AS `Name`,`ps`.`id` AS `Barcode`,sum(`pt`.`quantity`) AS `quantity`,`ps`.`unit_price` AS `unit_price`,(sum(`pt`.`quantity`) * `ps`.`unit_price`) AS `Sales`,`ps`.`category_id` AS `category` from (`product_tbl` `ps` join `product_invoice_tbl` `pt` on((`pt`.`product_id` = `ps`.`id`))) group by `ps`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sales_today_view`
--

/*!50001 DROP TABLE IF EXISTS `sales_today_view`*/;
/*!50001 DROP VIEW IF EXISTS `sales_today_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`pos_user`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `sales_today_view` AS select `invoice_tbl`.`date` AS `Date`,sum(`receipt_tbl`.`net_price`) AS `Total_Sales` from (`receipt_tbl` join `invoice_tbl` on((`invoice_tbl`.`id` = `receipt_tbl`.`invoice_id`))) where (`invoice_tbl`.`date` = curdate()) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `stock_movement_view`
--

/*!50001 DROP TABLE IF EXISTS `stock_movement_view`*/;
/*!50001 DROP VIEW IF EXISTS `stock_movement_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`pos_user`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `stock_movement_view` AS select sum(`product_invoice_tbl`.`quantity`) AS `sold_items`,`product_invoice_tbl`.`product_id` AS `product_id`,month(`invoice_tbl`.`date`) AS `monthly` from (`product_invoice_tbl` join `invoice_tbl` on((`product_invoice_tbl`.`invoice_id` = `invoice_tbl`.`id`))) where (`product_invoice_tbl`.`consumed` = 1) group by month(`invoice_tbl`.`date`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `weekly_sales_report`
--

/*!50001 DROP TABLE IF EXISTS `weekly_sales_report`*/;
/*!50001 DROP VIEW IF EXISTS `weekly_sales_report`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`pos_user`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `weekly_sales_report` AS select `invoice_tbl`.`date` AS `Date`,week(`invoice_tbl`.`date`,0) AS `Week`,min(`invoice_tbl`.`date`) AS `Begin`,max(`invoice_tbl`.`date`) AS `End`,sum(`receipt_tbl`.`net_price`) AS `Sales` from (`receipt_tbl` join `invoice_tbl` on((`receipt_tbl`.`invoice_id` = `invoice_tbl`.`id`))) group by `Week` */;
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

-- Dump completed on 2016-03-20 20:18:19
