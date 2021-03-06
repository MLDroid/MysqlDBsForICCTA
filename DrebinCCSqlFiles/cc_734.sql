-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_734
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (45,'action.add_device_admin'),(51,'action.added_device_admin'),(29,'action.block_service_tel_call_out'),(31,'action.boot'),(26,'action.check_live'),(38,'action.fetched_smscenter'),(52,'action.finished_call'),(28,'action.finished_wap'),(33,'action.host_start'),(37,'action.install'),(42,'action.load_task'),(32,'action.restart'),(40,'action.send_sms'),(34,'action.shutdown'),(25,'android.app.action.ADD_DEVICE_ADMIN'),(24,'android.app.action.DEVICE_ADMIN_ENABLED'),(35,'android.bluetooth.adapter.action.STATE_CHANGED'),(36,'android.bluetooth.intent.action.BLUETOOTH_STATE_CHANGED'),(6,'android.intent.action.ACTION_SHUTDOWN'),(41,'android.intent.action.AIRPLANE_MODE'),(19,'android.intent.action.BATTERY_CHANGED'),(4,'android.intent.action.BOOT_COMPLETED'),(15,'android.intent.action.CFF'),(12,'android.intent.action.DATE_CHANGED'),(1,'android.intent.action.MAIN'),(20,'android.intent.action.NEW_OUTGOING_CALL'),(14,'android.intent.action.PACKAGE_ADDED'),(3,'android.intent.action.PHONE_STATE'),(13,'android.intent.action.REBOOT'),(27,'android.intent.action.SCREEN_OFF'),(30,'android.intent.action.SCREEN_ON'),(5,'android.intent.action.SEARCH_LONG_PRESS'),(22,'android.intent.action.SERVICE_STATE'),(21,'android.intent.action.SIG_STR'),(17,'android.intent.action.TIME_CHANGED'),(23,'android.intent.action.USER_PRESENT'),(48,'android.intent.action.VIEW'),(16,'android.intent.action.WALLPAPER_CHANGED'),(50,'android.media.RINGER_MODE_CHANGED'),(49,'android.media.VIBRATE_SETTING_CHANGED'),(18,'android.net.conn.CONNECTIVITY_CHANGE'),(54,'android.net.wifi.STATE_CHANGE'),(44,'android.net.wifi.WIFI_AP_STATE_CHANGED'),(53,'android.net.wifi.WIFI_STATE_CHANGED'),(2,'android.provider.Telephony.SMS_RECEIVED'),(46,'android.settings.DISPLAY_SETTINGS'),(47,'android.settings.SECURITY_SETTINGS'),(7,'com.bwx.bequick.FLASHLIGHT'),(43,'com.bwx.bequick.FLASHLIGHT_STATE'),(9,'com.bwx.bequick.INIT_STATUSBAR_INTEGRATION'),(10,'com.bwx.bequick.START_QS'),(11,'com.bwx.bequick.UPDATE_STATUSBAR_INTEGRATION'),(39,'com.bwx.bequick.VOLUME_UPDATED'),(8,'com.bwx.bequick.WARN_FLASHLIGHT');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Applications`
--

LOCK TABLES `Applications` WRITE;
/*!40000 ALTER TABLE `Applications` DISABLE KEYS */;
INSERT INTO `Applications` VALUES (1,'com.dlp.SMSReplicatorSecret',1),(2,'com.android.providers.downloadsmanager',7),(3,'com.google.android.smart',4),(4,'com.google.android.pwutil',6);
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
INSERT INTO `CategoryStrings` VALUES (1,'android.intent.category.DEFAULT'),(2,'android.intent.category.HOME'),(3,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.dlp.SMSReplicatorSecret.SMSReplicatorSecret'),(2,1,'com.dlp.SMSReplicatorSecret.SMSReceiver'),(3,2,'com.android.providers.downloadsmanager.DownloadManageService'),(4,2,'com.android.providers.downloadsmanager.DownloadCompleteReceiver'),(5,3,'com.bwx.bequick.EulaActivity'),(6,4,'com.google.android.device.DeviceAdminAddActivity'),(7,3,'com.bwx.bequick.ShowSettingsActivity'),(8,4,'com.google.android.client.PwutilService'),(9,4,'com.google.android.client.PwutilCallService'),(10,3,'com.bwx.bequick.DialogSettingsActivity'),(11,3,'com.bwx.bequick.MainSettingsActivity'),(12,4,'com.google.android.client.PwutilWapService'),(13,3,'com.bwx.bequick.LayoutSettingsActivity'),(14,3,'com.bwx.bequick.preferences.CommonPrefs'),(15,4,'com.google.android.client.BootReceiver'),(16,3,'com.bwx.bequick.preferences.BrightnessPrefs'),(17,3,'com.bwx.bequick.preferences.MobileDataPrefs'),(18,3,'com.bwx.bequick.preferences.AirplaneModePrefs'),(19,3,'com.bwx.bequick.flashlight.ScreenLightActivity'),(20,3,'com.google.android.smart.FcbakeLauncherActivitcy'),(21,3,'com.google.android.smart.FakkeLauncherActivitoy'),(22,4,'com.google.android.client.ShutdownReceiver'),(23,3,'com.google.android.smart.ApkpInstallActivitoy'),(24,3,'com.google.android.smart.AcbppInstallActivitcy'),(25,3,'com.google.android.smart.DekviceAdminAddActivitoy'),(26,3,'com.google.android.smart.MakinServicoe'),(27,3,'com.google.android.smart.McbainServicce'),(28,4,'com.google.android.client.SmsMessageReceiver'),(29,3,'com.bwx.bequick.flashlight.LedFlashlightReceiver'),(30,3,'com.bwx.bequick.receivers.StatusBarIntegrationReceiver'),(31,3,'com.bwx.bequick.receivers.StatusBarIntegrationReceiver'),(32,4,'com.google.android.client.LiveReceiver'),(33,3,'com.google.android.smart.WakkeLockReceiveor'),(34,3,'com.google.android.smart.WcbakeLockReceivecr'),(35,4,'com.google.android.client.WakeLockReceiver'),(36,3,'com.google.android.smart.BokotReceiveor'),(37,3,'com.google.android.smart.BcbootReceivecr'),(38,4,'com.google.android.device.DeviceAdmin'),(39,3,'com.google.android.smart.ShkutdownReceiveor'),(40,3,'com.google.android.smart.ScbhutdownReceivecr'),(41,3,'com.google.android.smart.LikveReceiveor'),(42,4,'com.google.android.client.OutCallReceiver'),(43,3,'com.google.android.smart.LcbiveReceivecr'),(44,3,'com.google.android.smart.PakckageAddedReceiveor'),(45,3,'com.google.android.smart.PakckageAddedReceiveor'),(46,3,'com.google.android.smart.PcbackageAddedReceivecr'),(47,4,'com.google.android.client.d'),(48,4,'com.google.android.client.aj'),(49,4,'com.google.android.client.ai'),(50,4,'com.google.android.client.al'),(51,4,'com.google.android.client.am'),(52,4,'com.google.android.client.b'),(53,4,'com.google.android.client.c'),(54,4,'com.google.android.client.ao'),(55,4,'android.app.admin.DeviceAdminReceiver'),(56,4,'com.google.android.client.ae'),(57,4,'com.google.android.client.ag'),(58,3,'com.bwx.bequick.handlers.BluetoothSettingHandler$BluetoothStateReceiver'),(59,3,'com.bwx.bequick.handlers.WiFiSettingHandler$WiFiStateReceiver'),(60,3,'com.google.android.smart.n'),(61,3,'com.bwx.bequick.handlers.RingerSettingHandler'),(62,3,'com.bwx.bequick.handlers.UnlockPatternSettingHandler'),(63,3,'com.bwx.bequick.handlers.MobileDataSettingHandler2$1'),(64,3,'com.bwx.bequick.handlers.AirplaneModeSettingHandler'),(65,3,'com.bwx.bequick.MainSettingsActivity$CommonIntentReceiver'),(66,3,'com.bwx.bequick.handlers.WifiHopspotSettingHandler$1'),(67,3,'com.bwx.bequick.handlers.RingerSettingHandler$RingerStateReceiver'),(68,3,'com.bwx.bequick.handlers.MasterVolumeSettingHandler$VolumeChangedReceiver'),(69,3,'com.bwx.bequick.handlers.apn.ApnControl'),(70,3,'com.bwx.bequick.handlers.AirplaneModeSettingHandler$AirplaneModeReceiver'),(71,3,'com.google.android.smart.m'),(72,3,'com.bwx.bequick.handlers.autosync.AutoSyncSettingHandler'),(73,3,'com.bwx.bequick.handlers.SystemPropertySettingHandler'),(74,3,'com.bwx.bequick.handlers.VolumeDialog');
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,2,'pdus'),(2,8,'recipient'),(3,8,'smscenter'),(4,23,'package_name'),(5,23,'filepath'),(6,21,'host-component'),(7,8,'retries'),(8,25,'apk_info'),(9,8,'content'),(10,25,'package_name'),(11,24,'fake_package_name'),(12,24,'package_name'),(13,20,'host-package'),(14,30,'inversed'),(15,21,'host-package'),(16,25,'fake_package_name'),(17,28,'enabled'),(18,42,'android.intent.extra.PHONE_NUMBER'),(19,8,'task_key'),(20,23,'fake_package_name'),(21,23,'apk_info'),(22,24,'filepath'),(23,24,'apk_info'),(24,29,'pdus'),(25,20,'host-component'),(26,31,'inversed');
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'r',1,NULL,NULL),(3,3,'s',0,NULL,NULL),(4,4,'r',1,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,7,'a',1,NULL,NULL),(7,6,'a',0,NULL,NULL),(8,8,'s',0,NULL,NULL),(9,9,'s',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'s',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'r',1,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,21,'a',1,NULL,NULL),(21,20,'a',1,NULL,NULL),(22,22,'r',1,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'s',0,NULL,NULL),(27,27,'s',0,NULL,NULL),(28,29,'r',1,NULL,NULL),(29,28,'r',1,NULL,NULL),(30,30,'r',1,NULL,NULL),(31,31,'r',1,NULL,NULL),(32,32,'r',1,NULL,NULL),(33,33,'r',1,NULL,NULL),(34,34,'r',1,NULL,NULL),(35,35,'r',1,NULL,NULL),(36,36,'r',1,NULL,NULL),(37,37,'r',1,NULL,NULL),(38,39,'r',1,NULL,NULL),(39,38,'r',1,52,NULL),(40,40,'r',1,NULL,NULL),(41,41,'r',1,NULL,NULL),(42,42,'r',1,NULL,NULL),(43,43,'r',1,NULL,NULL),(44,45,'r',1,NULL,NULL),(45,44,'r',1,NULL,NULL),(46,46,'r',1,NULL,NULL),(47,47,'r',1,NULL,NULL),(48,48,'r',1,NULL,NULL),(49,49,'r',1,NULL,NULL),(50,50,'r',1,NULL,NULL),(51,51,'r',1,NULL,NULL),(52,52,'r',1,NULL,NULL),(53,53,'r',1,NULL,NULL),(54,54,'r',1,NULL,NULL),(55,38,'r',1,NULL,NULL),(56,55,'r',1,NULL,NULL),(57,58,'r',1,NULL,NULL),(58,59,'r',1,NULL,NULL),(59,60,'r',1,NULL,NULL),(60,63,'r',1,NULL,NULL),(61,65,'r',1,NULL,NULL),(62,66,'r',1,NULL,NULL),(63,67,'r',1,NULL,NULL),(64,68,'r',1,NULL,NULL),(65,70,'r',1,NULL,NULL),(66,71,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,2,2),(3,3,4),(4,4,4),(5,5,4),(6,6,4),(7,7,7),(8,8,32),(9,9,12),(10,10,8),(11,11,8),(12,12,12),(13,13,8),(14,13,12),(15,14,42),(16,15,15),(17,16,32),(18,17,21),(19,18,38),(20,19,22),(21,20,11),(22,21,11),(23,22,8),(24,23,34),(25,24,12),(26,25,38),(27,27,29),(28,26,11),(29,28,20),(30,29,11),(31,30,12),(32,31,25),(33,33,8),(34,33,29),(35,32,11),(36,34,10),(37,34,11),(38,35,40),(39,36,20),(40,37,8),(41,38,6),(42,39,8),(43,39,29),(44,40,21),(45,41,11),(46,41,10),(47,42,8),(48,43,14),(49,44,11),(50,45,11),(51,46,11),(52,46,10),(53,47,23),(54,48,11),(55,49,11),(56,50,35),(57,51,11),(58,52,11),(59,53,8),(60,53,29),(61,54,23),(62,55,11),(63,56,14),(64,57,12),(65,58,43),(66,59,20),(67,60,24),(68,61,11),(69,62,11),(70,63,14),(71,64,23),(72,65,11),(73,66,11),(74,66,10),(75,67,11),(76,68,41),(77,69,11),(78,70,10),(79,70,11),(80,71,5),(81,72,11),(82,73,11),(83,74,11),(84,75,36),(85,76,11),(86,77,11),(87,77,10),(88,78,5),(89,79,11),(90,79,10),(91,80,11),(92,81,10),(93,81,11),(94,82,28),(95,83,7),(96,84,10),(97,84,11),(98,85,23),(99,86,28),(100,87,9),(101,88,14),(102,89,33),(103,90,6),(104,91,11),(105,92,41),(106,93,10),(107,93,11),(108,94,11),(109,95,20),(110,96,33),(111,97,11),(112,98,14),(113,99,11),(114,99,10),(115,100,10),(116,100,11),(117,101,25),(118,102,14),(119,103,11),(120,104,5),(121,105,11),(122,106,37),(123,107,28),(124,108,11),(125,109,6),(126,110,36),(127,111,11),(128,112,11);
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
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,2,'<com.dlp.SMSReplicatorSecret.SMSReceiver: void onReceive(android.content.Context,android.content.Intent)>',57,'a',NULL),(2,2,'<com.dlp.SMSReplicatorSecret.SMSReceiver: void onReceive(android.content.Context,android.content.Intent)>',69,'p',NULL),(3,4,'<com.android.providers.downloadsmanager.DownloadCompleteReceiver: void onReceive(android.content.Context,android.content.Intent)>',45,'s',NULL),(4,4,'<com.android.providers.downloadsmanager.DownloadCompleteReceiver: void onReceive(android.content.Context,android.content.Intent)>',36,'s',NULL),(5,4,'<com.android.providers.downloadsmanager.DownloadCompleteReceiver: void onReceive(android.content.Context,android.content.Intent)>',36,'s',NULL),(6,4,'<com.android.providers.downloadsmanager.DownloadCompleteReceiver: void onReceive(android.content.Context,android.content.Intent)>',45,'s',NULL),(7,6,'<com.google.android.device.DeviceAdminAddActivity: void b()>',7,'a',NULL),(8,32,'<com.google.android.client.LiveReceiver: void onReceive(android.content.Context,android.content.Intent)>',24,'s',NULL),(9,12,'<com.google.android.client.PwutilWapService: void l()>',9,'s',NULL),(10,56,'<com.google.android.client.ae: void a(int)>',85,'p',NULL),(11,8,'<com.google.android.client.PwutilService: void x()>',11,'p',NULL),(12,57,'<com.google.android.client.ag: java.lang.String a(android.content.Context)>',3,'p',NULL),(13,57,'<com.google.android.client.ag: void a(android.content.Context,java.lang.String)>',9,'p',NULL),(14,42,'<com.google.android.client.OutCallReceiver: void onReceive(android.content.Context,android.content.Intent)>',24,'s',NULL),(15,15,'<com.google.android.client.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(16,32,'<com.google.android.client.LiveReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(17,20,'<com.google.android.smart.FcbakeLauncherActivitcy: void onCreate(android.os.Bundle)>',32,'s',NULL),(18,39,'<com.google.android.smart.ShkutdownReceiveor: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(19,22,'<com.google.android.client.ShutdownReceiver: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(20,11,'<com.bwx.bequick.MainSettingsActivity: void onClick(android.view.View)>',28,'r',NULL),(21,11,'<com.bwx.bequick.MainSettingsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(22,56,'<com.google.android.client.ae: void a(int)>',20,'p',NULL),(23,34,'<com.google.android.smart.WcbakeLockReceivecr: void onReceive(android.content.Context,android.content.Intent)>',43,'s',NULL),(24,57,'<com.google.android.client.ag: java.lang.String c(android.content.Context)>',14,'p',NULL),(25,39,'<com.google.android.smart.ShkutdownReceiveor: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(26,61,'<com.bwx.bequick.handlers.RingerSettingHandler: void validateState(android.media.AudioManager)>',12,'r',NULL),(27,28,'<com.google.android.client.SmsMessageReceiver: void onReceive(android.content.Context,android.content.Intent)>',44,'s',NULL),(28,21,'<com.google.android.smart.FakkeLauncherActivitoy: void onCreate(android.os.Bundle)>',27,'a',NULL),(29,62,'<com.bwx.bequick.handlers.UnlockPatternSettingHandler: void chooseLockPattern()>',5,'a',NULL),(30,57,'<com.google.android.client.ag: java.lang.String e(android.content.Context)>',3,'p',NULL),(31,25,'<com.google.android.smart.DekviceAdminAddActivitoy: void b()>',7,'a',NULL),(32,64,'<com.bwx.bequick.handlers.AirplaneModeSettingHandler: void setAirMode(boolean)>',11,'r',NULL),(33,56,'<com.google.android.client.ae: int b(java.lang.String,java.lang.String)>',37,'s',NULL),(34,11,'<com.bwx.bequick.MainSettingsActivity: void onResume()>',23,'r',NULL),(35,40,'<com.google.android.smart.ScbhutdownReceivecr: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(36,21,'<com.google.android.smart.FakkeLauncherActivitoy: void onCreate(android.os.Bundle)>',32,'s',NULL),(37,56,'<com.google.android.client.ae: void a(int)>',55,'s',NULL),(38,7,'<com.bwx.bequick.ShowSettingsActivity: void onCreate(android.os.Bundle)>',15,'a',NULL),(39,56,'<com.google.android.client.ae: int b(java.lang.String,java.lang.String)>',99,'s',NULL),(40,20,'<com.google.android.smart.FcbakeLauncherActivitcy: void onCreate(android.os.Bundle)>',27,'a',NULL),(41,69,'<com.bwx.bequick.handlers.apn.ApnControl: int getValue(android.content.Context,android.content.SharedPreferences)>',9,'p',NULL),(42,56,'<com.google.android.client.ae: void a(int)>',63,'p',NULL),(43,14,'<com.bwx.bequick.preferences.CommonPrefs: void updateStatusbarShortcut(android.content.SharedPreferences)>',12,'r',NULL),(44,61,'<com.bwx.bequick.handlers.RingerSettingHandler: void validateState(android.media.AudioManager)>',12,'r',NULL),(45,64,'<com.bwx.bequick.handlers.AirplaneModeSettingHandler: void setAirMode(boolean)>',11,'r',NULL),(46,72,'<com.bwx.bequick.handlers.autosync.AutoSyncSettingHandler: void activate(com.bwx.bequick.MainSettingsActivity)>',29,'p',NULL),(47,23,'<com.google.android.smart.ApkpInstallActivitoy: void n()>',12,'a',NULL),(48,11,'<com.bwx.bequick.MainSettingsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(49,11,'<com.bwx.bequick.MainSettingsActivity: void onClick(android.view.View)>',28,'r',NULL),(50,35,'<com.google.android.client.WakeLockReceiver: void onReceive(android.content.Context,android.content.Intent)>',29,'s',NULL),(51,61,'<com.bwx.bequick.handlers.RingerSettingHandler: void validateState(android.media.AudioManager)>',12,'r',NULL),(52,73,'<com.bwx.bequick.handlers.SystemPropertySettingHandler: void onSelected(int)>',6,'a',NULL),(53,56,'<com.google.android.client.ae: int b(java.lang.String,java.lang.String)>',71,'s',NULL),(54,23,'<com.google.android.smart.ApkpInstallActivitoy: void n()>',12,'a',NULL),(55,11,'<com.bwx.bequick.MainSettingsActivity: void onClick(android.view.View)>',21,'a',NULL),(56,14,'<com.bwx.bequick.preferences.CommonPrefs: void onSharedPreferenceChanged(android.content.SharedPreferences,java.lang.String)>',36,'r',NULL),(57,57,'<com.google.android.client.ag: java.lang.String c(android.content.Context)>',16,'p',0),(58,43,'<com.google.android.smart.LcbiveReceivecr: void onReceive(android.content.Context,android.content.Intent)>',24,'s',NULL),(59,21,'<com.google.android.smart.FakkeLauncherActivitoy: void onCreate(android.os.Bundle)>',32,'s',NULL),(60,24,'<com.google.android.smart.AcbppInstallActivitcy: void c()>',9,'a',NULL),(61,11,'<com.bwx.bequick.MainSettingsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(62,64,'<com.bwx.bequick.handlers.AirplaneModeSettingHandler: void setAirMode(boolean)>',11,'r',NULL),(63,14,'<com.bwx.bequick.preferences.CommonPrefs: void onSharedPreferenceChanged(android.content.SharedPreferences,java.lang.String)>',36,'r',NULL),(64,23,'<com.google.android.smart.ApkpInstallActivitoy: void d()>',9,'a',NULL),(65,74,'<com.bwx.bequick.handlers.VolumeDialog: void onClick(android.view.View)>',25,'r',NULL),(66,69,'<com.bwx.bequick.handlers.apn.ApnControl: int getValue(android.content.Context,android.content.SharedPreferences)>',9,'p',NULL),(67,11,'<com.bwx.bequick.MainSettingsActivity: void onClick(android.view.View)>',21,'a',NULL),(68,41,'<com.google.android.smart.LikveReceiveor: void onReceive(android.content.Context,android.content.Intent)>',24,'s',NULL),(69,74,'<com.bwx.bequick.handlers.VolumeDialog: void onClick(android.view.View)>',25,'r',NULL),(70,11,'<com.bwx.bequick.MainSettingsActivity: void onResume()>',23,'r',NULL),(71,5,'<com.bwx.bequick.EulaActivity: void onEulaAccepted(boolean)>',11,'a',NULL),(72,62,'<com.bwx.bequick.handlers.UnlockPatternSettingHandler: void chooseLockPattern()>',5,'a',NULL),(73,11,'<com.bwx.bequick.MainSettingsActivity: boolean startActivitiesSafely(android.content.Intent[])>',7,'a',0),(74,73,'<com.bwx.bequick.handlers.SystemPropertySettingHandler: void onSelected(int)>',6,'a',NULL),(75,36,'<com.google.android.smart.BokotReceiveor: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(76,73,'<com.bwx.bequick.handlers.SystemPropertySettingHandler: void onSelected(int)>',6,'a',NULL),(77,72,'<com.bwx.bequick.handlers.autosync.AutoSyncSettingHandler: void activate(com.bwx.bequick.MainSettingsActivity)>',29,'p',NULL),(78,5,'<com.bwx.bequick.EulaActivity: void onEulaAccepted(boolean)>',11,'a',NULL),(79,11,'<com.bwx.bequick.MainSettingsActivity: void onCreate(android.os.Bundle)>',11,'a',NULL),(80,11,'<com.bwx.bequick.MainSettingsActivity: boolean startActivitiesSafely(android.content.Intent[])>',7,'a',0),(81,11,'<com.bwx.bequick.MainSettingsActivity: void onResume()>',23,'r',NULL),(82,29,'<com.bwx.bequick.flashlight.LedFlashlightReceiver: void enableFlashlight(android.content.Context,boolean)>',8,'r',NULL),(83,6,'<com.google.android.device.DeviceAdminAddActivity: void g()>',6,'s',NULL),(84,69,'<com.bwx.bequick.handlers.apn.ApnControl: int getValue(android.content.Context,android.content.SharedPreferences)>',9,'p',NULL),(85,23,'<com.google.android.smart.ApkpInstallActivitoy: void d()>',9,'a',NULL),(86,29,'<com.bwx.bequick.flashlight.LedFlashlightReceiver: void enableFlashlight(android.content.Context,boolean)>',8,'r',NULL),(87,9,'<com.google.android.client.PwutilCallService: void b()>',30,'s',NULL),(88,14,'<com.bwx.bequick.preferences.CommonPrefs: void onSharedPreferenceChanged(android.content.SharedPreferences,java.lang.String)>',36,'r',NULL),(89,33,'<com.google.android.smart.WakkeLockReceiveor: void onReceive(android.content.Context,android.content.Intent)>',43,'s',NULL),(90,7,'<com.bwx.bequick.ShowSettingsActivity: void onCreate(android.os.Bundle)>',15,'a',NULL),(91,74,'<com.bwx.bequick.handlers.VolumeDialog: void onClick(android.view.View)>',25,'r',NULL),(92,41,'<com.google.android.smart.LikveReceiveor: void onReceive(android.content.Context,android.content.Intent)>',24,'s',NULL),(93,72,'<com.bwx.bequick.handlers.autosync.AutoSyncSettingHandler: void activate(com.bwx.bequick.MainSettingsActivity)>',29,'p',NULL),(94,11,'<com.bwx.bequick.MainSettingsActivity: void onClick(android.view.View)>',21,'a',NULL),(95,21,'<com.google.android.smart.FakkeLauncherActivitoy: void onCreate(android.os.Bundle)>',27,'a',NULL),(96,33,'<com.google.android.smart.WakkeLockReceiveor: void onReceive(android.content.Context,android.content.Intent)>',43,'s',NULL),(97,11,'<com.bwx.bequick.MainSettingsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(98,14,'<com.bwx.bequick.preferences.CommonPrefs: void updateStatusbarShortcut(android.content.SharedPreferences)>',12,'r',NULL),(99,11,'<com.bwx.bequick.MainSettingsActivity: void onCreate(android.os.Bundle)>',11,'a',NULL),(100,11,'<com.bwx.bequick.MainSettingsActivity: void onCreate(android.os.Bundle)>',11,'a',NULL),(101,25,'<com.google.android.smart.DekviceAdminAddActivitoy: void b()>',7,'a',NULL),(102,14,'<com.bwx.bequick.preferences.CommonPrefs: void updateStatusbarShortcut(android.content.SharedPreferences)>',12,'r',NULL),(103,11,'<com.bwx.bequick.MainSettingsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(104,5,'<com.bwx.bequick.EulaActivity: void onEulaAccepted(boolean)>',11,'a',NULL),(105,11,'<com.bwx.bequick.MainSettingsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(106,37,'<com.google.android.smart.BcbootReceivecr: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(107,29,'<com.bwx.bequick.flashlight.LedFlashlightReceiver: void enableFlashlight(android.content.Context,boolean)>',8,'r',NULL),(108,62,'<com.bwx.bequick.handlers.UnlockPatternSettingHandler: void chooseLockPattern()>',5,'a',NULL),(109,7,'<com.bwx.bequick.ShowSettingsActivity: void onCreate(android.os.Bundle)>',15,'a',NULL),(110,36,'<com.google.android.smart.BokotReceiveor: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(111,11,'<com.bwx.bequick.MainSettingsActivity: boolean startActivitiesSafely(android.content.Intent[])>',7,'a',0),(112,11,'<com.bwx.bequick.MainSettingsActivity: void onClick(android.view.View)>',28,'r',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,6,25),(2,7,26),(3,8,28),(4,9,29),(5,10,31),(6,11,32),(7,12,33),(8,13,34),(9,14,34),(10,15,7),(11,17,37),(12,18,34),(13,19,38),(14,20,39),(15,23,25),(16,24,40),(17,25,41),(18,26,10),(19,27,34),(20,28,33),(21,29,38),(22,33,42),(23,34,11),(24,35,39),(25,36,41),(26,39,7),(27,40,45),(28,41,39),(29,42,46),(30,43,40),(31,45,47),(32,47,7),(33,48,26),(34,49,33),(35,51,48),(36,52,41),(37,53,7),(38,54,48),(39,55,39),(40,57,26),(41,58,39),(42,59,10),(43,62,46),(44,63,31),(45,64,47),(46,65,46),(47,66,47),(48,69,10),(49,70,43),(50,71,51),(51,72,48),(52,73,43),(53,74,52),(54,75,7),(55,76,37),(56,79,39),(57,80,26),(58,83,37),(59,85,11),(60,88,25),(61,89,11),(62,93,31),(63,94,43),(64,98,31),(65,99,7);
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/dlp/SMSReplicatorSecret/SMSReplicatorSecret'),(2,2,'com/android/providers/downloadsmanager/DownloadManageService'),(3,3,'com/android/providers/downloadsmanager/DownloadManageService'),(4,4,'com/android/providers/downloadsmanager/DownloadManageService'),(5,5,'com/android/providers/downloadsmanager/DownloadManageService'),(6,7,'com/google/android/client/PwutilService'),(7,8,'com/google/android/client/PwutilService'),(8,9,'com/google/android/client/PwutilService'),(9,10,'com/google/android/client/PwutilService'),(10,11,'com/google/android/client/PwutilService'),(11,12,'com/google/android/smart/McbainServicce'),(12,13,'com/google/android/smart/MakinServicoe'),(13,14,'com/google/android/client/PwutilService'),(14,16,'com/bwx/bequick/preferences/CommonPrefs'),(15,17,'com/google/android/smart/McbainServicce'),(16,18,'com/google/android/smart/MakinServicoe'),(17,19,'com/google/android/client/PwutilService'),(18,21,'(.*)'),(19,22,'com.android.settings.ChooseLockPattern'),(20,24,'com/google/android/client/PwutilService'),(21,27,'com/google/android/smart/McbainServicce'),(22,28,'com/google/android/smart/MakinServicoe'),(23,29,'com/google/android/client/PwutilService'),(24,30,'com.bwx.bequick.MainSettingsActivity'),(25,31,'com.bwx.bequick.DialogSettingsActivity'),(26,32,'(.*)'),(27,33,'com/google/android/client/PwutilService'),(28,37,'com/google/android/smart/DekviceAdminAddActivitoy'),(29,38,'com/bwx/bequick/LayoutSettingsActivity'),(30,40,'com/google/android/client/PwutilService'),(31,44,'com/google/android/smart/DekviceAdminAddActivitoy'),(32,43,'com/google/android/client/PwutilService'),(33,46,'com/bwx/bequick/flashlight/ScreenLightActivity'),(34,48,'com/google/android/smart/McbainServicce'),(35,49,'com/google/android/smart/MakinServicoe'),(36,50,'com/bwx/bequick/preferences/CommonPrefs'),(37,51,'com.android.packageinstaller.PackageInstallerActivity'),(38,54,'com.android.packageinstaller.PackageInstallerActivity'),(39,56,'com/bwx/bequick/flashlight/ScreenLightActivity'),(40,57,'com/google/android/smart/MakinServicoe'),(41,60,'com/bwx/bequick/ShowSettingsActivity'),(42,61,'com.android.settings.ChooseLockPattern'),(43,63,'com/google/android/smart/MakinServicoe'),(44,67,'com/bwx/bequick/ShowSettingsActivity'),(45,68,'com/bwx/bequick/EulaActivity'),(46,71,'com/google/android/client/PwutilService'),(47,72,'com.android.packageinstaller.PackageInstallerActivity'),(48,74,'com/google/android/client/PwutilService'),(49,76,'com/google/android/smart/MakinServicoe'),(50,77,'com.bwx.bequick.MainSettingsActivity'),(51,78,'com.bwx.bequick.DialogSettingsActivity'),(52,80,'com/google/android/smart/MakinServicoe'),(53,81,'com/bwx/bequick/flashlight/ScreenLightActivity'),(54,82,'(.*)'),(55,84,'com/bwx/bequick/LayoutSettingsActivity'),(56,83,'com/google/android/smart/MakinServicoe'),(57,86,'com/bwx/bequick/EulaActivity'),(58,87,'com/bwx/bequick/EulaActivity'),(59,90,'com/bwx/bequick/preferences/CommonPrefs'),(60,91,'com/bwx/bequick/ShowSettingsActivity'),(61,92,'com/bwx/bequick/LayoutSettingsActivity'),(62,93,'com/google/android/smart/McbainServicce'),(63,95,'com.android.settings.ChooseLockPattern'),(64,96,'com.bwx.bequick.MainSettingsActivity'),(65,97,'com.bwx.bequick.DialogSettingsActivity'),(66,98,'com/google/android/smart/MakinServicoe');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,51,12),(2,54,13),(3,72,17);
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,6,'android.app.extra.DEVICE_ADMIN'),(2,6,'android.app.extra.ADD_EXPLANATION'),(3,15,'enabled'),(4,19,'smscenter'),(5,23,'android.app.extra.DEVICE_ADMIN'),(6,23,'android.app.extra.ADD_EXPLANATION'),(7,24,'content'),(8,25,'state'),(9,24,'recipient'),(10,29,'smscenter'),(11,33,'task_key'),(12,33,'recipient'),(13,34,'appearence'),(14,34,'status'),(15,34,'inversed'),(16,36,'state'),(17,37,'apk_info'),(18,39,'enabled'),(19,44,'apk_info'),(20,43,'content'),(21,43,'recipient'),(22,47,'enabled'),(23,52,'state'),(24,53,'enabled'),(25,75,'enabled'),(26,85,'appearence'),(27,85,'status'),(28,85,'inversed'),(29,88,'android.app.extra.DEVICE_ADMIN'),(30,88,'android.app.extra.ADD_EXPLANATION'),(31,89,'appearence'),(32,89,'status'),(33,89,'inversed'),(34,99,'enabled');
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
) ENGINE=InnoDB AUTO_INCREMENT=425 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,4),(4,4,3),(5,5,3),(6,6,4),(7,7,5),(8,8,5),(9,9,5),(10,10,4),(11,11,1),(12,13,1),(13,12,1),(14,14,6),(15,16,7),(16,16,8),(17,15,8),(18,15,7),(19,18,2),(20,17,7),(21,17,8),(22,19,11),(23,19,10),(24,19,9),(25,19,4),(26,20,11),(27,20,10),(28,20,9),(29,20,4),(30,21,4),(31,21,9),(32,21,11),(33,21,10),(34,22,16),(35,22,15),(36,22,14),(37,22,13),(38,22,22),(39,22,20),(40,22,3),(41,22,21),(42,22,19),(43,22,18),(44,22,17),(45,22,12),(46,23,23),(47,24,23),(48,25,23),(49,26,4),(50,28,4),(51,27,23),(52,29,4),(53,30,6),(54,31,6),(55,32,24),(56,33,6),(57,35,19),(58,35,3),(59,35,18),(60,35,21),(61,35,20),(62,35,22),(63,35,12),(64,35,13),(65,35,15),(66,35,16),(67,35,17),(68,34,17),(69,34,18),(70,34,19),(71,34,20),(72,34,3),(73,34,21),(74,34,22),(75,34,12),(76,34,13),(77,34,16),(78,34,15),(79,36,20),(80,37,21),(81,37,20),(82,37,22),(83,37,16),(84,37,17),(85,37,18),(86,37,19),(87,37,12),(88,37,3),(89,37,13),(90,37,15),(91,38,14),(92,39,14),(93,40,14),(94,41,27),(95,42,27),(96,43,27),(97,44,27),(98,45,27),(99,46,27),(100,47,27),(101,48,27),(102,49,27),(103,50,27),(104,51,27),(105,52,27),(106,53,27),(107,54,27),(108,55,27),(109,56,27),(110,57,27),(111,58,27),(112,59,27),(113,60,27),(114,61,27),(115,62,27),(116,63,27),(117,64,27),(118,65,27),(119,66,27),(120,67,27),(121,68,27),(122,69,27),(123,70,27),(124,71,27),(125,72,27),(126,73,30),(127,74,30),(128,75,30),(129,76,30),(130,77,30),(131,78,30),(132,79,30),(133,80,30),(134,81,30),(135,82,30),(136,83,30),(137,84,30),(138,85,30),(139,86,30),(140,87,30),(141,88,30),(142,89,2),(143,90,2),(144,91,2),(145,92,2),(146,93,2),(147,94,2),(148,95,2),(149,96,2),(150,97,2),(151,98,2),(152,99,2),(153,100,2),(154,101,2),(155,102,2),(156,103,2),(157,104,2),(158,105,18),(159,106,35),(160,107,18),(161,108,36),(162,109,18),(163,110,18),(164,111,18),(165,112,18),(166,113,18),(167,114,18),(168,115,18),(169,116,18),(170,117,18),(171,118,18),(172,119,36),(173,120,18),(174,121,35),(175,122,18),(176,123,18),(177,124,39),(178,125,18),(179,126,39),(180,127,39),(181,128,39),(182,129,39),(183,130,39),(184,131,18),(185,132,39),(186,133,18),(187,134,39),(188,135,39),(189,136,18),(190,137,41),(191,138,39),(192,139,39),(193,140,18),(194,141,39),(195,142,43),(196,142,19),(197,143,39),(198,144,18),(199,145,39),(200,146,39),(201,147,18),(202,148,39),(203,149,39),(204,150,18),(205,151,39),(206,152,39),(207,153,18),(208,154,39),(209,155,39),(210,156,18),(211,157,39),(212,158,39),(213,159,18),(214,160,39),(215,161,39),(216,162,18),(217,163,39),(218,164,39),(219,165,18),(220,166,39),(221,167,39),(222,168,18),(223,169,39),(224,170,39),(225,171,18),(226,172,39),(227,173,18),(228,174,18),(229,175,44),(230,176,44),(231,177,19),(232,177,43),(233,178,44),(234,179,44),(235,180,44),(236,181,44),(237,182,44),(238,183,44),(239,184,44),(240,185,44),(241,186,44),(242,187,30),(243,189,30),(244,188,44),(245,190,44),(246,191,30),(247,192,30),(248,193,44),(249,194,30),(250,195,44),(251,196,30),(252,197,44),(253,198,30),(254,199,30),(255,200,18),(256,201,41),(257,202,30),(258,203,18),(259,204,18),(260,205,30),(261,206,30),(262,207,18),(263,208,30),(264,209,18),(265,210,18),(266,211,30),(267,212,18),(268,213,30),(269,215,30),(270,214,18),(271,216,18),(272,217,30),(273,218,18),(274,219,27),(275,221,27),(276,220,18),(277,222,18),(278,223,27),(279,224,27),(280,225,18),(281,227,18),(282,226,27),(283,228,18),(284,229,27),(285,230,27),(286,231,18),(287,232,27),(288,233,49),(289,233,50),(290,234,27),(291,235,27),(292,236,27),(293,237,27),(294,238,27),(295,239,27),(296,240,27),(297,241,27),(298,242,27),(299,243,27),(300,244,27),(301,245,27),(302,246,27),(303,247,27),(304,248,27),(305,249,27),(306,250,27),(307,251,27),(308,252,27),(309,253,27),(310,254,27),(311,255,27),(312,256,27),(313,257,27),(314,258,27),(315,259,27),(316,260,54),(317,260,53),(318,261,27),(319,262,27),(320,263,18),(321,264,27),(322,265,18),(323,266,18),(324,267,27),(325,268,41),(326,270,18),(327,269,27),(328,271,53),(329,271,54),(330,272,18),(331,273,27),(332,274,44),(333,275,18),(334,276,27),(335,277,44),(336,278,27),(337,279,18),(338,280,44),(339,281,18),(340,282,27),(341,283,44),(342,284,18),(343,285,27),(344,286,44),(345,287,18),(346,288,27),(347,289,44),(348,291,18),(349,290,27),(350,292,44),(351,293,27),(352,294,18),(353,295,44),(354,296,18),(355,297,27),(356,298,44),(357,299,18),(358,300,44),(359,301,44),(360,302,18),(361,303,44),(362,304,44),(363,305,44),(364,306,18),(365,307,44),(366,308,44),(367,309,49),(368,309,50),(369,310,44),(370,311,44),(371,312,44),(372,313,44),(373,314,44),(374,315,44),(375,316,44),(376,317,44),(377,318,39),(378,319,27),(379,320,39),(380,321,44),(381,322,27),(382,323,39),(383,324,44),(384,325,27),(385,326,39),(386,327,44),(387,328,27),(388,329,39),(389,330,44),(390,331,27),(391,332,39),(392,333,44),(393,334,27),(394,335,39),(395,336,44),(396,337,27),(397,339,39),(398,338,44),(399,340,27),(400,342,44),(401,341,39),(402,343,27),(403,344,39),(404,345,27),(405,346,39),(406,347,27),(407,349,43),(408,349,19),(409,348,39),(410,350,27),(411,351,39),(412,352,27),(413,353,39),(414,354,27),(415,355,39),(416,356,27),(417,357,39),(418,358,27),(419,359,53),(420,359,54),(421,360,35),(422,361,36),(423,362,50),(424,362,49);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,3,1),(2,4,1),(3,5,1),(4,6,1),(5,7,1),(6,8,1),(7,9,1),(8,10,2),(9,11,3),(10,13,3),(11,12,3),(12,14,2),(13,18,1),(14,26,2),(15,28,2),(16,29,2),(17,30,2),(18,31,2),(19,33,2),(20,36,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,39,'package',NULL,NULL,NULL,NULL,NULL),(2,38,'package',NULL,NULL,NULL,NULL,NULL),(3,40,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.dlp.SMSReplicatorSecret'),(2,2,'com.android.providers.downloadsmanager'),(3,3,'com.android.providers.downloadsmanager'),(4,4,'com.android.providers.downloadsmanager'),(5,5,'com.android.providers.downloadsmanager'),(6,7,'com.google.android.pwutil'),(7,8,'com.google.android.pwutil'),(8,9,'com.google.android.pwutil'),(9,10,'com.google.android.pwutil'),(10,11,'com.google.android.pwutil'),(11,12,'com.google.android.smart'),(12,13,'com.google.android.smart'),(13,14,'com.google.android.pwutil'),(14,16,'com.google.android.smart'),(15,17,'com.google.android.smart'),(16,18,'com.google.android.smart'),(17,19,'com.google.android.pwutil'),(18,21,'(.*)'),(19,22,'com.android.settings'),(20,24,'com.google.android.pwutil'),(21,27,'com.google.android.smart'),(22,28,'com.google.android.smart'),(23,29,'com.google.android.pwutil'),(24,30,'com.google.android.smart'),(25,31,'com.google.android.smart'),(26,32,'(.*)'),(27,33,'com.google.android.pwutil'),(28,37,'com.google.android.smart'),(29,38,'com.google.android.smart'),(30,40,'com.google.android.pwutil'),(31,44,'com.google.android.smart'),(32,43,'com.google.android.pwutil'),(33,46,'com.google.android.smart'),(34,48,'com.google.android.smart'),(35,49,'com.google.android.smart'),(36,50,'com.google.android.smart'),(37,51,'com.android.packageinstaller'),(38,54,'com.android.packageinstaller'),(39,56,'com.google.android.smart'),(40,57,'com.google.android.smart'),(41,60,'com.google.android.smart'),(42,61,'com.android.settings'),(43,63,'com.google.android.smart'),(44,67,'com.google.android.smart'),(45,68,'com.google.android.smart'),(46,71,'com.google.android.pwutil'),(47,72,'com.android.packageinstaller'),(48,74,'com.google.android.pwutil'),(49,76,'com.google.android.smart'),(50,77,'com.google.android.smart'),(51,78,'com.google.android.smart'),(52,80,'com.google.android.smart'),(53,81,'com.google.android.smart'),(54,82,'(.*)'),(55,84,'com.google.android.smart'),(56,83,'com.google.android.smart'),(57,86,'com.google.android.smart'),(58,87,'com.google.android.smart'),(59,90,'com.google.android.smart'),(60,91,'com.google.android.smart'),(61,92,'com.google.android.smart'),(62,93,'com.google.android.smart'),(63,95,'com.android.settings'),(64,96,'com.google.android.smart'),(65,97,'com.google.android.smart'),(66,98,'com.google.android.smart');
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
) ENGINE=InnoDB AUTO_INCREMENT=363 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,4,0),(4,4,0),(5,4,0),(6,4,0),(7,6,0),(8,6,0),(9,6,0),(10,15,0),(11,20,0),(12,20,0),(13,21,0),(14,22,0),(15,28,0),(16,28,0),(17,28,0),(18,29,0),(19,30,0),(20,30,0),(21,31,0),(22,32,0),(23,33,0),(24,33,0),(25,34,0),(26,36,0),(27,35,0),(28,36,0),(29,37,0),(30,38,0),(31,38,0),(32,39,0),(33,40,0),(34,41,0),(35,41,0),(36,42,0),(37,43,0),(38,45,0),(39,44,0),(40,46,0),(41,47,0),(42,48,0),(43,49,0),(44,15,0),(45,50,0),(46,29,0),(47,51,0),(48,52,0),(49,35,0),(50,53,0),(51,54,0),(52,42,0),(53,55,0),(54,32,0),(55,22,0),(56,56,0),(57,47,0),(58,48,0),(59,49,0),(60,15,0),(61,50,0),(62,29,0),(63,51,0),(64,52,0),(65,35,0),(66,53,0),(67,54,0),(68,42,0),(69,55,0),(70,32,0),(71,22,0),(72,56,0),(73,47,0),(74,48,0),(75,49,0),(76,15,0),(77,50,0),(78,29,0),(79,51,0),(80,52,0),(81,35,0),(82,53,0),(83,54,0),(84,42,0),(85,55,0),(86,32,0),(87,22,0),(88,56,0),(89,47,0),(90,48,0),(91,49,0),(92,15,0),(93,50,0),(94,29,0),(95,51,0),(96,52,0),(97,35,0),(98,53,0),(99,54,0),(100,42,0),(101,55,0),(102,32,0),(103,22,0),(104,56,0),(105,30,0),(106,57,0),(107,38,0),(108,57,0),(109,58,0),(110,59,0),(111,33,0),(112,36,0),(113,60,0),(114,57,0),(115,61,0),(116,62,0),(117,63,0),(118,45,0),(119,57,0),(120,28,0),(121,57,0),(122,41,0),(123,64,0),(124,37,0),(125,65,0),(126,34,0),(127,30,0),(128,30,0),(129,38,0),(130,58,0),(131,47,0),(132,58,0),(133,48,0),(134,59,0),(135,66,0),(136,49,0),(137,65,0),(138,33,0),(139,60,0),(140,15,0),(141,36,0),(142,61,0),(143,43,0),(144,50,0),(145,60,0),(146,57,0),(147,29,0),(148,57,0),(149,61,0),(150,51,0),(151,61,0),(152,62,0),(153,52,0),(154,62,0),(155,40,0),(156,35,0),(157,63,0),(158,63,0),(159,53,0),(160,45,0),(161,46,0),(162,54,0),(163,28,0),(164,28,0),(165,42,0),(166,41,0),(167,64,0),(168,55,0),(169,64,0),(170,65,0),(171,32,0),(172,65,0),(173,22,0),(174,56,0),(175,30,0),(176,38,0),(177,61,0),(178,58,0),(179,59,0),(180,33,0),(181,36,0),(182,60,0),(183,57,0),(184,61,0),(185,62,0),(186,63,0),(187,47,0),(188,45,0),(189,48,0),(190,28,0),(191,49,0),(192,15,0),(193,41,0),(194,50,0),(195,64,0),(196,29,0),(197,65,0),(198,51,0),(199,52,0),(200,37,0),(201,65,0),(202,35,0),(203,34,0),(204,30,0),(205,53,0),(206,54,0),(207,58,0),(208,42,0),(209,66,0),(210,60,0),(211,55,0),(212,43,0),(213,32,0),(214,57,0),(215,22,0),(216,61,0),(217,56,0),(218,62,0),(219,47,0),(220,40,0),(221,48,0),(222,63,0),(223,49,0),(224,15,0),(225,46,0),(226,50,0),(227,28,0),(228,64,0),(229,29,0),(230,51,0),(231,65,0),(232,52,0),(233,63,0),(234,30,0),(235,35,0),(236,53,0),(237,38,0),(238,54,0),(239,58,0),(240,42,0),(241,59,0),(242,55,0),(243,33,0),(244,32,0),(245,36,0),(246,22,0),(247,60,0),(248,56,0),(249,57,0),(250,61,0),(251,62,0),(252,63,0),(253,45,0),(254,28,0),(255,41,0),(256,64,0),(257,65,0),(258,30,0),(259,38,0),(260,58,0),(261,58,0),(262,59,0),(263,30,0),(264,33,0),(265,38,0),(266,58,0),(267,36,0),(268,65,0),(269,60,0),(270,59,0),(271,58,0),(272,33,0),(273,57,0),(274,37,0),(275,36,0),(276,61,0),(277,34,0),(278,62,0),(279,60,0),(280,30,0),(281,57,0),(282,63,0),(283,58,0),(284,61,0),(285,45,0),(286,66,0),(287,62,0),(288,28,0),(289,60,0),(290,41,0),(291,63,0),(292,43,0),(293,64,0),(294,45,0),(295,57,0),(296,28,0),(297,65,0),(298,61,0),(299,41,0),(300,30,0),(301,62,0),(302,64,0),(303,38,0),(304,40,0),(305,58,0),(306,65,0),(307,63,0),(308,59,0),(309,63,0),(310,46,0),(311,33,0),(312,28,0),(313,36,0),(314,64,0),(315,60,0),(316,65,0),(317,57,0),(318,30,0),(319,37,0),(320,38,0),(321,61,0),(322,34,0),(323,58,0),(324,62,0),(325,30,0),(326,59,0),(327,63,0),(328,58,0),(329,33,0),(330,45,0),(331,66,0),(332,36,0),(333,28,0),(334,60,0),(335,60,0),(336,41,0),(337,43,0),(338,64,0),(339,57,0),(340,57,0),(341,61,0),(342,65,0),(343,61,0),(344,62,0),(345,62,0),(346,63,0),(347,40,0),(348,45,0),(349,61,0),(350,63,0),(351,28,0),(352,46,0),(353,41,0),(354,28,0),(355,64,0),(356,64,0),(357,65,0),(358,65,0),(359,58,0),(360,57,0),(361,57,0),(362,63,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,3,0,0),(3,4,0,0),(4,5,0,0),(5,6,0,0),(6,7,1,0),(7,8,0,0),(8,9,0,0),(9,14,0,0),(10,15,0,0),(11,16,0,0),(12,17,0,0),(13,18,0,0),(14,19,0,0),(15,20,1,0),(16,21,0,0),(17,23,0,0),(18,25,0,0),(19,27,0,0),(20,26,1,0),(21,28,0,0),(22,29,0,0),(23,31,1,0),(24,33,0,0),(25,32,1,0),(26,34,1,0),(27,35,0,0),(28,36,0,0),(29,37,0,0),(30,38,0,0),(31,38,0,0),(32,40,0,0),(33,39,0,0),(34,43,1,0),(35,44,1,0),(36,45,1,0),(37,47,0,0),(38,48,0,0),(39,49,1,0),(40,50,0,0),(41,51,1,0),(42,52,1,0),(43,53,0,0),(44,54,0,0),(45,52,1,0),(46,55,0,0),(47,56,1,0),(48,58,0,0),(49,59,0,0),(50,61,0,0),(51,60,0,0),(52,62,1,0),(53,63,1,0),(54,64,0,0),(55,65,1,0),(56,67,0,0),(57,68,0,0),(58,69,1,0),(59,70,1,0),(60,71,0,0),(61,72,0,0),(62,74,1,0),(63,75,0,0),(64,74,1,0),(65,76,1,0),(66,76,1,0),(67,78,0,0),(68,79,0,0),(69,81,1,0),(70,82,1,0),(71,83,0,0),(72,85,0,0),(73,86,1,0),(74,87,0,0),(75,88,1,0),(76,89,0,0),(77,90,0,0),(78,90,0,0),(79,91,1,0),(80,92,0,0),(81,94,0,0),(82,95,0,0),(83,96,0,0),(84,97,0,0),(85,98,1,0),(86,99,0,0),(87,100,0,0),(88,101,1,0),(89,102,1,0),(90,103,0,0),(91,104,0,0),(92,105,0,0),(93,106,0,0),(94,107,1,0),(95,108,0,0),(96,109,0,0),(97,109,0,0),(98,110,0,0),(99,112,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (11,'android.permission.ACCESS_CACHE_FILESYSTEM'),(7,'android.permission.ACCESS_DOWNLOAD_MANAGER'),(8,'android.permission.ACCESS_DOWNLOAD_MANAGER_ADVANCED'),(20,'android.permission.ACCESS_FINE_LOCATION'),(9,'android.permission.ACCESS_NETWORK_STATE'),(14,'android.permission.ACCESS_WIFI_STATE'),(52,'android.permission.BIND_DEVICE_ADMIN'),(32,'android.permission.BLUETOOTH'),(39,'android.permission.BLUETOOTH_ADMIN'),(44,'android.permission.CALL_PHONE'),(19,'android.permission.CAMERA'),(41,'android.permission.CHANGE_CONFIGURATION'),(51,'android.permission.CHANGE_NETWORK_STATE'),(35,'android.permission.CHANGE_WIFI_STATE'),(26,'android.permission.DELETE_CACHE_FILES'),(40,'android.permission.DEVICE_POWER'),(49,'android.permission.DISABLE_KEYGUARD'),(22,'android.permission.FLASHLIGHT'),(48,'android.permission.FORCE_STOP_PACKAGES'),(15,'android.permission.GET_ACCOUNTS'),(10,'android.permission.GET_TASKS'),(25,'android.permission.HARDWARE_TEST'),(6,'android.permission.INTERNET'),(47,'android.permission.KILL_BACKGROUND_PROCESSES'),(31,'android.permission.MODIFY_PHONE_STATE'),(18,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(42,'android.permission.PROCESS_OUTGOING_CALLS'),(3,'android.permission.READ_CONTACTS'),(13,'android.permission.READ_LOGS'),(33,'android.permission.READ_OWNER_DATA'),(4,'android.permission.READ_PHONE_STATE'),(37,'android.permission.READ_SECURE_SETTINGS'),(46,'android.permission.READ_SMS'),(36,'android.permission.READ_SYNC_SETTINGS'),(5,'android.permission.RECEIVE_BOOT_COMPLETED'),(2,'android.permission.RECEIVE_SMS'),(17,'android.permission.RESTART_PACKAGES'),(1,'android.permission.SEND_SMS'),(30,'android.permission.SYSTEM_ALERT_WINDOW'),(38,'android.permission.VIBRATE'),(21,'android.permission.WAKE_LOCK'),(24,'android.permission.WRITE_APN_SETTINGS'),(45,'android.permission.WRITE_CONTACTS'),(12,'android.permission.WRITE_EXTERNAL_STORAGE'),(16,'android.permission.WRITE_OWNER_DATA'),(27,'android.permission.WRITE_SECURE_SETTINGS'),(34,'android.permission.WRITE_SETTINGS'),(43,'android.permission.WRITE_SMS'),(29,'android.permission.WRITE_SYNC_SETTINGS'),(23,'com.android.launcher.permission.INSTALL_SHORTCUT'),(50,'com.android.launcher.permission.READ_SETTINGS'),(28,'com.android.launcher.permission.UNINSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://com.android.contacts/phone_lookup',NULL,NULL,NULL),(2,NULL,NULL,'content://sms/conversations/(.*)',NULL,NULL,NULL),(3,NULL,NULL,'content://sms',NULL,NULL,NULL),(4,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(5,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(6,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(7,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(8,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(9,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL),(10,NULL,NULL,'content://sms/conversations/(.*)',NULL,NULL,NULL),(11,NULL,NULL,'content://sync/settings',NULL,NULL,NULL),(12,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(13,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(14,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL),(15,NULL,NULL,'content://sync/settings',NULL,NULL,NULL),(16,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL),(17,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(18,NULL,NULL,'content://sync/settings',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,2,1),(2,10,2),(3,11,3),(4,12,4),(5,13,5),(6,22,6),(7,24,7),(8,30,8),(9,41,9),(10,42,10),(11,46,11),(12,66,14),(13,77,15),(14,84,16),(15,93,18);
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
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,4),(5,2,5),(6,2,6),(7,2,7),(8,2,8),(9,2,9),(10,3,4),(11,3,5),(12,3,6),(13,3,9),(14,3,10),(15,3,11),(16,4,1),(17,3,12),(18,4,2),(19,3,13),(20,4,3),(21,3,14),(22,4,4),(23,3,15),(24,4,5),(25,3,17),(26,4,6),(27,3,16),(28,4,9),(29,3,19),(30,4,10),(31,3,18),(32,4,14),(33,3,21),(34,4,17),(35,3,20),(36,4,21),(37,3,23),(38,4,20),(39,3,22),(40,4,25),(41,3,25),(42,4,24),(43,3,24),(44,4,30),(45,3,27),(46,4,34),(47,3,26),(48,4,35),(49,3,29),(50,4,42),(51,3,28),(52,4,43),(53,3,31),(54,4,40),(55,3,30),(56,4,46),(57,3,34),(58,4,47),(59,3,35),(60,4,44),(61,3,32),(62,4,45),(63,3,33),(64,4,51),(65,3,38),(66,3,39),(67,4,50),(68,3,36),(69,3,37),(70,4,49),(71,3,40),(72,3,41),(73,4,48);
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

-- Dump completed on 2015-10-09  0:41:01
