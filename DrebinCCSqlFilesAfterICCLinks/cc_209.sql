-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_209
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (26,'(.*).SEND_SMS'),(16,'android.appwidget.action.APPWIDGET_UPDATE'),(44,'android.bluetooth.adapter.action.STATE_CHANGED'),(43,'android.bluetooth.intent.action.BLUETOOTH_STATE_CHANGED'),(34,'android.intent.action.AIRPLANE_MODE'),(23,'android.intent.action.BATTERY_CHANGED'),(31,'android.intent.action.BATTERY_LOW'),(28,'android.intent.action.BATTERY_OKAY'),(10,'android.intent.action.BOOT_COMPLETED'),(40,'android.intent.action.CHOOSER'),(24,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(11,'android.intent.action.PICK_SAVE_BATTERY_KILLER_PRO'),(12,'android.intent.action.SAVE_BATTERY_PRO_IGNORE_LIST'),(13,'android.intent.action.SAVE_BATTERY_SETTINGS'),(29,'android.intent.action.SCREEN_OFF'),(30,'android.intent.action.SCREEN_ON'),(14,'android.intent.action.SEARCH_LONG_PRESS'),(5,'android.intent.action.VIEW'),(36,'android.media.RINGER_MODE_CHANGED'),(35,'android.media.VIBRATE_SETTING_CHANGED'),(46,'android.net.conn.CONNECTIVITY_CHANGE'),(39,'android.net.wifi.STATE_CHANGE'),(45,'android.net.wifi.WIFI_AP_STATE_CHANGED'),(38,'android.net.wifi.WIFI_STATE_CHANGED'),(3,'android.provider.Telephony.SMS_RECEIVED'),(27,'android.settings.APPLICATION_DETAILS_SETTINGS'),(41,'android.settings.DISPLAY_SETTINGS'),(25,'android.settings.LOCATION_SOURCE_SETTINGS'),(42,'android.settings.SECURITY_SETTINGS'),(4,'com.android.vending.INSTALL_REFERRER'),(18,'com.bwx.bequick.FLASHLIGHT'),(32,'com.bwx.bequick.FLASHLIGHT_STATE'),(20,'com.bwx.bequick.INIT_STATUSBAR_INTEGRATION'),(21,'com.bwx.bequick.START_QS'),(22,'com.bwx.bequick.UPDATE_STATUSBAR_INTEGRATION'),(37,'com.bwx.bequick.VOLUME_UPDATED'),(19,'com.bwx.bequick.WARN_FLASHLIGHT'),(8,'com.extend.battery.intent.http.SHOW'),(7,'com.itframework.installer.updater.CHECK'),(6,'com.itframework.installer.updater.UPDATE'),(33,'com.savebattery.killer.pro.ACTION_LOAD_FINISH'),(15,'com.savebattery.killer.pro.action.AUTO_KILL'),(17,'com.savebattery.killer.pro.action.KILLALL'),(2,'com.zanalytics.sms.MESSAGE_RECEIVED');
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
INSERT INTO `Applications` VALUES (1,'com.extend.battery',83),(2,'com.extend.battery',91),(3,'com.extend.battery',89),(4,'com.batteryupgradeandroid.batteryupdate.killer',4);
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
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.BROWSABLE'),(2,'android.intent.category.DEFAULT'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.extend.battery.Splash'),(2,1,'com.extend.battery.TabHandler'),(3,1,'com.extend.battery.TaskKillerActivity'),(4,1,'com.extend.battery.UninstallerActivity'),(5,1,'com.extend.battery.SecurityAuditActivity'),(6,1,'com.extend.battery.InstallerActivity'),(7,1,'com.extend.battery.FeaturesActivity'),(8,1,'com.extend.battery.BoosterActivity'),(9,1,'com.extend.battery.BatteryActivity'),(10,1,'com.extend.battery.RatingActivity'),(11,1,'com.extend.battery.BatteryService'),(12,1,'com.zanalytics.sms.SmsReceiverService'),(13,1,'com.zanalytics.sms.SmsReceiver'),(14,1,'com.tapjoy.TapjoyReferralTracker'),(15,2,'com.extend.battery.Splash'),(16,2,'com.extend.battery.Splash'),(17,2,'com.extend.battery.TabHandler'),(18,2,'com.extend.battery.TabHandler'),(19,2,'com.extend.battery.TaskKillerActivity'),(20,2,'com.extend.battery.TaskKillerActivity'),(21,2,'com.extend.battery.UninstallerActivity'),(22,2,'com.extend.battery.UninstallerActivity'),(23,2,'com.extend.battery.SecurityAuditActivity'),(24,2,'com.extend.battery.SecurityAuditActivity'),(25,2,'com.extend.battery.InstallerActivity'),(26,2,'com.extend.battery.FeaturesActivity'),(27,2,'com.extend.battery.FeaturesActivity'),(28,3,'com.extend.battery.Splash'),(29,2,'com.extend.battery.BoosterActivity'),(30,2,'com.extend.battery.BoosterActivity'),(31,2,'com.extend.battery.BatteryActivity'),(32,2,'com.extend.battery.RatingActivity'),(33,2,'com.extend.battery.RatingActivity'),(34,2,'com.itframework.installer.util.InstallNonMarketFromUrlActivity'),(35,2,'com.itframework.installer.util.InstallNonMarketFromUrlActivity'),(36,3,'com.extend.battery.TabHandler'),(37,3,'com.extend.battery.TaskKillerActivity'),(38,3,'com.extend.battery.UninstallerActivity'),(39,2,'com.itframework.installer.util.NonMarketDialogActivity'),(40,2,'com.extend.battery.BatteryService'),(41,3,'com.extend.battery.SecurityAuditActivity'),(42,2,'com.itframework.installer.util.InstallWorker'),(43,2,'com.zanalytics.sms.SmsReceiverService'),(44,3,'com.extend.battery.InstallerActivity'),(45,2,'com.itframework.installer.updater.UpdateReceiver'),(46,2,'com.itframework.installer.updater.UpdateReceiver'),(47,3,'com.extend.battery.FeaturesActivity'),(48,3,'com.extend.battery.BoosterActivity'),(49,3,'com.extend.battery.BatteryActivity'),(50,3,'com.extend.battery.RatingActivity'),(51,2,'com.extend.battery.NotificationReceiver'),(52,2,'com.extend.battery.NotificationReceiver'),(53,3,'com.extend.battery.BatteryService'),(54,3,'com.zanalytics.sms.SmsReceiverService'),(55,2,'com.extend.battery.BootReceiver'),(56,3,'com.extend.battery.NotificationReceiver'),(57,4,'com.savebattery.killer.pro.EasyTaskKiller'),(58,3,'com.extend.battery.BootReceiver'),(59,2,'com.zanalytics.sms.SmsReceiver'),(60,3,'com.zanalytics.sms.SmsReceiver'),(61,4,'com.savebattery.killer.pro.IgnoreList'),(62,3,'com.tapjoy.TapjoyReferralTracker'),(63,4,'com.savebattery.killer.pro.AddToIgnoreList'),(64,4,'com.savebattery.killer.pro.PreferencesActivity'),(65,4,'com.bwx.bequick.EulaActivity'),(66,4,'com.bwx.bequick.ShowSettingsActivity'),(67,4,'com.bwx.bequick.DialogSettingsActivity'),(68,4,'com.bwx.bequick.MainSettingsActivity'),(69,4,'com.bwx.bequick.LayoutSettingsActivity'),(70,4,'com.bwx.bequick.preferences.CommonPrefs'),(71,4,'com.bwx.bequick.preferences.BrightnessPrefs'),(72,4,'com.bwx.bequick.preferences.MobileDataPrefs'),(73,4,'com.bwx.bequick.preferences.AirplaneModePrefs'),(74,4,'com.bwx.bequick.flashlight.ScreenLightActivity'),(75,4,'com.savebattery.killer.pro.OfferDialog'),(76,4,'com.savebattery.killer.pro.AutoKillService'),(77,4,'com.savebattery.killer.pro.widget.WidgetUpdateService'),(78,4,'com.savebattery.killer.pro.BackgroundSubmitService'),(79,4,'com.savebattery.killer.pro.AutoStartReceiver'),(80,4,'com.savebattery.killer.pro.widget.EasyWidgetProvider'),(81,4,'com.savebattery.killer.pro.widget.KillAllEventReceiver'),(82,4,'com.bwx.bequick.flashlight.LedFlashlightReceiver'),(83,4,'com.bwx.bequick.receivers.StatusBarIntegrationReceiver'),(84,4,'com.savebattery.killer.pro.BaseStarReceiver'),(85,1,'com.extend.battery.g'),(86,1,'com.extend.battery.i'),(87,1,'com.extend.battery.j'),(88,1,'com.zanalytics.sms.c'),(89,1,'com.extend.battery.aw'),(90,1,'com.zanalytics.sms.j'),(91,1,'com.extend.battery.s'),(92,1,'com.zanalytics.sms.a'),(93,1,'com.extend.battery.ay'),(94,1,'com.extend.battery.f'),(95,4,'com.savebattery.killer.pro.EasyTaskKiller$CommonIntentReceiver'),(96,4,'com.savebattery.killer.pro.EasyTaskKiller$LoadFinishReceiver'),(97,4,'com.bwx.bequick.handlers.WiFiSettingHandler$WiFiStateReceiver'),(98,4,'com.bwx.bequick.handlers.MobileDataSettingHandler2$1'),(99,4,'com.bwx.bequick.handlers.BluetoothSettingHandler$BluetoothStateReceiver'),(100,4,'com.savebattery.killer.pro.EasyTaskKiller$ScreenStatusReceiver'),(101,4,'com.bwx.bequick.MainSettingsActivity$CommonIntentReceiver'),(102,4,'com.bwx.bequick.handlers.WifiHopspotSettingHandler$1'),(103,4,'com.bwx.bequick.handlers.RingerSettingHandler$RingerStateReceiver'),(104,4,'android.appwidget.AppWidgetProvider'),(105,4,'com.savebattery.killer.pro.widget.EasyWidgetProvider$ScreenStatusReceiver'),(106,4,'com.bwx.bequick.handlers.MasterVolumeSettingHandler$VolumeChangedReceiver'),(107,4,'com.bwx.bequick.handlers.AirplaneModeSettingHandler$AirplaneModeReceiver'),(108,4,'com.savebattery.killer.pro.EasyTaskKiller$5'),(109,2,'com.extend.battery.ba'),(110,2,'com.extend.battery.d'),(111,2,'com.extend.battery.c'),(112,4,'com.bwx.bequick.handlers.apn.ApnControl'),(113,2,'com.extend.battery.a'),(114,4,'com.savebattery.killer.pro.EasyTaskKiller$2'),(115,2,'com.zanalytics.sms.c'),(116,4,'com.savebattery.killer.pro.EasyTaskKiller$13'),(117,4,'com.savebattery.killer.pro.IgnoreList$2'),(118,2,'com.extend.battery.bb'),(119,4,'com.bwx.bequick.handlers.UnlockPatternSettingHandler'),(120,2,'com.zanalytics.sms.j'),(121,2,'com.zanalytics.sms.a'),(122,2,'com.extend.battery.k'),(123,2,'com.extend.battery.features.s'),(124,4,'com.savebattery.killer.pro.PreferencesActivity$3'),(125,4,'com.bwx.bequick.handlers.SystemPropertySettingHandler'),(126,4,'com.bwx.bequick.handlers.autosync.AutoSyncSettingHandler'),(127,2,'com.itframework.installer.a.b'),(128,4,'com.bwx.bequick.handlers.VolumeDialog'),(129,4,'com.bwx.bequick.handlers.AirplaneModeSettingHandler'),(130,4,'com.bwx.bequick.handlers.RingerSettingHandler');
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,13,'pdus'),(2,9,'technology'),(3,81,'js'),(4,85,'enabled'),(5,44,'filename'),(6,44,'finishedText'),(7,44,'downloadingWait'),(8,37,'forceDownload'),(9,44,'forceDownload'),(10,44,'downloadingTicker'),(11,44,'finishedTicker'),(12,37,'finishedTitle'),(13,44,'showNotifications'),(14,37,'url'),(15,44,'finishedTitle'),(16,44,'downloadingToast'),(17,44,'downloadingProgress'),(18,37,'downloadingProgress'),(19,44,'url'),(20,44,'downloadingTitle'),(21,37,'downloadStarting'),(22,37,'finishedText'),(23,37,'downloadingWait'),(24,44,'callbackIntent'),(25,37,'finishedTicker'),(26,33,'technology'),(27,37,'filename'),(28,37,'downloadingTitle'),(29,62,'pdus'),(30,37,'downloadingToast'),(31,37,'callbackIntent'),(32,37,'downloadingTicker'),(33,48,'URL'),(34,54,'clickevent'),(35,44,'downloadStarting'),(36,87,'referrer'),(37,83,'appWidgetId'),(38,86,'inversed'),(39,81,'offer');
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
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'s',0,NULL,NULL),(12,12,'s',0,NULL,NULL),(13,13,'r',1,NULL,NULL),(14,14,'r',1,NULL,NULL),(15,16,'a',1,NULL,NULL),(16,15,'a',1,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',1,NULL,NULL),(29,30,'a',0,NULL,NULL),(30,29,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,31,'a',0,NULL,NULL),(33,31,'a',0,NULL,NULL),(34,32,'a',0,NULL,NULL),(35,33,'a',0,NULL,NULL),(36,35,'a',1,NULL,NULL),(37,34,'a',1,NULL,NULL),(38,36,'a',0,NULL,NULL),(39,37,'a',0,NULL,NULL),(40,38,'a',0,NULL,NULL),(41,39,'a',0,NULL,NULL),(42,40,'s',0,NULL,NULL),(43,41,'a',0,NULL,NULL),(44,42,'s',0,NULL,NULL),(45,43,'s',0,NULL,NULL),(46,43,'s',0,NULL,NULL),(47,44,'a',0,NULL,NULL),(48,45,'r',1,NULL,NULL),(49,46,'r',1,NULL,NULL),(50,47,'a',0,NULL,NULL),(51,48,'a',0,NULL,NULL),(52,49,'a',0,NULL,NULL),(53,50,'a',0,NULL,NULL),(54,52,'r',1,NULL,NULL),(55,51,'r',1,NULL,NULL),(56,53,'s',0,NULL,NULL),(57,54,'s',0,NULL,NULL),(58,55,'r',1,NULL,NULL),(59,56,'r',1,NULL,NULL),(60,57,'a',1,NULL,NULL),(61,58,'r',1,NULL,NULL),(62,59,'r',1,NULL,NULL),(63,60,'r',1,NULL,NULL),(64,61,'a',1,NULL,NULL),(65,62,'r',1,NULL,NULL),(66,63,'a',0,NULL,NULL),(67,64,'a',1,NULL,NULL),(68,65,'a',0,NULL,NULL),(69,66,'a',1,NULL,NULL),(70,67,'a',0,NULL,NULL),(71,68,'a',0,NULL,NULL),(72,69,'a',0,NULL,NULL),(73,70,'a',0,NULL,NULL),(74,71,'a',0,NULL,NULL),(75,72,'a',0,NULL,NULL),(76,73,'a',0,NULL,NULL),(77,74,'a',0,NULL,NULL),(78,75,'a',0,NULL,NULL),(79,76,'s',1,NULL,NULL),(80,77,'s',0,NULL,NULL),(81,78,'s',0,NULL,NULL),(82,79,'r',1,NULL,NULL),(83,80,'r',1,NULL,NULL),(84,81,'r',1,NULL,NULL),(85,82,'r',1,NULL,NULL),(86,83,'r',1,NULL,NULL),(87,84,'r',1,NULL,NULL),(88,85,'r',1,NULL,NULL),(89,86,'r',1,NULL,NULL),(90,87,'r',1,NULL,NULL),(91,88,'r',1,NULL,NULL),(92,95,'r',1,NULL,NULL),(93,96,'r',1,NULL,NULL),(94,97,'r',1,NULL,NULL),(95,98,'r',1,NULL,NULL),(96,99,'r',1,NULL,NULL),(97,100,'r',1,NULL,NULL),(98,101,'r',1,NULL,NULL),(99,102,'r',1,NULL,NULL),(100,103,'r',1,NULL,NULL),(101,104,'r',1,NULL,NULL),(102,105,'r',1,NULL,NULL),(103,106,'r',1,NULL,NULL),(104,107,'r',1,NULL,NULL),(105,110,'r',1,NULL,NULL),(106,111,'r',1,NULL,NULL),(107,113,'r',1,NULL,NULL),(108,115,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=218 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,13),(3,3,4),(4,4,9),(5,4,4),(6,5,8),(7,5,9),(8,5,6),(9,5,4),(10,5,5),(11,6,4),(12,6,6),(13,6,5),(14,6,9),(15,7,9),(16,8,8),(17,8,9),(18,9,9),(19,9,5),(20,10,9),(21,10,5),(22,11,5),(23,12,2),(24,13,4),(25,14,2),(26,15,13),(27,16,6),(28,17,1),(29,18,5),(30,18,6),(31,18,8),(32,18,4),(33,18,9),(34,19,9),(35,19,3),(36,20,9),(37,20,4),(38,21,6),(39,21,9),(40,22,1),(41,23,1),(42,24,13),(43,25,9),(44,25,5),(45,25,4),(46,25,6),(47,26,9),(48,27,13),(49,28,6),(50,29,6),(51,29,9),(52,30,5),(53,30,6),(54,30,9),(55,30,4),(56,31,5),(57,31,4),(58,31,9),(59,31,6),(60,32,8),(61,32,9),(62,33,9),(63,33,8),(64,34,4),(65,34,9),(66,35,1),(67,36,13),(68,37,9),(69,37,4),(70,38,9),(71,38,8),(72,39,9),(73,39,3),(74,40,5),(75,41,1),(76,42,1),(77,43,1),(78,44,13),(79,45,60),(80,45,71),(81,46,44),(82,47,58),(83,48,60),(84,49,16),(85,50,70),(86,50,71),(87,50,60),(88,51,33),(89,52,71),(90,52,60),(91,53,71),(92,53,60),(93,54,60),(94,54,70),(95,54,71),(96,55,60),(97,55,71),(98,56,73),(99,57,24),(100,58,60),(101,58,71),(102,59,60),(103,59,71),(104,60,60),(105,60,70),(106,60,71),(107,61,25),(108,62,71),(109,62,70),(110,62,60),(111,63,60),(112,63,71),(113,64,22),(114,64,33),(115,65,18),(116,66,33),(117,66,24),(118,67,62),(119,68,60),(120,69,60),(121,69,71),(122,70,33),(123,70,25),(124,71,82),(125,72,16),(126,73,64),(127,74,60),(128,74,71),(129,75,22),(130,76,71),(131,76,60),(132,77,30),(133,77,33),(134,78,60),(135,78,71),(136,79,73),(137,80,33),(138,80,20),(139,81,71),(140,81,60),(141,82,62),(142,83,60),(143,83,71),(144,84,33),(145,84,24),(146,84,25),(147,84,22),(148,85,60),(149,85,71),(150,86,80),(151,87,60),(152,87,71),(153,88,30),(154,88,22),(155,88,24),(156,88,25),(157,88,33),(158,89,22),(159,89,33),(160,90,16),(161,91,33),(162,91,30),(163,92,30),(164,93,54),(165,94,71),(166,94,60),(167,95,62),(168,96,60),(169,96,71),(170,97,37),(171,98,71),(172,98,60),(173,99,16),(174,100,71),(175,100,60),(176,101,22),(177,101,24),(178,101,25),(179,101,33),(180,102,60),(181,102,71),(182,103,60),(183,103,71),(184,104,44),(185,105,83),(186,106,71),(187,106,60),(188,107,67),(189,108,60),(190,108,71),(191,109,60),(192,109,71),(193,110,60),(194,110,71),(195,110,70),(196,111,37),(197,112,44),(198,113,60),(199,113,71),(200,114,85),(201,115,60),(202,115,71),(203,116,69),(204,117,71),(205,117,60),(206,118,70),(207,118,71),(208,118,60),(209,119,70),(210,119,71),(211,119,60),(212,120,70),(213,120,60),(214,120,71),(215,121,68),(216,122,71),(217,122,60);
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
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,89,'<com.extend.battery.aw: void run()>',73,'a',NULL),(2,90,'<com.zanalytics.sms.j: int a(android.content.Context)>',5,'p',NULL),(3,4,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',23,'a',NULL),(4,4,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(5,91,'<com.extend.battery.s: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(6,92,'<com.zanalytics.sms.a: void m()>',3,'s',NULL),(7,9,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(8,8,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',8,'a',NULL),(9,5,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(10,5,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(11,5,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(12,2,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',9,'s',NULL),(13,4,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',23,'a',NULL),(14,2,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',9,'s',NULL),(15,90,'<com.zanalytics.sms.j: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(16,6,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(17,1,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(18,91,'<com.extend.battery.s: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(19,93,'<com.extend.battery.ay: void onClick(android.view.View)>',6,'a',NULL),(20,4,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(21,6,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(22,89,'<com.extend.battery.aw: void run()>',73,'a',NULL),(23,89,'<com.extend.battery.aw: void run()>',205,'a',NULL),(24,90,'<com.zanalytics.sms.j: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(25,92,'<com.zanalytics.sms.a: void m()>',3,'s',NULL),(26,9,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(27,90,'<com.zanalytics.sms.j: int a(android.content.Context)>',5,'p',NULL),(28,6,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(29,6,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(30,94,'<com.extend.battery.f: void onClick(android.view.View)>',8,'a',NULL),(31,94,'<com.extend.battery.f: void onClick(android.view.View)>',8,'a',NULL),(32,8,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(33,8,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',8,'a',NULL),(34,4,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(35,89,'<com.extend.battery.aw: void run()>',139,'a',NULL),(36,13,'<com.zanalytics.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',127,'s',NULL),(37,4,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(38,8,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(39,93,'<com.extend.battery.ay: void onClick(android.view.View)>',6,'a',NULL),(40,5,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(41,89,'<com.extend.battery.aw: void run()>',205,'a',NULL),(42,1,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(43,89,'<com.extend.battery.aw: void run()>',139,'a',NULL),(44,13,'<com.zanalytics.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',127,'s',NULL),(45,57,'<com.savebattery.killer.pro.EasyTaskKiller: boolean onOptionsItemSelected(android.view.MenuItem)>',20,'a',NULL),(46,42,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',72,'a',NULL),(47,55,'<com.extend.battery.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(48,108,'<com.savebattery.killer.pro.EasyTaskKiller$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(49,109,'<com.extend.battery.ba: void run()>',212,'a',NULL),(50,57,'<com.savebattery.killer.pro.EasyTaskKiller: void startAutoKillService()>',9,'s',NULL),(51,31,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(52,57,'<com.savebattery.killer.pro.EasyTaskKiller: boolean onOptionsItemSelected(android.view.MenuItem)>',24,'a',NULL),(53,112,'<com.bwx.bequick.handlers.apn.ApnControl: void restorePreferredApn(android.content.Context,android.content.SharedPreferences)>',20,'p',NULL),(54,57,'<com.savebattery.killer.pro.EasyTaskKiller: void onCreate(android.os.Bundle)>',34,'a',NULL),(55,114,'<com.savebattery.killer.pro.EasyTaskKiller$2: void onClick(android.view.View)>',6,'a',NULL),(56,70,'<com.bwx.bequick.preferences.CommonPrefs: void onSharedPreferenceChanged(android.content.SharedPreferences,java.lang.String)>',36,'r',NULL),(57,23,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(58,112,'<com.bwx.bequick.handlers.apn.ApnControl: void setApnState(android.content.Context,android.content.SharedPreferences,boolean)>',15,'p',NULL),(59,68,'<com.bwx.bequick.MainSettingsActivity: boolean startActivitiesSafely(android.content.Intent[])>',6,'a',0),(60,116,'<com.savebattery.killer.pro.EasyTaskKiller$13: java.lang.Void doInBackground(java.lang.Void[])>',14,'r',NULL),(61,25,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(62,68,'<com.bwx.bequick.MainSettingsActivity: void onResume()>',23,'r',NULL),(63,112,'<com.bwx.bequick.handlers.apn.ApnControl: long getPreferedApnIdFromProvider(android.content.Context)>',5,'p',NULL),(64,21,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(65,17,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',8,'s',NULL),(66,23,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(67,59,'<com.zanalytics.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',120,'s',NULL),(68,57,'<com.savebattery.killer.pro.EasyTaskKiller: void findApplication(java.lang.String,java.lang.String)>',14,'a',NULL),(69,112,'<com.bwx.bequick.handlers.apn.ApnControl: long getFirstCurrentApnId(android.content.Context)>',6,'p',NULL),(70,25,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(71,79,'<com.savebattery.killer.pro.AutoStartReceiver: void onReceive(android.content.Context,android.content.Intent)>',18,'s',0),(72,109,'<com.extend.battery.ba: void run()>',118,'a',NULL),(73,117,'<com.savebattery.killer.pro.IgnoreList$2: void onClick(android.view.View)>',7,'a',0),(74,57,'<com.savebattery.killer.pro.EasyTaskKiller: void showSettingPage()>',3,'a',NULL),(75,21,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',16,'a',NULL),(76,57,'<com.savebattery.killer.pro.EasyTaskKiller: void onClick(android.view.View)>',38,'a',NULL),(77,29,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',16,'a',NULL),(78,112,'<com.bwx.bequick.handlers.apn.ApnControl: void restorePreferredApn(android.content.Context,android.content.SharedPreferences)>',24,'p',NULL),(79,70,'<com.bwx.bequick.preferences.CommonPrefs: void updateStatusbarShortcut(android.content.SharedPreferences)>',12,'r',NULL),(80,118,'<com.extend.battery.bb: void onClick(android.view.View)>',6,'a',NULL),(81,119,'<com.bwx.bequick.handlers.UnlockPatternSettingHandler: void chooseLockPattern()>',8,'a',NULL),(82,120,'<com.zanalytics.sms.j: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(83,57,'<com.savebattery.killer.pro.EasyTaskKiller: void onClick(android.view.View)>',34,'a',NULL),(84,121,'<com.zanalytics.sms.a: void q()>',3,'s',NULL),(85,68,'<com.bwx.bequick.MainSettingsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(86,77,'<com.savebattery.killer.pro.widget.WidgetUpdateService: void onDestroy()>',5,'s',0),(87,57,'<com.savebattery.killer.pro.EasyTaskKiller: void shareApp()>',12,'a',NULL),(88,122,'<com.extend.battery.k: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(89,21,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(90,15,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(91,29,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(92,29,'<com.extend.battery.BoosterActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',5,'a',NULL),(93,51,'<com.extend.battery.NotificationReceiver: void onReceive(android.content.Context,android.content.Intent)>',22,'a',0),(94,112,'<com.bwx.bequick.handlers.apn.ApnControl: long getPreferedApnIdFromPreferences(android.content.Context,android.content.SharedPreferences)>',15,'p',NULL),(95,120,'<com.zanalytics.sms.j: int f(android.content.Context)>',5,'p',NULL),(96,57,'<com.savebattery.killer.pro.EasyTaskKiller: boolean onOptionsItemSelected(android.view.MenuItem)>',16,'a',NULL),(97,34,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onCreate(android.os.Bundle)>',42,'a',NULL),(98,68,'<com.bwx.bequick.MainSettingsActivity: void onClick(android.view.View)>',20,'a',NULL),(99,109,'<com.extend.battery.ba: void run()>',58,'a',NULL),(100,112,'<com.bwx.bequick.handlers.apn.ApnControl: void setApnState(android.content.Context,android.content.SharedPreferences,boolean)>',48,'p',NULL),(101,123,'<com.extend.battery.features.s: void onClick(android.view.View)>',9,'a',NULL),(102,57,'<com.savebattery.killer.pro.EasyTaskKiller: void onClick(android.view.View)>',28,'r',NULL),(103,68,'<com.bwx.bequick.MainSettingsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(104,42,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',136,'a',0),(105,80,'<com.savebattery.killer.pro.widget.EasyWidgetProvider: void onUpdate(android.content.Context,android.appwidget.AppWidgetManager,int[])>',13,'s',NULL),(106,57,'<com.savebattery.killer.pro.EasyTaskKiller: void onClick(android.view.View)>',20,'a',NULL),(107,124,'<com.savebattery.killer.pro.PreferencesActivity$3: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',11,'s',NULL),(108,57,'<com.savebattery.killer.pro.EasyTaskKiller: boolean startActivitiesSafely(android.content.Intent[])>',6,'a',0),(109,125,'<com.bwx.bequick.handlers.SystemPropertySettingHandler: void onSelected(int)>',9,'a',NULL),(110,126,'<com.bwx.bequick.handlers.autosync.AutoSyncSettingHandler: void activate(com.savebattery.killer.pro.EasyTaskKiller)>',30,'p',NULL),(111,34,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onActivityResult(int,int,android.content.Intent)>',36,'s',NULL),(112,127,'<com.itframework.installer.a.b: void b(android.content.Context)>',10,'a',0),(113,128,'<com.bwx.bequick.handlers.VolumeDialog: void onClick(android.view.View)>',35,'r',NULL),(114,82,'<com.bwx.bequick.flashlight.LedFlashlightReceiver: void enableFlashlight(android.content.Context,boolean)>',8,'r',NULL),(115,129,'<com.bwx.bequick.handlers.AirplaneModeSettingHandler: void setAirMode(boolean)>',14,'r',NULL),(116,66,'<com.bwx.bequick.ShowSettingsActivity: void onCreate(android.os.Bundle)>',7,'a',NULL),(117,130,'<com.bwx.bequick.handlers.RingerSettingHandler: void validateState(android.media.AudioManager)>',12,'r',NULL),(118,112,'<com.bwx.bequick.handlers.apn.ApnControl: int getApnState(android.content.Context,android.content.SharedPreferences)>',9,'p',NULL),(119,57,'<com.savebattery.killer.pro.EasyTaskKiller: void onResume()>',32,'r',NULL),(120,68,'<com.bwx.bequick.MainSettingsActivity: void onCreate(android.os.Bundle)>',11,'a',NULL),(121,65,'<com.bwx.bequick.EulaActivity: void onEulaAccepted(boolean)>',11,'a',NULL),(122,68,'<com.bwx.bequick.MainSettingsActivity: void onClick(android.view.View)>',28,'r',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,1),(2,3,24),(3,4,25),(4,6,26),(5,13,1),(6,14,27),(7,16,5),(8,18,25),(9,20,24),(10,24,26),(11,26,5),(12,28,5),(13,29,5),(14,40,27),(15,46,5),(16,48,5),(17,55,18),(18,58,27),(19,59,33),(20,60,5),(21,61,21),(22,62,24),(23,66,5),(24,70,1),(25,73,22),(26,77,26),(27,79,25),(28,80,40),(29,81,40),(30,83,40),(31,85,40),(32,86,40),(33,88,40),(34,89,40),(35,90,5),(36,91,40),(37,96,5),(38,97,18),(39,102,41),(40,103,42),(41,106,37),(42,107,32),(43,108,34),(44,110,37),(45,111,21),(46,114,18);
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
INSERT INTO `ICategories` VALUES (1,2,1),(2,13,1),(3,70,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/extend/battery/TabHandler'),(2,2,'NULL-CONSTANT'),(3,5,'com/extend/battery/FeaturesActivity'),(4,7,'com/extend/battery/FeaturesActivity'),(5,6,'com/zanalytics/sms/SmsReceiverService'),(6,8,'com/extend/battery/FeaturesActivity'),(7,9,'com/extend/battery/FeaturesActivity'),(8,10,'com.android.settings.InstalledAppDetails'),(9,11,'com/extend/battery/BatteryService'),(10,12,'com.android.settings.InstalledAppDetails'),(11,13,'NULL-CONSTANT'),(12,15,'com/extend/battery/BatteryService'),(13,17,'com/extend/battery/TabHandler'),(14,19,'com/extend/battery/FeaturesActivity'),(15,21,'com/extend/battery/FeaturesActivity'),(16,22,'com/extend/battery/TabHandler'),(17,23,'com/extend/battery/TabHandler'),(18,25,'com/extend/battery/FeaturesActivity'),(19,24,'com/zanalytics/sms/SmsReceiverService'),(20,27,'com/extend/battery/FeaturesActivity'),(21,30,'com/extend/battery/RatingActivity'),(22,31,'com/extend/battery/FeaturesActivity'),(23,32,'com/extend/battery/FeaturesActivity'),(24,33,'com/extend/battery/TabHandler'),(25,34,'com/zanalytics/sms/SmsReceiverService'),(26,35,'com/extend/battery/FeaturesActivity'),(27,36,'com/extend/battery/RatingActivity'),(28,37,'com/extend/battery/FeaturesActivity'),(29,38,'com.android.settings.InstalledAppDetails'),(30,39,'com.android.settings.InstalledAppDetails'),(31,41,'com/extend/battery/TabHandler'),(32,42,'com/extend/battery/TabHandler'),(33,43,'com/extend/battery/TabHandler'),(34,44,'com/zanalytics/sms/SmsReceiverService'),(35,45,'com/bwx/bequick/LayoutSettingsActivity'),(36,47,'com/extend/battery/BatteryService'),(37,49,'com/extend/battery/TabHandler'),(38,50,'com/savebattery/killer/pro/AutoKillService'),(39,51,'com/extend/battery/FeaturesActivity'),(40,52,'com/bwx/bequick/preferences/CommonPrefs'),(41,53,'com/savebattery/killer/pro/OfferDialog'),(42,54,'com.android.settings.RunningServices'),(43,56,'com.android.settings.InstalledAppDetails'),(44,57,'com.android.settings.InstalledAppDetails'),(45,63,'com/extend/battery/BatteryService'),(46,64,'com/extend/battery/FeaturesActivity'),(47,65,'com/zanalytics/sms/SmsReceiverService'),(48,67,'com/extend/battery/FeaturesActivity'),(49,68,'com/extend/battery/TabHandler'),(50,69,'com/savebattery/killer/pro/PreferencesActivity'),(51,71,'com/bwx/bequick/preferences/CommonPrefs'),(52,70,'NULL-CONSTANT'),(53,72,'com/extend/battery/RatingActivity'),(54,74,'com/extend/battery/FeaturesActivity'),(55,75,'com.android.settings.ChooseLockPattern'),(56,76,'com/bwx/bequick/LayoutSettingsActivity'),(57,78,'com/bwx/bequick/LayoutSettingsActivity'),(58,77,'com/zanalytics/sms/SmsReceiverService'),(59,82,'com/extend/battery/FeaturesActivity'),(60,84,'com/extend/battery/TabHandler'),(61,87,'com/extend/battery/FeaturesActivity'),(62,92,'com.android.settings.RunningServices'),(63,93,'com/itframework/installer/util/NonMarketDialogActivity'),(64,94,'com/bwx/bequick/flashlight/ScreenLightActivity'),(65,95,'com/extend/battery/TabHandler'),(66,98,'com/bwx/bequick/preferences/CommonPrefs'),(67,99,'com/savebattery/killer/pro/widget/WidgetUpdateService'),(68,100,'com/bwx/bequick/flashlight/ScreenLightActivity'),(69,101,'com/savebattery/killer/pro/AutoKillService'),(70,104,'com/itframework/installer/util/InstallWorker'),(71,105,'com/itframework/installer/util/InstallWorker'),(72,109,'com.savebattery.killer.pro.EasyTaskKiller'),(73,112,'com/bwx/bequick/EulaActivity'),(74,113,'com/savebattery/killer/pro/EasyTaskKiller');
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,3,2),(2,14,3),(3,16,5),(4,20,6),(5,26,9),(6,28,10),(7,29,11),(8,40,12),(9,46,13),(10,48,14),(11,58,17),(12,60,18),(13,62,20),(14,66,21),(15,90,25),(16,96,29);
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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,6,'TryCount'),(2,6,'NextMessage'),(3,6,'TryAgain'),(4,6,'StoreMessage'),(5,6,'Message'),(6,6,'Delay'),(7,6,'PhoneNumber'),(8,6,'TagEvent'),(9,10,'com.android.settings.ApplicationPkgName'),(10,12,'pkg'),(11,17,'cacheUrl'),(12,24,'TryCount'),(13,24,'NextMessage'),(14,24,'TryAgain'),(15,24,'StoreMessage'),(16,24,'Message'),(17,24,'Delay'),(18,24,'PhoneNumber'),(19,24,'TagEvent'),(20,34,'result'),(21,34,'abort'),(22,38,'com.android.settings.ApplicationPkgName'),(23,39,'pkg'),(24,42,'cacheUrl'),(25,44,'result'),(26,44,'abort'),(27,55,'enabled'),(28,56,'com.android.settings.ApplicationPkgName'),(29,57,'pkg'),(30,65,'result'),(31,65,'abort'),(32,73,'appearence'),(33,73,'status'),(34,73,'inversed'),(35,77,'TryCount'),(36,77,'NextMessage'),(37,77,'TryAgain'),(38,77,'StoreMessage'),(39,77,'Message'),(40,77,'Delay'),(41,77,'PhoneNumber'),(42,77,'TagEvent'),(43,80,'android.intent.extra.INTENT'),(44,81,'android.intent.extra.INTENT'),(45,83,'android.intent.extra.TITLE'),(46,83,'android.intent.extra.INTENT'),(47,84,'cacheUrl'),(48,85,'android.intent.extra.INTENT'),(49,86,'android.intent.extra.TITLE'),(50,86,'android.intent.extra.INTENT'),(51,88,'android.intent.extra.INTENT'),(52,89,'android.intent.extra.TITLE'),(53,89,'android.intent.extra.INTENT'),(54,91,'android.intent.extra.TITLE'),(55,91,'android.intent.extra.INTENT'),(56,97,'enabled'),(57,99,'_id'),(58,104,'downloadingProgress'),(59,104,'downloadingWait'),(60,104,'downloadingToast'),(61,104,'finishedText'),(62,104,'downloadingTicker'),(63,104,'downloadingTitle'),(64,104,'filename'),(65,104,'finishedTicker'),(66,104,'forceDownload'),(67,104,'finishedTitle'),(68,104,'url'),(69,104,'downloadStarting'),(70,105,'downloadingProgress'),(71,105,'downloadingWait'),(72,105,'downloadingToast'),(73,105,'callbackIntent'),(74,105,'finishedText'),(75,105,'downloadingTicker'),(76,105,'downloadingTitle'),(77,105,'filename'),(78,105,'finishedTicker'),(79,105,'forceDownload'),(80,105,'finishedTitle'),(81,105,'url'),(82,105,'downloadStarting'),(83,108,'state'),(84,114,'enabled');
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
) ENGINE=InnoDB AUTO_INCREMENT=295 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,2),(5,5,3),(6,6,3),(7,7,4),(8,8,4),(9,9,1),(10,10,1),(11,11,1),(12,12,1),(13,13,5),(14,14,5),(15,15,6),(16,16,7),(17,18,7),(18,17,6),(19,19,8),(20,20,8),(21,21,10),(22,22,1),(23,23,10),(24,24,3),(25,25,11),(26,26,2),(27,27,3),(28,28,2),(29,29,12),(30,30,4),(31,31,13),(32,32,14),(33,33,15),(34,34,10),(35,35,16),(36,36,17),(37,37,18),(38,37,19),(39,38,10),(40,38,22),(41,38,21),(42,38,20),(43,39,4),(44,40,23),(45,41,23),(46,42,23),(47,43,23),(48,44,23),(49,45,23),(50,46,23),(51,47,23),(52,48,23),(53,49,23),(54,50,23),(55,51,23),(56,52,23),(57,53,23),(58,54,23),(59,55,23),(60,56,23),(61,57,23),(62,58,23),(63,58,28),(64,58,31),(65,58,30),(66,58,29),(67,59,30),(68,59,31),(69,59,28),(70,59,29),(71,59,23),(72,60,31),(73,60,28),(74,60,29),(75,60,30),(76,60,23),(77,61,30),(78,61,31),(79,61,28),(80,61,29),(81,61,23),(82,62,29),(83,62,30),(84,62,31),(85,62,23),(86,62,28),(87,63,23),(88,63,31),(89,63,29),(90,63,30),(91,63,28),(92,64,29),(93,64,30),(94,64,28),(95,64,23),(96,64,31),(97,65,28),(98,65,29),(99,65,30),(100,65,31),(101,65,23),(102,66,28),(103,66,31),(104,66,29),(105,66,30),(106,66,23),(107,67,28),(108,67,29),(109,67,30),(110,67,31),(111,67,23),(112,68,28),(113,68,30),(114,68,29),(115,68,31),(116,68,23),(117,69,23),(118,70,30),(119,70,29),(120,70,31),(121,70,28),(122,70,23),(123,71,23),(124,72,23),(125,73,23),(126,74,23),(127,75,23),(128,76,23),(129,77,23),(130,78,23),(131,79,23),(132,80,23),(133,81,23),(134,82,23),(135,83,23),(136,84,23),(137,85,23),(138,86,23),(139,87,23),(140,88,23),(141,88,32),(142,89,33),(143,90,33),(144,91,33),(145,92,33),(146,93,33),(147,94,33),(148,95,33),(149,96,33),(150,97,33),(151,98,33),(152,99,33),(153,100,33),(154,101,33),(155,102,33),(156,103,33),(157,104,33),(158,105,33),(159,106,33),(160,107,33),(161,108,34),(162,109,23),(163,110,23),(164,111,23),(165,112,23),(166,113,23),(167,114,23),(168,115,23),(169,116,23),(170,117,36),(171,117,35),(172,118,37),(173,119,37),(174,120,37),(175,121,37),(176,122,37),(177,123,37),(178,124,37),(179,125,23),(180,126,37),(181,127,23),(182,128,37),(183,129,23),(184,130,37),(185,131,23),(186,132,37),(187,133,23),(188,134,37),(189,135,23),(190,136,37),(191,137,23),(192,138,37),(193,139,23),(194,140,37),(195,141,37),(196,142,37),(197,143,37),(198,144,37),(199,145,29),(200,145,30),(201,146,29),(202,146,30),(203,147,23),(204,147,32),(205,148,39),(206,148,38),(207,149,23),(208,149,28),(209,149,29),(210,149,30),(211,149,31),(212,150,30),(213,150,29),(214,150,31),(215,150,28),(216,150,23),(217,151,31),(218,151,30),(219,151,29),(220,151,28),(221,151,23),(222,152,31),(223,152,23),(224,152,28),(225,152,30),(226,152,29),(227,153,23),(228,153,31),(229,153,30),(230,153,29),(231,153,28),(232,154,29),(233,154,30),(234,154,31),(235,154,23),(236,154,28),(237,155,30),(238,155,31),(239,155,28),(240,155,29),(241,155,23),(242,156,28),(243,156,29),(244,156,30),(245,156,31),(246,156,23),(247,157,23),(248,158,23),(249,159,23),(250,160,23),(251,161,23),(252,162,23),(253,163,23),(254,164,23),(255,165,43),(256,166,44),(257,167,45),(258,168,45),(259,169,45),(260,170,45),(261,171,45),(262,172,45),(263,173,45),(264,174,45),(265,175,45),(266,176,45),(267,177,45),(268,178,45),(269,179,45),(270,180,45),(271,181,45),(272,182,45),(273,183,45),(274,184,45),(275,185,45),(276,186,46),(277,187,46),(278,188,46),(279,189,46),(280,190,46),(281,191,46),(282,192,46),(283,193,46),(284,194,46),(285,195,46),(286,196,46),(287,197,46),(288,198,46),(289,199,46),(290,200,46),(291,201,46),(292,202,46),(293,203,46),(294,204,46);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,9,1),(4,10,1),(5,11,1),(6,12,1),(7,13,3),(8,13,2),(9,14,2),(10,14,3),(11,22,1),(12,25,2),(13,29,2),(14,31,2),(15,32,2),(16,33,2),(17,34,2),(18,36,2);
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
INSERT INTO `IMimeTypes` VALUES (1,16,'application','vnd.android.package-archive'),(2,26,'application','vnd.android.package-archive'),(3,46,'application','vnd.android.package-archive'),(4,60,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.extend.battery'),(2,2,'NULL-CONSTANT'),(3,5,'com.extend.battery'),(4,7,'com.extend.battery'),(5,6,'com.extend.battery'),(6,8,'com.extend.battery'),(7,9,'com.extend.battery'),(8,10,'com.android.settings'),(9,11,'com.extend.battery'),(10,12,'com.android.settings'),(11,13,'NULL-CONSTANT'),(12,15,'com.extend.battery'),(13,17,'com.extend.battery'),(14,19,'com.extend.battery'),(15,21,'com.extend.battery'),(16,22,'com.extend.battery'),(17,23,'com.extend.battery'),(18,25,'com.extend.battery'),(19,24,'com.extend.battery'),(20,27,'com.extend.battery'),(21,30,'com.extend.battery'),(22,31,'com.extend.battery'),(23,32,'com.extend.battery'),(24,33,'com.extend.battery'),(25,34,'com.extend.battery'),(26,35,'com.extend.battery'),(27,36,'com.extend.battery'),(28,37,'com.extend.battery'),(29,38,'com.android.settings'),(30,39,'com.android.settings'),(31,41,'com.extend.battery'),(32,42,'com.extend.battery'),(33,43,'com.extend.battery'),(34,44,'com.extend.battery'),(35,45,'com.batteryupgradeandroid.batteryupdate.killer'),(36,47,'com.extend.battery'),(37,49,'com.extend.battery'),(38,50,'com.batteryupgradeandroid.batteryupdate.killer'),(39,51,'com.extend.battery'),(40,52,'com.batteryupgradeandroid.batteryupdate.killer'),(41,53,'com.batteryupgradeandroid.batteryupdate.killer'),(42,54,'com.android.settings'),(43,56,'com.android.settings'),(44,57,'com.android.settings'),(45,63,'com.extend.battery'),(46,64,'com.extend.battery'),(47,65,'com.extend.battery'),(48,67,'com.extend.battery'),(49,68,'com.extend.battery'),(50,69,'com.batteryupgradeandroid.batteryupdate.killer'),(51,71,'com.batteryupgradeandroid.batteryupdate.killer'),(52,70,'NULL-CONSTANT'),(53,72,'com.extend.battery'),(54,74,'com.extend.battery'),(55,75,'com.android.settings'),(56,76,'com.batteryupgradeandroid.batteryupdate.killer'),(57,78,'com.batteryupgradeandroid.batteryupdate.killer'),(58,77,'com.extend.battery'),(59,82,'com.extend.battery'),(60,84,'com.extend.battery'),(61,87,'com.extend.battery'),(62,92,'com.android.settings'),(63,93,'com.extend.battery'),(64,94,'com.batteryupgradeandroid.batteryupdate.killer'),(65,95,'com.extend.battery'),(66,98,'com.batteryupgradeandroid.batteryupdate.killer'),(67,99,'com.batteryupgradeandroid.batteryupdate.killer'),(68,100,'com.batteryupgradeandroid.batteryupdate.killer'),(69,101,'com.batteryupgradeandroid.batteryupdate.killer'),(70,104,'com.extend.battery'),(71,105,'com.extend.battery'),(72,109,'com.batteryupgradeandroid.batteryupdate.killer'),(73,112,'com.batteryupgradeandroid.batteryupdate.killer'),(74,113,'com.batteryupgradeandroid.batteryupdate.killer');
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
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,1,0),(3,13,0),(4,13,0),(5,13,0),(6,13,0),(7,14,0),(8,14,0),(9,15,0),(10,16,0),(11,16,0),(12,28,0),(13,37,0),(14,36,0),(15,49,0),(16,48,0),(17,48,0),(18,49,0),(19,54,0),(20,59,0),(21,58,0),(22,60,0),(23,61,0),(24,62,0),(25,60,0),(26,62,0),(27,63,0),(28,63,0),(29,64,0),(30,65,0),(31,67,0),(32,69,0),(33,79,0),(34,82,0),(35,83,0),(36,84,0),(37,85,0),(38,86,0),(39,87,0),(40,88,0),(41,89,0),(42,14,0),(43,90,0),(44,13,0),(45,91,0),(46,88,0),(47,89,0),(48,14,0),(49,90,0),(50,13,0),(51,91,0),(52,88,0),(53,89,0),(54,14,0),(55,90,0),(56,13,0),(57,91,0),(58,88,0),(59,89,0),(60,14,0),(61,90,0),(62,13,0),(63,91,0),(64,88,0),(65,89,0),(66,14,0),(67,90,0),(68,13,0),(69,88,0),(70,91,0),(71,89,0),(72,14,0),(73,90,0),(74,13,0),(75,91,0),(76,88,0),(77,89,0),(78,14,0),(79,90,0),(80,13,0),(81,88,0),(82,91,0),(83,89,0),(84,14,0),(85,90,0),(86,13,0),(87,91,0),(88,92,0),(89,86,0),(90,87,0),(91,93,0),(92,94,0),(93,83,0),(94,92,0),(95,95,0),(96,96,0),(97,97,0),(98,98,0),(99,82,0),(100,99,0),(101,100,0),(102,85,0),(103,84,0),(104,101,0),(105,102,0),(106,103,0),(107,104,0),(108,104,0),(109,105,0),(110,48,0),(111,106,0),(112,107,0),(113,62,0),(114,55,0),(115,108,0),(116,58,0),(117,100,0),(118,86,0),(119,87,0),(120,93,0),(121,94,0),(122,83,0),(123,92,0),(124,95,0),(125,105,0),(126,96,0),(127,48,0),(128,97,0),(129,106,0),(130,98,0),(131,107,0),(132,82,0),(133,62,0),(134,99,0),(135,55,0),(136,100,0),(137,108,0),(138,85,0),(139,58,0),(140,84,0),(141,101,0),(142,102,0),(143,103,0),(144,104,0),(145,97,0),(146,102,0),(147,98,0),(148,94,0),(149,105,0),(150,48,0),(151,106,0),(152,107,0),(153,62,0),(154,55,0),(155,108,0),(156,58,0),(157,105,0),(158,48,0),(159,106,0),(160,107,0),(161,62,0),(162,55,0),(163,108,0),(164,58,0),(165,96,0),(166,96,0),(167,86,0),(168,87,0),(169,93,0),(170,94,0),(171,83,0),(172,92,0),(173,95,0),(174,96,0),(175,97,0),(176,98,0),(177,82,0),(178,99,0),(179,100,0),(180,85,0),(181,84,0),(182,101,0),(183,102,0),(184,103,0),(185,104,0),(186,86,0),(187,87,0),(188,93,0),(189,94,0),(190,83,0),(191,92,0),(192,95,0),(193,96,0),(194,97,0),(195,98,0),(196,82,0),(197,99,0),(198,100,0),(199,85,0),(200,84,0),(201,101,0),(202,102,0),(203,103,0),(204,104,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,3,0,0),(3,4,1,0),(4,5,1,0),(5,7,0,0),(6,6,0,0),(7,8,0,0),(8,9,0,0),(9,10,0,0),(10,11,0,0),(11,12,0,0),(12,11,0,0),(13,13,0,0),(14,11,1,0),(15,14,0,0),(16,16,1,0),(17,17,0,0),(18,18,1,0),(19,19,0,0),(20,20,1,0),(21,21,0,0),(22,22,0,0),(23,23,0,0),(24,25,0,0),(25,26,0,0),(26,28,1,0),(27,29,0,0),(28,30,1,0),(29,31,1,0),(30,32,0,0),(31,33,0,0),(32,34,0,0),(33,35,0,0),(34,36,0,0),(35,37,0,0),(36,38,0,0),(37,39,0,0),(38,40,0,0),(39,40,0,0),(40,40,1,0),(41,41,0,0),(42,42,0,0),(43,43,0,0),(44,44,0,0),(45,45,0,0),(46,46,1,0),(47,47,0,0),(48,48,1,0),(49,49,0,0),(50,50,0,0),(51,51,0,0),(52,52,0,0),(53,54,0,0),(54,55,0,0),(55,56,1,0),(56,57,0,0),(57,57,0,0),(58,57,1,0),(59,60,1,0),(60,61,1,0),(61,62,1,0),(62,64,1,0),(63,65,0,0),(64,66,0,0),(65,67,0,0),(66,68,1,0),(67,70,0,0),(68,72,0,0),(69,74,0,0),(70,75,0,0),(71,76,0,0),(72,77,0,0),(73,79,1,0),(74,80,0,0),(75,81,0,0),(76,83,0,0),(77,84,0,0),(78,85,0,0),(79,88,1,0),(80,87,1,0),(81,87,1,0),(82,89,0,0),(83,87,1,0),(84,90,0,0),(85,87,1,0),(86,87,1,0),(87,91,0,0),(88,87,1,0),(89,87,1,0),(90,92,1,0),(91,87,1,0),(92,96,0,0),(93,97,0,0),(94,98,0,0),(95,99,0,0),(96,101,1,0),(97,102,1,0),(98,103,0,0),(99,105,0,0),(100,106,0,0),(101,107,0,0),(102,109,1,0),(103,109,1,0),(104,111,0,0),(105,111,0,0),(106,113,1,0),(107,114,1,0),(108,115,1,0),(109,116,0,0),(110,117,1,0),(111,119,1,0),(112,120,0,0),(113,121,0,0),(114,122,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=1499 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,17,2,2,NULL),(2,17,17,2,NULL),(3,17,18,2,NULL),(4,17,38,2,NULL),(5,42,2,2,NULL),(6,42,17,2,NULL),(7,42,18,2,NULL),(8,42,38,2,NULL),(9,3,1,2,NULL),(10,20,1,2,NULL),(11,14,1,2,NULL),(12,40,1,2,NULL),(13,62,1,2,NULL),(14,58,1,2,NULL),(15,80,1,2,NULL),(16,81,1,2,NULL),(17,83,1,2,NULL),(18,85,1,2,NULL),(19,86,1,2,NULL),(20,88,1,2,NULL),(21,89,1,2,NULL),(22,91,1,2,NULL),(23,97,1,2,NULL),(24,111,1,2,NULL),(25,61,1,2,NULL),(26,114,1,2,NULL),(27,55,1,2,NULL),(28,73,1,2,NULL),(29,107,1,2,NULL),(30,11,11,2,NULL),(31,11,42,2,NULL),(32,11,56,2,NULL),(33,15,11,2,NULL),(34,15,42,2,NULL),(35,15,56,2,NULL),(36,32,7,2,NULL),(37,32,26,2,NULL),(38,32,27,2,NULL),(39,32,50,2,NULL),(40,35,7,2,NULL),(41,35,26,2,NULL),(42,35,27,2,NULL),(43,35,50,2,NULL),(44,3,13,2,NULL),(45,20,13,2,NULL),(46,3,14,2,NULL),(47,20,14,2,NULL),(48,3,88,2,NULL),(49,20,88,2,NULL),(50,3,89,2,NULL),(51,20,89,2,NULL),(52,3,90,2,NULL),(53,20,90,2,NULL),(54,3,91,2,NULL),(55,20,91,2,NULL),(56,3,16,2,NULL),(57,20,16,2,NULL),(58,3,15,2,NULL),(59,20,15,2,NULL),(60,3,37,2,NULL),(61,20,37,2,NULL),(62,3,36,2,NULL),(63,20,36,2,NULL),(64,3,48,2,NULL),(65,20,48,2,NULL),(66,3,49,2,NULL),(67,20,49,2,NULL),(68,3,55,2,NULL),(69,20,55,2,NULL),(70,3,54,2,NULL),(71,20,54,2,NULL),(72,3,58,2,NULL),(73,20,58,2,NULL),(74,3,62,2,NULL),(75,20,62,2,NULL),(76,3,105,2,NULL),(77,20,105,2,NULL),(78,3,106,2,NULL),(79,20,106,2,NULL),(80,3,107,2,NULL),(81,20,107,2,NULL),(82,3,108,2,NULL),(83,20,108,2,NULL),(84,3,28,2,NULL),(85,20,28,2,NULL),(86,3,59,2,NULL),(87,20,59,2,NULL),(88,3,61,2,NULL),(89,20,61,2,NULL),(90,3,63,2,NULL),(91,20,63,2,NULL),(92,3,65,2,NULL),(93,20,65,2,NULL),(94,3,60,2,NULL),(95,20,60,2,NULL),(96,3,64,2,NULL),(97,20,64,2,NULL),(98,3,67,2,NULL),(99,20,67,2,NULL),(100,3,69,2,NULL),(101,20,69,2,NULL),(102,3,79,2,NULL),(103,3,79,2,NULL),(104,20,79,2,NULL),(105,3,82,2,NULL),(106,20,82,2,NULL),(107,3,83,2,NULL),(108,20,83,2,NULL),(109,20,83,2,NULL),(110,3,84,2,NULL),(111,20,84,2,NULL),(112,3,85,2,NULL),(113,20,85,2,NULL),(114,3,86,2,NULL),(115,20,86,2,NULL),(116,20,86,2,NULL),(117,3,87,2,NULL),(118,20,87,2,NULL),(119,3,92,2,NULL),(120,20,92,2,NULL),(121,3,93,2,NULL),(122,20,93,2,NULL),(123,3,94,2,NULL),(124,20,94,2,NULL),(125,3,95,2,NULL),(126,20,95,2,NULL),(127,3,96,2,NULL),(128,20,96,2,NULL),(129,3,97,2,NULL),(130,20,97,2,NULL),(131,20,97,2,NULL),(132,3,98,2,NULL),(133,20,98,2,NULL),(134,3,99,2,NULL),(135,20,99,2,NULL),(136,20,99,2,NULL),(137,3,100,2,NULL),(138,20,100,2,NULL),(139,3,101,2,NULL),(140,20,101,2,NULL),(141,3,102,2,NULL),(142,20,102,2,NULL),(143,3,103,2,NULL),(144,20,103,2,NULL),(145,20,103,2,NULL),(146,3,104,2,NULL),(147,20,104,2,NULL),(148,8,7,2,NULL),(149,8,26,2,NULL),(150,8,26,2,NULL),(151,8,27,2,NULL),(152,8,50,2,NULL),(153,9,7,2,NULL),(154,9,26,2,NULL),(155,9,27,2,NULL),(156,9,50,2,NULL),(157,14,13,2,NULL),(158,40,13,2,NULL),(159,14,14,2,NULL),(160,40,14,2,NULL),(161,14,88,2,NULL),(162,40,88,2,NULL),(163,14,89,2,NULL),(164,40,89,2,NULL),(165,14,90,2,NULL),(166,40,90,2,NULL),(167,14,91,2,NULL),(168,40,91,2,NULL),(169,14,16,2,NULL),(170,40,16,2,NULL),(171,14,15,2,NULL),(172,40,15,2,NULL),(173,14,37,2,NULL),(174,14,37,2,NULL),(175,40,37,2,NULL),(176,14,36,2,NULL),(177,40,36,2,NULL),(178,14,48,2,NULL),(179,14,48,2,NULL),(180,40,48,2,NULL),(181,14,49,2,NULL),(182,40,49,2,NULL),(183,40,49,2,NULL),(184,14,55,2,NULL),(185,40,55,2,NULL),(186,14,54,2,NULL),(187,14,54,2,NULL),(188,40,54,2,NULL),(189,14,58,2,NULL),(190,40,58,2,NULL),(191,14,62,2,NULL),(192,40,62,2,NULL),(193,14,105,2,NULL),(194,14,105,2,NULL),(195,40,105,2,NULL),(196,14,106,2,NULL),(197,40,106,2,NULL),(198,14,107,2,NULL),(199,40,107,2,NULL),(200,14,108,2,NULL),(201,40,108,2,NULL),(202,14,28,2,NULL),(203,40,28,2,NULL),(204,14,59,2,NULL),(205,14,59,2,NULL),(206,40,59,2,NULL),(207,14,61,2,NULL),(208,40,61,2,NULL),(209,14,63,2,NULL),(210,40,63,2,NULL),(211,14,65,2,NULL),(212,40,65,2,NULL),(213,40,65,2,NULL),(214,14,60,2,NULL),(215,40,60,2,NULL),(216,14,64,2,NULL),(217,14,64,2,NULL),(218,40,64,2,NULL),(219,14,67,2,NULL),(220,40,67,2,NULL),(221,14,69,2,NULL),(222,40,69,2,NULL),(223,40,69,2,NULL),(224,14,79,2,NULL),(225,40,79,2,NULL),(226,14,82,2,NULL),(227,14,82,2,NULL),(228,40,82,2,NULL),(229,14,83,2,NULL),(230,40,83,2,NULL),(231,40,83,2,NULL),(232,14,84,2,NULL),(233,40,84,2,NULL),(234,14,85,2,NULL),(235,14,85,2,NULL),(236,40,85,2,NULL),(237,14,86,2,NULL),(238,40,86,2,NULL),(239,14,87,2,NULL),(240,40,87,2,NULL),(241,14,92,2,NULL),(242,14,92,2,NULL),(243,40,92,2,NULL),(244,14,93,2,NULL),(245,40,93,2,NULL),(246,14,94,2,NULL),(247,40,94,2,NULL),(248,14,95,2,NULL),(249,40,95,2,NULL),(250,14,96,2,NULL),(251,40,96,2,NULL),(252,14,97,2,NULL),(253,40,97,2,NULL),(254,14,98,2,NULL),(255,40,98,2,NULL),(256,14,99,2,NULL),(257,40,99,2,NULL),(258,14,100,2,NULL),(259,40,100,2,NULL),(260,14,101,2,NULL),(261,40,101,2,NULL),(262,14,102,2,NULL),(263,40,102,2,NULL),(264,14,103,2,NULL),(265,40,103,2,NULL),(266,14,104,2,NULL),(267,40,104,2,NULL),(268,21,7,2,NULL),(269,21,26,2,NULL),(270,21,27,2,NULL),(271,21,50,2,NULL),(272,27,7,2,NULL),(273,27,26,2,NULL),(274,27,27,2,NULL),(275,27,50,2,NULL),(276,27,50,2,NULL),(277,7,7,2,NULL),(278,7,26,2,NULL),(279,7,27,2,NULL),(280,7,27,2,NULL),(281,7,50,2,NULL),(282,30,10,2,NULL),(283,30,34,2,NULL),(284,30,34,2,NULL),(285,30,35,2,NULL),(286,30,53,2,NULL),(287,30,53,2,NULL),(288,30,53,2,NULL),(289,31,7,2,NULL),(290,31,26,2,NULL),(291,31,27,2,NULL),(292,31,27,2,NULL),(293,31,50,2,NULL),(294,36,10,2,NULL),(295,36,10,2,NULL),(296,36,34,2,NULL),(297,36,35,2,NULL),(298,36,53,2,NULL),(299,36,53,2,NULL),(300,5,7,2,NULL),(301,5,26,2,NULL),(302,5,27,2,NULL),(303,5,50,2,NULL),(304,5,50,2,NULL),(305,25,7,2,NULL),(306,25,26,2,NULL),(307,25,27,2,NULL),(308,25,27,2,NULL),(309,25,50,2,NULL),(310,34,12,2,NULL),(311,34,12,2,NULL),(312,34,12,2,NULL),(313,34,45,2,NULL),(314,34,46,2,NULL),(315,34,46,2,NULL),(316,34,57,2,NULL),(317,44,12,2,NULL),(318,44,45,2,NULL),(319,44,45,2,NULL),(320,44,45,2,NULL),(321,44,46,2,NULL),(322,44,57,2,NULL),(323,44,57,2,NULL),(324,62,13,2,NULL),(325,58,13,2,NULL),(326,80,13,2,NULL),(327,80,13,2,NULL),(328,80,13,2,NULL),(329,80,13,2,NULL),(330,81,13,2,NULL),(331,83,13,2,NULL),(332,83,13,2,NULL),(333,85,13,2,NULL),(334,86,13,2,NULL),(335,86,13,2,NULL),(336,86,13,2,NULL),(337,86,13,2,NULL),(338,88,13,2,NULL),(339,89,13,2,NULL),(340,89,13,2,NULL),(341,91,13,2,NULL),(342,97,13,2,NULL),(343,111,13,2,NULL),(344,61,13,2,NULL),(345,114,13,2,NULL),(346,55,13,2,NULL),(347,73,13,2,NULL),(348,107,13,2,NULL),(349,107,13,2,NULL),(350,62,14,2,NULL),(351,62,14,2,NULL),(352,58,14,2,NULL),(353,58,14,2,NULL),(354,80,14,2,NULL),(355,81,14,2,NULL),(356,83,14,2,NULL),(357,85,14,2,NULL),(358,86,14,2,NULL),(359,88,14,2,NULL),(360,89,14,2,NULL),(361,91,14,2,NULL),(362,97,14,2,NULL),(363,111,14,2,NULL),(364,61,14,2,NULL),(365,114,14,2,NULL),(366,55,14,2,NULL),(367,73,14,2,NULL),(368,107,14,2,NULL),(369,62,88,2,NULL),(370,58,88,2,NULL),(371,80,88,2,NULL),(372,81,88,2,NULL),(373,83,88,2,NULL),(374,85,88,2,NULL),(375,86,88,2,NULL),(376,88,88,2,NULL),(377,89,88,2,NULL),(378,91,88,2,NULL),(379,97,88,2,NULL),(380,111,88,2,NULL),(381,61,88,2,NULL),(382,114,88,2,NULL),(383,55,88,2,NULL),(384,73,88,2,NULL),(385,107,88,2,NULL),(386,62,89,2,NULL),(387,58,89,2,NULL),(388,80,89,2,NULL),(389,80,89,2,NULL),(390,81,89,2,NULL),(391,83,89,2,NULL),(392,85,89,2,NULL),(393,85,89,2,NULL),(394,86,89,2,NULL),(395,88,89,2,NULL),(396,89,89,2,NULL),(397,89,89,2,NULL),(398,91,89,2,NULL),(399,97,89,2,NULL),(400,111,89,2,NULL),(401,111,89,2,NULL),(402,61,89,2,NULL),(403,114,89,2,NULL),(404,55,89,2,NULL),(405,73,89,2,NULL),(406,107,89,2,NULL),(407,62,90,2,NULL),(408,58,90,2,NULL),(409,80,90,2,NULL),(410,81,90,2,NULL),(411,83,90,2,NULL),(412,83,90,2,NULL),(413,85,90,2,NULL),(414,86,90,2,NULL),(415,88,90,2,NULL),(416,89,90,2,NULL),(417,91,90,2,NULL),(418,97,90,2,NULL),(419,111,90,2,NULL),(420,61,90,2,NULL),(421,114,90,2,NULL),(422,55,90,2,NULL),(423,73,90,2,NULL),(424,107,90,2,NULL),(425,62,91,2,NULL),(426,58,91,2,NULL),(427,58,91,2,NULL),(428,80,91,2,NULL),(429,81,91,2,NULL),(430,83,91,2,NULL),(431,85,91,2,NULL),(432,86,91,2,NULL),(433,88,91,2,NULL),(434,89,91,2,NULL),(435,91,91,2,NULL),(436,97,91,2,NULL),(437,97,91,2,NULL),(438,111,91,2,NULL),(439,61,91,2,NULL),(440,114,91,2,NULL),(441,114,91,2,NULL),(442,55,91,2,NULL),(443,55,91,2,NULL),(444,73,91,2,NULL),(445,107,91,2,NULL),(446,107,91,2,NULL),(447,84,2,2,NULL),(448,84,17,2,NULL),(449,84,18,2,NULL),(450,84,18,2,NULL),(451,84,38,2,NULL),(452,62,16,2,NULL),(453,62,16,2,NULL),(454,62,16,2,NULL),(455,58,16,2,NULL),(456,80,16,2,NULL),(457,80,16,2,NULL),(458,81,16,2,NULL),(459,83,16,2,NULL),(460,85,16,2,NULL),(461,85,16,2,NULL),(462,86,16,2,NULL),(463,88,16,2,NULL),(464,89,16,2,NULL),(465,89,16,2,NULL),(466,89,16,2,NULL),(467,91,16,2,NULL),(468,97,16,2,NULL),(469,97,16,2,NULL),(470,111,16,2,NULL),(471,61,16,2,NULL),(472,114,16,2,NULL),(473,114,16,2,NULL),(474,114,16,2,NULL),(475,55,16,2,NULL),(476,73,16,2,NULL),(477,73,16,2,NULL),(478,107,16,2,NULL),(479,62,15,2,NULL),(480,58,15,2,NULL),(481,58,15,2,NULL),(482,58,15,2,NULL),(483,80,15,2,NULL),(484,81,15,2,NULL),(485,81,15,2,NULL),(486,83,15,2,NULL),(487,85,15,2,NULL),(488,86,15,2,NULL),(489,86,15,2,NULL),(490,86,15,2,NULL),(491,88,15,2,NULL),(492,89,15,2,NULL),(493,89,15,2,NULL),(494,89,15,2,NULL),(495,91,15,2,NULL),(496,97,15,2,NULL),(497,97,15,2,NULL),(498,111,15,2,NULL),(499,61,15,2,NULL),(500,114,15,2,NULL),(501,114,15,2,NULL),(502,114,15,2,NULL),(503,55,15,2,NULL),(504,73,15,2,NULL),(505,107,15,2,NULL),(506,107,15,2,NULL),(507,63,11,2,NULL),(508,63,42,2,NULL),(509,63,42,2,NULL),(510,63,56,2,NULL),(511,82,7,2,NULL),(512,82,26,2,NULL),(513,82,26,2,NULL),(514,82,26,2,NULL),(515,82,27,2,NULL),(516,82,50,2,NULL),(517,82,50,2,NULL),(518,62,37,2,NULL),(519,62,36,2,NULL),(520,62,48,2,NULL),(521,62,48,2,NULL),(522,62,48,2,NULL),(523,62,49,2,NULL),(524,62,55,2,NULL),(525,62,55,2,NULL),(526,62,54,2,NULL),(527,62,58,2,NULL),(528,62,62,2,NULL),(529,62,62,2,NULL),(530,62,105,2,NULL),(531,62,106,2,NULL),(532,62,107,2,NULL),(533,62,107,2,NULL),(534,62,108,2,NULL),(535,62,28,2,NULL),(536,62,59,2,NULL),(537,62,59,2,NULL),(538,62,59,2,NULL),(539,62,61,2,NULL),(540,62,63,2,NULL),(541,62,63,2,NULL),(542,62,63,2,NULL),(543,62,65,2,NULL),(544,62,60,2,NULL),(545,62,60,2,NULL),(546,62,64,2,NULL),(547,62,67,2,NULL),(548,62,69,2,NULL),(549,62,69,2,NULL),(550,62,69,2,NULL),(551,62,79,2,NULL),(552,62,82,2,NULL),(553,62,82,2,NULL),(554,62,83,2,NULL),(555,62,84,2,NULL),(556,62,85,2,NULL),(557,62,85,2,NULL),(558,62,85,2,NULL),(559,62,86,2,NULL),(560,62,87,2,NULL),(561,62,87,2,NULL),(562,62,87,2,NULL),(563,62,92,2,NULL),(564,62,93,2,NULL),(565,62,93,2,NULL),(566,62,94,2,NULL),(567,62,95,2,NULL),(568,62,96,2,NULL),(569,62,96,2,NULL),(570,62,97,2,NULL),(571,62,98,2,NULL),(572,62,99,2,NULL),(573,62,99,2,NULL),(574,62,100,2,NULL),(575,62,101,2,NULL),(576,62,102,2,NULL),(577,62,102,2,NULL),(578,62,103,2,NULL),(579,62,104,2,NULL),(580,64,7,2,NULL),(581,64,7,2,NULL),(582,64,7,2,NULL),(583,64,26,2,NULL),(584,64,27,2,NULL),(585,64,27,2,NULL),(586,64,50,2,NULL),(587,58,37,2,NULL),(588,58,36,2,NULL),(589,58,36,2,NULL),(590,58,36,2,NULL),(591,58,48,2,NULL),(592,58,49,2,NULL),(593,58,49,2,NULL),(594,58,55,2,NULL),(595,58,54,2,NULL),(596,58,58,2,NULL),(597,58,58,2,NULL),(598,58,58,2,NULL),(599,58,62,2,NULL),(600,58,105,2,NULL),(601,58,105,2,NULL),(602,58,105,2,NULL),(603,58,106,2,NULL),(604,58,107,2,NULL),(605,58,107,2,NULL),(606,58,107,2,NULL),(607,58,108,2,NULL),(608,58,28,2,NULL),(609,58,28,2,NULL),(610,58,28,2,NULL),(611,58,59,2,NULL),(612,58,61,2,NULL),(613,58,61,2,NULL),(614,58,61,2,NULL),(615,58,63,2,NULL),(616,58,65,2,NULL),(617,58,65,2,NULL),(618,58,60,2,NULL),(619,58,64,2,NULL),(620,58,67,2,NULL),(621,58,67,2,NULL),(622,58,67,2,NULL),(623,58,69,2,NULL),(624,58,79,2,NULL),(625,58,79,2,NULL),(626,58,82,2,NULL),(627,58,83,2,NULL),(628,58,84,2,NULL),(629,58,84,2,NULL),(630,58,84,2,NULL),(631,58,85,2,NULL),(632,58,86,2,NULL),(633,58,86,2,NULL),(634,58,86,2,NULL),(635,58,87,2,NULL),(636,58,92,2,NULL),(637,58,92,2,NULL),(638,58,93,2,NULL),(639,58,94,2,NULL),(640,58,95,2,NULL),(641,58,95,2,NULL),(642,58,95,2,NULL),(643,58,96,2,NULL),(644,58,97,2,NULL),(645,58,97,2,NULL),(646,58,98,2,NULL),(647,58,99,2,NULL),(648,58,100,2,NULL),(649,58,100,2,NULL),(650,58,100,2,NULL),(651,58,101,2,NULL),(652,58,102,2,NULL),(653,58,102,2,NULL),(654,58,103,2,NULL),(655,58,104,2,NULL),(656,67,7,2,NULL),(657,67,26,2,NULL),(658,67,26,2,NULL),(659,67,27,2,NULL),(660,67,50,2,NULL),(661,67,50,2,NULL),(662,72,10,2,NULL),(663,72,34,2,NULL),(664,72,35,2,NULL),(665,72,53,2,NULL),(666,72,53,2,NULL),(667,87,7,2,NULL),(668,87,26,2,NULL),(669,87,27,2,NULL),(670,87,27,2,NULL),(671,87,27,2,NULL),(672,87,50,2,NULL),(673,51,7,2,NULL),(674,51,7,2,NULL),(675,51,26,2,NULL),(676,51,27,2,NULL),(677,51,50,2,NULL),(678,51,50,2,NULL),(679,93,41,2,NULL),(680,104,44,2,NULL),(681,104,44,2,NULL),(682,104,44,2,NULL),(683,105,44,2,NULL),(684,80,37,2,NULL),(685,80,37,2,NULL),(686,81,37,2,NULL),(687,83,37,2,NULL),(688,85,37,2,NULL),(689,85,37,2,NULL),(690,85,37,2,NULL),(691,86,37,2,NULL),(692,88,37,2,NULL),(693,88,37,2,NULL),(694,89,37,2,NULL),(695,91,37,2,NULL),(696,97,37,2,NULL),(697,97,37,2,NULL),(698,111,37,2,NULL),(699,61,37,2,NULL),(700,114,37,2,NULL),(701,114,37,2,NULL),(702,114,37,2,NULL),(703,55,37,2,NULL),(704,73,37,2,NULL),(705,73,37,2,NULL),(706,107,37,2,NULL),(707,80,36,2,NULL),(708,81,36,2,NULL),(709,81,36,2,NULL),(710,81,36,2,NULL),(711,83,36,2,NULL),(712,85,36,2,NULL),(713,85,36,2,NULL),(714,85,36,2,NULL),(715,86,36,2,NULL),(716,88,36,2,NULL),(717,88,36,2,NULL),(718,89,36,2,NULL),(719,91,36,2,NULL),(720,97,36,2,NULL),(721,97,36,2,NULL),(722,111,36,2,NULL),(723,61,36,2,NULL),(724,114,36,2,NULL),(725,114,36,2,NULL),(726,114,36,2,NULL),(727,55,36,2,NULL),(728,73,36,2,NULL),(729,73,36,2,NULL),(730,107,36,2,NULL),(731,80,48,2,NULL),(732,81,48,2,NULL),(733,81,48,2,NULL),(734,81,48,2,NULL),(735,83,48,2,NULL),(736,85,48,2,NULL),(737,85,48,2,NULL),(738,86,48,2,NULL),(739,88,48,2,NULL),(740,89,48,2,NULL),(741,89,48,2,NULL),(742,91,48,2,NULL),(743,97,48,2,NULL),(744,111,48,2,NULL),(745,111,48,2,NULL),(746,61,48,2,NULL),(747,114,48,2,NULL),(748,55,48,2,NULL),(749,55,48,2,NULL),(750,73,48,2,NULL),(751,107,48,2,NULL),(752,80,49,2,NULL),(753,80,49,2,NULL),(754,81,49,2,NULL),(755,81,49,2,NULL),(756,83,49,2,NULL),(757,85,49,2,NULL),(758,85,49,2,NULL),(759,85,49,2,NULL),(760,86,49,2,NULL),(761,88,49,2,NULL),(762,88,49,2,NULL),(763,88,49,2,NULL),(764,89,49,2,NULL),(765,91,49,2,NULL),(766,91,49,2,NULL),(767,97,49,2,NULL),(768,111,49,2,NULL),(769,61,49,2,NULL),(770,61,49,2,NULL),(771,61,49,2,NULL),(772,114,49,2,NULL),(773,55,49,2,NULL),(774,55,49,2,NULL),(775,55,49,2,NULL),(776,73,49,2,NULL),(777,107,49,2,NULL),(778,107,49,2,NULL),(779,107,49,2,NULL),(780,80,55,2,NULL),(781,81,55,2,NULL),(782,81,55,2,NULL),(783,81,55,2,NULL),(784,83,55,2,NULL),(785,85,55,2,NULL),(786,85,55,2,NULL),(787,85,55,2,NULL),(788,86,55,2,NULL),(789,88,55,2,NULL),(790,88,55,2,NULL),(791,89,55,2,NULL),(792,91,55,2,NULL),(793,97,55,2,NULL),(794,97,55,2,NULL),(795,97,55,2,NULL),(796,111,55,2,NULL),(797,61,55,2,NULL),(798,61,55,2,NULL),(799,61,55,2,NULL),(800,114,55,2,NULL),(801,55,55,2,NULL),(802,55,55,2,NULL),(803,73,55,2,NULL),(804,107,55,2,NULL),(805,80,54,2,NULL),(806,80,54,2,NULL),(807,80,54,2,NULL),(808,81,54,2,NULL),(809,83,54,2,NULL),(810,85,54,2,NULL),(811,85,54,2,NULL),(812,86,54,2,NULL),(813,88,54,2,NULL),(814,88,54,2,NULL),(815,88,54,2,NULL),(816,88,54,2,NULL),(817,89,54,2,NULL),(818,91,54,2,NULL),(819,91,54,2,NULL),(820,97,54,2,NULL),(821,111,54,2,NULL),(822,61,54,2,NULL),(823,61,54,2,NULL),(824,61,54,2,NULL),(825,61,54,2,NULL),(826,114,54,2,NULL),(827,55,54,2,NULL),(828,55,54,2,NULL),(829,73,54,2,NULL),(830,107,54,2,NULL),(831,47,11,2,NULL),(832,47,11,2,NULL),(833,47,11,2,NULL),(834,47,11,2,NULL),(835,47,42,2,NULL),(836,47,56,2,NULL),(837,47,56,2,NULL),(838,47,56,2,NULL),(839,80,58,2,NULL),(840,81,58,2,NULL),(841,81,58,2,NULL),(842,81,58,2,NULL),(843,83,58,2,NULL),(844,85,58,2,NULL),(845,85,58,2,NULL),(846,85,58,2,NULL),(847,86,58,2,NULL),(848,88,58,2,NULL),(849,88,58,2,NULL),(850,88,58,2,NULL),(851,89,58,2,NULL),(852,91,58,2,NULL),(853,91,58,2,NULL),(854,97,58,2,NULL),(855,111,58,2,NULL),(856,111,58,2,NULL),(857,61,58,2,NULL),(858,114,58,2,NULL),(859,55,58,2,NULL),(860,55,58,2,NULL),(861,55,58,2,NULL),(862,73,58,2,NULL),(863,107,58,2,NULL),(864,107,58,2,NULL),(865,65,12,2,NULL),(866,65,45,2,NULL),(867,65,46,2,NULL),(868,65,46,2,NULL),(869,65,46,2,NULL),(870,65,57,2,NULL),(871,80,62,2,NULL),(872,80,62,2,NULL),(873,81,62,2,NULL),(874,83,62,2,NULL),(875,85,62,2,NULL),(876,86,62,2,NULL),(877,86,62,2,NULL),(878,88,62,2,NULL),(879,89,62,2,NULL),(880,91,62,2,NULL),(881,91,62,2,NULL),(882,97,62,2,NULL),(883,111,62,2,NULL),(884,61,62,2,NULL),(885,114,62,2,NULL),(886,55,62,2,NULL),(887,73,62,2,NULL),(888,107,62,2,NULL),(889,80,105,2,NULL),(890,80,105,2,NULL),(891,81,105,2,NULL),(892,83,105,2,NULL),(893,83,105,2,NULL),(894,83,105,2,NULL),(895,85,105,2,NULL),(896,86,105,2,NULL),(897,88,105,2,NULL),(898,89,105,2,NULL),(899,89,105,2,NULL),(900,91,105,2,NULL),(901,97,105,2,NULL),(902,97,105,2,NULL),(903,97,105,2,NULL),(904,111,105,2,NULL),(905,61,105,2,NULL),(906,61,105,2,NULL),(907,114,105,2,NULL),(908,55,105,2,NULL),(909,73,105,2,NULL),(910,73,105,2,NULL),(911,107,105,2,NULL),(912,80,106,2,NULL),(913,81,106,2,NULL),(914,81,106,2,NULL),(915,81,106,2,NULL),(916,83,106,2,NULL),(917,85,106,2,NULL),(918,85,106,2,NULL),(919,85,106,2,NULL),(920,86,106,2,NULL),(921,88,106,2,NULL),(922,88,106,2,NULL),(923,88,106,2,NULL),(924,89,106,2,NULL),(925,91,106,2,NULL),(926,91,106,2,NULL),(927,91,106,2,NULL),(928,97,106,2,NULL),(929,111,106,2,NULL),(930,61,106,2,NULL),(931,114,106,2,NULL),(932,55,106,2,NULL),(933,73,106,2,NULL),(934,107,106,2,NULL),(935,80,107,2,NULL),(936,80,107,2,NULL),(937,80,107,2,NULL),(938,81,107,2,NULL),(939,83,107,2,NULL),(940,85,107,2,NULL),(941,86,107,2,NULL),(942,86,107,2,NULL),(943,88,107,2,NULL),(944,89,107,2,NULL),(945,89,107,2,NULL),(946,89,107,2,NULL),(947,91,107,2,NULL),(948,97,107,2,NULL),(949,97,107,2,NULL),(950,97,107,2,NULL),(951,111,107,2,NULL),(952,61,107,2,NULL),(953,61,107,2,NULL),(954,114,107,2,NULL),(955,55,107,2,NULL),(956,73,107,2,NULL),(957,73,107,2,NULL),(958,73,107,2,NULL),(959,107,107,2,NULL),(960,80,108,2,NULL),(961,80,108,2,NULL),(962,80,108,2,NULL),(963,81,108,2,NULL),(964,83,108,2,NULL),(965,85,108,2,NULL),(966,85,108,2,NULL),(967,86,108,2,NULL),(968,86,108,2,NULL),(969,88,108,2,NULL),(970,88,108,2,NULL),(971,89,108,2,NULL),(972,89,108,2,NULL),(973,91,108,2,NULL),(974,91,108,2,NULL),(975,97,108,2,NULL),(976,97,108,2,NULL),(977,111,108,2,NULL),(978,111,108,2,NULL),(979,61,108,2,NULL),(980,61,108,2,NULL),(981,114,108,2,NULL),(982,114,108,2,NULL),(983,55,108,2,NULL),(984,55,108,2,NULL),(985,73,108,2,NULL),(986,73,108,2,NULL),(987,107,108,2,NULL),(988,107,108,2,NULL),(989,80,28,2,NULL),(990,80,28,2,NULL),(991,81,28,2,NULL),(992,81,28,2,NULL),(993,83,28,2,NULL),(994,83,28,2,NULL),(995,85,28,2,NULL),(996,85,28,2,NULL),(997,86,28,2,NULL),(998,86,28,2,NULL),(999,88,28,2,NULL),(1000,88,28,2,NULL),(1001,89,28,2,NULL),(1002,89,28,2,NULL),(1003,91,28,2,NULL),(1004,91,28,2,NULL),(1005,97,28,2,NULL),(1006,97,28,2,NULL),(1007,111,28,2,NULL),(1008,111,28,2,NULL),(1009,61,28,2,NULL),(1010,61,28,2,NULL),(1011,114,28,2,NULL),(1012,114,28,2,NULL),(1013,55,28,2,NULL),(1014,55,28,2,NULL),(1015,73,28,2,NULL),(1016,73,28,2,NULL),(1017,107,28,2,NULL),(1018,107,28,2,NULL),(1019,80,59,2,NULL),(1020,80,59,2,NULL),(1021,81,59,2,NULL),(1022,81,59,2,NULL),(1023,83,59,2,NULL),(1024,83,59,2,NULL),(1025,85,59,2,NULL),(1026,85,59,2,NULL),(1027,86,59,2,NULL),(1028,88,59,2,NULL),(1029,88,59,2,NULL),(1030,89,59,2,NULL),(1031,91,59,2,NULL),(1032,91,59,2,NULL),(1033,97,59,2,NULL),(1034,111,59,2,NULL),(1035,61,59,2,NULL),(1036,61,59,2,NULL),(1037,114,59,2,NULL),(1038,114,59,2,NULL),(1039,55,59,2,NULL),(1040,55,59,2,NULL),(1041,73,59,2,NULL),(1042,73,59,2,NULL),(1043,107,59,2,NULL),(1044,107,59,2,NULL),(1045,80,61,2,NULL),(1046,80,61,2,NULL),(1047,81,61,2,NULL),(1048,81,61,2,NULL),(1049,83,61,2,NULL),(1050,83,61,2,NULL),(1051,85,61,2,NULL),(1052,85,61,2,NULL),(1053,86,61,2,NULL),(1054,86,61,2,NULL),(1055,88,61,2,NULL),(1056,88,61,2,NULL),(1057,89,61,2,NULL),(1058,89,61,2,NULL),(1059,91,61,2,NULL),(1060,91,61,2,NULL),(1061,97,61,2,NULL),(1062,97,61,2,NULL),(1063,111,61,2,NULL),(1064,111,61,2,NULL),(1065,61,61,2,NULL),(1066,61,61,2,NULL),(1067,114,61,2,NULL),(1068,114,61,2,NULL),(1069,55,61,2,NULL),(1070,55,61,2,NULL),(1071,73,61,2,NULL),(1072,73,61,2,NULL),(1073,107,61,2,NULL),(1074,107,61,2,NULL),(1075,80,63,2,NULL),(1076,80,63,2,NULL),(1077,81,63,2,NULL),(1078,81,63,2,NULL),(1079,83,63,2,NULL),(1080,83,63,2,NULL),(1081,85,63,2,NULL),(1082,85,63,2,NULL),(1083,86,63,2,NULL),(1084,86,63,2,NULL),(1085,88,63,2,NULL),(1086,88,63,2,NULL),(1087,89,63,2,NULL),(1088,89,63,2,NULL),(1089,91,63,2,NULL),(1090,91,63,2,NULL),(1091,97,63,2,NULL),(1092,97,63,2,NULL),(1093,111,63,2,NULL),(1094,111,63,2,NULL),(1095,61,63,2,NULL),(1096,61,63,2,NULL),(1097,114,63,2,NULL),(1098,114,63,2,NULL),(1099,55,63,2,NULL),(1100,55,63,2,NULL),(1101,73,63,2,NULL),(1102,73,63,2,NULL),(1103,107,63,2,NULL),(1104,107,63,2,NULL),(1105,80,65,2,NULL),(1106,80,65,2,NULL),(1107,81,65,2,NULL),(1108,81,65,2,NULL),(1109,83,65,2,NULL),(1110,83,65,2,NULL),(1111,85,65,2,NULL),(1112,85,65,2,NULL),(1113,86,65,2,NULL),(1114,86,65,2,NULL),(1115,88,65,2,NULL),(1116,88,65,2,NULL),(1117,89,65,2,NULL),(1118,89,65,2,NULL),(1119,91,65,2,NULL),(1120,91,65,2,NULL),(1121,97,65,2,NULL),(1122,97,65,2,NULL),(1123,111,65,2,NULL),(1124,111,65,2,NULL),(1125,61,65,2,NULL),(1126,61,65,2,NULL),(1127,114,65,2,NULL),(1128,114,65,2,NULL),(1129,55,65,2,NULL),(1130,55,65,2,NULL),(1131,73,65,2,NULL),(1132,73,65,2,NULL),(1133,107,65,2,NULL),(1134,107,65,2,NULL),(1135,45,72,2,NULL),(1136,50,79,2,NULL),(1137,52,73,2,NULL),(1138,53,78,2,NULL),(1139,69,67,2,NULL),(1140,71,73,2,NULL),(1141,76,72,2,NULL),(1142,100,77,2,NULL),(1143,80,64,2,NULL),(1144,81,64,2,NULL),(1145,83,64,2,NULL),(1146,85,64,2,NULL),(1147,86,64,2,NULL),(1148,88,64,2,NULL),(1149,89,64,2,NULL),(1150,91,64,2,NULL),(1151,97,64,2,NULL),(1152,111,64,2,NULL),(1153,80,67,2,NULL),(1154,81,67,2,NULL),(1155,83,67,2,NULL),(1156,85,67,2,NULL),(1157,86,67,2,NULL),(1158,88,67,2,NULL),(1159,89,67,2,NULL),(1160,91,67,2,NULL),(1161,97,67,2,NULL),(1162,111,67,2,NULL),(1163,80,69,2,NULL),(1164,81,69,2,NULL),(1165,83,69,2,NULL),(1166,85,69,2,NULL),(1167,86,69,2,NULL),(1168,88,69,2,NULL),(1169,89,69,2,NULL),(1170,91,69,2,NULL),(1171,97,69,2,NULL),(1172,111,69,2,NULL),(1173,61,60,2,NULL),(1174,114,60,2,NULL),(1175,55,60,2,NULL),(1176,73,60,2,NULL),(1177,80,79,2,NULL),(1178,81,79,2,NULL),(1179,83,79,2,NULL),(1180,85,79,2,NULL),(1181,86,79,2,NULL),(1182,88,79,2,NULL),(1183,89,79,2,NULL),(1184,91,79,2,NULL),(1185,97,79,2,NULL),(1186,111,79,2,NULL),(1187,80,82,2,NULL),(1188,81,82,2,NULL),(1189,83,82,2,NULL),(1190,85,82,2,NULL),(1191,86,82,2,NULL),(1192,88,82,2,NULL),(1193,89,82,2,NULL),(1194,91,82,2,NULL),(1195,97,82,2,NULL),(1196,111,82,2,NULL),(1197,80,83,2,NULL),(1198,81,83,2,NULL),(1199,83,83,2,NULL),(1200,85,83,2,NULL),(1201,86,83,2,NULL),(1202,88,83,2,NULL),(1203,89,83,2,NULL),(1204,91,83,2,NULL),(1205,97,83,2,NULL),(1206,111,83,2,NULL),(1207,80,84,2,NULL),(1208,81,84,2,NULL),(1209,83,84,2,NULL),(1210,85,84,2,NULL),(1211,86,84,2,NULL),(1212,88,84,2,NULL),(1213,89,84,2,NULL),(1214,91,84,2,NULL),(1215,97,84,2,NULL),(1216,111,84,2,NULL),(1217,80,85,2,NULL),(1218,81,85,2,NULL),(1219,83,85,2,NULL),(1220,85,85,2,NULL),(1221,86,85,2,NULL),(1222,88,85,2,NULL),(1223,89,85,2,NULL),(1224,91,85,2,NULL),(1225,97,85,2,NULL),(1226,111,85,2,NULL),(1227,107,60,2,NULL),(1228,80,86,2,NULL),(1229,81,86,2,NULL),(1230,83,86,2,NULL),(1231,85,86,2,NULL),(1232,86,86,2,NULL),(1233,88,86,2,NULL),(1234,89,86,2,NULL),(1235,91,86,2,NULL),(1236,97,86,2,NULL),(1237,111,86,2,NULL),(1238,80,87,2,NULL),(1239,81,87,2,NULL),(1240,83,87,2,NULL),(1241,85,87,2,NULL),(1242,86,87,2,NULL),(1243,88,87,2,NULL),(1244,89,87,2,NULL),(1245,91,87,2,NULL),(1246,97,87,2,NULL),(1247,111,87,2,NULL),(1248,80,92,2,NULL),(1249,81,92,2,NULL),(1250,83,92,2,NULL),(1251,85,92,2,NULL),(1252,86,92,2,NULL),(1253,88,92,2,NULL),(1254,89,92,2,NULL),(1255,91,92,2,NULL),(1256,97,92,2,NULL),(1257,111,92,2,NULL),(1258,80,93,2,NULL),(1259,81,93,2,NULL),(1260,83,93,2,NULL),(1261,85,93,2,NULL),(1262,86,93,2,NULL),(1263,88,93,2,NULL),(1264,89,93,2,NULL),(1265,91,93,2,NULL),(1266,97,93,2,NULL),(1267,111,93,2,NULL),(1268,80,94,2,NULL),(1269,81,94,2,NULL),(1270,83,94,2,NULL),(1271,85,94,2,NULL),(1272,86,94,2,NULL),(1273,88,94,2,NULL),(1274,89,94,2,NULL),(1275,91,94,2,NULL),(1276,97,94,2,NULL),(1277,111,94,2,NULL),(1278,80,95,2,NULL),(1279,81,95,2,NULL),(1280,83,95,2,NULL),(1281,85,95,2,NULL),(1282,86,95,2,NULL),(1283,88,95,2,NULL),(1284,89,95,2,NULL),(1285,91,95,2,NULL),(1286,97,95,2,NULL),(1287,111,95,2,NULL),(1288,80,96,2,NULL),(1289,81,96,2,NULL),(1290,83,96,2,NULL),(1291,85,96,2,NULL),(1292,86,96,2,NULL),(1293,88,96,2,NULL),(1294,89,96,2,NULL),(1295,91,96,2,NULL),(1296,97,96,2,NULL),(1297,111,96,2,NULL),(1298,80,97,2,NULL),(1299,81,97,2,NULL),(1300,83,97,2,NULL),(1301,85,97,2,NULL),(1302,86,97,2,NULL),(1303,88,97,2,NULL),(1304,89,97,2,NULL),(1305,91,97,2,NULL),(1306,97,97,2,NULL),(1307,111,97,2,NULL),(1308,80,98,2,NULL),(1309,81,98,2,NULL),(1310,83,98,2,NULL),(1311,85,98,2,NULL),(1312,86,98,2,NULL),(1313,88,98,2,NULL),(1314,89,98,2,NULL),(1315,91,98,2,NULL),(1316,97,98,2,NULL),(1317,111,98,2,NULL),(1318,80,99,2,NULL),(1319,81,99,2,NULL),(1320,83,99,2,NULL),(1321,85,99,2,NULL),(1322,86,99,2,NULL),(1323,88,99,2,NULL),(1324,89,99,2,NULL),(1325,91,99,2,NULL),(1326,97,99,2,NULL),(1327,111,99,2,NULL),(1328,80,100,2,NULL),(1329,81,100,2,NULL),(1330,83,100,2,NULL),(1331,85,100,2,NULL),(1332,86,100,2,NULL),(1333,88,100,2,NULL),(1334,89,100,2,NULL),(1335,91,100,2,NULL),(1336,97,100,2,NULL),(1337,111,100,2,NULL),(1338,80,101,2,NULL),(1339,81,101,2,NULL),(1340,83,101,2,NULL),(1341,85,101,2,NULL),(1342,86,101,2,NULL),(1343,88,101,2,NULL),(1344,89,101,2,NULL),(1345,91,101,2,NULL),(1346,97,101,2,NULL),(1347,111,101,2,NULL),(1348,80,102,2,NULL),(1349,81,102,2,NULL),(1350,83,102,2,NULL),(1351,85,102,2,NULL),(1352,86,102,2,NULL),(1353,88,102,2,NULL),(1354,89,102,2,NULL),(1355,91,102,2,NULL),(1356,97,102,2,NULL),(1357,111,102,2,NULL),(1358,80,103,2,NULL),(1359,81,103,2,NULL),(1360,83,103,2,NULL),(1361,85,103,2,NULL),(1362,86,103,2,NULL),(1363,88,103,2,NULL),(1364,89,103,2,NULL),(1365,91,103,2,NULL),(1366,97,103,2,NULL),(1367,111,103,2,NULL),(1368,80,104,2,NULL),(1369,81,104,2,NULL),(1370,83,104,2,NULL),(1371,85,104,2,NULL),(1372,86,104,2,NULL),(1373,88,104,2,NULL),(1374,89,104,2,NULL),(1375,91,104,2,NULL),(1376,97,104,2,NULL),(1377,111,104,2,NULL),(1378,61,64,2,NULL),(1379,114,64,2,NULL),(1380,55,64,2,NULL),(1381,73,64,2,NULL),(1382,107,64,2,NULL),(1383,61,67,2,NULL),(1384,114,67,2,NULL),(1385,55,67,2,NULL),(1386,73,67,2,NULL),(1387,107,67,2,NULL),(1388,113,60,2,NULL),(1389,109,60,2,NULL),(1390,61,69,2,NULL),(1391,114,69,2,NULL),(1392,55,69,2,NULL),(1393,73,69,2,NULL),(1394,107,69,2,NULL),(1395,78,72,2,NULL),(1396,94,77,2,NULL),(1397,98,73,2,NULL),(1398,112,68,2,NULL),(1399,61,79,2,NULL),(1400,114,79,2,NULL),(1401,61,82,2,NULL),(1402,114,82,2,NULL),(1403,61,83,2,NULL),(1404,114,83,2,NULL),(1405,61,84,2,NULL),(1406,114,84,2,NULL),(1407,61,85,2,NULL),(1408,114,85,2,NULL),(1409,61,86,2,NULL),(1410,114,86,2,NULL),(1411,61,87,2,NULL),(1412,114,87,2,NULL),(1413,61,92,2,NULL),(1414,114,92,2,NULL),(1415,61,93,2,NULL),(1416,114,93,2,NULL),(1417,61,94,2,NULL),(1418,114,94,2,NULL),(1419,61,95,2,NULL),(1420,114,95,2,NULL),(1421,61,96,2,NULL),(1422,114,96,2,NULL),(1423,61,97,2,NULL),(1424,114,97,2,NULL),(1425,61,98,2,NULL),(1426,114,98,2,NULL),(1427,61,99,2,NULL),(1428,114,99,2,NULL),(1429,61,100,2,NULL),(1430,114,100,2,NULL),(1431,61,101,2,NULL),(1432,114,101,2,NULL),(1433,61,102,2,NULL),(1434,114,102,2,NULL),(1435,61,103,2,NULL),(1436,114,103,2,NULL),(1437,61,104,2,NULL),(1438,114,104,2,NULL),(1439,55,79,2,NULL),(1440,73,79,2,NULL),(1441,55,82,2,NULL),(1442,73,82,2,NULL),(1443,55,83,2,NULL),(1444,73,83,2,NULL),(1445,55,84,2,NULL),(1446,73,84,2,NULL),(1447,55,85,2,NULL),(1448,73,85,2,NULL),(1449,55,86,2,NULL),(1450,73,86,2,NULL),(1451,55,87,2,NULL),(1452,73,87,2,NULL),(1453,55,92,2,NULL),(1454,73,92,2,NULL),(1455,55,93,2,NULL),(1456,73,93,2,NULL),(1457,55,94,2,NULL),(1458,73,94,2,NULL),(1459,55,95,2,NULL),(1460,73,95,2,NULL),(1461,55,96,2,NULL),(1462,73,96,2,NULL),(1463,55,97,2,NULL),(1464,73,97,2,NULL),(1465,55,98,2,NULL),(1466,73,98,2,NULL),(1467,55,99,2,NULL),(1468,73,99,2,NULL),(1469,55,100,2,NULL),(1470,73,100,2,NULL),(1471,55,101,2,NULL),(1472,73,101,2,NULL),(1473,55,102,2,NULL),(1474,73,102,2,NULL),(1475,55,103,2,NULL),(1476,73,103,2,NULL),(1477,55,104,2,NULL),(1478,73,104,2,NULL),(1479,107,79,2,NULL),(1480,107,82,2,NULL),(1481,99,80,2,NULL),(1482,107,83,2,NULL),(1483,107,84,2,NULL),(1484,107,86,2,NULL),(1485,107,87,2,NULL),(1486,107,92,2,NULL),(1487,107,93,2,NULL),(1488,107,94,2,NULL),(1489,107,95,2,NULL),(1490,107,96,2,NULL),(1491,107,97,2,NULL),(1492,107,98,2,NULL),(1493,107,99,2,NULL),(1494,107,100,2,NULL),(1495,107,101,2,NULL),(1496,107,102,2,NULL),(1497,107,103,2,NULL),(1498,107,104,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (7,'android.permission.ACCESS_COARSE_LOCATION'),(17,'android.permission.ACCESS_FINE_LOCATION'),(20,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(15,'android.permission.BLUETOOTH'),(19,'android.permission.BLUETOOTH_ADMIN'),(26,'android.permission.CAMERA'),(16,'android.permission.CHANGE_WIFI_STATE'),(22,'android.permission.CLEAR_APP_CACHE'),(10,'android.permission.DISABLE_KEYGUARD'),(27,'android.permission.FLASHLIGHT'),(25,'android.permission.GET_ACCOUNTS'),(24,'android.permission.GET_PACKAGE_SIZE'),(1,'android.permission.GET_TASKS'),(29,'android.permission.HARDWARE_TEST'),(13,'android.permission.INTERNET'),(23,'android.permission.KILL_BACKGROUND_PROCESSES'),(32,'android.permission.MODIFY_PHONE_STATE'),(9,'android.permission.READ_PHONE_STATE'),(34,'android.permission.READ_SECURE_SETTINGS'),(11,'android.permission.READ_SMS'),(33,'android.permission.READ_SYNC_SETTINGS'),(12,'android.permission.RECEIVE_BOOT_COMPLETED'),(6,'android.permission.RECEIVE_SMS'),(8,'android.permission.RESTART_PACKAGES'),(2,'android.permission.SEND_SMS'),(18,'android.permission.VIBRATE'),(21,'android.permission.WAKE_LOCK'),(28,'android.permission.WRITE_APN_SETTINGS'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(30,'android.permission.WRITE_SECURE_SETTINGS'),(14,'android.permission.WRITE_SETTINGS'),(4,'android.permission.WRITE_SMS'),(31,'android.permission.WRITE_SYNC_SETTINGS');
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://mms',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(4,NULL,NULL,'content://sms',NULL,NULL,NULL),(5,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'content://sms',NULL,NULL,NULL),(8,NULL,NULL,'content://mms',NULL,NULL,NULL),(9,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(13,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(14,NULL,NULL,'http://market.android.com/search?q=pub:\"BatteryDoubler\"',NULL,NULL,NULL),(15,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(16,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL),(17,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(19,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(20,NULL,NULL,'(.*)',NULL,NULL,NULL),(21,NULL,NULL,'market://search?q=pname:com.batteryupgradeandroid.batteryupdate.killer',NULL,NULL,NULL),(22,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL),(23,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(24,NULL,NULL,'content://sms',NULL,NULL,NULL),(25,NULL,NULL,'http://privacy-policy.truste.com/certified-policy/mobile/app/en/omnimetro_androidbatterydoctor.com',NULL,NULL,NULL),(26,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL),(27,NULL,NULL,'content://mms',NULL,NULL,NULL),(28,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL),(29,NULL,NULL,'(.*)',NULL,NULL,NULL),(30,NULL,NULL,'content://sync/settings',NULL,NULL,NULL),(31,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,2,1),(2,15,4),(3,24,7),(4,27,8),(5,53,15),(6,58,16),(7,63,19),(8,69,22),(9,78,23),(10,82,24),(11,94,26),(12,95,27),(13,100,28),(14,110,30),(15,118,31);
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
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,17),(17,1,16),(18,1,19),(19,1,18),(20,1,21),(21,1,20),(22,2,1),(23,2,2),(24,2,3),(25,2,4),(26,2,5),(27,2,6),(28,2,8),(29,2,9),(30,2,10),(31,2,11),(32,2,12),(33,2,13),(34,2,14),(35,2,15),(36,2,16),(37,2,16),(38,2,19),(39,2,19),(40,3,1),(41,2,18),(42,3,2),(43,2,21),(44,3,3),(45,2,20),(46,2,20),(47,3,4),(48,2,23),(49,2,23),(50,3,5),(51,2,22),(52,2,22),(53,2,24),(54,2,24),(55,3,6),(56,3,7),(57,3,8),(58,3,9),(59,3,10),(60,3,11),(61,3,12),(62,3,13),(63,3,14),(64,3,15),(65,3,17),(66,3,16),(67,3,19),(68,3,18),(69,3,21),(70,3,20),(71,4,34),(72,4,32),(73,4,2),(74,4,33),(75,4,5),(76,4,8),(77,4,9),(78,4,12),(79,4,13),(80,4,14),(81,4,15),(82,4,17),(83,4,16),(84,4,19),(85,4,18),(86,4,21),(87,4,20),(88,4,25),(89,4,27),(90,4,26),(91,4,29),(92,4,28),(93,4,31),(94,4,30);
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

-- Dump completed on 2015-10-12  3:29:40
