-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_344
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (17,'SENDED'),(15,'SENDING_OK'),(14,'SMS_DELIVERED'),(12,'SMS_SENT'),(5,'android.intent.action.BOOT_COMPLETED'),(9,'android.intent.action.DATA_SMS_RECEIVED'),(1,'android.intent.action.MAIN'),(4,'android.intent.action.PHONE_STATE'),(7,'android.intent.action.USER_PRESENT'),(13,'android.intent.action.VIEW'),(2,'android.provider.Telephony.SMS_RECEIVED'),(6,'com.convertoman.proin.FServices'),(10,'com.google.android.c2dm.intent.RECEIVE'),(16,'com.google.android.c2dm.intent.REGISTER'),(11,'com.google.android.c2dm.intent.REGISTRATION'),(8,'com.software.CHECKER'),(3,'rom.jonas.eley.NewsReaderService');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Applications`
--

LOCK TABLES `Applications` WRITE;
/*!40000 ALTER TABLE `Applications` DISABLE KEYS */;
INSERT INTO `Applications` VALUES (1,'com.World.Goo',1),(2,'rom.jonas.eley',1),(3,'com.soft.android.appinstaller',1),(4,'com.convertoman.proin',1),(5,'com.load.wap',1),(6,'com.software.application',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.HOME'),(1,'android.intent.category.LAUNCHER'),(3,'com.software.application');
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.pavel.newmodule.LicenseActivity'),(2,1,'com.pavel.newmodule.RuleActivity'),(3,1,'com.pavel.newmodule.SmsReceiver'),(4,3,'com.soft.android.appinstaller.FirstActivity'),(5,2,'rom.jonas.eley.Podcepilicucerachu'),(6,3,'com.soft.android.appinstaller.RulesActivity'),(7,2,'rom.jonas.eley.NewsReaderService'),(8,3,'com.soft.android.appinstaller.FinishActivity'),(9,3,'com.soft.android.appinstaller.QuestionActivity'),(10,4,'com.convertoman.proin.ProinActivity'),(11,2,'rom.jonas.eley.StartAtBootServiceReceiver'),(12,3,'com.soft.android.appinstaller.MemberActivity'),(13,4,'com.convertoman.proin.FServices'),(14,5,'com.load.wap.MainActivity'),(15,2,'rom.jonas.eley.AlarmReceiver'),(16,5,'com.load.wap.MainService'),(17,4,'com.uniplugin.sender.AReceiver'),(18,5,'com.load.wap.AlarmReceiver'),(19,5,'com.load.wap.AutorunReceiver'),(20,6,'com.software.application.Main'),(21,5,'com.load.wap.SmsReciver'),(22,6,'com.software.application.OffertActivity'),(23,6,'com.software.application.ShowLink'),(24,6,'com.software.application.C2DMReceiver'),(25,6,'com.software.application.Notificator'),(26,6,'com.software.application.Checker'),(27,6,'com.software.application.SmsReceiver'),(28,6,'com.google.android.c2dm.C2DMBroadcastReceiver'),(29,1,'com.pavel.newmodule.LicenseActivity$3'),(30,1,'com.pavel.newmodule.LicenseActivity$1'),(31,1,'com.pavel.newmodule.LicenseActivity$4'),(32,1,'com.pavel.newmodule.RuleActivity$5'),(33,1,'com.pavel.newmodule.RuleActivity$4'),(34,4,'com.uniplugin.sender.Sender$1'),(35,4,'com.convertoman.proin.ProinActivity$5'),(36,3,'com.soft.android.appinstaller.MemberActivity$1'),(37,6,'com.software.application.ShowLink$1'),(38,6,'com.software.application.Main$4'),(39,6,'com.google.android.c2dm.C2DMessaging'),(40,6,'com.google.android.c2dm.C2DMBaseReceiver'),(41,6,'com.software.application.Actor$1'),(42,6,'com.software.application.Actor');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,3,'pdus'),(2,7,'update'),(3,17,'number'),(4,17,'key'),(5,23,'pdus'),(6,17,'id'),(7,17,'text'),(8,25,'URL');
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'r',1,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'s',1,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'r',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'s',0,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'r',0,NULL,NULL),(16,13,'s',1,NULL,NULL),(17,16,'s',0,NULL,NULL),(18,17,'r',0,NULL,NULL),(19,18,'r',0,NULL,NULL),(20,17,'r',1,NULL,NULL),(21,19,'r',1,NULL,NULL),(22,20,'a',1,NULL,NULL),(23,21,'r',1,NULL,NULL),(24,22,'a',0,NULL,NULL),(25,23,'a',0,NULL,NULL),(26,24,'s',0,NULL,NULL),(27,25,'r',1,NULL,NULL),(28,26,'r',1,NULL,NULL),(29,27,'r',1,NULL,NULL),(30,28,'r',1,20,NULL),(31,29,'r',1,NULL,NULL),(32,31,'r',1,NULL,NULL),(33,32,'r',1,NULL,NULL),(34,33,'r',1,NULL,NULL),(35,34,'r',1,NULL,NULL),(36,38,'r',1,NULL,NULL),(37,41,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,1),(3,3,5),(4,4,8),(5,5,6),(6,6,11),(7,7,8),(8,8,15),(9,9,4),(10,10,11),(11,11,4),(12,12,4),(13,13,23),(14,14,5),(15,15,4),(16,16,10),(17,17,6),(18,18,20),(19,19,12),(20,20,19),(21,21,20),(22,22,6),(23,23,22),(24,24,4),(25,25,25),(26,26,22),(27,27,22),(28,28,30),(29,29,22);
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,30,'<com.pavel.newmodule.LicenseActivity$1: void onClick(android.view.View)>',6,'a',NULL),(2,1,'<com.pavel.newmodule.LicenseActivity: void installApk(java.lang.String)>',15,'a',NULL),(3,5,'<rom.jonas.eley.Podcepilicucerachu: void openWebURL(java.lang.String)>',5,'a',NULL),(4,8,'<com.soft.android.appinstaller.FinishActivity: void onNextClicked(android.view.View)>',8,'a',NULL),(5,6,'<com.soft.android.appinstaller.RulesActivity: void onNextClicked(android.view.View)>',8,'a',NULL),(6,11,'<rom.jonas.eley.StartAtBootServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',26,'s',NULL),(7,8,'<com.soft.android.appinstaller.FinishActivity: void onNextClicked(android.view.View)>',8,'a',NULL),(8,15,'<rom.jonas.eley.AlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',7,'s',NULL),(9,4,'<com.soft.android.appinstaller.FirstActivity: void onNextClicked(android.view.View)>',13,'a',NULL),(10,11,'<rom.jonas.eley.StartAtBootServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',17,'s',NULL),(11,4,'<com.soft.android.appinstaller.FirstActivity: void onRulesClicked(android.view.View)>',5,'a',NULL),(12,4,'<com.soft.android.appinstaller.FirstActivity: void onRulesClicked(android.view.View)>',11,'a',NULL),(13,16,'<com.load.wap.MainService: void a(android.content.Context,android.content.Intent,java.lang.String,java.lang.String,java.lang.String,long)>',16,'s',NULL),(14,5,'<rom.jonas.eley.Podcepilicucerachu: void startService()>',5,'s',NULL),(15,4,'<com.soft.android.appinstaller.FirstActivity: void onNextClicked(android.view.View)>',17,'a',NULL),(16,35,'<com.convertoman.proin.ProinActivity$5: void onClick(android.view.View)>',9,'a',NULL),(17,6,'<com.soft.android.appinstaller.RulesActivity: void onExitClicked(android.view.View)>',5,'a',NULL),(18,17,'<com.uniplugin.sender.AReceiver: void checkcomand(android.content.Context)>',59,'a',NULL),(19,36,'<com.soft.android.appinstaller.MemberActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',64,'a',NULL),(20,16,'<com.load.wap.MainService: void a(android.content.Context,android.content.Intent,java.lang.String)>',9,'s',NULL),(21,17,'<com.uniplugin.sender.AReceiver: void checkcomand(android.content.Context)>',108,'a',NULL),(22,6,'<com.soft.android.appinstaller.RulesActivity: void onNextClicked(android.view.View)>',14,'a',NULL),(23,20,'<com.software.application.Main: void showRules()>',3,'a',NULL),(24,4,'<com.soft.android.appinstaller.FirstActivity: void onNextClicked(android.view.View)>',23,'a',NULL),(25,37,'<com.software.application.ShowLink$1: void onClick(android.view.View)>',8,'a',NULL),(26,39,'<com.google.android.c2dm.C2DMessaging: boolean register(android.content.Context,java.lang.String)>',10,'s',NULL),(27,20,'<com.software.application.Main: void showURL()>',6,'a',NULL),(28,40,'<com.google.android.c2dm.C2DMBaseReceiver: void runIntentInService(android.content.Context,android.content.Intent)>',17,'s',NULL),(29,42,'<com.software.application.Actor: void report(int,android.app.PendingIntent)>',4,'r',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,13),(2,3,13),(3,4,13),(4,5,13),(5,6,13),(6,8,3),(7,9,13),(8,10,3),(9,12,13),(10,13,3),(11,17,3),(12,19,13),(13,21,13),(14,23,13),(15,24,13),(16,26,13),(17,27,13),(18,29,13),(19,30,13),(20,31,13),(21,35,13),(22,36,16),(23,39,15);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/pavel/newmodule/RuleActivity'),(2,7,'com/soft/android/appinstaller/FinishActivity'),(3,11,'com/soft/android/appinstaller/FinishActivity'),(4,14,'com/soft/android/appinstaller/RulesActivity'),(5,15,'com/soft/android/appinstaller/RulesActivity'),(6,16,'com/load/wap/MainService'),(7,18,'com/soft/android/appinstaller/MemberActivity'),(8,22,'com/soft/android/appinstaller/FirstActivity'),(9,20,'com/load/wap/MainService'),(10,25,'com/load/wap/MainService'),(11,28,'com/load/wap/MainService'),(12,32,'com/soft/android/appinstaller/FinishActivity'),(13,33,'com/software/application/OffertActivity'),(14,34,'com/soft/android/appinstaller/FinishActivity'),(15,37,'com/software/application/ShowLink'),(16,38,'com.software.application.C2DMReceiver');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,2,1),(2,3,2),(3,4,3),(4,5,4),(5,6,5),(6,9,6),(7,12,7),(8,19,8),(9,21,9),(10,23,10),(11,24,11),(12,26,12),(13,27,13),(14,29,14),(15,30,15),(16,31,16),(17,35,17);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,10,'update'),(2,16,'id'),(3,16,'text'),(4,16,'number'),(5,16,'key'),(6,20,'id'),(7,20,'text'),(8,20,'(.*)'),(9,20,'number'),(10,20,'key'),(11,25,'key'),(12,28,'(.*)'),(13,28,'key'),(14,36,'sender'),(15,36,'app'),(16,37,'URL');
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,2),(5,5,3),(6,6,1),(7,7,1),(8,8,5),(9,8,4),(10,9,1),(11,10,6),(12,11,5),(13,11,4),(14,12,4),(15,12,5),(16,12,7),(17,13,1),(18,14,2),(19,15,5),(20,16,8),(21,17,9),(22,18,10),(23,19,11),(24,20,12),(25,21,14),(26,22,14),(27,23,12),(28,24,2),(29,25,2),(30,26,15),(31,27,17);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,6,1),(5,7,1),(6,9,1),(7,13,1),(8,15,2),(9,16,2),(10,18,3),(11,19,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,17,'sms',NULL,NULL,NULL,NULL,NULL),(2,17,NULL,NULL,'8901',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,2,'application','vnd.android.package-archive'),(2,30,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.World.Goo'),(2,7,'com.soft.android.appinstaller'),(3,11,'com.soft.android.appinstaller'),(4,14,'com.soft.android.appinstaller'),(5,15,'com.soft.android.appinstaller'),(6,16,'com.load.wap'),(7,18,'com.soft.android.appinstaller'),(8,22,'com.soft.android.appinstaller'),(9,20,'com.load.wap'),(10,25,'com.load.wap'),(11,28,'com.load.wap'),(12,32,'com.soft.android.appinstaller'),(13,33,'com.software.application'),(14,34,'com.soft.android.appinstaller'),(15,36,'com.google.android.gsf'),(16,37,'com.software.application'),(17,38,'com.software.application');
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,4,0),(3,5,0),(4,3,0),(5,7,0),(6,4,0),(7,10,0),(8,11,0),(9,14,0),(10,16,0),(11,20,0),(12,21,0),(13,22,0),(14,23,0),(15,27,0),(16,28,0),(17,29,0),(18,30,0),(19,30,0),(20,31,0),(21,32,0),(22,33,0),(23,34,0),(24,20,0),(25,35,0),(26,36,0),(27,37,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,3,1,0),(4,4,1,0),(5,3,1,0),(6,4,1,0),(7,5,0,0),(8,6,1,0),(9,7,1,0),(10,8,1,0),(11,9,0,0),(12,7,1,0),(13,10,1,0),(14,11,0,0),(15,12,0,0),(16,13,0,0),(17,14,1,0),(18,15,0,0),(19,16,1,0),(20,13,0,0),(21,16,1,0),(22,17,0,0),(23,18,1,0),(24,19,1,0),(25,20,0,0),(26,18,1,0),(27,19,1,0),(28,20,0,0),(29,19,1,0),(30,21,1,0),(31,19,1,0),(32,22,0,0),(33,23,0,0),(34,24,0,0),(35,25,1,0),(36,26,1,0),(37,27,0,0),(38,28,0,0),(39,29,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=284 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,33,24,2,NULL),(2,37,25,2,NULL),(3,3,22,2,NULL),(4,5,22,2,NULL),(5,17,22,2,NULL),(6,8,22,2,NULL),(7,13,22,2,NULL),(8,10,22,2,NULL),(9,4,22,2,NULL),(10,6,22,2,NULL),(11,9,22,2,NULL),(12,12,22,2,NULL),(13,23,22,2,NULL),(14,26,22,2,NULL),(15,3,27,2,NULL),(16,5,27,2,NULL),(17,17,27,2,NULL),(18,8,27,2,NULL),(19,13,27,2,NULL),(20,10,27,2,NULL),(21,4,27,2,NULL),(22,6,27,2,NULL),(23,9,27,2,NULL),(24,12,27,2,NULL),(25,23,27,2,NULL),(26,26,27,2,NULL),(27,3,28,2,NULL),(28,5,28,2,NULL),(29,17,28,2,NULL),(30,8,28,2,NULL),(31,13,28,2,NULL),(32,10,28,2,NULL),(33,4,28,2,NULL),(34,6,28,2,NULL),(35,9,28,2,NULL),(36,12,28,2,NULL),(37,23,28,2,NULL),(38,26,28,2,NULL),(39,3,30,2,NULL),(40,5,30,2,NULL),(41,17,30,2,NULL),(42,8,30,2,NULL),(43,13,30,2,NULL),(44,10,30,2,NULL),(45,4,30,2,NULL),(46,6,30,2,NULL),(47,9,30,2,NULL),(48,12,30,2,NULL),(49,23,30,2,NULL),(50,26,30,2,NULL),(51,3,36,2,NULL),(52,5,36,2,NULL),(53,17,36,2,NULL),(54,8,36,2,NULL),(55,13,36,2,NULL),(56,10,36,2,NULL),(57,4,36,2,NULL),(58,6,36,2,NULL),(59,9,36,2,NULL),(60,12,36,2,NULL),(61,23,36,2,NULL),(62,26,36,2,NULL),(63,3,37,2,NULL),(64,5,37,2,NULL),(65,17,37,2,NULL),(66,8,37,2,NULL),(67,13,37,2,NULL),(68,10,37,2,NULL),(69,4,37,2,NULL),(70,6,37,2,NULL),(71,9,37,2,NULL),(72,12,37,2,NULL),(73,23,37,2,NULL),(74,26,37,2,NULL),(75,3,1,2,NULL),(76,5,1,2,NULL),(77,17,1,2,NULL),(78,8,1,2,NULL),(79,13,1,2,NULL),(80,10,1,2,NULL),(81,4,1,2,NULL),(82,6,1,2,NULL),(83,9,1,2,NULL),(84,12,1,2,NULL),(85,23,1,2,NULL),(86,26,1,2,NULL),(87,3,3,2,NULL),(88,5,3,2,NULL),(89,17,3,2,NULL),(90,8,3,2,NULL),(91,13,3,2,NULL),(92,10,3,2,NULL),(93,4,3,2,NULL),(94,6,3,2,NULL),(95,9,3,2,NULL),(96,12,3,2,NULL),(97,23,3,2,NULL),(98,26,3,2,NULL),(99,3,31,2,NULL),(100,5,31,2,NULL),(101,17,31,2,NULL),(102,8,31,2,NULL),(103,13,31,2,NULL),(104,10,31,2,NULL),(105,4,31,2,NULL),(106,6,31,2,NULL),(107,9,31,2,NULL),(108,12,31,2,NULL),(109,23,31,2,NULL),(110,26,31,2,NULL),(111,3,32,2,NULL),(112,5,32,2,NULL),(113,17,32,2,NULL),(114,8,32,2,NULL),(115,13,32,2,NULL),(116,10,32,2,NULL),(117,4,32,2,NULL),(118,6,32,2,NULL),(119,9,32,2,NULL),(120,12,32,2,NULL),(121,23,32,2,NULL),(122,26,32,2,NULL),(123,3,33,2,NULL),(124,5,33,2,NULL),(125,17,33,2,NULL),(126,8,33,2,NULL),(127,13,33,2,NULL),(128,10,33,2,NULL),(129,4,33,2,NULL),(130,6,33,2,NULL),(131,9,33,2,NULL),(132,12,33,2,NULL),(133,23,33,2,NULL),(134,26,33,2,NULL),(135,3,34,2,NULL),(136,5,34,2,NULL),(137,17,34,2,NULL),(138,8,34,2,NULL),(139,13,34,2,NULL),(140,10,34,2,NULL),(141,4,34,2,NULL),(142,6,34,2,NULL),(143,9,34,2,NULL),(144,12,34,2,NULL),(145,23,34,2,NULL),(146,26,34,2,NULL),(147,3,7,2,NULL),(148,5,7,2,NULL),(149,17,7,2,NULL),(150,3,10,2,NULL),(151,3,11,2,NULL),(152,5,10,2,NULL),(153,5,11,2,NULL),(154,17,10,2,NULL),(155,17,11,2,NULL),(156,8,10,2,NULL),(157,8,5,2,NULL),(158,13,10,2,NULL),(159,13,5,2,NULL),(160,10,10,2,NULL),(161,10,5,2,NULL),(162,4,10,2,NULL),(163,3,4,2,NULL),(164,6,10,2,NULL),(165,5,4,2,NULL),(166,9,10,2,NULL),(167,17,4,2,NULL),(168,12,10,2,NULL),(169,4,5,2,NULL),(170,23,10,2,NULL),(171,6,5,2,NULL),(172,26,10,2,NULL),(173,9,5,2,NULL),(174,3,16,2,NULL),(175,12,5,2,NULL),(176,5,16,2,NULL),(177,17,16,2,NULL),(178,8,16,2,NULL),(179,23,5,2,NULL),(180,13,16,2,NULL),(181,26,5,2,NULL),(182,10,16,2,NULL),(183,3,20,2,NULL),(184,4,16,2,NULL),(185,5,20,2,NULL),(186,6,16,2,NULL),(187,17,20,2,NULL),(188,9,16,2,NULL),(189,3,35,2,NULL),(190,12,16,2,NULL),(191,5,35,2,NULL),(192,23,16,2,NULL),(193,17,35,2,NULL),(194,26,16,2,NULL),(195,3,14,2,NULL),(196,23,7,2,NULL),(197,5,14,2,NULL),(198,26,7,2,NULL),(199,17,14,2,NULL),(200,23,11,2,NULL),(201,3,21,2,NULL),(202,26,11,2,NULL),(203,5,21,2,NULL),(204,23,4,2,NULL),(205,17,21,2,NULL),(206,26,4,2,NULL),(207,3,23,2,NULL),(208,23,35,2,NULL),(209,5,23,2,NULL),(210,26,35,2,NULL),(211,17,23,2,NULL),(212,23,14,2,NULL),(213,8,7,2,NULL),(214,26,14,2,NULL),(215,13,7,2,NULL),(216,23,21,2,NULL),(217,10,7,2,NULL),(218,26,21,2,NULL),(219,4,7,2,NULL),(220,23,23,2,NULL),(221,6,7,2,NULL),(222,26,23,2,NULL),(223,9,7,2,NULL),(224,8,20,2,NULL),(225,12,7,2,NULL),(226,13,20,2,NULL),(227,10,11,2,NULL),(228,10,20,2,NULL),(229,8,4,2,NULL),(230,4,20,2,NULL),(231,13,4,2,NULL),(232,6,20,2,NULL),(233,4,11,2,NULL),(234,9,20,2,NULL),(235,6,11,2,NULL),(236,12,20,2,NULL),(237,9,11,2,NULL),(238,8,35,2,NULL),(239,12,11,2,NULL),(240,13,35,2,NULL),(241,8,14,2,NULL),(242,10,35,2,NULL),(243,13,14,2,NULL),(244,4,35,2,NULL),(245,8,21,2,NULL),(246,6,35,2,NULL),(247,13,21,2,NULL),(248,9,35,2,NULL),(249,8,23,2,NULL),(250,12,35,2,NULL),(251,13,23,2,NULL),(252,10,4,2,NULL),(253,10,14,2,NULL),(254,10,21,2,NULL),(255,10,23,2,NULL),(256,11,8,2,NULL),(257,14,6,2,NULL),(258,15,6,2,NULL),(259,18,12,2,NULL),(260,34,8,2,NULL),(261,4,4,2,NULL),(262,6,4,2,NULL),(263,9,4,2,NULL),(264,12,4,2,NULL),(265,7,8,2,NULL),(266,22,4,2,NULL),(267,32,8,2,NULL),(268,4,14,2,NULL),(269,6,14,2,NULL),(270,9,14,2,NULL),(271,12,14,2,NULL),(272,4,21,2,NULL),(273,6,21,2,NULL),(274,9,21,2,NULL),(275,12,21,2,NULL),(276,4,23,2,NULL),(277,6,23,2,NULL),(278,9,23,2,NULL),(279,12,23,2,NULL),(280,16,17,2,NULL),(281,20,17,2,NULL),(282,25,17,2,NULL),(283,28,17,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (16,'android.permission.ACCESS_NETWORK_STATE'),(10,'android.permission.CHANGE_CONFIGURATION'),(14,'android.permission.DELETE_PACKAGES'),(11,'android.permission.INSTALL_PACKAGES'),(4,'android.permission.INTERNET'),(15,'android.permission.READ_CONTACTS'),(1,'android.permission.READ_EXTERNAL_STORAGE'),(8,'android.permission.READ_PHONE_STATE'),(2,'android.permission.READ_SMS'),(9,'android.permission.RECEIVE_BOOT_COMPLETED'),(7,'android.permission.RECEIVE_SMS'),(13,'android.permission.RESTART_PACKAGES'),(3,'android.permission.SEND_SMS'),(12,'android.permission.VIBRATE'),(18,'android.permission.WAKE_LOCK'),(5,'android.permission.WRITE_EXTERNAL_STORAGE'),(6,'android.permission.WRITE_SMS'),(19,'com.google.android.c2dm.permission.RECEIVE'),(20,'com.google.android.c2dm.permission.SEND'),(17,'com.software.application.permission.C2D_MESSAGE');
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
INSERT INTO `Permissions` VALUES (17,'s');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(5,NULL,NULL,'',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'',NULL,NULL,NULL),(8,NULL,NULL,'http://yandex.ru',NULL,NULL,NULL),(9,NULL,NULL,'(.*)',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(13,NULL,NULL,'(.*)&o=1',NULL,NULL,NULL),(14,NULL,NULL,'(.*)(.*)',NULL,NULL,NULL),(15,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(16,NULL,NULL,'(.*)(.*)&o=1',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,2,3),(9,2,4),(10,3,3),(11,2,7),(12,3,4),(13,2,8),(14,3,7),(15,2,9),(16,3,8),(17,2,10),(18,4,3),(19,4,4),(20,4,5),(21,4,7),(22,4,8),(23,5,16),(24,4,9),(25,5,3),(26,4,11),(27,5,4),(28,4,12),(29,5,5),(30,4,13),(31,5,7),(32,5,8),(33,5,9),(34,5,11),(35,5,14),(36,5,15),(37,6,17),(38,6,19),(39,6,2),(40,6,18),(41,6,3),(42,6,4),(43,6,5),(44,6,7),(45,6,8);
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

-- Dump completed on 2015-10-12  3:30:08
