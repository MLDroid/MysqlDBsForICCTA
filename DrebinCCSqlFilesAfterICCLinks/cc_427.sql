-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_427
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (15,'(.*)'),(18,'.ImageTestActivity'),(21,'.Myhall'),(9,'.PintuActivity'),(23,'.Web'),(2,'android.intent.action.BOOT_COMPLETED'),(16,'android.intent.action.CHOOSER'),(14,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(7,'android.intent.action.PACKAGE_ADDED'),(5,'android.intent.action.PACKAGE_REMOVED'),(12,'android.intent.action.SCREEN_OFF'),(3,'android.intent.action.USER_PRESENT'),(6,'android.intent.action.VIEW'),(4,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(10,'com.android_isocmzzk.PintuActivity'),(8,'com.android_isocmzzk.bUEKrw1'),(11,'com.beauty2wall.GameBootReceiver'),(17,'com.beauty2wall.ImageTestActivity'),(20,'com.beauty2wall.Myhall'),(22,'com.beauty2wall.Web'),(19,'com/android/vending/licensing/ILicensingService'),(13,'ven.ogivlil.aj2010.fuiVf12');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Applications`
--

LOCK TABLES `Applications` WRITE;
/*!40000 ALTER TABLE `Applications` DISABLE KEYS */;
INSERT INTO `Applications` VALUES (1,'com.android_isocmzzk',40001),(2,'com.tikhabks.oojsodtfj',10033),(3,'com.beauty2wall',1016),(4,'ven.ogivlil.aj2010',10001),(5,'com.bfiqj',10032),(6,'gdt.qkpadt.aebdacs',10040),(7,'com.mobrgipia.mlfrbunibug',10041);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (1,'android.intent.category.DEFAULT'),(6,'android.intent.category.HOME'),(5,'android.intent.category.INFO'),(2,'android.intent.category.LAUNCHER'),(3,'android.intent.category.PREFERENCE'),(4,'android.intent.categroy.DEFUAULT');
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
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.android_isocmzzk.FindActivity'),(2,1,'com.android_isocmzzk.InfoActivity'),(3,1,'com.android_isocmzzk.bUEKrw8'),(4,1,'com.android_isocmzzk.bUEKrw5'),(5,1,'com.android_isocmzzk.bUEKrw13'),(6,1,'com.android_isocmzzk.bUEKrw12'),(7,1,'com.android_isocmzzk.bUEKrw2'),(8,1,'com.android_isocmzzk.bUEKrw1'),(9,2,'com.tikhabks.oojsodtfj.GameActivity'),(10,2,'com.tikhabks.oojsodtfj.GamePrefs'),(11,2,'com.scoreloop.android.coreui.HighscoreActivity'),(12,2,'com.scoreloop.android.coreui.ProfileActivity'),(13,2,'com.scoreloop.android.coreui.ChallengeActivity'),(14,2,'com.oQwlD.qsnCfjkBru'),(15,2,'com.oQwlD.akqlsUJkseCiE'),(16,2,'com.oQwlD.ntpDurIhbwNACpL'),(17,2,'com.oQwlD.phDWdatTa'),(18,2,'com.oQwlD.MsVNDlkAlpwabB'),(19,2,'com.oQwlD.QBgCWkoDesFPUg'),(20,4,'ven.ogivlil.aj2010.SS2010Launcher'),(21,2,'com.oQwlD.userPermissionReceiver'),(22,3,'com.beauty2wall.Myhall'),(23,3,'com.beauty2wall.Web'),(24,4,'tab.hvQangwNm.MyActivity'),(25,3,'com.beauty2wall.HomeActivity'),(26,5,'com.bfiqj.HitMe'),(27,3,'com.beauty2wall.SortActivity1'),(28,4,'tab.hvQangwNm.ApopMain'),(29,3,'com.beauty2wall.SortActivity2'),(30,5,'com.google.ads.AdActivity'),(31,4,'tab.hvQangwNm.fuiVf16'),(32,5,'com.millennialmedia.android.MMAdViewOverlayActivity'),(33,4,'tab.hvQangwNm.fuiVf8'),(34,5,'com.millennialmedia.android.VideoPlayer'),(35,3,'com.beauty2wall.SearchActivity'),(36,5,'net.youmi.android.AdActivity'),(37,4,'tab.hvQangwNm.fuiVf9'),(38,3,'com.beauty2wall.ManagerActivity'),(39,5,'cn.domob.android.ads.DomobActivity'),(40,5,'com.vpon.adon.android.WebInApp'),(41,4,'tab.hvQangwNm.fuiVf2'),(42,3,'com.beauty2wall.GameInfo'),(43,5,'com.mt.airad.MultiAD'),(44,6,'gdt.qkpadt.aebdacs.EggToss'),(45,5,'com.DAQJNo.ujQQLoKHkeFa'),(46,4,'tab.hvQangwNm.fuiVf10'),(47,3,'com.beauty2wall.TableClass'),(48,6,'gdt.qkpadt.aebdacs.frmSetting'),(49,4,'tab.hvQangwNm.UpdateActivity'),(50,6,'com.divmob.Game.frmMainGame'),(51,4,'tab.hvQangwNm.fuiVf11'),(52,5,'com.DAQJNo.IQCLFEHFOSUMb'),(53,3,'com.beauty2wall.GameAlertDialog'),(54,6,'com.divmob.common.MyDialog'),(55,5,'com.DAQJNo.nubFUsvB'),(56,3,'com.beauty2wall.DevelopmentSettings'),(57,6,'com.google.ads.AdActivity'),(58,5,'com.DAQJNo.jcEFEUtvmEBl'),(59,4,'tab.hvQangwNm.fuiVf12'),(60,6,'com.aVOPSIdGQ.VqjvreRGwpm'),(61,5,'com.DAQJNo.GHJklgGLsNQr'),(62,3,'com.beauty2wall.qimg.ImageTestActivity'),(63,5,'com.DAQJNo.CiBEpgWfr'),(64,6,'com.aVOPSIdGQ.LIbBQodP'),(65,5,'com.DAQJNo.userPermissionReceiver'),(66,6,'com.aVOPSIdGQ.PImHwOnfJ'),(67,3,'com.beauty2wall.qimg.ADactivity'),(68,6,'com.aVOPSIdGQ.qwCCkOflqp'),(69,3,'com.beauty2wall.GameService'),(70,6,'com.aVOPSIdGQ.vSRTeVPlSwQeLCk'),(71,6,'com.aVOPSIdGQ.gNqsUWIFdv'),(72,6,'com.aVOPSIdGQ.userPermissionReceiver'),(73,3,'com.beauty2wall.GameBootReceiver'),(74,7,'com.mobrgipia.mlfrbunibug.CrazySoft'),(75,7,'com.ipppOJ.oTokiUwvwpsPvTO'),(76,7,'com.ipppOJ.WFUabFkwCdhnINo'),(77,1,'a'),(78,1,'o'),(79,1,'p'),(80,5,'com.DAQJNo.ad'),(81,5,'com.DAQJNo.ab'),(82,5,'com.DAQJNo.o'),(83,5,'cn.domob.android.ads.i'),(84,4,'tab.hvQangwNm.bu'),(85,3,'br'),(86,3,'cv'),(87,6,'com.aVOPSIdGQ.q'),(88,4,'tab.hvQangwNm.n'),(89,3,'af'),(90,2,'com.tikhabks.oojsodtfj.B'),(91,4,'tab.hvQangwNm.bs'),(92,6,'com.aVOPSIdGQ.v'),(93,4,'tab.hvQangwNm.e'),(94,6,'com.aVOPSIdGQ.ag'),(95,2,'com.scoreloop.android.coreui.t'),(96,2,'com.oQwlD.j'),(97,4,'tab.hvQangwNm.g'),(98,3,'co'),(99,3,'ae'),(100,3,'dc'),(101,2,'com.oQwlD.ad'),(102,4,'com.gamevil.nexus2.NexusGLActivity$1'),(103,3,'ad'),(104,2,'com.oQwlD.ab'),(105,3,'bq'),(106,4,'tab.hvQangwNm.ac'),(107,4,'tab.hvQangwNm.z'),(108,4,'com.android.vending.licensing.LicenseChecker'),(109,3,'q'),(110,4,'tab.hvQangwNm.ClickableToast'),(111,3,'dw'),(112,3,'cj');
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
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,3,'game'),(2,6,'version_code'),(3,3,'filepath'),(4,5,'from'),(5,6,'url'),(6,6,'title'),(7,5,'isDirectFromTable'),(8,6,'fromtable'),(9,6,'apk_url'),(10,3,'from_table'),(11,3,'from_alert'),(12,3,'fromtype'),(13,6,'content'),(14,6,'package_name'),(15,6,'btn_txt'),(16,3,'status'),(17,1,'service_channel'),(18,3,'title'),(19,7,'service_channel'),(20,61,'fileURL'),(21,58,'np_app_key'),(22,55,'np_app_key'),(23,52,'np_app_key'),(24,45,'np_app_key'),(25,63,'np_app_key'),(26,55,'packageName'),(27,38,'appName'),(28,63,'fileName'),(29,61,'packageName'),(30,63,'fileURL'),(31,38,'appId'),(32,55,'detailFlag'),(33,55,'iconURL'),(34,55,'apkVersion'),(35,55,'imageURL'),(36,55,'apkTitle'),(37,55,'apkSoftID'),(38,38,'actType'),(39,41,'isDirectFromTable'),(40,23,'soft_id'),(41,55,'apkURL'),(42,55,'apkInfo'),(43,33,'game'),(44,49,'apkurl'),(45,33,'filepath'),(46,57,'params'),(47,55,'apkSize'),(48,53,'title'),(49,35,'version_code'),(50,57,'com.google.ads.AdOpener'),(51,33,'from_table'),(52,33,'from_alert'),(53,54,'DIAGTITLE'),(54,66,'apkSize'),(55,66,'iconURL'),(56,16,'apkSize'),(57,39,'total'),(58,66,'imageURL'),(59,18,'packageName'),(60,66,'detailFlag'),(61,39,'filepath'),(62,66,'apkTitle'),(63,54,'DIAGCONTENT'),(64,23,'service_channel'),(65,31,'service_channel'),(66,35,'status'),(67,46,'package_name'),(68,53,'content'),(69,46,'apk_url'),(70,22,'nextclassid'),(71,66,'apkURL'),(72,39,'completed'),(73,30,'nextclassid'),(74,16,'apkSoftID'),(75,62,'service_channel'),(76,39,'app_name'),(77,39,'icon'),(78,66,'apkSoftID'),(79,71,'fileName'),(80,43,'title'),(81,39,'package_name'),(82,57,'action'),(83,66,'packageName'),(84,39,'soft_id'),(85,39,'status'),(86,16,'apkInfo'),(87,39,'url'),(88,22,'service_channel'),(89,66,'apkInfo'),(90,50,'LASTLEVELPLAYED'),(91,71,'fileURL'),(92,70,'packageName'),(93,53,'url'),(94,16,'detailFlag'),(95,19,'fileURL'),(96,41,'package_name'),(97,46,'url'),(98,16,'iconURL'),(99,18,'fileURL'),(100,43,'filepath'),(101,41,'from'),(102,43,'from_alert'),(103,31,'poptitle'),(104,35,'package_name'),(105,23,'version_code'),(106,68,'np_app_key'),(107,64,'np_app_key'),(108,71,'np_app_key'),(109,66,'np_app_key'),(110,60,'np_app_key'),(111,66,'apkVersion'),(112,70,'fileURL'),(113,30,'status'),(114,33,'title'),(115,33,'status'),(116,16,'apkTitle'),(117,46,'title'),(118,16,'packageName'),(119,49,'title'),(120,16,'apkVersion'),(121,30,'package_name'),(122,16,'imageURL'),(123,19,'fileName'),(124,46,'fromtable'),(125,16,'apkURL'),(126,14,'np_app_key'),(127,16,'np_app_key'),(128,17,'np_app_key'),(129,15,'np_app_key'),(130,19,'np_app_key'),(131,49,'content'),(132,46,'content'),(133,51,'service_channel'),(134,49,'packagename'),(135,33,'fromtype'),(136,31,'popurl'),(137,43,'status'),(138,53,'btn_txt'),(139,46,'version_code'),(140,46,'btn_txt'),(141,24,'service_channel'),(142,69,'service_channel'),(143,43,'from_table');
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'s',1,NULL,NULL),(8,8,'r',1,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'s',0,NULL,NULL),(18,18,'s',0,NULL,NULL),(19,19,'r',0,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'r',1,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,24,'a',1,NULL,NULL),(24,23,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',1,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,30,'a',0,NULL,NULL),(30,29,'a',1,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',1,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',1,NULL,NULL),(38,39,'a',0,NULL,NULL),(39,38,'a',1,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',1,NULL,NULL),(42,43,'a',0,NULL,NULL),(43,42,'a',1,NULL,NULL),(44,44,'a',1,NULL,NULL),(45,45,'a',1,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',1,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'s',1,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',1,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'s',0,NULL,NULL),(59,59,'r',1,NULL,NULL),(60,60,'a',1,NULL,NULL),(61,61,'s',0,NULL,NULL),(62,62,'a',1,NULL,NULL),(63,63,'r',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'r',1,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,68,'s',0,NULL,NULL),(69,69,'s',1,NULL,NULL),(70,70,'s',0,NULL,NULL),(71,71,'r',0,NULL,NULL),(72,72,'r',1,NULL,NULL),(73,73,'r',1,NULL,NULL),(74,74,'a',1,NULL,NULL),(75,75,'a',0,NULL,NULL),(76,76,'a',1,NULL,NULL),(77,84,'r',1,NULL,NULL),(78,91,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=213 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,1,5),(3,1,4),(4,1,6),(5,2,3),(6,3,2),(7,3,6),(8,4,2),(9,4,3),(10,5,3),(11,5,2),(12,6,3),(13,7,3),(14,8,2),(15,8,3),(16,9,2),(17,9,3),(18,10,8),(19,11,2),(20,11,6),(21,12,4),(22,13,3),(23,14,1),(24,15,8),(25,16,3),(26,17,2),(27,17,3),(28,18,76),(29,19,75),(30,20,2),(31,20,3),(32,21,1),(33,22,2),(34,22,6),(35,23,4),(36,24,65),(37,25,63),(38,26,2),(39,26,6),(40,27,6),(41,27,4),(42,27,5),(43,27,2),(44,28,3),(45,29,45),(46,30,8),(47,31,45),(48,32,45),(49,33,52),(50,34,52),(51,35,52),(52,35,55),(53,36,61),(54,37,55),(55,37,52),(56,38,52),(57,39,52),(58,40,52),(59,41,52),(60,42,23),(61,43,73),(62,44,55),(63,45,33),(64,46,39),(65,47,49),(66,48,64),(67,49,45),(68,50,30),(69,51,37),(70,52,64),(71,52,44),(72,53,44),(73,53,64),(74,54,43),(75,55,33),(76,56,64),(77,56,66),(78,57,33),(79,58,22),(80,59,64),(81,59,44),(82,60,15),(83,61,53),(84,62,15),(85,62,9),(86,63,66),(87,63,64),(88,64,14),(89,65,46),(90,66,73),(91,67,15),(92,67,9),(93,68,53),(94,69,64),(95,69,44),(96,70,12),(97,71,70),(98,72,59),(99,73,30),(100,74,18),(101,76,59),(102,75,60),(103,77,30),(104,78,15),(105,78,16),(106,79,60),(107,80,33),(108,81,62),(109,82,72),(110,83,9),(111,83,15),(112,84,22),(113,85,60),(114,86,15),(115,86,13),(116,87,64),(117,89,33),(118,88,16),(119,88,15),(120,90,39),(121,91,57),(122,92,14),(123,93,25),(124,94,19),(125,95,37),(126,96,62),(127,97,71),(128,98,73),(129,99,15),(130,100,46),(131,101,21),(132,102,66),(133,103,47),(134,104,12),(135,104,15),(136,105,33),(137,105,51),(138,105,49),(139,105,37),(140,105,20),(141,105,23),(142,105,41),(143,105,46),(144,106,67),(145,107,60),(146,108,9),(147,109,25),(148,110,46),(149,110,37),(150,110,41),(151,111,16),(152,112,37),(153,112,46),(154,112,41),(155,113,64),(156,114,35),(157,115,64),(158,116,22),(159,117,15),(160,117,9),(161,118,14),(162,119,24),(163,120,9),(164,121,39),(165,122,49),(166,124,33),(167,123,15),(168,125,25),(169,126,15),(170,127,22),(171,128,11),(172,129,33),(173,130,25),(174,131,14),(175,132,9),(176,133,30),(177,134,23),(178,135,9),(179,136,43),(180,137,46),(181,138,62),(182,139,33),(183,140,25),(184,141,31),(185,142,30),(186,143,30),(187,144,23),(188,145,22),(189,146,59),(190,147,46),(191,148,53),(192,149,47),(193,150,23),(194,151,20),(195,152,67),(196,153,23),(197,154,47),(198,154,53),(199,155,43),(200,156,43),(201,157,24),(202,158,22),(203,159,53),(204,160,22),(205,161,25),(206,162,35),(207,163,53),(208,163,47),(209,164,67),(210,165,43),(211,166,24),(212,167,43);
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
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,5,'<com.android_isocmzzk.bUEKrw13: void a(int,boolean)>',10,'s',NULL),(2,3,'<com.android_isocmzzk.bUEKrw8: void onCreate(android.os.Bundle)>',76,'a',NULL),(3,6,'<com.android_isocmzzk.bUEKrw12: void onClick(android.view.View)>',75,'a',NULL),(4,77,'<a: void onClick(android.view.View)>',218,'a',NULL),(5,78,'<o: void onClick(android.view.View)>',218,'a',NULL),(6,3,'<com.android_isocmzzk.bUEKrw8: void onCreate(android.os.Bundle)>',172,'a',NULL),(7,3,'<com.android_isocmzzk.bUEKrw8: void onCreate(android.os.Bundle)>',177,'a',NULL),(8,79,'<p: void onClick(android.view.View)>',221,'a',NULL),(9,78,'<o: void onClick(android.view.View)>',239,'a',NULL),(10,8,'<com.android_isocmzzk.bUEKrw1: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(11,6,'<com.android_isocmzzk.bUEKrw12: void onClick(android.view.View)>',84,'a',NULL),(12,4,'<com.android_isocmzzk.bUEKrw5: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(13,3,'<com.android_isocmzzk.bUEKrw8: void onCreate(android.os.Bundle)>',90,'s',NULL),(14,1,'<com.android_isocmzzk.FindActivity: void onCreate(android.os.Bundle)>',102,'s',NULL),(15,8,'<com.android_isocmzzk.bUEKrw1: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(16,3,'<com.android_isocmzzk.bUEKrw8: void onCreate(android.os.Bundle)>',33,'s',NULL),(17,79,'<p: void onClick(android.view.View)>',242,'a',NULL),(18,76,'<com.ipppOJ.WFUabFkwCdhnINo: void a()>',3,'a',NULL),(19,75,'<com.ipppOJ.oTokiUwvwpsPvTO: void b()>',3,'a',NULL),(20,77,'<a: void onClick(android.view.View)>',239,'a',NULL),(21,1,'<com.android_isocmzzk.FindActivity: void onCreate(android.os.Bundle)>',98,'s',NULL),(22,6,'<com.android_isocmzzk.bUEKrw12: void onClick(android.view.View)>',66,'a',NULL),(23,4,'<com.android_isocmzzk.bUEKrw5: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(24,80,'<com.DAQJNo.ad: void run()>',25,'s',NULL),(25,63,'<com.DAQJNo.CiBEpgWfr: void a(android.content.Context)>',76,'a',NULL),(26,6,'<com.android_isocmzzk.bUEKrw12: void onClick(android.view.View)>',53,'a',NULL),(27,5,'<com.android_isocmzzk.bUEKrw13: void a(int,boolean)>',63,'a',NULL),(28,3,'<com.android_isocmzzk.bUEKrw8: void onCreate(android.os.Bundle)>',81,'a',NULL),(29,81,'<com.DAQJNo.ab: void run()>',8,'s',NULL),(30,8,'<com.android_isocmzzk.bUEKrw1: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(31,45,'<com.DAQJNo.ujQQLoKHkeFa: void onCreate(android.os.Bundle)>',15,'a',NULL),(32,45,'<com.DAQJNo.ujQQLoKHkeFa: void onCreate(android.os.Bundle)>',25,'a',0),(33,52,'<com.DAQJNo.IQCLFEHFOSUMb: void a(boolean)>',15,'a',NULL),(34,52,'<com.DAQJNo.IQCLFEHFOSUMb: void b()>',50,'a',NULL),(35,55,'<com.DAQJNo.nubFUsvB: void a(com.DAQJNo.nubFUsvB,android.content.Context,java.lang.String)>',5,'a',NULL),(36,61,'<com.DAQJNo.GHJklgGLsNQr: void a(java.lang.String)>',10,'a',NULL),(37,82,'<com.DAQJNo.o: void f(android.content.Context,java.lang.String)>',10,'a',NULL),(38,52,'<com.DAQJNo.IQCLFEHFOSUMb: void b()>',43,'a',NULL),(39,83,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(40,52,'<com.DAQJNo.IQCLFEHFOSUMb: void a(boolean)>',5,'a',NULL),(41,52,'<com.DAQJNo.IQCLFEHFOSUMb: void a()>',3,'a',NULL),(42,24,'<tab.hvQangwNm.MyActivity: void onCreate(android.os.Bundle)>',46,'s',NULL),(43,73,'<com.beauty2wall.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(44,55,'<com.DAQJNo.nubFUsvB: void onCreate(android.os.Bundle)>',74,'a',NULL),(45,33,'<tab.hvQangwNm.fuiVf8: void onCreate(android.os.Bundle)>',84,'s',NULL),(46,38,'<com.beauty2wall.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(47,49,'<tab.hvQangwNm.UpdateActivity: void onClick(android.view.View)>',26,'a',NULL),(48,64,'<com.aVOPSIdGQ.LIbBQodP: void a()>',3,'a',NULL),(49,45,'<com.DAQJNo.ujQQLoKHkeFa: void onCreate(android.os.Bundle)>',30,'a',NULL),(50,85,'<br: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(51,37,'<tab.hvQangwNm.fuiVf9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(52,44,'<gdt.qkpadt.aebdacs.EggToss: void onClick(android.view.View)>',11,'a',NULL),(53,44,'<gdt.qkpadt.aebdacs.EggToss: void onClick(android.view.View)>',27,'a',NULL),(54,86,'<cv: void onClick(android.view.View)>',205,'a',NULL),(55,33,'<tab.hvQangwNm.fuiVf8: void onCreate(android.os.Bundle)>',33,'s',NULL),(56,87,'<com.aVOPSIdGQ.q: void f(android.content.Context,java.lang.String)>',10,'a',NULL),(57,88,'<tab.hvQangwNm.n: void onClick(android.view.View)>',239,'a',NULL),(58,89,'<af: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(59,44,'<gdt.qkpadt.aebdacs.EggToss: void onClick(android.view.View)>',21,'a',NULL),(60,15,'<com.oQwlD.akqlsUJkseCiE: void b()>',45,'a',NULL),(61,53,'<com.beauty2wall.GameAlertDialog: void onClick(android.view.View)>',71,'a',NULL),(62,90,'<com.tikhabks.oojsodtfj.B: void onClick(android.view.View)>',29,'a',NULL),(63,66,'<com.aVOPSIdGQ.PImHwOnfJ: void a(com.aVOPSIdGQ.PImHwOnfJ,android.content.Context,java.lang.String)>',5,'a',NULL),(64,14,'<com.oQwlD.qsnCfjkBru: void onCreate(android.os.Bundle)>',33,'a',NULL),(65,46,'<tab.hvQangwNm.fuiVf10: void onClick(android.view.View)>',75,'a',NULL),(66,73,'<com.beauty2wall.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(67,90,'<com.tikhabks.oojsodtfj.B: void onClick(android.view.View)>',43,'a',NULL),(68,53,'<com.beauty2wall.GameAlertDialog: void onClick(android.view.View)>',62,'a',NULL),(69,44,'<gdt.qkpadt.aebdacs.EggToss: void ShowSetting()>',3,'a',NULL),(70,12,'<com.scoreloop.android.coreui.ProfileActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',26,'a',NULL),(71,70,'<com.aVOPSIdGQ.vSRTeVPlSwQeLCk: void a(java.lang.String)>',10,'a',NULL),(72,59,'<tab.hvQangwNm.fuiVf12: void onReceive(android.content.Context,android.content.Intent)>',70,'s',NULL),(73,85,'<br: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(74,18,'<com.oQwlD.MsVNDlkAlpwabB: void a(java.lang.String)>',10,'a',NULL),(75,92,'<com.aVOPSIdGQ.v: void run()>',8,'s',NULL),(76,59,'<tab.hvQangwNm.fuiVf12: void onReceive(android.content.Context,android.content.Intent)>',42,'s',NULL),(77,29,'<com.beauty2wall.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',24,'a',NULL),(78,16,'<com.oQwlD.ntpDurIhbwNACpL: void a(com.oQwlD.ntpDurIhbwNACpL,android.content.Context,java.lang.String)>',5,'a',NULL),(79,60,'<com.aVOPSIdGQ.VqjvreRGwpm: void onCreate(android.os.Bundle)>',21,'a',NULL),(80,93,'<tab.hvQangwNm.e: void onClick(android.view.View)>',242,'a',NULL),(81,62,'<com.beauty2wall.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',54,'s',NULL),(82,94,'<com.aVOPSIdGQ.ag: void run()>',25,'s',NULL),(83,90,'<com.tikhabks.oojsodtfj.B: void onClick(android.view.View)>',20,'a',NULL),(84,89,'<af: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(85,60,'<com.aVOPSIdGQ.VqjvreRGwpm: void onCreate(android.os.Bundle)>',31,'a',0),(86,95,'<com.scoreloop.android.coreui.t: void onClick(android.view.View)>',23,'a',NULL),(87,64,'<com.aVOPSIdGQ.LIbBQodP: void b()>',45,'a',NULL),(88,96,'<com.oQwlD.j: void f(android.content.Context,java.lang.String)>',10,'a',NULL),(89,97,'<tab.hvQangwNm.g: void onClick(android.view.View)>',239,'a',NULL),(90,98,'<co: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(91,57,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(92,14,'<com.oQwlD.qsnCfjkBru: void onCreate(android.os.Bundle)>',18,'a',NULL),(93,99,'<ae: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(94,19,'<com.oQwlD.QBgCWkoDesFPUg: void a(android.content.Context)>',76,'a',NULL),(95,37,'<tab.hvQangwNm.fuiVf9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(96,100,'<dc: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(97,71,'<com.aVOPSIdGQ.gNqsUWIFdv: void c(android.content.Context)>',74,'a',NULL),(98,73,'<com.beauty2wall.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(99,15,'<com.oQwlD.akqlsUJkseCiE: void a()>',3,'a',NULL),(100,46,'<tab.hvQangwNm.fuiVf10: void onClick(android.view.View)>',66,'a',NULL),(101,101,'<com.oQwlD.ad: void run()>',25,'s',NULL),(102,66,'<com.aVOPSIdGQ.PImHwOnfJ: void onCreate(android.os.Bundle)>',67,'a',NULL),(103,47,'<com.beauty2wall.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',72,'a',NULL),(104,12,'<com.scoreloop.android.coreui.ProfileActivity: void onClick(android.view.View)>',32,'a',NULL),(105,102,'<com.gamevil.nexus2.NexusGLActivity$1: void onClick(android.content.DialogInterface,int)>',13,'a',NULL),(106,67,'<com.beauty2wall.qimg.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',22,'a',NULL),(107,60,'<com.aVOPSIdGQ.VqjvreRGwpm: void onCreate(android.os.Bundle)>',36,'a',NULL),(108,9,'<com.tikhabks.oojsodtfj.GameActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',29,'a',NULL),(109,99,'<ae: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(110,41,'<tab.hvQangwNm.fuiVf2: void a(int,boolean)>',10,'s',NULL),(111,16,'<com.oQwlD.ntpDurIhbwNACpL: void onCreate(android.os.Bundle)>',74,'a',NULL),(112,41,'<tab.hvQangwNm.fuiVf2: void a(int,boolean)>',84,'a',NULL),(113,64,'<com.aVOPSIdGQ.LIbBQodP: void b()>',55,'a',NULL),(114,35,'<com.beauty2wall.SearchActivity: void onCreate(android.os.Bundle)>',12,'s',NULL),(115,64,'<com.aVOPSIdGQ.LIbBQodP: void onBackPressed()>',5,'a',NULL),(116,103,'<ad: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(117,90,'<com.tikhabks.oojsodtfj.B: void onClick(android.view.View)>',37,'a',NULL),(118,104,'<com.oQwlD.ab: void run()>',8,'s',NULL),(119,23,'<com.beauty2wall.Web: void onCreate(android.os.Bundle)>',23,'s',NULL),(120,9,'<com.tikhabks.oojsodtfj.GameActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',34,'a',NULL),(121,98,'<co: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(122,49,'<tab.hvQangwNm.UpdateActivity: void onCreate(android.os.Bundle)>',13,'s',NULL),(123,15,'<com.oQwlD.akqlsUJkseCiE: void b()>',55,'a',NULL),(124,97,'<tab.hvQangwNm.g: void onClick(android.view.View)>',218,'a',NULL),(125,99,'<ae: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(126,15,'<com.oQwlD.akqlsUJkseCiE: void onBackPressed()>',5,'a',NULL),(127,22,'<com.beauty2wall.Myhall: void onCreate(android.os.Bundle)>',101,'s',NULL),(128,11,'<com.scoreloop.android.coreui.HighscoreActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',91,'a',NULL),(129,93,'<tab.hvQangwNm.e: void onClick(android.view.View)>',221,'a',NULL),(130,25,'<com.beauty2wall.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',29,'a',NULL),(131,14,'<com.oQwlD.qsnCfjkBru: void onCreate(android.os.Bundle)>',28,'a',0),(132,9,'<com.tikhabks.oojsodtfj.GameActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',0),(133,105,'<bq: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(134,106,'<tab.hvQangwNm.ac: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(135,9,'<com.tikhabks.oojsodtfj.GameActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',21,'a',NULL),(136,42,'<com.beauty2wall.GameInfo: void onCreate(android.os.Bundle)>',11,'s',NULL),(137,46,'<tab.hvQangwNm.fuiVf10: void onClick(android.view.View)>',53,'a',NULL),(138,62,'<com.beauty2wall.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(139,88,'<tab.hvQangwNm.n: void onClick(android.view.View)>',218,'a',NULL),(140,25,'<com.beauty2wall.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',48,'a',NULL),(141,31,'<tab.hvQangwNm.fuiVf16: boolean onKeyDown(int,android.view.KeyEvent)>',5,'a',NULL),(142,85,'<br: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(143,29,'<com.beauty2wall.SortActivity2: void onCreate(android.os.Bundle)>',11,'s',NULL),(144,24,'<tab.hvQangwNm.MyActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(145,89,'<af: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(146,59,'<tab.hvQangwNm.fuiVf12: void onReceive(android.content.Context,android.content.Intent)>',19,'s',NULL),(147,46,'<tab.hvQangwNm.fuiVf10: void onClick(android.view.View)>',84,'a',NULL),(148,53,'<com.beauty2wall.GameAlertDialog: void onClick(android.view.View)>',40,'a',NULL),(149,47,'<com.beauty2wall.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(150,107,'<tab.hvQangwNm.z: boolean onKey(android.content.DialogInterface,int,android.view.KeyEvent)>',16,'a',NULL),(151,108,'<com.android.vending.licensing.LicenseChecker: void checkAccess(com.android.vending.licensing.LicenseCheckerCallback)>',26,'s',NULL),(152,109,'<q: void onClick(android.view.View)>',6,'a',NULL),(153,110,'<tab.hvQangwNm.ClickableToast: void onClick(android.view.View)>',105,'a',NULL),(154,111,'<dw: void a(int,boolean)>',10,'s',NULL),(155,42,'<com.beauty2wall.GameInfo: boolean onKeyDown(int,android.view.KeyEvent)>',10,'a',NULL),(156,86,'<cv: void onClick(android.view.View)>',224,'a',NULL),(157,112,'<cj: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(158,22,'<com.beauty2wall.Myhall: void onCreate(android.os.Bundle)>',96,'s',NULL),(159,53,'<com.beauty2wall.GameAlertDialog: void onClick(android.view.View)>',53,'a',NULL),(160,89,'<af: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(161,25,'<com.beauty2wall.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',39,'a',NULL),(162,35,'<com.beauty2wall.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(163,111,'<dw: void a(int,boolean)>',29,'a',NULL),(164,67,'<com.beauty2wall.qimg.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',34,'a',NULL),(165,42,'<com.beauty2wall.GameInfo: void onCreate(android.os.Bundle)>',99,'a',NULL),(166,23,'<com.beauty2wall.Web: void onCreate(android.os.Bundle)>',19,'s',NULL),(167,42,'<com.beauty2wall.GameInfo: void onCreate(android.os.Bundle)>',94,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,3,4),(2,4,6),(3,5,6),(4,6,6),(5,7,6),(6,10,6),(7,11,6),(8,12,1),(9,13,1),(10,14,1),(11,15,1),(12,16,8),(13,21,8),(14,23,1),(15,24,1),(16,26,1),(17,28,1),(18,29,1),(19,30,1),(20,31,1),(21,32,1),(22,33,9),(23,34,10),(24,35,6),(25,36,6),(26,37,1),(27,39,1),(28,49,1),(29,50,1),(30,51,6),(31,52,6),(32,54,6),(33,58,11),(34,59,1),(35,61,1),(36,64,1),(37,69,6),(38,70,6),(39,72,6),(40,73,6),(41,74,1),(42,76,1),(43,80,1),(44,81,1),(45,83,1),(46,84,1),(47,86,4),(48,88,6),(49,89,4),(50,92,6),(51,94,13),(52,95,6),(53,97,13),(54,99,1),(55,101,1),(56,102,1),(57,104,1),(58,107,1),(59,110,1),(60,113,1),(61,112,6),(62,114,14),(63,116,1),(64,115,6),(65,118,1),(66,119,15),(67,122,1),(68,123,15),(69,124,1),(70,125,6),(71,127,1),(72,128,11),(73,130,6),(74,131,6),(75,133,1),(76,135,6),(77,136,1),(78,137,6),(79,140,6),(80,143,1),(81,145,1),(82,147,1),(83,148,1),(84,150,6),(85,152,1),(86,153,1),(87,156,6),(88,157,1),(89,159,1),(90,161,6),(91,162,6),(92,164,6),(93,167,6),(94,168,6),(95,173,16),(96,174,16),(97,176,17),(98,177,16),(99,178,16),(100,179,18),(101,180,16),(102,181,6),(103,182,6),(104,183,16),(105,184,6),(106,185,16),(107,186,16),(108,188,6),(109,195,1),(110,197,1),(111,198,19),(112,203,1),(113,204,1),(114,205,1),(115,206,1),(116,207,6),(117,208,20),(118,209,21),(119,210,6),(120,211,6),(121,216,6),(122,218,22),(123,219,23);
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,12,2),(2,13,5),(3,14,2),(4,15,5),(5,23,2),(6,24,5),(7,26,2),(8,28,5),(9,29,2),(10,30,5),(11,31,2),(12,32,5),(13,37,2),(14,39,5),(15,49,2),(16,50,5),(17,59,2),(18,61,5),(19,64,6),(20,74,2),(21,76,5),(22,80,2),(23,81,5),(24,83,2),(25,84,5),(26,99,2),(27,101,2),(28,102,5),(29,104,5),(30,107,2),(31,110,5),(32,113,2),(33,116,5),(34,118,2),(35,122,5),(36,124,2),(37,127,5),(38,133,2),(39,136,5),(40,143,2),(41,145,2),(42,147,5),(43,148,5),(44,152,2),(45,153,5),(46,157,2),(47,159,5),(48,195,2),(49,197,5),(50,203,2),(51,204,5),(52,205,2),(53,206,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/android_isocmzzk/bUEKrw2'),(2,2,'com/android_isocmzzk/FindActivity'),(3,8,'com/android_isocmzzk/FindActivity'),(4,9,'com/android_isocmzzk/FindActivity'),(5,16,'com/android_isocmzzk/bUEKrw2'),(6,17,'com/android_isocmzzk/bUEKrw12'),(7,18,'com/android_isocmzzk/bUEKrw8'),(8,19,'com/android_isocmzzk/bUEKrw2'),(9,20,'com/android_isocmzzk/bUEKrw2'),(10,21,'com/android_isocmzzk/bUEKrw2'),(11,22,'com/android_isocmzzk/bUEKrw2'),(12,25,'com/mobrgipia/mlfrbunibug/CrazySoft'),(13,27,'com/mobrgipia/mlfrbunibug/CrazySoft'),(14,33,'com/android_isocmzzk/bUEKrw2'),(15,34,'com/android_isocmzzk/bUEKrw2'),(16,38,'com/DAQJNo/jcEFEUtvmEBl'),(17,41,'com/android_isocmzzk/bUEKrw8'),(18,40,'com/DAQJNo/nubFUsvB'),(19,42,'com/android_isocmzzk/FindActivity'),(20,43,'com/android_isocmzzk/FindActivity'),(21,44,'com/DAQJNo/jcEFEUtvmEBl'),(22,45,'com/android_isocmzzk/bUEKrw2'),(23,46,'com/DAQJNo/IQCLFEHFOSUMb'),(24,47,'com/bfiqj/HitMe'),(25,48,'com/bfiqj/HitMe'),(26,53,'com/bfiqj/HitMe'),(27,55,'com/bfiqj/HitMe'),(28,56,'com/bfiqj/HitMe'),(29,57,'tab/hvQangwNm/fuiVf11'),(30,58,'com/beauty2wall/GameService'),(31,60,'tab/hvQangwNm/fuiVf11'),(32,62,'com/beauty2wall/GameService'),(33,63,'gdt/qkpadt/aebdacs/EggToss'),(34,65,'com/DAQJNo/IQCLFEHFOSUMb'),(35,66,'com/beauty2wall/Myhall'),(36,68,'com/divmob/Game/frmMainGame'),(37,67,'tab/hvQangwNm/fuiVf8'),(38,71,'tab/hvQangwNm/fuiVf11'),(39,75,'com/beauty2wall/Myhall'),(40,78,'com/tikhabks/oojsodtfj/GameActivity'),(41,77,'com/divmob/common/MyDialog'),(42,82,'com/scoreloop/android/coreui/HighscoreActivity'),(43,79,'com/beauty2wall/GameAlertDialog'),(44,85,'com/oQwlD/akqlsUJkseCiE'),(45,87,'com/beauty2wall/GameService'),(46,90,'gdt/qkpadt/aebdacs/frmSetting'),(47,91,'com/scoreloop/android/coreui/HighscoreActivity'),(48,93,'com/beauty2wall/GameInfo'),(49,94,'tab/hvQangwNm/fuiVf11'),(50,96,'com/aVOPSIdGQ/qwCCkOflqp'),(51,97,'tab/hvQangwNm/fuiVf11'),(52,98,'com/beauty2wall/GameInfo'),(53,100,'com/aVOPSIdGQ/LIbBQodP'),(54,103,'com/beauty2wall/GameService'),(55,105,'com/aVOPSIdGQ/qwCCkOflqp'),(56,106,'com/scoreloop/android/coreui/ChallengeActivity'),(57,108,'com/beauty2wall/Myhall'),(58,109,'com/scoreloop/android/coreui/HighscoreActivity'),(59,111,'gdt/qkpadt/aebdacs/EggToss'),(60,117,'com/oQwlD/akqlsUJkseCiE'),(61,120,'com/beauty2wall/Myhall'),(62,121,'com/oQwlD/ntpDurIhbwNACpL'),(63,129,'com/tikhabks/oojsodtfj/GameActivity'),(64,128,'com/beauty2wall/GameService'),(65,126,'com/aVOPSIdGQ/PImHwOnfJ'),(66,132,'com/oQwlD/phDWdatTa'),(67,134,'com/beauty2wall/GameInfo'),(68,138,'com/beauty2wall/GameInfo'),(69,139,'com/aVOPSIdGQ/LIbBQodP'),(70,142,'tab/hvQangwNm/fuiVf11'),(71,141,'com/beauty2wall/GameInfo'),(72,144,'gdt/qkpadt/aebdacs/EggToss'),(73,146,'com/beauty2wall/GameService'),(74,149,'gdt/qkpadt/aebdacs/EggToss'),(75,151,'com/scoreloop/android/coreui/ProfileActivity'),(76,154,'com/oQwlD/phDWdatTa'),(77,155,'com/beauty2wall/GameService'),(78,158,'tab/hvQangwNm/fuiVf11'),(79,160,'com/tikhabks/oojsodtfj/GameActivity'),(80,163,'com/tikhabks/oojsodtfj/GameActivity'),(81,165,'com/beauty2wall/GameService'),(82,166,'com/scoreloop/android/coreui/ProfileActivity'),(83,169,'com/beauty2wall/GameInfo'),(84,171,'ven/ogivlil/aj2010/SS2010Launcher'),(85,170,'com/beauty2wall/Myhall'),(86,172,'com/beauty2wall/GameService'),(87,175,'tab/hvQangwNm/fuiVf8'),(88,176,'com/beauty2wall/GameService'),(89,179,'com/beauty2wall/GameService'),(90,187,'ven/ogivlil/aj2010/SS2010Launcher'),(91,189,'com/beauty2wall/GameService'),(92,190,'tab/hvQangwNm/fuiVf11'),(93,192,'tab/hvQangwNm/fuiVf11'),(94,191,'com/beauty2wall/Myhall'),(95,194,'com/beauty2wall/GameInfo'),(96,193,'tab/hvQangwNm/fuiVf10'),(97,196,'ven/ogivlil/aj2010/SS2010Launcher'),(98,199,'com/beauty2wall/qimg/ImageTestActivity'),(99,200,'tab/hvQangwNm/fuiVf16'),(100,201,'com/beauty2wall/GameService'),(101,202,'com/beauty2wall/Myhall'),(102,208,'com/beauty2wall/GameService'),(103,209,'com/beauty2wall/GameService'),(104,212,'com/beauty2wall/Myhall'),(105,213,'com/beauty2wall/Myhall'),(106,214,'com/beauty2wall/GameInfo'),(107,215,'com/beauty2wall/Myhall'),(108,217,'com/beauty2wall/Myhall'),(109,218,'com/beauty2wall/GameService'),(110,219,'com/beauty2wall/GameService'),(111,220,'com/beauty2wall/Myhall');
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,4,1),(2,5,2),(3,6,3),(4,7,4),(5,10,5),(6,11,6),(7,35,7),(8,36,8),(9,51,9),(10,52,10),(11,54,11),(12,69,12),(13,70,13),(14,72,14),(15,73,15),(16,88,16),(17,92,17),(18,95,18),(19,112,19),(20,114,20),(21,115,21),(22,119,22),(23,123,23),(24,125,24),(25,130,25),(26,131,26),(27,135,27),(28,137,28),(29,140,29),(30,150,30),(31,156,31),(32,161,32),(33,162,33),(34,164,34),(35,167,35),(36,168,36),(37,181,37),(38,182,38),(39,184,39),(40,188,40),(41,207,41),(42,210,42),(43,211,43),(44,216,44);
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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,17,'title'),(2,17,'btn_txt'),(3,17,'need_adb_flag'),(4,17,'cont'),(5,17,'close_flag'),(6,18,'game'),(7,18,'fromtype'),(8,40,'apkVersion'),(9,40,'apkURL'),(10,41,'id'),(11,40,'apkInfo'),(12,41,'from_alert'),(13,40,'packageName'),(14,41,'detail_flag'),(15,40,'apkSoftID'),(16,40,'apkTitle'),(17,40,'iconURL'),(18,40,'apkSize'),(19,40,'imageURL'),(20,66,'title'),(21,66,'nextclassid'),(22,66,'clicked'),(23,67,'game'),(24,68,'LASTLEVELPLAYED'),(25,67,'fromtype'),(26,75,'clicked'),(27,77,'DIAGCONTENT'),(28,77,'DIAGTITLE'),(29,79,'title'),(30,79,'btn_txt'),(31,79,'need_adb_flag'),(32,79,'cont'),(33,79,'close_flag'),(34,93,'title'),(35,98,'title'),(36,108,'clicked'),(37,120,'title'),(38,120,'nextclassid'),(39,120,'clicked'),(40,121,'apkVersion'),(41,121,'apkURL'),(42,121,'apkInfo'),(43,121,'packageName'),(44,121,'apkSoftID'),(45,121,'apkTitle'),(46,121,'iconURL'),(47,121,'apkSize'),(48,121,'imageURL'),(49,126,'apkVersion'),(50,126,'apkURL'),(51,126,'apkInfo'),(52,126,'packageName'),(53,126,'apkSoftID'),(54,126,'apkTitle'),(55,126,'iconURL'),(56,126,'apkSize'),(57,126,'imageURL'),(58,141,'title'),(59,170,'title'),(60,170,'nextclassid'),(61,170,'clicked'),(62,173,'android.intent.extra.INTENT'),(63,175,'id'),(64,174,'android.intent.extra.INTENT'),(65,175,'from_alert'),(66,175,'detail_flag'),(67,177,'android.intent.extra.TITLE'),(68,177,'android.intent.extra.INTENT'),(69,178,'android.intent.extra.INTENT'),(70,180,'android.intent.extra.TITLE'),(71,180,'android.intent.extra.INTENT'),(72,183,'android.intent.extra.INTENT'),(73,185,'android.intent.extra.TITLE'),(74,185,'android.intent.extra.INTENT'),(75,186,'android.intent.extra.TITLE'),(76,186,'android.intent.extra.INTENT'),(77,191,'clicked'),(78,193,'title'),(79,194,'id'),(80,193,'btn_txt'),(81,194,'from_alert'),(82,193,'need_adb_flag'),(83,194,'detail_flag'),(84,193,'cont'),(85,193,'close_flag'),(86,200,'popurl'),(87,200,'poptitle'),(88,212,'clicked'),(89,213,'nextclassid'),(90,213,'clicked');
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,2),(7,8,1),(8,9,1),(9,11,3),(10,12,1),(11,14,1),(12,15,1),(13,16,1),(14,17,1),(15,18,1),(16,19,1),(17,20,1),(18,22,1),(19,23,1),(20,24,1),(21,26,3),(22,26,2),(23,25,4),(24,27,1),(25,28,1),(26,29,3),(27,30,1),(28,31,3),(29,32,2),(30,34,1),(31,35,5),(32,36,7),(33,37,3),(34,38,5),(35,39,12),(36,40,7),(37,41,7),(38,42,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,1,2),(3,5,2),(4,8,3),(5,9,2),(6,12,2),(7,22,2),(8,24,2),(9,27,2),(10,28,2),(11,30,2),(12,34,2),(13,35,4),(14,36,4),(15,38,4),(16,40,4),(17,41,4),(18,42,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,35,'package',NULL,NULL,NULL,NULL,NULL),(2,36,'package',NULL,NULL,NULL,NULL,NULL),(3,38,'package',NULL,NULL,NULL,NULL,NULL),(4,40,'package',NULL,NULL,NULL,NULL,NULL),(5,41,'package',NULL,NULL,NULL,NULL,NULL),(6,42,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,4,'application','vnd.android.package-archive'),(2,5,'application','vnd.android.package-archive'),(3,6,'application','vnd.android.package-archive'),(4,7,'application','vnd.android.package-archive'),(5,10,'application','vnd.android.package-archive'),(6,11,'application','vnd.android.package-archive'),(7,51,'application','vnd.android.package-archive'),(8,52,'application','vnd.android.package-archive'),(9,70,'application','vnd.android.package-archive'),(10,72,'application','vnd.android.package-archive'),(11,73,'application','vnd.android.package-archive'),(12,92,'application','vnd.android.package-archive'),(13,95,'application','vnd.android.package-archive'),(14,112,'application','vnd.android.package-archive'),(15,119,'(.*)','(.*)'),(16,125,'application','vnd.android.package-archive'),(17,150,'application','vnd.android.package-archive'),(18,161,'application','vnd.android.package-archive'),(19,164,'application','vnd.android.package-archive'),(20,167,'application','vnd.android.package-archive'),(21,168,'application','vnd.android.package-archive'),(22,181,'application','vnd.android.package-archive'),(23,184,'application','vnd.android.package-archive'),(24,207,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.android_isocmzzk'),(2,2,'com.android_isocmzzk'),(3,8,'com.android_isocmzzk'),(4,9,'com.android_isocmzzk'),(5,12,'(.*)'),(6,13,''),(7,14,''),(8,15,'(.*)'),(9,16,'com.android_isocmzzk'),(10,17,'com.android_isocmzzk'),(11,18,'com.android_isocmzzk'),(12,19,'com.android_isocmzzk'),(13,20,'com.android_isocmzzk'),(14,21,'com.android_isocmzzk'),(15,22,'com.android_isocmzzk'),(16,23,'(.*)'),(17,24,''),(18,25,'com.mobrgipia.mlfrbunibug'),(19,26,''),(20,27,'com.mobrgipia.mlfrbunibug'),(21,28,'(.*)'),(22,29,'(.*)'),(23,30,''),(24,31,''),(25,32,'(.*)'),(26,33,'com.android_isocmzzk'),(27,34,'com.android_isocmzzk'),(28,37,'(.*)'),(29,38,'com.bfiqj'),(30,39,'(.*)'),(31,41,'com.android_isocmzzk'),(32,40,'com.bfiqj'),(33,42,'com.android_isocmzzk'),(34,43,'com.android_isocmzzk'),(35,44,'com.bfiqj'),(36,45,'com.android_isocmzzk'),(37,46,'com.bfiqj'),(38,47,'com.bfiqj'),(39,48,'com.bfiqj'),(40,49,'(.*)'),(41,50,'(.*)'),(42,53,'com.bfiqj'),(43,55,'com.bfiqj'),(44,56,'com.bfiqj'),(45,57,'ven.ogivlil.aj2010'),(46,58,'com.beauty2wall'),(47,59,'(.*)'),(48,60,'ven.ogivlil.aj2010'),(49,61,'(.*)'),(50,62,'com.beauty2wall'),(51,63,'gdt.qkpadt.aebdacs'),(52,65,'com.bfiqj'),(53,66,'com.beauty2wall'),(54,68,'gdt.qkpadt.aebdacs'),(55,67,'ven.ogivlil.aj2010'),(56,71,'ven.ogivlil.aj2010'),(57,74,'(.*)'),(58,75,'com.beauty2wall'),(59,76,''),(60,78,'com.tikhabks.oojsodtfj'),(61,77,'gdt.qkpadt.aebdacs'),(62,80,''),(63,82,'com.tikhabks.oojsodtfj'),(64,81,'(.*)'),(65,79,'com.beauty2wall'),(66,83,'(.*)'),(67,84,'(.*)'),(68,85,'com.tikhabks.oojsodtfj'),(69,87,'com.beauty2wall'),(70,90,'gdt.qkpadt.aebdacs'),(71,91,'com.tikhabks.oojsodtfj'),(72,93,'com.beauty2wall'),(73,94,'ven.ogivlil.aj2010'),(74,96,'gdt.qkpadt.aebdacs'),(75,97,'ven.ogivlil.aj2010'),(76,98,'com.beauty2wall'),(77,99,'(.*)'),(78,100,'gdt.qkpadt.aebdacs'),(79,101,'(.*)'),(80,102,'(.*)'),(81,103,'com.beauty2wall'),(82,104,''),(83,105,'gdt.qkpadt.aebdacs'),(84,106,'com.tikhabks.oojsodtfj'),(85,107,''),(86,108,'com.beauty2wall'),(87,109,'com.tikhabks.oojsodtfj'),(88,110,'(.*)'),(89,111,'gdt.qkpadt.aebdacs'),(90,113,'(.*)'),(91,116,''),(92,117,'com.tikhabks.oojsodtfj'),(93,118,''),(94,120,'com.beauty2wall'),(95,122,'(.*)'),(96,124,'(.*)'),(97,121,'com.tikhabks.oojsodtfj'),(98,127,'(.*)'),(99,129,'com.tikhabks.oojsodtfj'),(100,128,'com.beauty2wall'),(101,126,'gdt.qkpadt.aebdacs'),(102,132,'com.tikhabks.oojsodtfj'),(103,133,'(.*)'),(104,134,'com.beauty2wall'),(105,136,'(.*)'),(106,138,'com.beauty2wall'),(107,139,'gdt.qkpadt.aebdacs'),(108,142,'ven.ogivlil.aj2010'),(109,141,'com.beauty2wall'),(110,143,'(.*)'),(111,144,'gdt.qkpadt.aebdacs'),(112,146,'com.beauty2wall'),(113,145,'(.*)'),(114,147,'(.*)'),(115,148,''),(116,149,'gdt.qkpadt.aebdacs'),(117,151,'com.tikhabks.oojsodtfj'),(118,152,''),(119,153,'(.*)'),(120,154,'com.tikhabks.oojsodtfj'),(121,155,'com.beauty2wall'),(122,158,'ven.ogivlil.aj2010'),(123,157,'NULL-CONSTANT'),(124,159,'NULL-CONSTANT'),(125,160,'com.tikhabks.oojsodtfj'),(126,163,'com.tikhabks.oojsodtfj'),(127,165,'com.beauty2wall'),(128,166,'com.tikhabks.oojsodtfj'),(129,169,'com.beauty2wall'),(130,171,'ven.ogivlil.aj2010'),(131,170,'com.beauty2wall'),(132,172,'com.beauty2wall'),(133,175,'ven.ogivlil.aj2010'),(134,176,'com.beauty2wall'),(135,179,'com.beauty2wall'),(136,187,'ven.ogivlil.aj2010'),(137,189,'com.beauty2wall'),(138,190,'ven.ogivlil.aj2010'),(139,192,'ven.ogivlil.aj2010'),(140,191,'com.beauty2wall'),(141,194,'com.beauty2wall'),(142,193,'ven.ogivlil.aj2010'),(143,195,'(.*)'),(144,196,'ven.ogivlil.aj2010'),(145,197,'(.*)'),(146,199,'com.beauty2wall'),(147,200,'ven.ogivlil.aj2010'),(148,201,'com.beauty2wall'),(149,202,'com.beauty2wall'),(150,203,'(.*)'),(151,204,''),(152,205,''),(153,206,'(.*)'),(154,208,'com.beauty2wall'),(155,209,'com.beauty2wall'),(156,212,'com.beauty2wall'),(157,213,'com.beauty2wall'),(158,214,'com.beauty2wall'),(159,215,'com.beauty2wall'),(160,217,'com.beauty2wall'),(161,218,'com.beauty2wall'),(162,219,'com.beauty2wall'),(163,220,'com.beauty2wall');
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,3,0),(3,4,0),(4,5,0),(5,7,0),(6,8,0),(7,9,0),(8,10,0),(9,14,0),(10,20,0),(11,21,0),(12,23,0),(13,26,0),(14,30,0),(15,33,0),(16,35,0),(17,37,0),(18,39,0),(19,41,0),(20,43,0),(21,44,0),(22,45,0),(23,47,0),(24,51,0),(25,56,0),(26,59,0),(27,60,0),(28,62,0),(29,65,0),(30,69,0),(31,72,0),(32,73,0),(33,74,0),(34,76,0),(35,8,0),(36,8,0),(37,77,0),(38,59,0),(39,78,0),(40,73,0),(41,59,0),(42,73,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,1,0),(4,4,1,0),(5,4,1,0),(6,5,1,0),(7,5,1,0),(8,6,0,0),(9,7,0,0),(10,8,1,0),(11,8,1,0),(12,9,1,0),(13,9,1,0),(14,9,1,0),(15,9,1,0),(16,10,0,0),(17,11,0,0),(18,12,0,0),(19,13,0,0),(20,14,0,0),(21,15,0,0),(22,16,0,0),(23,17,1,0),(24,17,1,0),(25,18,0,0),(26,17,1,0),(27,19,0,0),(28,17,1,0),(29,20,1,0),(30,20,1,0),(31,20,1,0),(32,20,1,0),(33,21,0,0),(34,21,0,0),(35,22,1,0),(36,22,1,0),(37,23,1,0),(38,24,0,0),(39,23,1,0),(40,25,0,0),(41,26,0,0),(42,27,0,0),(43,28,0,0),(44,29,0,0),(45,30,0,0),(46,31,0,0),(47,33,0,0),(48,34,0,0),(49,35,1,0),(50,35,1,0),(51,36,1,0),(52,37,1,0),(53,38,0,0),(54,39,1,0),(55,40,0,0),(56,41,0,0),(57,42,0,0),(58,43,0,0),(59,44,1,0),(60,45,0,0),(61,44,1,0),(62,46,0,0),(63,48,0,0),(64,47,1,0),(65,49,0,0),(66,50,0,0),(67,51,0,0),(68,52,0,0),(69,53,1,0),(70,54,1,0),(71,55,0,0),(72,54,1,0),(73,56,1,0),(74,57,1,0),(75,58,0,0),(76,57,1,0),(77,59,0,0),(78,60,0,0),(79,61,0,0),(80,57,1,0),(81,57,1,0),(82,62,0,0),(83,63,1,0),(84,63,1,0),(85,64,0,0),(86,65,1,0),(87,66,0,0),(88,67,1,0),(89,68,1,0),(90,69,0,0),(91,70,0,0),(92,71,1,0),(93,73,0,0),(94,72,0,0),(95,74,1,0),(96,75,0,0),(97,76,0,0),(98,77,0,0),(99,78,1,0),(100,79,0,0),(101,80,1,0),(102,78,1,0),(103,81,0,0),(104,80,1,0),(105,82,0,0),(106,83,0,0),(107,80,1,0),(108,84,0,0),(109,86,0,0),(110,80,1,0),(111,87,0,0),(112,88,1,0),(113,89,1,0),(114,90,1,0),(115,91,1,0),(116,89,1,0),(117,92,0,0),(118,89,1,0),(119,91,1,0),(120,93,0,0),(121,94,0,0),(122,89,1,0),(123,91,1,0),(124,95,1,0),(125,96,1,0),(126,97,0,0),(127,95,1,0),(128,98,0,0),(129,99,0,0),(130,100,1,0),(131,100,1,0),(132,101,0,0),(133,102,1,0),(134,103,0,0),(135,104,1,0),(136,102,1,0),(137,105,1,0),(138,106,0,0),(139,107,0,0),(140,108,1,0),(141,109,0,0),(142,110,0,0),(143,111,1,0),(144,113,0,0),(145,112,1,0),(146,114,0,0),(147,111,1,0),(148,112,1,0),(149,115,0,0),(150,116,1,0),(151,117,0,0),(152,112,1,0),(153,112,1,0),(154,118,0,0),(155,119,0,0),(156,120,1,0),(157,121,1,0),(158,122,0,0),(159,121,1,0),(160,123,0,0),(161,124,1,0),(162,125,1,0),(163,126,0,0),(164,124,1,0),(165,127,0,0),(166,128,0,0),(167,129,1,0),(168,129,1,0),(169,130,0,0),(170,133,0,0),(171,134,0,0),(172,136,0,0),(173,135,1,0),(174,135,1,0),(175,137,0,0),(176,138,0,0),(177,135,1,0),(178,135,1,0),(179,138,0,0),(180,135,1,0),(181,139,1,0),(182,140,1,0),(183,135,1,0),(184,139,1,0),(185,135,1,0),(186,135,1,0),(187,141,0,0),(188,142,1,0),(189,143,0,0),(190,144,0,0),(191,145,0,0),(192,146,0,0),(193,147,0,0),(194,148,0,0),(195,149,1,0),(196,150,0,0),(197,149,1,0),(198,151,1,0),(199,152,0,0),(200,153,0,0),(201,154,0,0),(202,155,0,0),(203,156,1,0),(204,156,1,0),(205,156,1,0),(206,156,1,0),(207,157,1,0),(208,158,0,0),(209,158,0,0),(210,159,1,0),(211,159,1,0),(212,160,0,0),(213,161,0,0),(214,162,0,0),(215,163,0,0),(216,164,1,0),(217,165,0,0),(218,166,0,0),(219,166,0,0),(220,167,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=1689 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,173,1,2,NULL),(2,174,1,2,NULL),(3,177,1,2,NULL),(4,178,1,2,NULL),(5,180,1,2,NULL),(6,183,1,2,NULL),(7,185,1,2,NULL),(8,186,1,2,NULL),(9,173,3,2,NULL),(10,174,3,2,NULL),(11,177,3,2,NULL),(12,178,3,2,NULL),(13,180,3,2,NULL),(14,183,3,2,NULL),(15,185,3,2,NULL),(16,186,3,2,NULL),(17,173,4,2,NULL),(18,174,4,2,NULL),(19,177,4,2,NULL),(20,178,4,2,NULL),(21,180,4,2,NULL),(22,183,4,2,NULL),(23,185,4,2,NULL),(24,186,4,2,NULL),(25,37,9,2,NULL),(26,39,9,2,NULL),(27,173,5,2,NULL),(28,174,5,2,NULL),(29,177,5,2,NULL),(30,178,5,2,NULL),(31,180,5,2,NULL),(32,183,5,2,NULL),(33,185,5,2,NULL),(34,186,5,2,NULL),(35,3,9,2,NULL),(36,35,9,2,NULL),(37,36,9,2,NULL),(38,173,7,2,NULL),(39,174,7,2,NULL),(40,177,7,2,NULL),(41,178,7,2,NULL),(42,180,7,2,NULL),(43,183,7,2,NULL),(44,185,7,2,NULL),(45,186,7,2,NULL),(46,173,8,2,NULL),(47,174,8,2,NULL),(48,177,8,2,NULL),(49,178,8,2,NULL),(50,180,8,2,NULL),(51,183,8,2,NULL),(52,185,8,2,NULL),(53,186,8,2,NULL),(54,173,10,2,NULL),(55,174,10,2,NULL),(56,177,10,2,NULL),(57,178,10,2,NULL),(58,180,10,2,NULL),(59,183,10,2,NULL),(60,185,10,2,NULL),(61,186,10,2,NULL),(62,135,9,2,NULL),(63,173,14,2,NULL),(64,174,14,2,NULL),(65,177,14,2,NULL),(66,178,14,2,NULL),(67,180,14,2,NULL),(68,183,14,2,NULL),(69,185,14,2,NULL),(70,186,14,2,NULL),(71,99,9,2,NULL),(72,102,9,2,NULL),(73,143,9,2,NULL),(74,147,9,2,NULL),(75,173,21,2,NULL),(76,174,21,2,NULL),(77,177,21,2,NULL),(78,178,21,2,NULL),(79,180,21,2,NULL),(80,183,21,2,NULL),(81,185,21,2,NULL),(82,186,21,2,NULL),(83,182,9,2,NULL),(84,173,30,2,NULL),(85,174,30,2,NULL),(86,177,30,2,NULL),(87,178,30,2,NULL),(88,180,30,2,NULL),(89,183,30,2,NULL),(90,185,30,2,NULL),(91,186,30,2,NULL),(92,173,35,2,NULL),(93,174,35,2,NULL),(94,177,35,2,NULL),(95,178,35,2,NULL),(96,180,35,2,NULL),(97,183,35,2,NULL),(98,185,35,2,NULL),(99,186,35,2,NULL),(100,173,39,2,NULL),(101,174,39,2,NULL),(102,177,39,2,NULL),(103,178,39,2,NULL),(104,180,39,2,NULL),(105,183,39,2,NULL),(106,185,39,2,NULL),(107,186,39,2,NULL),(108,173,43,2,NULL),(109,174,43,2,NULL),(110,177,43,2,NULL),(111,178,43,2,NULL),(112,180,43,2,NULL),(113,183,43,2,NULL),(114,185,43,2,NULL),(115,186,43,2,NULL),(116,173,47,2,NULL),(117,174,47,2,NULL),(118,177,47,2,NULL),(119,178,47,2,NULL),(120,180,47,2,NULL),(121,183,47,2,NULL),(122,185,47,2,NULL),(123,186,47,2,NULL),(124,195,9,2,NULL),(125,197,9,2,NULL),(126,89,9,2,NULL),(127,210,9,2,NULL),(128,211,9,2,NULL),(129,173,56,2,NULL),(130,174,56,2,NULL),(131,177,56,2,NULL),(132,178,56,2,NULL),(133,180,56,2,NULL),(134,183,56,2,NULL),(135,185,56,2,NULL),(136,186,56,2,NULL),(137,173,62,2,NULL),(138,174,62,2,NULL),(139,177,62,2,NULL),(140,178,62,2,NULL),(141,180,62,2,NULL),(142,183,62,2,NULL),(143,185,62,2,NULL),(144,186,62,2,NULL),(145,216,9,2,NULL),(146,173,69,2,NULL),(147,174,69,2,NULL),(148,177,69,2,NULL),(149,178,69,2,NULL),(150,180,69,2,NULL),(151,183,69,2,NULL),(152,185,69,2,NULL),(153,186,69,2,NULL),(154,173,73,2,NULL),(155,174,73,2,NULL),(156,177,73,2,NULL),(157,178,73,2,NULL),(158,180,73,2,NULL),(159,183,73,2,NULL),(160,185,73,2,NULL),(161,186,73,2,NULL),(162,173,20,2,NULL),(163,174,20,2,NULL),(164,177,20,2,NULL),(165,178,20,2,NULL),(166,180,20,2,NULL),(167,183,20,2,NULL),(168,185,20,2,NULL),(169,186,20,2,NULL),(170,173,23,2,NULL),(171,174,23,2,NULL),(172,177,23,2,NULL),(173,178,23,2,NULL),(174,180,23,2,NULL),(175,183,23,2,NULL),(176,185,23,2,NULL),(177,186,23,2,NULL),(178,173,33,2,NULL),(179,174,33,2,NULL),(180,177,33,2,NULL),(181,178,33,2,NULL),(182,180,33,2,NULL),(183,183,33,2,NULL),(184,185,33,2,NULL),(185,186,33,2,NULL),(186,173,37,2,NULL),(187,174,37,2,NULL),(188,177,37,2,NULL),(189,178,37,2,NULL),(190,180,37,2,NULL),(191,183,37,2,NULL),(192,185,37,2,NULL),(193,186,37,2,NULL),(194,124,9,2,NULL),(195,127,9,2,NULL),(196,173,41,2,NULL),(197,174,41,2,NULL),(198,177,41,2,NULL),(199,178,41,2,NULL),(200,180,41,2,NULL),(201,183,41,2,NULL),(202,185,41,2,NULL),(203,186,41,2,NULL),(204,145,9,2,NULL),(205,148,9,2,NULL),(206,152,9,2,NULL),(207,153,9,2,NULL),(208,86,9,2,NULL),(209,130,9,2,NULL),(210,131,9,2,NULL),(211,64,9,2,NULL),(212,173,51,2,NULL),(213,174,51,2,NULL),(214,177,51,2,NULL),(215,178,51,2,NULL),(216,180,51,2,NULL),(217,183,51,2,NULL),(218,185,51,2,NULL),(219,186,51,2,NULL),(220,173,59,2,NULL),(221,174,59,2,NULL),(222,177,59,2,NULL),(223,178,59,2,NULL),(224,180,59,2,NULL),(225,183,59,2,NULL),(226,185,59,2,NULL),(227,186,59,2,NULL),(228,173,77,2,NULL),(229,174,77,2,NULL),(230,177,77,2,NULL),(231,178,77,2,NULL),(232,180,77,2,NULL),(233,183,77,2,NULL),(234,185,77,2,NULL),(235,186,77,2,NULL),(236,173,78,2,NULL),(237,174,78,2,NULL),(238,177,78,2,NULL),(239,178,78,2,NULL),(240,180,78,2,NULL),(241,183,78,2,NULL),(242,185,78,2,NULL),(243,186,78,2,NULL),(244,173,26,2,NULL),(245,174,26,2,NULL),(246,177,26,2,NULL),(247,178,26,2,NULL),(248,180,26,2,NULL),(249,183,26,2,NULL),(250,185,26,2,NULL),(251,186,26,2,NULL),(252,173,45,2,NULL),(253,174,45,2,NULL),(254,177,45,2,NULL),(255,178,45,2,NULL),(256,180,45,2,NULL),(257,183,45,2,NULL),(258,185,45,2,NULL),(259,186,45,2,NULL),(260,49,9,2,NULL),(261,50,9,2,NULL),(262,59,9,2,NULL),(263,61,9,2,NULL),(264,173,65,2,NULL),(265,174,65,2,NULL),(266,177,65,2,NULL),(267,178,65,2,NULL),(268,180,65,2,NULL),(269,183,65,2,NULL),(270,185,65,2,NULL),(271,186,65,2,NULL),(272,173,44,2,NULL),(273,174,44,2,NULL),(274,177,44,2,NULL),(275,178,44,2,NULL),(276,180,44,2,NULL),(277,183,44,2,NULL),(278,185,44,2,NULL),(279,186,44,2,NULL),(280,115,9,2,NULL),(281,123,9,2,NULL),(282,173,60,2,NULL),(283,174,60,2,NULL),(284,177,60,2,NULL),(285,178,60,2,NULL),(286,180,60,2,NULL),(287,183,60,2,NULL),(288,185,60,2,NULL),(289,186,60,2,NULL),(290,83,9,2,NULL),(291,84,9,2,NULL),(292,133,9,2,NULL),(293,136,9,2,NULL),(294,173,72,2,NULL),(295,174,72,2,NULL),(296,177,72,2,NULL),(297,178,72,2,NULL),(298,180,72,2,NULL),(299,183,72,2,NULL),(300,185,72,2,NULL),(301,186,72,2,NULL),(302,173,74,2,NULL),(303,174,74,2,NULL),(304,177,74,2,NULL),(305,178,74,2,NULL),(306,180,74,2,NULL),(307,183,74,2,NULL),(308,185,74,2,NULL),(309,186,74,2,NULL),(310,173,76,2,NULL),(311,174,76,2,NULL),(312,177,76,2,NULL),(313,178,76,2,NULL),(314,180,76,2,NULL),(315,183,76,2,NULL),(316,185,76,2,NULL),(317,186,76,2,NULL),(318,37,10,2,NULL),(319,39,10,2,NULL),(320,3,10,2,NULL),(321,35,10,2,NULL),(322,36,10,2,NULL),(323,135,10,2,NULL),(324,99,10,2,NULL),(325,102,10,2,NULL),(326,143,10,2,NULL),(327,147,10,2,NULL),(328,182,10,2,NULL),(329,195,10,2,NULL),(330,197,10,2,NULL),(331,89,10,2,NULL),(332,210,10,2,NULL),(333,211,10,2,NULL),(334,216,10,2,NULL),(335,124,10,2,NULL),(336,127,10,2,NULL),(337,145,10,2,NULL),(338,148,10,2,NULL),(339,152,10,2,NULL),(340,153,10,2,NULL),(341,86,10,2,NULL),(342,130,10,2,NULL),(343,131,10,2,NULL),(344,64,10,2,NULL),(345,49,10,2,NULL),(346,50,10,2,NULL),(347,59,10,2,NULL),(348,61,10,2,NULL),(349,115,10,2,NULL),(350,123,10,2,NULL),(351,83,10,2,NULL),(352,84,10,2,NULL),(353,133,10,2,NULL),(354,136,10,2,NULL),(355,166,12,2,NULL),(356,91,11,2,NULL),(357,135,1,2,NULL),(358,135,3,2,NULL),(359,135,4,2,NULL),(360,135,5,2,NULL),(361,135,7,2,NULL),(362,135,8,2,NULL),(363,135,14,2,NULL),(364,135,21,2,NULL),(365,135,30,2,NULL),(366,135,35,2,NULL),(367,135,39,2,NULL),(368,135,43,2,NULL),(369,135,47,2,NULL),(370,135,56,2,NULL),(371,135,62,2,NULL),(372,135,69,2,NULL),(373,135,73,2,NULL),(374,135,20,2,NULL),(375,135,23,2,NULL),(376,135,33,2,NULL),(377,135,37,2,NULL),(378,135,41,2,NULL),(379,135,51,2,NULL),(380,135,59,2,NULL),(381,135,77,2,NULL),(382,135,78,2,NULL),(383,135,26,2,NULL),(384,135,45,2,NULL),(385,135,65,2,NULL),(386,135,44,2,NULL),(387,135,60,2,NULL),(388,135,72,2,NULL),(389,135,74,2,NULL),(390,135,76,2,NULL),(391,85,15,2,NULL),(392,117,15,2,NULL),(393,37,14,2,NULL),(394,39,14,2,NULL),(395,3,14,2,NULL),(396,35,14,2,NULL),(397,36,14,2,NULL),(398,99,14,2,NULL),(399,102,14,2,NULL),(400,143,14,2,NULL),(401,147,14,2,NULL),(402,182,14,2,NULL),(403,195,14,2,NULL),(404,197,14,2,NULL),(405,89,14,2,NULL),(406,210,14,2,NULL),(407,211,14,2,NULL),(408,216,14,2,NULL),(409,124,14,2,NULL),(410,127,14,2,NULL),(411,145,14,2,NULL),(412,148,14,2,NULL),(413,152,14,2,NULL),(414,153,14,2,NULL),(415,86,14,2,NULL),(416,130,14,2,NULL),(417,131,14,2,NULL),(418,64,14,2,NULL),(419,49,14,2,NULL),(420,50,14,2,NULL),(421,59,14,2,NULL),(422,61,14,2,NULL),(423,115,14,2,NULL),(424,123,14,2,NULL),(425,83,14,2,NULL),(426,84,14,2,NULL),(427,133,14,2,NULL),(428,136,14,2,NULL),(429,78,9,2,NULL),(430,129,9,2,NULL),(431,160,9,2,NULL),(432,163,9,2,NULL),(433,99,1,2,NULL),(434,102,1,2,NULL),(435,143,1,2,NULL),(436,147,1,2,NULL),(437,99,3,2,NULL),(438,102,3,2,NULL),(439,143,3,2,NULL),(440,147,3,2,NULL),(441,99,4,2,NULL),(442,102,4,2,NULL),(443,143,4,2,NULL),(444,147,4,2,NULL),(445,99,5,2,NULL),(446,102,5,2,NULL),(447,143,5,2,NULL),(448,147,5,2,NULL),(449,99,7,2,NULL),(450,102,7,2,NULL),(451,143,7,2,NULL),(452,147,7,2,NULL),(453,99,8,2,NULL),(454,102,8,2,NULL),(455,143,8,2,NULL),(456,147,8,2,NULL),(457,99,21,2,NULL),(458,102,21,2,NULL),(459,143,21,2,NULL),(460,147,21,2,NULL),(461,99,30,2,NULL),(462,102,30,2,NULL),(463,143,30,2,NULL),(464,147,30,2,NULL),(465,99,35,2,NULL),(466,102,35,2,NULL),(467,143,35,2,NULL),(468,147,35,2,NULL),(469,99,39,2,NULL),(470,102,39,2,NULL),(471,143,39,2,NULL),(472,147,39,2,NULL),(473,99,43,2,NULL),(474,102,43,2,NULL),(475,143,43,2,NULL),(476,147,43,2,NULL),(477,99,47,2,NULL),(478,102,47,2,NULL),(479,143,47,2,NULL),(480,147,47,2,NULL),(481,99,56,2,NULL),(482,102,56,2,NULL),(483,143,56,2,NULL),(484,147,56,2,NULL),(485,99,62,2,NULL),(486,102,62,2,NULL),(487,143,62,2,NULL),(488,147,62,2,NULL),(489,99,69,2,NULL),(490,102,69,2,NULL),(491,143,69,2,NULL),(492,147,69,2,NULL),(493,99,73,2,NULL),(494,102,73,2,NULL),(495,143,73,2,NULL),(496,147,73,2,NULL),(497,99,20,2,NULL),(498,102,20,2,NULL),(499,143,20,2,NULL),(500,147,20,2,NULL),(501,99,23,2,NULL),(502,102,23,2,NULL),(503,143,23,2,NULL),(504,147,23,2,NULL),(505,99,33,2,NULL),(506,102,33,2,NULL),(507,143,33,2,NULL),(508,147,33,2,NULL),(509,99,37,2,NULL),(510,102,37,2,NULL),(511,143,37,2,NULL),(512,147,37,2,NULL),(513,99,41,2,NULL),(514,102,41,2,NULL),(515,143,41,2,NULL),(516,147,41,2,NULL),(517,99,51,2,NULL),(518,102,51,2,NULL),(519,143,51,2,NULL),(520,147,51,2,NULL),(521,99,59,2,NULL),(522,102,59,2,NULL),(523,143,59,2,NULL),(524,147,59,2,NULL),(525,99,77,2,NULL),(526,102,77,2,NULL),(527,143,77,2,NULL),(528,147,77,2,NULL),(529,99,78,2,NULL),(530,102,78,2,NULL),(531,143,78,2,NULL),(532,147,78,2,NULL),(533,99,26,2,NULL),(534,102,26,2,NULL),(535,143,26,2,NULL),(536,147,26,2,NULL),(537,99,45,2,NULL),(538,102,45,2,NULL),(539,143,45,2,NULL),(540,147,45,2,NULL),(541,99,65,2,NULL),(542,102,65,2,NULL),(543,143,65,2,NULL),(544,147,65,2,NULL),(545,99,44,2,NULL),(546,102,44,2,NULL),(547,143,44,2,NULL),(548,147,44,2,NULL),(549,99,60,2,NULL),(550,102,60,2,NULL),(551,143,60,2,NULL),(552,147,60,2,NULL),(553,99,72,2,NULL),(554,102,72,2,NULL),(555,143,72,2,NULL),(556,147,72,2,NULL),(557,99,74,2,NULL),(558,102,74,2,NULL),(559,143,74,2,NULL),(560,147,74,2,NULL),(561,99,76,2,NULL),(562,102,76,2,NULL),(563,143,76,2,NULL),(564,147,76,2,NULL),(565,121,16,2,NULL),(566,37,21,2,NULL),(567,39,21,2,NULL),(568,3,21,2,NULL),(569,35,21,2,NULL),(570,36,21,2,NULL),(571,182,21,2,NULL),(572,195,21,2,NULL),(573,197,21,2,NULL),(574,89,21,2,NULL),(575,210,21,2,NULL),(576,211,21,2,NULL),(577,216,21,2,NULL),(578,124,21,2,NULL),(579,127,21,2,NULL),(580,145,21,2,NULL),(581,148,21,2,NULL),(582,152,21,2,NULL),(583,153,21,2,NULL),(584,86,21,2,NULL),(585,130,21,2,NULL),(586,131,21,2,NULL),(587,64,21,2,NULL),(588,49,21,2,NULL),(589,50,21,2,NULL),(590,59,21,2,NULL),(591,61,21,2,NULL),(592,115,21,2,NULL),(593,123,21,2,NULL),(594,83,21,2,NULL),(595,84,21,2,NULL),(596,133,21,2,NULL),(597,136,21,2,NULL),(598,68,50,2,NULL),(599,77,54,2,NULL),(600,90,48,2,NULL),(601,37,44,2,NULL),(602,39,44,2,NULL),(603,3,44,2,NULL),(604,35,44,2,NULL),(605,36,44,2,NULL),(606,182,44,2,NULL),(607,195,44,2,NULL),(608,197,44,2,NULL),(609,89,44,2,NULL),(610,210,44,2,NULL),(611,211,44,2,NULL),(612,216,44,2,NULL),(613,124,44,2,NULL),(614,127,44,2,NULL),(615,145,44,2,NULL),(616,148,44,2,NULL),(617,152,44,2,NULL),(618,153,44,2,NULL),(619,86,44,2,NULL),(620,130,44,2,NULL),(621,131,44,2,NULL),(622,64,44,2,NULL),(623,49,44,2,NULL),(624,50,44,2,NULL),(625,59,44,2,NULL),(626,61,44,2,NULL),(627,115,44,2,NULL),(628,123,44,2,NULL),(629,83,44,2,NULL),(630,84,44,2,NULL),(631,133,44,2,NULL),(632,136,44,2,NULL),(633,115,1,2,NULL),(634,123,1,2,NULL),(635,115,3,2,NULL),(636,123,3,2,NULL),(637,115,4,2,NULL),(638,123,4,2,NULL),(639,115,5,2,NULL),(640,123,5,2,NULL),(641,115,7,2,NULL),(642,123,7,2,NULL),(643,115,8,2,NULL),(644,123,8,2,NULL),(645,115,30,2,NULL),(646,123,30,2,NULL),(647,115,35,2,NULL),(648,123,35,2,NULL),(649,115,39,2,NULL),(650,123,39,2,NULL),(651,115,43,2,NULL),(652,123,43,2,NULL),(653,115,47,2,NULL),(654,123,47,2,NULL),(655,115,56,2,NULL),(656,123,56,2,NULL),(657,115,62,2,NULL),(658,123,62,2,NULL),(659,115,69,2,NULL),(660,123,69,2,NULL),(661,115,73,2,NULL),(662,123,73,2,NULL),(663,115,20,2,NULL),(664,123,20,2,NULL),(665,115,23,2,NULL),(666,123,23,2,NULL),(667,115,33,2,NULL),(668,123,33,2,NULL),(669,115,37,2,NULL),(670,123,37,2,NULL),(671,115,41,2,NULL),(672,123,41,2,NULL),(673,115,51,2,NULL),(674,123,51,2,NULL),(675,115,59,2,NULL),(676,123,59,2,NULL),(677,115,77,2,NULL),(678,123,77,2,NULL),(679,115,78,2,NULL),(680,123,78,2,NULL),(681,115,26,2,NULL),(682,123,26,2,NULL),(683,115,45,2,NULL),(684,123,45,2,NULL),(685,115,65,2,NULL),(686,123,65,2,NULL),(687,115,60,2,NULL),(688,123,60,2,NULL),(689,115,72,2,NULL),(690,123,72,2,NULL),(691,115,74,2,NULL),(692,123,74,2,NULL),(693,115,76,2,NULL),(694,123,76,2,NULL),(695,100,64,2,NULL),(696,139,64,2,NULL),(697,37,60,2,NULL),(698,39,60,2,NULL),(699,3,60,2,NULL),(700,35,60,2,NULL),(701,36,60,2,NULL),(702,182,60,2,NULL),(703,195,60,2,NULL),(704,197,60,2,NULL),(705,89,60,2,NULL),(706,210,60,2,NULL),(707,211,60,2,NULL),(708,216,60,2,NULL),(709,124,60,2,NULL),(710,127,60,2,NULL),(711,145,60,2,NULL),(712,148,60,2,NULL),(713,152,60,2,NULL),(714,153,60,2,NULL),(715,86,60,2,NULL),(716,130,60,2,NULL),(717,131,60,2,NULL),(718,64,60,2,NULL),(719,49,60,2,NULL),(720,50,60,2,NULL),(721,59,60,2,NULL),(722,61,60,2,NULL),(723,83,60,2,NULL),(724,84,60,2,NULL),(725,133,60,2,NULL),(726,136,60,2,NULL),(727,63,44,2,NULL),(728,111,44,2,NULL),(729,144,44,2,NULL),(730,149,44,2,NULL),(731,83,1,2,NULL),(732,84,1,2,NULL),(733,133,1,2,NULL),(734,136,1,2,NULL),(735,83,3,2,NULL),(736,84,3,2,NULL),(737,133,3,2,NULL),(738,136,3,2,NULL),(739,83,4,2,NULL),(740,84,4,2,NULL),(741,133,4,2,NULL),(742,136,4,2,NULL),(743,83,5,2,NULL),(744,84,5,2,NULL),(745,133,5,2,NULL),(746,136,5,2,NULL),(747,83,7,2,NULL),(748,84,7,2,NULL),(749,133,7,2,NULL),(750,136,7,2,NULL),(751,83,8,2,NULL),(752,84,8,2,NULL),(753,133,8,2,NULL),(754,136,8,2,NULL),(755,83,30,2,NULL),(756,84,30,2,NULL),(757,133,30,2,NULL),(758,136,30,2,NULL),(759,83,35,2,NULL),(760,84,35,2,NULL),(761,133,35,2,NULL),(762,136,35,2,NULL),(763,83,39,2,NULL),(764,84,39,2,NULL),(765,133,39,2,NULL),(766,136,39,2,NULL),(767,83,43,2,NULL),(768,84,43,2,NULL),(769,133,43,2,NULL),(770,136,43,2,NULL),(771,83,47,2,NULL),(772,84,47,2,NULL),(773,133,47,2,NULL),(774,136,47,2,NULL),(775,83,56,2,NULL),(776,84,56,2,NULL),(777,133,56,2,NULL),(778,136,56,2,NULL),(779,83,62,2,NULL),(780,84,62,2,NULL),(781,133,62,2,NULL),(782,136,62,2,NULL),(783,83,69,2,NULL),(784,84,69,2,NULL),(785,133,69,2,NULL),(786,136,69,2,NULL),(787,83,73,2,NULL),(788,84,73,2,NULL),(789,133,73,2,NULL),(790,136,73,2,NULL),(791,83,20,2,NULL),(792,84,20,2,NULL),(793,133,20,2,NULL),(794,136,20,2,NULL),(795,83,23,2,NULL),(796,84,23,2,NULL),(797,133,23,2,NULL),(798,136,23,2,NULL),(799,83,33,2,NULL),(800,84,33,2,NULL),(801,133,33,2,NULL),(802,136,33,2,NULL),(803,83,37,2,NULL),(804,84,37,2,NULL),(805,133,37,2,NULL),(806,136,37,2,NULL),(807,83,41,2,NULL),(808,84,41,2,NULL),(809,133,41,2,NULL),(810,136,41,2,NULL),(811,83,51,2,NULL),(812,84,51,2,NULL),(813,133,51,2,NULL),(814,136,51,2,NULL),(815,83,59,2,NULL),(816,84,59,2,NULL),(817,133,59,2,NULL),(818,136,59,2,NULL),(819,83,77,2,NULL),(820,84,77,2,NULL),(821,133,77,2,NULL),(822,136,77,2,NULL),(823,83,78,2,NULL),(824,84,78,2,NULL),(825,133,78,2,NULL),(826,136,78,2,NULL),(827,83,26,2,NULL),(828,84,26,2,NULL),(829,133,26,2,NULL),(830,136,26,2,NULL),(831,83,45,2,NULL),(832,84,45,2,NULL),(833,133,45,2,NULL),(834,136,45,2,NULL),(835,83,65,2,NULL),(836,84,65,2,NULL),(837,133,65,2,NULL),(838,136,65,2,NULL),(839,83,72,2,NULL),(840,84,72,2,NULL),(841,133,72,2,NULL),(842,136,72,2,NULL),(843,83,74,2,NULL),(844,84,74,2,NULL),(845,133,74,2,NULL),(846,136,74,2,NULL),(847,83,76,2,NULL),(848,84,76,2,NULL),(849,133,76,2,NULL),(850,136,76,2,NULL),(851,126,66,2,NULL),(852,37,72,2,NULL),(853,39,72,2,NULL),(854,3,72,2,NULL),(855,35,72,2,NULL),(856,36,72,2,NULL),(857,182,72,2,NULL),(858,195,72,2,NULL),(859,197,72,2,NULL),(860,89,72,2,NULL),(861,210,72,2,NULL),(862,211,72,2,NULL),(863,216,72,2,NULL),(864,124,72,2,NULL),(865,127,72,2,NULL),(866,145,72,2,NULL),(867,148,72,2,NULL),(868,152,72,2,NULL),(869,153,72,2,NULL),(870,86,72,2,NULL),(871,130,72,2,NULL),(872,131,72,2,NULL),(873,64,72,2,NULL),(874,49,72,2,NULL),(875,50,72,2,NULL),(876,59,72,2,NULL),(877,61,72,2,NULL),(878,37,20,2,NULL),(879,39,20,2,NULL),(880,3,20,2,NULL),(881,35,20,2,NULL),(882,36,20,2,NULL),(883,182,20,2,NULL),(884,195,20,2,NULL),(885,197,20,2,NULL),(886,89,20,2,NULL),(887,210,20,2,NULL),(888,211,20,2,NULL),(889,216,20,2,NULL),(890,124,20,2,NULL),(891,127,20,2,NULL),(892,145,20,2,NULL),(893,148,20,2,NULL),(894,152,20,2,NULL),(895,153,20,2,NULL),(896,86,20,2,NULL),(897,130,20,2,NULL),(898,131,20,2,NULL),(899,64,20,2,NULL),(900,49,20,2,NULL),(901,50,20,2,NULL),(902,59,20,2,NULL),(903,61,20,2,NULL),(904,57,51,2,NULL),(905,190,51,2,NULL),(906,37,23,2,NULL),(907,39,23,2,NULL),(908,3,23,2,NULL),(909,35,23,2,NULL),(910,36,23,2,NULL),(911,182,23,2,NULL),(912,195,23,2,NULL),(913,197,23,2,NULL),(914,89,23,2,NULL),(915,210,23,2,NULL),(916,211,23,2,NULL),(917,216,23,2,NULL),(918,124,23,2,NULL),(919,127,23,2,NULL),(920,145,23,2,NULL),(921,148,23,2,NULL),(922,152,23,2,NULL),(923,153,23,2,NULL),(924,86,23,2,NULL),(925,130,23,2,NULL),(926,131,23,2,NULL),(927,64,23,2,NULL),(928,49,23,2,NULL),(929,50,23,2,NULL),(930,59,23,2,NULL),(931,61,23,2,NULL),(932,187,20,2,NULL),(933,60,51,2,NULL),(934,71,51,2,NULL),(935,37,33,2,NULL),(936,39,33,2,NULL),(937,3,33,2,NULL),(938,35,33,2,NULL),(939,36,33,2,NULL),(940,182,33,2,NULL),(941,195,33,2,NULL),(942,197,33,2,NULL),(943,89,33,2,NULL),(944,210,33,2,NULL),(945,211,33,2,NULL),(946,216,33,2,NULL),(947,124,33,2,NULL),(948,127,33,2,NULL),(949,145,33,2,NULL),(950,148,33,2,NULL),(951,152,33,2,NULL),(952,153,33,2,NULL),(953,86,33,2,NULL),(954,130,33,2,NULL),(955,131,33,2,NULL),(956,64,33,2,NULL),(957,49,33,2,NULL),(958,50,33,2,NULL),(959,59,33,2,NULL),(960,61,33,2,NULL),(961,67,33,2,NULL),(962,124,1,2,NULL),(963,127,1,2,NULL),(964,124,3,2,NULL),(965,127,3,2,NULL),(966,124,4,2,NULL),(967,127,4,2,NULL),(968,37,37,2,NULL),(969,39,37,2,NULL),(970,124,5,2,NULL),(971,127,5,2,NULL),(972,3,37,2,NULL),(973,35,37,2,NULL),(974,36,37,2,NULL),(975,124,7,2,NULL),(976,127,7,2,NULL),(977,124,8,2,NULL),(978,127,8,2,NULL),(979,182,37,2,NULL),(980,124,30,2,NULL),(981,127,30,2,NULL),(982,124,35,2,NULL),(983,127,35,2,NULL),(984,124,39,2,NULL),(985,127,39,2,NULL),(986,124,43,2,NULL),(987,127,43,2,NULL),(988,124,47,2,NULL),(989,127,47,2,NULL),(990,195,37,2,NULL),(991,197,37,2,NULL),(992,89,37,2,NULL),(993,210,37,2,NULL),(994,211,37,2,NULL),(995,124,56,2,NULL),(996,127,56,2,NULL),(997,124,62,2,NULL),(998,127,62,2,NULL),(999,216,37,2,NULL),(1000,124,69,2,NULL),(1001,127,69,2,NULL),(1002,124,73,2,NULL),(1003,127,73,2,NULL),(1004,124,41,2,NULL),(1005,127,41,2,NULL),(1006,145,37,2,NULL),(1007,148,37,2,NULL),(1008,152,37,2,NULL),(1009,153,37,2,NULL),(1010,86,37,2,NULL),(1011,130,37,2,NULL),(1012,131,37,2,NULL),(1013,64,37,2,NULL),(1014,124,51,2,NULL),(1015,127,51,2,NULL),(1016,124,59,2,NULL),(1017,127,59,2,NULL),(1018,124,77,2,NULL),(1019,127,77,2,NULL),(1020,124,78,2,NULL),(1021,127,78,2,NULL),(1022,124,26,2,NULL),(1023,127,26,2,NULL),(1024,124,45,2,NULL),(1025,127,45,2,NULL),(1026,49,37,2,NULL),(1027,50,37,2,NULL),(1028,59,37,2,NULL),(1029,61,37,2,NULL),(1030,124,65,2,NULL),(1031,127,65,2,NULL),(1032,124,74,2,NULL),(1033,127,74,2,NULL),(1034,124,76,2,NULL),(1035,127,76,2,NULL),(1036,142,51,2,NULL),(1037,145,1,2,NULL),(1038,148,1,2,NULL),(1039,152,1,2,NULL),(1040,153,1,2,NULL),(1041,145,3,2,NULL),(1042,148,3,2,NULL),(1043,152,3,2,NULL),(1044,153,3,2,NULL),(1045,145,4,2,NULL),(1046,148,4,2,NULL),(1047,152,4,2,NULL),(1048,153,4,2,NULL),(1049,37,41,2,NULL),(1050,39,41,2,NULL),(1051,145,5,2,NULL),(1052,148,5,2,NULL),(1053,152,5,2,NULL),(1054,153,5,2,NULL),(1055,3,41,2,NULL),(1056,35,41,2,NULL),(1057,36,41,2,NULL),(1058,145,7,2,NULL),(1059,148,7,2,NULL),(1060,152,7,2,NULL),(1061,153,7,2,NULL),(1062,145,8,2,NULL),(1063,148,8,2,NULL),(1064,152,8,2,NULL),(1065,153,8,2,NULL),(1066,182,41,2,NULL),(1067,145,30,2,NULL),(1068,148,30,2,NULL),(1069,152,30,2,NULL),(1070,153,30,2,NULL),(1071,145,35,2,NULL),(1072,148,35,2,NULL),(1073,152,35,2,NULL),(1074,153,35,2,NULL),(1075,145,39,2,NULL),(1076,148,39,2,NULL),(1077,152,39,2,NULL),(1078,153,39,2,NULL),(1079,145,43,2,NULL),(1080,148,43,2,NULL),(1081,152,43,2,NULL),(1082,153,43,2,NULL),(1083,145,47,2,NULL),(1084,148,47,2,NULL),(1085,152,47,2,NULL),(1086,153,47,2,NULL),(1087,195,41,2,NULL),(1088,197,41,2,NULL),(1089,89,41,2,NULL),(1090,210,41,2,NULL),(1091,211,41,2,NULL),(1092,145,56,2,NULL),(1093,148,56,2,NULL),(1094,152,56,2,NULL),(1095,153,56,2,NULL),(1096,145,62,2,NULL),(1097,148,62,2,NULL),(1098,152,62,2,NULL),(1099,153,62,2,NULL),(1100,216,41,2,NULL),(1101,145,69,2,NULL),(1102,148,69,2,NULL),(1103,152,69,2,NULL),(1104,153,69,2,NULL),(1105,145,73,2,NULL),(1106,148,73,2,NULL),(1107,152,73,2,NULL),(1108,153,73,2,NULL),(1109,86,41,2,NULL),(1110,130,41,2,NULL),(1111,131,41,2,NULL),(1112,64,41,2,NULL),(1113,145,51,2,NULL),(1114,148,51,2,NULL),(1115,152,51,2,NULL),(1116,153,51,2,NULL),(1117,145,59,2,NULL),(1118,148,59,2,NULL),(1119,152,59,2,NULL),(1120,153,59,2,NULL),(1121,145,77,2,NULL),(1122,148,77,2,NULL),(1123,152,77,2,NULL),(1124,153,77,2,NULL),(1125,145,78,2,NULL),(1126,148,78,2,NULL),(1127,152,78,2,NULL),(1128,153,78,2,NULL),(1129,145,26,2,NULL),(1130,148,26,2,NULL),(1131,152,26,2,NULL),(1132,153,26,2,NULL),(1133,145,45,2,NULL),(1134,148,45,2,NULL),(1135,152,45,2,NULL),(1136,153,45,2,NULL),(1137,49,41,2,NULL),(1138,50,41,2,NULL),(1139,59,41,2,NULL),(1140,61,41,2,NULL),(1141,145,65,2,NULL),(1142,148,65,2,NULL),(1143,152,65,2,NULL),(1144,153,65,2,NULL),(1145,145,74,2,NULL),(1146,148,74,2,NULL),(1147,152,74,2,NULL),(1148,153,74,2,NULL),(1149,145,76,2,NULL),(1150,148,76,2,NULL),(1151,152,76,2,NULL),(1152,153,76,2,NULL),(1153,175,33,2,NULL),(1154,193,46,2,NULL),(1155,86,1,2,NULL),(1156,130,1,2,NULL),(1157,131,1,2,NULL),(1158,86,3,2,NULL),(1159,130,3,2,NULL),(1160,131,3,2,NULL),(1161,86,4,2,NULL),(1162,130,4,2,NULL),(1163,131,4,2,NULL),(1164,86,5,2,NULL),(1165,130,5,2,NULL),(1166,131,5,2,NULL),(1167,86,7,2,NULL),(1168,130,7,2,NULL),(1169,131,7,2,NULL),(1170,86,8,2,NULL),(1171,130,8,2,NULL),(1172,131,8,2,NULL),(1173,86,30,2,NULL),(1174,130,30,2,NULL),(1175,131,30,2,NULL),(1176,86,35,2,NULL),(1177,130,35,2,NULL),(1178,131,35,2,NULL),(1179,86,39,2,NULL),(1180,130,39,2,NULL),(1181,131,39,2,NULL),(1182,86,43,2,NULL),(1183,130,43,2,NULL),(1184,131,43,2,NULL),(1185,86,47,2,NULL),(1186,130,47,2,NULL),(1187,131,47,2,NULL),(1188,86,56,2,NULL),(1189,130,56,2,NULL),(1190,131,56,2,NULL),(1191,86,62,2,NULL),(1192,130,62,2,NULL),(1193,131,62,2,NULL),(1194,86,69,2,NULL),(1195,130,69,2,NULL),(1196,131,69,2,NULL),(1197,86,73,2,NULL),(1198,130,73,2,NULL),(1199,131,73,2,NULL),(1200,86,51,2,NULL),(1201,130,51,2,NULL),(1202,131,51,2,NULL),(1203,86,59,2,NULL),(1204,130,59,2,NULL),(1205,131,59,2,NULL),(1206,86,77,2,NULL),(1207,130,77,2,NULL),(1208,131,77,2,NULL),(1209,86,78,2,NULL),(1210,130,78,2,NULL),(1211,131,78,2,NULL),(1212,86,26,2,NULL),(1213,130,26,2,NULL),(1214,131,26,2,NULL),(1215,86,45,2,NULL),(1216,130,45,2,NULL),(1217,131,45,2,NULL),(1218,86,65,2,NULL),(1219,130,65,2,NULL),(1220,131,65,2,NULL),(1221,86,74,2,NULL),(1222,130,74,2,NULL),(1223,131,74,2,NULL),(1224,86,76,2,NULL),(1225,130,76,2,NULL),(1226,131,76,2,NULL),(1227,158,51,2,NULL),(1228,64,1,2,NULL),(1229,64,3,2,NULL),(1230,64,4,2,NULL),(1231,64,5,2,NULL),(1232,64,7,2,NULL),(1233,64,8,2,NULL),(1234,64,30,2,NULL),(1235,64,35,2,NULL),(1236,64,39,2,NULL),(1237,64,43,2,NULL),(1238,64,47,2,NULL),(1239,64,56,2,NULL),(1240,64,62,2,NULL),(1241,64,69,2,NULL),(1242,64,73,2,NULL),(1243,64,51,2,NULL),(1244,64,59,2,NULL),(1245,64,77,2,NULL),(1246,64,78,2,NULL),(1247,64,26,2,NULL),(1248,64,45,2,NULL),(1249,64,65,2,NULL),(1250,64,74,2,NULL),(1251,64,76,2,NULL),(1252,37,51,2,NULL),(1253,39,51,2,NULL),(1254,3,51,2,NULL),(1255,35,51,2,NULL),(1256,36,51,2,NULL),(1257,182,51,2,NULL),(1258,195,51,2,NULL),(1259,197,51,2,NULL),(1260,89,51,2,NULL),(1261,210,51,2,NULL),(1262,211,51,2,NULL),(1263,216,51,2,NULL),(1264,49,51,2,NULL),(1265,50,51,2,NULL),(1266,59,51,2,NULL),(1267,61,51,2,NULL),(1268,94,51,2,NULL),(1269,97,51,2,NULL),(1270,192,51,2,NULL),(1271,37,59,2,NULL),(1272,39,59,2,NULL),(1273,3,59,2,NULL),(1274,35,59,2,NULL),(1275,36,59,2,NULL),(1276,182,59,2,NULL),(1277,195,59,2,NULL),(1278,197,59,2,NULL),(1279,89,59,2,NULL),(1280,210,59,2,NULL),(1281,211,59,2,NULL),(1282,216,59,2,NULL),(1283,49,59,2,NULL),(1284,50,59,2,NULL),(1285,59,59,2,NULL),(1286,61,59,2,NULL),(1287,37,77,2,NULL),(1288,39,77,2,NULL),(1289,3,77,2,NULL),(1290,35,77,2,NULL),(1291,36,77,2,NULL),(1292,182,77,2,NULL),(1293,195,77,2,NULL),(1294,197,77,2,NULL),(1295,89,77,2,NULL),(1296,210,77,2,NULL),(1297,211,77,2,NULL),(1298,216,77,2,NULL),(1299,49,77,2,NULL),(1300,50,77,2,NULL),(1301,59,77,2,NULL),(1302,61,77,2,NULL),(1303,37,78,2,NULL),(1304,39,78,2,NULL),(1305,3,78,2,NULL),(1306,35,78,2,NULL),(1307,36,78,2,NULL),(1308,182,78,2,NULL),(1309,195,78,2,NULL),(1310,197,78,2,NULL),(1311,89,78,2,NULL),(1312,210,78,2,NULL),(1313,211,78,2,NULL),(1314,216,78,2,NULL),(1315,49,78,2,NULL),(1316,50,78,2,NULL),(1317,59,78,2,NULL),(1318,61,78,2,NULL),(1319,37,74,2,NULL),(1320,39,74,2,NULL),(1321,3,74,2,NULL),(1322,35,74,2,NULL),(1323,36,74,2,NULL),(1324,182,74,2,NULL),(1325,195,74,2,NULL),(1326,197,74,2,NULL),(1327,89,74,2,NULL),(1328,210,74,2,NULL),(1329,211,74,2,NULL),(1330,216,74,2,NULL),(1331,49,74,2,NULL),(1332,50,74,2,NULL),(1333,59,74,2,NULL),(1334,61,74,2,NULL),(1335,27,74,2,NULL),(1336,25,74,2,NULL),(1337,37,76,2,NULL),(1338,39,76,2,NULL),(1339,3,76,2,NULL),(1340,35,76,2,NULL),(1341,36,76,2,NULL),(1342,182,76,2,NULL),(1343,195,76,2,NULL),(1344,197,76,2,NULL),(1345,89,76,2,NULL),(1346,210,76,2,NULL),(1347,211,76,2,NULL),(1348,216,76,2,NULL),(1349,49,76,2,NULL),(1350,50,76,2,NULL),(1351,59,76,2,NULL),(1352,61,76,2,NULL),(1353,165,69,2,NULL),(1354,208,69,2,NULL),(1355,209,69,2,NULL),(1356,155,69,2,NULL),(1357,218,69,2,NULL),(1358,219,69,2,NULL),(1359,169,43,2,NULL),(1360,213,22,2,NULL),(1361,182,1,2,NULL),(1362,182,3,2,NULL),(1363,182,4,2,NULL),(1364,182,5,2,NULL),(1365,182,7,2,NULL),(1366,182,8,2,NULL),(1367,182,30,2,NULL),(1368,182,35,2,NULL),(1369,182,39,2,NULL),(1370,182,43,2,NULL),(1371,182,47,2,NULL),(1372,182,56,2,NULL),(1373,182,62,2,NULL),(1374,182,69,2,NULL),(1375,182,73,2,NULL),(1376,182,26,2,NULL),(1377,182,45,2,NULL),(1378,182,65,2,NULL),(1379,98,43,2,NULL),(1380,189,69,2,NULL),(1381,37,30,2,NULL),(1382,39,30,2,NULL),(1383,3,30,2,NULL),(1384,35,30,2,NULL),(1385,36,30,2,NULL),(1386,195,30,2,NULL),(1387,197,30,2,NULL),(1388,89,30,2,NULL),(1389,210,30,2,NULL),(1390,211,30,2,NULL),(1391,216,30,2,NULL),(1392,49,30,2,NULL),(1393,50,30,2,NULL),(1394,59,30,2,NULL),(1395,61,30,2,NULL),(1396,146,69,2,NULL),(1397,214,43,2,NULL),(1398,37,35,2,NULL),(1399,39,35,2,NULL),(1400,3,35,2,NULL),(1401,35,35,2,NULL),(1402,36,35,2,NULL),(1403,195,35,2,NULL),(1404,197,35,2,NULL),(1405,89,35,2,NULL),(1406,210,35,2,NULL),(1407,211,35,2,NULL),(1408,216,35,2,NULL),(1409,49,35,2,NULL),(1410,50,35,2,NULL),(1411,59,35,2,NULL),(1412,61,35,2,NULL),(1413,62,69,2,NULL),(1414,37,39,2,NULL),(1415,39,39,2,NULL),(1416,3,39,2,NULL),(1417,35,39,2,NULL),(1418,36,39,2,NULL),(1419,195,39,2,NULL),(1420,197,39,2,NULL),(1421,89,39,2,NULL),(1422,210,39,2,NULL),(1423,211,39,2,NULL),(1424,216,39,2,NULL),(1425,49,39,2,NULL),(1426,50,39,2,NULL),(1427,59,39,2,NULL),(1428,61,39,2,NULL),(1429,172,69,2,NULL),(1430,202,22,2,NULL),(1431,217,22,2,NULL),(1432,220,22,2,NULL),(1433,37,43,2,NULL),(1434,39,43,2,NULL),(1435,3,43,2,NULL),(1436,35,43,2,NULL),(1437,36,43,2,NULL),(1438,195,43,2,NULL),(1439,197,43,2,NULL),(1440,89,43,2,NULL),(1441,210,43,2,NULL),(1442,211,43,2,NULL),(1443,216,43,2,NULL),(1444,49,43,2,NULL),(1445,50,43,2,NULL),(1446,59,43,2,NULL),(1447,61,43,2,NULL),(1448,134,43,2,NULL),(1449,195,1,2,NULL),(1450,197,1,2,NULL),(1451,195,3,2,NULL),(1452,197,3,2,NULL),(1453,195,4,2,NULL),(1454,197,4,2,NULL),(1455,37,47,2,NULL),(1456,39,47,2,NULL),(1457,195,5,2,NULL),(1458,197,5,2,NULL),(1459,3,47,2,NULL),(1460,35,47,2,NULL),(1461,36,47,2,NULL),(1462,195,7,2,NULL),(1463,197,7,2,NULL),(1464,195,8,2,NULL),(1465,197,8,2,NULL),(1466,89,47,2,NULL),(1467,210,47,2,NULL),(1468,211,47,2,NULL),(1469,195,56,2,NULL),(1470,197,56,2,NULL),(1471,195,62,2,NULL),(1472,197,62,2,NULL),(1473,216,47,2,NULL),(1474,195,69,2,NULL),(1475,197,69,2,NULL),(1476,195,73,2,NULL),(1477,197,73,2,NULL),(1478,195,26,2,NULL),(1479,197,26,2,NULL),(1480,195,45,2,NULL),(1481,197,45,2,NULL),(1482,49,47,2,NULL),(1483,50,47,2,NULL),(1484,59,47,2,NULL),(1485,61,47,2,NULL),(1486,195,65,2,NULL),(1487,197,65,2,NULL),(1488,79,53,2,NULL),(1489,194,43,2,NULL),(1490,89,1,2,NULL),(1491,210,1,2,NULL),(1492,211,1,2,NULL),(1493,89,3,2,NULL),(1494,210,3,2,NULL),(1495,211,3,2,NULL),(1496,89,4,2,NULL),(1497,210,4,2,NULL),(1498,211,4,2,NULL),(1499,89,5,2,NULL),(1500,210,5,2,NULL),(1501,211,5,2,NULL),(1502,89,7,2,NULL),(1503,210,7,2,NULL),(1504,211,7,2,NULL),(1505,89,8,2,NULL),(1506,210,8,2,NULL),(1507,211,8,2,NULL),(1508,89,56,2,NULL),(1509,210,56,2,NULL),(1510,211,56,2,NULL),(1511,89,62,2,NULL),(1512,210,62,2,NULL),(1513,211,62,2,NULL),(1514,89,69,2,NULL),(1515,210,69,2,NULL),(1516,211,69,2,NULL),(1517,89,73,2,NULL),(1518,210,73,2,NULL),(1519,211,73,2,NULL),(1520,89,26,2,NULL),(1521,210,26,2,NULL),(1522,211,26,2,NULL),(1523,89,45,2,NULL),(1524,210,45,2,NULL),(1525,211,45,2,NULL),(1526,89,65,2,NULL),(1527,210,65,2,NULL),(1528,211,65,2,NULL),(1529,37,56,2,NULL),(1530,39,56,2,NULL),(1531,3,56,2,NULL),(1532,35,56,2,NULL),(1533,36,56,2,NULL),(1534,216,56,2,NULL),(1535,49,56,2,NULL),(1536,50,56,2,NULL),(1537,59,56,2,NULL),(1538,61,56,2,NULL),(1539,103,69,2,NULL),(1540,176,69,2,NULL),(1541,179,69,2,NULL),(1542,37,62,2,NULL),(1543,39,62,2,NULL),(1544,3,62,2,NULL),(1545,35,62,2,NULL),(1546,36,62,2,NULL),(1547,216,62,2,NULL),(1548,49,62,2,NULL),(1549,50,62,2,NULL),(1550,37,26,2,NULL),(1551,59,62,2,NULL),(1552,39,26,2,NULL),(1553,61,62,2,NULL),(1554,3,26,2,NULL),(1555,138,43,2,NULL),(1556,35,26,2,NULL),(1557,216,1,2,NULL),(1558,36,26,2,NULL),(1559,216,3,2,NULL),(1560,216,26,2,NULL),(1561,216,4,2,NULL),(1562,49,26,2,NULL),(1563,216,5,2,NULL),(1564,50,26,2,NULL),(1565,216,7,2,NULL),(1566,59,26,2,NULL),(1567,216,8,2,NULL),(1568,61,26,2,NULL),(1569,216,69,2,NULL),(1570,46,52,2,NULL),(1571,216,73,2,NULL),(1572,65,52,2,NULL),(1573,216,45,2,NULL),(1574,37,45,2,NULL),(1575,216,65,2,NULL),(1576,39,45,2,NULL),(1577,37,69,2,NULL),(1578,3,45,2,NULL),(1579,39,69,2,NULL),(1580,35,45,2,NULL),(1581,3,69,2,NULL),(1582,36,45,2,NULL),(1583,35,69,2,NULL),(1584,49,45,2,NULL),(1585,36,69,2,NULL),(1586,50,45,2,NULL),(1587,49,69,2,NULL),(1588,59,45,2,NULL),(1589,50,69,2,NULL),(1590,61,45,2,NULL),(1591,59,69,2,NULL),(1592,47,26,2,NULL),(1593,61,69,2,NULL),(1594,48,26,2,NULL),(1595,58,69,2,NULL),(1596,53,26,2,NULL),(1597,87,69,2,NULL),(1598,55,26,2,NULL),(1599,128,69,2,NULL),(1600,56,26,2,NULL),(1601,37,73,2,NULL),(1602,49,1,2,NULL),(1603,39,73,2,NULL),(1604,50,1,2,NULL),(1605,3,73,2,NULL),(1606,59,1,2,NULL),(1607,35,73,2,NULL),(1608,61,1,2,NULL),(1609,36,73,2,NULL),(1610,49,3,2,NULL),(1611,49,73,2,NULL),(1612,50,3,2,NULL),(1613,50,73,2,NULL),(1614,59,3,2,NULL),(1615,59,73,2,NULL),(1616,61,3,2,NULL),(1617,61,73,2,NULL),(1618,49,4,2,NULL),(1619,50,4,2,NULL),(1620,59,4,2,NULL),(1621,61,4,2,NULL),(1622,49,5,2,NULL),(1623,50,5,2,NULL),(1624,59,5,2,NULL),(1625,61,5,2,NULL),(1626,49,7,2,NULL),(1627,50,7,2,NULL),(1628,59,7,2,NULL),(1629,61,7,2,NULL),(1630,49,8,2,NULL),(1631,50,8,2,NULL),(1632,59,8,2,NULL),(1633,61,8,2,NULL),(1634,49,65,2,NULL),(1635,50,65,2,NULL),(1636,59,65,2,NULL),(1637,61,65,2,NULL),(1638,40,55,2,NULL),(1639,37,65,2,NULL),(1640,39,65,2,NULL),(1641,3,65,2,NULL),(1642,35,65,2,NULL),(1643,36,65,2,NULL),(1644,20,7,2,NULL),(1645,33,7,2,NULL),(1646,34,7,2,NULL),(1647,37,1,2,NULL),(1648,39,1,2,NULL),(1649,3,1,2,NULL),(1650,35,1,2,NULL),(1651,36,1,2,NULL),(1652,2,1,2,NULL),(1653,8,1,2,NULL),(1654,9,1,2,NULL),(1655,19,7,2,NULL),(1656,22,7,2,NULL),(1657,43,1,2,NULL),(1658,37,3,2,NULL),(1659,39,3,2,NULL),(1660,3,3,2,NULL),(1661,35,3,2,NULL),(1662,36,3,2,NULL),(1663,18,3,2,NULL),(1664,37,5,2,NULL),(1665,39,5,2,NULL),(1666,3,4,2,NULL),(1667,35,4,2,NULL),(1668,36,4,2,NULL),(1669,37,7,2,NULL),(1670,39,7,2,NULL),(1671,37,8,2,NULL),(1672,39,8,2,NULL),(1673,1,7,2,NULL),(1674,42,1,2,NULL),(1675,3,5,2,NULL),(1676,35,5,2,NULL),(1677,36,5,2,NULL),(1678,17,6,2,NULL),(1679,41,3,2,NULL),(1680,3,7,2,NULL),(1681,35,7,2,NULL),(1682,36,7,2,NULL),(1683,3,8,2,NULL),(1684,35,8,2,NULL),(1685,36,8,2,NULL),(1686,16,7,2,NULL),(1687,21,7,2,NULL),(1688,45,7,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (4,'android.permission.ACCESS_CACHE_FILESYSTEM'),(18,'android.permission.ACCESS_COARSE_LOCATION'),(16,'android.permission.ACCESS_FINE_LOCATION'),(9,'android.permission.ACCESS_NETWORK_STATE'),(17,'android.permission.ACCESS_WIFI_STATE'),(8,'android.permission.DELETE_CACHE_FILES'),(12,'android.permission.GET_TASKS'),(5,'android.permission.INTERNET'),(7,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(3,'android.permission.RECEIVE_BOOT_COMPLETED'),(15,'android.permission.SET_WALLPAPER'),(11,'android.permission.SYSTEM_ALERT_WINDOW'),(13,'android.permission.VIBRATE'),(19,'android.permission.WAKE_LOCK'),(6,'android.permission.WRITE_EXTERNAL_STORAGE'),(2,'com.android.launcher.permission.INSTALL_SHORTCUT'),(10,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(14,'com.android.vending.CHECK_LICENSE');
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'file://',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(4,NULL,NULL,'file://',NULL,NULL,NULL),(5,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(6,NULL,NULL,'file://',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'',NULL,NULL,NULL),(9,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(10,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(11,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(12,NULL,NULL,'market://details?id=com.divmob.spacewar.gamelite',NULL,NULL,NULL),(13,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(14,NULL,NULL,'file://',NULL,NULL,NULL),(15,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(16,NULL,NULL,'http://www.gamesoulstudio.pl',NULL,NULL,NULL),(17,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(19,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(20,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,NULL,NULL,'(.*)',NULL,NULL,NULL),(24,NULL,NULL,'file://',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'',NULL,NULL,NULL),(27,NULL,NULL,'(.*)',NULL,NULL,NULL),(28,NULL,NULL,'http://market.android.com/details?id=ven.ogivlil.aj2010',NULL,NULL,NULL),(29,NULL,NULL,'market://details?id=com.gamesoul.spheremare',NULL,NULL,NULL),(30,NULL,NULL,'file://',NULL,NULL,NULL),(31,NULL,NULL,'http://www.facebook.com/pages/Radio-Ball-3D/112365132147021',NULL,NULL,NULL),(32,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(33,NULL,NULL,'(.*)',NULL,NULL,NULL),(34,NULL,NULL,'file://',NULL,NULL,NULL),(35,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(36,NULL,NULL,'file://',NULL,NULL,NULL),(37,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(38,NULL,NULL,'(.*)',NULL,NULL,NULL),(39,NULL,NULL,'file://',NULL,NULL,NULL),(40,NULL,NULL,'(.*)',NULL,NULL,NULL),(41,NULL,NULL,'file://',NULL,NULL,NULL),(42,NULL,NULL,'(.*)',NULL,NULL,NULL),(43,NULL,NULL,'',NULL,NULL,NULL),(44,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,2,1),(12,2,2),(13,2,5),(14,2,6),(15,2,11),(16,2,12),(17,2,13),(18,4,1),(19,3,1),(20,4,2),(21,3,2),(22,4,3),(23,3,3),(24,3,4),(25,4,5),(26,4,6),(27,3,5),(28,4,9),(29,3,6),(30,3,7),(31,4,10),(32,5,17),(33,5,16),(34,4,12),(35,3,8),(36,4,13),(37,3,9),(38,5,1),(39,4,14),(40,3,10),(41,5,2),(42,5,18),(43,3,15),(44,5,5),(45,5,6),(46,5,9),(47,5,11),(48,5,12),(49,6,17),(50,6,1),(51,6,19),(52,6,2),(53,6,5),(54,6,6),(55,6,9),(56,6,11),(57,6,12),(58,7,17),(59,7,1),(60,7,5),(61,7,6),(62,7,9);
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

-- Dump completed on 2015-10-12  3:30:27
