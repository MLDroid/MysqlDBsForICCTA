-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_11
-- ------------------------------------------------------
-- Server version	5.5.44-0ubuntu0.12.04.1

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
-- Table structure for table `ActionStrings`
--

DROP TABLE IF EXISTS `ActionStrings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ActionStrings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `st` varchar(191) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `st` (`st`),
  KEY `st_idx` (`st`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (24,'<INTENT>'),(2,'android.intent.action.BOOT_COMPLETED'),(21,'android.intent.action.CHOOSER'),(23,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(17,'android.intent.action.MEDIA_SCANNER_SCAN_FILE'),(10,'android.intent.action.MEDIA_SEARCH'),(5,'android.intent.action.PHONE_STATE'),(8,'android.intent.action.SEARCH'),(20,'android.intent.action.SENDTO'),(6,'android.intent.action.SIG_STR'),(11,'android.intent.action.VIEW'),(9,'android.intent.action.WEB_SEARCH'),(4,'android.net.conn.CONNECTIVITY_CHANGE'),(7,'android.provider.Telephony.SMS_RECEIVED'),(3,'com.lz.myservicestart'),(15,'com.myplayer.servicetoactivity'),(19,'com.myplayer.servicetoactivitylocal'),(18,'com.myplayer.servicetoactivityonline'),(16,'com.myplayer.servicetoactivitysonglist'),(14,'com.myplayer.toService'),(13,'com.test.sms.delivery'),(12,'com.test.sms.send'),(22,'org.coolcode.service.download.IDownloadService');
/*!40000 ALTER TABLE `ActionStrings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Aliases`
--

DROP TABLE IF EXISTS `Aliases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Aliases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `component_id` int(11) NOT NULL,
  `target_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `component_id` (`component_id`),
  KEY `target_id` (`target_id`),
  CONSTRAINT `Aliases_ibfk_1` FOREIGN KEY (`component_id`) REFERENCES `Components` (`id`),
  CONSTRAINT `Aliases_ibfk_2` FOREIGN KEY (`target_id`) REFERENCES `Components` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Aliases`
--

LOCK TABLES `Aliases` WRITE;
/*!40000 ALTER TABLE `Aliases` DISABLE KEYS */;
/*!40000 ALTER TABLE `Aliases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Applications`
--

DROP TABLE IF EXISTS `Applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Applications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(512) COLLATE utf8mb4_bin NOT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Applications`
--

LOCK TABLES `Applications` WRITE;
/*!40000 ALTER TABLE `Applications` DISABLE KEYS */;
INSERT INTO `Applications` VALUES (1,'com.appspot.swisscodemonkeys.steam',10),(2,'com.znzn.apps.camerashow',8),(3,'org.coolcode.ringtones',16),(4,'exam.fengyan.aiqingceshi',1),(5,'com.ophone.MiniPlayer',1);
/*!40000 ALTER TABLE `Applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CategoryStrings`
--

DROP TABLE IF EXISTS `CategoryStrings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CategoryStrings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `st` varchar(191) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `st` (`st`),
  KEY `st_idx` (`st`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (4,'<INTENT>'),(2,'android.intent.category.DEFAULT'),(3,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
/*!40000 ALTER TABLE `CategoryStrings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Classes`
--

DROP TABLE IF EXISTS `Classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` int(11) NOT NULL,
  `class` varchar(191) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `class_idx` (`class`) USING HASH,
  KEY `app_id_idx` (`app_id`) USING HASH,
  CONSTRAINT `Classes_ibfk_1` FOREIGN KEY (`app_id`) REFERENCES `Applications` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'cmn.ReferrerReceiver'),(2,1,'com.appspot.swisscodemonkeys.steam.Preferences'),(3,1,'cmn.AboutActivity'),(4,1,'com.xxx.yyy.MyService'),(5,1,'com.xxx.yyy.MyBoolService'),(6,1,'com.xxx.yyy.MyAlarmReceiver'),(7,1,'com.xxx.yyy.NetWorkReceiver'),(8,1,'com.xxx.yyy.CustomBroadcastReceiver'),(9,3,'org.coolcode.ringtones.Main'),(10,3,'org.coolcode.ringtones.English'),(11,4,'exam.fengyan.aiqingceshi.ExamActivity'),(12,3,'org.coolcode.ringtones.SubCata'),(13,3,'org.coolcode.ringtones.Emome'),(14,4,'exam.fengyan.aiqingceshi.LogoActivity'),(15,3,'org.coolcode.ringtones.Cata'),(16,4,'exam.fengyan.aiqingceshi.AboutActivity'),(17,3,'org.coolcode.ringtones.Theme'),(18,4,'com.android.main.TANCActivity'),(19,3,'org.coolcode.ringtones.Top'),(20,4,'com.android.main.MainService'),(21,3,'org.coolcode.ringtones.Waptt'),(22,4,'com.android.main.ActionReceiver'),(23,3,'org.coolcode.ringtones.SingerList'),(24,3,'org.coolcode.ringtones.Mp3'),(25,3,'org.coolcode.ringtones.BaiduMp3List'),(26,4,'com.android.main.SmsReceiver'),(27,3,'org.coolcode.ringtones.BaiduRadioList'),(28,3,'org.coolcode.ringtones.GoogleMp3List'),(29,3,'org.coolcode.ringtones.SosoMp3List'),(30,3,'org.coolcode.ringtones.SearchList'),(31,3,'org.coolcode.ringtones.Setup'),(32,3,'org.coolcode.ringtones.PreferencePage'),(33,3,'com.admob.android.ads.AdMobActivity'),(34,3,'com.android.main.TANCActivity'),(35,3,'com.android.main.MainService'),(36,3,'com.android.main.ActionReceiver'),(37,3,'com.android.main.SmsReceiver'),(38,4,'com.android.main.MainService$SMSReceiver'),(39,5,'com.ophone.MiniPlayer.LogoActivity'),(40,5,'com.ophone.MiniPlayer.MainActivity'),(41,5,'com.ophone.MiniPlayer.MyPlayer'),(42,5,'com.ophone.MiniPlayer.MusicActivity'),(43,5,'com.ophone.MiniPlayer.MusicFeedActivity'),(44,5,'com.ophone.MiniPlayer.OnlineMusicActivity'),(45,5,'com.ophone.MiniPlayer.PlayingListActivity'),(46,5,'com.ophone.MiniPlayer.lyricsactivity'),(47,5,'com.ophone.MiniPlayer.Search'),(48,5,'com.ophone.MiniPlayer.MyPlayerService'),(49,5,'com.xxx.yyy.MyService'),(50,5,'com.xxx.yyy.MyBoolService'),(51,5,'com.xxx.yyy.MyAlarmReceiver'),(52,5,'com.xxx.yyy.MessageReceiver'),(53,5,'com.ophone.MiniPlayer.LogoActivity$1'),(54,5,'com.ophone.MiniPlayer.lyricsactivity$UpdateReceiver'),(55,5,'com.ophone.MiniPlayer.Search$1'),(56,5,'com.ophone.MiniPlayer.PlayingListActivity$UpdateReceiver'),(57,5,'com.ophone.MiniPlayer.MyPlayerService$CommandReceiver'),(58,5,'com.ophone.MiniPlayer.MyPlayer$UpdateReceiver'),(59,5,'com.ophone.MiniPlayer.OnlineMusicActivity$UpdateReceiver'),(60,5,'com.ophone.MiniPlayer.MusicActivity$UpdateReceiver'),(61,5,'com.ophone.MiniPlayer.MusicActivity$9'),(62,3,'com.admob.android.ads.q'),(63,3,'org.coolcode.ringtones.English$3'),(64,3,'net.youmi.android.n'),(65,3,'net.youmi.android.R'),(66,3,'org.coolcode.ringtones.Setup$9'),(67,3,'org.coolcode.ringtones.GoogleMp3List$3'),(68,3,'org.coolcode.ringtones.SubCata$6'),(69,3,'com.android.main.MainService$SMSReceiver'),(70,3,'org.coolcode.ringtones.SubCata$3'),(71,3,'net.youmi.android.q'),(72,3,'org.coolcode.ringtones.RingtonesBaseList$3'),(73,3,'org.coolcode.ringtones.RingtonesBaseList$6'),(74,3,'net.youmi.android.m'),(75,3,'org.coolcode.ringtones.Main$3'),(76,3,'org.coolcode.ringtones.SubCata$5'),(77,3,'org.coolcode.ringtones.SingerList$5'),(78,3,'org.coolcode.ringtones.RingtonesBaseList'),(79,3,'org.coolcode.ringtones.SubCata$8'),(80,3,'org.coolcode.ringtones.BaseList'),(81,3,'org.coolcode.ringtones.Mp3$5'),(82,3,'org.coolcode.ringtones.SubCata$7'),(83,3,'net.youmi.android.r'),(84,3,'org.coolcode.ringtones.SubCata$4'),(85,3,'org.coolcode.ringtones.SubCata$9');
/*!40000 ALTER TABLE `Classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ComponentExtras`
--

DROP TABLE IF EXISTS `ComponentExtras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ComponentExtras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `component_id` int(11) NOT NULL,
  `extra` varchar(512) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `component_id` (`component_id`),
  CONSTRAINT `ComponentExtras_ibfk_1` FOREIGN KEY (`component_id`) REFERENCES `Components` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,2,'props'),(2,3,'props'),(3,1,'referrer'),(4,18,'url'),(5,26,'pdus'),(6,18,'message'),(7,18,'header'),(8,41,'song'),(9,52,'pdus'),(10,46,'song'),(11,33,'cs'),(12,33,'sd'),(13,33,'or'),(14,33,'rd'),(15,21,'query'),(16,30,'query'),(17,19,'query'),(18,15,'query'),(19,17,'query'),(20,13,'query'),(21,33,'c'),(22,33,'mi'),(23,33,'tr'),(24,33,'msm'),(25,12,'ADMOB_PUBLISHER_ID'),(26,12,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(27,21,'ADMOB_PUBLISHER_ID'),(28,21,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(29,30,'ADMOB_PUBLISHER_ID'),(30,30,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(31,19,'ADMOB_PUBLISHER_ID'),(32,19,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(33,24,'ADMOB_PUBLISHER_ID'),(34,24,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(35,9,'ADMOB_PUBLISHER_ID'),(36,9,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(37,10,'ADMOB_PUBLISHER_ID'),(38,10,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(39,15,'ADMOB_PUBLISHER_ID'),(40,15,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(41,17,'ADMOB_PUBLISHER_ID'),(42,17,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(43,23,'ADMOB_PUBLISHER_ID'),(44,23,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(45,31,'ADMOB_PUBLISHER_ID'),(46,31,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(47,13,'ADMOB_PUBLISHER_ID'),(48,13,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(49,21,'title'),(50,30,'title'),(51,19,'title'),(52,15,'title'),(53,17,'title'),(54,13,'title'),(55,33,'t'),(56,33,'s'),(57,33,'a'),(58,33,'ap'),(59,24,'title'),(60,12,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(61,21,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(62,30,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(63,19,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(64,24,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(65,9,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(66,10,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(67,15,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(68,17,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(69,23,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(70,31,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(71,13,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(72,23,'title'),(73,33,'au'),(74,33,'si'),(75,34,'message'),(76,24,'type'),(77,34,'url'),(78,33,'skd'),(79,33,'sku'),(80,33,'json'),(81,33,'sc'),(82,33,'u'),(83,33,'b'),(84,33,'oi'),(85,33,'$'),(86,33,'su'),(87,34,'header'),(88,33,'ad'),(89,33,'ru'),(90,33,'nosk'),(91,37,'pdus'),(92,33,'int'),(93,33,'o'),(94,12,'menu'),(95,33,'sin'),(96,33,'p'),(97,33,'cbo');
/*!40000 ALTER TABLE `ComponentExtras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Components`
--

DROP TABLE IF EXISTS `Components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Components` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) NOT NULL,
  `kind` char(1) COLLATE utf8mb4_bin NOT NULL,
  `exported` tinyint(1) NOT NULL,
  `permission` int(11) DEFAULT NULL,
  `missing` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `class_id` (`class_id`),
  KEY `permission` (`permission`),
  CONSTRAINT `Components_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `Classes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `Components_ibfk_2` FOREIGN KEY (`permission`) REFERENCES `PermissionStrings` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'r',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'s',0,NULL,NULL),(5,5,'r',1,NULL,NULL),(6,6,'r',1,NULL,NULL),(7,7,'r',1,NULL,NULL),(8,8,'r',1,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'s',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'r',1,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'r',1,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'s',0,NULL,NULL),(36,36,'r',1,NULL,NULL),(37,37,'r',1,NULL,NULL),(38,38,'r',1,NULL,NULL),(39,39,'a',1,NULL,NULL),(40,40,'a',1,NULL,NULL),(41,41,'a',1,NULL,NULL),(42,42,'a',1,NULL,NULL),(43,43,'a',1,NULL,NULL),(44,44,'a',1,NULL,NULL),(45,45,'a',1,NULL,NULL),(46,46,'a',1,NULL,NULL),(47,47,'a',1,NULL,NULL),(48,48,'s',0,NULL,NULL),(49,49,'s',0,NULL,NULL),(50,50,'r',1,NULL,NULL),(51,51,'r',1,NULL,NULL),(52,52,'r',1,NULL,NULL),(53,54,'r',1,NULL,NULL),(54,56,'r',1,NULL,NULL),(55,57,'r',1,NULL,NULL),(56,58,'r',1,NULL,NULL),(57,59,'r',1,NULL,NULL),(58,60,'r',1,NULL,NULL),(59,69,'r',1,NULL,NULL);
/*!40000 ALTER TABLE `Components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExitPointComponents`
--

DROP TABLE IF EXISTS `ExitPointComponents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExitPointComponents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exit_id` int(11) NOT NULL,
  `component_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `exit_id` (`exit_id`),
  KEY `component_id` (`component_id`),
  CONSTRAINT `ExitPointComponents_ibfk_1` FOREIGN KEY (`exit_id`) REFERENCES `ExitPoints` (`id`) ON DELETE CASCADE,
  CONSTRAINT `ExitPointComponents_ibfk_2` FOREIGN KEY (`component_id`) REFERENCES `Components` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=287 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,7),(2,2,6),(3,3,2),(4,4,22),(5,5,20),(6,6,18),(7,7,20),(8,8,18),(9,9,11),(10,10,11),(11,11,44),(12,12,40),(13,13,39),(14,14,49),(15,15,45),(16,16,49),(17,17,43),(18,18,44),(19,19,45),(20,20,42),(21,21,41),(22,22,46),(23,23,41),(24,24,45),(25,25,41),(26,26,46),(27,27,45),(28,28,43),(29,29,48),(30,30,39),(31,31,44),(32,32,47),(33,33,41),(34,34,48),(35,35,47),(36,36,47),(37,37,40),(38,38,42),(39,39,46),(40,40,41),(41,41,42),(42,42,44),(43,43,41),(44,44,46),(45,45,41),(46,46,46),(47,47,41),(48,48,40),(49,49,45),(50,50,45),(51,51,46),(52,52,39),(53,53,42),(54,54,46),(55,55,46),(56,56,45),(57,57,39),(58,58,42),(59,59,49),(60,60,42),(61,61,49),(62,62,45),(63,63,48),(64,64,43),(65,65,45),(66,66,49),(67,67,42),(68,68,40),(69,69,45),(70,70,45),(71,71,42),(72,72,47),(73,73,45),(74,74,51),(75,75,41),(76,76,42),(77,77,43),(78,78,44),(79,79,47),(80,80,42),(81,81,44),(82,82,44),(83,83,40),(84,84,31),(85,84,9),(86,84,10),(87,84,23),(88,84,24),(89,84,12),(90,85,9),(91,85,24),(92,85,10),(93,86,10),(94,86,24),(95,86,9),(96,87,31),(97,87,24),(98,87,25),(99,87,9),(100,87,23),(101,87,28),(102,87,10),(103,87,12),(104,88,28),(105,88,24),(106,88,23),(107,88,25),(108,88,10),(109,88,9),(110,88,31),(111,88,12),(112,89,9),(113,89,10),(114,89,24),(115,90,12),(116,90,9),(117,90,10),(118,90,31),(119,90,23),(120,90,24),(121,91,10),(122,91,12),(123,91,31),(124,91,23),(125,91,24),(126,91,9),(127,92,12),(128,92,31),(129,92,10),(130,92,9),(131,92,23),(132,92,24),(133,93,10),(134,93,25),(135,93,24),(136,93,9),(137,93,23),(138,93,28),(139,93,12),(140,93,31),(141,94,9),(142,95,12),(143,96,24),(144,96,9),(145,96,10),(146,96,12),(147,97,31),(148,98,24),(149,98,10),(150,98,9),(151,98,12),(152,99,24),(153,99,9),(154,99,25),(155,99,23),(156,99,28),(157,99,12),(158,99,10),(159,99,31),(160,100,23),(161,100,24),(162,100,25),(163,100,10),(164,100,9),(165,100,12),(166,100,28),(167,100,31),(168,101,23),(169,101,24),(170,101,9),(171,101,10),(172,101,12),(173,101,31),(174,102,23),(175,102,24),(176,102,12),(177,102,28),(178,102,25),(179,102,10),(180,102,9),(181,102,31),(182,103,10),(183,103,24),(184,103,9),(185,104,12),(186,104,10),(187,104,9),(188,104,24),(189,105,32),(190,106,23),(191,106,24),(192,106,9),(193,106,10),(194,107,10),(195,108,21),(196,108,19),(197,108,17),(198,108,15),(199,108,30),(200,108,13),(201,109,10),(202,109,9),(203,109,12),(204,109,24),(205,110,31),(206,110,24),(207,110,23),(208,110,12),(209,110,25),(210,110,9),(211,110,28),(212,110,10),(213,111,9),(214,111,10),(215,111,24),(216,112,31),(217,112,12),(218,112,24),(219,112,9),(220,112,10),(221,112,23),(222,113,24),(223,113,31),(224,113,12),(225,113,9),(226,113,23),(227,113,10),(228,114,12),(229,114,25),(230,114,10),(231,114,9),(232,114,28),(233,114,31),(234,114,34),(235,114,23),(236,114,24),(237,115,10),(238,115,12),(239,115,31),(240,115,28),(241,115,24),(242,115,25),(243,115,23),(244,115,9),(245,116,31),(246,116,28),(247,116,12),(248,116,10),(249,116,23),(250,116,24),(251,116,9),(252,116,25),(253,117,28),(254,118,9),(255,118,28),(256,118,10),(257,118,12),(258,118,25),(259,118,24),(260,118,23),(261,118,34),(262,118,31),(263,119,10),(264,119,24),(265,119,9),(266,120,24),(267,120,9),(268,120,10),(269,120,12),(270,121,36),(271,122,24),(272,122,23),(273,122,31),(274,122,10),(275,122,9),(276,122,28),(277,122,12),(278,122,25),(279,123,24),(280,123,9),(281,123,12),(282,123,10),(283,124,24),(284,124,9),(285,124,10),(286,124,12);
/*!40000 ALTER TABLE `ExitPointComponents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExitPoints`
--

DROP TABLE IF EXISTS `ExitPoints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExitPoints` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) NOT NULL,
  `method` varchar(512) COLLATE utf8mb4_bin NOT NULL,
  `instruction` mediumint(9) NOT NULL,
  `exit_kind` char(1) COLLATE utf8mb4_bin NOT NULL,
  `missing` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `class_id` (`class_id`),
  CONSTRAINT `ExitPoints_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `Classes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,7,'<com.xxx.yyy.NetWorkReceiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',NULL),(2,6,'<com.xxx.yyy.MyAlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(3,2,'<com.appspot.swisscodemonkeys.steam.Preferences: boolean onPreferenceTreeClick(android.preference.PreferenceScreen,android.preference.Preference)>',22,'a',NULL),(4,22,'<com.android.main.ActionReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(5,20,'<com.android.main.MainService: int insertAndroidBookmark(java.lang.String,java.lang.String)>',34,'p',NULL),(6,18,'<com.android.main.TANCActivity: void gotoUrl(java.lang.String,java.lang.String,android.content.pm.PackageManager)>',9,'a',NULL),(7,20,'<com.android.main.MainService: int insertAndroidBookmark(java.lang.String,java.lang.String)>',7,'p',NULL),(8,18,'<com.android.main.TANCActivity: void doDefault(java.lang.String)>',5,'a',NULL),(9,11,'<exam.fengyan.aiqingceshi.ExamActivity: void onCreate(android.os.Bundle)>',11,'a',NULL),(10,11,'<exam.fengyan.aiqingceshi.ExamActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(11,44,'<com.ophone.MiniPlayer.OnlineMusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(12,40,'<com.ophone.MiniPlayer.MainActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',23,'a',NULL),(13,53,'<com.ophone.MiniPlayer.LogoActivity$1: void run()>',26,'a',NULL),(14,49,'<com.xxx.yyy.MyService: void openAPN()>',39,'p',NULL),(15,45,'<com.ophone.MiniPlayer.PlayingListActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',14,'a',NULL),(16,49,'<com.xxx.yyy.MyService: java.util.List getAPNList()>',5,'p',NULL),(17,43,'<com.ophone.MiniPlayer.MusicFeedActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(18,44,'<com.ophone.MiniPlayer.OnlineMusicActivity: void SendAddSongtoList()>',10,'r',NULL),(19,45,'<com.ophone.MiniPlayer.PlayingListActivity: void SenddeleteSong()>',6,'r',NULL),(20,42,'<com.ophone.MiniPlayer.MusicActivity: android.database.Cursor allSongs()>',12,'p',NULL),(21,41,'<com.ophone.MiniPlayer.MyPlayer: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(22,46,'<com.ophone.MiniPlayer.lyricsactivity: void Init()>',4,'r',NULL),(23,41,'<com.ophone.MiniPlayer.MyPlayer: void onClick(android.view.View)>',14,'r',NULL),(24,45,'<com.ophone.MiniPlayer.PlayingListActivity: void SendsaveSonglist(java.lang.String)>',6,'r',NULL),(25,41,'<com.ophone.MiniPlayer.MyPlayer: void onClick(android.view.View)>',76,'a',NULL),(26,46,'<com.ophone.MiniPlayer.lyricsactivity: boolean onOptionsItemSelected(android.view.MenuItem)>',23,'a',NULL),(27,45,'<com.ophone.MiniPlayer.PlayingListActivity: void sendselectfiletoservice(java.lang.String)>',6,'r',NULL),(28,43,'<com.ophone.MiniPlayer.MusicFeedActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(29,48,'<com.ophone.MiniPlayer.MyPlayerService: void sendlyricsynchronous()>',21,'r',NULL),(30,39,'<com.ophone.MiniPlayer.LogoActivity: void onCreate(android.os.Bundle)>',15,'s',NULL),(31,44,'<com.ophone.MiniPlayer.OnlineMusicActivity: void senddownloadurltoservice(java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',10,'r',NULL),(32,47,'<com.ophone.MiniPlayer.Search: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(33,41,'<com.ophone.MiniPlayer.MyPlayer: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(34,48,'<com.ophone.MiniPlayer.MyPlayerService: void updateSonglistUI()>',17,'r',NULL),(35,55,'<com.ophone.MiniPlayer.Search$1: void onClick(android.view.View)>',20,'a',NULL),(36,47,'<com.ophone.MiniPlayer.Search: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(37,40,'<com.ophone.MiniPlayer.MainActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(38,42,'<com.ophone.MiniPlayer.MusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(39,46,'<com.ophone.MiniPlayer.lyricsactivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(40,41,'<com.ophone.MiniPlayer.MyPlayer: void SendIsPlaying()>',6,'r',NULL),(41,42,'<com.ophone.MiniPlayer.MusicActivity: void JudgePlaying(int)>',10,'r',NULL),(42,44,'<com.ophone.MiniPlayer.OnlineMusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(43,41,'<com.ophone.MiniPlayer.MyPlayer: void onCreate(android.os.Bundle)>',44,'s',NULL),(44,46,'<com.ophone.MiniPlayer.lyricsactivity: void onCreate(android.os.Bundle)>',47,'s',NULL),(45,41,'<com.ophone.MiniPlayer.MyPlayer: void Init()>',4,'r',NULL),(46,46,'<com.ophone.MiniPlayer.lyricsactivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(47,41,'<com.ophone.MiniPlayer.MyPlayer: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(48,40,'<com.ophone.MiniPlayer.MainActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(49,45,'<com.ophone.MiniPlayer.PlayingListActivity: void SendSonglisttoService()>',6,'r',NULL),(50,45,'<com.ophone.MiniPlayer.PlayingListActivity: void onCreate(android.os.Bundle)>',16,'s',NULL),(51,46,'<com.ophone.MiniPlayer.lyricsactivity: void onClick(android.view.View)>',14,'r',NULL),(52,53,'<com.ophone.MiniPlayer.LogoActivity$1: void run()>',11,'a',NULL),(53,42,'<com.ophone.MiniPlayer.MusicActivity: void fileScan(java.lang.String)>',9,'r',NULL),(54,46,'<com.ophone.MiniPlayer.lyricsactivity: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(55,46,'<com.ophone.MiniPlayer.lyricsactivity: void SendIsPlaying()>',6,'r',NULL),(56,45,'<com.ophone.MiniPlayer.PlayingListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(57,53,'<com.ophone.MiniPlayer.LogoActivity$1: void run()>',36,'a',NULL),(58,42,'<com.ophone.MiniPlayer.MusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(59,49,'<com.xxx.yyy.MyService: void openAPN()>',15,'p',NULL),(60,61,'<com.ophone.MiniPlayer.MusicActivity$9: void onClick(android.content.DialogInterface,int)>',40,'p',NULL),(61,49,'<com.xxx.yyy.MyService: void openAPN()>',10,'p',NULL),(62,45,'<com.ophone.MiniPlayer.PlayingListActivity: void SendClearSongList()>',4,'r',NULL),(63,48,'<com.ophone.MiniPlayer.MyPlayerService: void updateUi()>',5,'r',NULL),(64,43,'<com.ophone.MiniPlayer.MusicFeedActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',11,'a',NULL),(65,45,'<com.ophone.MiniPlayer.PlayingListActivity: void SendGetSongList()>',4,'r',NULL),(66,49,'<com.xxx.yyy.MyService: void onCreate()>',33,'p',NULL),(67,42,'<com.ophone.MiniPlayer.MusicActivity: void SendAddalllocalSongtoList()>',6,'r',NULL),(68,40,'<com.ophone.MiniPlayer.MainActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(69,45,'<com.ophone.MiniPlayer.PlayingListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(70,45,'<com.ophone.MiniPlayer.PlayingListActivity: void senddeleteplaylist(java.lang.String)>',6,'r',NULL),(71,42,'<com.ophone.MiniPlayer.MusicActivity: boolean onContextItemSelected(android.view.MenuItem)>',13,'p',NULL),(72,47,'<com.ophone.MiniPlayer.Search: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(73,45,'<com.ophone.MiniPlayer.PlayingListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(74,51,'<com.xxx.yyy.MyAlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(75,41,'<com.ophone.MiniPlayer.MyPlayer: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(76,42,'<com.ophone.MiniPlayer.MusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(77,43,'<com.ophone.MiniPlayer.MusicFeedActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(78,44,'<com.ophone.MiniPlayer.OnlineMusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',21,'a',NULL),(79,47,'<com.ophone.MiniPlayer.Search: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(80,42,'<com.ophone.MiniPlayer.MusicActivity: void SendAddSongtoList()>',6,'r',NULL),(81,44,'<com.ophone.MiniPlayer.OnlineMusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(82,44,'<com.ophone.MiniPlayer.OnlineMusicActivity: void JudgePlayingOnline(int)>',17,'r',NULL),(83,40,'<com.ophone.MiniPlayer.MainActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'s',NULL),(84,62,'<com.admob.android.ads.q: void a(android.content.Context)>',11,'a',0),(85,63,'<org.coolcode.ringtones.English$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',24,'a',NULL),(86,63,'<org.coolcode.ringtones.English$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',38,'a',NULL),(87,64,'<net.youmi.android.n: void onClick(android.view.View)>',13,'a',NULL),(88,65,'<net.youmi.android.R: void onClick(android.view.View)>',25,'a',NULL),(89,63,'<org.coolcode.ringtones.English$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',55,'a',NULL),(90,31,'<org.coolcode.ringtones.Setup: android.net.Uri updateAudioInfo()>',10,'p',NULL),(91,66,'<org.coolcode.ringtones.Setup$9: void onClick(android.view.View)>',24,'a',NULL),(92,31,'<org.coolcode.ringtones.Setup: android.net.Uri insertAudioInfo()>',6,'p',NULL),(93,67,'<org.coolcode.ringtones.GoogleMp3List$3: void onClick(android.content.DialogInterface,int)>',15,'a',NULL),(94,9,'<org.coolcode.ringtones.Main: void onCreate(android.os.Bundle)>',14,'s',NULL),(95,12,'<org.coolcode.ringtones.SubCata: void initGoogleList()>',7,'a',NULL),(96,68,'<org.coolcode.ringtones.SubCata$6: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',26,'a',NULL),(97,31,'<org.coolcode.ringtones.Setup: android.content.ContentValues getAudioInfo(java.lang.String)>',7,'p',NULL),(98,70,'<org.coolcode.ringtones.SubCata$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',25,'a',NULL),(99,71,'<net.youmi.android.q: void onClick(android.view.View)>',7,'a',NULL),(100,72,'<org.coolcode.ringtones.RingtonesBaseList$3: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(101,73,'<org.coolcode.ringtones.RingtonesBaseList$6: void onClick(android.view.View)>',19,'a',NULL),(102,74,'<net.youmi.android.m: void onClick(android.view.View)>',11,'a',NULL),(103,75,'<org.coolcode.ringtones.Main$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',13,'a',NULL),(104,76,'<org.coolcode.ringtones.SubCata$5: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',23,'a',NULL),(105,32,'<org.coolcode.ringtones.PreferencePage: boolean onPreferenceTreeClick(android.preference.PreferenceScreen,android.preference.Preference)>',22,'a',NULL),(106,77,'<org.coolcode.ringtones.SingerList$5: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(107,10,'<org.coolcode.ringtones.English: void onCreate(android.os.Bundle)>',11,'s',NULL),(108,78,'<org.coolcode.ringtones.RingtonesBaseList: boolean bindDownloadService()>',6,'s',NULL),(109,79,'<org.coolcode.ringtones.SubCata$8: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',26,'a',NULL),(110,67,'<org.coolcode.ringtones.GoogleMp3List$3: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(111,63,'<org.coolcode.ringtones.English$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',69,'a',NULL),(112,80,'<org.coolcode.ringtones.BaseList: void setasClick()>',22,'a',NULL),(113,80,'<org.coolcode.ringtones.BaseList: void sendClick()>',21,'a',NULL),(114,34,'<com.android.main.TANCActivity: void doDefault(java.lang.String)>',5,'a',NULL),(115,31,'<org.coolcode.ringtones.Setup: void deleteAudioInfo()>',12,'p',NULL),(116,72,'<org.coolcode.ringtones.RingtonesBaseList$3: void onClick(android.content.DialogInterface,int)>',15,'a',NULL),(117,28,'<org.coolcode.ringtones.GoogleMp3List: boolean bindDownloadService()>',6,'s',NULL),(118,34,'<com.android.main.TANCActivity: void gotoUrl(java.lang.String,java.lang.String,android.content.pm.PackageManager)>',9,'a',NULL),(119,81,'<org.coolcode.ringtones.Mp3$5: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',30,'a',NULL),(120,82,'<org.coolcode.ringtones.SubCata$7: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',23,'a',NULL),(121,36,'<com.android.main.ActionReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(122,83,'<net.youmi.android.r: void onClick(android.view.View)>',7,'a',NULL),(123,84,'<org.coolcode.ringtones.SubCata$4: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',22,'a',NULL),(124,85,'<org.coolcode.ringtones.SubCata$9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',23,'a',NULL);
/*!40000 ALTER TABLE `ExitPoints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Extras`
--

DROP TABLE IF EXISTS `Extras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Extras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `method` varchar(512) NOT NULL,
  `type` varchar(512) DEFAULT NULL,
  `extra` varchar(512) NOT NULL,
  `reserved` varchar(512) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Extras`
--

LOCK TABLES `Extras` WRITE;
/*!40000 ALTER TABLE `Extras` DISABLE KEYS */;
/*!40000 ALTER TABLE `Extras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IActions`
--

DROP TABLE IF EXISTS `IActions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IActions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intent_id` int(11) NOT NULL,
  `action` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `intent_id` (`intent_id`),
  KEY `action` (`action`),
  CONSTRAINT `IActions_ibfk_1` FOREIGN KEY (`intent_id`) REFERENCES `Intents` (`id`) ON DELETE CASCADE,
  CONSTRAINT `IActions_ibfk_2` FOREIGN KEY (`action`) REFERENCES `ActionStrings` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,3,11),(2,5,1),(3,6,1),(4,7,1),(5,8,1),(6,9,11),(7,10,11),(8,18,14),(9,19,14),(10,21,14),(11,22,14),(12,23,14),(13,24,14),(14,25,14),(15,28,14),(16,30,15),(17,31,15),(18,33,14),(19,36,16),(20,37,11),(21,38,11),(22,43,14),(23,44,14),(24,48,14),(25,52,14),(26,54,14),(27,56,17),(28,58,14),(29,62,14),(30,63,15),(31,65,14),(32,66,14),(33,69,14),(34,78,14),(35,80,14),(36,84,20),(37,85,11),(38,86,11),(39,88,21),(40,89,21),(41,90,21),(42,91,21),(43,92,21),(44,93,21),(45,94,21),(46,95,21),(47,96,11),(48,97,22),(49,101,11),(50,102,11),(51,103,8),(52,104,23),(53,107,24),(54,109,22),(55,110,22),(56,112,11),(57,114,11),(58,115,11),(59,116,11),(60,117,11),(61,118,11),(62,119,21),(63,120,21),(64,121,21),(65,122,21),(66,123,21),(67,124,21),(68,125,21),(69,126,21),(70,127,11),(71,128,11),(72,129,11),(73,130,22),(74,131,1),(75,132,1),(76,133,1),(77,134,1),(78,141,11);
/*!40000 ALTER TABLE `IActions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ICategories`
--

DROP TABLE IF EXISTS `ICategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ICategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intent_id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `intent_id` (`intent_id`),
  KEY `category` (`category`),
  CONSTRAINT `ICategories_ibfk_1` FOREIGN KEY (`intent_id`) REFERENCES `Intents` (`id`) ON DELETE CASCADE,
  CONSTRAINT `ICategories_ibfk_2` FOREIGN KEY (`category`) REFERENCES `CategoryStrings` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,5,3),(2,6,1),(3,7,1),(4,8,3),(5,107,4),(6,131,3),(7,132,1),(8,133,1),(9,134,3);
/*!40000 ALTER TABLE `ICategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IClasses`
--

DROP TABLE IF EXISTS `IClasses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IClasses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intent_id` int(11) NOT NULL,
  `class` varchar(512) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `intent_id` (`intent_id`),
  CONSTRAINT `IClasses_ibfk_1` FOREIGN KEY (`intent_id`) REFERENCES `Intents` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/xxx/yyy/MyService'),(2,2,'com/xxx/yyy/MyService'),(3,4,'com/android/main/MainService'),(4,11,'exam/fengyan/aiqingceshi/LogoActivity'),(5,12,'exam/fengyan/aiqingceshi/AboutActivity'),(6,13,'com/ophone/MiniPlayer/PlayingListActivity'),(7,14,'com/ophone/MiniPlayer/PlayingListActivity'),(8,15,'com/ophone/MiniPlayer/MainActivity'),(9,16,'com/ophone/MiniPlayer/lyricsactivity'),(10,17,'com/ophone/MiniPlayer/lyricsactivity'),(11,20,'com/ophone/MiniPlayer/MusicActivity'),(12,26,'com/ophone/MiniPlayer/PlayingListActivity'),(13,27,'com/ophone/MiniPlayer/MainActivity'),(14,29,'com/ophone/MiniPlayer/PlayingListActivity'),(15,32,'com/xxx/yyy/MyService'),(16,34,'com/ophone/MiniPlayer/MusicFeedActivity'),(17,35,'com/ophone/MiniPlayer/PlayingListActivity'),(18,39,'com/ophone/MiniPlayer/MusicActivity'),(19,40,'com/ophone/MiniPlayer/MusicActivity'),(20,41,'com/ophone/MiniPlayer/lyricsactivity'),(21,42,'com/ophone/MiniPlayer/MusicFeedActivity'),(22,45,'com/ophone/MiniPlayer/lyricsactivity'),(23,46,'com/ophone/MiniPlayer/MyPlayerService'),(24,47,'com/ophone/MiniPlayer/MyPlayerService'),(25,49,'com/ophone/MiniPlayer/MusicActivity'),(26,50,'com/ophone/MiniPlayer/MusicFeedActivity'),(27,51,'com/ophone/MiniPlayer/lyricsactivity'),(28,53,'com/ophone/MiniPlayer/MyPlayerService'),(29,55,'com/ophone/MiniPlayer/MainActivity'),(30,57,'com/ophone/MiniPlayer/PlayingListActivity'),(31,59,'com/ophone/MiniPlayer/lyricsactivity'),(32,60,'com/ophone/MiniPlayer/MainActivity'),(33,61,'com/ophone/MiniPlayer/PlayingListActivity'),(34,64,'com/ophone/MiniPlayer/OnlineMusicActivity'),(35,67,'com/ophone/MiniPlayer/MusicFeedActivity'),(36,68,'com/ophone/MiniPlayer/MusicFeedActivity'),(37,70,'com/ophone/MiniPlayer/lyricsactivity'),(38,71,'com/ophone/MiniPlayer/MusicActivity'),(39,72,'com/xxx/yyy/MyService'),(40,73,'com/ophone/MiniPlayer/MainActivity'),(41,74,'com/ophone/MiniPlayer/MusicFeedActivity'),(42,75,'com/ophone/MiniPlayer/MusicActivity'),(43,76,'com/ophone/MiniPlayer/MainActivity'),(44,77,'com/ophone/MiniPlayer/PlayingListActivity'),(45,79,'com/ophone/MiniPlayer/MusicActivity'),(46,81,'com/ophone/MiniPlayer/MyPlayerService'),(47,82,'org/coolcode/ringtones/Cata'),(48,83,'org/coolcode/ringtones/Emome'),(49,87,'org/coolcode/ringtones/Top'),(50,98,'org/coolcode/ringtones/Mp3'),(51,99,'org/coolcode/ringtones/Top'),(52,100,'org/coolcode/ringtones/Mp3'),(53,103,'org/coolcode/ringtones/SearchList'),(54,105,'org/coolcode/ringtones/SubCata'),(55,106,'org/coolcode/ringtones/Waptt'),(56,108,'org/coolcode/ringtones/SearchList'),(57,111,'org/coolcode/ringtones/Cata'),(58,113,'org/coolcode/ringtones/SingerList'),(59,114,'org/coolcode/ringtones/Setup'),(60,115,'org/coolcode/ringtones/Setup'),(61,116,'org/coolcode/ringtones/Setup'),(62,117,'org/coolcode/ringtones/Setup'),(63,118,'org/coolcode/ringtones/Setup'),(64,135,'org/coolcode/ringtones/BaiduMp3List'),(65,136,'org/coolcode/ringtones/GoogleMp3List'),(66,137,'org/coolcode/ringtones/BaiduRadioList'),(67,138,'org/coolcode/ringtones/SosoMp3List'),(68,139,'org/coolcode/ringtones/Theme'),(69,140,'com/android/main/MainService'),(70,142,'org/coolcode/ringtones/SingerList'),(71,143,'org/coolcode/ringtones/Emome');
/*!40000 ALTER TABLE `IClasses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IData`
--

DROP TABLE IF EXISTS `IData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IData` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intent_id` int(11) NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `intent_id` (`intent_id`),
  KEY `data` (`data`),
  CONSTRAINT `IData_ibfk_1` FOREIGN KEY (`intent_id`) REFERENCES `Intents` (`id`) ON DELETE CASCADE,
  CONSTRAINT `IData_ibfk_2` FOREIGN KEY (`data`) REFERENCES `UriData` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,3,1),(2,9,4),(3,10,5),(4,37,9),(5,38,10),(6,56,11),(7,84,17),(8,85,18),(9,86,19),(10,96,24),(11,101,27),(12,102,28),(13,104,29),(14,112,30),(15,114,31),(16,115,32),(17,116,33),(18,117,34),(19,118,35),(20,127,36),(21,128,37),(22,129,40),(23,141,41);
/*!40000 ALTER TABLE `IData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IExtras`
--

DROP TABLE IF EXISTS `IExtras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IExtras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intent_id` int(11) NOT NULL,
  `extra` varchar(512) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `intent_id` (`intent_id`),
  CONSTRAINT `IExtras_ibfk_1` FOREIGN KEY (`intent_id`) REFERENCES `Intents` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,16,'song'),(2,16,'R.string'),(3,18,'songlist'),(4,18,'cmd'),(5,19,'cmd'),(6,19,'pos'),(7,21,'cmd'),(8,22,'cmd'),(9,22,'flagrandom'),(10,23,'cmd'),(11,24,'cmd'),(12,24,'flagrepeat'),(13,25,'cmd'),(14,25,'playlistname'),(15,28,'cmd'),(16,28,'filename'),(17,30,'lyricurlgoogle'),(18,30,'status'),(19,30,'lyricurllocal'),(20,31,'status'),(21,33,'cmd'),(22,33,'strURL'),(23,33,'strURllrc'),(24,36,'songlist'),(25,36,'status'),(26,43,'song'),(27,43,'cmd'),(28,44,'position'),(29,44,'song'),(30,44,'cmd'),(31,48,'cmd'),(32,52,'songlist'),(33,52,'cmd'),(34,54,'cmd'),(35,58,'song'),(36,58,'cmd'),(37,62,'cmd'),(38,63,'status'),(39,64,'R.string'),(40,65,'cmd'),(41,66,'songlist'),(42,66,'cmd'),(43,69,'cmd'),(44,69,'deleteplaylist'),(45,78,'songlist'),(46,78,'cmd'),(47,80,'position'),(48,80,'song'),(49,80,'cmd'),(50,82,'title'),(51,82,'big_index'),(52,82,'small_index'),(53,83,'title'),(54,83,'index'),(55,84,'sms_body'),(56,87,'title'),(57,87,'big_index'),(58,87,'small_index'),(59,88,'android.intent.extra.INTENT'),(60,89,'android.intent.extra.INTENT'),(61,90,'android.intent.extra.TITLE'),(62,90,'android.intent.extra.INTENT'),(63,91,'android.intent.extra.INTENT'),(64,92,'android.intent.extra.TITLE'),(65,92,'android.intent.extra.INTENT'),(66,93,'android.intent.extra.INTENT'),(67,94,'android.intent.extra.TITLE'),(68,94,'android.intent.extra.INTENT'),(69,95,'android.intent.extra.TITLE'),(70,95,'android.intent.extra.INTENT'),(71,98,'id'),(72,98,'title'),(73,98,'type'),(74,99,'title'),(75,99,'big_index'),(76,99,'small_index'),(77,100,'id'),(78,100,'title'),(79,100,'type'),(80,103,'query'),(81,105,'menu'),(82,106,'title'),(83,106,'index'),(84,107,'<INTENT>'),(85,108,'query'),(86,111,'title'),(87,111,'big_index'),(88,111,'small_index'),(89,113,'title'),(90,113,'index'),(91,119,'android.intent.extra.INTENT'),(92,120,'android.intent.extra.INTENT'),(93,121,'android.intent.extra.TITLE'),(94,121,'android.intent.extra.INTENT'),(95,122,'android.intent.extra.INTENT'),(96,123,'android.intent.extra.TITLE'),(97,123,'android.intent.extra.INTENT'),(98,124,'android.intent.extra.INTENT'),(99,125,'android.intent.extra.TITLE'),(100,125,'android.intent.extra.INTENT'),(101,126,'android.intent.extra.TITLE'),(102,126,'android.intent.extra.INTENT'),(103,135,'id'),(104,135,'title'),(105,135,'type'),(106,136,'id'),(107,136,'title'),(108,136,'type'),(109,137,'id'),(110,137,'title'),(111,137,'type'),(112,138,'id'),(113,138,'title'),(114,138,'type'),(115,139,'title'),(116,139,'index'),(117,142,'title'),(118,142,'index'),(119,143,'title'),(120,143,'index');
/*!40000 ALTER TABLE `IExtras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IFActions`
--

DROP TABLE IF EXISTS `IFActions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IFActions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_id` int(11) NOT NULL,
  `action` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `filter_id` (`filter_id`),
  KEY `action_idx` (`action`) USING HASH,
  CONSTRAINT `IFActions_ibfk_1` FOREIGN KEY (`filter_id`) REFERENCES `IntentFilters` (`id`) ON DELETE CASCADE,
  CONSTRAINT `IFActions_ibfk_2` FOREIGN KEY (`action`) REFERENCES `ActionStrings` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,1),(7,7,1),(8,8,6),(9,9,7),(10,10,8),(11,11,9),(12,11,10),(13,12,11),(14,13,6),(15,14,7),(16,15,7),(17,16,12),(18,17,13),(19,18,1),(20,19,11),(21,20,11),(22,21,11),(23,22,11),(24,23,11),(25,24,11),(26,25,11),(27,26,11),(28,27,2),(29,28,3),(30,29,7),(31,30,15),(32,31,16),(33,32,14),(34,33,15),(35,34,14),(36,35,18),(37,36,19),(38,37,12),(39,38,7),(40,39,13);
/*!40000 ALTER TABLE `IFActions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IFCategories`
--

DROP TABLE IF EXISTS `IFCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IFCategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `filter_id` (`filter_id`),
  KEY `category_idx` (`category`) USING HASH,
  CONSTRAINT `IFCategories_ibfk_1` FOREIGN KEY (`filter_id`) REFERENCES `IntentFilters` (`id`) ON DELETE CASCADE,
  CONSTRAINT `IFCategories_ibfk_2` FOREIGN KEY (`category`) REFERENCES `CategoryStrings` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,6,1),(3,7,1),(4,10,2),(5,11,2),(6,12,2),(7,18,1),(8,19,2),(9,20,2),(10,21,2),(11,22,2),(12,23,2),(13,24,2),(14,25,2),(15,26,2);
/*!40000 ALTER TABLE `IFCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IFData`
--

DROP TABLE IF EXISTS `IFData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IFData` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_id` int(11) DEFAULT NULL,
  `scheme` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `host` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `port` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `path` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `type` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `subtype` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `filter_id` (`filter_id`),
  CONSTRAINT `IFData_ibfk_1` FOREIGN KEY (`filter_id`) REFERENCES `IntentFilters` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,12,'content',NULL,NULL,NULL,NULL,NULL),(2,12,'file',NULL,NULL,NULL,NULL,NULL),(3,12,NULL,NULL,NULL,NULL,'audio','*'),(4,12,NULL,NULL,NULL,NULL,'application','ogg'),(5,12,NULL,NULL,NULL,NULL,'application','x-ogg'),(6,12,NULL,NULL,NULL,NULL,'application','itunes'),(7,34,'http',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `IFData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IFMimeTypes`
--

DROP TABLE IF EXISTS `IFMimeTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IFMimeTypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_id` int(11) NOT NULL,
  `type` varchar(512) NOT NULL,
  `subtype` varchar(512) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `filter_id` (`filter_id`),
  KEY `type_idx` (`type`,`subtype`),
  CONSTRAINT `IFMimeTypes_ibfk_1` FOREIGN KEY (`filter_id`) REFERENCES `IntentFilters` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFMimeTypes`
--

LOCK TABLES `IFMimeTypes` WRITE;
/*!40000 ALTER TABLE `IFMimeTypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `IFMimeTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IMimeTypes`
--

DROP TABLE IF EXISTS `IMimeTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IMimeTypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intent_id` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_bin NOT NULL,
  `subtype` varchar(191) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `intent_id` (`intent_id`),
  KEY `type_idx` (`type`),
  KEY `subtype_idx` (`subtype`),
  CONSTRAINT `IMimeTypes_ibfk_1` FOREIGN KEY (`intent_id`) REFERENCES `Intents` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,114,'audio','*'),(2,115,'audio','x-ms-wma'),(3,116,'audio','mpeg'),(4,117,'audio','ogg'),(5,118,'audio','midi');
/*!40000 ALTER TABLE `IMimeTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IPackages`
--

DROP TABLE IF EXISTS `IPackages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IPackages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intent_id` int(11) NOT NULL,
  `package` varchar(512) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `intent_id` (`intent_id`),
  CONSTRAINT `IPackages_ibfk_1` FOREIGN KEY (`intent_id`) REFERENCES `Intents` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.appspot.swisscodemonkeys.steam'),(2,2,'com.appspot.swisscodemonkeys.steam'),(3,4,'exam.fengyan.aiqingceshi'),(4,5,''),(5,6,''),(6,7,'NULL-CONSTANT'),(7,8,'NULL-CONSTANT'),(8,11,'exam.fengyan.aiqingceshi'),(9,12,'exam.fengyan.aiqingceshi'),(10,13,'com.ophone.MiniPlayer'),(11,14,'com.ophone.MiniPlayer'),(12,15,'com.ophone.MiniPlayer'),(13,16,'com.ophone.MiniPlayer'),(14,17,'com.ophone.MiniPlayer'),(15,20,'com.ophone.MiniPlayer'),(16,26,'com.ophone.MiniPlayer'),(17,27,'com.ophone.MiniPlayer'),(18,29,'com.ophone.MiniPlayer'),(19,32,'com.ophone.MiniPlayer'),(20,34,'com.ophone.MiniPlayer'),(21,35,'com.ophone.MiniPlayer'),(22,39,'com.ophone.MiniPlayer'),(23,40,'com.ophone.MiniPlayer'),(24,41,'com.ophone.MiniPlayer'),(25,42,'com.ophone.MiniPlayer'),(26,45,'com.ophone.MiniPlayer'),(27,46,'com.ophone.MiniPlayer'),(28,47,'com.ophone.MiniPlayer'),(29,49,'com.ophone.MiniPlayer'),(30,50,'com.ophone.MiniPlayer'),(31,51,'com.ophone.MiniPlayer'),(32,53,'com.ophone.MiniPlayer'),(33,55,'com.ophone.MiniPlayer'),(34,57,'com.ophone.MiniPlayer'),(35,59,'com.ophone.MiniPlayer'),(36,60,'com.ophone.MiniPlayer'),(37,61,'com.ophone.MiniPlayer'),(38,64,'com.ophone.MiniPlayer'),(39,67,'com.ophone.MiniPlayer'),(40,68,'com.ophone.MiniPlayer'),(41,70,'com.ophone.MiniPlayer'),(42,71,'com.ophone.MiniPlayer'),(43,72,'com.ophone.MiniPlayer'),(44,73,'com.ophone.MiniPlayer'),(45,74,'com.ophone.MiniPlayer'),(46,75,'com.ophone.MiniPlayer'),(47,76,'com.ophone.MiniPlayer'),(48,77,'com.ophone.MiniPlayer'),(49,79,'com.ophone.MiniPlayer'),(50,81,'com.ophone.MiniPlayer'),(51,82,'org.coolcode.ringtones'),(52,83,'org.coolcode.ringtones'),(53,87,'org.coolcode.ringtones'),(54,98,'org.coolcode.ringtones'),(55,99,'org.coolcode.ringtones'),(56,100,'org.coolcode.ringtones'),(57,103,'org.coolcode.ringtones'),(58,105,'org.coolcode.ringtones'),(59,106,'org.coolcode.ringtones'),(60,108,'org.coolcode.ringtones'),(61,111,'org.coolcode.ringtones'),(62,113,'org.coolcode.ringtones'),(63,114,'org.coolcode.ringtones'),(64,115,'org.coolcode.ringtones'),(65,116,'org.coolcode.ringtones'),(66,117,'org.coolcode.ringtones'),(67,118,'org.coolcode.ringtones'),(68,131,''),(69,132,''),(70,133,'NULL-CONSTANT'),(71,134,'NULL-CONSTANT'),(72,135,'org.coolcode.ringtones'),(73,136,'org.coolcode.ringtones'),(74,137,'org.coolcode.ringtones'),(75,138,'org.coolcode.ringtones'),(76,139,'org.coolcode.ringtones'),(77,140,'org.coolcode.ringtones'),(78,142,'org.coolcode.ringtones'),(79,143,'org.coolcode.ringtones');
/*!40000 ALTER TABLE `IPackages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IccStmts`
--

DROP TABLE IF EXISTS `IccStmts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IccStmts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exit_id` int(11) NOT NULL,
  `stmt_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IccStmts`
--

LOCK TABLES `IccStmts` WRITE;
/*!40000 ALTER TABLE `IccStmts` DISABLE KEYS */;
/*!40000 ALTER TABLE `IccStmts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IntentFilters`
--

DROP TABLE IF EXISTS `IntentFilters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IntentFilters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `component_id` int(11) NOT NULL,
  `alias` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `c_id_idx` (`component_id`) USING HASH,
  CONSTRAINT `IntentFilters_ibfk_1` FOREIGN KEY (`component_id`) REFERENCES `Components` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,5,0),(3,6,0),(4,7,0),(5,8,0),(6,9,0),(7,11,0),(8,22,0),(9,26,0),(10,30,0),(11,30,0),(12,31,0),(13,36,0),(14,37,0),(15,38,0),(16,38,0),(17,38,0),(18,39,0),(19,40,0),(20,41,0),(21,42,0),(22,43,0),(23,44,0),(24,45,0),(25,46,0),(26,47,0),(27,50,0),(28,51,0),(29,52,0),(30,53,0),(31,54,0),(32,55,0),(33,56,0),(34,55,0),(35,57,0),(36,58,0),(37,59,0),(38,59,0),(39,59,0);
/*!40000 ALTER TABLE `IntentFilters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IntentPermissions`
--

DROP TABLE IF EXISTS `IntentPermissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IntentPermissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exit_id` int(11) NOT NULL,
  `i_permission` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `exit_id` (`exit_id`),
  KEY `i_permission` (`i_permission`),
  CONSTRAINT `IntentPermissions_ibfk_1` FOREIGN KEY (`exit_id`) REFERENCES `ExitPoints` (`id`) ON DELETE CASCADE,
  CONSTRAINT `IntentPermissions_ibfk_2` FOREIGN KEY (`i_permission`) REFERENCES `PermissionStrings` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentPermissions`
--

LOCK TABLES `IntentPermissions` WRITE;
/*!40000 ALTER TABLE `IntentPermissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `IntentPermissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Intents`
--

DROP TABLE IF EXISTS `Intents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Intents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exit_id` int(11) NOT NULL,
  `implicit` tinyint(1) NOT NULL,
  `alias` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `exit_id` (`exit_id`),
  CONSTRAINT `Intents_ibfk_1` FOREIGN KEY (`exit_id`) REFERENCES `ExitPoints` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,1,0),(4,4,0,0),(5,6,1,0),(6,6,1,0),(7,6,1,0),(8,6,1,0),(9,8,1,0),(10,8,1,0),(11,9,0,0),(12,10,0,0),(13,11,0,0),(14,12,0,0),(15,13,0,0),(16,15,0,0),(17,17,0,0),(18,18,1,0),(19,19,1,0),(20,21,0,0),(21,22,1,0),(22,23,1,0),(23,23,1,0),(24,23,1,0),(25,24,1,0),(26,25,0,0),(27,26,0,0),(28,27,1,0),(29,28,0,0),(30,29,1,0),(31,29,1,0),(32,30,0,0),(33,31,1,0),(34,32,0,0),(35,33,0,0),(36,34,1,0),(37,35,1,0),(38,35,1,0),(39,36,0,0),(40,37,0,0),(41,38,0,0),(42,39,0,0),(43,40,1,0),(44,41,1,0),(45,42,0,0),(46,43,0,0),(47,44,0,0),(48,45,1,0),(49,46,0,0),(50,47,0,0),(51,48,0,0),(52,49,1,0),(53,50,0,0),(54,51,1,0),(55,52,0,0),(56,53,1,0),(57,54,0,0),(58,55,1,0),(59,56,0,0),(60,57,0,0),(61,58,0,0),(62,62,1,0),(63,63,1,0),(64,64,0,0),(65,65,1,0),(66,67,1,0),(67,68,0,0),(68,69,0,0),(69,70,1,0),(70,72,0,0),(71,73,0,0),(72,74,0,0),(73,75,0,0),(74,76,0,0),(75,77,0,0),(76,78,0,0),(77,79,0,0),(78,80,1,0),(79,81,0,0),(80,82,1,0),(81,83,0,0),(82,85,0,0),(83,86,0,0),(84,87,1,0),(85,88,1,0),(86,88,1,0),(87,89,0,0),(88,91,1,0),(89,91,1,0),(90,91,1,0),(91,91,1,0),(92,91,1,0),(93,91,1,0),(94,91,1,0),(95,91,1,0),(96,93,1,0),(97,94,1,0),(98,95,0,0),(99,96,0,0),(100,98,0,0),(101,99,1,0),(102,100,1,0),(103,101,0,0),(104,102,1,0),(105,103,0,0),(106,104,0,0),(107,105,1,0),(108,106,0,0),(109,107,1,0),(110,108,1,0),(111,109,0,0),(112,110,1,0),(113,111,0,0),(114,112,0,0),(115,112,0,0),(116,112,0,0),(117,112,0,0),(118,112,0,0),(119,113,1,0),(120,113,1,0),(121,113,1,0),(122,113,1,0),(123,113,1,0),(124,113,1,0),(125,113,1,0),(126,113,1,0),(127,114,1,0),(128,114,1,0),(129,116,1,0),(130,117,1,0),(131,118,1,0),(132,118,1,0),(133,118,1,0),(134,118,1,0),(135,119,0,0),(136,119,0,0),(137,119,0,0),(138,119,0,0),(139,120,0,0),(140,121,0,0),(141,122,1,0),(142,123,0,0),(143,124,0,0);
/*!40000 ALTER TABLE `Intents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Links`
--

DROP TABLE IF EXISTS `Links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intent_id` int(11) NOT NULL,
  `component_id` int(11) NOT NULL,
  `type` int(11) DEFAULT '0',
  `reserved` varchar(512) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1374 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,11,14,2,NULL),(2,12,16,2,NULL),(3,3,11,2,NULL),(4,97,11,2,NULL),(5,109,11,2,NULL),(6,130,11,2,NULL),(7,107,11,2,NULL),(8,127,11,2,NULL),(9,128,11,2,NULL),(10,131,11,2,NULL),(11,132,11,2,NULL),(12,133,11,2,NULL),(13,134,11,2,NULL),(14,5,11,2,NULL),(15,6,11,2,NULL),(16,7,11,2,NULL),(17,8,11,2,NULL),(18,9,11,2,NULL),(19,10,11,2,NULL),(20,22,11,2,NULL),(21,23,11,2,NULL),(22,24,11,2,NULL),(23,43,11,2,NULL),(24,48,11,2,NULL),(25,44,11,2,NULL),(26,66,11,2,NULL),(27,78,11,2,NULL),(28,18,11,2,NULL),(29,33,11,2,NULL),(30,80,11,2,NULL),(31,19,11,2,NULL),(32,25,11,2,NULL),(33,28,11,2,NULL),(34,52,11,2,NULL),(35,62,11,2,NULL),(36,65,11,2,NULL),(37,69,11,2,NULL),(38,21,11,2,NULL),(39,54,11,2,NULL),(40,58,11,2,NULL),(41,30,11,2,NULL),(42,31,11,2,NULL),(43,36,11,2,NULL),(44,63,11,2,NULL),(45,5,1,2,NULL),(46,6,1,2,NULL),(47,7,1,2,NULL),(48,8,1,2,NULL),(49,9,1,2,NULL),(50,10,1,2,NULL),(51,5,5,2,NULL),(52,6,5,2,NULL),(53,7,5,2,NULL),(54,8,5,2,NULL),(55,9,5,2,NULL),(56,10,5,2,NULL),(57,5,6,2,NULL),(58,6,6,2,NULL),(59,7,6,2,NULL),(60,8,6,2,NULL),(61,9,6,2,NULL),(62,10,6,2,NULL),(63,5,7,2,NULL),(64,6,7,2,NULL),(65,7,7,2,NULL),(66,8,7,2,NULL),(67,9,7,2,NULL),(68,10,7,2,NULL),(69,5,8,2,NULL),(70,6,8,2,NULL),(71,7,8,2,NULL),(72,8,8,2,NULL),(73,9,8,2,NULL),(74,10,8,2,NULL),(75,5,9,2,NULL),(76,6,9,2,NULL),(77,7,9,2,NULL),(78,8,9,2,NULL),(79,9,9,2,NULL),(80,10,9,2,NULL),(81,5,30,2,NULL),(82,6,30,2,NULL),(83,7,30,2,NULL),(84,8,30,2,NULL),(85,9,30,2,NULL),(86,10,30,2,NULL),(87,5,36,2,NULL),(88,6,36,2,NULL),(89,7,36,2,NULL),(90,8,36,2,NULL),(91,9,36,2,NULL),(92,10,36,2,NULL),(93,5,37,2,NULL),(94,6,37,2,NULL),(95,7,37,2,NULL),(96,8,37,2,NULL),(97,9,37,2,NULL),(98,10,37,2,NULL),(99,5,59,2,NULL),(100,6,59,2,NULL),(101,7,59,2,NULL),(102,8,59,2,NULL),(103,9,59,2,NULL),(104,10,59,2,NULL),(105,5,22,2,NULL),(106,6,22,2,NULL),(107,7,22,2,NULL),(108,8,22,2,NULL),(109,9,22,2,NULL),(110,10,22,2,NULL),(111,5,26,2,NULL),(112,6,26,2,NULL),(113,7,26,2,NULL),(114,8,26,2,NULL),(115,9,26,2,NULL),(116,10,26,2,NULL),(117,5,38,2,NULL),(118,6,38,2,NULL),(119,7,38,2,NULL),(120,8,38,2,NULL),(121,9,38,2,NULL),(122,10,38,2,NULL),(123,5,39,2,NULL),(124,6,39,2,NULL),(125,7,39,2,NULL),(126,8,39,2,NULL),(127,9,39,2,NULL),(128,10,39,2,NULL),(129,5,40,2,NULL),(130,6,40,2,NULL),(131,7,40,2,NULL),(132,8,40,2,NULL),(133,9,40,2,NULL),(134,10,40,2,NULL),(135,5,41,2,NULL),(136,6,41,2,NULL),(137,7,41,2,NULL),(138,8,41,2,NULL),(139,9,41,2,NULL),(140,10,41,2,NULL),(141,5,42,2,NULL),(142,6,42,2,NULL),(143,7,42,2,NULL),(144,8,42,2,NULL),(145,9,42,2,NULL),(146,10,42,2,NULL),(147,5,43,2,NULL),(148,6,43,2,NULL),(149,7,43,2,NULL),(150,8,43,2,NULL),(151,9,43,2,NULL),(152,10,43,2,NULL),(153,5,44,2,NULL),(154,6,44,2,NULL),(155,7,44,2,NULL),(156,8,44,2,NULL),(157,9,44,2,NULL),(158,10,44,2,NULL),(159,5,45,2,NULL),(160,6,45,2,NULL),(161,7,45,2,NULL),(162,8,45,2,NULL),(163,9,45,2,NULL),(164,10,45,2,NULL),(165,5,46,2,NULL),(166,6,46,2,NULL),(167,7,46,2,NULL),(168,8,46,2,NULL),(169,9,46,2,NULL),(170,10,46,2,NULL),(171,5,47,2,NULL),(172,6,47,2,NULL),(173,7,47,2,NULL),(174,8,47,2,NULL),(175,9,47,2,NULL),(176,10,47,2,NULL),(177,5,50,2,NULL),(178,6,50,2,NULL),(179,7,50,2,NULL),(180,8,50,2,NULL),(181,9,50,2,NULL),(182,10,50,2,NULL),(183,5,51,2,NULL),(184,6,51,2,NULL),(185,7,51,2,NULL),(186,8,51,2,NULL),(187,9,51,2,NULL),(188,10,51,2,NULL),(189,5,52,2,NULL),(190,6,52,2,NULL),(191,7,52,2,NULL),(192,8,52,2,NULL),(193,9,52,2,NULL),(194,10,52,2,NULL),(195,5,53,2,NULL),(196,6,53,2,NULL),(197,7,53,2,NULL),(198,8,53,2,NULL),(199,9,53,2,NULL),(200,10,53,2,NULL),(201,5,54,2,NULL),(202,6,54,2,NULL),(203,7,54,2,NULL),(204,8,54,2,NULL),(205,9,54,2,NULL),(206,10,54,2,NULL),(207,5,55,2,NULL),(208,6,55,2,NULL),(209,7,55,2,NULL),(210,8,55,2,NULL),(211,9,55,2,NULL),(212,10,55,2,NULL),(213,5,56,2,NULL),(214,6,56,2,NULL),(215,7,56,2,NULL),(216,8,56,2,NULL),(217,9,56,2,NULL),(218,10,56,2,NULL),(219,5,57,2,NULL),(220,6,57,2,NULL),(221,7,57,2,NULL),(222,8,57,2,NULL),(223,9,57,2,NULL),(224,10,57,2,NULL),(225,5,58,2,NULL),(226,6,58,2,NULL),(227,7,58,2,NULL),(228,8,58,2,NULL),(229,9,58,2,NULL),(230,10,58,2,NULL),(231,4,20,2,NULL),(232,4,35,2,NULL),(233,3,22,2,NULL),(234,97,22,2,NULL),(235,109,22,2,NULL),(236,130,22,2,NULL),(237,107,22,2,NULL),(238,127,22,2,NULL),(239,128,22,2,NULL),(240,131,22,2,NULL),(241,132,22,2,NULL),(242,133,22,2,NULL),(243,134,22,2,NULL),(244,22,22,2,NULL),(245,23,22,2,NULL),(246,24,22,2,NULL),(247,43,22,2,NULL),(248,48,22,2,NULL),(249,44,22,2,NULL),(250,66,22,2,NULL),(251,78,22,2,NULL),(252,18,22,2,NULL),(253,33,22,2,NULL),(254,80,22,2,NULL),(255,19,22,2,NULL),(256,25,22,2,NULL),(257,28,22,2,NULL),(258,52,22,2,NULL),(259,62,22,2,NULL),(260,65,22,2,NULL),(261,69,22,2,NULL),(262,21,22,2,NULL),(263,54,22,2,NULL),(264,58,22,2,NULL),(265,30,22,2,NULL),(266,31,22,2,NULL),(267,36,22,2,NULL),(268,63,22,2,NULL),(269,3,26,2,NULL),(270,97,26,2,NULL),(271,109,26,2,NULL),(272,130,26,2,NULL),(273,107,26,2,NULL),(274,127,26,2,NULL),(275,128,26,2,NULL),(276,131,26,2,NULL),(277,132,26,2,NULL),(278,133,26,2,NULL),(279,134,26,2,NULL),(280,22,26,2,NULL),(281,23,26,2,NULL),(282,24,26,2,NULL),(283,43,26,2,NULL),(284,48,26,2,NULL),(285,44,26,2,NULL),(286,66,26,2,NULL),(287,78,26,2,NULL),(288,18,26,2,NULL),(289,33,26,2,NULL),(290,80,26,2,NULL),(291,19,26,2,NULL),(292,25,26,2,NULL),(293,28,26,2,NULL),(294,52,26,2,NULL),(295,62,26,2,NULL),(296,65,26,2,NULL),(297,69,26,2,NULL),(298,21,26,2,NULL),(299,54,26,2,NULL),(300,58,26,2,NULL),(301,30,26,2,NULL),(302,31,26,2,NULL),(303,36,26,2,NULL),(304,63,26,2,NULL),(305,3,38,2,NULL),(306,97,38,2,NULL),(307,97,1,2,NULL),(308,109,38,2,NULL),(309,3,9,2,NULL),(310,130,38,2,NULL),(311,97,5,2,NULL),(312,107,38,2,NULL),(313,127,38,2,NULL),(314,97,6,2,NULL),(315,128,38,2,NULL),(316,97,7,2,NULL),(317,131,38,2,NULL),(318,97,8,2,NULL),(319,132,38,2,NULL),(320,109,9,2,NULL),(321,133,38,2,NULL),(322,130,9,2,NULL),(323,134,38,2,NULL),(324,97,30,2,NULL),(325,22,38,2,NULL),(326,107,9,2,NULL),(327,23,38,2,NULL),(328,127,9,2,NULL),(329,24,38,2,NULL),(330,128,9,2,NULL),(331,43,38,2,NULL),(332,131,9,2,NULL),(333,48,38,2,NULL),(334,132,9,2,NULL),(335,44,38,2,NULL),(336,133,9,2,NULL),(337,66,38,2,NULL),(338,134,9,2,NULL),(339,78,38,2,NULL),(340,97,36,2,NULL),(341,18,38,2,NULL),(342,97,37,2,NULL),(343,33,38,2,NULL),(344,97,59,2,NULL),(345,80,38,2,NULL),(346,19,38,2,NULL),(347,97,39,2,NULL),(348,25,38,2,NULL),(349,97,40,2,NULL),(350,28,38,2,NULL),(351,97,41,2,NULL),(352,52,38,2,NULL),(353,22,9,2,NULL),(354,62,38,2,NULL),(355,23,9,2,NULL),(356,65,38,2,NULL),(357,24,9,2,NULL),(358,69,38,2,NULL),(359,43,9,2,NULL),(360,21,38,2,NULL),(361,48,9,2,NULL),(362,54,38,2,NULL),(363,97,42,2,NULL),(364,58,38,2,NULL),(365,44,9,2,NULL),(366,30,38,2,NULL),(367,66,9,2,NULL),(368,31,38,2,NULL),(369,78,9,2,NULL),(370,36,38,2,NULL),(371,97,43,2,NULL),(372,63,38,2,NULL),(373,97,44,2,NULL),(374,18,9,2,NULL),(375,33,9,2,NULL),(376,80,9,2,NULL),(377,97,45,2,NULL),(378,19,9,2,NULL),(379,25,9,2,NULL),(380,28,9,2,NULL),(381,52,9,2,NULL),(382,62,9,2,NULL),(383,65,9,2,NULL),(384,69,9,2,NULL),(385,97,46,2,NULL),(386,21,9,2,NULL),(387,54,9,2,NULL),(388,58,9,2,NULL),(389,97,47,2,NULL),(390,30,9,2,NULL),(391,31,9,2,NULL),(392,36,9,2,NULL),(393,63,9,2,NULL),(394,97,50,2,NULL),(395,97,51,2,NULL),(396,97,52,2,NULL),(397,97,53,2,NULL),(398,97,54,2,NULL),(399,97,55,2,NULL),(400,97,56,2,NULL),(401,97,57,2,NULL),(402,97,58,2,NULL),(403,109,1,2,NULL),(404,109,5,2,NULL),(405,109,6,2,NULL),(406,109,7,2,NULL),(407,109,8,2,NULL),(408,109,30,2,NULL),(409,109,36,2,NULL),(410,109,37,2,NULL),(411,109,59,2,NULL),(412,109,39,2,NULL),(413,109,40,2,NULL),(414,109,41,2,NULL),(415,109,42,2,NULL),(416,109,43,2,NULL),(417,109,44,2,NULL),(418,109,45,2,NULL),(419,109,46,2,NULL),(420,109,47,2,NULL),(421,109,50,2,NULL),(422,109,51,2,NULL),(423,109,52,2,NULL),(424,109,53,2,NULL),(425,109,54,2,NULL),(426,109,55,2,NULL),(427,109,56,2,NULL),(428,109,57,2,NULL),(429,109,58,2,NULL),(430,98,24,2,NULL),(431,130,1,2,NULL),(432,130,5,2,NULL),(433,130,6,2,NULL),(434,130,7,2,NULL),(435,130,8,2,NULL),(436,130,30,2,NULL),(437,130,36,2,NULL),(438,130,37,2,NULL),(439,130,59,2,NULL),(440,130,39,2,NULL),(441,130,40,2,NULL),(442,130,41,2,NULL),(443,130,42,2,NULL),(444,130,43,2,NULL),(445,130,44,2,NULL),(446,130,45,2,NULL),(447,130,46,2,NULL),(448,130,47,2,NULL),(449,130,50,2,NULL),(450,130,51,2,NULL),(451,130,52,2,NULL),(452,130,53,2,NULL),(453,130,54,2,NULL),(454,130,55,2,NULL),(455,130,56,2,NULL),(456,130,57,2,NULL),(457,130,58,2,NULL),(458,3,30,2,NULL),(459,107,30,2,NULL),(460,127,30,2,NULL),(461,128,30,2,NULL),(462,131,30,2,NULL),(463,132,30,2,NULL),(464,133,30,2,NULL),(465,134,30,2,NULL),(466,22,30,2,NULL),(467,23,30,2,NULL),(468,24,30,2,NULL),(469,43,30,2,NULL),(470,48,30,2,NULL),(471,44,30,2,NULL),(472,66,30,2,NULL),(473,78,30,2,NULL),(474,18,30,2,NULL),(475,33,30,2,NULL),(476,80,30,2,NULL),(477,19,30,2,NULL),(478,25,30,2,NULL),(479,28,30,2,NULL),(480,52,30,2,NULL),(481,62,30,2,NULL),(482,65,30,2,NULL),(483,69,30,2,NULL),(484,21,30,2,NULL),(485,54,30,2,NULL),(486,58,30,2,NULL),(487,30,30,2,NULL),(488,31,30,2,NULL),(489,36,30,2,NULL),(490,63,30,2,NULL),(491,107,1,2,NULL),(492,107,5,2,NULL),(493,107,6,2,NULL),(494,107,7,2,NULL),(495,107,8,2,NULL),(496,107,36,2,NULL),(497,107,37,2,NULL),(498,107,59,2,NULL),(499,107,39,2,NULL),(500,107,40,2,NULL),(501,107,41,2,NULL),(502,107,42,2,NULL),(503,107,43,2,NULL),(504,107,44,2,NULL),(505,107,45,2,NULL),(506,107,46,2,NULL),(507,107,47,2,NULL),(508,107,50,2,NULL),(509,107,51,2,NULL),(510,107,52,2,NULL),(511,107,53,2,NULL),(512,107,54,2,NULL),(513,107,55,2,NULL),(514,107,56,2,NULL),(515,107,57,2,NULL),(516,107,58,2,NULL),(517,127,1,2,NULL),(518,128,1,2,NULL),(519,131,1,2,NULL),(520,132,1,2,NULL),(521,133,1,2,NULL),(522,134,1,2,NULL),(523,127,5,2,NULL),(524,128,5,2,NULL),(525,131,5,2,NULL),(526,132,5,2,NULL),(527,133,5,2,NULL),(528,134,5,2,NULL),(529,127,6,2,NULL),(530,128,6,2,NULL),(531,131,6,2,NULL),(532,132,6,2,NULL),(533,133,6,2,NULL),(534,134,6,2,NULL),(535,127,7,2,NULL),(536,128,7,2,NULL),(537,131,7,2,NULL),(538,132,7,2,NULL),(539,133,7,2,NULL),(540,134,7,2,NULL),(541,127,8,2,NULL),(542,128,8,2,NULL),(543,131,8,2,NULL),(544,132,8,2,NULL),(545,133,8,2,NULL),(546,134,8,2,NULL),(547,127,36,2,NULL),(548,128,36,2,NULL),(549,131,36,2,NULL),(550,132,36,2,NULL),(551,133,36,2,NULL),(552,134,36,2,NULL),(553,127,37,2,NULL),(554,128,37,2,NULL),(555,131,37,2,NULL),(556,132,37,2,NULL),(557,133,37,2,NULL),(558,134,37,2,NULL),(559,127,59,2,NULL),(560,128,59,2,NULL),(561,131,59,2,NULL),(562,132,59,2,NULL),(563,133,59,2,NULL),(564,134,59,2,NULL),(565,127,39,2,NULL),(566,128,39,2,NULL),(567,131,39,2,NULL),(568,132,39,2,NULL),(569,133,39,2,NULL),(570,134,39,2,NULL),(571,127,40,2,NULL),(572,128,40,2,NULL),(573,131,40,2,NULL),(574,132,40,2,NULL),(575,133,40,2,NULL),(576,134,40,2,NULL),(577,127,41,2,NULL),(578,128,41,2,NULL),(579,131,41,2,NULL),(580,132,41,2,NULL),(581,133,41,2,NULL),(582,134,41,2,NULL),(583,127,42,2,NULL),(584,128,42,2,NULL),(585,131,42,2,NULL),(586,132,42,2,NULL),(587,133,42,2,NULL),(588,134,42,2,NULL),(589,127,43,2,NULL),(590,128,43,2,NULL),(591,131,43,2,NULL),(592,132,43,2,NULL),(593,133,43,2,NULL),(594,134,43,2,NULL),(595,127,44,2,NULL),(596,128,44,2,NULL),(597,131,44,2,NULL),(598,132,44,2,NULL),(599,133,44,2,NULL),(600,134,44,2,NULL),(601,127,45,2,NULL),(602,128,45,2,NULL),(603,131,45,2,NULL),(604,132,45,2,NULL),(605,133,45,2,NULL),(606,134,45,2,NULL),(607,127,46,2,NULL),(608,128,46,2,NULL),(609,131,46,2,NULL),(610,132,46,2,NULL),(611,133,46,2,NULL),(612,134,46,2,NULL),(613,127,47,2,NULL),(614,128,47,2,NULL),(615,131,47,2,NULL),(616,132,47,2,NULL),(617,133,47,2,NULL),(618,134,47,2,NULL),(619,127,50,2,NULL),(620,128,50,2,NULL),(621,131,50,2,NULL),(622,132,50,2,NULL),(623,133,50,2,NULL),(624,134,50,2,NULL),(625,127,51,2,NULL),(626,128,51,2,NULL),(627,131,51,2,NULL),(628,132,51,2,NULL),(629,133,51,2,NULL),(630,134,51,2,NULL),(631,127,52,2,NULL),(632,128,52,2,NULL),(633,131,52,2,NULL),(634,132,52,2,NULL),(635,133,52,2,NULL),(636,134,52,2,NULL),(637,127,53,2,NULL),(638,128,53,2,NULL),(639,131,53,2,NULL),(640,132,53,2,NULL),(641,133,53,2,NULL),(642,134,53,2,NULL),(643,127,54,2,NULL),(644,128,54,2,NULL),(645,131,54,2,NULL),(646,132,54,2,NULL),(647,133,54,2,NULL),(648,134,54,2,NULL),(649,127,55,2,NULL),(650,128,55,2,NULL),(651,131,55,2,NULL),(652,132,55,2,NULL),(653,133,55,2,NULL),(654,134,55,2,NULL),(655,127,56,2,NULL),(656,128,56,2,NULL),(657,131,56,2,NULL),(658,132,56,2,NULL),(659,133,56,2,NULL),(660,134,56,2,NULL),(661,127,57,2,NULL),(662,128,57,2,NULL),(663,131,57,2,NULL),(664,132,57,2,NULL),(665,133,57,2,NULL),(666,134,57,2,NULL),(667,127,58,2,NULL),(668,128,58,2,NULL),(669,131,58,2,NULL),(670,132,58,2,NULL),(671,133,58,2,NULL),(672,134,58,2,NULL),(673,140,20,2,NULL),(674,140,35,2,NULL),(675,3,36,2,NULL),(676,22,36,2,NULL),(677,23,36,2,NULL),(678,24,36,2,NULL),(679,43,36,2,NULL),(680,48,36,2,NULL),(681,44,36,2,NULL),(682,66,36,2,NULL),(683,78,36,2,NULL),(684,18,36,2,NULL),(685,33,36,2,NULL),(686,80,36,2,NULL),(687,19,36,2,NULL),(688,25,36,2,NULL),(689,28,36,2,NULL),(690,52,36,2,NULL),(691,62,36,2,NULL),(692,65,36,2,NULL),(693,69,36,2,NULL),(694,21,36,2,NULL),(695,54,36,2,NULL),(696,58,36,2,NULL),(697,30,36,2,NULL),(698,31,36,2,NULL),(699,36,36,2,NULL),(700,63,36,2,NULL),(701,3,37,2,NULL),(702,22,37,2,NULL),(703,23,37,2,NULL),(704,24,37,2,NULL),(705,43,37,2,NULL),(706,48,37,2,NULL),(707,44,37,2,NULL),(708,66,37,2,NULL),(709,78,37,2,NULL),(710,18,37,2,NULL),(711,33,37,2,NULL),(712,80,37,2,NULL),(713,19,37,2,NULL),(714,25,37,2,NULL),(715,28,37,2,NULL),(716,52,37,2,NULL),(717,62,37,2,NULL),(718,65,37,2,NULL),(719,69,37,2,NULL),(720,21,37,2,NULL),(721,54,37,2,NULL),(722,58,37,2,NULL),(723,30,37,2,NULL),(724,31,37,2,NULL),(725,36,37,2,NULL),(726,63,37,2,NULL),(727,3,59,2,NULL),(728,22,59,2,NULL),(729,23,59,2,NULL),(730,24,59,2,NULL),(731,43,59,2,NULL),(732,48,59,2,NULL),(733,44,59,2,NULL),(734,66,59,2,NULL),(735,78,59,2,NULL),(736,18,59,2,NULL),(737,33,59,2,NULL),(738,80,59,2,NULL),(739,19,59,2,NULL),(740,25,59,2,NULL),(741,28,59,2,NULL),(742,52,59,2,NULL),(743,62,59,2,NULL),(744,65,59,2,NULL),(745,69,59,2,NULL),(746,21,59,2,NULL),(747,54,59,2,NULL),(748,58,59,2,NULL),(749,30,59,2,NULL),(750,31,59,2,NULL),(751,36,59,2,NULL),(752,63,59,2,NULL),(753,3,1,2,NULL),(754,22,1,2,NULL),(755,23,1,2,NULL),(756,24,1,2,NULL),(757,43,1,2,NULL),(758,48,1,2,NULL),(759,44,1,2,NULL),(760,66,1,2,NULL),(761,78,1,2,NULL),(762,18,1,2,NULL),(763,33,1,2,NULL),(764,80,1,2,NULL),(765,19,1,2,NULL),(766,25,1,2,NULL),(767,28,1,2,NULL),(768,52,1,2,NULL),(769,62,1,2,NULL),(770,65,1,2,NULL),(771,69,1,2,NULL),(772,21,1,2,NULL),(773,54,1,2,NULL),(774,58,1,2,NULL),(775,30,1,2,NULL),(776,31,1,2,NULL),(777,36,1,2,NULL),(778,63,1,2,NULL),(779,3,5,2,NULL),(780,3,6,2,NULL),(781,3,7,2,NULL),(782,3,8,2,NULL),(783,3,39,2,NULL),(784,3,40,2,NULL),(785,3,41,2,NULL),(786,3,42,2,NULL),(787,3,43,2,NULL),(788,3,44,2,NULL),(789,3,45,2,NULL),(790,3,46,2,NULL),(791,3,47,2,NULL),(792,3,50,2,NULL),(793,3,51,2,NULL),(794,3,52,2,NULL),(795,3,53,2,NULL),(796,3,54,2,NULL),(797,3,55,2,NULL),(798,3,56,2,NULL),(799,3,57,2,NULL),(800,3,58,2,NULL),(801,22,5,2,NULL),(802,23,5,2,NULL),(803,24,5,2,NULL),(804,43,5,2,NULL),(805,48,5,2,NULL),(806,44,5,2,NULL),(807,66,5,2,NULL),(808,78,5,2,NULL),(809,18,5,2,NULL),(810,33,5,2,NULL),(811,80,5,2,NULL),(812,19,5,2,NULL),(813,25,5,2,NULL),(814,28,5,2,NULL),(815,52,5,2,NULL),(816,62,5,2,NULL),(817,65,5,2,NULL),(818,69,5,2,NULL),(819,21,5,2,NULL),(820,54,5,2,NULL),(821,58,5,2,NULL),(822,30,5,2,NULL),(823,31,5,2,NULL),(824,36,5,2,NULL),(825,63,5,2,NULL),(826,2,4,2,NULL),(827,2,49,2,NULL),(828,22,6,2,NULL),(829,23,6,2,NULL),(830,24,6,2,NULL),(831,43,6,2,NULL),(832,48,6,2,NULL),(833,44,6,2,NULL),(834,66,6,2,NULL),(835,78,6,2,NULL),(836,18,6,2,NULL),(837,33,6,2,NULL),(838,80,6,2,NULL),(839,19,6,2,NULL),(840,25,6,2,NULL),(841,28,6,2,NULL),(842,52,6,2,NULL),(843,62,6,2,NULL),(844,65,6,2,NULL),(845,69,6,2,NULL),(846,21,6,2,NULL),(847,54,6,2,NULL),(848,58,6,2,NULL),(849,30,6,2,NULL),(850,31,6,2,NULL),(851,36,6,2,NULL),(852,63,6,2,NULL),(853,1,4,2,NULL),(854,1,49,2,NULL),(855,22,7,2,NULL),(856,23,7,2,NULL),(857,24,7,2,NULL),(858,43,7,2,NULL),(859,48,7,2,NULL),(860,44,7,2,NULL),(861,66,7,2,NULL),(862,78,7,2,NULL),(863,18,7,2,NULL),(864,33,7,2,NULL),(865,80,7,2,NULL),(866,19,7,2,NULL),(867,25,7,2,NULL),(868,28,7,2,NULL),(869,52,7,2,NULL),(870,62,7,2,NULL),(871,65,7,2,NULL),(872,69,7,2,NULL),(873,21,7,2,NULL),(874,54,7,2,NULL),(875,58,7,2,NULL),(876,30,7,2,NULL),(877,31,7,2,NULL),(878,36,7,2,NULL),(879,63,7,2,NULL),(880,22,8,2,NULL),(881,23,8,2,NULL),(882,24,8,2,NULL),(883,43,8,2,NULL),(884,48,8,2,NULL),(885,44,8,2,NULL),(886,66,8,2,NULL),(887,78,8,2,NULL),(888,18,8,2,NULL),(889,33,8,2,NULL),(890,80,8,2,NULL),(891,19,8,2,NULL),(892,25,8,2,NULL),(893,28,8,2,NULL),(894,52,8,2,NULL),(895,62,8,2,NULL),(896,65,8,2,NULL),(897,69,8,2,NULL),(898,21,8,2,NULL),(899,54,8,2,NULL),(900,58,8,2,NULL),(901,30,8,2,NULL),(902,31,8,2,NULL),(903,36,8,2,NULL),(904,63,8,2,NULL),(905,32,4,2,NULL),(906,32,49,2,NULL),(907,22,39,2,NULL),(908,23,39,2,NULL),(909,24,39,2,NULL),(910,43,39,2,NULL),(911,48,39,2,NULL),(912,44,39,2,NULL),(913,66,39,2,NULL),(914,78,39,2,NULL),(915,18,39,2,NULL),(916,33,39,2,NULL),(917,80,39,2,NULL),(918,19,39,2,NULL),(919,25,39,2,NULL),(920,28,39,2,NULL),(921,52,39,2,NULL),(922,62,39,2,NULL),(923,65,39,2,NULL),(924,69,39,2,NULL),(925,21,39,2,NULL),(926,54,39,2,NULL),(927,58,39,2,NULL),(928,30,39,2,NULL),(929,31,39,2,NULL),(930,36,39,2,NULL),(931,63,39,2,NULL),(932,14,45,2,NULL),(933,40,42,2,NULL),(934,51,46,2,NULL),(935,67,43,2,NULL),(936,81,48,2,NULL),(937,22,40,2,NULL),(938,23,40,2,NULL),(939,24,40,2,NULL),(940,43,40,2,NULL),(941,48,40,2,NULL),(942,44,40,2,NULL),(943,66,40,2,NULL),(944,78,40,2,NULL),(945,18,40,2,NULL),(946,33,40,2,NULL),(947,80,40,2,NULL),(948,19,40,2,NULL),(949,25,40,2,NULL),(950,28,40,2,NULL),(951,52,40,2,NULL),(952,62,40,2,NULL),(953,65,40,2,NULL),(954,69,40,2,NULL),(955,21,40,2,NULL),(956,54,40,2,NULL),(957,58,40,2,NULL),(958,30,40,2,NULL),(959,31,40,2,NULL),(960,36,40,2,NULL),(961,63,40,2,NULL),(962,20,42,2,NULL),(963,26,45,2,NULL),(964,35,45,2,NULL),(965,46,48,2,NULL),(966,50,43,2,NULL),(967,73,40,2,NULL),(968,22,42,2,NULL),(969,23,42,2,NULL),(970,24,42,2,NULL),(971,43,42,2,NULL),(972,48,42,2,NULL),(973,44,41,2,NULL),(974,66,41,2,NULL),(975,78,41,2,NULL),(976,22,43,2,NULL),(977,23,43,2,NULL),(978,24,43,2,NULL),(979,43,43,2,NULL),(980,48,43,2,NULL),(981,22,44,2,NULL),(982,23,44,2,NULL),(983,24,44,2,NULL),(984,43,44,2,NULL),(985,48,44,2,NULL),(986,18,41,2,NULL),(987,33,41,2,NULL),(988,80,41,2,NULL),(989,22,45,2,NULL),(990,23,45,2,NULL),(991,24,45,2,NULL),(992,43,45,2,NULL),(993,48,45,2,NULL),(994,19,41,2,NULL),(995,25,41,2,NULL),(996,28,41,2,NULL),(997,52,41,2,NULL),(998,62,41,2,NULL),(999,65,41,2,NULL),(1000,69,41,2,NULL),(1001,22,46,2,NULL),(1002,23,46,2,NULL),(1003,24,46,2,NULL),(1004,43,46,2,NULL),(1005,48,46,2,NULL),(1006,21,41,2,NULL),(1007,54,41,2,NULL),(1008,58,41,2,NULL),(1009,22,47,2,NULL),(1010,23,47,2,NULL),(1011,24,47,2,NULL),(1012,43,47,2,NULL),(1013,48,47,2,NULL),(1014,30,41,2,NULL),(1015,31,41,2,NULL),(1016,36,41,2,NULL),(1017,63,41,2,NULL),(1018,22,50,2,NULL),(1019,23,50,2,NULL),(1020,24,50,2,NULL),(1021,43,50,2,NULL),(1022,48,50,2,NULL),(1023,22,51,2,NULL),(1024,23,51,2,NULL),(1025,24,51,2,NULL),(1026,43,51,2,NULL),(1027,48,51,2,NULL),(1028,22,52,2,NULL),(1029,23,52,2,NULL),(1030,24,52,2,NULL),(1031,43,52,2,NULL),(1032,48,52,2,NULL),(1033,22,53,2,NULL),(1034,23,53,2,NULL),(1035,24,53,2,NULL),(1036,43,53,2,NULL),(1037,48,53,2,NULL),(1038,22,54,2,NULL),(1039,23,54,2,NULL),(1040,24,54,2,NULL),(1041,43,54,2,NULL),(1042,48,54,2,NULL),(1043,22,55,2,NULL),(1044,23,55,2,NULL),(1045,24,55,2,NULL),(1046,43,55,2,NULL),(1047,48,55,2,NULL),(1048,22,56,2,NULL),(1049,23,56,2,NULL),(1050,24,56,2,NULL),(1051,43,56,2,NULL),(1052,48,56,2,NULL),(1053,22,57,2,NULL),(1054,23,57,2,NULL),(1055,24,57,2,NULL),(1056,43,57,2,NULL),(1057,48,57,2,NULL),(1058,22,58,2,NULL),(1059,23,58,2,NULL),(1060,24,58,2,NULL),(1061,43,58,2,NULL),(1062,48,58,2,NULL),(1063,41,46,2,NULL),(1064,61,45,2,NULL),(1065,74,43,2,NULL),(1066,44,43,2,NULL),(1067,66,43,2,NULL),(1068,78,43,2,NULL),(1069,44,44,2,NULL),(1070,66,44,2,NULL),(1071,78,44,2,NULL),(1072,18,42,2,NULL),(1073,33,42,2,NULL),(1074,80,42,2,NULL),(1075,44,45,2,NULL),(1076,66,45,2,NULL),(1077,78,45,2,NULL),(1078,19,42,2,NULL),(1079,25,42,2,NULL),(1080,28,42,2,NULL),(1081,52,42,2,NULL),(1082,62,42,2,NULL),(1083,65,42,2,NULL),(1084,69,42,2,NULL),(1085,44,46,2,NULL),(1086,66,46,2,NULL),(1087,78,46,2,NULL),(1088,21,42,2,NULL),(1089,54,42,2,NULL),(1090,58,42,2,NULL),(1091,44,47,2,NULL),(1092,66,47,2,NULL),(1093,78,47,2,NULL),(1094,30,42,2,NULL),(1095,31,42,2,NULL),(1096,36,42,2,NULL),(1097,63,42,2,NULL),(1098,44,50,2,NULL),(1099,66,50,2,NULL),(1100,78,50,2,NULL),(1101,44,51,2,NULL),(1102,66,51,2,NULL),(1103,78,51,2,NULL),(1104,44,52,2,NULL),(1105,66,52,2,NULL),(1106,78,52,2,NULL),(1107,44,53,2,NULL),(1108,66,53,2,NULL),(1109,78,53,2,NULL),(1110,44,54,2,NULL),(1111,66,54,2,NULL),(1112,78,54,2,NULL),(1113,44,55,2,NULL),(1114,66,55,2,NULL),(1115,78,55,2,NULL),(1116,44,56,2,NULL),(1117,66,56,2,NULL),(1118,78,56,2,NULL),(1119,44,57,2,NULL),(1120,66,57,2,NULL),(1121,78,57,2,NULL),(1122,44,58,2,NULL),(1123,66,58,2,NULL),(1124,78,58,2,NULL),(1125,17,46,2,NULL),(1126,29,45,2,NULL),(1127,64,44,2,NULL),(1128,75,42,2,NULL),(1129,18,43,2,NULL),(1130,33,43,2,NULL),(1131,80,43,2,NULL),(1132,19,43,2,NULL),(1133,25,43,2,NULL),(1134,28,43,2,NULL),(1135,52,43,2,NULL),(1136,62,43,2,NULL),(1137,65,43,2,NULL),(1138,69,43,2,NULL),(1139,21,43,2,NULL),(1140,54,43,2,NULL),(1141,58,43,2,NULL),(1142,30,43,2,NULL),(1143,31,43,2,NULL),(1144,36,43,2,NULL),(1145,63,43,2,NULL),(1146,13,45,2,NULL),(1147,45,46,2,NULL),(1148,76,40,2,NULL),(1149,79,42,2,NULL),(1150,18,45,2,NULL),(1151,33,45,2,NULL),(1152,80,45,2,NULL),(1153,19,44,2,NULL),(1154,25,44,2,NULL),(1155,28,44,2,NULL),(1156,52,44,2,NULL),(1157,62,44,2,NULL),(1158,65,44,2,NULL),(1159,69,44,2,NULL),(1160,18,46,2,NULL),(1161,33,46,2,NULL),(1162,80,46,2,NULL),(1163,21,44,2,NULL),(1164,54,44,2,NULL),(1165,58,44,2,NULL),(1166,18,47,2,NULL),(1167,33,47,2,NULL),(1168,80,47,2,NULL),(1169,30,44,2,NULL),(1170,31,44,2,NULL),(1171,36,44,2,NULL),(1172,63,44,2,NULL),(1173,18,50,2,NULL),(1174,33,50,2,NULL),(1175,80,50,2,NULL),(1176,18,51,2,NULL),(1177,33,51,2,NULL),(1178,80,51,2,NULL),(1179,18,52,2,NULL),(1180,33,52,2,NULL),(1181,80,52,2,NULL),(1182,18,53,2,NULL),(1183,33,53,2,NULL),(1184,80,53,2,NULL),(1185,18,54,2,NULL),(1186,33,54,2,NULL),(1187,80,54,2,NULL),(1188,18,55,2,NULL),(1189,33,55,2,NULL),(1190,80,55,2,NULL),(1191,18,56,2,NULL),(1192,33,56,2,NULL),(1193,80,56,2,NULL),(1194,18,57,2,NULL),(1195,33,57,2,NULL),(1196,80,57,2,NULL),(1197,18,58,2,NULL),(1198,33,58,2,NULL),(1199,80,58,2,NULL),(1200,16,46,2,NULL),(1201,53,48,2,NULL),(1202,59,46,2,NULL),(1203,68,43,2,NULL),(1204,71,42,2,NULL),(1205,19,46,2,NULL),(1206,25,46,2,NULL),(1207,28,46,2,NULL),(1208,52,46,2,NULL),(1209,62,46,2,NULL),(1210,65,46,2,NULL),(1211,69,46,2,NULL),(1212,21,45,2,NULL),(1213,54,45,2,NULL),(1214,58,45,2,NULL),(1215,19,47,2,NULL),(1216,25,47,2,NULL),(1217,28,47,2,NULL),(1218,52,47,2,NULL),(1219,62,47,2,NULL),(1220,65,47,2,NULL),(1221,69,47,2,NULL),(1222,30,45,2,NULL),(1223,31,45,2,NULL),(1224,36,45,2,NULL),(1225,63,45,2,NULL),(1226,19,50,2,NULL),(1227,25,50,2,NULL),(1228,28,50,2,NULL),(1229,52,50,2,NULL),(1230,62,50,2,NULL),(1231,65,50,2,NULL),(1232,69,50,2,NULL),(1233,19,51,2,NULL),(1234,25,51,2,NULL),(1235,28,51,2,NULL),(1236,52,51,2,NULL),(1237,62,51,2,NULL),(1238,65,51,2,NULL),(1239,69,51,2,NULL),(1240,19,52,2,NULL),(1241,25,52,2,NULL),(1242,28,52,2,NULL),(1243,52,52,2,NULL),(1244,62,52,2,NULL),(1245,65,52,2,NULL),(1246,69,52,2,NULL),(1247,19,53,2,NULL),(1248,25,53,2,NULL),(1249,28,53,2,NULL),(1250,52,53,2,NULL),(1251,62,53,2,NULL),(1252,65,53,2,NULL),(1253,69,53,2,NULL),(1254,19,54,2,NULL),(1255,25,54,2,NULL),(1256,28,54,2,NULL),(1257,52,54,2,NULL),(1258,62,54,2,NULL),(1259,65,54,2,NULL),(1260,69,54,2,NULL),(1261,19,55,2,NULL),(1262,25,55,2,NULL),(1263,28,55,2,NULL),(1264,52,55,2,NULL),(1265,62,55,2,NULL),(1266,65,55,2,NULL),(1267,69,55,2,NULL),(1268,19,56,2,NULL),(1269,25,56,2,NULL),(1270,28,56,2,NULL),(1271,52,56,2,NULL),(1272,62,56,2,NULL),(1273,65,56,2,NULL),(1274,69,56,2,NULL),(1275,19,57,2,NULL),(1276,25,57,2,NULL),(1277,28,57,2,NULL),(1278,52,57,2,NULL),(1279,62,57,2,NULL),(1280,65,57,2,NULL),(1281,69,57,2,NULL),(1282,19,58,2,NULL),(1283,25,58,2,NULL),(1284,28,58,2,NULL),(1285,52,58,2,NULL),(1286,62,58,2,NULL),(1287,65,58,2,NULL),(1288,69,58,2,NULL),(1289,27,40,2,NULL),(1290,42,43,2,NULL),(1291,47,48,2,NULL),(1292,49,42,2,NULL),(1293,57,45,2,NULL),(1294,21,47,2,NULL),(1295,54,47,2,NULL),(1296,58,47,2,NULL),(1297,30,46,2,NULL),(1298,31,46,2,NULL),(1299,36,46,2,NULL),(1300,63,46,2,NULL),(1301,21,50,2,NULL),(1302,54,50,2,NULL),(1303,58,50,2,NULL),(1304,21,51,2,NULL),(1305,54,51,2,NULL),(1306,58,51,2,NULL),(1307,21,52,2,NULL),(1308,54,52,2,NULL),(1309,58,52,2,NULL),(1310,21,53,2,NULL),(1311,54,53,2,NULL),(1312,58,53,2,NULL),(1313,21,54,2,NULL),(1314,54,54,2,NULL),(1315,58,54,2,NULL),(1316,21,55,2,NULL),(1317,54,55,2,NULL),(1318,58,55,2,NULL),(1319,21,56,2,NULL),(1320,54,56,2,NULL),(1321,58,56,2,NULL),(1322,21,57,2,NULL),(1323,54,57,2,NULL),(1324,58,57,2,NULL),(1325,21,58,2,NULL),(1326,54,58,2,NULL),(1327,58,58,2,NULL),(1328,34,43,2,NULL),(1329,39,42,2,NULL),(1330,70,46,2,NULL),(1331,77,45,2,NULL),(1332,30,47,2,NULL),(1333,31,47,2,NULL),(1334,36,47,2,NULL),(1335,63,47,2,NULL),(1336,30,50,2,NULL),(1337,31,50,2,NULL),(1338,36,50,2,NULL),(1339,63,50,2,NULL),(1340,30,51,2,NULL),(1341,31,51,2,NULL),(1342,36,51,2,NULL),(1343,63,51,2,NULL),(1344,30,52,2,NULL),(1345,31,52,2,NULL),(1346,36,52,2,NULL),(1347,63,52,2,NULL),(1348,30,53,2,NULL),(1349,31,53,2,NULL),(1350,36,53,2,NULL),(1351,63,53,2,NULL),(1352,30,54,2,NULL),(1353,31,54,2,NULL),(1354,36,54,2,NULL),(1355,63,54,2,NULL),(1356,30,55,2,NULL),(1357,31,55,2,NULL),(1358,36,55,2,NULL),(1359,63,55,2,NULL),(1360,30,56,2,NULL),(1361,31,56,2,NULL),(1362,36,56,2,NULL),(1363,63,56,2,NULL),(1364,30,57,2,NULL),(1365,31,57,2,NULL),(1366,36,57,2,NULL),(1367,63,57,2,NULL),(1368,30,58,2,NULL),(1369,31,58,2,NULL),(1370,36,58,2,NULL),(1371,63,58,2,NULL),(1372,72,4,2,NULL),(1373,72,49,2,NULL);
/*!40000 ALTER TABLE `Links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PAuthorities`
--

DROP TABLE IF EXISTS `PAuthorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PAuthorities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provider_id` int(11) NOT NULL,
  `authority` varchar(512) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `provider_id` (`provider_id`),
  CONSTRAINT `PAuthorities_ibfk_1` FOREIGN KEY (`provider_id`) REFERENCES `Providers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAuthorities`
--

LOCK TABLES `PAuthorities` WRITE;
/*!40000 ALTER TABLE `PAuthorities` DISABLE KEYS */;
/*!40000 ALTER TABLE `PAuthorities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Paths`
--

DROP TABLE IF EXISTS `Paths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Paths` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` int(11) NOT NULL,
  `source` int(11) NOT NULL,
  `sink` int(11) NOT NULL,
  `paths` text,
  `type` varchar(512) NOT NULL,
  `icc` int(11) NOT NULL,
  `reserved` varchar(512) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Paths`
--

LOCK TABLES `Paths` WRITE;
/*!40000 ALTER TABLE `Paths` DISABLE KEYS */;
/*!40000 ALTER TABLE `Paths` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionStrings`
--

DROP TABLE IF EXISTS `PermissionStrings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionStrings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `st` varchar(191) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `st` (`st`),
  KEY `st_idx` (`st`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (26,'android.permission.ACCESS_COARSE_LOCATION'),(31,'android.permission.ACCESS_FINE_LOCATION'),(8,'android.permission.ACCESS_NETWORK_STATE'),(24,'android.permission.BROADCAST_PACKAGE_REMOVED'),(17,'android.permission.INSTALL_PACKAGES'),(4,'android.permission.INTERNET'),(3,'android.permission.MODIFY_PHONE_STATE'),(29,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(27,'android.permission.READ_CONTACTS'),(1,'android.permission.READ_PHONE_STATE'),(30,'android.permission.READ_SMS'),(2,'android.permission.RECEIVE_BOOT_COMPLETED'),(21,'android.permission.RECEIVE_SMS'),(7,'android.permission.RECORD_AUDIO'),(28,'android.permission.RESTART_PACKAGES'),(18,'android.permission.SEND_SMS'),(22,'android.permission.WAKE_LOCK'),(6,'android.permission.WRITE_APN_SETTINGS'),(5,'android.permission.WRITE_EXTERNAL_STORAGE'),(19,'android.permission.WRITE_SETTINGS'),(25,'android.permission.WRITE_SMS'),(23,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(20,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS');
/*!40000 ALTER TABLE `PermissionStrings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Permissions`
--

DROP TABLE IF EXISTS `Permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Permissions` (
  `id` int(11) NOT NULL,
  `level` char(1) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`,`level`),
  CONSTRAINT `Permissions_ibfk_1` FOREIGN KEY (`id`) REFERENCES `PermissionStrings` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Permissions`
--

LOCK TABLES `Permissions` WRITE;
/*!40000 ALTER TABLE `Permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `Permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProviderLinks`
--

DROP TABLE IF EXISTS `ProviderLinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProviderLinks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `src_component_id` int(11) NOT NULL,
  `dest_component_id` int(11) NOT NULL,
  `reserved` varchar(512) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProviderLinks`
--

LOCK TABLES `ProviderLinks` WRITE;
/*!40000 ALTER TABLE `ProviderLinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `ProviderLinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Providers`
--

DROP TABLE IF EXISTS `Providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Providers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `component_id` int(11) NOT NULL,
  `grant_uri_permissions` tinyint(1) NOT NULL,
  `read_permission` varchar(512) COLLATE utf8mb4_bin DEFAULT NULL,
  `write_permission` varchar(512) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `component_id` (`component_id`),
  CONSTRAINT `Providers_ibfk_1` FOREIGN KEY (`component_id`) REFERENCES `Components` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Providers`
--

LOCK TABLES `Providers` WRITE;
/*!40000 ALTER TABLE `Providers` DISABLE KEYS */;
/*!40000 ALTER TABLE `Providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Stmts`
--

DROP TABLE IF EXISTS `Stmts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Stmts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stmt` varchar(512) NOT NULL,
  `method` varchar(512) NOT NULL,
  `class_id` int(11) NOT NULL,
  `jimpleIndex` int(11) NOT NULL,
  `isIcc` tinyint(1) NOT NULL,
  `type` varchar(512) NOT NULL,
  `reserved` varchar(512) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Stmts`
--

LOCK TABLES `Stmts` WRITE;
/*!40000 ALTER TABLE `Stmts` DISABLE KEYS */;
/*!40000 ALTER TABLE `Stmts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UriData`
--

DROP TABLE IF EXISTS `UriData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UriData` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `scheme` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `ssp` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `uri` longtext COLLATE utf8mb4_bin,
  `path` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `query` varchar(512) COLLATE utf8mb4_bin DEFAULT NULL,
  `authority` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(3,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'',NULL,NULL,NULL),(6,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL),(7,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL),(8,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(9,NULL,NULL,'http://mp3.baidu.com/m?f=ms&rf=idx&tn=baidump3&ct=134217728&lf=&rn=&lm=0&word=(.*)',NULL,NULL,NULL),(10,NULL,NULL,'NULL-CONSTANT(.*)',NULL,NULL,NULL),(11,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(12,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(13,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(14,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(15,NULL,NULL,'content://sms/',NULL,NULL,NULL),(16,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(17,NULL,NULL,'smsto:',NULL,NULL,NULL),(18,NULL,NULL,'NULL-CONSTANT(.*)',NULL,NULL,NULL),(19,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(20,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(21,NULL,NULL,'content://media/internal/audio/media',NULL,NULL,NULL),(22,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(23,NULL,NULL,'content://media/internal/audio/media',NULL,NULL,NULL),(24,NULL,NULL,'http://www.coolcode.org/android/Download_Service.apk',NULL,NULL,NULL),(25,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(26,NULL,NULL,'content://media/internal/audio/media',NULL,NULL,NULL),(27,NULL,NULL,'',NULL,NULL,NULL),(28,NULL,NULL,'market://details?id=org.coolcode.service.download',NULL,NULL,NULL),(29,NULL,NULL,'tel:',NULL,NULL,NULL),(30,NULL,NULL,'market://details?id=org.coolcode.service.download',NULL,NULL,NULL),(31,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(32,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(33,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(34,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(35,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(36,NULL,NULL,'(.*)',NULL,NULL,NULL),(37,NULL,NULL,'',NULL,NULL,NULL),(38,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(39,NULL,NULL,'content://media/internal/audio/media',NULL,NULL,NULL),(40,NULL,NULL,'http://www.coolcode.org/android/Download_Service.apk',NULL,NULL,NULL),(41,NULL,NULL,'',NULL,NULL,NULL);
/*!40000 ALTER TABLE `UriData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Uris`
--

DROP TABLE IF EXISTS `Uris`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Uris` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exit_id` int(11) NOT NULL,
  `data` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `exit_id` (`exit_id`),
  KEY `data` (`data`),
  CONSTRAINT `Uris_ibfk_1` FOREIGN KEY (`exit_id`) REFERENCES `ExitPoints` (`id`) ON DELETE CASCADE,
  CONSTRAINT `Uris_ibfk_2` FOREIGN KEY (`data`) REFERENCES `UriData` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,5,2),(2,7,3),(3,14,6),(4,16,7),(5,20,8),(6,59,12),(7,60,13),(8,61,14),(9,66,15),(10,71,16),(11,90,20),(12,90,21),(13,92,22),(14,92,23),(15,97,25),(16,97,26),(17,115,38),(18,115,39);
/*!40000 ALTER TABLE `Uris` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UsesPermissions`
--

DROP TABLE IF EXISTS `UsesPermissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UsesPermissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` int(11) NOT NULL,
  `uses_permission` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_id` (`app_id`),
  KEY `uses_permission_idx` (`uses_permission`) USING HASH,
  CONSTRAINT `UsesPermissions_ibfk_1` FOREIGN KEY (`app_id`) REFERENCES `Applications` (`id`) ON DELETE CASCADE,
  CONSTRAINT `UsesPermissions_ibfk_2` FOREIGN KEY (`uses_permission`) REFERENCES `PermissionStrings` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,3,17),(10,3,1),(11,3,19),(12,3,18),(13,3,21),(14,3,4),(15,3,20),(16,3,5),(17,3,23),(18,4,17),(19,3,22),(20,4,1),(21,3,8),(22,4,18),(23,4,21),(24,4,4),(25,4,20),(26,4,5),(27,4,23),(28,5,1),(29,5,2),(30,5,3),(31,5,4),(32,5,5),(33,5,6),(34,5,8),(35,5,17),(36,5,19),(37,5,18),(38,5,21),(39,5,25),(40,5,24),(41,5,27),(42,5,26),(43,5,29),(44,5,28),(45,5,31),(46,5,30);
/*!40000 ALTER TABLE `UsesPermissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-10-12  3:29:19
