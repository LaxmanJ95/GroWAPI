-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: dcsolar
-- ------------------------------------------------------
-- Server version	5.7.16-log

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
-- Table structure for table `activity`
--

DROP TABLE IF EXISTS `activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activity` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ISSUE_ID` int(11) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `COMMENTS` longtext,
  `STATUS_ID` int(11) DEFAULT '2',
  `CREATED_DATE` datetime DEFAULT NULL,
  `LAST_MOD_USER` varchar(45) DEFAULT NULL,
  `LAST_MOD_DATE` datetime DEFAULT NULL,
  `ROLE_ID` int(11) DEFAULT NULL,
  `MAIL_NOTES` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity`
--

LOCK TABLES `activity` WRITE;
/*!40000 ALTER TABLE `activity` DISABLE KEYS */;
INSERT INTO `activity` VALUES (1,1,'Note Added','status changed',0,'2017-11-28 14:25:18','Tony','2017-11-28 14:25:18',4,0),(2,1,'Status has been changed from <b>Open</b> to <b>Assigned</b>.<br>','',0,'2017-11-28 14:25:22','Tony','2017-11-28 14:25:22',4,0),(3,1,'Note Added','accepted',0,'2017-11-28 14:36:28','James','2017-11-28 14:36:28',3,1),(4,1,'Status has been changed from <b>Assigned</b> to <b>Accepted</b>.<br>','',0,'2017-11-28 14:36:33','James','2017-11-28 14:36:33',3,1),(5,1,'Note Added','Verified',0,'2017-11-28 14:49:00','Laxman','2017-11-28 14:49:00',5,0),(6,1,'Status has been changed from <b>Accepted</b> to <b>Assigned</b>.<br>','open',0,'2017-11-29 11:14:09','PeteDang','2017-11-29 11:14:09',1,0),(7,2,'Note Added','title',0,'2017-11-29 14:49:26','PeteDang','2017-11-29 14:49:26',1,0),(8,2,'Status has been changed from <b>Open</b> to <b>Completed</b>.<br>','chabed',0,'2017-11-29 14:58:01','PeteDang','2017-11-29 14:58:01',1,0),(9,1,'Status has been changed from <b>Assigned</b> to <b>Completed</b>.<br>','add',0,'2017-11-29 15:04:03','PeteDang','2017-11-29 15:04:03',1,0),(10,3,'Status has been changed from <b>Open</b> to <b>Accepted</b>.<br>','changed',0,'2017-11-29 15:14:30','PeteDang','2017-11-29 15:14:30',1,0),(11,1,'Status has been changed from <b>Completed</b> to <b>Accepted</b>.<br>','changed',0,'2017-11-29 15:36:30','PeteDang','2017-11-29 15:36:30',1,0),(12,4,'Status has been changed from <b>Open</b> to <b>Delieverd</b>.<br>','delivered',0,'2017-11-30 14:52:33','PeteDang','2017-11-30 14:52:33',1,1),(39,20,'Note Added','ssss',0,'2017-12-08 15:14:06','PeteDang','2017-12-08 15:14:06',1,0),(40,21,'Note Added','check',0,'2017-12-11 13:07:49','PeteDang','2017-12-11 13:07:49',1,0),(41,22,'Note Added','notes added',0,'2017-12-13 15:54:45','PeteDang','2017-12-13 15:54:45',1,0),(42,23,'Status has been changed from <b>Open</b> to <b>Completed</b>.<br>','completed',0,'2017-12-14 10:38:00','PeteDang','2017-12-14 10:38:00',1,0),(43,23,'Status has been changed from <b>Completed</b> to <b>Delieverd</b>.<br>','delivered',0,'2017-12-14 15:19:42','Pete','2017-12-14 15:19:42',1,0),(44,24,'Note Added','Mail to user',0,'2017-12-22 12:10:11','Pete','2017-12-22 12:10:11',1,1),(45,25,'Note Added','Mail notes',0,'2017-12-22 12:15:30','Pete','2017-12-22 12:15:30',1,1),(46,26,'Status has been changed from <b>Open</b> to <b>Completed</b>.<br>','completed',0,'2017-12-22 14:59:09','Pete','2017-12-22 14:59:09',1,0),(47,26,'Note Added','La',0,'2017-12-22 16:10:03','Pete','2017-12-22 16:10:03',1,0),(48,26,'Note Added','La',0,'2017-12-22 16:10:05','Pete','2017-12-22 16:10:05',1,0),(49,26,'Note Added','La',0,'2017-12-22 16:10:05','Pete','2017-12-22 16:10:05',1,0),(50,26,'Note Added','done',0,'2017-12-22 16:12:11','Pete','2017-12-22 16:12:11',1,0),(51,26,'Note Added','yes',0,'2017-12-22 16:53:15','Pete','2017-12-22 16:53:15',1,0),(52,26,'Note Added','yes',0,'2017-12-22 16:53:19','Pete','2017-12-22 16:53:19',1,0),(53,26,'Note Added','res',0,'2017-12-22 16:53:29','Pete','2017-12-22 16:53:29',1,0),(54,26,'Note Added','res',0,'2017-12-22 16:53:30','Pete','2017-12-22 16:53:30',1,0),(55,26,'Note Added','rres',0,'2017-12-22 16:55:07','Pete','2017-12-22 16:55:07',1,0),(56,26,'Note Added','rres',0,'2017-12-22 16:55:09','Pete','2017-12-22 16:55:09',1,0),(57,26,' Vin Number has been changed from <b>VIN165327</b> to <b>VIN20172218</b>.<br>','ok',0,'2017-12-22 17:04:09','Pete','2017-12-22 17:04:09',1,0),(58,26,'Note Added','ok',0,'2017-12-22 17:04:15','Pete','2017-12-22 17:04:15',1,0),(59,27,'Status has been changed from <b>Open</b> to <b>Closed</b>.<br>','closed',0,'2017-12-23 18:14:07','Pete','2017-12-23 18:14:07',1,0),(60,25,'Status has been changed from <b>Open</b> to <b>Completed</b>.<br>','action',0,'2017-12-26 10:57:57','Pete','2017-12-26 10:57:57',1,0),(61,25,'Note Added','12',0,'2017-12-26 10:58:44','Pete','2017-12-26 10:58:44',1,0),(62,25,'Note Added','mail',0,'2017-12-26 11:01:23','Pete','2017-12-26 11:01:23',1,0),(63,25,'Note Added','checking',0,'2017-12-26 11:05:34','Pete','2017-12-26 11:05:34',1,0),(64,25,'Note Added','once more',0,'2017-12-26 11:06:35','Pete','2017-12-26 11:06:35',1,0),(65,25,'Note Added','mail',0,'2017-12-26 11:07:57','Pete','2017-12-26 11:07:57',1,0),(66,24,'Status has been changed from <b>Open</b> to <b>Completed</b>.<br>','acyuo',0,'2017-12-26 11:08:44','Pete','2017-12-26 11:08:44',1,0),(67,28,'Status has been changed from <b>Open</b> to <b>Completed</b>.<br>','action',0,'2017-12-26 11:52:48','Pete','2017-12-26 11:52:48',1,0),(68,30,'Status has been changed from <b>Open</b> to <b>Completed</b>.<br>','completed',0,'2017-12-26 15:03:52','Pete','2017-12-26 15:03:52',1,0),(69,31,'Status has been changed from <b>Open</b> to <b>Completed</b>.<br>','compool',0,'2017-12-29 16:54:24','Pete','2017-12-29 16:54:24',1,0),(70,31,'Status has been changed from <b>Completed</b> to <b>Open</b>.<br>','ed',0,'2017-12-29 16:55:46','Pete','2017-12-29 16:55:46',1,0),(71,31,'Status has been changed from <b>Open</b> to <b>Accepted</b>.<br>','nnr',0,'2017-12-29 16:56:29','Pete','2017-12-29 16:56:29',1,0),(72,32,'Status has been changed from <b>Open</b> to <b>Dispatched</b>.<br>','yes',0,'2017-12-29 17:04:24','Pete','2017-12-29 17:04:24',1,0),(73,32,'Note Added','dis',0,'2017-12-29 17:21:06','Pete','2017-12-29 17:21:06',1,0),(74,32,'Status has been changed from <b>Dispatched</b> to <b>Completed</b>.<br>','se',0,'2017-12-29 17:21:22','Pete','2017-12-29 17:21:22',1,0),(75,30,'Note Added','date changed',0,'2018-01-02 12:12:50','Pete','2018-01-02 12:12:50',1,0),(76,30,'Note Added','required',0,'2018-01-02 12:19:48','Pete','2018-01-02 12:19:48',1,0),(77,30,'Status has been changed from <b>Completed</b> to <b>Assigned</b>.<br>','cd',0,'2018-01-02 12:21:41','Pete','2018-01-02 12:21:41',1,0),(78,34,'Status has been changed from <b>Open</b> to <b>Completed</b>.<br>','compl',0,'2018-01-02 12:35:52','Pete','2018-01-02 12:35:52',1,0),(79,34,'Note Added','scae',0,'2018-01-02 12:44:12','Pete','2018-01-02 12:44:12',1,0),(80,35,'Note Added','mmuyhui',0,'2018-01-02 12:48:53','Pete','2018-01-02 12:48:53',1,0),(81,35,'Status has been changed from <b>Open</b> to <b>Completed</b>.<br>','vok',0,'2018-01-02 12:49:55','Pete','2018-01-02 12:49:55',1,0),(82,35,'Note Added','dare',0,'2018-01-02 12:55:25','Pete','2018-01-02 12:55:25',1,0),(83,35,'Note Added','changed',0,'2018-01-02 12:55:53','Pete','2018-01-02 12:55:53',1,0),(84,35,'Status has been changed from <b>Completed</b> to <b>Accepted</b>.<br>','sc',0,'2018-01-02 12:56:17','Pete','2018-01-02 12:56:17',1,0),(85,35,'Note Added','dcc',0,'2018-01-02 12:56:28','Pete','2018-01-02 12:56:28',1,0),(86,35,'Note Added','efds',0,'2018-01-02 12:56:40','Pete','2018-01-02 12:56:40',1,0),(87,35,'Status has been changed from <b>Accepted</b> to <b>Completed</b>.<br>','cx ',0,'2018-01-02 12:56:51','Pete','2018-01-02 12:56:51',1,0),(88,35,'Note Added','actuuioi',0,'2018-01-02 14:27:08','Pete','2018-01-02 14:27:08',1,1),(89,35,'Note Added','vo ',0,'2018-01-02 18:11:45','Pete','2018-01-02 18:11:45',1,0),(90,35,'Note Added','device',0,'2018-01-02 18:17:01','Pete','2018-01-02 18:17:01',1,0),(91,35,'Note Added','mail',0,'2018-01-02 18:44:23','Pete','2018-01-02 18:44:23',1,0),(92,35,'Note Added','notes',0,'2018-01-02 18:44:56','Pete','2018-01-02 18:44:56',1,0),(93,35,'Note Added','note',0,'2018-01-02 18:47:22','Pete','2018-01-02 18:47:22',1,0),(94,35,'Note Added','hdrhdr',0,'2018-01-02 18:48:45','Pete','2018-01-02 18:48:45',1,1),(95,35,'Note Added','cikd',0,'2018-01-02 18:50:34','Pete','2018-01-02 18:50:34',1,0),(96,35,'Note Added','fina',0,'2018-01-02 18:51:28','Pete','2018-01-02 18:51:28',1,0),(97,35,'Note Added','notes',0,'2018-01-02 18:59:49','Pete','2018-01-02 18:59:49',1,0),(98,35,'Note Added','sdds',0,'2018-01-02 19:30:41','Pete','2018-01-02 19:30:41',1,0),(99,35,'Status has been changed from <b>Completed</b> to <b>Accepted</b>.<br>','grgvs',0,'2018-01-02 19:31:08','Pete','2018-01-02 19:31:08',1,0),(100,35,'Note Added','added',0,'2018-01-03 12:36:29','Pete','2018-01-03 12:36:29',1,0),(101,35,'Note Added','eff',0,'2018-01-04 11:27:06','Pete','2018-01-04 11:27:06',1,0),(102,37,'Status has been changed from <b>Open</b> to <b>Accepted</b>.<br>','ststus',0,'2018-01-04 17:43:35','Pete','2018-01-04 17:43:35',1,0),(103,33,'Note Added','savev',0,'2018-01-04 18:56:10','Pete','2018-01-04 18:56:10',1,0),(104,32,'Note Added','ok',0,'2018-01-05 16:49:01','Pete','2018-01-05 16:49:01',1,0),(105,37,'Status has been changed from <b>Accepted</b> to <b>Completed</b>.<br>','okoii',0,'2018-01-05 16:49:31','Pete','2018-01-05 16:49:31',1,0),(106,37,'Status has been changed from <b>Completed</b> to <b>Open</b>.<br>','jnj',0,'2018-01-08 11:35:58','Pete','2018-01-08 11:35:58',1,0),(107,37,'Note Added','jui',0,'2018-01-08 11:36:10','Pete','2018-01-08 11:36:10',1,0),(108,37,'Note Added','notes ',0,'2018-01-08 18:38:07','Pete','2018-01-08 18:38:07',1,0),(109,39,'Child Ticket Added','',0,'2018-01-10 17:22:03','Pete','2018-01-10 17:22:03',1,0),(110,39,'Child Ticket Added','TT0039',0,'2018-01-10 17:30:08','Pete','2018-01-10 17:30:08',1,0),(111,39,'Note Added','ok',0,'2018-01-10 17:33:10','Pete','2018-01-10 17:33:10',1,0),(112,41,'Note Added','assign to',0,'2018-01-11 10:17:01','Pete','2018-01-11 10:17:01',1,0),(113,41,'Note Added','assign to chane',0,'2018-01-11 10:27:29','Pete','2018-01-11 10:27:29',1,0),(114,39,'Child Ticket Created','TT0041 has been created',0,'2018-01-11 11:03:07','Pete','2018-01-11 11:03:07',1,0);
/*!40000 ALTER TABLE `activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `STREET` longtext,
  `STREET2` varchar(255) DEFAULT NULL,
  `CITY` varchar(100) NOT NULL,
  `STATE` varchar(100) NOT NULL,
  `ADDRESS_TYPE` int(11) DEFAULT '1',
  `USER_ID` int(11) NOT NULL,
  `COUNTRY` varchar(255) DEFAULT NULL,
  `ZIPCODE` varchar(255) DEFAULT NULL,
  `ADDRESS` varchar(255) DEFAULT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `Locality` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2nd street Angel ',NULL,'Benecia','California',0,2,NULL,'8788','2nd street Angel , Benecia, California, 8788',NULL,NULL),(2,'4th street Endeavour way,',NULL,'San Diego','California',0,3,NULL,'8723','4th street Endeavour way,, San Diego, California, 8723',NULL,NULL),(7,'17 west car st,',NULL,'San Francisco','California',0,6,NULL,'8347','17 west car st,, San Francisco, California, 8347',NULL,NULL),(8,'17 west car st,',NULL,'San Francisco','California',1,6,NULL,'8347','17 west car st,San Francisco, California, 8347',NULL,NULL),(9,'street miyami',NULL,'Los Angeles','California',1,6,NULL,'6878','street miyamiLos Angeles, California, 6878',NULL,NULL),(10,'21st street',NULL,'San Francisco','California',1,6,NULL,'8778','21st streetSan Francisco, California, 8778',NULL,NULL),(11,'4th street',NULL,'San Diego','California',0,7,NULL,'98899','4th streetSan Diego, California, 98899',NULL,NULL),(12,'2nd stree',NULL,'Benecia','California',1,7,NULL,'878','2nd streeSan Diego, California, 878',NULL,NULL),(13,'2nd site',NULL,'Oakland','California',1,7,NULL,'9899','2nd siteOakland, California, 9899',NULL,NULL),(14,'E Santa Clara st',NULL,'San Jose','California',0,8,NULL,'98739','E Santa Clara stSan Jose, California, 98739',NULL,NULL),(15,'E Santa Clara st',NULL,'San Jose','California',1,8,NULL,'8778','E Santa Clara stSan Jose, California, 8778',NULL,NULL),(16,'N 4th st',NULL,'San Jose','California',1,8,NULL,'8787','N 4th stSan Jose, California, 8787',NULL,NULL),(17,'N street',NULL,'San Diego','California',0,9,NULL,'8787','N streetSan Diego, California, 8787',NULL,NULL),(18,'S street',NULL,'Los Angeles','California',1,9,NULL,'2323','S streetSan Diego, California, 2323',NULL,NULL),(19,'wda',NULL,'Benecia','California',1,6,NULL,'e23r','moreBenecia, California, e23r',NULL,NULL),(20,'',NULL,'Benecia','California',0,1,NULL,'8723','Benecia, California, 8723',NULL,NULL),(21,'5th avenue',NULL,'Los Angeles','California',1,8,NULL,'872','5th avenueLos Angeles, California, 872',NULL,NULL),(22,'Moto',NULL,'Los Angeles','California',1,8,NULL,'233','MotoLos Angeles, California, 233',NULL,NULL),(23,'park road',NULL,'Benecia','California',1,9,NULL,'8787','park roadBenecia, California, 8787',NULL,NULL),(24,'ihui',NULL,'Benecia','California',1,9,NULL,'223','ihuiBenecia, California, 223',NULL,NULL),(25,'fst str',NULL,'Benecia','California',0,10,NULL,'3423','fst str, Benecia, California, 3423',NULL,NULL),(26,'2nd sr',NULL,'Benecia','California',1,9,NULL,'23432','2nd srBenecia, California, 23432',NULL,NULL),(27,'st',NULL,'Oakland','California',1,9,NULL,'123213','stOakland, California, 123213',NULL,NULL),(28,'st',NULL,'Oakland','California',1,7,NULL,'9879','stOakland, California, 9879',NULL,NULL),(29,'str',NULL,'Benecia','California',1,7,NULL,'234','strBenecia, California, 234',NULL,NULL),(30,'sr',NULL,'Los Angeles','California',0,11,NULL,'7778','srLos Angeles, California, 7778',NULL,NULL),(31,'',NULL,'San Francisco','California',1,11,NULL,'87874','Los Angeles, California, 87874',NULL,NULL),(32,'str',NULL,'Benecia','California',0,12,NULL,'876786','str, Benecia, California, 876786',NULL,NULL),(33,'strert',NULL,'San Diego','California',1,7,NULL,'98798','strertSan Diego, California, 98798',NULL,NULL),(34,'2nd street',NULL,'Benecia','California',1,8,NULL,'32423','2nd street Benecia California 32423',NULL,NULL),(35,'new site ',NULL,'Los Angeles','California',1,8,NULL,'77','new site , Los Angeles, California, 77',NULL,NULL),(36,'2nd street kurukkuthurai',NULL,'Benecia','California',1,6,NULL,'133','2nd street kurukkuthurai, Benecia, California, 133',NULL,NULL),(37,'wda',NULL,'Los Angeles','California',1,6,NULL,'2332','wda, Los Angeles, California, 2332',NULL,NULL),(38,'Park ',NULL,'San Francisco','California',1,6,NULL,NULL,'Park , San Francisco, California, null',NULL,NULL),(39,'parj ',NULL,'Los Angeles','California',1,6,NULL,'12321','parj , Los Angeles, California, 12321',NULL,NULL),(40,'newd',NULL,'Benecia','California',1,6,NULL,'3243','newd, Benecia, California, 3243',NULL,NULL),(41,'adsfdafd',NULL,'Oakland','California',1,6,NULL,'234312','adsfdafd, Oakland, California, 234312',NULL,NULL),(42,'styte',NULL,'Los Angeles','California',1,6,NULL,'87678','styte, Los Angeles, California, 87678',NULL,NULL),(43,'oark',NULL,'Los Angeles','California',1,6,NULL,'324341','oark, Los Angeles, California, 324341',NULL,NULL),(44,'17th west car street',NULL,'Oakland','Guam',0,13,NULL,'12323','17th west car street, Oakland, Guam, 12323',NULL,NULL),(45,'17th west car street',NULL,'Oakland','Guam',1,13,NULL,'12323','17th west car streetOakland, Guam, 12323',NULL,NULL),(46,'1t st',NULL,'San Francisco','Delaware',0,14,NULL,'23424','1t st, San Francisco, Delaware, 23424',NULL,NULL),(47,'1t st',NULL,'San Francisco','Delaware',1,14,NULL,'23424','1t st, San Francisco, Delaware, 23424',NULL,NULL),(48,'1t st',NULL,'San Francisco','Delaware',0,15,NULL,'23424','1t st, San Francisco, Delaware, 23424',NULL,NULL),(49,'1t st',NULL,'San Francisco','Delaware',1,15,NULL,'23424','1t st, San Francisco, Delaware, 23424',NULL,NULL),(50,'gffgh',NULL,'Benecia','Alabama',0,16,NULL,'567467467','gffgh, Benecia, Alabama, 567467467',NULL,NULL),(51,'gffgh',NULL,'Benecia','Alabama',1,16,NULL,'567467467','gffgh, Benecia, Alabama, 567467467',NULL,NULL),(52,'iugi',NULL,'Benecia','Alabama',0,17,NULL,'5415','iugi, Benecia, Alabama, 5415',NULL,NULL),(53,'iugi',NULL,'Benecia','Alabama',1,17,NULL,'5415','iugi, Benecia, Alabama, 5415',NULL,NULL),(54,'2nd street',NULL,'San Francisco','California',0,18,NULL,'8787','2nd streetSan Francisco , California , 8787',NULL,NULL),(57,'5095 HAven place apt 231',NULL,'San Francisco','California',0,21,NULL,'32432','5095 HAven place apt 231San Francisco , California , 32432',NULL,NULL),(58,'5095 park avenue apartment 7612',NULL,'Los Angeles','California',0,22,NULL,'23432','5095 park avenue apartment 7612Los Angeles , California , 23432',NULL,NULL);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address_city`
--

DROP TABLE IF EXISTS `address_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address_city` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CITY` varchar(100) NOT NULL,
  `STATE_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_city`
--

LOCK TABLES `address_city` WRITE;
/*!40000 ALTER TABLE `address_city` DISABLE KEYS */;
INSERT INTO `address_city` VALUES (1,'Ambur',31),(2,'Anna Road H.O',31),(3,'Alangudi',31),(4,'Ambasamudram',31),(5,'Ambattur',31),(6,'Annanagar',31),(7,'Aob',31),(8,'Arakkonam',31),(9,'Aranthangai',31),(10,'Aravakurichi',31),(11,'Ariyalur',31),(12,'Arni',31),(13,'Aruppukottai',31),(14,'Avadi Camp',31),(15,'Batlagundu',31),(16,'Bhavani',31),(17,'Bodinayakanur',31),(18,'Chengalpattu',31),(19,'Chengam',31),(20,'Chennai',31),(21,'Chennia City Central',31),(22,'Chennai City North',31),(23,'Chennai City South',31),(24,'Chennai Gpo',31),(25,'Chennai Region',31),(26,'Chidambaram',31),(27,'Coimbatore',31),(28,'Coonoor',31),(29,'Cuddalore',31),(30,'Devakottai',31),(31,'Dharapuram',31),(32,'Dharmapuri',31),(33,'Dindigul',31),(34,'Erode',31),(35,'Gingee',31),(36,'Gudalur',31),(37,'Gudiyattam',31),(38,'Harur',31),(39,'Hosur',31),(40,'Jc Puram',31),(41,'Jolarpettai',31),(42,'Kallakurichi',31),(43,'Kallakuruchi',31),(44,'Kanchipuram',31),(45,'Kanniyakumari',31),(46,'Karaikudi',31),(47,'Karur',31),(48,'Kodairoad R.S',31),(49,'Kovilpatti',31),(50,'Krishnagiri',31),(51,'Kulithalai',31),(52,'Kulittalai',31),(53,'Kumbakonam',31),(54,'Kuttalam',31),(55,'Kuzhithurai',31),(56,'Lalgudi',31),(57,'Madurai',31),(58,'Madurai -2',31),(59,'Madurantakam',31),(60,'ManaMadurai',31),(61,'Manapparai',31),(62,'Mannargudi',31),(63,'Mayiladuthurai',31),(64,'Melur',31),(65,'Mettupalayam',31),(66,'Mudaliarpet',31),(67,'Mudukulathur',31),(68,'Musiri',31),(69,'Nagapatthinam',31),(70,'Nagarcoil',31),(71,'Namakkal',31),(72,'Natham',31),(73,'New colony',31),(74,'Neyveli',31),(75,'Niligris',31),(76,'Orattanad',31),(77,'Palani',31),(78,'Palayamkottai',31),(79,'Papanasam',31),(80,'Paramakudi',31),(81,'Pattukottai',31),(82,'Perambalur',31),(83,'Periyakulam',31),(84,'Perundurai',31),(85,'Pollachi',31),(86,'Polur',31),(87,'Pudukkottai',31),(88,'Pudukottai',31),(89,'Rajapalayam',31),(90,'Ramanathapuram',31),(91,'Ranipet',31),(92,'Rathinasabapathy puram',31),(93,'Salem ',31),(94,'Salem East',31),(95,'Salem Jn',31),(96,'Salem West',31),(97,'Sankarankovil',31),(98,'Satankulam',31),(99,'Sirkali',31),(100,'Sivagangai',31),(101,'Sivakasi',31),(102,'Sriperumbudur',31),(103,'Srirangam',31),(104,'Srivaikundam',31),(105,'Tambaram',31),(106,'Tenkasi',31),(107,'Thanjavur',31),(108,'Niligris',31),(109,'Theni',31),(110,'Thuckalay',31),(111,'Tindivanam',31),(112,'Tirichirapalli',31),(113,'Tiruchendur',31),(114,'Tiruchirappalli',31),(115,'Tirukoyilur',31),(116,'Tirumangalm',31),(117,'Tirunelveli',31),(118,'Tirupapuliyur',31),(119,'Tirupattur',31),(120,'Tiruthuraipundi',31),(121,'Tiruttani',31),(122,'Tiruvadanai',31),(123,'Tiruvallur',31),(124,'Tiruvarur',31),(125,'Thuraiyur',31),(126,'Tuticorin',31),(127,'Udagamandalam',31),(128,'Udumalpet',31),(129,'Undurpet',31),(130,'Usilampatti',31),(131,'Vacant',31),(132,'Vadipatti',31),(133,'Vallioor',31),(134,'Vandavasi',31),(135,'Vaniyambadi',31),(136,'Vedasandur',31),(137,'Velipattinam',31),(138,'Vellore',31),(139,'Vetturnimadam',31),(140,'Villupuram',31),(141,'Virudhachalam',31),(142,'Virudhunagar',31),(143,'Walajapet',31),(144,'Trivandrum',18);
/*!40000 ALTER TABLE `address_city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address_state`
--

DROP TABLE IF EXISTS `address_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address_state` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `STATE` varchar(255) DEFAULT NULL,
  `ABBREVIATION` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_state`
--

LOCK TABLES `address_state` WRITE;
/*!40000 ALTER TABLE `address_state` DISABLE KEYS */;
INSERT INTO `address_state` VALUES (1,'Alabama','AL'),(2,'Alaska','AK'),(3,'American Samoa','AS'),(4,'Arizona','AZ'),(5,'Arkansas','AR'),(6,'California','CA'),(7,'Colorado','CO'),(8,'Connecticut','CT'),(9,'Delaware','DE'),(10,'District Of Columbia','DC'),(11,'Federated States Of Micronesia','FM'),(12,'Florida','FL'),(13,'Georgia','GA'),(14,'Guam','GU'),(15,'Hawaii','HI'),(16,'Idaho','ID'),(17,'Illinois','IL'),(18,'Indiana','IN'),(19,'Iowa','IA'),(20,'Kansas','KS'),(21,'Kentucky','KY'),(22,'Louisiana','LA'),(23,'Maine','ME'),(24,'Marshall Islands','MH'),(25,'Maryland','MD'),(26,'Massachusetts','MA'),(27,'Michigan','MI'),(28,'Minnesota','MN'),(29,'Mississippi','MS'),(30,'Missouri','MO'),(31,'Montana','MT'),(32,'Nebraska','NE'),(33,'Nevada','NV'),(34,'New Hampshire','NH'),(35,'New Jersey','NJ'),(36,'New Mexico','NM'),(37,'New York','NY'),(38,'North Carolina','NC'),(39,'North Dakota','ND'),(40,'Northern Mariana Islands','MP'),(41,'Ohio','OH'),(42,'Oklahoma','OK'),(43,'Oregon','OR'),(44,'Palau','PW'),(45,'Pennsylvania','PA'),(46,'Puerto Rico','PR'),(47,'Rhode Island','RI'),(48,'South Carolina','SC'),(49,'South Dakota','SD'),(50,'Tennessee','TN'),(51,'Texas','TX'),(52,'Utah','UT'),(53,'Vermont','VT'),(54,'Virgin Islands','VI'),(55,'Virginia','VA'),(56,'Washington','WA'),(57,'West Virginia','WV'),(58,'Wisconsin','WI'),(59,'Wyoming','WY');
/*!40000 ALTER TABLE `address_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assigned_groups`
--

DROP TABLE IF EXISTS `assigned_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assigned_groups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(45) NOT NULL,
  `GROUP_EMAIL` varchar(255) DEFAULT NULL,
  `GROUP_OWNER` varchar(255) DEFAULT NULL,
  `DESCRIPTION` longtext,
  `ACTIVE` varchar(11) DEFAULT 'true',
  `PRIMARY_MEMBER` int(11) DEFAULT '0',
  `SECONDARY_MEMBER` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assigned_groups`
--

LOCK TABLES `assigned_groups` WRITE;
/*!40000 ALTER TABLE `assigned_groups` DISABLE KEYS */;
INSERT INTO `assigned_groups` VALUES (1,'CSR Group','csrgroup@gmail.com','12','CSR Lead','true',0,0),(2,'Technician Group','techgroup@gmail.com','10','Tech Lead','true',2,10);
/*!40000 ALTER TABLE `assigned_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assigned_groups_mapping`
--

DROP TABLE IF EXISTS `assigned_groups_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assigned_groups_mapping` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GROUP_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assigned_groups_mapping`
--

LOCK TABLES `assigned_groups_mapping` WRITE;
/*!40000 ALTER TABLE `assigned_groups_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `assigned_groups_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch_job_execution`
--

DROP TABLE IF EXISTS `batch_job_execution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `batch_job_execution` (
  `JOB_EXECUTION_ID` bigint(20) NOT NULL,
  `VERSION` bigint(20) DEFAULT NULL,
  `JOB_INSTANCE_ID` bigint(20) NOT NULL,
  `CREATE_TIME` datetime NOT NULL,
  `START_TIME` datetime DEFAULT NULL,
  `END_TIME` datetime DEFAULT NULL,
  `STATUS` varchar(10) DEFAULT NULL,
  `EXIT_CODE` varchar(2500) DEFAULT NULL,
  `EXIT_MESSAGE` varchar(2500) DEFAULT NULL,
  `LAST_UPDATED` datetime DEFAULT NULL,
  `JOB_CONFIGURATION_LOCATION` varchar(2500) DEFAULT NULL,
  PRIMARY KEY (`JOB_EXECUTION_ID`),
  KEY `JOB_INST_EXEC_FK` (`JOB_INSTANCE_ID`),
  CONSTRAINT `JOB_INST_EXEC_FK` FOREIGN KEY (`JOB_INSTANCE_ID`) REFERENCES `batch_job_instance` (`JOB_INSTANCE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch_job_execution`
--

LOCK TABLES `batch_job_execution` WRITE;
/*!40000 ALTER TABLE `batch_job_execution` DISABLE KEYS */;
INSERT INTO `batch_job_execution` VALUES (1,2,1,'2018-01-10 14:46:50','2018-01-10 14:46:50','2018-01-10 14:46:50','FAILED','FAILED','','2018-01-10 14:46:50',NULL),(2,2,2,'2018-01-10 14:47:00','2018-01-10 14:47:00','2018-01-10 14:47:01','FAILED','FAILED','','2018-01-10 14:47:01',NULL),(3,2,3,'2018-01-10 14:47:10','2018-01-10 14:47:10','2018-01-10 14:47:10','FAILED','FAILED','','2018-01-10 14:47:10',NULL),(4,2,4,'2018-01-10 14:47:20','2018-01-10 14:47:20','2018-01-10 14:47:20','FAILED','FAILED','','2018-01-10 14:47:20',NULL),(5,2,5,'2018-01-10 14:47:30','2018-01-10 14:47:30','2018-01-10 14:47:30','FAILED','FAILED','','2018-01-10 14:47:30',NULL),(6,2,6,'2018-01-10 14:47:40','2018-01-10 14:47:40','2018-01-10 14:47:40','FAILED','FAILED','','2018-01-10 14:47:40',NULL),(7,2,7,'2018-01-10 14:47:50','2018-01-10 14:47:50','2018-01-10 14:47:50','FAILED','FAILED','','2018-01-10 14:47:50',NULL),(8,2,8,'2018-01-10 14:48:00','2018-01-10 14:48:00','2018-01-10 14:48:00','FAILED','FAILED','','2018-01-10 14:48:00',NULL),(9,2,9,'2018-01-10 14:48:10','2018-01-10 14:48:10','2018-01-10 14:48:10','FAILED','FAILED','','2018-01-10 14:48:10',NULL),(10,2,10,'2018-01-10 14:50:00','2018-01-10 14:50:00','2018-01-10 14:50:00','COMPLETED','COMPLETED','','2018-01-10 14:50:00',NULL),(11,2,11,'2018-01-10 14:50:10','2018-01-10 14:50:10','2018-01-10 14:50:10','COMPLETED','COMPLETED','','2018-01-10 14:50:10',NULL),(12,2,12,'2018-01-10 14:50:20','2018-01-10 14:50:20','2018-01-10 14:50:20','COMPLETED','COMPLETED','','2018-01-10 14:50:20',NULL),(13,2,13,'2018-01-10 14:50:30','2018-01-10 14:50:30','2018-01-10 14:50:30','COMPLETED','COMPLETED','','2018-01-10 14:50:30',NULL),(14,2,14,'2018-01-10 14:50:40','2018-01-10 14:50:40','2018-01-10 14:50:40','COMPLETED','COMPLETED','','2018-01-10 14:50:40',NULL),(15,2,15,'2018-01-10 14:50:50','2018-01-10 14:50:50','2018-01-10 14:50:50','COMPLETED','COMPLETED','','2018-01-10 14:50:50',NULL),(16,1,16,'2018-01-10 14:51:00','2018-01-10 14:51:00',NULL,'STARTED','UNKNOWN','','2018-01-10 14:51:00',NULL),(17,2,17,'2018-01-10 15:02:00','2018-01-10 15:02:00','2018-01-10 15:02:00','COMPLETED','COMPLETED','','2018-01-10 15:02:00',NULL),(18,2,18,'2018-01-10 15:03:00','2018-01-10 15:03:00','2018-01-10 15:03:00','COMPLETED','COMPLETED','','2018-01-10 15:03:00',NULL),(19,2,19,'2018-01-10 15:04:00','2018-01-10 15:04:00','2018-01-10 15:04:00','COMPLETED','COMPLETED','','2018-01-10 15:04:00',NULL),(20,2,20,'2018-01-10 18:23:00','2018-01-10 18:23:00','2018-01-10 18:23:00','FAILED','FAILED','','2018-01-10 18:23:00',NULL),(21,2,21,'2018-01-10 18:24:00','2018-01-10 18:24:00','2018-01-10 18:24:00','FAILED','FAILED','','2018-01-10 18:24:00',NULL),(22,2,22,'2018-01-10 18:25:00','2018-01-10 18:25:00','2018-01-10 18:25:00','FAILED','FAILED','','2018-01-10 18:25:00',NULL),(23,2,23,'2018-01-10 18:26:00','2018-01-10 18:26:00','2018-01-10 18:26:00','FAILED','FAILED','','2018-01-10 18:26:00',NULL),(24,2,24,'2018-01-10 18:27:00','2018-01-10 18:27:00','2018-01-10 18:27:00','FAILED','FAILED','','2018-01-10 18:27:00',NULL),(25,2,25,'2018-01-10 18:28:00','2018-01-10 18:28:00','2018-01-10 18:28:00','FAILED','FAILED','','2018-01-10 18:28:00',NULL),(26,2,26,'2018-01-10 18:44:00','2018-01-10 18:44:00','2018-01-10 18:44:01','COMPLETED','COMPLETED','','2018-01-10 18:44:01',NULL),(27,2,27,'2018-01-10 18:50:00','2018-01-10 18:50:00','2018-01-10 18:50:01','COMPLETED','COMPLETED','','2018-01-10 18:50:01',NULL),(28,2,28,'2018-01-11 10:16:00','2018-01-11 10:16:00','2018-01-11 10:16:01','COMPLETED','COMPLETED','','2018-01-11 10:16:01',NULL),(29,2,29,'2018-01-11 10:17:00','2018-01-11 10:17:00','2018-01-11 10:17:00','COMPLETED','COMPLETED','','2018-01-11 10:17:00',NULL),(30,2,30,'2018-01-11 10:18:00','2018-01-11 10:18:00','2018-01-11 10:18:00','COMPLETED','COMPLETED','','2018-01-11 10:18:00',NULL),(31,2,31,'2018-01-11 10:19:00','2018-01-11 10:19:00','2018-01-11 10:19:00','COMPLETED','COMPLETED','','2018-01-11 10:19:00',NULL),(32,2,32,'2018-01-11 10:20:00','2018-01-11 10:20:00','2018-01-11 10:20:00','COMPLETED','COMPLETED','','2018-01-11 10:20:00',NULL),(33,2,33,'2018-01-11 10:21:00','2018-01-11 10:21:00','2018-01-11 10:21:00','COMPLETED','COMPLETED','','2018-01-11 10:21:00',NULL),(34,2,34,'2018-01-11 10:22:00','2018-01-11 10:22:00','2018-01-11 10:22:00','COMPLETED','COMPLETED','','2018-01-11 10:22:00',NULL),(35,2,35,'2018-01-11 10:23:00','2018-01-11 10:23:00','2018-01-11 10:23:00','COMPLETED','COMPLETED','','2018-01-11 10:23:00',NULL),(36,2,36,'2018-01-11 10:27:00','2018-01-11 10:27:00','2018-01-11 10:27:01','COMPLETED','COMPLETED','','2018-01-11 10:27:01',NULL),(37,2,37,'2018-01-11 10:28:00','2018-01-11 10:28:00','2018-01-11 10:28:01','COMPLETED','COMPLETED','','2018-01-11 10:28:01',NULL),(38,2,38,'2018-01-11 10:29:00','2018-01-11 10:29:00','2018-01-11 10:29:00','COMPLETED','COMPLETED','','2018-01-11 10:29:00',NULL),(39,2,39,'2018-01-11 10:30:00','2018-01-11 10:30:00','2018-01-11 10:30:00','COMPLETED','COMPLETED','','2018-01-11 10:30:00',NULL),(40,2,40,'2018-01-11 10:31:00','2018-01-11 10:31:00','2018-01-11 10:31:00','COMPLETED','COMPLETED','','2018-01-11 10:31:00',NULL),(41,2,41,'2018-01-11 10:32:00','2018-01-11 10:32:00','2018-01-11 10:32:00','COMPLETED','COMPLETED','','2018-01-11 10:32:00',NULL),(42,2,42,'2018-01-11 10:33:00','2018-01-11 10:33:00','2018-01-11 10:33:00','COMPLETED','COMPLETED','','2018-01-11 10:33:00',NULL),(43,2,43,'2018-01-11 10:34:00','2018-01-11 10:34:00','2018-01-11 10:34:00','COMPLETED','COMPLETED','','2018-01-11 10:34:00',NULL),(44,2,44,'2018-01-11 10:35:00','2018-01-11 10:35:00','2018-01-11 10:35:00','COMPLETED','COMPLETED','','2018-01-11 10:35:00',NULL),(45,2,45,'2018-01-11 10:36:00','2018-01-11 10:36:00','2018-01-11 10:36:00','COMPLETED','COMPLETED','','2018-01-11 10:36:00',NULL),(46,2,46,'2018-01-11 10:37:00','2018-01-11 10:37:00','2018-01-11 10:37:00','COMPLETED','COMPLETED','','2018-01-11 10:37:00',NULL),(47,2,47,'2018-01-11 10:38:00','2018-01-11 10:38:00','2018-01-11 10:38:00','COMPLETED','COMPLETED','','2018-01-11 10:38:00',NULL),(48,2,48,'2018-01-11 10:39:00','2018-01-11 10:39:00','2018-01-11 10:39:00','COMPLETED','COMPLETED','','2018-01-11 10:39:00',NULL),(49,2,49,'2018-01-11 10:40:00','2018-01-11 10:40:00','2018-01-11 10:40:00','COMPLETED','COMPLETED','','2018-01-11 10:40:00',NULL),(50,2,50,'2018-01-11 10:41:00','2018-01-11 10:41:00','2018-01-11 10:41:00','COMPLETED','COMPLETED','','2018-01-11 10:41:00',NULL),(51,2,51,'2018-01-11 10:42:00','2018-01-11 10:42:00','2018-01-11 10:42:00','COMPLETED','COMPLETED','','2018-01-11 10:42:00',NULL),(52,2,52,'2018-01-11 10:43:00','2018-01-11 10:43:00','2018-01-11 10:43:00','COMPLETED','COMPLETED','','2018-01-11 10:43:00',NULL),(53,2,53,'2018-01-11 10:44:00','2018-01-11 10:44:00','2018-01-11 10:44:00','COMPLETED','COMPLETED','','2018-01-11 10:44:00',NULL),(54,2,54,'2018-01-11 10:45:00','2018-01-11 10:45:00','2018-01-11 10:45:02','COMPLETED','COMPLETED','','2018-01-11 10:45:02',NULL),(55,2,55,'2018-01-11 10:46:00','2018-01-11 10:46:00','2018-01-11 10:46:00','COMPLETED','COMPLETED','','2018-01-11 10:46:00',NULL),(56,2,56,'2018-01-11 10:47:00','2018-01-11 10:47:00','2018-01-11 10:47:00','COMPLETED','COMPLETED','','2018-01-11 10:47:00',NULL),(57,2,57,'2018-01-11 10:48:00','2018-01-11 10:48:00','2018-01-11 10:48:00','COMPLETED','COMPLETED','','2018-01-11 10:48:00',NULL),(58,2,58,'2018-01-11 10:49:00','2018-01-11 10:49:00','2018-01-11 10:49:00','COMPLETED','COMPLETED','','2018-01-11 10:49:00',NULL),(59,2,59,'2018-01-11 10:50:00','2018-01-11 10:50:00','2018-01-11 10:50:00','COMPLETED','COMPLETED','','2018-01-11 10:50:00',NULL),(60,2,60,'2018-01-11 10:51:00','2018-01-11 10:51:00','2018-01-11 10:51:00','COMPLETED','COMPLETED','','2018-01-11 10:51:00',NULL),(61,2,61,'2018-01-11 10:52:00','2018-01-11 10:52:00','2018-01-11 10:52:00','COMPLETED','COMPLETED','','2018-01-11 10:52:00',NULL),(62,2,62,'2018-01-11 10:53:00','2018-01-11 10:53:00','2018-01-11 10:53:00','COMPLETED','COMPLETED','','2018-01-11 10:53:00',NULL),(63,2,63,'2018-01-11 10:54:00','2018-01-11 10:54:00','2018-01-11 10:54:01','COMPLETED','COMPLETED','','2018-01-11 10:54:01',NULL),(64,2,64,'2018-01-11 10:55:00','2018-01-11 10:55:00','2018-01-11 10:55:00','COMPLETED','COMPLETED','','2018-01-11 10:55:00',NULL),(65,2,65,'2018-01-11 10:56:00','2018-01-11 10:56:00','2018-01-11 10:56:00','COMPLETED','COMPLETED','','2018-01-11 10:56:00',NULL),(66,2,66,'2018-01-11 10:57:00','2018-01-11 10:57:00','2018-01-11 10:57:00','COMPLETED','COMPLETED','','2018-01-11 10:57:00',NULL),(67,2,67,'2018-01-11 10:58:00','2018-01-11 10:58:00','2018-01-11 10:58:00','COMPLETED','COMPLETED','','2018-01-11 10:58:00',NULL),(68,2,68,'2018-01-11 10:59:00','2018-01-11 10:59:00','2018-01-11 10:59:00','COMPLETED','COMPLETED','','2018-01-11 10:59:00',NULL),(69,2,69,'2018-01-11 11:00:00','2018-01-11 11:00:00','2018-01-11 11:00:00','COMPLETED','COMPLETED','','2018-01-11 11:00:00',NULL),(70,2,70,'2018-01-11 11:01:00','2018-01-11 11:01:00','2018-01-11 11:01:00','COMPLETED','COMPLETED','','2018-01-11 11:01:00',NULL),(71,2,71,'2018-01-11 11:02:00','2018-01-11 11:02:00','2018-01-11 11:02:00','COMPLETED','COMPLETED','','2018-01-11 11:02:00',NULL),(72,2,72,'2018-01-11 11:03:00','2018-01-11 11:03:00','2018-01-11 11:03:00','COMPLETED','COMPLETED','','2018-01-11 11:03:00',NULL),(73,2,73,'2018-01-11 11:04:00','2018-01-11 11:04:00','2018-01-11 11:04:00','COMPLETED','COMPLETED','','2018-01-11 11:04:00',NULL),(74,2,74,'2018-01-11 11:07:00','2018-01-11 11:07:00','2018-01-11 11:07:00','COMPLETED','COMPLETED','','2018-01-11 11:07:00',NULL),(75,2,75,'2018-01-11 11:08:00','2018-01-11 11:08:00','2018-01-11 11:08:00','COMPLETED','COMPLETED','','2018-01-11 11:08:00',NULL),(76,2,76,'2018-01-11 11:09:00','2018-01-11 11:09:00','2018-01-11 11:09:01','COMPLETED','COMPLETED','','2018-01-11 11:09:01',NULL),(77,2,77,'2018-01-11 11:10:00','2018-01-11 11:10:00','2018-01-11 11:10:00','COMPLETED','COMPLETED','','2018-01-11 11:10:00',NULL),(78,2,78,'2018-01-11 11:11:00','2018-01-11 11:11:00','2018-01-11 11:11:00','COMPLETED','COMPLETED','','2018-01-11 11:11:00',NULL),(79,2,79,'2018-01-11 11:12:00','2018-01-11 11:12:00','2018-01-11 11:12:00','COMPLETED','COMPLETED','','2018-01-11 11:12:00',NULL),(80,2,80,'2018-01-11 11:13:00','2018-01-11 11:13:00','2018-01-11 11:13:00','COMPLETED','COMPLETED','','2018-01-11 11:13:00',NULL),(81,2,81,'2018-01-11 11:14:00','2018-01-11 11:14:00','2018-01-11 11:14:00','COMPLETED','COMPLETED','','2018-01-11 11:14:00',NULL),(82,2,82,'2018-01-11 11:15:00','2018-01-11 11:15:00','2018-01-11 11:15:00','COMPLETED','COMPLETED','','2018-01-11 11:15:00',NULL),(83,2,83,'2018-01-11 11:16:00','2018-01-11 11:16:00','2018-01-11 11:16:01','COMPLETED','COMPLETED','','2018-01-11 11:16:01',NULL),(84,2,84,'2018-01-11 11:17:00','2018-01-11 11:17:00','2018-01-11 11:17:00','COMPLETED','COMPLETED','','2018-01-11 11:17:00',NULL),(85,2,85,'2018-01-11 11:18:00','2018-01-11 11:18:00','2018-01-11 11:18:00','COMPLETED','COMPLETED','','2018-01-11 11:18:00',NULL),(86,2,86,'2018-01-11 11:19:00','2018-01-11 11:19:00','2018-01-11 11:19:01','COMPLETED','COMPLETED','','2018-01-11 11:19:01',NULL),(87,2,87,'2018-01-11 11:20:00','2018-01-11 11:20:00','2018-01-11 11:20:00','COMPLETED','COMPLETED','','2018-01-11 11:20:00',NULL),(88,2,88,'2018-01-11 11:21:00','2018-01-11 11:21:00','2018-01-11 11:21:01','COMPLETED','COMPLETED','','2018-01-11 11:21:01',NULL),(89,2,89,'2018-01-11 11:27:12','2018-01-11 11:27:12','2018-01-11 11:27:14','COMPLETED','COMPLETED','','2018-01-11 11:27:14',NULL),(90,2,90,'2018-01-11 11:28:00','2018-01-11 11:28:00','2018-01-11 11:28:00','COMPLETED','COMPLETED','','2018-01-11 11:28:00',NULL),(91,2,91,'2018-01-11 11:29:00','2018-01-11 11:29:00','2018-01-11 11:29:00','COMPLETED','COMPLETED','','2018-01-11 11:29:00',NULL),(92,2,92,'2018-01-11 11:30:00','2018-01-11 11:30:00','2018-01-11 11:30:00','COMPLETED','COMPLETED','','2018-01-11 11:30:00',NULL),(93,2,93,'2018-01-11 11:31:00','2018-01-11 11:31:00','2018-01-11 11:31:00','COMPLETED','COMPLETED','','2018-01-11 11:31:00',NULL),(94,2,94,'2018-01-11 11:32:00','2018-01-11 11:32:00','2018-01-11 11:32:00','COMPLETED','COMPLETED','','2018-01-11 11:32:00',NULL),(95,2,95,'2018-01-11 11:33:00','2018-01-11 11:33:00','2018-01-11 11:33:00','COMPLETED','COMPLETED','','2018-01-11 11:33:00',NULL),(96,2,96,'2018-01-11 11:34:00','2018-01-11 11:34:00','2018-01-11 11:34:00','COMPLETED','COMPLETED','','2018-01-11 11:34:00',NULL),(97,2,97,'2018-01-11 11:35:00','2018-01-11 11:35:00','2018-01-11 11:35:01','COMPLETED','COMPLETED','','2018-01-11 11:35:01',NULL),(98,2,98,'2018-01-11 11:36:00','2018-01-11 11:36:00','2018-01-11 11:36:00','COMPLETED','COMPLETED','','2018-01-11 11:36:00',NULL),(99,2,99,'2018-01-11 11:37:00','2018-01-11 11:37:00','2018-01-11 11:37:00','COMPLETED','COMPLETED','','2018-01-11 11:37:00',NULL),(100,2,100,'2018-01-11 11:38:00','2018-01-11 11:38:00','2018-01-11 11:38:00','COMPLETED','COMPLETED','','2018-01-11 11:38:00',NULL),(101,2,101,'2018-01-11 11:39:00','2018-01-11 11:39:00','2018-01-11 11:39:00','COMPLETED','COMPLETED','','2018-01-11 11:39:00',NULL),(102,2,102,'2018-01-11 11:40:00','2018-01-11 11:40:00','2018-01-11 11:40:00','COMPLETED','COMPLETED','','2018-01-11 11:40:00',NULL),(103,2,103,'2018-01-11 11:41:00','2018-01-11 11:41:00','2018-01-11 11:41:00','COMPLETED','COMPLETED','','2018-01-11 11:41:00',NULL),(104,2,104,'2018-01-11 11:42:00','2018-01-11 11:42:00','2018-01-11 11:42:00','COMPLETED','COMPLETED','','2018-01-11 11:42:00',NULL),(105,2,105,'2018-01-11 11:43:00','2018-01-11 11:43:00','2018-01-11 11:43:00','COMPLETED','COMPLETED','','2018-01-11 11:43:00',NULL),(106,2,106,'2018-01-11 11:44:00','2018-01-11 11:44:00','2018-01-11 11:44:01','COMPLETED','COMPLETED','','2018-01-11 11:44:01',NULL),(107,2,107,'2018-01-11 11:45:00','2018-01-11 11:45:00','2018-01-11 11:45:01','COMPLETED','COMPLETED','','2018-01-11 11:45:01',NULL),(108,2,108,'2018-01-11 11:46:00','2018-01-11 11:46:00','2018-01-11 11:46:00','COMPLETED','COMPLETED','','2018-01-11 11:46:00',NULL),(109,2,109,'2018-01-11 11:47:00','2018-01-11 11:47:00','2018-01-11 11:47:00','COMPLETED','COMPLETED','','2018-01-11 11:47:00',NULL),(110,2,110,'2018-01-11 11:48:00','2018-01-11 11:48:00','2018-01-11 11:48:00','COMPLETED','COMPLETED','','2018-01-11 11:48:00',NULL),(111,2,111,'2018-01-11 11:49:00','2018-01-11 11:49:00','2018-01-11 11:49:00','COMPLETED','COMPLETED','','2018-01-11 11:49:00',NULL),(112,2,112,'2018-01-11 11:50:00','2018-01-11 11:50:00','2018-01-11 11:50:00','COMPLETED','COMPLETED','','2018-01-11 11:50:00',NULL),(113,2,113,'2018-01-11 11:51:00','2018-01-11 11:51:00','2018-01-11 11:51:00','COMPLETED','COMPLETED','','2018-01-11 11:51:00',NULL),(114,2,114,'2018-01-11 11:52:00','2018-01-11 11:52:00','2018-01-11 11:52:00','COMPLETED','COMPLETED','','2018-01-11 11:52:00',NULL),(115,2,115,'2018-01-11 11:53:00','2018-01-11 11:53:00','2018-01-11 11:53:00','COMPLETED','COMPLETED','','2018-01-11 11:53:00',NULL),(116,2,116,'2018-01-11 11:54:00','2018-01-11 11:54:00','2018-01-11 11:54:00','COMPLETED','COMPLETED','','2018-01-11 11:54:00',NULL),(117,2,117,'2018-01-11 11:55:00','2018-01-11 11:55:00','2018-01-11 11:55:00','COMPLETED','COMPLETED','','2018-01-11 11:55:00',NULL);
/*!40000 ALTER TABLE `batch_job_execution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch_job_execution_context`
--

DROP TABLE IF EXISTS `batch_job_execution_context`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `batch_job_execution_context` (
  `JOB_EXECUTION_ID` bigint(20) NOT NULL,
  `SHORT_CONTEXT` varchar(2500) NOT NULL,
  `SERIALIZED_CONTEXT` text,
  PRIMARY KEY (`JOB_EXECUTION_ID`),
  CONSTRAINT `JOB_EXEC_CTX_FK` FOREIGN KEY (`JOB_EXECUTION_ID`) REFERENCES `batch_job_execution` (`JOB_EXECUTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch_job_execution_context`
--

LOCK TABLES `batch_job_execution_context` WRITE;
/*!40000 ALTER TABLE `batch_job_execution_context` DISABLE KEYS */;
INSERT INTO `batch_job_execution_context` VALUES (1,'{\"map\":[\"\"]}',NULL),(2,'{\"map\":[\"\"]}',NULL),(3,'{\"map\":[\"\"]}',NULL),(4,'{\"map\":[\"\"]}',NULL),(5,'{\"map\":[\"\"]}',NULL),(6,'{\"map\":[\"\"]}',NULL),(7,'{\"map\":[\"\"]}',NULL),(8,'{\"map\":[\"\"]}',NULL),(9,'{\"map\":[\"\"]}',NULL),(10,'{\"map\":[\"\"]}',NULL),(11,'{\"map\":[\"\"]}',NULL),(12,'{\"map\":[\"\"]}',NULL),(13,'{\"map\":[\"\"]}',NULL),(14,'{\"map\":[\"\"]}',NULL),(15,'{\"map\":[\"\"]}',NULL),(16,'{\"map\":[\"\"]}',NULL),(17,'{\"map\":[\"\"]}',NULL),(18,'{\"map\":[\"\"]}',NULL),(19,'{\"map\":[\"\"]}',NULL),(20,'{\"map\":[\"\"]}',NULL),(21,'{\"map\":[\"\"]}',NULL),(22,'{\"map\":[\"\"]}',NULL),(23,'{\"map\":[\"\"]}',NULL),(24,'{\"map\":[\"\"]}',NULL),(25,'{\"map\":[\"\"]}',NULL),(26,'{\"map\":[\"\"]}',NULL),(27,'{\"map\":[\"\"]}',NULL),(28,'{\"map\":[\"\"]}',NULL),(29,'{\"map\":[\"\"]}',NULL),(30,'{\"map\":[\"\"]}',NULL),(31,'{\"map\":[\"\"]}',NULL),(32,'{\"map\":[\"\"]}',NULL),(33,'{\"map\":[\"\"]}',NULL),(34,'{\"map\":[\"\"]}',NULL),(35,'{\"map\":[\"\"]}',NULL),(36,'{\"map\":[\"\"]}',NULL),(37,'{\"map\":[\"\"]}',NULL),(38,'{\"map\":[\"\"]}',NULL),(39,'{\"map\":[\"\"]}',NULL),(40,'{\"map\":[\"\"]}',NULL),(41,'{\"map\":[\"\"]}',NULL),(42,'{\"map\":[\"\"]}',NULL),(43,'{\"map\":[\"\"]}',NULL),(44,'{\"map\":[\"\"]}',NULL),(45,'{\"map\":[\"\"]}',NULL),(46,'{\"map\":[\"\"]}',NULL),(47,'{\"map\":[\"\"]}',NULL),(48,'{\"map\":[\"\"]}',NULL),(49,'{\"map\":[\"\"]}',NULL),(50,'{\"map\":[\"\"]}',NULL),(51,'{\"map\":[\"\"]}',NULL),(52,'{\"map\":[\"\"]}',NULL),(53,'{\"map\":[\"\"]}',NULL),(54,'{\"map\":[\"\"]}',NULL),(55,'{\"map\":[\"\"]}',NULL),(56,'{\"map\":[\"\"]}',NULL),(57,'{\"map\":[\"\"]}',NULL),(58,'{\"map\":[\"\"]}',NULL),(59,'{\"map\":[\"\"]}',NULL),(60,'{\"map\":[\"\"]}',NULL),(61,'{\"map\":[\"\"]}',NULL),(62,'{\"map\":[\"\"]}',NULL),(63,'{\"map\":[\"\"]}',NULL),(64,'{\"map\":[\"\"]}',NULL),(65,'{\"map\":[\"\"]}',NULL),(66,'{\"map\":[\"\"]}',NULL),(67,'{\"map\":[\"\"]}',NULL),(68,'{\"map\":[\"\"]}',NULL),(69,'{\"map\":[\"\"]}',NULL),(70,'{\"map\":[\"\"]}',NULL),(71,'{\"map\":[\"\"]}',NULL),(72,'{\"map\":[\"\"]}',NULL),(73,'{\"map\":[\"\"]}',NULL),(74,'{\"map\":[\"\"]}',NULL),(75,'{\"map\":[\"\"]}',NULL),(76,'{\"map\":[\"\"]}',NULL),(77,'{\"map\":[\"\"]}',NULL),(78,'{\"map\":[\"\"]}',NULL),(79,'{\"map\":[\"\"]}',NULL),(80,'{\"map\":[\"\"]}',NULL),(81,'{\"map\":[\"\"]}',NULL),(82,'{\"map\":[\"\"]}',NULL),(83,'{\"map\":[\"\"]}',NULL),(84,'{\"map\":[\"\"]}',NULL),(85,'{\"map\":[\"\"]}',NULL),(86,'{\"map\":[\"\"]}',NULL),(87,'{\"map\":[\"\"]}',NULL),(88,'{\"map\":[\"\"]}',NULL),(89,'{\"map\":[\"\"]}',NULL),(90,'{\"map\":[\"\"]}',NULL),(91,'{\"map\":[\"\"]}',NULL),(92,'{\"map\":[\"\"]}',NULL),(93,'{\"map\":[\"\"]}',NULL),(94,'{\"map\":[\"\"]}',NULL),(95,'{\"map\":[\"\"]}',NULL),(96,'{\"map\":[\"\"]}',NULL),(97,'{\"map\":[\"\"]}',NULL),(98,'{\"map\":[\"\"]}',NULL),(99,'{\"map\":[\"\"]}',NULL),(100,'{\"map\":[\"\"]}',NULL),(101,'{\"map\":[\"\"]}',NULL),(102,'{\"map\":[\"\"]}',NULL),(103,'{\"map\":[\"\"]}',NULL),(104,'{\"map\":[\"\"]}',NULL),(105,'{\"map\":[\"\"]}',NULL),(106,'{\"map\":[\"\"]}',NULL),(107,'{\"map\":[\"\"]}',NULL),(108,'{\"map\":[\"\"]}',NULL),(109,'{\"map\":[\"\"]}',NULL),(110,'{\"map\":[\"\"]}',NULL),(111,'{\"map\":[\"\"]}',NULL),(112,'{\"map\":[\"\"]}',NULL),(113,'{\"map\":[\"\"]}',NULL),(114,'{\"map\":[\"\"]}',NULL),(115,'{\"map\":[\"\"]}',NULL),(116,'{\"map\":[\"\"]}',NULL),(117,'{\"map\":[\"\"]}',NULL);
/*!40000 ALTER TABLE `batch_job_execution_context` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch_job_execution_params`
--

DROP TABLE IF EXISTS `batch_job_execution_params`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `batch_job_execution_params` (
  `JOB_EXECUTION_ID` bigint(20) NOT NULL,
  `TYPE_CD` varchar(6) NOT NULL,
  `KEY_NAME` varchar(100) NOT NULL,
  `STRING_VAL` varchar(250) DEFAULT NULL,
  `DATE_VAL` datetime DEFAULT NULL,
  `LONG_VAL` bigint(20) DEFAULT NULL,
  `DOUBLE_VAL` double DEFAULT NULL,
  `IDENTIFYING` char(1) NOT NULL,
  KEY `JOB_EXEC_PARAMS_FK` (`JOB_EXECUTION_ID`),
  CONSTRAINT `JOB_EXEC_PARAMS_FK` FOREIGN KEY (`JOB_EXECUTION_ID`) REFERENCES `batch_job_execution` (`JOB_EXECUTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch_job_execution_params`
--

LOCK TABLES `batch_job_execution_params` WRITE;
/*!40000 ALTER TABLE `batch_job_execution_params` DISABLE KEYS */;
INSERT INTO `batch_job_execution_params` VALUES (1,'LONG','time','','1970-01-01 05:30:00',1515575810038,0,'Y'),(2,'LONG','time','','1970-01-01 05:30:00',1515575820023,0,'Y'),(3,'LONG','time','','1970-01-01 05:30:00',1515575830021,0,'Y'),(4,'LONG','time','','1970-01-01 05:30:00',1515575840005,0,'Y'),(5,'LONG','time','','1970-01-01 05:30:00',1515575850089,0,'Y'),(6,'LONG','time','','1970-01-01 05:30:00',1515575860008,0,'Y'),(7,'LONG','time','','1970-01-01 05:30:00',1515575870012,0,'Y'),(8,'LONG','time','','1970-01-01 05:30:00',1515575880007,0,'Y'),(9,'LONG','time','','1970-01-01 05:30:00',1515575890009,0,'Y'),(10,'LONG','time','','1970-01-01 05:30:00',1515576000055,0,'Y'),(11,'LONG','time','','1970-01-01 05:30:00',1515576010002,0,'Y'),(12,'LONG','time','','1970-01-01 05:30:00',1515576020007,0,'Y'),(13,'LONG','time','','1970-01-01 05:30:00',1515576030007,0,'Y'),(14,'LONG','time','','1970-01-01 05:30:00',1515576040008,0,'Y'),(15,'LONG','time','','1970-01-01 05:30:00',1515576050018,0,'Y'),(16,'LONG','time','','1970-01-01 05:30:00',1515576060013,0,'Y'),(17,'LONG','time','','1970-01-01 05:30:00',1515576720059,0,'Y'),(18,'LONG','time','','1970-01-01 05:30:00',1515576780019,0,'Y'),(19,'LONG','time','','1970-01-01 05:30:00',1515576840009,0,'Y'),(20,'LONG','time','','1970-01-01 05:30:00',1515588780014,0,'Y'),(21,'LONG','time','','1970-01-01 05:30:00',1515588840011,0,'Y'),(22,'LONG','time','','1970-01-01 05:30:00',1515588900014,0,'Y'),(23,'LONG','time','','1970-01-01 05:30:00',1515588960013,0,'Y'),(24,'LONG','time','','1970-01-01 05:30:00',1515589020012,0,'Y'),(25,'LONG','time','','1970-01-01 05:30:00',1515589080006,0,'Y'),(26,'LONG','time','','1970-01-01 05:30:00',1515590040015,0,'Y'),(27,'LONG','time','','1970-01-01 05:30:00',1515590400015,0,'Y'),(28,'LONG','time','','1970-01-01 05:30:00',1515645960046,0,'Y'),(29,'LONG','time','','1970-01-01 05:30:00',1515646020004,0,'Y'),(30,'LONG','time','','1970-01-01 05:30:00',1515646080025,0,'Y'),(31,'LONG','time','','1970-01-01 05:30:00',1515646140010,0,'Y'),(32,'LONG','time','','1970-01-01 05:30:00',1515646200011,0,'Y'),(33,'LONG','time','','1970-01-01 05:30:00',1515646260012,0,'Y'),(34,'LONG','time','','1970-01-01 05:30:00',1515646320008,0,'Y'),(35,'LONG','time','','1970-01-01 05:30:00',1515646380002,0,'Y'),(36,'LONG','time','','1970-01-01 05:30:00',1515646620010,0,'Y'),(37,'LONG','time','','1970-01-01 05:30:00',1515646680008,0,'Y'),(38,'LONG','time','','1970-01-01 05:30:00',1515646740018,0,'Y'),(39,'LONG','time','','1970-01-01 05:30:00',1515646800017,0,'Y'),(40,'LONG','time','','1970-01-01 05:30:00',1515646860017,0,'Y'),(41,'LONG','time','','1970-01-01 05:30:00',1515646920023,0,'Y'),(42,'LONG','time','','1970-01-01 05:30:00',1515646980010,0,'Y'),(43,'LONG','time','','1970-01-01 05:30:00',1515647040016,0,'Y'),(44,'LONG','time','','1970-01-01 05:30:00',1515647100021,0,'Y'),(45,'LONG','time','','1970-01-01 05:30:00',1515647160017,0,'Y'),(46,'LONG','time','','1970-01-01 05:30:00',1515647220025,0,'Y'),(47,'LONG','time','','1970-01-01 05:30:00',1515647280010,0,'Y'),(48,'LONG','time','','1970-01-01 05:30:00',1515647340007,0,'Y'),(49,'LONG','time','','1970-01-01 05:30:00',1515647400010,0,'Y'),(50,'LONG','time','','1970-01-01 05:30:00',1515647460014,0,'Y'),(51,'LONG','time','','1970-01-01 05:30:00',1515647520013,0,'Y'),(52,'LONG','time','','1970-01-01 05:30:00',1515647580027,0,'Y'),(53,'LONG','time','','1970-01-01 05:30:00',1515647640009,0,'Y'),(54,'LONG','time','','1970-01-01 05:30:00',1515647700002,0,'Y'),(55,'LONG','time','','1970-01-01 05:30:00',1515647760000,0,'Y'),(56,'LONG','time','','1970-01-01 05:30:00',1515647820004,0,'Y'),(57,'LONG','time','','1970-01-01 05:30:00',1515647880005,0,'Y'),(58,'LONG','time','','1970-01-01 05:30:00',1515647940003,0,'Y'),(59,'LONG','time','','1970-01-01 05:30:00',1515648000002,0,'Y'),(60,'LONG','time','','1970-01-01 05:30:00',1515648060003,0,'Y'),(61,'LONG','time','','1970-01-01 05:30:00',1515648120008,0,'Y'),(62,'LONG','time','','1970-01-01 05:30:00',1515648180015,0,'Y'),(63,'LONG','time','','1970-01-01 05:30:00',1515648240007,0,'Y'),(64,'LONG','time','','1970-01-01 05:30:00',1515648300005,0,'Y'),(65,'LONG','time','','1970-01-01 05:30:00',1515648360020,0,'Y'),(66,'LONG','time','','1970-01-01 05:30:00',1515648420011,0,'Y'),(67,'LONG','time','','1970-01-01 05:30:00',1515648480012,0,'Y'),(68,'LONG','time','','1970-01-01 05:30:00',1515648540022,0,'Y'),(69,'LONG','time','','1970-01-01 05:30:00',1515648600019,0,'Y'),(70,'LONG','time','','1970-01-01 05:30:00',1515648660008,0,'Y'),(71,'LONG','time','','1970-01-01 05:30:00',1515648720024,0,'Y'),(72,'LONG','time','','1970-01-01 05:30:00',1515648780006,0,'Y'),(73,'LONG','time','','1970-01-01 05:30:00',1515648840012,0,'Y'),(74,'LONG','time','','1970-01-01 05:30:00',1515649020012,0,'Y'),(75,'LONG','time','','1970-01-01 05:30:00',1515649080013,0,'Y'),(76,'LONG','time','','1970-01-01 05:30:00',1515649140012,0,'Y'),(77,'LONG','time','','1970-01-01 05:30:00',1515649200012,0,'Y'),(78,'LONG','time','','1970-01-01 05:30:00',1515649260014,0,'Y'),(79,'LONG','time','','1970-01-01 05:30:00',1515649320005,0,'Y'),(80,'LONG','time','','1970-01-01 05:30:00',1515649380027,0,'Y'),(81,'LONG','time','','1970-01-01 05:30:00',1515649440015,0,'Y'),(82,'LONG','time','','1970-01-01 05:30:00',1515649500015,0,'Y'),(83,'LONG','time','','1970-01-01 05:30:00',1515649560018,0,'Y'),(84,'LONG','time','','1970-01-01 05:30:00',1515649620027,0,'Y'),(85,'LONG','time','','1970-01-01 05:30:00',1515649680014,0,'Y'),(86,'LONG','time','','1970-01-01 05:30:00',1515649740013,0,'Y'),(87,'LONG','time','','1970-01-01 05:30:00',1515649800029,0,'Y'),(88,'LONG','time','','1970-01-01 05:30:00',1515649860020,0,'Y'),(89,'LONG','time','','1970-01-01 05:30:00',1515650232693,0,'Y'),(90,'LONG','time','','1970-01-01 05:30:00',1515650280008,0,'Y'),(91,'LONG','time','','1970-01-01 05:30:00',1515650340007,0,'Y'),(92,'LONG','time','','1970-01-01 05:30:00',1515650400022,0,'Y'),(93,'LONG','time','','1970-01-01 05:30:00',1515650460011,0,'Y'),(94,'LONG','time','','1970-01-01 05:30:00',1515650520021,0,'Y'),(95,'LONG','time','','1970-01-01 05:30:00',1515650580014,0,'Y'),(96,'LONG','time','','1970-01-01 05:30:00',1515650640023,0,'Y'),(97,'LONG','time','','1970-01-01 05:30:00',1515650700008,0,'Y'),(98,'LONG','time','','1970-01-01 05:30:00',1515650760023,0,'Y'),(99,'LONG','time','','1970-01-01 05:30:00',1515650820023,0,'Y'),(100,'LONG','time','','1970-01-01 05:30:00',1515650880011,0,'Y'),(101,'LONG','time','','1970-01-01 05:30:00',1515650940014,0,'Y'),(102,'LONG','time','','1970-01-01 05:30:00',1515651000014,0,'Y'),(103,'LONG','time','','1970-01-01 05:30:00',1515651060008,0,'Y'),(104,'LONG','time','','1970-01-01 05:30:00',1515651120003,0,'Y'),(105,'LONG','time','','1970-01-01 05:30:00',1515651180002,0,'Y'),(106,'LONG','time','','1970-01-01 05:30:00',1515651240006,0,'Y'),(107,'LONG','time','','1970-01-01 05:30:00',1515651300001,0,'Y'),(108,'LONG','time','','1970-01-01 05:30:00',1515651360003,0,'Y'),(109,'LONG','time','','1970-01-01 05:30:00',1515651420003,0,'Y'),(110,'LONG','time','','1970-01-01 05:30:00',1515651480001,0,'Y'),(111,'LONG','time','','1970-01-01 05:30:00',1515651540003,0,'Y'),(112,'LONG','time','','1970-01-01 05:30:00',1515651600001,0,'Y'),(113,'LONG','time','','1970-01-01 05:30:00',1515651660002,0,'Y'),(114,'LONG','time','','1970-01-01 05:30:00',1515651720001,0,'Y'),(115,'LONG','time','','1970-01-01 05:30:00',1515651780004,0,'Y'),(116,'LONG','time','','1970-01-01 05:30:00',1515651840001,0,'Y'),(117,'LONG','time','','1970-01-01 05:30:00',1515651900008,0,'Y');
/*!40000 ALTER TABLE `batch_job_execution_params` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch_job_execution_seq`
--

DROP TABLE IF EXISTS `batch_job_execution_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `batch_job_execution_seq` (
  `ID` bigint(20) NOT NULL,
  `UNIQUE_KEY` char(1) NOT NULL,
  UNIQUE KEY `UNIQUE_KEY_UN` (`UNIQUE_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch_job_execution_seq`
--

LOCK TABLES `batch_job_execution_seq` WRITE;
/*!40000 ALTER TABLE `batch_job_execution_seq` DISABLE KEYS */;
INSERT INTO `batch_job_execution_seq` VALUES (117,'0');
/*!40000 ALTER TABLE `batch_job_execution_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch_job_instance`
--

DROP TABLE IF EXISTS `batch_job_instance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `batch_job_instance` (
  `JOB_INSTANCE_ID` bigint(20) NOT NULL,
  `VERSION` bigint(20) DEFAULT NULL,
  `JOB_NAME` varchar(100) NOT NULL,
  `JOB_KEY` varchar(32) NOT NULL,
  PRIMARY KEY (`JOB_INSTANCE_ID`),
  UNIQUE KEY `JOB_INST_UN` (`JOB_NAME`,`JOB_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch_job_instance`
--

LOCK TABLES `batch_job_instance` WRITE;
/*!40000 ALTER TABLE `batch_job_instance` DISABLE KEYS */;
INSERT INTO `batch_job_instance` VALUES (1,0,'exportPeronJob','c3ec9adabd38bd97a6501c6d023f6b6c'),(2,0,'exportPeronJob','f0b4e2306de398e098d27376f3ec60ae'),(3,0,'exportPeronJob','ad719de0600d6915d1d39edcb4a244c9'),(4,0,'exportPeronJob','fa8b3886ae7d2ac30c189b9541ed1857'),(5,0,'exportPeronJob','eff48d2dd3893eef9e1d81bc4b990135'),(6,0,'exportPeronJob','f1c894896ef8412811809639d3bf7273'),(7,0,'exportPeronJob','bedb4841628a34c7d8127e2ee0a9c7c6'),(8,0,'exportPeronJob','59dec84991ffa415cc9f1790ac7768f2'),(9,0,'exportPeronJob','23d347204d9ca2af8b290ee31f972771'),(10,0,'exportPeronJob','0b7395cb9ddd53e970394c48fe41d90e'),(11,0,'exportPeronJob','c8e69c74926350f96018429c40d68c10'),(12,0,'exportPeronJob','a8e86d651877a3f00a22b427b9b34d9b'),(13,0,'exportPeronJob','4ce01455f195af1928e942427619adc2'),(14,0,'exportPeronJob','cad6e8ef8d060572af912bf263e6c83a'),(15,0,'exportPeronJob','a5480668f0af3f1daa57819556815ca3'),(16,0,'exportPeronJob','5b062b0fc0deb3f25704306d7ff70466'),(17,0,'exportPeronJob','021305e701469dcf63830a6bfeab420b'),(18,0,'exportPeronJob','9d09828e9b2c987c546877a6097f2159'),(19,0,'exportPeronJob','0e39b27361980333340b2776ec08cbef'),(20,0,'exportPeronJob','464d1600af180e2e4526490565a9de0c'),(21,0,'exportPeronJob','e726bfa3156e63c401a2b6ff2aaa0a00'),(22,0,'exportPeronJob','1e0380db6ab162b889c7ccc34ab6ac86'),(23,0,'exportPeronJob','8c18fcee83be8b8ad13b58332c7fe907'),(24,0,'exportPeronJob','5ccc4f9be825d35f605364824ef26d20'),(25,0,'exportPeronJob','b4128447515aea8f4bfc3a7d81f27276'),(26,0,'exportPeronJob','d7fa50cec745ea8e14c51afa8f0dc113'),(27,0,'exportPeronJob','d54c683d4570d88e2c2ad6acf2c349d8'),(28,0,'exportPeronJob','a5ca166d182369efb12bda011f7dc926'),(29,0,'exportPeronJob','aa686b88099942422fe2e19eeb5ea85b'),(30,0,'exportPeronJob','dd2daa563c8cc0b9eec5c41cd0874199'),(31,0,'exportPeronJob','d1d8ac7224a6a4c951c5376826d29749'),(32,0,'exportPeronJob','9c211bde2cb294ecd18f11c579404c6d'),(33,0,'exportPeronJob','d65ee8886b970a242e60ccfdc6988200'),(34,0,'exportPeronJob','830719a4b946a099b5cbbb10fa2be861'),(35,0,'exportPeronJob','7b514ed3aba22b356bb4c8e5d8272418'),(36,0,'exportPeronJob','34c68450900a72afea0e10e14413081a'),(37,0,'exportPeronJob','ba5e71548017a1fcefac99c5c911aeec'),(38,0,'exportPeronJob','3bcfd28211487b5e01f908bbfc34b414'),(39,0,'exportPeronJob','53ac519bc0ad818f85dd1c853efa20d7'),(40,0,'exportPeronJob','3bb64f72ad449df29c4c6847485cced2'),(41,0,'exportPeronJob','aa1180e0c2f1d133d03009d0f0919a37'),(42,0,'exportPeronJob','8b4805db81c17f903b7fcf7be293d608'),(43,0,'exportPeronJob','75376d7369e521651ff3e802c49b2acc'),(44,0,'exportPeronJob','584d660940fc863f9d20ebd48a0d68b0'),(45,0,'exportPeronJob','801816dda64e8c3cdc9416497bb7758b'),(46,0,'exportPeronJob','7b6cf500638c0d20268c14b76c0902e8'),(47,0,'exportPeronJob','ece644a9d8190291bd2529b62a7f7a67'),(48,0,'exportPeronJob','ccda9b9193125935de346ef98e57adc7'),(49,0,'exportPeronJob','1ac1303426c4575ffb7898290ecf193c'),(50,0,'exportPeronJob','11b29a4383229561758542d35c4cb18e'),(51,0,'exportPeronJob','69887ad3a0c4aaf14366c21e8df84d51'),(52,0,'exportPeronJob','9d0c2b5995a74d1c9511e02bef4f0592'),(53,0,'exportPeronJob','95b359b0db88d36fa518c99406d3a0bf'),(54,0,'exportPeronJob','e4b70ceb84c72df3a516397dd91b19a3'),(55,0,'exportPeronJob','fb5ac9a2fec319088291dc65d89aec7b'),(56,0,'exportPeronJob','54c2c436fe4005832fd2481965f9ad4d'),(57,0,'exportPeronJob','6e8032ac4ddb5e209478cfe98b07e69e'),(58,0,'exportPeronJob','c7bcaf5fec830ae669557dee8929e8e5'),(59,0,'exportPeronJob','321e5b71fe4145e2cc8155a7019d01ad'),(60,0,'exportPeronJob','ce853cdd9c8eb03694e85b50c552193b'),(61,0,'exportPeronJob','ed2a4dd5c4d7b379f8c64bed20857414'),(62,0,'exportPeronJob','ad4e83f3871e56489ede5bf381af1133'),(63,0,'exportPeronJob','a798111bcf667e853b2ef64ff5530a71'),(64,0,'exportPeronJob','0a6c0647308deaec8e07008df4a95c95'),(65,0,'exportPeronJob','88e32570d4fd30b8a836559e27ea9fbc'),(66,0,'exportPeronJob','e64dd6d9fea96ef7a416861337b71b31'),(67,0,'exportPeronJob','12b22a6175fec1509a2ce665c3e910d4'),(68,0,'exportPeronJob','209d3b14a207aa3e5d0f72a6fcb56d9e'),(69,0,'exportPeronJob','95c99b5a6433f203d947ef867cbcfc0f'),(70,0,'exportPeronJob','5b35b1bd86e5e75c16442a5b493e0c5a'),(71,0,'exportPeronJob','9960fa00dc1e0f3bb153925d110d3af6'),(72,0,'exportPeronJob','977ff5ebf7638b3e06a81b411298d726'),(73,0,'exportPeronJob','a47038709a096f225af0d0065af1633e'),(74,0,'exportPeronJob','c3ae8368537127aafd067740257dffd4'),(75,0,'exportPeronJob','b5bec160d1cb8c86214cc7d73d7e8d48'),(76,0,'exportPeronJob','bcd1251599d06d4f5e89c501b6c0401e'),(77,0,'exportPeronJob','33a529ca61bc5f0f3e88ab5b1f63a5bf'),(78,0,'exportPeronJob','51d8949d3b1db920ab503272987d0824'),(79,0,'exportPeronJob','0775c87f4502871524ff33a66f0555cd'),(80,0,'exportPeronJob','5b859779cd15131f3d11e08085e57e8a'),(81,0,'exportPeronJob','f50d593e909f0592365359c5b885b18e'),(82,0,'exportPeronJob','a1acac599a7e2094f108d4b38a68e6c5'),(83,0,'exportPeronJob','3f767d6db313e22675a033ea5b2a8ecf'),(84,0,'exportPeronJob','97cd59b3cf9f7a9fe04da26a64b8d476'),(85,0,'exportPeronJob','d0824e63a9136a9f759911b3d00c2d7d'),(86,0,'exportPeronJob','594940d56f0692e798794093070ce171'),(87,0,'exportPeronJob','1bb6476f47be6210f4623f225b472e49'),(88,0,'exportPeronJob','a05821fbe9b1e59182cf260a0f00ddf1'),(89,0,'exportPeronJob','08704cf4dbeb7f0bbafd52b691ea2c87'),(90,0,'exportPeronJob','c0f130ae3e759282d85109581ffd12d8'),(91,0,'exportPeronJob','507f36a330c056c4011686c9164feaa5'),(92,0,'exportPeronJob','c6ae6aa4738aa8156b82f8c997965543'),(93,0,'exportPeronJob','e5909e89f17a8b7e8184029b19555392'),(94,0,'exportPeronJob','0a3a3772dd7a8f5c5393249e226dd358'),(95,0,'exportPeronJob','89b21ae0bc86f799949121bb9bc43393'),(96,0,'exportPeronJob','325d71fc13a1cdbb0d8a085a213cc89d'),(97,0,'exportPeronJob','a22f810a0f0027b6209dc2053b0b0311'),(98,0,'exportPeronJob','1952bfef1d48c45ce82157b99149b903'),(99,0,'exportPeronJob','91102a8dbaa86611eece9522bbc4d98c'),(100,0,'exportPeronJob','b4695097c241c620b6d3d3e5def874a3'),(101,0,'exportPeronJob','ecb357d943d381c5d2cff30f3e7c1fb6'),(102,0,'exportPeronJob','796fd68e574f957e581692b4cf7f39c1'),(103,0,'exportPeronJob','2e9b3ce8916a96bf92ab4f6d83847e29'),(104,0,'exportPeronJob','993a7616c645d9d811a9c01dc5b6e682'),(105,0,'exportPeronJob','febc6ff8282a9acea38a7c1b7c17ed79'),(106,0,'exportPeronJob','e3800861c75961e804b9f63a87748b45'),(107,0,'exportPeronJob','bb0d802301e1166c91bd875343fcb202'),(108,0,'exportPeronJob','3a81fbeac27f1f59db6fb1bf8292959a'),(109,0,'exportPeronJob','1b07adac721eb2acf76593c59a3fc03c'),(110,0,'exportPeronJob','9a677c344c5d06df416a8d765a4181c1'),(111,0,'exportPeronJob','8af2a1a38b1f88ae1b043a10e7319ad4'),(112,0,'exportPeronJob','473618ca7844b27cdf73bb1e47626d7f'),(113,0,'exportPeronJob','c9a23a5c819d012608fa2e8d468a439d'),(114,0,'exportPeronJob','a84551b383fcbc1b8a74db007c894a79'),(115,0,'exportPeronJob','3d1795883dcdd2d1c411ee8088596171'),(116,0,'exportPeronJob','af0f2cfa32ddeb167d1795425d4ec1b1'),(117,0,'exportPeronJob','7813f9b71734c899f407ea3c3d340fed');
/*!40000 ALTER TABLE `batch_job_instance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch_job_seq`
--

DROP TABLE IF EXISTS `batch_job_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `batch_job_seq` (
  `ID` bigint(20) NOT NULL,
  `UNIQUE_KEY` char(1) NOT NULL,
  UNIQUE KEY `UNIQUE_KEY_UN` (`UNIQUE_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch_job_seq`
--

LOCK TABLES `batch_job_seq` WRITE;
/*!40000 ALTER TABLE `batch_job_seq` DISABLE KEYS */;
INSERT INTO `batch_job_seq` VALUES (117,'0');
/*!40000 ALTER TABLE `batch_job_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch_step_execution`
--

DROP TABLE IF EXISTS `batch_step_execution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `batch_step_execution` (
  `STEP_EXECUTION_ID` bigint(20) NOT NULL,
  `VERSION` bigint(20) NOT NULL,
  `STEP_NAME` varchar(100) NOT NULL,
  `JOB_EXECUTION_ID` bigint(20) NOT NULL,
  `START_TIME` datetime NOT NULL,
  `END_TIME` datetime DEFAULT NULL,
  `STATUS` varchar(10) DEFAULT NULL,
  `COMMIT_COUNT` bigint(20) DEFAULT NULL,
  `READ_COUNT` bigint(20) DEFAULT NULL,
  `FILTER_COUNT` bigint(20) DEFAULT NULL,
  `WRITE_COUNT` bigint(20) DEFAULT NULL,
  `READ_SKIP_COUNT` bigint(20) DEFAULT NULL,
  `WRITE_SKIP_COUNT` bigint(20) DEFAULT NULL,
  `PROCESS_SKIP_COUNT` bigint(20) DEFAULT NULL,
  `ROLLBACK_COUNT` bigint(20) DEFAULT NULL,
  `EXIT_CODE` varchar(2500) DEFAULT NULL,
  `EXIT_MESSAGE` varchar(2500) DEFAULT NULL,
  `LAST_UPDATED` datetime DEFAULT NULL,
  PRIMARY KEY (`STEP_EXECUTION_ID`),
  KEY `JOB_EXEC_STEP_FK` (`JOB_EXECUTION_ID`),
  CONSTRAINT `JOB_EXEC_STEP_FK` FOREIGN KEY (`JOB_EXECUTION_ID`) REFERENCES `batch_job_execution` (`JOB_EXECUTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch_step_execution`
--

LOCK TABLES `batch_step_execution` WRITE;
/*!40000 ALTER TABLE `batch_step_execution` DISABLE KEYS */;
INSERT INTO `batch_step_execution` VALUES (1,2,'step1',1,'2018-01-10 14:46:50','2018-01-10 14:46:50','FAILED',0,0,0,0,0,0,0,0,'FAILED','org.springframework.batch.item.ItemStreamException: Could not convert resource to file: [class path resource [persons.csv]]\r\n	at org.springframework.batch.item.file.FlatFileItemWriter.getOutputState(FlatFileItemWriter.java:384)\r\n	at org.springframework.batch.item.file.FlatFileItemWriter.open(FlatFileItemWriter.java:322)\r\n	at org.springframework.batch.item.support.CompositeItemStream.open(CompositeItemStream.java:96)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.open(TaskletStep.java:310)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:197)\r\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:148)\r\n	at org.springframework.batch.core.job.flow.JobFlowExecutor.executeStep(JobFlowExecutor.java:64)\r\n	at org.springframework.batch.core.job.flow.support.state.StepState.handle(StepState.java:67)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.resume(SimpleFlow.java:169)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.start(SimpleFlow.java:144)\r\n	at org.springframework.batch.core.job.flow.FlowJob.doExecute(FlowJob.java:134)\r\n	at org.springframework.batch.core.job.AbstractJob.execute(AbstractJob.java:306)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher$1.run(SimpleJobLauncher.java:135)\r\n	at org.springframework.core.task.SyncTaskExecutor.execute(SyncTaskExecutor.java:50)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher.run(SimpleJobLauncher.java:128)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(Unknown Source)\r\n	at java.lang.reflect.Method.invoke(Unknown Source)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:333)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:190)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:157)\r\n	at org.springframework.batch.core.configuration.annotation.SimpleBatchConfiguration$PassthruAdvice.invoke(SimpleBatchConfiguration.java:127)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:213)\r\n	at com.sun.proxy.$Proxy102.run(Unknown Source)\r\n	at c','2018-01-10 14:46:50'),(2,2,'step1',2,'2018-01-10 14:47:00','2018-01-10 14:47:00','FAILED',0,0,0,0,0,0,0,0,'FAILED','org.springframework.batch.item.ItemStreamException: Could not convert resource to file: [class path resource [persons.csv]]\r\n	at org.springframework.batch.item.file.FlatFileItemWriter.getOutputState(FlatFileItemWriter.java:384)\r\n	at org.springframework.batch.item.file.FlatFileItemWriter.open(FlatFileItemWriter.java:322)\r\n	at org.springframework.batch.item.support.CompositeItemStream.open(CompositeItemStream.java:96)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.open(TaskletStep.java:310)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:197)\r\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:148)\r\n	at org.springframework.batch.core.job.flow.JobFlowExecutor.executeStep(JobFlowExecutor.java:64)\r\n	at org.springframework.batch.core.job.flow.support.state.StepState.handle(StepState.java:67)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.resume(SimpleFlow.java:169)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.start(SimpleFlow.java:144)\r\n	at org.springframework.batch.core.job.flow.FlowJob.doExecute(FlowJob.java:134)\r\n	at org.springframework.batch.core.job.AbstractJob.execute(AbstractJob.java:306)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher$1.run(SimpleJobLauncher.java:135)\r\n	at org.springframework.core.task.SyncTaskExecutor.execute(SyncTaskExecutor.java:50)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher.run(SimpleJobLauncher.java:128)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(Unknown Source)\r\n	at java.lang.reflect.Method.invoke(Unknown Source)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:333)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:190)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:157)\r\n	at org.springframework.batch.core.configuration.annotation.SimpleBatchConfiguration$PassthruAdvice.invoke(SimpleBatchConfiguration.java:127)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:213)\r\n	at com.sun.proxy.$Proxy102.run(Unknown Source)\r\n	at c','2018-01-10 14:47:00'),(3,2,'step1',3,'2018-01-10 14:47:10','2018-01-10 14:47:10','FAILED',0,0,0,0,0,0,0,0,'FAILED','org.springframework.batch.item.ItemStreamException: Could not convert resource to file: [class path resource [persons.csv]]\r\n	at org.springframework.batch.item.file.FlatFileItemWriter.getOutputState(FlatFileItemWriter.java:384)\r\n	at org.springframework.batch.item.file.FlatFileItemWriter.open(FlatFileItemWriter.java:322)\r\n	at org.springframework.batch.item.support.CompositeItemStream.open(CompositeItemStream.java:96)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.open(TaskletStep.java:310)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:197)\r\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:148)\r\n	at org.springframework.batch.core.job.flow.JobFlowExecutor.executeStep(JobFlowExecutor.java:64)\r\n	at org.springframework.batch.core.job.flow.support.state.StepState.handle(StepState.java:67)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.resume(SimpleFlow.java:169)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.start(SimpleFlow.java:144)\r\n	at org.springframework.batch.core.job.flow.FlowJob.doExecute(FlowJob.java:134)\r\n	at org.springframework.batch.core.job.AbstractJob.execute(AbstractJob.java:306)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher$1.run(SimpleJobLauncher.java:135)\r\n	at org.springframework.core.task.SyncTaskExecutor.execute(SyncTaskExecutor.java:50)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher.run(SimpleJobLauncher.java:128)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(Unknown Source)\r\n	at java.lang.reflect.Method.invoke(Unknown Source)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:333)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:190)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:157)\r\n	at org.springframework.batch.core.configuration.annotation.SimpleBatchConfiguration$PassthruAdvice.invoke(SimpleBatchConfiguration.java:127)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:213)\r\n	at com.sun.proxy.$Proxy102.run(Unknown Source)\r\n	at c','2018-01-10 14:47:10'),(4,2,'step1',4,'2018-01-10 14:47:20','2018-01-10 14:47:20','FAILED',0,0,0,0,0,0,0,0,'FAILED','org.springframework.batch.item.ItemStreamException: Could not convert resource to file: [class path resource [persons.csv]]\r\n	at org.springframework.batch.item.file.FlatFileItemWriter.getOutputState(FlatFileItemWriter.java:384)\r\n	at org.springframework.batch.item.file.FlatFileItemWriter.open(FlatFileItemWriter.java:322)\r\n	at org.springframework.batch.item.support.CompositeItemStream.open(CompositeItemStream.java:96)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.open(TaskletStep.java:310)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:197)\r\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:148)\r\n	at org.springframework.batch.core.job.flow.JobFlowExecutor.executeStep(JobFlowExecutor.java:64)\r\n	at org.springframework.batch.core.job.flow.support.state.StepState.handle(StepState.java:67)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.resume(SimpleFlow.java:169)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.start(SimpleFlow.java:144)\r\n	at org.springframework.batch.core.job.flow.FlowJob.doExecute(FlowJob.java:134)\r\n	at org.springframework.batch.core.job.AbstractJob.execute(AbstractJob.java:306)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher$1.run(SimpleJobLauncher.java:135)\r\n	at org.springframework.core.task.SyncTaskExecutor.execute(SyncTaskExecutor.java:50)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher.run(SimpleJobLauncher.java:128)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(Unknown Source)\r\n	at java.lang.reflect.Method.invoke(Unknown Source)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:333)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:190)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:157)\r\n	at org.springframework.batch.core.configuration.annotation.SimpleBatchConfiguration$PassthruAdvice.invoke(SimpleBatchConfiguration.java:127)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:213)\r\n	at com.sun.proxy.$Proxy102.run(Unknown Source)\r\n	at c','2018-01-10 14:47:20'),(5,2,'step1',5,'2018-01-10 14:47:30','2018-01-10 14:47:30','FAILED',0,0,0,0,0,0,0,0,'FAILED','org.springframework.batch.item.ItemStreamException: Could not convert resource to file: [class path resource [persons.csv]]\r\n	at org.springframework.batch.item.file.FlatFileItemWriter.getOutputState(FlatFileItemWriter.java:384)\r\n	at org.springframework.batch.item.file.FlatFileItemWriter.open(FlatFileItemWriter.java:322)\r\n	at org.springframework.batch.item.support.CompositeItemStream.open(CompositeItemStream.java:96)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.open(TaskletStep.java:310)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:197)\r\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:148)\r\n	at org.springframework.batch.core.job.flow.JobFlowExecutor.executeStep(JobFlowExecutor.java:64)\r\n	at org.springframework.batch.core.job.flow.support.state.StepState.handle(StepState.java:67)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.resume(SimpleFlow.java:169)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.start(SimpleFlow.java:144)\r\n	at org.springframework.batch.core.job.flow.FlowJob.doExecute(FlowJob.java:134)\r\n	at org.springframework.batch.core.job.AbstractJob.execute(AbstractJob.java:306)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher$1.run(SimpleJobLauncher.java:135)\r\n	at org.springframework.core.task.SyncTaskExecutor.execute(SyncTaskExecutor.java:50)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher.run(SimpleJobLauncher.java:128)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(Unknown Source)\r\n	at java.lang.reflect.Method.invoke(Unknown Source)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:333)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:190)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:157)\r\n	at org.springframework.batch.core.configuration.annotation.SimpleBatchConfiguration$PassthruAdvice.invoke(SimpleBatchConfiguration.java:127)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:213)\r\n	at com.sun.proxy.$Proxy102.run(Unknown Source)\r\n	at c','2018-01-10 14:47:30'),(6,2,'step1',6,'2018-01-10 14:47:40','2018-01-10 14:47:40','FAILED',0,0,0,0,0,0,0,0,'FAILED','org.springframework.batch.item.ItemStreamException: Could not convert resource to file: [class path resource [persons.csv]]\r\n	at org.springframework.batch.item.file.FlatFileItemWriter.getOutputState(FlatFileItemWriter.java:384)\r\n	at org.springframework.batch.item.file.FlatFileItemWriter.open(FlatFileItemWriter.java:322)\r\n	at org.springframework.batch.item.support.CompositeItemStream.open(CompositeItemStream.java:96)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.open(TaskletStep.java:310)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:197)\r\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:148)\r\n	at org.springframework.batch.core.job.flow.JobFlowExecutor.executeStep(JobFlowExecutor.java:64)\r\n	at org.springframework.batch.core.job.flow.support.state.StepState.handle(StepState.java:67)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.resume(SimpleFlow.java:169)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.start(SimpleFlow.java:144)\r\n	at org.springframework.batch.core.job.flow.FlowJob.doExecute(FlowJob.java:134)\r\n	at org.springframework.batch.core.job.AbstractJob.execute(AbstractJob.java:306)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher$1.run(SimpleJobLauncher.java:135)\r\n	at org.springframework.core.task.SyncTaskExecutor.execute(SyncTaskExecutor.java:50)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher.run(SimpleJobLauncher.java:128)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(Unknown Source)\r\n	at java.lang.reflect.Method.invoke(Unknown Source)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:333)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:190)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:157)\r\n	at org.springframework.batch.core.configuration.annotation.SimpleBatchConfiguration$PassthruAdvice.invoke(SimpleBatchConfiguration.java:127)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:213)\r\n	at com.sun.proxy.$Proxy102.run(Unknown Source)\r\n	at c','2018-01-10 14:47:40'),(7,2,'step1',7,'2018-01-10 14:47:50','2018-01-10 14:47:50','FAILED',0,0,0,0,0,0,0,0,'FAILED','org.springframework.batch.item.ItemStreamException: Could not convert resource to file: [class path resource [persons.csv]]\r\n	at org.springframework.batch.item.file.FlatFileItemWriter.getOutputState(FlatFileItemWriter.java:384)\r\n	at org.springframework.batch.item.file.FlatFileItemWriter.open(FlatFileItemWriter.java:322)\r\n	at org.springframework.batch.item.support.CompositeItemStream.open(CompositeItemStream.java:96)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.open(TaskletStep.java:310)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:197)\r\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:148)\r\n	at org.springframework.batch.core.job.flow.JobFlowExecutor.executeStep(JobFlowExecutor.java:64)\r\n	at org.springframework.batch.core.job.flow.support.state.StepState.handle(StepState.java:67)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.resume(SimpleFlow.java:169)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.start(SimpleFlow.java:144)\r\n	at org.springframework.batch.core.job.flow.FlowJob.doExecute(FlowJob.java:134)\r\n	at org.springframework.batch.core.job.AbstractJob.execute(AbstractJob.java:306)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher$1.run(SimpleJobLauncher.java:135)\r\n	at org.springframework.core.task.SyncTaskExecutor.execute(SyncTaskExecutor.java:50)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher.run(SimpleJobLauncher.java:128)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(Unknown Source)\r\n	at java.lang.reflect.Method.invoke(Unknown Source)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:333)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:190)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:157)\r\n	at org.springframework.batch.core.configuration.annotation.SimpleBatchConfiguration$PassthruAdvice.invoke(SimpleBatchConfiguration.java:127)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:213)\r\n	at com.sun.proxy.$Proxy102.run(Unknown Source)\r\n	at c','2018-01-10 14:47:50'),(8,2,'step1',8,'2018-01-10 14:48:00','2018-01-10 14:48:00','FAILED',0,0,0,0,0,0,0,0,'FAILED','org.springframework.batch.item.ItemStreamException: Could not convert resource to file: [class path resource [persons.csv]]\r\n	at org.springframework.batch.item.file.FlatFileItemWriter.getOutputState(FlatFileItemWriter.java:384)\r\n	at org.springframework.batch.item.file.FlatFileItemWriter.open(FlatFileItemWriter.java:322)\r\n	at org.springframework.batch.item.support.CompositeItemStream.open(CompositeItemStream.java:96)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.open(TaskletStep.java:310)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:197)\r\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:148)\r\n	at org.springframework.batch.core.job.flow.JobFlowExecutor.executeStep(JobFlowExecutor.java:64)\r\n	at org.springframework.batch.core.job.flow.support.state.StepState.handle(StepState.java:67)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.resume(SimpleFlow.java:169)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.start(SimpleFlow.java:144)\r\n	at org.springframework.batch.core.job.flow.FlowJob.doExecute(FlowJob.java:134)\r\n	at org.springframework.batch.core.job.AbstractJob.execute(AbstractJob.java:306)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher$1.run(SimpleJobLauncher.java:135)\r\n	at org.springframework.core.task.SyncTaskExecutor.execute(SyncTaskExecutor.java:50)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher.run(SimpleJobLauncher.java:128)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(Unknown Source)\r\n	at java.lang.reflect.Method.invoke(Unknown Source)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:333)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:190)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:157)\r\n	at org.springframework.batch.core.configuration.annotation.SimpleBatchConfiguration$PassthruAdvice.invoke(SimpleBatchConfiguration.java:127)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:213)\r\n	at com.sun.proxy.$Proxy102.run(Unknown Source)\r\n	at c','2018-01-10 14:48:00'),(9,2,'step1',9,'2018-01-10 14:48:10','2018-01-10 14:48:10','FAILED',0,0,0,0,0,0,0,0,'FAILED','org.springframework.batch.item.ItemStreamException: Could not convert resource to file: [class path resource [persons.csv]]\r\n	at org.springframework.batch.item.file.FlatFileItemWriter.getOutputState(FlatFileItemWriter.java:384)\r\n	at org.springframework.batch.item.file.FlatFileItemWriter.open(FlatFileItemWriter.java:322)\r\n	at org.springframework.batch.item.support.CompositeItemStream.open(CompositeItemStream.java:96)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.open(TaskletStep.java:310)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:197)\r\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:148)\r\n	at org.springframework.batch.core.job.flow.JobFlowExecutor.executeStep(JobFlowExecutor.java:64)\r\n	at org.springframework.batch.core.job.flow.support.state.StepState.handle(StepState.java:67)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.resume(SimpleFlow.java:169)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.start(SimpleFlow.java:144)\r\n	at org.springframework.batch.core.job.flow.FlowJob.doExecute(FlowJob.java:134)\r\n	at org.springframework.batch.core.job.AbstractJob.execute(AbstractJob.java:306)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher$1.run(SimpleJobLauncher.java:135)\r\n	at org.springframework.core.task.SyncTaskExecutor.execute(SyncTaskExecutor.java:50)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher.run(SimpleJobLauncher.java:128)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(Unknown Source)\r\n	at java.lang.reflect.Method.invoke(Unknown Source)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:333)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:190)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:157)\r\n	at org.springframework.batch.core.configuration.annotation.SimpleBatchConfiguration$PassthruAdvice.invoke(SimpleBatchConfiguration.java:127)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:213)\r\n	at com.sun.proxy.$Proxy102.run(Unknown Source)\r\n	at c','2018-01-10 14:48:10'),(10,3,'step1',10,'2018-01-10 14:50:00','2018-01-10 14:50:00','COMPLETED',1,1,0,1,0,0,0,0,'COMPLETED','','2018-01-10 14:50:00'),(11,3,'step1',11,'2018-01-10 14:50:10','2018-01-10 14:50:10','COMPLETED',1,1,0,1,0,0,0,0,'COMPLETED','','2018-01-10 14:50:10'),(12,3,'step1',12,'2018-01-10 14:50:20','2018-01-10 14:50:20','COMPLETED',1,1,0,1,0,0,0,0,'COMPLETED','','2018-01-10 14:50:20'),(13,3,'step1',13,'2018-01-10 14:50:30','2018-01-10 14:50:30','COMPLETED',1,1,0,1,0,0,0,0,'COMPLETED','','2018-01-10 14:50:30'),(14,3,'step1',14,'2018-01-10 14:50:40','2018-01-10 14:50:40','COMPLETED',1,1,0,1,0,0,0,0,'COMPLETED','','2018-01-10 14:50:40'),(15,3,'step1',15,'2018-01-10 14:50:50','2018-01-10 14:50:50','COMPLETED',1,1,0,1,0,0,0,0,'COMPLETED','','2018-01-10 14:50:50'),(16,3,'step1',17,'2018-01-10 15:02:00','2018-01-10 15:02:00','COMPLETED',1,1,0,1,0,0,0,0,'COMPLETED','','2018-01-10 15:02:00'),(17,3,'step1',18,'2018-01-10 15:03:00','2018-01-10 15:03:00','COMPLETED',1,1,0,1,0,0,0,0,'COMPLETED','','2018-01-10 15:03:00'),(18,3,'step1',19,'2018-01-10 15:04:00','2018-01-10 15:04:00','COMPLETED',1,1,0,1,0,0,0,0,'COMPLETED','','2018-01-10 15:04:00'),(19,2,'step1',20,'2018-01-10 18:23:00','2018-01-10 18:23:00','FAILED',0,0,0,0,0,0,0,0,'FAILED','java.lang.IllegalArgumentException: The resource must be set\r\n	at org.springframework.util.Assert.notNull(Assert.java:115)\r\n	at org.springframework.batch.item.file.FlatFileItemWriter.open(FlatFileItemWriter.java:320)\r\n	at org.springframework.batch.item.support.CompositeItemStream.open(CompositeItemStream.java:96)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.open(TaskletStep.java:310)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:197)\r\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:148)\r\n	at org.springframework.batch.core.job.flow.JobFlowExecutor.executeStep(JobFlowExecutor.java:64)\r\n	at org.springframework.batch.core.job.flow.support.state.StepState.handle(StepState.java:67)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.resume(SimpleFlow.java:169)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.start(SimpleFlow.java:144)\r\n	at org.springframework.batch.core.job.flow.FlowJob.doExecute(FlowJob.java:134)\r\n	at org.springframework.batch.core.job.AbstractJob.execute(AbstractJob.java:306)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher$1.run(SimpleJobLauncher.java:135)\r\n	at org.springframework.core.task.SyncTaskExecutor.execute(SyncTaskExecutor.java:50)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher.run(SimpleJobLauncher.java:128)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(Unknown Source)\r\n	at java.lang.reflect.Method.invoke(Unknown Source)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:333)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:190)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:157)\r\n	at org.springframework.batch.core.configuration.annotation.SimpleBatchConfiguration$PassthruAdvice.invoke(SimpleBatchConfiguration.java:127)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:213)\r\n	at com.sun.proxy.$Proxy102.run(Unknown Source)\r\n	at com.dcsolar.springbatch.MyScheduler.myScheduler(MyScheduler.java:32)\r\n	at sun.reflect.NativeMethodAccessor','2018-01-10 18:23:00'),(20,2,'step1',21,'2018-01-10 18:24:00','2018-01-10 18:24:00','FAILED',0,0,0,0,0,0,0,0,'FAILED','java.lang.IllegalArgumentException: The resource must be set\r\n	at org.springframework.util.Assert.notNull(Assert.java:115)\r\n	at org.springframework.batch.item.file.FlatFileItemWriter.open(FlatFileItemWriter.java:320)\r\n	at org.springframework.batch.item.support.CompositeItemStream.open(CompositeItemStream.java:96)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.open(TaskletStep.java:310)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:197)\r\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:148)\r\n	at org.springframework.batch.core.job.flow.JobFlowExecutor.executeStep(JobFlowExecutor.java:64)\r\n	at org.springframework.batch.core.job.flow.support.state.StepState.handle(StepState.java:67)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.resume(SimpleFlow.java:169)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.start(SimpleFlow.java:144)\r\n	at org.springframework.batch.core.job.flow.FlowJob.doExecute(FlowJob.java:134)\r\n	at org.springframework.batch.core.job.AbstractJob.execute(AbstractJob.java:306)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher$1.run(SimpleJobLauncher.java:135)\r\n	at org.springframework.core.task.SyncTaskExecutor.execute(SyncTaskExecutor.java:50)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher.run(SimpleJobLauncher.java:128)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(Unknown Source)\r\n	at java.lang.reflect.Method.invoke(Unknown Source)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:333)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:190)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:157)\r\n	at org.springframework.batch.core.configuration.annotation.SimpleBatchConfiguration$PassthruAdvice.invoke(SimpleBatchConfiguration.java:127)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:213)\r\n	at com.sun.proxy.$Proxy102.run(Unknown Source)\r\n	at com.dcsolar.springbatch.MyScheduler.myScheduler(MyScheduler.java:32)\r\n	at sun.reflect.NativeMethodAccessor','2018-01-10 18:24:00'),(21,2,'step1',22,'2018-01-10 18:25:00','2018-01-10 18:25:00','FAILED',0,0,0,0,0,0,0,0,'FAILED','java.lang.IllegalArgumentException: The resource must be set\r\n	at org.springframework.util.Assert.notNull(Assert.java:115)\r\n	at org.springframework.batch.item.file.FlatFileItemWriter.open(FlatFileItemWriter.java:320)\r\n	at org.springframework.batch.item.support.CompositeItemStream.open(CompositeItemStream.java:96)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.open(TaskletStep.java:310)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:197)\r\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:148)\r\n	at org.springframework.batch.core.job.flow.JobFlowExecutor.executeStep(JobFlowExecutor.java:64)\r\n	at org.springframework.batch.core.job.flow.support.state.StepState.handle(StepState.java:67)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.resume(SimpleFlow.java:169)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.start(SimpleFlow.java:144)\r\n	at org.springframework.batch.core.job.flow.FlowJob.doExecute(FlowJob.java:134)\r\n	at org.springframework.batch.core.job.AbstractJob.execute(AbstractJob.java:306)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher$1.run(SimpleJobLauncher.java:135)\r\n	at org.springframework.core.task.SyncTaskExecutor.execute(SyncTaskExecutor.java:50)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher.run(SimpleJobLauncher.java:128)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(Unknown Source)\r\n	at java.lang.reflect.Method.invoke(Unknown Source)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:333)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:190)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:157)\r\n	at org.springframework.batch.core.configuration.annotation.SimpleBatchConfiguration$PassthruAdvice.invoke(SimpleBatchConfiguration.java:127)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:213)\r\n	at com.sun.proxy.$Proxy102.run(Unknown Source)\r\n	at com.dcsolar.springbatch.MyScheduler.myScheduler(MyScheduler.java:32)\r\n	at sun.reflect.NativeMethodAccessor','2018-01-10 18:25:00'),(22,2,'step1',23,'2018-01-10 18:26:00','2018-01-10 18:26:00','FAILED',0,0,0,0,0,0,0,0,'FAILED','java.lang.IllegalArgumentException: The resource must be set\r\n	at org.springframework.util.Assert.notNull(Assert.java:115)\r\n	at org.springframework.batch.item.file.FlatFileItemWriter.open(FlatFileItemWriter.java:320)\r\n	at org.springframework.batch.item.support.CompositeItemStream.open(CompositeItemStream.java:96)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.open(TaskletStep.java:310)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:197)\r\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:148)\r\n	at org.springframework.batch.core.job.flow.JobFlowExecutor.executeStep(JobFlowExecutor.java:64)\r\n	at org.springframework.batch.core.job.flow.support.state.StepState.handle(StepState.java:67)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.resume(SimpleFlow.java:169)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.start(SimpleFlow.java:144)\r\n	at org.springframework.batch.core.job.flow.FlowJob.doExecute(FlowJob.java:134)\r\n	at org.springframework.batch.core.job.AbstractJob.execute(AbstractJob.java:306)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher$1.run(SimpleJobLauncher.java:135)\r\n	at org.springframework.core.task.SyncTaskExecutor.execute(SyncTaskExecutor.java:50)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher.run(SimpleJobLauncher.java:128)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(Unknown Source)\r\n	at java.lang.reflect.Method.invoke(Unknown Source)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:333)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:190)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:157)\r\n	at org.springframework.batch.core.configuration.annotation.SimpleBatchConfiguration$PassthruAdvice.invoke(SimpleBatchConfiguration.java:127)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:213)\r\n	at com.sun.proxy.$Proxy102.run(Unknown Source)\r\n	at com.dcsolar.springbatch.MyScheduler.myScheduler(MyScheduler.java:32)\r\n	at sun.reflect.NativeMethodAccessor','2018-01-10 18:26:00'),(23,2,'step1',24,'2018-01-10 18:27:00','2018-01-10 18:27:00','FAILED',0,0,0,0,0,0,0,0,'FAILED','java.lang.IllegalArgumentException: The resource must be set\r\n	at org.springframework.util.Assert.notNull(Assert.java:115)\r\n	at org.springframework.batch.item.file.FlatFileItemWriter.open(FlatFileItemWriter.java:320)\r\n	at org.springframework.batch.item.support.CompositeItemStream.open(CompositeItemStream.java:96)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.open(TaskletStep.java:310)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:197)\r\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:148)\r\n	at org.springframework.batch.core.job.flow.JobFlowExecutor.executeStep(JobFlowExecutor.java:64)\r\n	at org.springframework.batch.core.job.flow.support.state.StepState.handle(StepState.java:67)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.resume(SimpleFlow.java:169)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.start(SimpleFlow.java:144)\r\n	at org.springframework.batch.core.job.flow.FlowJob.doExecute(FlowJob.java:134)\r\n	at org.springframework.batch.core.job.AbstractJob.execute(AbstractJob.java:306)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher$1.run(SimpleJobLauncher.java:135)\r\n	at org.springframework.core.task.SyncTaskExecutor.execute(SyncTaskExecutor.java:50)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher.run(SimpleJobLauncher.java:128)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(Unknown Source)\r\n	at java.lang.reflect.Method.invoke(Unknown Source)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:333)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:190)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:157)\r\n	at org.springframework.batch.core.configuration.annotation.SimpleBatchConfiguration$PassthruAdvice.invoke(SimpleBatchConfiguration.java:127)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:213)\r\n	at com.sun.proxy.$Proxy102.run(Unknown Source)\r\n	at com.dcsolar.springbatch.MyScheduler.myScheduler(MyScheduler.java:32)\r\n	at sun.reflect.NativeMethodAccessor','2018-01-10 18:27:00'),(24,2,'step1',25,'2018-01-10 18:28:00','2018-01-10 18:28:00','FAILED',0,0,0,0,0,0,0,0,'FAILED','java.lang.IllegalArgumentException: The resource must be set\r\n	at org.springframework.util.Assert.notNull(Assert.java:115)\r\n	at org.springframework.batch.item.file.FlatFileItemWriter.open(FlatFileItemWriter.java:320)\r\n	at org.springframework.batch.item.support.CompositeItemStream.open(CompositeItemStream.java:96)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.open(TaskletStep.java:310)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:197)\r\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:148)\r\n	at org.springframework.batch.core.job.flow.JobFlowExecutor.executeStep(JobFlowExecutor.java:64)\r\n	at org.springframework.batch.core.job.flow.support.state.StepState.handle(StepState.java:67)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.resume(SimpleFlow.java:169)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.start(SimpleFlow.java:144)\r\n	at org.springframework.batch.core.job.flow.FlowJob.doExecute(FlowJob.java:134)\r\n	at org.springframework.batch.core.job.AbstractJob.execute(AbstractJob.java:306)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher$1.run(SimpleJobLauncher.java:135)\r\n	at org.springframework.core.task.SyncTaskExecutor.execute(SyncTaskExecutor.java:50)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher.run(SimpleJobLauncher.java:128)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(Unknown Source)\r\n	at java.lang.reflect.Method.invoke(Unknown Source)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:333)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:190)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:157)\r\n	at org.springframework.batch.core.configuration.annotation.SimpleBatchConfiguration$PassthruAdvice.invoke(SimpleBatchConfiguration.java:127)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:213)\r\n	at com.sun.proxy.$Proxy102.run(Unknown Source)\r\n	at com.dcsolar.springbatch.MyScheduler.myScheduler(MyScheduler.java:32)\r\n	at sun.reflect.NativeMethodAccessor','2018-01-10 18:28:00'),(25,6,'step1',26,'2018-01-10 18:44:00','2018-01-10 18:44:01','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-10 18:44:01'),(26,6,'step1',27,'2018-01-10 18:50:00','2018-01-10 18:50:01','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-10 18:50:01'),(27,6,'step1',28,'2018-01-11 10:16:00','2018-01-11 10:16:01','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 10:16:01'),(28,6,'step1',29,'2018-01-11 10:17:00','2018-01-11 10:17:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 10:17:00'),(29,6,'step1',30,'2018-01-11 10:18:00','2018-01-11 10:18:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 10:18:00'),(30,6,'step1',31,'2018-01-11 10:19:00','2018-01-11 10:19:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 10:19:00'),(31,6,'step1',32,'2018-01-11 10:20:00','2018-01-11 10:20:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 10:20:00'),(32,6,'step1',33,'2018-01-11 10:21:00','2018-01-11 10:21:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 10:21:00'),(33,6,'step1',34,'2018-01-11 10:22:00','2018-01-11 10:22:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 10:22:00'),(34,6,'step1',35,'2018-01-11 10:23:00','2018-01-11 10:23:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 10:23:00'),(35,6,'step1',36,'2018-01-11 10:27:00','2018-01-11 10:27:01','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 10:27:01'),(36,6,'step1',37,'2018-01-11 10:28:00','2018-01-11 10:28:01','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 10:28:01'),(37,6,'step1',38,'2018-01-11 10:29:00','2018-01-11 10:29:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 10:29:00'),(38,6,'step1',39,'2018-01-11 10:30:00','2018-01-11 10:30:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 10:30:00'),(39,6,'step1',40,'2018-01-11 10:31:00','2018-01-11 10:31:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 10:31:00'),(40,6,'step1',41,'2018-01-11 10:32:00','2018-01-11 10:32:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 10:32:00'),(41,6,'step1',42,'2018-01-11 10:33:00','2018-01-11 10:33:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 10:33:00'),(42,6,'step1',43,'2018-01-11 10:34:00','2018-01-11 10:34:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 10:34:00'),(43,6,'step1',44,'2018-01-11 10:35:00','2018-01-11 10:35:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 10:35:00'),(44,6,'step1',45,'2018-01-11 10:36:00','2018-01-11 10:36:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 10:36:00'),(45,6,'step1',46,'2018-01-11 10:37:00','2018-01-11 10:37:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 10:37:00'),(46,6,'step1',47,'2018-01-11 10:38:00','2018-01-11 10:38:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 10:38:00'),(47,6,'step1',48,'2018-01-11 10:39:00','2018-01-11 10:39:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 10:39:00'),(48,6,'step1',49,'2018-01-11 10:40:00','2018-01-11 10:40:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 10:40:00'),(49,6,'step1',50,'2018-01-11 10:41:00','2018-01-11 10:41:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 10:41:00'),(50,6,'step1',51,'2018-01-11 10:42:00','2018-01-11 10:42:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 10:42:00'),(51,6,'step1',52,'2018-01-11 10:43:00','2018-01-11 10:43:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 10:43:00'),(52,6,'step1',53,'2018-01-11 10:44:00','2018-01-11 10:44:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 10:44:00'),(53,6,'step1',54,'2018-01-11 10:45:00','2018-01-11 10:45:02','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 10:45:02'),(54,6,'step1',55,'2018-01-11 10:46:00','2018-01-11 10:46:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 10:46:00'),(55,6,'step1',56,'2018-01-11 10:47:00','2018-01-11 10:47:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 10:47:00'),(56,6,'step1',57,'2018-01-11 10:48:00','2018-01-11 10:48:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 10:48:00'),(57,6,'step1',58,'2018-01-11 10:49:00','2018-01-11 10:49:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 10:49:00'),(58,6,'step1',59,'2018-01-11 10:50:00','2018-01-11 10:50:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 10:50:00'),(59,6,'step1',60,'2018-01-11 10:51:00','2018-01-11 10:51:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 10:51:00'),(60,6,'step1',61,'2018-01-11 10:52:00','2018-01-11 10:52:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 10:52:00'),(61,6,'step1',62,'2018-01-11 10:53:00','2018-01-11 10:53:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 10:53:00'),(62,6,'step1',63,'2018-01-11 10:54:00','2018-01-11 10:54:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 10:54:00'),(63,6,'step1',64,'2018-01-11 10:55:00','2018-01-11 10:55:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 10:55:00'),(64,6,'step1',65,'2018-01-11 10:56:00','2018-01-11 10:56:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 10:56:00'),(65,6,'step1',66,'2018-01-11 10:57:00','2018-01-11 10:57:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 10:57:00'),(66,6,'step1',67,'2018-01-11 10:58:00','2018-01-11 10:58:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 10:58:00'),(67,6,'step1',68,'2018-01-11 10:59:00','2018-01-11 10:59:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 10:59:00'),(68,6,'step1',69,'2018-01-11 11:00:00','2018-01-11 11:00:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 11:00:00'),(69,6,'step1',70,'2018-01-11 11:01:00','2018-01-11 11:01:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 11:01:00'),(70,6,'step1',71,'2018-01-11 11:02:00','2018-01-11 11:02:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 11:02:00'),(71,6,'step1',72,'2018-01-11 11:03:00','2018-01-11 11:03:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 11:03:00'),(72,6,'step1',73,'2018-01-11 11:04:00','2018-01-11 11:04:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 11:04:00'),(73,6,'step1',74,'2018-01-11 11:07:00','2018-01-11 11:07:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 11:07:00'),(74,6,'step1',75,'2018-01-11 11:08:00','2018-01-11 11:08:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 11:08:00'),(75,6,'step1',76,'2018-01-11 11:09:00','2018-01-11 11:09:01','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 11:09:01'),(76,6,'step1',77,'2018-01-11 11:10:00','2018-01-11 11:10:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 11:10:00'),(77,6,'step1',78,'2018-01-11 11:11:00','2018-01-11 11:11:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 11:11:00'),(78,6,'step1',79,'2018-01-11 11:12:00','2018-01-11 11:12:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 11:12:00'),(79,6,'step1',80,'2018-01-11 11:13:00','2018-01-11 11:13:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 11:13:00'),(80,6,'step1',81,'2018-01-11 11:14:00','2018-01-11 11:14:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 11:14:00'),(81,6,'step1',82,'2018-01-11 11:15:00','2018-01-11 11:15:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 11:15:00'),(82,6,'step1',83,'2018-01-11 11:16:00','2018-01-11 11:16:01','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 11:16:01'),(83,6,'step1',84,'2018-01-11 11:17:00','2018-01-11 11:17:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 11:17:00'),(84,6,'step1',85,'2018-01-11 11:18:00','2018-01-11 11:18:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 11:18:00'),(85,6,'step1',86,'2018-01-11 11:19:00','2018-01-11 11:19:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 11:19:00'),(86,6,'step1',87,'2018-01-11 11:20:00','2018-01-11 11:20:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 11:20:00'),(87,6,'step1',88,'2018-01-11 11:21:00','2018-01-11 11:21:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 11:21:00'),(88,6,'step1',89,'2018-01-11 11:27:13','2018-01-11 11:27:14','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 11:27:14'),(89,6,'step1',90,'2018-01-11 11:28:00','2018-01-11 11:28:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 11:28:00'),(90,6,'step1',91,'2018-01-11 11:29:00','2018-01-11 11:29:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 11:29:00'),(91,6,'step1',92,'2018-01-11 11:30:00','2018-01-11 11:30:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 11:30:00'),(92,6,'step1',93,'2018-01-11 11:31:00','2018-01-11 11:31:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 11:31:00'),(93,6,'step1',94,'2018-01-11 11:32:00','2018-01-11 11:32:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 11:32:00'),(94,6,'step1',95,'2018-01-11 11:33:00','2018-01-11 11:33:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 11:33:00'),(95,6,'step1',96,'2018-01-11 11:34:00','2018-01-11 11:34:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 11:34:00'),(96,6,'step1',97,'2018-01-11 11:35:00','2018-01-11 11:35:01','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 11:35:01'),(97,6,'step1',98,'2018-01-11 11:36:00','2018-01-11 11:36:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 11:36:00'),(98,6,'step1',99,'2018-01-11 11:37:00','2018-01-11 11:37:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 11:37:00'),(99,6,'step1',100,'2018-01-11 11:38:00','2018-01-11 11:38:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 11:38:00'),(100,6,'step1',101,'2018-01-11 11:39:00','2018-01-11 11:39:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 11:39:00'),(101,6,'step1',102,'2018-01-11 11:40:00','2018-01-11 11:40:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 11:40:00'),(102,6,'step1',103,'2018-01-11 11:41:00','2018-01-11 11:41:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 11:41:00'),(103,6,'step1',104,'2018-01-11 11:42:00','2018-01-11 11:42:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 11:42:00'),(104,6,'step1',105,'2018-01-11 11:43:00','2018-01-11 11:43:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 11:43:00'),(105,6,'step1',106,'2018-01-11 11:44:00','2018-01-11 11:44:01','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 11:44:01'),(106,6,'step1',107,'2018-01-11 11:45:00','2018-01-11 11:45:01','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 11:45:01'),(107,6,'step1',108,'2018-01-11 11:46:00','2018-01-11 11:46:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 11:46:00'),(108,6,'step1',109,'2018-01-11 11:47:00','2018-01-11 11:47:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 11:47:00'),(109,6,'step1',110,'2018-01-11 11:48:00','2018-01-11 11:48:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 11:48:00'),(110,6,'step1',111,'2018-01-11 11:49:00','2018-01-11 11:49:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 11:49:00'),(111,6,'step1',112,'2018-01-11 11:50:00','2018-01-11 11:50:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 11:50:00'),(112,6,'step1',113,'2018-01-11 11:51:00','2018-01-11 11:51:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 11:51:00'),(113,6,'step1',114,'2018-01-11 11:52:00','2018-01-11 11:52:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 11:52:00'),(114,6,'step1',115,'2018-01-11 11:53:00','2018-01-11 11:53:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 11:53:00'),(115,6,'step1',116,'2018-01-11 11:54:00','2018-01-11 11:54:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 11:54:00'),(116,6,'step1',117,'2018-01-11 11:55:00','2018-01-11 11:55:00','COMPLETED',4,33,0,33,0,0,0,0,'COMPLETED','','2018-01-11 11:55:00');
/*!40000 ALTER TABLE `batch_step_execution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch_step_execution_context`
--

DROP TABLE IF EXISTS `batch_step_execution_context`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `batch_step_execution_context` (
  `STEP_EXECUTION_ID` bigint(20) NOT NULL,
  `SHORT_CONTEXT` varchar(2500) NOT NULL,
  `SERIALIZED_CONTEXT` text,
  PRIMARY KEY (`STEP_EXECUTION_ID`),
  CONSTRAINT `STEP_EXEC_CTX_FK` FOREIGN KEY (`STEP_EXECUTION_ID`) REFERENCES `batch_step_execution` (`STEP_EXECUTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch_step_execution_context`
--

LOCK TABLES `batch_step_execution_context` WRITE;
/*!40000 ALTER TABLE `batch_step_execution_context` DISABLE KEYS */;
INSERT INTO `batch_step_execution_context` VALUES (1,'{\"map\":[\"\"]}',NULL),(2,'{\"map\":[\"\"]}',NULL),(3,'{\"map\":[\"\"]}',NULL),(4,'{\"map\":[\"\"]}',NULL),(5,'{\"map\":[\"\"]}',NULL),(6,'{\"map\":[\"\"]}',NULL),(7,'{\"map\":[\"\"]}',NULL),(8,'{\"map\":[\"\"]}',NULL),(9,'{\"map\":[\"\"]}',NULL),(10,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":2},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(11,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":2},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(12,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":2},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(13,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":2},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(14,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":2},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(15,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":2},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(16,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":2},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(17,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":2},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(18,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":2},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(19,'{\"map\":[\"\"]}',NULL),(20,'{\"map\":[\"\"]}',NULL),(21,'{\"map\":[\"\"]}',NULL),(22,'{\"map\":[\"\"]}',NULL),(23,'{\"map\":[\"\"]}',NULL),(24,'{\"map\":[\"\"]}',NULL),(25,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(26,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(27,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(28,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(29,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(30,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(31,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(32,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(33,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(34,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(35,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(36,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(37,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(38,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(39,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(40,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(41,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(42,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(43,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(44,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(45,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(46,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(47,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(48,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(49,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(50,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(51,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(52,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(53,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(54,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(55,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(56,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(57,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(58,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(59,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(60,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(61,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(62,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(63,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(64,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(65,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(66,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(67,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(68,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(69,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(70,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(71,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(72,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(73,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(74,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(75,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(76,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(77,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(78,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(79,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(80,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(81,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(82,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(83,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(84,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(85,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(86,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(87,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(88,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(89,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(90,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(91,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(92,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(93,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(94,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(95,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(96,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(97,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(98,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(99,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(100,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(101,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(102,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(103,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(104,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(105,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(106,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(107,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(108,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(109,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(110,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(111,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(112,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(113,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(114,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(115,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL),(116,'{\"map\":[{\"entry\":[{\"string\":\"JdbcCursorItemReader.read.count\",\"int\":34},{\"string\":[\"batch.taskletType\",\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\"]},{\"string\":[\"batch.stepType\",\"org.springframework.batch.core.step.tasklet.TaskletStep\"]}]}]}',NULL);
/*!40000 ALTER TABLE `batch_step_execution_context` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch_step_execution_seq`
--

DROP TABLE IF EXISTS `batch_step_execution_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `batch_step_execution_seq` (
  `ID` bigint(20) NOT NULL,
  `UNIQUE_KEY` char(1) NOT NULL,
  UNIQUE KEY `UNIQUE_KEY_UN` (`UNIQUE_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch_step_execution_seq`
--

LOCK TABLES `batch_step_execution_seq` WRITE;
/*!40000 ALTER TABLE `batch_step_execution_seq` DISABLE KEYS */;
INSERT INTO `batch_step_execution_seq` VALUES (116,'0');
/*!40000 ALTER TABLE `batch_step_execution_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device`
--

DROP TABLE IF EXISTS `device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `device` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DEVICE_TYPE` varchar(100) DEFAULT NULL,
  `VIN` varchar(45) DEFAULT NULL,
  `STATUS_ID` int(11) DEFAULT '2',
  `IS_ACTIVE` tinyint(1) DEFAULT NULL,
  `COMPLIANCE_DATE` datetime DEFAULT NULL,
  `BASE_LOCATION` varchar(255) DEFAULT NULL,
  `DEPLOY_LOCATION` varchar(255) DEFAULT NULL,
  `CREATED_DATE` datetime DEFAULT NULL,
  `LAST_MOD_DATE` datetime DEFAULT NULL,
  `IMG_LOCATION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1039 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device`
--

LOCK TABLES `device` WRITE;
/*!40000 ALTER TABLE `device` DISABLE KEYS */;
INSERT INTO `device` VALUES (1035,'Hybrid Generator','VIN165327',13,0,'0022-01-10 05:30:00','4901 Park Road,Benicia,\nCalifornia-94510','220 Old River,Bakers Field,','2017-09-28 15:07:15','2017-11-06 15:06:50','app/img/hybrid_gen.jpg'),(1036,'Basic Generator','VIN20A165977',11,0,NULL,'4901 Park Road,Benicia,\nCalifornia-94510','4901 Park Road,Benicia,','2017-09-28 16:04:58','2017-11-06 15:07:10','app/img/telecom.png'),(1037,'Hybrid Car Charger','FC172212',12,0,NULL,'4901 Park Road,Benicia,\nCalifornia-94510','220 Old River,Bakers Field,\nCalifornia-94510','2017-10-03 10:18:21','2017-11-06 15:07:21','app/img/light-towers.jpg'),(1038,'Personal Charging Station','VIN20172218',14,0,NULL,'4901 Park Road,Benicia,\nCalifornia-94510','4901 Park Road,Benicia,','2017-10-07 09:40:24','2017-11-06 15:07:34','app/img/EV-station.png');
/*!40000 ALTER TABLE `device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dropdown_category`
--

DROP TABLE IF EXISTS `dropdown_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dropdown_category` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CATEGORY_NAME` varchar(255) DEFAULT NULL,
  `CATEGORY_DESC` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dropdown_category`
--

LOCK TABLES `dropdown_category` WRITE;
/*!40000 ALTER TABLE `dropdown_category` DISABLE KEYS */;
INSERT INTO `dropdown_category` VALUES (1,'Groups','groups'),(2,'TicketTitle','ticketTitle');
/*!40000 ALTER TABLE `dropdown_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dropdown_values`
--

DROP TABLE IF EXISTS `dropdown_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dropdown_values` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DROPDOWN_CATEGORY_ID` int(11) DEFAULT NULL,
  `KEY` varchar(255) DEFAULT NULL,
  `VALUE` longtext,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dropdown_values`
--

LOCK TABLES `dropdown_values` WRITE;
/*!40000 ALTER TABLE `dropdown_values` DISABLE KEYS */;
INSERT INTO `dropdown_values` VALUES (1,1,'groups','value'),(2,2,'lightning','Lightning Generator'),(3,2,'Solar Panel','Solar Panel');
/*!40000 ALTER TABLE `dropdown_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_mapping`
--

DROP TABLE IF EXISTS `group_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_mapping` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GROUP_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_mapping`
--

LOCK TABLES `group_mapping` WRITE;
/*!40000 ALTER TABLE `group_mapping` DISABLE KEYS */;
INSERT INTO `group_mapping` VALUES (3,0,4),(4,0,5),(5,0,6),(6,0,7),(7,0,8),(8,0,9),(9,2,10),(10,0,11),(13,1,12),(15,2,2),(16,2,3),(17,1,18),(18,0,19),(19,0,20),(20,0,21),(21,0,22);
/*!40000 ALTER TABLE `group_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issue`
--

DROP TABLE IF EXISTS `issue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issue` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `OPENED_BY` varchar(45) DEFAULT NULL,
  `OPENED_DATE` datetime DEFAULT NULL,
  `ISSUE` varchar(45) DEFAULT NULL,
  `ISSUE_DESCRIPTION` varchar(255) DEFAULT NULL,
  `STATUS_ID` int(11) DEFAULT '2',
  `SEVERITY` int(11) DEFAULT NULL,
  `LAST_MOD_USER` varchar(45) DEFAULT NULL,
  `LAST_MOD_DATE` datetime DEFAULT NULL,
  `DEVICE_ID` int(11) DEFAULT NULL,
  `TECH_ID` int(11) DEFAULT NULL,
  `CUSTOMER_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue`
--

LOCK TABLES `issue` WRITE;
/*!40000 ALTER TABLE `issue` DISABLE KEYS */;
/*!40000 ALTER TABLE `issue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parent_child_mapping`
--

DROP TABLE IF EXISTS `parent_child_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parent_child_mapping` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PARENT_ID` int(11) NOT NULL,
  `CHILD_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parent_child_mapping`
--

LOCK TABLES `parent_child_mapping` WRITE;
/*!40000 ALTER TABLE `parent_child_mapping` DISABLE KEYS */;
INSERT INTO `parent_child_mapping` VALUES (1,34,35),(79,37,40),(80,37,31),(81,37,29),(82,33,41),(83,33,28),(84,32,8),(85,37,2),(88,39,30),(89,39,41);
/*!40000 ALTER TABLE `parent_child_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FIRST_NAME` varchar(45) DEFAULT NULL,
  `LAST_NAME` varchar(45) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `PHONE_NUMBER` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1,'Lac','L','luix@gmail.com','76512673');
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_mapping`
--

DROP TABLE IF EXISTS `site_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_mapping` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SITE_ID` varchar(45) DEFAULT NULL,
  `USER_ID` int(11) NOT NULL,
  `ADDRESS_ID` int(11) NOT NULL,
  `ACCESS_INFO` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_mapping`
--

LOCK TABLES `site_mapping` WRITE;
/*!40000 ALTER TABLE `site_mapping` DISABLE KEYS */;
INSERT INTO `site_mapping` VALUES (1,'San Francisco',6,8,'NA'),(2,'310',6,9,'Accesss'),(3,'200',6,10,'Seciutiru'),(4,'787',7,12,'Access'),(5,'Oakland',7,13,'NA'),(6,'121',8,15,'Security'),(7,'San Jose',8,16,NULL),(8,'671',9,18,'Access'),(9,'213',6,19,'acesss'),(10,'222',8,21,'Access'),(11,'111',8,22,'Oopo'),(12,'510',9,23,'Info'),(13,'989`',9,24,'hjhs'),(14,'Benecia',9,26,'access'),(15,'Oakland',9,27,'acess'),(16,'Oakland',7,28,'new'),(17,'Benecia',7,29,'access'),(18,'9872',11,31,'acess'),(19,'3434',7,33,'NA'),(20,'7567',8,34,'access'),(21,'892839',8,35,'990'),(22,'331',6,36,'NA'),(23,'Los Angeles',6,37,'NA'),(24,'872',6,38,'Access'),(25,'Los Angeles',6,39,'NA'),(26,'2121',6,40,'NA'),(27,'Oakland',6,41,'NA'),(28,'Los Angeles',6,42,'NA'),(29,'217',6,43,'axes'),(30,'Oakland',13,45,'NA'),(31,'San Francisco',14,47,'NA'),(32,'San Francisco',15,49,'NA'),(33,'Benecia',16,51,'NA'),(34,'Benecia',17,53,'NA');
/*!40000 ALTER TABLE `site_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status` (
  `ID` int(11) NOT NULL,
  `STATUS` varchar(45) DEFAULT NULL,
  `SLA` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'Open',NULL),(2,'Assigned',NULL),(3,'Accepted',NULL),(4,'Dispatched',NULL),(5,'Enroute',NULL),(6,'Delivered',NULL),(7,'In Transit',NULL),(8,'Completed',NULL),(9,'Closed',NULL),(10,'Cancelled',NULL),(11,'Available',NULL),(12,'In-Use',NULL),(13,'In-Repair',NULL),(14,'Retired',NULL),(15,'Re-Open',NULL);
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_mapping`
--

DROP TABLE IF EXISTS `status_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status_mapping` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `STATUS_ID` int(11) NOT NULL,
  `ROLE_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_mapping`
--

LOCK TABLES `status_mapping` WRITE;
/*!40000 ALTER TABLE `status_mapping` DISABLE KEYS */;
INSERT INTO `status_mapping` VALUES (1,3,3),(2,4,3),(3,5,3),(4,6,3),(5,7,3),(6,8,3),(43,1,1),(44,2,1),(45,3,1),(46,4,1),(47,5,1),(48,6,1),(49,7,1),(50,8,1),(51,9,1),(52,10,1),(53,15,1),(54,1,2),(55,2,2),(56,3,2),(57,4,2),(58,5,2),(59,6,2),(60,7,2),(61,8,2),(62,9,2),(63,10,2),(64,15,2),(65,1,4),(66,2,4),(67,3,4),(68,4,4),(69,5,4),(70,6,4),(71,7,4),(72,8,4),(73,9,4),(74,10,4),(75,15,4),(76,2,3);
/*!40000 ALTER TABLE `status_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tax`
--

DROP TABLE IF EXISTS `tax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tax` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CITY` varchar(100) NOT NULL,
  `TAX` varchar(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tax`
--

LOCK TABLES `tax` WRITE;
/*!40000 ALTER TABLE `tax` DISABLE KEYS */;
INSERT INTO `tax` VALUES (1,'CA','20'),(2,'LA','18');
/*!40000 ALTER TABLE `tax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trouble_ticket`
--

DROP TABLE IF EXISTS `trouble_ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trouble_ticket` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TICKET_NUMBER` varchar(20) DEFAULT NULL,
  `CONTACT_NAME` varchar(45) DEFAULT NULL,
  `VIN` varchar(45) DEFAULT NULL,
  `OPENED_BY` varchar(45) DEFAULT NULL,
  `OPENED_DATE` datetime DEFAULT NULL,
  `DELIVERY_DATE` varchar(55) DEFAULT NULL,
  `INFORMATION_DETAIL` longtext,
  `TICKET_REASON` longtext,
  `DESCRIPTION` longtext,
  `GROUP_ID` int(11) DEFAULT NULL,
  `ASSIGNED_TO` int(11) DEFAULT NULL,
  `STATUS_ID` int(11) DEFAULT '2',
  `SITE_ID` int(11) DEFAULT NULL,
  `BILLABLE` tinyint(1) DEFAULT NULL,
  `BILLING_RATE` varchar(100) DEFAULT NULL,
  `BILLING_ADDRESS` varchar(100) DEFAULT NULL,
  `tax_rate` varchar(11) DEFAULT NULL,
  `SLA_TIME` datetime DEFAULT NULL,
  `COMPLETED_TIME` datetime DEFAULT NULL,
  `COMPLETED_BY` varchar(255) DEFAULT NULL,
  `CLOSED_TIME` datetime DEFAULT NULL,
  `CLOSED_BY` varchar(255) DEFAULT NULL,
  `LAST_UPDATED_BY` varchar(100) DEFAULT NULL,
  `LAST_UPDATED` datetime DEFAULT NULL,
  `SLA_FLAG` int(11) DEFAULT '0',
  `RESOLUTION_CODE` varchar(255) DEFAULT NULL,
  `REQUEST_ORDER` longtext,
  `CHILD_TICKET` int(11) DEFAULT '0',
  `PARENT_TICKET` varchar(45) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trouble_ticket`
--

LOCK TABLES `trouble_ticket` WRITE;
/*!40000 ALTER TABLE `trouble_ticket` DISABLE KEYS */;
INSERT INTO `trouble_ticket` VALUES (1,'TT0003','luxdlakshmanan@gmail.com','FC172212','Tony','2017-11-28 14:18:34','2017-11-30 14:18:34','Ticket Title',NULL,'Checking for the ticket',2,2,3,1,1,'Recurring Bill','17 west car st,San Francisco, California, 8347','10%','2017-11-28 17:18:34','2017-11-29 15:04:03','PeteDang',NULL,NULL,'PeteDang','2017-11-29 15:36:30',0,'0',NULL,0,'0'),(2,'TT0004','cloubiot@yahoo.com','VIN20A165977','PeteDang','2017-11-29 11:03:15','2017-11-30 05:30:00','Lightning Generator',NULL,'Description',2,2,8,5,1,'Flat Rate','4th streetSan Diego, California, 98899','10','2017-11-30 14:03:15','2017-11-29 14:58:01','PeteDang',NULL,NULL,'PeteDang','2017-11-29 14:58:01',0,'0',NULL,1,'TT0037'),(3,'TT0005','luxdlakshmanan@gmail.com','FC172212','PeteDang','2017-11-29 15:07:44','2017-11-29 05:30:00','Solar Panel',NULL,'James',2,2,3,2,1,'Recurring Bill','17 west car st,San Francisco, California, 8347','10%','2017-11-29 18:07:44',NULL,NULL,NULL,NULL,'PeteDang','2017-11-29 15:14:30',0,'0',NULL,0,'0'),(4,'TT0006','luxdlakshmanan@gmail.com','VIN165327','PeteDang','2017-11-30 14:41:10','2017-12-01 05:30:00','Solar Panel',NULL,'JHames ',2,2,6,1,1,'Recurring Bill','17 west car st,San Francisco, California, 8347','10%','2017-11-30 17:41:10',NULL,NULL,NULL,NULL,'PeteDang','2017-12-04 15:59:13',0,'0',NULL,0,'0'),(5,'TT0007','luxdlakshmanan@gmail.com','VIN165327','PeteDang','2017-12-04 16:00:54','2017-12-06 05:30:00','Lightning Generator',NULL,'zx',2,2,1,2,1,'Recurring Bill','17 west car st,San Francisco, California, 8347','10%','2017-12-04 19:00:54',NULL,NULL,NULL,NULL,'PeteDang','2017-12-05 10:29:20',0,'0',NULL,0,'0'),(6,'TT0008','jhkghhgkjhki','VIN20A165977','PeteDang','2017-12-05 10:49:17','2017-12-06 05:30:00','Solar Panel',NULL,'jk',2,6,3,6,1,'Recurring Bill','E Santa Clara stSan Jose, California, 98739','10%','2017-12-05 13:49:17',NULL,NULL,NULL,NULL,'PeteDang','2017-12-06 11:12:36',0,'0',NULL,0,'0'),(7,'TT0009','luxdlakshmanan@gmail.com','VIN165327','PeteDang','2017-12-06 11:30:23','2017-12-27 05:30:00','Solar Panel',NULL,'sdad',1,3,1,1,1,'Recurring Bill','17 west car st,San Francisco, California, 8347','10%','2017-12-06 14:30:23',NULL,NULL,NULL,NULL,NULL,NULL,0,'0',NULL,0,'0'),(8,'TT0010','luxdlakshmanan@gmail.com','FC172212','PeteDang','2017-12-06 12:41:22','2017-12-07 05:30:00','Lightning Generator',NULL,'yuf',1,3,1,1,1,'Recurring Bill','17 west car st,San Francisco, California, 8347','10%','2017-12-06 15:41:22',NULL,NULL,NULL,NULL,'PeteDang','2017-12-07 10:22:33',0,'0',NULL,1,'TT0032'),(9,'TT0011','luxdlakshmanan@gmail.com','VIN165327','PeteDang','2017-12-07 12:59:45','0175-01-12 05:30:00','Solar Panel',NULL,'yes',1,3,1,2,1,'Recurring Bill','17 west car st,San Francisco, California, 8347','10%','2017-12-07 15:59:45',NULL,NULL,NULL,NULL,NULL,NULL,0,'0',NULL,0,'0'),(10,'TT0012','luxdlakshmanan@gmail.com','VIN165327','Tony','2017-12-07 13:06:18','0177-01-12 05:30:00','Lightning Generator',NULL,'Light generator',2,2,8,2,1,'Recurring Bill','17 west car st,San Francisco, California, 8347','10%','2017-12-07 16:06:18','2017-12-07 13:20:31','Tony',NULL,NULL,'Tony','2017-12-07 13:20:31',0,'0',NULL,0,'0'),(11,'TT0013','luxdlakshmanan@gmail.com','VIN20A165977','PeteDang','2017-12-07 15:06:06','2017-12-07 05:30:00','Solar Panel',NULL,'sd',2,2,1,3,1,'Recurring Bill','17 west car st,San Francisco, California, 8347','10%','2017-12-07 18:06:06',NULL,NULL,NULL,NULL,NULL,NULL,0,'0',NULL,0,'0'),(12,'TT0014','luxdlakshmanan@gmail.com','VIN165327','PeteDang','2017-12-07 16:04:39','2017-12-28 16:04:00','Lightning Generator',NULL,'wed',2,2,1,2,1,'Recurring Bill','17 west car st,San Francisco, California, 8347','10%','2017-12-07 19:04:39',NULL,NULL,NULL,NULL,NULL,NULL,0,'0',NULL,0,'0'),(20,'TT0022','luxdlakshmanan@gmail.com','VIN165327','PeteDang','2017-12-08 13:07:01','Fri Dec 15 2017 17:33:33 GMT+0530 (India Standard Time)','Lightning Generator',NULL,'ew',1,3,1,2,1,'Recurring Bill','17 west car st,San Francisco, California, 8347','10%','2017-12-08 16:07:01',NULL,NULL,NULL,NULL,'PeteDang','2017-12-08 15:14:05',0,'0',NULL,0,'0'),(21,'TT0023','luxdlakshmanan@gmail.com','VIN165327','PeteDang','2017-12-11 12:16:32','Wed Dec 13 2017 12:16:10 GMT+0530 (India Standard Time)','Solar Panel',NULL,'m..',1,3,1,2,1,'Flat Rate','17 west car st,San Francisco, California, 8347','10%','2017-12-11 15:16:32',NULL,NULL,NULL,NULL,NULL,NULL,0,'0',NULL,0,'0'),(22,'TT0024','luxdlakshmanan@gmail.com','VIN165327','PeteDang','2017-12-13 09:47:51','2017-12-14','Solar Panel',NULL,'desc',1,3,1,9,1,'Recurring Bill','17 west car st,San Francisco, California, 8347','10%','2017-12-13 12:47:51',NULL,NULL,NULL,NULL,'PeteDang','2017-12-13 15:54:46',0,'0',NULL,0,'0'),(23,'TT0025','luxdlakshmanan@gmail.com','VIN20A165977','PeteDang','2017-12-14 10:06:49','2017-12-20','Solar Panel',NULL,'james',2,2,6,9,1,'Flat Rate','17 west car st,San Francisco, California, 8347','10%','2017-12-14 13:06:49','2017-12-14 10:37:59','PeteDang',NULL,NULL,'Pete','2017-12-14 15:19:41',0,'3',NULL,0,'0'),(24,'TT0026','luxdlakshmanan@gmail.com','VIN165327','Pete','2017-12-22 12:06:35','2017-12-28','Lightning Generator',NULL,'desc',1,3,8,2,1,'Recurring Bill','17 west car st,San Francisco, California, 8347','10%','2017-12-22 15:06:35','2017-12-26 11:08:44','Pete',NULL,NULL,'Pete','2017-12-26 11:08:44',0,'0',NULL,0,'0'),(25,'TT0027','luxdlakshmanan@gmail.com','FC172212','Pete','2017-12-22 12:12:54','2017-12-25','Lightning Generator',NULL,'james',2,2,8,2,1,'Recurring Bill','17 west car st,San Francisco, California, 8347','10%','2017-12-22 15:12:54','2017-12-26 11:07:57','Pete',NULL,NULL,'Pete','2017-12-26 11:07:57',0,'0',NULL,0,'0'),(26,'TT26','luxdlakshmanan@gmail.com','VIN20172218','Pete','2017-12-22 14:50:56','2017-12-27','Solar Panel',NULL,'dcsac',2,2,8,3,1,'Flat Rate','17 west car st,San Francisco, California, 8347','10%','2017-12-22 17:50:56','2017-12-22 17:04:15','Pete',NULL,NULL,'Pete','2017-12-22 17:04:15',0,'Installation Incomplete',NULL,0,'0'),(28,'TT0028','luxdlakshmanan@gmail.com','VIN20A165977','Pete','2017-12-26 11:44:56','2017-12-27','Lightning Generator',NULL,'desc',1,3,8,9,1,'Flat Rate','17 west car st,San Francisco, California, 8347','10%','2017-12-26 14:44:56','2017-12-26 11:52:48','Pete',NULL,NULL,'Pete','2017-12-26 11:52:48',0,'Site Not Ready',NULL,1,'TT0033'),(29,'TT0029','luxdlakshmanan@gmail.com','VIN165327','Pete','2017-12-26 11:51:58','2017-12-27','Lightning Generator',NULL,'descz',1,3,1,2,1,'Recurring Bill','17 west car st,San Francisco, California, 8347','10%','2017-12-26 14:51:58',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,1,'TT0037'),(30,'TT0030','luxdlakshmanan@gmail.com','VIN20A165977','Pete','2017-12-26 14:57:38','2017-12-28T11:18','Solar Panel',NULL,'tony',1,3,2,2,1,'Recurring Bill','17 west car st,San Francisco, California, 8347','10%','2017-12-26 17:57:38','2018-01-02 12:19:48','Pete',NULL,NULL,'Pete','2018-01-02 12:21:41',0,'Installation Completed',NULL,1,'TT0039'),(31,'TT0031','michaellumb8317@gmail.com',NULL,'Pete','2017-12-29 15:40:40',NULL,'Solar Panel',NULL,'dsc',1,3,3,20,1,'Flat Rate','E Santa Clara stSan Jose, California, 98739','10%','2017-12-29 23:40:00','2017-12-29 16:54:24','Pete',NULL,NULL,'Pete','2017-12-29 16:56:29',0,'Installation Completed',NULL,1,'TT0037'),(32,'TT0032','luxdlakshmanan@gmail.com','VIN20A165977','Pete','2017-12-29 17:03:40','2018-01-04','Lightning Generator',NULL,'dw',1,3,8,9,1,'Flat Rate','17 west car st,, San Francisco, California, 8347','10%','2017-12-29 17:03:40','2018-01-05 16:49:01','Pete',NULL,NULL,'Pete','2018-01-05 16:49:01',0,'Installation Incomplete',NULL,0,NULL),(33,'TT0033','luxdlakshmanan@gmail.com',NULL,'Pete','2018-01-02 12:23:58','2018-01-02','Lightning Generator',NULL,'desc',1,3,1,9,0,NULL,'17 west car st,, San Francisco, California, 8347','10%','2018-01-02 15:23:58',NULL,NULL,NULL,NULL,'Pete','2018-01-04 18:56:10',0,NULL,NULL,2,'0'),(34,'TT0034','luxdlakshmanan@gmail.com',NULL,'Pete','2018-01-02 12:35:07','2018-01-03','Lightning Generator',NULL,'desc',1,3,8,9,1,'Recurring Bill','17 west car st,, San Francisco, California, 8347','10%','2018-01-02 15:35:07','2018-01-02 12:44:12','Pete',NULL,NULL,'Pete','2018-01-02 12:44:12',0,'Installation Completed',NULL,2,'0'),(35,'TT0035','luxdlakshmanan@gmail.com','','Pete','2018-01-02 12:45:11','2018-01-05','Lightning Generator',NULL,'dsdcyu',1,3,3,23,0,NULL,'17 west car st,, San Francisco, California, 8347','10%','2018-01-02 15:45:11','2018-01-02 19:30:40','Pete',NULL,NULL,'Pete','2018-01-04 11:27:05',0,'Site Not Ready','new',1,'TT0034'),(36,'TT0036','luxdlakshmanan@gmail.com','','Pete','2018-01-04 17:21:55','2018-01-05','Solar Panel',NULL,'desc',1,3,1,9,1,'Flat Rate','17 west car st,, San Francisco, California, 8347','10%','2018-01-04 20:21:55',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'requesting new order',0,NULL),(37,'TT0037','luxdlakshmanan@gmail.com','','Pete','2018-01-04 17:32:37','2018-01-05','Solar Panel',NULL,'desc',1,12,1,2,1,'Recurring Bill','17 west car st,, San Francisco, California, 8347','10%','2018-01-04 20:32:37','2018-01-05 16:49:31','Pete',NULL,NULL,'Pete','2018-01-08 18:38:06',0,'Installation Completed','child ticket',2,NULL),(38,'TT0038','luxdlakshmanan@gmail.com','','Pete','2018-01-04 17:35:58','2018-01-05','Solar Panel',NULL,'desc',1,3,1,22,0,NULL,'17 west car st,, San Francisco, California, 8347','10%','2018-01-04 20:35:58',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'nerwe child',0,''),(39,'TT0039','luxdlakshmanan@gmail.com','','Pete','2018-01-04 17:49:27','2018-01-05','Lightning Generator',NULL,'mail',1,3,1,9,0,NULL,'17 west car st,, San Francisco, California, 8347','10%','2018-01-04 20:49:27',NULL,NULL,NULL,NULL,'Pete','2018-01-10 17:33:10',0,NULL,'new worder',0,''),(40,'TT0040','luxdlakshmanan@gmail.com','','Pete','2018-01-05 11:01:29',NULL,'Solar Panel',NULL,'test child',2,2,1,9,0,NULL,'17 west car st,, San Francisco, California, 8347','10%','2018-01-05 14:01:29',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Q9779',1,'TT0037'),(41,'TT0041','luxdlakshmanan@gmail.com','','Pete','2018-01-05 19:05:55','2018-01-06','Lightning Generator',NULL,'jameds',2,2,1,22,0,NULL,'17 west car st,, San Francisco, California, 8347',NULL,'2018-01-05 22:05:55',NULL,NULL,NULL,NULL,'Pete','2018-01-11 10:27:29',0,NULL,'checking for existng ticket',1,'TT0039'),(42,'TT0042','luxdlakshmanan@gmail.com','','Pete','2018-01-18 18:28:07','2018-01-19','Solar Panel',NULL,'desc',2,2,1,25,0,NULL,'17 west car st,, San Francisco, California, 8347','10%','2018-01-18 21:28:07',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'request',0,NULL);
/*!40000 ALTER TABLE `trouble_ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_NAME` varchar(45) NOT NULL,
  `FIRST_NAME` varchar(45) NOT NULL,
  `LAST_NAME` varchar(45) DEFAULT NULL,
  `EMAIL` varchar(100) NOT NULL,
  `PASSWORD` varchar(100) NOT NULL,
  `PHONE_NUMBER` varchar(15) DEFAULT NULL,
  `TAX_RATE` varchar(11) DEFAULT NULL,
  `PROFILE_IMAGE_URL` longtext,
  `ACTIVE` varchar(11) DEFAULT 'true',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Pete','Pete','Dang','pete@gmail.com','D/3LHqvgadwGEBk3fGv9ig==','9876543210',NULL,NULL,'true'),(2,'James','James','Daniel','jamesh8317@gmail.com','D/3LHqvgadwGEBk3fGv9ig==','898989899',NULL,NULL,'true'),(3,'Tony','Tony','Cruz','tonycruz817@gmail.com','D/3LHqvgadwGEBk3fGv9ig==','78787878788',NULL,NULL,'true'),(6,'Laxman','Laxman','Lax','luxdlakshmanan@gmail.com','D/3LHqvgadwGEBk3fGv9ig==','95000544899','10%','dcsolar/image_uploads/user_profile_images/2018/January/29-01-2018/profile-avatar.png','true'),(7,'Customer','Customer','Cloubiot','cloub]ot@yahoo.com','TqJCx+vXFfM=','7575767','10',NULL,'true'),(8,'Michael','Michael','Lumb','michaellumb8317@gmail.com','57w/j1mBaJo=','987238928','10%',NULL,'true'),(9,'Cloubiot Gmail','Cloubiot Gmail','G mmail','cloubiot@gmail.com','pSDsFJdwDww=','82738273','10',NULL,'true'),(10,'gautham','gautham','Yahoo','gautham30@yahoo.com','v7sCOedWwDk=','87663877',NULL,NULL,'true'),(11,'Lax','Lax','lac','luxdlakshmanan@gmai.com','5Z5adCt2YWQ=','872348237','10',NULL,'true'),(12,'Test','Test',NULL,'test.cloubiot@mail.com','ZzJfa569mRg=','872837321',NULL,NULL,'true'),(13,'TonyCruz','TonyCruz','Tony','tonycruz8317@gmail.com','QFgCEcmcnKQ=','782388238',NULL,NULL,'true'),(14,'NewUser','NewUser',NULL,'new@gmai.ciom','+K5REqVzouA=','87538582',NULL,NULL,'true'),(15,'NewUser','NewUser',NULL,'new@gmai.ciom','zv5Rwmbvicw=','87538582',NULL,NULL,'true'),(16,'lalG','lalG','kku','lkhl@gmai.com','fsHUS0Bv4Es=','87678678',NULL,NULL,'true'),(17,'Laxa','Laxa','L','lux@g87m.com','J9WxL+/WMGM=','876578',NULL,NULL,'true'),(18,'vikram','vikram',NULL,'vikram@vik.com','sLtkweH5M6Y=','324322342',NULL,NULL,'true'),(22,'Raj','Raj','Jey','test.cloubiot@gmail.com','Bgy5rMdZQY8=','873-287-8732',NULL,NULL,'true');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_device_mapping`
--

DROP TABLE IF EXISTS `user_device_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_device_mapping` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) DEFAULT NULL,
  `VIN` varchar(45) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  `IS_ACTIVE` tinyint(1) NOT NULL DEFAULT '1',
  `CREATED_DATE` date DEFAULT NULL,
  `LAST_MODIFIED_DATE` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_device_mapping`
--

LOCK TABLES `user_device_mapping` WRITE;
/*!40000 ALTER TABLE `user_device_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_device_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role` (
  `ID` int(11) NOT NULL,
  `ROLE` varchar(45) NOT NULL,
  `DESC` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,'1','Admin'),(2,'2','Manager'),(3,'3','Technician'),(4,'4','CSR'),(5,'5','Customer');
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role_mapping`
--

DROP TABLE IF EXISTS `user_role_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role_mapping` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `ROLE_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role_mapping`
--

LOCK TABLES `user_role_mapping` WRITE;
/*!40000 ALTER TABLE `user_role_mapping` DISABLE KEYS */;
INSERT INTO `user_role_mapping` VALUES (1,1,1),(2,2,3),(3,3,4),(6,6,5),(7,7,5),(8,8,5),(9,9,5),(10,10,3),(11,11,5),(12,12,4),(13,13,5),(14,14,5),(15,15,5),(16,16,5),(17,17,5),(18,18,3),(19,19,2),(20,20,2),(21,21,2),(22,22,2);
/*!40000 ALTER TABLE `user_role_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vin_mapping`
--

DROP TABLE IF EXISTS `vin_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vin_mapping` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TICKET_ID` int(11) NOT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `VIN` varchar(255) DEFAULT NULL,
  `IMG_LOCATION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vin_mapping`
--

LOCK TABLES `vin_mapping` WRITE;
/*!40000 ALTER TABLE `vin_mapping` DISABLE KEYS */;
INSERT INTO `vin_mapping` VALUES (16,35,'Personal Charging Station','VIN20172218',NULL),(17,36,'Hybrid Generator','VIN165327',NULL),(18,36,'Hybrid Car Charger','FC172212',NULL),(20,38,'Basic Generator','VIN20A165977',NULL),(22,40,'Hybrid Generator','VIN165327',NULL),(38,37,'Basic Generator','VIN20A165977','app/img/telecom.png'),(39,37,'Hybrid Generator','VIN165327','app/img/hybrid_gen.jpg'),(40,37,'Personal Charging Station','VIN20172218','app/img/EV-station.png'),(41,41,'Personal Charging Station','VIN20172218',NULL),(42,34,'Basic Generator','VIN20A165977','app/img/telecom.png'),(43,25,'Hybrid Car Charger','FC172212','app/img/light-towers.jpg'),(48,39,'Basic Generator','VIN20A165977','app/img/telecom.png'),(49,39,'Personal Charging Station','VIN20172218','app/img/EV-station.png'),(50,42,'Basic Generator','VIN20A165977',NULL);
/*!40000 ALTER TABLE `vin_mapping` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-15 18:43:13
