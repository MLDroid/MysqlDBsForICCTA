-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_82
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
INSERT INTO `ActionStrings` VALUES (10,'(.*)'),(18,'android.intent.action.BATTERY_CHANGED'),(19,'android.intent.action.BATTERY_LOW'),(17,'android.intent.action.BATTERY_OKAY'),(3,'android.intent.action.BOOT_COMPLETED'),(21,'android.intent.action.CALL'),(9,'android.intent.action.CHOOSER'),(22,'android.intent.action.EDIT'),(1,'android.intent.action.MAIN'),(4,'android.intent.action.PACKAGE_ADDED'),(6,'android.intent.action.PACKAGE_CHANGED'),(5,'android.intent.action.PACKAGE_REMOVED'),(7,'android.intent.action.PACKAGE_REPLACED'),(2,'android.intent.action.PHONE_STATE'),(8,'android.intent.action.POWER_USAGE_SUMMARY'),(23,'android.intent.action.SENDTO'),(11,'android.intent.action.VIEW'),(20,'android.settings.APPLICATION_DETAILS_SETTINGS'),(15,'com.a0soft.gphone.app2sd.AppLocationChanged'),(14,'com.a0soft.gphone.app2sd.AppWndRefresh'),(13,'com.a0soft.gphone.app2sd.PkgChanged'),(12,'com.a0soft.gphone.app2sd.SortChanged'),(16,'com/a0soft/gphone/app2sd/main/AppIconWnd.ClearAppCachesFinished');
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
INSERT INTO `Applications` VALUES (1,'com.Beauty.Breast',1),(2,'com.smsbackup.phone',2),(3,'com.a0soft.gphone.super.app2sd',211),(4,'com.resorcemanager',2),(5,'com.backup.prime',1),(6,'com.getinfo.phone',4),(7,'com.screen.battery',4);
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
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.BROWSABLE'),(2,'android.intent.category.DEFAULT'),(4,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.Beauty.Breast.SexyImages'),(2,1,'com.Beauty.Breast.ShowImage'),(3,1,'com.admob.android.ads.AdMobActivity'),(4,1,'com.Beauty.Breast.lightdd.CoreService'),(5,1,'com.Beauty.Breast.lightdd.Receiver'),(6,2,'com.smsbackup.phone.main'),(7,2,'com.smsbackup.phone.Conver'),(8,2,'com.smsbackup.phone.MessagesActivity'),(9,2,'com.google.ads.AdActivity'),(10,2,'com.smsbackup.phone.protact.DreamerService'),(11,2,'com.smsbackup.phone.protact.BeerReceiver'),(12,3,'com.a0soft.gphone.app2sd.free.MainWnd'),(13,4,'com.practical.share.SuperShareActivity'),(14,3,'com.a0soft.gphone.app2sd.main.TopWnd'),(15,3,'com.a0soft.gphone.app2sd.main.NotiWnd'),(16,4,'com.practical.share.locationshare.Sharelocation'),(17,3,'com.a0soft.gphone.app2sd.main.OnPhoneWnd'),(18,4,'com.practical.share.locationshare.Preferences'),(19,5,'com.backup.prime.main'),(20,6,'com.getinfo.phone.main'),(21,3,'com.a0soft.gphone.app2sd.main.OnSDWnd'),(22,4,'com.practical.share.photoshare.PhotoShareActivity'),(23,3,'com.a0soft.gphone.app2sd.main.NoMoveWnd'),(24,4,'com.practical.share.contactsshare.ContactsShareActivity'),(25,5,'com.backup.contacts.main'),(26,6,'com.google.ads.AdActivity'),(27,3,'com.a0soft.gphone.app2sd.main.PrefWnd'),(28,4,'com.practical.share.contactsshare.Preferences'),(29,5,'com.backup.sms.main'),(30,3,'com.a0soft.gphone.app2sd.main.AboutWnd'),(31,6,'com.getinfo.phone.strategy.service.CelebrateService'),(32,4,'com.practical.share.appshare.AppShareActivity'),(33,5,'com.backup.sms.Conver'),(34,3,'com.passionteam.lightdd.CoreService'),(35,6,'com.getinfo.phone.strategy.core.RebirthReceiver'),(36,4,'com.google.ads.AdActivity'),(37,5,'com.backup.sms.MessagesActivity'),(38,3,'com.a0soft.gphone.app2sd.main.PkgChangedRecv'),(39,4,'com.practical.share.light.service.SystemConfService'),(40,5,'com.google.ads.AdActivity'),(41,4,'com.practical.share.appshare.Receiver'),(42,5,'com.backup.prime.grasp.service.AssuranceService'),(43,5,'com.backup.prime.grasp.core.BootReceiver'),(44,3,'com.passionteam.lightdd.Receiver'),(45,4,'com.practical.share.light.core.BootReceiver'),(46,7,'com.screen.battery.main'),(47,7,'com.screen.battery.Settings'),(48,7,'com.google.ads.AdActivity'),(49,7,'com.screen.battery.MonitorService'),(50,7,'com.screen.battery.strategy.service.CelebrateService'),(51,7,'com.screen.battery.BatteryReceiver'),(52,7,'com.screen.battery.strategy.core.RebirthReceiver'),(53,6,'com.getinfo.phone.strategy.service.Tools'),(54,2,'com.smsbackup.phone.SmsHandler'),(55,3,'com.a0soft.gphone.app2sd.main.o'),(56,3,'com.a0soft.gphone.app2sd.main.x'),(57,7,'com.screen.battery.strategy.service.Tools'),(58,3,'com.a0soft.gphone.app2sd.main.AppIconWnd'),(59,4,'com.practical.share.photoshare.i'),(60,2,'com.smsbackup.phone.main$16'),(61,4,'com.practical.share.contactsshare.f'),(62,5,'com.backup.contacts.d'),(63,2,'com.smsbackup.phone.main$12'),(64,2,'com.smsbackup.phone.protact.Tools'),(65,5,'com.backup.sms.c'),(66,5,'com.backup.sms.af'),(67,4,'com.practical.share.contactsshare.a'),(68,2,'com.smsbackup.phone.TaskHandler'),(69,5,'com.backup.prime.grasp.a.h'),(70,5,'com.backup.contacts.s'),(71,4,'com.practical.share.light.a.i'),(72,5,'com.backup.contacts.c'),(73,5,'com.backup.sms.w'),(74,5,'com.a.e'),(75,5,'com.backup.sms.ae');
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,31,'filename4'),(2,31,'PackageName4'),(3,31,'Description4'),(4,27,'com.google.ads.AdOpener'),(5,31,'url4'),(6,31,'Title4'),(7,27,'action'),(8,27,'params'),(9,30,'sp'),(10,34,'PackageName2'),(11,34,'url2'),(12,34,'filename2'),(13,34,'Description2'),(14,9,'com.google.ads.AdOpener'),(15,50,'url4'),(16,34,'Title2'),(17,9,'action'),(18,38,'android.intent.extra.REPLACING'),(19,48,'params'),(20,50,'PackageName4'),(21,10,'De8scription4'),(22,10,'Pa2ckageName3'),(23,10,'filename8'),(24,10,'T7itle5'),(25,50,'filename4'),(26,50,'Title4'),(27,48,'action'),(28,50,'Description4'),(29,36,'params'),(30,8,'number'),(31,36,'com.google.ads.AdOpener'),(32,40,'action'),(33,48,'com.google.ads.AdOpener'),(34,8,'name'),(35,10,'url1'),(36,36,'action'),(37,39,'Title1'),(38,39,'PackageName1'),(39,42,'PackageName6'),(40,9,'params'),(41,42,'filename6'),(42,7,'filename'),(43,42,'Description6'),(44,39,'url1'),(45,42,'Title6'),(46,37,'number'),(47,39,'filename1'),(48,40,'params'),(49,40,'com.google.ads.AdOpener'),(50,42,'url6'),(51,37,'name'),(52,39,'Description1'),(53,33,'filename');
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'s',0,NULL,NULL),(5,5,'r',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'s',0,NULL,NULL),(11,11,'r',1,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,27,'a',0,NULL,NULL),(27,26,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'s',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'s',0,NULL,NULL),(35,35,'r',1,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'r',1,NULL,NULL),(39,39,'s',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'r',1,NULL,NULL),(42,42,'s',0,NULL,NULL),(43,43,'r',1,NULL,NULL),(44,44,'r',1,NULL,NULL),(45,45,'r',1,NULL,NULL),(46,46,'a',1,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'s',0,NULL,NULL),(50,50,'s',0,NULL,NULL),(51,51,'r',1,NULL,NULL),(52,52,'r',1,NULL,NULL),(53,55,'r',1,NULL,NULL),(54,56,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,35),(2,2,31),(3,3,20),(4,4,20),(5,5,8),(6,6,27),(7,7,44),(8,8,8),(9,8,7),(10,9,8),(11,9,7),(12,10,46),(13,11,50),(14,12,11),(15,13,21),(16,13,23),(17,13,17),(18,14,6),(19,15,15),(20,16,48),(21,17,6),(22,18,32),(23,18,22),(24,19,6),(25,20,46),(26,21,52),(27,22,51),(28,23,24),(29,24,46),(30,25,25),(31,26,45),(32,27,6),(33,28,46),(34,29,40),(35,30,32),(36,30,13),(37,31,6),(38,32,32),(39,33,10),(40,34,6),(41,35,6),(42,36,24),(43,37,29),(44,38,7),(45,39,24),(46,40,29),(47,41,24),(48,42,37),(49,42,33),(50,43,6),(51,44,24),(52,45,8),(53,46,37),(54,47,9),(55,48,24),(56,49,6),(57,50,43),(58,51,24),(59,52,6),(60,53,42),(61,54,6),(62,55,24),(63,56,6),(64,57,25),(65,58,24),(66,59,24),(67,60,24),(68,61,24),(69,62,13),(70,63,32),(71,63,13),(72,64,39),(73,65,25),(74,66,19),(75,67,32),(76,68,29),(77,69,32),(78,70,25),(79,71,29),(80,72,29),(81,73,29),(82,74,29),(83,75,25),(84,76,33),(85,77,32),(86,78,29),(87,79,22),(88,79,32),(89,80,29),(90,81,29),(91,82,24),(92,83,29),(93,84,32),(94,84,13),(95,85,36),(96,86,32),(97,87,33),(98,87,37),(99,88,37),(100,89,32),(101,90,13),(102,90,32);
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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,35,'<com.getinfo.phone.strategy.core.RebirthReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(2,53,'<com.getinfo.phone.strategy.service.Tools: android.database.Cursor getCurrentApn(android.content.Context)>',3,'p',NULL),(3,20,'<com.getinfo.phone.main: void onCreate(android.os.Bundle)>',6,'s',NULL),(4,20,'<com.getinfo.phone.main: void onClick(android.view.View)>',10,'a',NULL),(5,8,'<com.smsbackup.phone.MessagesActivity: boolean onContextItemSelected(android.view.MenuItem)>',19,'a',NULL),(6,26,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(7,44,'<com.passionteam.lightdd.Receiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',NULL),(8,54,'<com.smsbackup.phone.SmsHandler: java.lang.String getContactsNameByPhone(java.lang.String)>',13,'p',NULL),(9,7,'<com.smsbackup.phone.Conver: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',14,'a',NULL),(10,46,'<com.screen.battery.main: void onClick(android.view.View)>',6,'a',NULL),(11,57,'<com.screen.battery.strategy.service.Tools: android.database.Cursor getCurrentApn(android.content.Context)>',3,'p',NULL),(12,11,'<com.smsbackup.phone.protact.BeerReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(13,58,'<com.a0soft.gphone.app2sd.main.AppIconWnd: void c()>',3,'r',NULL),(14,6,'<com.smsbackup.phone.main: void onCreate(android.os.Bundle)>',15,'s',NULL),(15,15,'<com.a0soft.gphone.app2sd.main.NotiWnd: void onCreate(android.os.Bundle)>',15,'a',NULL),(16,48,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(17,54,'<com.smsbackup.phone.SmsHandler: void updateThread(java.lang.String,long)>',27,'p',0),(18,59,'<com.practical.share.photoshare.i: void onClick(android.content.DialogInterface,int)>',23,'a',NULL),(19,60,'<com.smsbackup.phone.main$16: void onClick(android.content.DialogInterface,int)>',32,'a',NULL),(20,46,'<com.screen.battery.main: void onClick(android.view.View)>',12,'a',NULL),(21,52,'<com.screen.battery.strategy.core.RebirthReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(22,51,'<com.screen.battery.BatteryReceiver: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(23,61,'<com.practical.share.contactsshare.f: java.lang.String b(android.content.Context,long)>',11,'p',NULL),(24,46,'<com.screen.battery.main: void onCreate(android.os.Bundle)>',11,'s',NULL),(25,62,'<com.backup.contacts.d: int a()>',3,'p',NULL),(26,45,'<com.practical.share.light.core.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(27,63,'<com.smsbackup.phone.main$12: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(28,46,'<com.screen.battery.main: void onCreate(android.os.Bundle)>',8,'s',NULL),(29,40,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(30,13,'<com.practical.share.SuperShareActivity: void onClick(android.view.View)>',11,'a',NULL),(31,54,'<com.smsbackup.phone.SmsHandler: android.database.Cursor getAllSms()>',4,'p',NULL),(32,32,'<com.practical.share.appshare.AppShareActivity: boolean onContextItemSelected(android.view.MenuItem)>',67,'a',NULL),(33,64,'<com.smsbackup.phone.protact.Tools: android.database.Cursor getCurrentApn(android.content.Context)>',3,'p',NULL),(34,54,'<com.smsbackup.phone.SmsHandler: long creatSMStoPhone(com.smsbackup.phone.SmsHandler$SMS)>',33,'p',NULL),(35,54,'<com.smsbackup.phone.SmsHandler: int querySmsByDateAndAddress(long,java.lang.String)>',16,'p',NULL),(36,61,'<com.practical.share.contactsshare.f: android.database.Cursor b(android.content.Context,java.lang.String)>',21,'p',NULL),(37,65,'<com.backup.sms.c: void a(java.lang.String,long)>',24,'p',NULL),(38,7,'<com.smsbackup.phone.Conver: boolean onContextItemSelected(android.view.MenuItem)>',20,'a',NULL),(39,61,'<com.practical.share.contactsshare.f: android.database.Cursor a(android.content.Context,java.lang.String)>',21,'p',NULL),(40,66,'<com.backup.sms.af: int a()>',8,'p',NULL),(41,61,'<com.practical.share.contactsshare.f: android.database.Cursor b(android.content.Context,java.lang.String)>',9,'p',NULL),(42,33,'<com.backup.sms.Conver: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',14,'a',NULL),(43,54,'<com.smsbackup.phone.SmsHandler: void updateThread(java.lang.String,long)>',24,'p',NULL),(44,67,'<com.practical.share.contactsshare.a: void onClick(android.content.DialogInterface,int)>',70,'a',NULL),(45,8,'<com.smsbackup.phone.MessagesActivity: boolean onContextItemSelected(android.view.MenuItem)>',34,'a',NULL),(46,37,'<com.backup.sms.MessagesActivity: boolean onContextItemSelected(android.view.MenuItem)>',19,'a',NULL),(47,9,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(48,24,'<com.practical.share.contactsshare.ContactsShareActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(49,68,'<com.smsbackup.phone.TaskHandler: int deleteAllSms()>',8,'p',NULL),(50,43,'<com.backup.prime.grasp.core.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(51,67,'<com.practical.share.contactsshare.a: void onClick(android.content.DialogInterface,int)>',92,'a',NULL),(52,54,'<com.smsbackup.phone.SmsHandler: int getSmsCount()>',4,'p',NULL),(53,69,'<com.backup.prime.grasp.a.h: java.net.HttpURLConnection d()>',40,'p',NULL),(54,54,'<com.smsbackup.phone.SmsHandler: long creatSMStoPhone(com.smsbackup.phone.SmsHandler$SMS)>',38,'p',0),(55,67,'<com.practical.share.contactsshare.a: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(56,68,'<com.smsbackup.phone.TaskHandler: int deleteAllSms()>',4,'p',NULL),(57,70,'<com.backup.contacts.s: void onClick(android.content.DialogInterface,int)>',32,'a',NULL),(58,61,'<com.practical.share.contactsshare.f: android.database.Cursor d(android.content.Context,long)>',13,'p',NULL),(59,61,'<com.practical.share.contactsshare.f: android.database.Cursor a(android.content.Context,java.lang.String)>',9,'p',NULL),(60,61,'<com.practical.share.contactsshare.f: android.database.Cursor c(android.content.Context,long)>',8,'p',NULL),(61,61,'<com.practical.share.contactsshare.f: java.lang.String a(android.content.Context,long)>',11,'p',NULL),(62,13,'<com.practical.share.SuperShareActivity: void onCreate(android.os.Bundle)>',6,'s',NULL),(63,13,'<com.practical.share.SuperShareActivity: void onClick(android.view.View)>',7,'a',NULL),(64,71,'<com.practical.share.light.a.i: java.net.HttpURLConnection d()>',40,'p',NULL),(65,72,'<com.backup.contacts.c: int a()>',6,'p',NULL),(66,19,'<com.backup.prime.main: void onCreate(android.os.Bundle)>',7,'s',NULL),(67,32,'<com.practical.share.appshare.AppShareActivity: boolean onContextItemSelected(android.view.MenuItem)>',104,'a',NULL),(68,73,'<com.backup.sms.w: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(69,32,'<com.practical.share.appshare.AppShareActivity: boolean onContextItemSelected(android.view.MenuItem)>',49,'a',NULL),(70,74,'<com.a.e: java.lang.String a(java.lang.String)>',10,'p',NULL),(71,65,'<com.backup.sms.c: long b(com.backup.sms.ar)>',53,'p',0),(72,65,'<com.backup.sms.c: int b()>',4,'p',NULL),(73,65,'<com.backup.sms.c: void a(java.lang.String,long)>',27,'p',0),(74,65,'<com.backup.sms.c: long b(com.backup.sms.ar)>',48,'p',NULL),(75,74,'<com.a.e: boolean f()>',14,'p',NULL),(76,33,'<com.backup.sms.Conver: boolean onContextItemSelected(android.view.MenuItem)>',20,'a',NULL),(77,32,'<com.practical.share.appshare.AppShareActivity: boolean onContextItemSelected(android.view.MenuItem)>',87,'a',NULL),(78,65,'<com.backup.sms.c: java.util.ArrayList a()>',4,'p',NULL),(79,59,'<com.practical.share.photoshare.i: void onClick(android.content.DialogInterface,int)>',41,'a',NULL),(80,65,'<com.backup.sms.c: long b(com.backup.sms.ar)>',17,'p',NULL),(81,66,'<com.backup.sms.af: int a()>',4,'p',NULL),(82,67,'<com.practical.share.contactsshare.a: void onClick(android.content.DialogInterface,int)>',83,'a',NULL),(83,75,'<com.backup.sms.ae: void onClick(android.content.DialogInterface,int)>',32,'a',NULL),(84,13,'<com.practical.share.SuperShareActivity: void onClick(android.view.View)>',19,'a',NULL),(85,36,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(86,32,'<com.practical.share.appshare.AppShareActivity: boolean onContextItemSelected(android.view.MenuItem)>',55,'a',NULL),(87,65,'<com.backup.sms.c: java.lang.String c(java.lang.String)>',13,'p',NULL),(88,37,'<com.backup.sms.MessagesActivity: boolean onContextItemSelected(android.view.MenuItem)>',34,'a',NULL),(89,32,'<com.practical.share.appshare.AppShareActivity: void onClick(android.view.View)>',35,'a',NULL),(90,13,'<com.practical.share.SuperShareActivity: void onClick(android.view.View)>',15,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,3,8),(2,4,9),(3,5,9),(4,6,10),(5,7,9),(6,8,9),(7,9,11),(8,10,9),(9,11,10),(10,12,9),(11,14,9),(12,15,9),(13,17,8),(14,19,12),(15,22,10),(16,24,11),(17,23,9),(18,25,9),(19,26,9),(20,27,9),(21,28,9),(22,29,10),(23,30,9),(24,31,9),(25,32,9),(26,33,9),(27,35,9),(28,36,9),(29,37,9),(30,39,9),(31,40,9),(32,41,9),(33,42,9),(34,48,10),(35,50,11),(36,51,20),(37,52,10),(38,53,20),(39,54,21),(40,55,21),(41,57,9),(42,58,9),(43,59,21),(44,60,9),(45,61,9),(46,62,9),(47,63,21),(48,64,9),(49,65,9),(50,66,9),(51,68,10),(52,67,9),(53,69,9),(54,70,9),(55,71,9),(56,72,11),(57,73,9),(58,74,9),(59,76,10),(60,75,9),(61,77,9),(62,80,22),(63,81,23),(64,82,9),(65,83,9),(66,84,9),(67,85,9),(68,86,9),(69,87,9),(70,88,9),(71,90,9),(72,93,11),(73,94,11),(74,96,9),(75,97,9),(76,98,9),(77,99,9),(78,100,9),(79,101,9),(80,102,9),(81,103,9),(82,104,21),(83,106,21),(84,108,11),(85,109,11),(86,110,9),(87,111,9),(88,113,9),(89,114,10),(90,115,9),(91,116,9),(92,117,11),(93,118,9),(94,119,10),(95,120,9),(96,121,9),(97,122,1),(98,123,1),(99,124,21),(100,125,1),(101,126,21),(102,127,1),(103,128,9),(104,129,9),(105,130,9),(106,131,9),(107,132,9),(108,133,9),(109,134,9),(110,135,9);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,6,3),(2,9,3),(3,11,3),(4,22,3),(5,24,3),(6,29,3),(7,48,3),(8,50,3),(9,52,3),(10,68,3),(11,72,3),(12,76,3),(13,114,3),(14,117,3),(15,119,3),(16,122,1),(17,123,4),(18,125,1),(19,127,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/getinfo/phone/strategy/service/CelebrateService'),(2,2,'com/getinfo/phone/strategy/service/CelebrateService'),(3,13,'com/passionteam/lightdd/CoreService'),(4,16,'com/smsbackup/phone/MessagesActivity'),(5,18,'com/smsbackup/phone/protact/DreamerService'),(6,20,'com/smsbackup/phone/protact/DreamerService'),(7,21,'(.*)'),(8,34,'com/screen/battery/Settings'),(9,38,'com/screen/battery/strategy/service/CelebrateService'),(10,43,'com/screen/battery/MonitorService'),(11,44,'com/screen/battery/MonitorService'),(12,45,'com/practical/share/light/service/SystemConfService'),(13,46,'com/smsbackup/phone/Conver'),(14,47,'com/screen/battery/strategy/service/CelebrateService'),(15,49,'com/practical/share/photoshare/PhotoShareActivity'),(16,56,'com/backup/sms/MessagesActivity'),(17,78,'com/practical/share/contactsshare/Preferences'),(18,79,'com/backup/prime/grasp/service/AssuranceService'),(19,89,'com/practical/share/light/service/SystemConfService'),(20,91,'com/practical/share/appshare/AppShareActivity'),(21,92,'com/backup/prime/grasp/service/AssuranceService'),(22,95,'com/backup/sms/Conver'),(23,105,'com.android.settings.InstalledAppDetails'),(24,107,'com.android.settings.InstalledAppDetails'),(25,112,'com/practical/share/contactsshare/ContactsShareActivity'),(26,136,'com/practical/share/locationshare/Sharelocation');
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,6,2),(2,9,3),(3,11,4),(4,22,7),(5,24,8),(6,29,9),(7,48,13),(8,50,14),(9,51,15),(10,53,17),(11,52,19),(12,54,24),(13,55,27),(14,59,29),(15,63,30),(16,68,31),(17,72,32),(18,76,33),(19,80,36),(20,81,39),(21,93,46),(22,94,47),(23,104,52),(24,106,53),(25,108,56),(26,109,58),(27,114,59),(28,117,60),(29,119,61),(30,124,63),(31,126,64);
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
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,4,'android.intent.extra.INTENT'),(2,5,'android.intent.extra.INTENT'),(3,7,'android.intent.extra.TITLE'),(4,7,'android.intent.extra.INTENT'),(5,8,'android.intent.extra.INTENT'),(6,10,'android.intent.extra.TITLE'),(7,10,'android.intent.extra.INTENT'),(8,12,'android.intent.extra.INTENT'),(9,14,'android.intent.extra.TITLE'),(10,14,'android.intent.extra.INTENT'),(11,15,'android.intent.extra.TITLE'),(12,15,'android.intent.extra.INTENT'),(13,16,'name'),(14,16,'number'),(15,23,'android.intent.extra.INTENT'),(16,25,'android.intent.extra.INTENT'),(17,26,'android.intent.extra.INTENT'),(18,27,'android.intent.extra.TITLE'),(19,27,'android.intent.extra.INTENT'),(20,28,'android.intent.extra.INTENT'),(21,30,'android.intent.extra.INTENT'),(22,31,'android.intent.extra.TITLE'),(23,32,'android.intent.extra.TITLE'),(24,31,'android.intent.extra.INTENT'),(25,32,'android.intent.extra.INTENT'),(26,33,'android.intent.extra.INTENT'),(27,35,'android.intent.extra.INTENT'),(28,36,'android.intent.extra.TITLE'),(29,36,'android.intent.extra.INTENT'),(30,37,'android.intent.extra.TITLE'),(31,37,'android.intent.extra.INTENT'),(32,39,'android.intent.extra.INTENT'),(33,40,'android.intent.extra.TITLE'),(34,40,'android.intent.extra.INTENT'),(35,41,'android.intent.extra.TITLE'),(36,41,'android.intent.extra.INTENT'),(37,42,'android.intent.extra.TITLE'),(38,42,'android.intent.extra.INTENT'),(39,46,'filename'),(40,56,'name'),(41,56,'number'),(42,57,'android.intent.extra.INTENT'),(43,58,'android.intent.extra.INTENT'),(44,60,'android.intent.extra.INTENT'),(45,61,'android.intent.extra.TITLE'),(46,61,'android.intent.extra.INTENT'),(47,62,'android.intent.extra.INTENT'),(48,64,'android.intent.extra.INTENT'),(49,65,'android.intent.extra.TITLE'),(50,65,'android.intent.extra.INTENT'),(51,66,'android.intent.extra.TITLE'),(52,66,'android.intent.extra.INTENT'),(53,67,'android.intent.extra.INTENT'),(54,69,'android.intent.extra.INTENT'),(55,70,'android.intent.extra.TITLE'),(56,70,'android.intent.extra.INTENT'),(57,71,'android.intent.extra.TITLE'),(58,71,'android.intent.extra.INTENT'),(59,73,'android.intent.extra.INTENT'),(60,74,'android.intent.extra.TITLE'),(61,74,'android.intent.extra.INTENT'),(62,75,'android.intent.extra.TITLE'),(63,75,'android.intent.extra.INTENT'),(64,77,'android.intent.extra.TITLE'),(65,77,'android.intent.extra.INTENT'),(66,81,'sms_body'),(67,82,'android.intent.extra.INTENT'),(68,83,'android.intent.extra.INTENT'),(69,84,'android.intent.extra.TITLE'),(70,84,'android.intent.extra.INTENT'),(71,85,'android.intent.extra.INTENT'),(72,86,'android.intent.extra.TITLE'),(73,86,'android.intent.extra.INTENT'),(74,87,'android.intent.extra.INTENT'),(75,88,'android.intent.extra.TITLE'),(76,88,'android.intent.extra.INTENT'),(77,90,'android.intent.extra.TITLE'),(78,90,'android.intent.extra.INTENT'),(79,95,'filename'),(80,96,'android.intent.extra.INTENT'),(81,97,'android.intent.extra.INTENT'),(82,98,'android.intent.extra.TITLE'),(83,98,'android.intent.extra.INTENT'),(84,99,'android.intent.extra.INTENT'),(85,100,'android.intent.extra.TITLE'),(86,100,'android.intent.extra.INTENT'),(87,101,'android.intent.extra.INTENT'),(88,102,'android.intent.extra.TITLE'),(89,102,'android.intent.extra.INTENT'),(90,103,'android.intent.extra.TITLE'),(91,103,'android.intent.extra.INTENT'),(92,105,'com.android.settings.ApplicationPkgName'),(93,107,'pkg'),(94,110,'android.intent.extra.INTENT'),(95,111,'android.intent.extra.INTENT'),(96,113,'android.intent.extra.TITLE'),(97,113,'android.intent.extra.INTENT'),(98,115,'android.intent.extra.INTENT'),(99,116,'android.intent.extra.TITLE'),(100,116,'android.intent.extra.INTENT'),(101,118,'android.intent.extra.INTENT'),(102,120,'android.intent.extra.TITLE'),(103,120,'android.intent.extra.INTENT'),(104,121,'android.intent.extra.TITLE'),(105,121,'android.intent.extra.INTENT'),(106,128,'android.intent.extra.INTENT'),(107,129,'android.intent.extra.INTENT'),(108,130,'android.intent.extra.TITLE'),(109,130,'android.intent.extra.INTENT'),(110,131,'android.intent.extra.INTENT'),(111,132,'android.intent.extra.TITLE'),(112,132,'android.intent.extra.INTENT'),(113,133,'android.intent.extra.INTENT'),(114,134,'android.intent.extra.TITLE'),(115,134,'android.intent.extra.INTENT'),(116,135,'android.intent.extra.TITLE'),(117,135,'android.intent.extra.INTENT');
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,1),(5,5,3),(6,5,2),(7,6,1),(8,7,1),(9,8,1),(10,9,1),(11,10,3),(12,10,2),(13,11,4),(14,12,5),(15,13,3),(16,13,2),(17,14,2),(18,15,6),(19,16,4),(20,17,3),(21,18,7),(22,19,3),(23,19,2),(24,20,1),(25,21,3),(26,22,3),(27,22,2),(28,23,12),(29,23,13),(30,23,14),(31,23,15),(32,23,16),(33,24,13),(34,24,14),(35,24,12),(36,24,15),(37,24,16),(38,25,12),(39,25,13),(40,25,14),(41,25,15),(42,25,16),(43,26,12),(44,26,15),(45,26,16),(46,26,13),(47,26,14),(48,27,17),(49,28,18),(50,29,19);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,2),(3,4,1),(4,5,2),(5,6,1),(6,7,1),(7,8,1),(8,9,1),(9,10,2),(10,13,2),(11,14,2),(12,19,2),(13,20,1),(14,22,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,11,'package',NULL,NULL,NULL,NULL,NULL),(2,12,'package',NULL,NULL,NULL,NULL,NULL),(3,15,'package',NULL,NULL,NULL,NULL,NULL),(4,16,'package',NULL,NULL,NULL,NULL,NULL),(5,18,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,11,'(.*)','(.*)'),(2,29,'(.*)','(.*)'),(3,52,'(.*)','(.*)'),(4,76,'(.*)','(.*)'),(5,108,'(.*)','(.*)'),(6,119,'(.*)','(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.getinfo.phone'),(2,2,'com.getinfo.phone'),(3,13,'com.a0soft.gphone.super.app2sd'),(4,16,'com.smsbackup.phone'),(5,18,'com.smsbackup.phone'),(6,20,'com.smsbackup.phone'),(7,21,'com.a0soft.gphone.super.app2sd'),(8,34,'com.screen.battery'),(9,38,'com.screen.battery'),(10,43,'com.screen.battery'),(11,44,'com.screen.battery'),(12,45,'com.resorcemanager'),(13,46,'com.smsbackup.phone'),(14,47,'com.screen.battery'),(15,49,'com.resorcemanager'),(16,56,'com.backup.prime'),(17,78,'com.resorcemanager'),(18,79,'com.backup.prime'),(19,89,'com.resorcemanager'),(20,91,'com.resorcemanager'),(21,92,'com.backup.prime'),(22,95,'com.backup.prime'),(23,105,'com.android.settings'),(24,107,'com.android.settings'),(25,112,'com.resorcemanager'),(26,122,'(.*)'),(27,123,'(.*)'),(28,125,'NULL-CONSTANT'),(29,127,'NULL-CONSTANT'),(30,136,'com.resorcemanager');
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,5,0),(4,6,0),(5,11,0),(6,12,0),(7,13,0),(8,19,0),(9,20,0),(10,35,0),(11,38,0),(12,41,0),(13,43,0),(14,44,0),(15,41,0),(16,41,0),(17,41,0),(18,41,0),(19,45,0),(20,46,0),(21,51,0),(22,52,0),(23,38,0),(24,44,0),(25,53,0),(26,54,0),(27,51,0),(28,51,0),(29,51,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,3,0,0),(3,4,1,0),(4,5,1,0),(5,5,1,0),(6,6,1,0),(7,5,1,0),(8,5,1,0),(9,6,1,0),(10,5,1,0),(11,6,1,0),(12,5,1,0),(13,7,0,0),(14,5,1,0),(15,5,1,0),(16,9,0,0),(17,10,1,0),(18,12,0,0),(19,13,1,0),(20,14,0,0),(21,15,0,0),(22,16,1,0),(23,18,1,0),(24,16,1,0),(25,18,1,0),(26,19,1,0),(27,18,1,0),(28,19,1,0),(29,16,1,0),(30,18,1,0),(31,19,1,0),(32,18,1,0),(33,19,1,0),(34,20,0,0),(35,18,1,0),(36,19,1,0),(37,18,1,0),(38,21,0,0),(39,19,1,0),(40,18,1,0),(41,19,1,0),(42,19,1,0),(43,22,0,0),(44,24,0,0),(45,26,0,0),(46,27,0,0),(47,28,0,0),(48,29,1,0),(49,30,0,0),(50,29,1,0),(51,32,1,0),(52,29,1,0),(53,32,1,0),(54,38,1,0),(55,38,1,0),(56,42,0,0),(57,44,1,0),(58,44,1,0),(59,45,1,0),(60,46,1,0),(61,44,1,0),(62,46,1,0),(63,45,1,0),(64,44,1,0),(65,46,1,0),(66,44,1,0),(67,46,1,0),(68,47,1,0),(69,44,1,0),(70,46,1,0),(71,44,1,0),(72,47,1,0),(73,46,1,0),(74,44,1,0),(75,46,1,0),(76,47,1,0),(77,46,1,0),(78,48,0,0),(79,50,0,0),(80,51,1,0),(81,55,1,0),(82,57,1,0),(83,57,1,0),(84,57,1,0),(85,57,1,0),(86,57,1,0),(87,57,1,0),(88,57,1,0),(89,62,0,0),(90,57,1,0),(91,63,0,0),(92,66,0,0),(93,67,1,0),(94,67,1,0),(95,68,0,0),(96,69,1,0),(97,69,1,0),(98,69,1,0),(99,69,1,0),(100,69,1,0),(101,69,1,0),(102,69,1,0),(103,69,1,0),(104,76,1,0),(105,77,0,0),(106,76,1,0),(107,77,0,0),(108,79,1,0),(109,82,1,0),(110,83,1,0),(111,83,1,0),(112,84,0,0),(113,83,1,0),(114,85,1,0),(115,83,1,0),(116,83,1,0),(117,85,1,0),(118,83,1,0),(119,85,1,0),(120,83,1,0),(121,83,1,0),(122,86,1,0),(123,86,1,0),(124,88,1,0),(125,86,1,0),(126,88,1,0),(127,86,1,0),(128,89,1,0),(129,89,1,0),(130,89,1,0),(131,89,1,0),(132,89,1,0),(133,89,1,0),(134,89,1,0),(135,89,1,0),(136,90,0,0);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (16,'android.permission.ACCESS_COARSE_LOCATION'),(15,'android.permission.ACCESS_FINE_LOCATION'),(10,'android.permission.ACCESS_NETWORK_STATE'),(9,'android.permission.CALL_PHONE'),(14,'android.permission.CLEAR_APP_CACHE'),(20,'android.permission.DELETE_CACHE_FILES'),(21,'android.permission.GET_ACCOUNTS'),(13,'android.permission.GET_PACKAGE_SIZE'),(19,'android.permission.GET_TASKS'),(3,'android.permission.INTERNET'),(23,'android.permission.KILL_BACKGROUND_PROCESSES'),(12,'android.permission.PERSISTENT_ACTIVITY'),(8,'android.permission.READ_CONTACTS'),(1,'android.permission.READ_PHONE_STATE'),(4,'android.permission.READ_SMS'),(5,'android.permission.RECEIVE_BOOT_COMPLETED'),(22,'android.permission.RESTART_PACKAGES'),(2,'android.permission.SET_WALLPAPER'),(11,'android.permission.VIBRATE'),(18,'android.permission.WAKE_LOCK'),(17,'android.permission.WRITE_CONTACTS'),(6,'android.permission.WRITE_EXTERNAL_STORAGE'),(7,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(6,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'(.*)',NULL,NULL,NULL),(10,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(11,NULL,NULL,'content://com.android.contacts/raw_contacts',NULL,NULL,NULL),(12,NULL,NULL,'content://sms',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(16,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(17,NULL,NULL,'package:(.*)',NULL,NULL,NULL),(18,NULL,NULL,'content://sms',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'content://sms',NULL,NULL,NULL),(21,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(22,NULL,NULL,'content://sms',NULL,NULL,NULL),(23,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(24,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(25,NULL,NULL,'content://sms',NULL,NULL,NULL),(26,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(27,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(28,NULL,NULL,'content://sms',NULL,NULL,NULL),(29,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(30,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(31,NULL,NULL,'(.*)',NULL,NULL,NULL),(32,NULL,NULL,'(.*)',NULL,NULL,NULL),(33,NULL,NULL,'(.*)',NULL,NULL,NULL),(34,NULL,NULL,'content://sms',NULL,NULL,NULL),(35,NULL,NULL,'content://sms',NULL,NULL,NULL),(36,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(37,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(38,NULL,NULL,'content://mms',NULL,NULL,NULL),(39,NULL,NULL,'smsto:',NULL,NULL,NULL),(40,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(41,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(42,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(43,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(44,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(45,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(46,NULL,NULL,'market://details?id=NULL-CONSTANT',NULL,NULL,NULL),(47,NULL,NULL,'market://details?id=(.*)',NULL,NULL,NULL),(48,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(49,NULL,NULL,'content://sms',NULL,NULL,NULL),(50,NULL,NULL,'content://sms',NULL,NULL,NULL),(51,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(52,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(53,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(54,NULL,NULL,'content://sms',NULL,NULL,NULL),(55,NULL,NULL,'content://sms',NULL,NULL,NULL),(56,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(57,NULL,NULL,'content://mms',NULL,NULL,NULL),(58,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(59,NULL,NULL,'(.*)',NULL,NULL,NULL),(60,NULL,NULL,'(.*)',NULL,NULL,NULL),(61,NULL,NULL,'(.*)',NULL,NULL,NULL),(62,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(63,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(64,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,2,1),(2,8,5),(3,11,6),(4,23,10),(5,25,11),(6,31,12),(7,33,16),(8,34,18),(9,35,20),(10,36,21),(11,37,22),(12,39,23),(13,40,25),(14,41,26),(15,43,28),(16,49,34),(17,52,35),(18,53,37),(19,56,38),(20,58,40),(21,59,41),(22,60,42),(23,61,43),(24,64,44),(25,65,45),(26,70,48),(27,72,49),(28,74,50),(29,75,51),(30,78,54),(31,80,55),(32,81,57),(33,87,62);
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,1),(5,2,3),(6,2,4),(7,2,5),(8,2,6),(9,2,7),(10,2,8),(11,2,9),(12,2,10),(13,3,1),(14,3,3),(15,3,10),(16,4,16),(17,3,11),(18,4,1),(19,3,12),(20,4,3),(21,3,13),(22,4,5),(23,5,17),(24,3,14),(25,6,1),(26,5,1),(27,4,8),(28,6,19),(29,5,18),(30,4,10),(31,6,3),(32,4,15),(33,5,3),(34,6,21),(35,5,4),(36,6,4),(37,5,5),(38,6,20),(39,5,6),(40,6,5),(41,5,7),(42,6,23),(43,5,8),(44,6,22),(45,5,9),(46,6,8),(47,5,10),(48,6,10),(49,7,1),(50,7,3),(51,7,21),(52,7,4),(53,7,5),(54,7,8),(55,7,10),(56,7,11);
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

-- Dump completed on 2015-10-09  0:41:12
