-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_71
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (13,'(.*)'),(6,'SMS_DELIVERED'),(7,'SMS_SENT'),(1,'android.intent.action.BOOT_COMPLETED'),(10,'android.intent.action.CHOOSER'),(3,'android.intent.action.MAIN'),(12,'android.intent.action.SCREEN_OFF'),(2,'android.intent.action.USER_PRESENT'),(9,'android.intent.action.VIEW'),(8,'android.provider.Telephony.SMS_RECEIVED'),(5,'com.google.android.c2dm.intent.RECEIVE'),(11,'com.google.android.c2dm.intent.REGISTER'),(4,'com.google.android.c2dm.intent.REGISTRATION');
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
INSERT INTO `Applications` VALUES (1,'com.google.usagestats.updater',1),(2,'com.dreamstep.wCellPhoneSpyNews',1308451578),(3,'com.dreamstep.wCellPhoneSpy',1308975862),(4,'csllc.CellShark',54),(5,'csllc.CellShark',51),(6,'csllc.CellShark',52),(7,'csllc.CellShark',41);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (5,'android.intent.category.BROWSABLE'),(1,'android.intent.category.DEFAULT'),(2,'android.intent.category.LAUNCHER'),(4,'com.dreamstep.wCellPhoneSpy'),(3,'com.dreamstep.wCellPhoneSpyNews');
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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.google.usagestats.updater.StatisticsUploader'),(2,2,'com.dreamstep.wCellPhoneSpyNews.MainNavigationActivity'),(3,2,'com.dreamstep.wCellPhoneSpyNews.MessageViewer'),(4,2,'com.dreamstep.wCellPhoneSpyNews.Server.C2DMClientReceiver'),(5,2,'com.google.android.c2dm.C2DMBroadcastReceiver'),(6,3,'com.dreamstep.wCellPhoneSpy.MainNavigationActivity'),(7,3,'com.dreamstep.wCellPhoneSpy.MessageViewer'),(8,3,'com.dreamstep.wCellPhoneSpy.Server.C2DMClientReceiver'),(9,3,'com.google.android.c2dm.C2DMBroadcastReceiver'),(10,1,'JAMES.JAMES.PAUL'),(11,1,'JAMES.JAMES.DANIEL'),(12,4,'csllc.CellShark.activities.CellSharkActivity'),(13,4,'csllc.CellShark.activities.CreateAccountActivity'),(14,5,'csllc.CellShark.activities.CellSharkActivity'),(15,4,'csllc.CellShark.activities.AuthenticationActivity'),(16,4,'csllc.CellShark.activities.InfoActivity'),(17,5,'csllc.CellShark.activities.CreateAccountActivity'),(18,4,'csllc.CellShark.activities.HomeActivity'),(19,5,'csllc.CellShark.activities.AuthenticationActivity'),(20,4,'csllc.CellShark.activities.AgreementActivity'),(21,5,'csllc.CellShark.activities.InfoActivity'),(22,4,'com.google.ads.AdActivity'),(23,5,'csllc.CellShark.activities.HomeActivity'),(24,4,'csllc.CellShark.services.PhoneManagerService'),(25,6,'csllc.CellShark.activities.CellSharkActivity'),(26,5,'csllc.CellShark.activities.AgreementActivity'),(27,4,'csllc.CellShark.receivers.SmsReceiver'),(28,5,'com.google.ads.AdActivity'),(29,6,'csllc.CellShark.activities.CreateAccountActivity'),(30,5,'csllc.CellShark.services.PhoneManagerService'),(31,4,'csllc.CellShark.receivers.BootCompletedReceiver'),(32,6,'csllc.CellShark.activities.AuthenticationActivity'),(33,5,'csllc.CellShark.receivers.SmsReceiver'),(34,6,'csllc.CellShark.activities.InfoActivity'),(35,5,'csllc.CellShark.receivers.BootCompletedReceiver'),(36,6,'csllc.CellShark.activities.HomeActivity'),(37,6,'csllc.CellShark.activities.AgreementActivity'),(38,6,'com.google.ads.AdActivity'),(39,6,'csllc.CellShark.services.PhoneManagerService'),(40,6,'csllc.CellShark.receivers.SmsReceiver'),(41,6,'csllc.CellShark.receivers.BootCompletedReceiver'),(42,7,'csllc.CellShark.activities.CellSharkActivity'),(43,7,'csllc.CellShark.activities.CreateAccountActivity'),(44,7,'csllc.CellShark.activities.AuthenticationActivity'),(45,7,'csllc.CellShark.activities.InfoActivity'),(46,7,'csllc.CellShark.activities.HomeActivity'),(47,7,'csllc.CellShark.activities.AgreementActivity'),(48,7,'com.google.ads.AdActivity'),(49,7,'csllc.CellShark.services.PhoneManagerService'),(50,7,'csllc.CellShark.receivers.SmsReceiver'),(51,3,'com.dreamstep.wCellPhoneSpy.Utils.BrowserDownloadListener'),(52,2,'com.dreamstep.wCellPhoneSpyNews.Utils.BrowserDownloadListener'),(53,7,'csllc.CellShark.receivers.BootCompletedReceiver'),(54,3,'com.google.android.c2dm.C2DMessaging'),(55,2,'com.google.android.c2dm.C2DMessaging'),(56,4,'com.google.ads.util.AdUtil$UserActivityReceiver'),(57,4,'csllc.CellShark.commwrapper.Synchronize'),(58,4,'csllc.CellShark.activities.HomeActivity$4'),(59,4,'csllc.CellShark.activities.CellSharkActivity$2'),(60,4,'csllc.CellShark.observers.SmsObserver'),(61,4,'csllc.CellShark.activities.HomeActivity$3'),(62,4,'csllc.CellShark.observers.ContactsObserver'),(63,7,'csllc.CellShark.observers.ContactsObserver'),(64,4,'csllc.CellShark.activities.AgreementActivity$1'),(65,7,'csllc.CellShark.activities.HomeActivity$3'),(66,6,'csllc.CellShark.activities.HomeActivity$4'),(67,5,'csllc.CellShark.commwrapper.Synchronize'),(68,4,'csllc.CellShark.activities.CellSharkActivity$1'),(69,6,'csllc.CellShark.commwrapper.Synchronize'),(70,7,'csllc.CellShark.activities.AgreementActivity$1'),(71,4,'csllc.CellShark.activities.HomeActivity$2'),(72,7,'csllc.CellShark.activities.CellSharkActivity$2'),(73,5,'csllc.CellShark.observers.ContactsObserver'),(74,6,'csllc.CellShark.observers.ContactsObserver'),(75,4,'csllc.CellShark.observers.CallLogObserver'),(76,6,'com.google.ads.util.AdUtil$UserActivityReceiver'),(77,5,'csllc.CellShark.activities.CellSharkActivity$1'),(78,6,'csllc.CellShark.activities.HomeActivity$3'),(79,7,'csllc.CellShark.commwrapper.Synchronize'),(80,5,'csllc.CellShark.activities.CellSharkActivity$2'),(81,7,'csllc.CellShark.observers.CallLogObserver'),(82,5,'csllc.CellShark.activities.HomeActivity$3'),(83,7,'csllc.CellShark.activities.HomeActivity$4'),(84,6,'csllc.CellShark.observers.CallLogObserver'),(85,7,'csllc.CellShark.observers.SmsObserver'),(86,5,'csllc.CellShark.observers.SmsObserver'),(87,5,'csllc.CellShark.activities.HomeActivity$4'),(88,6,'csllc.CellShark.activities.CellSharkActivity$1'),(89,5,'csllc.CellShark.activities.HomeActivity$2'),(90,7,'csllc.CellShark.activities.HomeActivity$2'),(91,6,'csllc.CellShark.observers.SmsObserver'),(92,6,'csllc.CellShark.activities.HomeActivity$2'),(93,7,'csllc.CellShark.activities.CellSharkActivity$1'),(94,5,'csllc.CellShark.observers.CallLogObserver'),(95,6,'csllc.CellShark.activities.AgreementActivity$1'),(96,7,'u$b'),(97,5,'csllc.CellShark.activities.AgreementActivity$1'),(98,5,'com.google.ads.util.AdUtil$UserActivityReceiver'),(99,6,'csllc.CellShark.activities.CellSharkActivity$2');
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,5,'title'),(2,5,'unregistered'),(3,5,'url'),(4,9,'url'),(5,5,'error'),(6,9,'error'),(7,5,'registration_id'),(8,5,'message'),(9,3,'url'),(10,9,'message'),(11,9,'unregistered'),(12,7,'title'),(13,3,'title'),(14,9,'title'),(15,9,'registration_id'),(16,7,'url'),(17,13,'CSDBCreatPw'),(18,22,'com.google.ads.AdOpener'),(19,13,'CSDBCreatEm'),(20,22,'params'),(21,13,'CSDBCreatUn'),(22,22,'action'),(23,13,'CSDBCreatFN'),(24,13,'CSDBCreatLN'),(25,17,'CSDBCreatEm'),(26,43,'CSDBCreatPw'),(27,48,'com.google.ads.AdOpener'),(28,38,'com.google.ads.AdOpener'),(29,17,'CSDBCreatUn'),(30,28,'params'),(31,29,'CSDBCreatLN'),(32,28,'com.google.ads.AdOpener'),(33,17,'CSDBCreatFN'),(34,17,'CSDBCreatLN'),(35,17,'CSDBCreatPw'),(36,50,'pdus'),(37,38,'action'),(38,29,'CSDBCreatUn'),(39,29,'CSDBCreatFN'),(40,29,'CSDBCreatPw'),(41,43,'CSDBCreatUn'),(42,43,'CSDBCreatEm'),(43,48,'params'),(44,43,'CSDBCreatLN'),(45,43,'CSDBCreatFN'),(46,40,'pdus'),(47,33,'pdus'),(48,28,'action'),(49,48,'action'),(50,38,'params'),(51,29,'CSDBCreatEm');
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'r',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'s',0,NULL,NULL),(5,5,'r',1,11,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'s',0,NULL,NULL),(9,9,'r',1,11,NULL),(10,10,'r',1,NULL,NULL),(11,11,'r',1,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'s',0,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'r',1,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'s',0,NULL,NULL),(31,31,'r',1,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'r',1,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'r',1,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'s',0,NULL,NULL),(40,40,'r',1,NULL,NULL),(41,41,'r',1,NULL,NULL),(42,42,'a',1,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'s',0,NULL,NULL),(50,50,'r',1,NULL,NULL),(51,53,'r',1,NULL,NULL),(52,56,'r',1,NULL,NULL),(53,76,'r',1,NULL,NULL),(54,96,'r',1,NULL,NULL),(55,98,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,6),(2,2,2),(3,3,6),(4,4,2),(5,5,9),(6,5,6),(7,6,6),(8,7,2),(9,8,2),(10,8,5),(11,9,12),(12,10,12),(13,11,12),(14,12,18),(15,13,12),(16,14,24),(17,15,12),(18,16,12),(19,17,12),(20,18,18),(21,19,12),(22,20,24),(23,21,42),(24,22,31),(25,23,28),(26,24,49),(27,25,20),(28,26,49),(29,27,22),(30,28,46),(31,29,36),(32,30,42),(33,31,14),(34,32,12),(35,33,25),(36,34,47),(37,35,19),(38,36,25),(39,37,18),(40,38,42),(41,39,30),(42,40,25),(43,41,48),(44,42,12),(45,43,35),(46,44,39),(47,45,24),(48,46,14),(49,47,15),(50,48,36),(51,49,30),(52,50,39),(53,51,30),(54,52,42),(55,53,25),(56,54,14),(57,55,49),(58,56,41),(59,57,23),(60,58,46),(61,59,25),(62,60,14),(63,61,42),(64,62,30),(65,63,39),(66,64,49),(67,65,14),(68,66,39),(69,67,42),(70,68,38),(71,69,30),(72,70,42),(73,71,23),(74,72,49),(75,73,14),(76,74,42),(77,75,25),(78,76,23),(79,77,51),(80,78,25),(81,79,14),(82,80,46),(83,81,39),(84,82,14),(85,83,36),(86,84,42),(87,85,14),(88,86,42),(89,87,30),(90,88,37),(91,89,49),(92,90,14),(93,91,32),(94,92,26),(95,93,39),(96,94,25),(97,95,25),(98,96,25);
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,51,'<com.dreamstep.wCellPhoneSpy.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',21,'a',NULL),(2,52,'<com.dreamstep.wCellPhoneSpyNews.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',15,'a',NULL),(3,51,'<com.dreamstep.wCellPhoneSpy.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',15,'a',NULL),(4,2,'<com.dreamstep.wCellPhoneSpyNews.MainNavigationActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',36,'a',NULL),(5,54,'<com.google.android.c2dm.C2DMessaging: void register(android.content.Context,java.lang.String)>',9,'s',NULL),(6,6,'<com.dreamstep.wCellPhoneSpy.MainNavigationActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',36,'a',NULL),(7,52,'<com.dreamstep.wCellPhoneSpyNews.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',21,'a',NULL),(8,55,'<com.google.android.c2dm.C2DMessaging: void register(android.content.Context,java.lang.String)>',9,'s',NULL),(9,57,'<csllc.CellShark.commwrapper.Synchronize: android.database.Cursor queryRawData(int,java.lang.String,java.lang.String[])>',18,'p',NULL),(10,12,'<csllc.CellShark.activities.CellSharkActivity: void logIn()>',3,'a',NULL),(11,57,'<csllc.CellShark.commwrapper.Synchronize: void synchronizePhones()>',10,'p',NULL),(12,58,'<csllc.CellShark.activities.HomeActivity$4: void onClick(android.view.View)>',6,'a',NULL),(13,59,'<csllc.CellShark.activities.CellSharkActivity$2: void onClick(android.view.View)>',6,'a',NULL),(14,60,'<csllc.CellShark.observers.SmsObserver: void register(android.content.Context)>',15,'p',NULL),(15,12,'<csllc.CellShark.activities.CellSharkActivity: void startCellSharkService(boolean)>',7,'s',NULL),(16,12,'<csllc.CellShark.activities.CellSharkActivity: void logInDone()>',5,'a',NULL),(17,57,'<csllc.CellShark.commwrapper.Synchronize: void synchronizeContacts()>',8,'p',NULL),(18,61,'<csllc.CellShark.activities.HomeActivity$3: void onClick(android.view.View)>',8,'a',NULL),(19,57,'<csllc.CellShark.commwrapper.Synchronize: void synchronizeEmails()>',10,'p',NULL),(20,62,'<csllc.CellShark.observers.ContactsObserver: void register(android.content.Context)>',15,'p',NULL),(21,42,'<csllc.CellShark.activities.CellSharkActivity: void startCellSharkService(boolean)>',7,'s',NULL),(22,31,'<csllc.CellShark.receivers.BootCompletedReceiver: void onReceive(android.content.Context,android.content.Intent)>',7,'s',NULL),(23,28,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',82,'a',NULL),(24,63,'<csllc.CellShark.observers.ContactsObserver: void initializeHashValues()>',19,'p',NULL),(25,64,'<csllc.CellShark.activities.AgreementActivity$1: void onClick(android.view.View)>',6,'a',NULL),(26,63,'<csllc.CellShark.observers.ContactsObserver: void register(android.content.Context)>',15,'p',NULL),(27,22,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',82,'a',NULL),(28,65,'<csllc.CellShark.activities.HomeActivity$3: void onClick(android.view.View)>',8,'a',NULL),(29,66,'<csllc.CellShark.activities.HomeActivity$4: void onClick(android.view.View)>',6,'a',NULL),(30,42,'<csllc.CellShark.activities.CellSharkActivity: void logInDone()>',5,'a',NULL),(31,67,'<csllc.CellShark.commwrapper.Synchronize: void synchronizePhones()>',10,'p',NULL),(32,68,'<csllc.CellShark.activities.CellSharkActivity$1: void onClick(android.view.View)>',6,'a',NULL),(33,69,'<csllc.CellShark.commwrapper.Synchronize: void synchronizeContacts()>',8,'p',NULL),(34,70,'<csllc.CellShark.activities.AgreementActivity$1: void onClick(android.view.View)>',6,'a',NULL),(35,19,'<csllc.CellShark.activities.AuthenticationActivity: void initializeControls()>',5,'s',NULL),(36,25,'<csllc.CellShark.activities.CellSharkActivity: void startCellSharkService(boolean)>',7,'s',NULL),(37,71,'<csllc.CellShark.activities.HomeActivity$2: void onClick(android.view.View)>',6,'a',NULL),(38,72,'<csllc.CellShark.activities.CellSharkActivity$2: void onClick(android.view.View)>',6,'a',NULL),(39,73,'<csllc.CellShark.observers.ContactsObserver: void register(android.content.Context)>',15,'p',NULL),(40,69,'<csllc.CellShark.commwrapper.Synchronize: void synchronizePhones()>',10,'p',NULL),(41,48,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(42,12,'<csllc.CellShark.activities.CellSharkActivity: void startCellSharkService(boolean)>',20,'a',NULL),(43,35,'<csllc.CellShark.receivers.BootCompletedReceiver: void onReceive(android.content.Context,android.content.Intent)>',7,'s',NULL),(44,74,'<csllc.CellShark.observers.ContactsObserver: void register(android.content.Context)>',15,'p',NULL),(45,75,'<csllc.CellShark.observers.CallLogObserver: void register(android.content.Context)>',15,'p',NULL),(46,77,'<csllc.CellShark.activities.CellSharkActivity$1: void onClick(android.view.View)>',6,'a',NULL),(47,15,'<csllc.CellShark.activities.AuthenticationActivity: void initializeControls()>',5,'s',NULL),(48,78,'<csllc.CellShark.activities.HomeActivity$3: void onClick(android.view.View)>',8,'a',NULL),(49,73,'<csllc.CellShark.observers.ContactsObserver: android.database.Cursor queryRawData(int,java.lang.String,java.lang.String[])>',18,'p',NULL),(50,74,'<csllc.CellShark.observers.ContactsObserver: android.database.Cursor queryRawData(int,java.lang.String,java.lang.String[])>',18,'p',NULL),(51,73,'<csllc.CellShark.observers.ContactsObserver: void initializeHashValues()>',19,'p',NULL),(52,79,'<csllc.CellShark.commwrapper.Synchronize: void synchronizeEmails()>',10,'p',NULL),(53,69,'<csllc.CellShark.commwrapper.Synchronize: void synchronizeEmails()>',10,'p',NULL),(54,80,'<csllc.CellShark.activities.CellSharkActivity$2: void onClick(android.view.View)>',6,'a',NULL),(55,81,'<csllc.CellShark.observers.CallLogObserver: void register(android.content.Context)>',15,'p',NULL),(56,41,'<csllc.CellShark.receivers.BootCompletedReceiver: void onReceive(android.content.Context,android.content.Intent)>',7,'s',NULL),(57,82,'<csllc.CellShark.activities.HomeActivity$3: void onClick(android.view.View)>',8,'a',NULL),(58,83,'<csllc.CellShark.activities.HomeActivity$4: void onClick(android.view.View)>',6,'a',NULL),(59,25,'<csllc.CellShark.activities.CellSharkActivity: void logInDone()>',5,'a',NULL),(60,14,'<csllc.CellShark.activities.CellSharkActivity: void logIn()>',3,'a',NULL),(61,79,'<csllc.CellShark.commwrapper.Synchronize: void synchronizePhones()>',10,'p',NULL),(62,73,'<csllc.CellShark.observers.ContactsObserver: void setContactStats(csllc.CellShark.bo.Contact)>',15,'p',NULL),(63,84,'<csllc.CellShark.observers.CallLogObserver: void register(android.content.Context)>',15,'p',NULL),(64,85,'<csllc.CellShark.observers.SmsObserver: void register(android.content.Context)>',15,'p',NULL),(65,14,'<csllc.CellShark.activities.CellSharkActivity: void startCellSharkService(boolean)>',20,'a',NULL),(66,74,'<csllc.CellShark.observers.ContactsObserver: void initializeHashValues()>',19,'p',NULL),(67,42,'<csllc.CellShark.activities.CellSharkActivity: void startCellSharkService(boolean)>',20,'a',NULL),(68,38,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',82,'a',NULL),(69,86,'<csllc.CellShark.observers.SmsObserver: void register(android.content.Context)>',15,'p',NULL),(70,79,'<csllc.CellShark.commwrapper.Synchronize: android.database.Cursor queryRawData(int,java.lang.String,java.lang.String[])>',18,'p',NULL),(71,87,'<csllc.CellShark.activities.HomeActivity$4: void onClick(android.view.View)>',6,'a',NULL),(72,63,'<csllc.CellShark.observers.ContactsObserver: android.database.Cursor queryRawData(int,java.lang.String,java.lang.String[])>',18,'p',NULL),(73,67,'<csllc.CellShark.commwrapper.Synchronize: void synchronizeEmails()>',10,'p',NULL),(74,42,'<csllc.CellShark.activities.CellSharkActivity: void logIn()>',3,'a',NULL),(75,88,'<csllc.CellShark.activities.CellSharkActivity$1: void onClick(android.view.View)>',6,'a',NULL),(76,89,'<csllc.CellShark.activities.HomeActivity$2: void onClick(android.view.View)>',6,'a',NULL),(77,53,'<csllc.CellShark.receivers.BootCompletedReceiver: void onReceive(android.content.Context,android.content.Intent)>',7,'s',NULL),(78,25,'<csllc.CellShark.activities.CellSharkActivity: void logIn()>',3,'a',NULL),(79,14,'<csllc.CellShark.activities.CellSharkActivity: void startCellSharkService(boolean)>',7,'s',NULL),(80,90,'<csllc.CellShark.activities.HomeActivity$2: void onClick(android.view.View)>',6,'a',NULL),(81,91,'<csllc.CellShark.observers.SmsObserver: void register(android.content.Context)>',15,'p',NULL),(82,14,'<csllc.CellShark.activities.CellSharkActivity: void logInDone()>',5,'a',NULL),(83,92,'<csllc.CellShark.activities.HomeActivity$2: void onClick(android.view.View)>',6,'a',NULL),(84,93,'<csllc.CellShark.activities.CellSharkActivity$1: void onClick(android.view.View)>',6,'a',NULL),(85,67,'<csllc.CellShark.commwrapper.Synchronize: android.database.Cursor queryRawData(int,java.lang.String,java.lang.String[])>',18,'p',NULL),(86,79,'<csllc.CellShark.commwrapper.Synchronize: void synchronizeContacts()>',8,'p',NULL),(87,94,'<csllc.CellShark.observers.CallLogObserver: void register(android.content.Context)>',15,'p',NULL),(88,95,'<csllc.CellShark.activities.AgreementActivity$1: void onClick(android.view.View)>',6,'a',NULL),(89,63,'<csllc.CellShark.observers.ContactsObserver: void setContactStats(csllc.CellShark.bo.Contact)>',15,'p',NULL),(90,67,'<csllc.CellShark.commwrapper.Synchronize: void synchronizeContacts()>',8,'p',NULL),(91,32,'<csllc.CellShark.activities.AuthenticationActivity: void initializeControls()>',5,'s',NULL),(92,97,'<csllc.CellShark.activities.AgreementActivity$1: void onClick(android.view.View)>',6,'a',NULL),(93,74,'<csllc.CellShark.observers.ContactsObserver: void setContactStats(csllc.CellShark.bo.Contact)>',15,'p',NULL),(94,99,'<csllc.CellShark.activities.CellSharkActivity$2: void onClick(android.view.View)>',6,'a',NULL),(95,69,'<csllc.CellShark.commwrapper.Synchronize: android.database.Cursor queryRawData(int,java.lang.String,java.lang.String[])>',18,'p',NULL),(96,25,'<csllc.CellShark.activities.CellSharkActivity: void startCellSharkService(boolean)>',20,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,9),(2,1,9),(3,3,9),(4,4,10),(5,5,10),(6,6,11),(7,7,10),(8,8,10),(9,9,10),(10,10,10),(11,11,10),(12,12,10),(13,13,10),(14,14,10),(15,15,10),(16,16,10),(17,17,10),(18,18,10),(19,19,9),(20,20,10),(21,21,10),(22,22,11),(23,31,9),(24,33,13),(25,34,9),(26,35,13),(27,36,13),(28,38,13),(29,45,9),(30,48,13),(31,50,9),(32,53,13),(33,63,9),(34,64,13),(35,66,13),(36,69,9),(37,73,9),(38,75,9);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,48,5),(2,50,5),(3,53,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,23,'csllc/CellShark/activities/AuthenticationActivity'),(2,24,'csllc/CellShark/activities/AgreementActivity'),(3,25,'csllc/CellShark/activities/AuthenticationActivity'),(4,26,'csllc/CellShark/services/PhoneManagerService'),(5,27,'csllc/CellShark/activities/InfoActivity'),(6,28,'csllc/CellShark/activities/CellSharkActivity'),(7,29,'csllc/CellShark/services/PhoneManagerService'),(8,30,'csllc/CellShark/services/PhoneManagerService'),(9,32,'csllc/CellShark/activities/HomeActivity'),(10,37,'csllc/CellShark/activities/CellSharkActivity'),(11,39,'csllc/CellShark/activities/AgreementActivity'),(12,40,'csllc/CellShark/activities/InfoActivity'),(13,41,'csllc/CellShark/activities/CreateAccountActivity'),(14,42,'csllc/CellShark/activities/HomeActivity'),(15,43,'csllc/CellShark/services/PhoneManagerService'),(16,44,'csllc/CellShark/services/PhoneManagerService'),(17,46,'csllc/CellShark/activities/AuthenticationActivity'),(18,47,'csllc/CellShark/activities/HomeActivity'),(19,49,'csllc/CellShark/services/PhoneManagerService'),(20,51,'csllc/CellShark/activities/CreateAccountActivity'),(21,52,'csllc/CellShark/services/PhoneManagerService'),(22,54,'csllc/CellShark/activities/CellSharkActivity'),(23,55,'csllc/CellShark/activities/AuthenticationActivity'),(24,56,'csllc/CellShark/services/PhoneManagerService'),(25,57,'csllc/CellShark/activities/CellSharkActivity'),(26,58,'csllc/CellShark/activities/AgreementActivity'),(27,59,'csllc/CellShark/activities/InfoActivity'),(28,60,'csllc/CellShark/activities/AuthenticationActivity'),(29,61,'csllc/CellShark/activities/HomeActivity'),(30,62,'csllc/CellShark/activities/HomeActivity'),(31,65,'csllc/CellShark/activities/AgreementActivity'),(32,67,'csllc/CellShark/activities/AuthenticationActivity'),(33,68,'csllc/CellShark/activities/CreateAccountActivity'),(34,70,'csllc/CellShark/services/PhoneManagerService'),(35,71,'csllc/CellShark/activities/AuthenticationActivity'),(36,72,'csllc/CellShark/services/PhoneManagerService'),(37,74,'csllc/CellShark/activities/InfoActivity'),(38,76,'csllc/CellShark/activities/CreateAccountActivity'),(39,77,'csllc/CellShark/activities/HomeActivity'),(40,78,'csllc/CellShark/services/PhoneManagerService'),(41,79,'csllc/CellShark/activities/HomeActivity'),(42,80,'csllc/CellShark/activities/AuthenticationActivity'),(43,81,'csllc/CellShark/activities/HomeActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,2,2),(2,1,1),(3,3,3),(4,19,4),(5,31,12),(6,33,15),(7,34,14),(8,36,16),(9,35,17),(10,38,18),(11,45,21),(12,48,24),(13,50,27),(14,53,29),(15,63,40),(16,64,43),(17,66,45),(18,69,47),(19,73,49),(20,75,51);
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,4,'android.intent.extra.INTENT'),(2,5,'android.intent.extra.INTENT'),(3,6,'sender'),(4,7,'android.intent.extra.TITLE'),(5,6,'app'),(6,7,'android.intent.extra.INTENT'),(7,8,'android.intent.extra.INTENT'),(8,9,'android.intent.extra.INTENT'),(9,10,'android.intent.extra.TITLE'),(10,10,'android.intent.extra.INTENT'),(11,11,'android.intent.extra.INTENT'),(12,12,'android.intent.extra.INTENT'),(13,13,'android.intent.extra.TITLE'),(14,13,'android.intent.extra.INTENT'),(15,14,'android.intent.extra.TITLE'),(16,14,'android.intent.extra.INTENT'),(17,15,'android.intent.extra.INTENT'),(18,16,'android.intent.extra.TITLE'),(19,16,'android.intent.extra.INTENT'),(20,17,'android.intent.extra.TITLE'),(21,17,'android.intent.extra.INTENT'),(22,18,'android.intent.extra.INTENT'),(23,20,'android.intent.extra.TITLE'),(24,20,'android.intent.extra.INTENT'),(25,21,'android.intent.extra.TITLE'),(26,21,'android.intent.extra.INTENT'),(27,22,'sender'),(28,22,'app');
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,1,2),(3,2,3),(4,3,4),(5,4,5),(6,5,3),(7,6,4),(8,7,5),(9,8,6),(10,9,7),(11,10,3),(12,11,3),(13,12,3),(14,13,8),(15,14,1),(16,15,8),(17,16,1),(18,17,8),(19,18,1),(20,19,3),(21,20,8),(22,21,1),(23,22,2),(24,22,12),(25,23,12),(26,23,2),(27,24,12),(28,24,2),(29,25,12),(30,25,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,2,1),(2,2,2),(3,3,3),(4,4,3),(5,5,1),(6,5,2),(7,6,4),(8,7,4),(9,10,2),(10,11,2),(11,12,2),(12,19,2);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,33,'(.*)','(.*)'),(2,35,'(.*)','(.*)'),(3,53,'(.*)','(.*)'),(4,64,'(.*)','(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,23,'csllc.CellShark'),(2,24,'csllc.CellShark'),(3,25,'csllc.CellShark'),(4,26,'csllc.CellShark'),(5,27,'csllc.CellShark'),(6,28,'csllc.CellShark'),(7,29,'csllc.CellShark'),(8,30,'csllc.CellShark'),(9,32,'csllc.CellShark'),(10,37,'csllc.CellShark'),(11,39,'csllc.CellShark'),(12,40,'csllc.CellShark'),(13,41,'csllc.CellShark'),(14,42,'csllc.CellShark'),(15,43,'csllc.CellShark'),(16,44,'csllc.CellShark'),(17,46,'csllc.CellShark'),(18,47,'csllc.CellShark'),(19,49,'csllc.CellShark'),(20,51,'csllc.CellShark'),(21,52,'csllc.CellShark'),(22,54,'csllc.CellShark'),(23,55,'csllc.CellShark'),(24,56,'csllc.CellShark'),(25,57,'csllc.CellShark'),(26,58,'csllc.CellShark'),(27,59,'csllc.CellShark'),(28,60,'csllc.CellShark'),(29,61,'csllc.CellShark'),(30,62,'csllc.CellShark'),(31,65,'csllc.CellShark'),(32,67,'csllc.CellShark'),(33,68,'csllc.CellShark'),(34,70,'csllc.CellShark'),(35,71,'csllc.CellShark'),(36,72,'csllc.CellShark'),(37,74,'csllc.CellShark'),(38,76,'csllc.CellShark'),(39,77,'csllc.CellShark'),(40,78,'csllc.CellShark'),(41,79,'csllc.CellShark'),(42,80,'csllc.CellShark'),(43,81,'csllc.CellShark');
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,5,0),(4,5,0),(5,6,0),(6,9,0),(7,9,0),(8,10,0),(9,11,0),(10,12,0),(11,14,0),(12,25,0),(13,27,0),(14,31,0),(15,33,0),(16,35,0),(17,40,0),(18,41,0),(19,42,0),(20,50,0),(21,51,0),(22,52,0),(23,53,0),(24,54,0),(25,55,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,1,0),(3,3,1,0),(4,4,1,0),(5,4,1,0),(6,5,1,0),(7,4,1,0),(8,4,1,0),(9,6,1,0),(10,4,1,0),(11,6,1,0),(12,4,1,0),(13,6,1,0),(14,4,1,0),(15,6,1,0),(16,4,1,0),(17,6,1,0),(18,6,1,0),(19,7,1,0),(20,6,1,0),(21,6,1,0),(22,8,1,0),(23,10,0,0),(24,12,0,0),(25,13,0,0),(26,15,0,0),(27,16,0,0),(28,18,0,0),(29,21,0,0),(30,22,0,0),(31,23,1,0),(32,25,0,0),(33,23,1,0),(34,27,1,0),(35,27,1,0),(36,23,1,0),(37,28,0,0),(38,27,1,0),(39,29,0,0),(40,30,0,0),(41,32,0,0),(42,34,0,0),(43,35,0,0),(44,36,0,0),(45,37,1,0),(46,38,0,0),(47,42,0,0),(48,41,1,0),(49,43,0,0),(50,41,1,0),(51,46,0,0),(52,47,0,0),(53,41,1,0),(54,48,0,0),(55,54,0,0),(56,56,0,0),(57,57,0,0),(58,58,0,0),(59,59,0,0),(60,60,0,0),(61,65,0,0),(62,67,0,0),(63,68,1,0),(64,68,1,0),(65,71,0,0),(66,68,1,0),(67,74,0,0),(68,75,0,0),(69,76,1,0),(70,77,0,0),(71,78,0,0),(72,79,0,0),(73,80,1,0),(74,82,0,0),(75,83,1,0),(76,84,0,0),(77,88,0,0),(78,91,0,0),(79,92,0,0),(80,94,0,0),(81,96,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=629 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,4,1,2,NULL),(2,5,1,2,NULL),(3,7,1,2,NULL),(4,8,1,2,NULL),(5,10,1,2,NULL),(6,12,1,2,NULL),(7,14,1,2,NULL),(8,16,1,2,NULL),(9,9,1,2,NULL),(10,11,1,2,NULL),(11,13,1,2,NULL),(12,15,1,2,NULL),(13,17,1,2,NULL),(14,18,1,2,NULL),(15,20,1,2,NULL),(16,21,1,2,NULL),(17,34,1,2,NULL),(18,38,1,2,NULL),(19,31,1,2,NULL),(20,36,1,2,NULL),(21,63,1,2,NULL),(22,66,1,2,NULL),(23,48,1,2,NULL),(24,50,1,2,NULL),(25,4,10,2,NULL),(26,5,10,2,NULL),(27,7,10,2,NULL),(28,8,10,2,NULL),(29,10,10,2,NULL),(30,12,10,2,NULL),(31,14,10,2,NULL),(32,16,10,2,NULL),(33,9,10,2,NULL),(34,11,10,2,NULL),(35,13,10,2,NULL),(36,15,10,2,NULL),(37,17,10,2,NULL),(38,18,10,2,NULL),(39,20,10,2,NULL),(40,21,10,2,NULL),(41,34,10,2,NULL),(42,38,10,2,NULL),(43,31,10,2,NULL),(44,36,10,2,NULL),(45,63,10,2,NULL),(46,66,10,2,NULL),(47,48,10,2,NULL),(48,50,10,2,NULL),(49,4,11,2,NULL),(50,5,11,2,NULL),(51,7,11,2,NULL),(52,8,11,2,NULL),(53,10,11,2,NULL),(54,12,11,2,NULL),(55,14,11,2,NULL),(56,16,11,2,NULL),(57,9,11,2,NULL),(58,11,11,2,NULL),(59,13,11,2,NULL),(60,15,11,2,NULL),(61,17,11,2,NULL),(62,18,11,2,NULL),(63,20,11,2,NULL),(64,21,11,2,NULL),(65,34,11,2,NULL),(66,38,11,2,NULL),(67,31,11,2,NULL),(68,36,11,2,NULL),(69,63,11,2,NULL),(70,66,11,2,NULL),(71,48,11,2,NULL),(72,50,11,2,NULL),(73,23,15,2,NULL),(74,23,19,2,NULL),(75,23,32,2,NULL),(76,23,44,2,NULL),(77,26,24,2,NULL),(78,26,30,2,NULL),(79,26,39,2,NULL),(80,26,49,2,NULL),(81,27,16,2,NULL),(82,27,21,2,NULL),(83,27,34,2,NULL),(84,27,45,2,NULL),(85,47,18,2,NULL),(86,47,23,2,NULL),(87,47,36,2,NULL),(88,47,46,2,NULL),(89,4,12,2,NULL),(90,5,12,2,NULL),(91,7,12,2,NULL),(92,8,12,2,NULL),(93,10,12,2,NULL),(94,12,12,2,NULL),(95,14,12,2,NULL),(96,16,12,2,NULL),(97,9,12,2,NULL),(98,11,12,2,NULL),(99,13,12,2,NULL),(100,15,12,2,NULL),(101,17,12,2,NULL),(102,18,12,2,NULL),(103,20,12,2,NULL),(104,21,12,2,NULL),(105,34,12,2,NULL),(106,38,12,2,NULL),(107,31,12,2,NULL),(108,36,12,2,NULL),(109,63,12,2,NULL),(110,66,12,2,NULL),(111,48,12,2,NULL),(112,50,12,2,NULL),(113,52,24,2,NULL),(114,52,30,2,NULL),(115,52,39,2,NULL),(116,52,49,2,NULL),(117,34,2,2,NULL),(118,38,2,2,NULL),(119,34,5,2,NULL),(120,38,5,2,NULL),(121,34,6,2,NULL),(122,38,6,2,NULL),(123,34,9,2,NULL),(124,38,9,2,NULL),(125,34,27,2,NULL),(126,38,27,2,NULL),(127,34,31,2,NULL),(128,38,31,2,NULL),(129,34,52,2,NULL),(130,38,52,2,NULL),(131,34,14,2,NULL),(132,38,14,2,NULL),(133,34,33,2,NULL),(134,38,33,2,NULL),(135,34,35,2,NULL),(136,38,35,2,NULL),(137,34,55,2,NULL),(138,38,55,2,NULL),(139,34,25,2,NULL),(140,38,25,2,NULL),(141,34,40,2,NULL),(142,38,40,2,NULL),(143,34,41,2,NULL),(144,38,41,2,NULL),(145,34,53,2,NULL),(146,38,53,2,NULL),(147,34,42,2,NULL),(148,38,42,2,NULL),(149,34,50,2,NULL),(150,38,50,2,NULL),(151,34,51,2,NULL),(152,38,51,2,NULL),(153,34,54,2,NULL),(154,38,54,2,NULL),(155,4,27,2,NULL),(156,5,27,2,NULL),(157,7,27,2,NULL),(158,8,27,2,NULL),(159,10,27,2,NULL),(160,12,27,2,NULL),(161,14,27,2,NULL),(162,16,27,2,NULL),(163,9,27,2,NULL),(164,11,27,2,NULL),(165,13,27,2,NULL),(166,15,27,2,NULL),(167,17,27,2,NULL),(168,18,27,2,NULL),(169,20,27,2,NULL),(170,21,27,2,NULL),(171,31,27,2,NULL),(172,36,27,2,NULL),(173,63,27,2,NULL),(174,66,27,2,NULL),(175,48,27,2,NULL),(176,50,27,2,NULL),(177,30,24,2,NULL),(178,30,30,2,NULL),(179,30,39,2,NULL),(180,30,49,2,NULL),(181,4,31,2,NULL),(182,5,31,2,NULL),(183,7,31,2,NULL),(184,8,31,2,NULL),(185,10,31,2,NULL),(186,12,31,2,NULL),(187,14,31,2,NULL),(188,16,31,2,NULL),(189,9,31,2,NULL),(190,11,31,2,NULL),(191,13,31,2,NULL),(192,15,31,2,NULL),(193,17,31,2,NULL),(194,18,31,2,NULL),(195,20,31,2,NULL),(196,21,31,2,NULL),(197,31,31,2,NULL),(198,36,31,2,NULL),(199,63,31,2,NULL),(200,66,31,2,NULL),(201,48,31,2,NULL),(202,50,31,2,NULL),(203,4,52,2,NULL),(204,5,52,2,NULL),(205,7,52,2,NULL),(206,8,52,2,NULL),(207,10,52,2,NULL),(208,12,52,2,NULL),(209,14,52,2,NULL),(210,16,52,2,NULL),(211,9,52,2,NULL),(212,11,52,2,NULL),(213,13,52,2,NULL),(214,15,52,2,NULL),(215,17,52,2,NULL),(216,18,52,2,NULL),(217,20,52,2,NULL),(218,21,52,2,NULL),(219,31,52,2,NULL),(220,36,52,2,NULL),(221,63,52,2,NULL),(222,66,52,2,NULL),(223,48,52,2,NULL),(224,50,52,2,NULL),(225,60,15,2,NULL),(226,60,19,2,NULL),(227,60,32,2,NULL),(228,60,44,2,NULL),(229,61,18,2,NULL),(230,61,23,2,NULL),(231,61,36,2,NULL),(232,61,46,2,NULL),(233,72,24,2,NULL),(234,72,30,2,NULL),(235,72,39,2,NULL),(236,72,49,2,NULL),(237,74,16,2,NULL),(238,74,21,2,NULL),(239,74,34,2,NULL),(240,74,45,2,NULL),(241,4,14,2,NULL),(242,5,14,2,NULL),(243,7,14,2,NULL),(244,8,14,2,NULL),(245,10,14,2,NULL),(246,12,14,2,NULL),(247,14,14,2,NULL),(248,16,14,2,NULL),(249,9,14,2,NULL),(250,11,14,2,NULL),(251,13,14,2,NULL),(252,15,14,2,NULL),(253,17,14,2,NULL),(254,18,14,2,NULL),(255,20,14,2,NULL),(256,21,14,2,NULL),(257,31,14,2,NULL),(258,36,14,2,NULL),(259,63,14,2,NULL),(260,66,14,2,NULL),(261,48,14,2,NULL),(262,50,14,2,NULL),(263,43,24,2,NULL),(264,43,30,2,NULL),(265,43,39,2,NULL),(266,43,49,2,NULL),(267,31,2,2,NULL),(268,36,2,2,NULL),(269,31,5,2,NULL),(270,36,5,2,NULL),(271,31,6,2,NULL),(272,36,6,2,NULL),(273,31,9,2,NULL),(274,36,9,2,NULL),(275,31,33,2,NULL),(276,36,33,2,NULL),(277,31,35,2,NULL),(278,36,35,2,NULL),(279,31,55,2,NULL),(280,36,55,2,NULL),(281,31,25,2,NULL),(282,36,25,2,NULL),(283,31,40,2,NULL),(284,36,40,2,NULL),(285,31,41,2,NULL),(286,36,41,2,NULL),(287,31,53,2,NULL),(288,36,53,2,NULL),(289,31,42,2,NULL),(290,36,42,2,NULL),(291,31,50,2,NULL),(292,36,50,2,NULL),(293,31,51,2,NULL),(294,36,51,2,NULL),(295,31,54,2,NULL),(296,36,54,2,NULL),(297,4,33,2,NULL),(298,5,33,2,NULL),(299,7,33,2,NULL),(300,8,33,2,NULL),(301,10,33,2,NULL),(302,12,33,2,NULL),(303,14,33,2,NULL),(304,16,33,2,NULL),(305,9,33,2,NULL),(306,11,33,2,NULL),(307,13,33,2,NULL),(308,15,33,2,NULL),(309,17,33,2,NULL),(310,18,33,2,NULL),(311,20,33,2,NULL),(312,4,5,2,NULL),(313,21,33,2,NULL),(314,63,33,2,NULL),(315,5,5,2,NULL),(316,66,33,2,NULL),(317,7,5,2,NULL),(318,48,33,2,NULL),(319,50,33,2,NULL),(320,8,5,2,NULL),(321,49,24,2,NULL),(322,10,5,2,NULL),(323,49,30,2,NULL),(324,12,5,2,NULL),(325,49,39,2,NULL),(326,49,49,2,NULL),(327,14,5,2,NULL),(328,4,35,2,NULL),(329,16,5,2,NULL),(330,5,35,2,NULL),(331,7,35,2,NULL),(332,4,6,2,NULL),(333,8,35,2,NULL),(334,5,6,2,NULL),(335,10,35,2,NULL),(336,7,6,2,NULL),(337,12,35,2,NULL),(338,8,6,2,NULL),(339,14,35,2,NULL),(340,10,6,2,NULL),(341,16,35,2,NULL),(342,12,6,2,NULL),(343,9,35,2,NULL),(344,14,6,2,NULL),(345,11,35,2,NULL),(346,16,6,2,NULL),(347,13,35,2,NULL),(348,9,2,2,NULL),(349,15,35,2,NULL),(350,11,2,2,NULL),(351,17,35,2,NULL),(352,13,2,2,NULL),(353,18,35,2,NULL),(354,15,2,2,NULL),(355,20,35,2,NULL),(356,17,2,2,NULL),(357,21,35,2,NULL),(358,18,2,2,NULL),(359,63,35,2,NULL),(360,20,2,2,NULL),(361,66,35,2,NULL),(362,21,2,2,NULL),(363,48,35,2,NULL),(364,4,9,2,NULL),(365,50,35,2,NULL),(366,5,9,2,NULL),(367,4,55,2,NULL),(368,7,9,2,NULL),(369,5,55,2,NULL),(370,8,9,2,NULL),(371,7,55,2,NULL),(372,10,9,2,NULL),(373,8,55,2,NULL),(374,12,9,2,NULL),(375,10,55,2,NULL),(376,14,9,2,NULL),(377,12,55,2,NULL),(378,16,9,2,NULL),(379,14,55,2,NULL),(380,16,55,2,NULL),(381,9,55,2,NULL),(382,4,25,2,NULL),(383,11,55,2,NULL),(384,5,25,2,NULL),(385,13,55,2,NULL),(386,7,25,2,NULL),(387,15,55,2,NULL),(388,8,25,2,NULL),(389,17,55,2,NULL),(390,10,25,2,NULL),(391,18,55,2,NULL),(392,12,25,2,NULL),(393,20,55,2,NULL),(394,14,25,2,NULL),(395,21,55,2,NULL),(396,16,25,2,NULL),(397,63,55,2,NULL),(398,63,2,2,NULL),(399,66,55,2,NULL),(400,66,2,2,NULL),(401,48,55,2,NULL),(402,4,40,2,NULL),(403,50,55,2,NULL),(404,5,40,2,NULL),(405,44,24,2,NULL),(406,7,40,2,NULL),(407,44,30,2,NULL),(408,8,40,2,NULL),(409,44,39,2,NULL),(410,10,40,2,NULL),(411,44,49,2,NULL),(412,12,40,2,NULL),(413,59,16,2,NULL),(414,14,40,2,NULL),(415,59,21,2,NULL),(416,16,40,2,NULL),(417,59,34,2,NULL),(418,4,41,2,NULL),(419,59,45,2,NULL),(420,5,41,2,NULL),(421,71,15,2,NULL),(422,7,41,2,NULL),(423,71,19,2,NULL),(424,8,41,2,NULL),(425,71,32,2,NULL),(426,10,41,2,NULL),(427,71,44,2,NULL),(428,12,41,2,NULL),(429,81,18,2,NULL),(430,14,41,2,NULL),(431,81,23,2,NULL),(432,9,5,2,NULL),(433,16,41,2,NULL),(434,81,36,2,NULL),(435,11,5,2,NULL),(436,4,53,2,NULL),(437,81,46,2,NULL),(438,13,5,2,NULL),(439,5,53,2,NULL),(440,9,25,2,NULL),(441,15,5,2,NULL),(442,7,53,2,NULL),(443,11,25,2,NULL),(444,8,53,2,NULL),(445,17,5,2,NULL),(446,13,25,2,NULL),(447,10,53,2,NULL),(448,18,5,2,NULL),(449,15,25,2,NULL),(450,12,53,2,NULL),(451,20,5,2,NULL),(452,17,25,2,NULL),(453,14,53,2,NULL),(454,21,5,2,NULL),(455,18,25,2,NULL),(456,16,53,2,NULL),(457,9,9,2,NULL),(458,20,25,2,NULL),(459,4,42,2,NULL),(460,11,9,2,NULL),(461,21,25,2,NULL),(462,5,42,2,NULL),(463,13,9,2,NULL),(464,63,25,2,NULL),(465,7,42,2,NULL),(466,15,9,2,NULL),(467,66,25,2,NULL),(468,8,42,2,NULL),(469,17,9,2,NULL),(470,48,25,2,NULL),(471,10,42,2,NULL),(472,18,9,2,NULL),(473,50,25,2,NULL),(474,12,42,2,NULL),(475,20,9,2,NULL),(476,78,24,2,NULL),(477,14,42,2,NULL),(478,21,9,2,NULL),(479,78,30,2,NULL),(480,16,42,2,NULL),(481,78,39,2,NULL),(482,48,2,2,NULL),(483,78,49,2,NULL),(484,50,2,2,NULL),(485,63,6,2,NULL),(486,63,5,2,NULL),(487,4,50,2,NULL),(488,66,6,2,NULL),(489,66,5,2,NULL),(490,5,50,2,NULL),(491,9,40,2,NULL),(492,63,9,2,NULL),(493,7,50,2,NULL),(494,11,40,2,NULL),(495,66,9,2,NULL),(496,8,50,2,NULL),(497,13,40,2,NULL),(498,63,40,2,NULL),(499,10,50,2,NULL),(500,15,40,2,NULL),(501,66,40,2,NULL),(502,12,50,2,NULL),(503,17,40,2,NULL),(504,63,41,2,NULL),(505,14,50,2,NULL),(506,18,40,2,NULL),(507,66,41,2,NULL),(508,16,50,2,NULL),(509,20,40,2,NULL),(510,63,53,2,NULL),(511,4,51,2,NULL),(512,21,40,2,NULL),(513,66,53,2,NULL),(514,5,51,2,NULL),(515,9,41,2,NULL),(516,63,42,2,NULL),(517,7,51,2,NULL),(518,11,41,2,NULL),(519,66,42,2,NULL),(520,8,51,2,NULL),(521,13,41,2,NULL),(522,63,50,2,NULL),(523,10,51,2,NULL),(524,15,41,2,NULL),(525,66,50,2,NULL),(526,12,51,2,NULL),(527,17,41,2,NULL),(528,63,51,2,NULL),(529,14,51,2,NULL),(530,18,41,2,NULL),(531,66,51,2,NULL),(532,16,51,2,NULL),(533,20,41,2,NULL),(534,63,54,2,NULL),(535,4,54,2,NULL),(536,21,41,2,NULL),(537,66,54,2,NULL),(538,5,54,2,NULL),(539,9,53,2,NULL),(540,48,40,2,NULL),(541,7,54,2,NULL),(542,11,53,2,NULL),(543,50,40,2,NULL),(544,8,54,2,NULL),(545,13,53,2,NULL),(546,56,24,2,NULL),(547,10,54,2,NULL),(548,15,53,2,NULL),(549,56,30,2,NULL),(550,17,53,2,NULL),(551,12,54,2,NULL),(552,56,39,2,NULL),(553,18,53,2,NULL),(554,14,54,2,NULL),(555,56,49,2,NULL),(556,16,54,2,NULL),(557,20,53,2,NULL),(558,48,41,2,NULL),(559,21,53,2,NULL),(560,50,41,2,NULL),(561,48,5,2,NULL),(562,9,42,2,NULL),(563,50,5,2,NULL),(564,48,53,2,NULL),(565,11,42,2,NULL),(566,50,53,2,NULL),(567,13,42,2,NULL),(568,29,24,2,NULL),(569,15,42,2,NULL),(570,29,30,2,NULL),(571,17,42,2,NULL),(572,29,39,2,NULL),(573,18,42,2,NULL),(574,29,49,2,NULL),(575,20,42,2,NULL),(576,40,16,2,NULL),(577,21,42,2,NULL),(578,40,21,2,NULL),(579,48,6,2,NULL),(580,40,34,2,NULL),(581,50,6,2,NULL),(582,40,45,2,NULL),(583,9,50,2,NULL),(584,62,18,2,NULL),(585,11,50,2,NULL),(586,62,23,2,NULL),(587,13,50,2,NULL),(588,62,36,2,NULL),(589,15,50,2,NULL),(590,62,46,2,NULL),(591,17,50,2,NULL),(592,67,15,2,NULL),(593,18,50,2,NULL),(594,67,19,2,NULL),(595,20,50,2,NULL),(596,67,32,2,NULL),(597,21,50,2,NULL),(598,67,44,2,NULL),(599,9,51,2,NULL),(600,48,42,2,NULL),(601,11,51,2,NULL),(602,50,42,2,NULL),(603,13,51,2,NULL),(604,48,9,2,NULL),(605,15,51,2,NULL),(606,50,9,2,NULL),(607,17,51,2,NULL),(608,48,50,2,NULL),(609,18,51,2,NULL),(610,50,50,2,NULL),(611,48,51,2,NULL),(612,20,51,2,NULL),(613,50,51,2,NULL),(614,48,54,2,NULL),(615,21,51,2,NULL),(616,50,54,2,NULL),(617,9,54,2,NULL),(618,70,24,2,NULL),(619,70,30,2,NULL),(620,11,54,2,NULL),(621,70,39,2,NULL),(622,70,49,2,NULL),(623,13,54,2,NULL),(624,15,54,2,NULL),(625,17,54,2,NULL),(626,18,54,2,NULL),(627,20,54,2,NULL),(628,21,54,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (17,'android.permission.ACCESS_ASSISTED_GPS'),(16,'android.permission.ACCESS_CELL_ID'),(18,'android.permission.ACCESS_COARSE_LOCATION'),(24,'android.permission.ACCESS_FINE_LOCATION'),(21,'android.permission.ACCESS_GPS'),(15,'android.permission.ACCESS_LOCATION'),(7,'android.permission.ACCESS_NETWORK_STATE'),(14,'android.permission.DELETE_PACKAGES'),(4,'android.permission.INTERNET'),(20,'android.permission.READ_CONTACTS'),(13,'android.permission.READ_MMS'),(1,'android.permission.READ_PHONE_STATE'),(22,'android.permission.READ_SMS'),(2,'android.permission.RECEIVE_BOOT_COMPLETED'),(19,'android.permission.RECEIVE_MMS'),(6,'android.permission.RECEIVE_SMS'),(3,'android.permission.SEND_SMS'),(26,'android.permission.WAKE_LOCK'),(25,'android.permission.WIFI_LOCK'),(5,'android.permission.WRITE_EXTERNAL_STORAGE'),(23,'android.permission.WRITE_SETTINGS'),(8,'android.webkit.permission.PLUGIN'),(12,'com.dreamstep.wCellPhoneSpy.permission.C2D_MESSAGE'),(9,'com.dreamstep.wCellPhoneSpyNews.permission.C2D_MESSAGE'),(10,'com.google.android.c2dm.permission.RECEIVE'),(11,'com.google.android.c2dm.permission.SEND');
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
INSERT INTO `Permissions` VALUES (9,'s'),(12,'s');
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'',NULL,NULL,NULL),(2,NULL,NULL,'',NULL,NULL,NULL),(3,NULL,NULL,'',NULL,NULL,NULL),(4,NULL,NULL,'',NULL,NULL,NULL),(5,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(6,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(7,NULL,NULL,'content://sms',NULL,NULL,NULL),(8,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(9,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(10,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(11,NULL,NULL,'content://com.android.contacts/raw_contacts',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(20,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(21,NULL,NULL,'http://www.desktopshark.com',NULL,NULL,NULL),(22,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(23,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(26,NULL,NULL,'content://call_log',NULL,NULL,NULL),(27,NULL,NULL,'(.*)',NULL,NULL,NULL),(28,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(29,NULL,NULL,'(.*)',NULL,NULL,NULL),(30,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(31,NULL,NULL,'content://com.android.contacts/raw_contacts',NULL,NULL,NULL),(32,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(33,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(34,NULL,NULL,'content://call_log',NULL,NULL,NULL),(35,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(36,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(37,NULL,NULL,'content://call_log',NULL,NULL,NULL),(38,NULL,NULL,'content://sms',NULL,NULL,NULL),(39,NULL,NULL,'content://com.android.contacts/raw_contacts',NULL,NULL,NULL),(40,NULL,NULL,'(.*)',NULL,NULL,NULL),(41,NULL,NULL,'content://sms',NULL,NULL,NULL),(42,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(43,NULL,NULL,'(.*)',NULL,NULL,NULL),(44,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(45,NULL,NULL,'(.*)',NULL,NULL,NULL),(46,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(47,NULL,NULL,'http://www.desktopshark.com',NULL,NULL,NULL),(48,NULL,NULL,'content://sms',NULL,NULL,NULL),(49,NULL,NULL,'http://www.desktopshark.com',NULL,NULL,NULL),(50,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(51,NULL,NULL,'http://www.desktopshark.com',NULL,NULL,NULL),(52,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(53,NULL,NULL,'content://call_log',NULL,NULL,NULL),(54,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(55,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(56,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(57,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,9,5),(2,11,6),(3,14,7),(4,17,8),(5,19,9),(6,20,10),(7,24,11),(8,26,13),(9,31,19),(10,33,20),(11,39,22),(12,40,23),(13,44,25),(14,45,26),(15,49,28),(16,50,30),(17,51,31),(18,52,32),(19,53,33),(20,55,34),(21,61,35),(22,62,36),(23,63,37),(24,64,38),(25,66,39),(26,69,41),(27,70,42),(28,72,44),(29,73,46),(30,81,48),(31,85,50),(32,86,52),(33,87,53),(34,89,54),(35,90,55),(36,93,56),(37,95,57);
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
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,2,4),(9,2,7),(10,2,8),(11,2,9),(12,2,10),(13,3,4),(14,3,7),(15,3,8),(16,3,10),(17,3,12),(18,4,1),(19,4,4),(20,4,6),(21,4,7),(22,4,13),(23,4,14),(24,5,1),(25,4,15),(26,5,4),(27,4,17),(28,5,6),(29,4,16),(30,5,7),(31,4,19),(32,5,13),(33,4,18),(34,5,14),(35,4,21),(36,5,15),(37,4,20),(38,5,17),(39,4,23),(40,5,16),(41,4,22),(42,5,19),(43,4,25),(44,5,18),(45,4,24),(46,5,21),(47,4,26),(48,5,20),(49,6,1),(50,5,23),(51,6,4),(52,5,22),(53,6,6),(54,5,25),(55,6,7),(56,5,24),(57,6,13),(58,5,26),(59,6,14),(60,6,15),(61,6,17),(62,6,16),(63,6,19),(64,6,18),(65,6,21),(66,6,20),(67,6,23),(68,6,22),(69,6,25),(70,6,24),(71,6,26),(72,7,1),(73,7,4),(74,7,6),(75,7,7),(76,7,13),(77,7,14),(78,7,15),(79,7,17),(80,7,16),(81,7,19),(82,7,18),(83,7,21),(84,7,20),(85,7,23),(86,7,22),(87,7,25),(88,7,24),(89,7,26);
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

-- Dump completed on 2015-10-12  3:31:28
