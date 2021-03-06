-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_460
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (5,'android.appwidget.action.APPWIDGET_UPDATE'),(4,'android.intent.action.BOOT_COMPLETED'),(15,'android.intent.action.CALL'),(16,'android.intent.action.CHOOSER'),(13,'android.intent.action.DELETE'),(2,'android.intent.action.MAIN'),(8,'android.intent.action.NEW_OUTGOING_CALL'),(19,'android.intent.action.PACKAGE_ADDED'),(20,'android.intent.action.PACKAGE_REMOVED'),(9,'android.intent.action.PHONE_STATE'),(14,'android.intent.action.RUN'),(11,'android.intent.action.SCREEN_OFF'),(7,'android.intent.action.SEND'),(12,'android.intent.action.USER_PRESENT'),(6,'android.intent.action.VIEW'),(10,'android.provider.Telephony.SMS_RECEIVED'),(18,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(25,'com.android.vending.INSTALL_REFERRER'),(21,'com.readhead.horrorrun.RunRun'),(23,'com.readhead.horrorrun.RunRun.Menu'),(24,'com.readhead.horrorrun.RunRun.SplashScreen'),(22,'com.readhead.horrorrun.RunRun.Tutorial'),(3,'com.rechild.advancedtaskkiller.intent.action.IgnoreList'),(1,'com.rechild.intent.action.ADVANCED_TASK_KILLER_FREE'),(17,'gps.ollcmhqtga.mofqewomlfriqko.UDaJP12');
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
INSERT INTO `Applications` VALUES (1,'com.rechild.advancedtaskkiller',66),(2,'com.qnuou.game.classcsnake',1035),(3,'com.droidstu.game.devilninja',2),(4,'com.rainbow.FMajor',5),(5,'com.roidgame.snipr',11),(6,'gps.ollcmhqtga.mofqewomlfriqko',10001),(7,'com.redhead.horrorrunn',3);
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
INSERT INTO `CategoryStrings` VALUES (1,'android.intent.category.DEFAULT'),(3,'android.intent.category.INFO'),(2,'android.intent.category.LAUNCHER'),(4,'android.intent.categroy.DEFUAULT');
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
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.rechild.advancedtaskkiller.AdvancedTaskKiller'),(2,1,'com.rechild.advancedtaskkiller.NewSettings'),(3,1,'com.rechild.advancedtaskkiller.IgnoreListActivity'),(4,1,'com.rechild.advancedtaskkiller.BackService'),(5,1,'com.rechild.advancedtaskkiller.AutoStartReceiver'),(6,1,'com.rechild.advancedtaskkiller.OneClickAppWidgetProvider'),(7,1,'com.rechild.advancedtaskkiller.AlarmReceiver'),(8,2,'com.qnuou.game.classcsnake.ClassicSnake'),(9,3,'com.droidstu.game.devilninja.MenuActivity'),(10,2,'com.qnuou.game.scoreboard.ScoreBoard'),(11,3,'com.scoreloop.android.coreui.HighscoresActivity'),(12,3,'com.scoreloop.android.coreui.ProfileActivity'),(13,2,'com.sjhi.client.HandPics'),(14,3,'com.droidstu.game.devilninja.MainActivity'),(15,2,'com.qnuou.game.scoreboard.ScoreBoardService'),(16,3,'com.droidstu.game.devilninja.TipsActivity'),(17,3,'com.droidstu.game.devilninja.GameoverActivity'),(18,3,'com.droidstu.game.devilninja.Prefs'),(19,2,'com.sjhi.client.zjService'),(20,3,'com.GoldDream.zj.zjService'),(21,2,'com.sjhi.client.zjReceiver'),(22,3,'com.GoldDream.zj.zjReceiver'),(23,4,'com.rainbow.FMajor.FMaj'),(24,4,'com.rainbow.FMajor.FMaj2'),(25,4,'com.rainbow.FMajor.FMaj3'),(26,4,'com.sjgo.client.HandPics'),(27,4,'com.sjgo.client.oa_fengjing'),(28,4,'com.sjgo.client.oa_girl'),(29,4,'com.sjgo.client.oa_animal'),(30,4,'com.sjgo.client.oa_dongman'),(31,4,'com.sjgo.client.oa_feizhuliu'),(32,4,'com.sjgo.client.viewpic'),(33,4,'net.youmi.android.AdActivity'),(34,4,'com.sjgo.client.zjService'),(35,4,'com.sjgo.client.zjReceiver'),(36,5,'com.roidgame.snipr.ISniperActivity'),(37,5,'com.scoreloop.android.coreui.HighscoresActivity'),(38,5,'com.scoreloop.android.coreui.ProfileActivity'),(39,5,'com.scoreloop.android.coreui.AccountActivity'),(40,5,'com.scoreloop.android.coreui.BuddiesActivity'),(41,5,'com.scoreloop.android.coreui.BuddiesAddActivity'),(42,5,'com.scoreloop.android.coreui.GameActivity'),(43,5,'com.scoreloop.android.coreui.GamesActivity'),(44,5,'com.scoreloop.android.coreui.UserActivity'),(45,5,'com.scoreloop.android.coreui.PostScoreActivity'),(46,5,'com.roidgame.snipr.moreGameActivity'),(47,5,'com.GoldDream.zj.zjService'),(48,5,'com.GoldDream.zj.zjReceiver'),(49,6,'gps.ollcmhqtga.mofqewomlfriqko.StartScreenActivity'),(50,6,'gps.ollcmhqtga.mofqewomlfriqko.CraigsRaceLandscapeActivity'),(51,6,'gps.ollcmhqtga.mofqewomlfriqko.RaceAFriendDialog'),(52,6,'gps.ollcmhqtga.mofqewomlfriqko.PreferencesDialog'),(53,6,'gps.ollcmhqtga.mofqewomlfriqko.NameEntryActivity'),(54,6,'gps.ollcmhqtga.mofqewomlfriqko.RaceFinishedSendMessageDialog'),(55,6,'gps.ollcmhqtga.mofqewomlfriqko.WebPageActivity'),(56,6,'gps.ollcmhqtga.mofqewomlfriqko.SaveFailedActivity'),(57,6,'com.sjgo.client.HandPics'),(58,6,'com.sjgo.client.oa_fengjing'),(59,6,'com.sjgo.client.oa_girl'),(60,6,'com.sjgo.client.oa_animal'),(61,1,'com.rechild.advancedtaskkiller.CommonLibrary'),(62,6,'com.sjgo.client.oa_dongman'),(63,6,'com.sjgo.client.oa_feizhuliu'),(64,6,'com.sjgo.client.viewpic'),(65,6,'net.youmi.android.AdActivity'),(66,6,'vnp.nMIVaug.MyActivity'),(67,6,'vnp.nMIVaug.ApopMain'),(68,6,'vnp.nMIVaug.UDaJP16'),(69,6,'vnp.nMIVaug.UDaJP8'),(70,6,'vnp.nMIVaug.UDaJP9'),(71,1,'com.rechild.advancedtaskkiller.ScreenOffReceiver'),(72,6,'vnp.nMIVaug.UDaJP2'),(73,1,'com.rechild.advancedtaskkiller.AdvancedTaskKiller$2'),(74,6,'vnp.nMIVaug.UDaJP10'),(75,6,'com.sjgo.client.zjService'),(76,6,'vnp.nMIVaug.UDaJP11'),(77,6,'com.sjgo.client.zjReceiver'),(78,6,'vnp.nMIVaug.UDaJP12'),(79,2,'com.qnuou.game.scoreboard.ScoreBoardAdapter'),(80,4,'net.youmi.android.be'),(81,4,'net.youmi.android.al'),(82,5,'com.scoreloop.android.coreui.GameActivity$1'),(83,5,'com.scoreloop.android.coreui.BuddiesActivity$1'),(84,5,'com.roidgame.snipr.MyView$1'),(85,5,'com.roidgame.snipr.moreGameActivity$1'),(86,5,'com.scoreloop.android.coreui.HighscoresActivity$2'),(87,5,'com.scoreloop.client.android.core.controller.AddressBook'),(88,5,'com.roidgame.snipr.MyView$2'),(89,5,'com.scoreloop.android.coreui.AccountActivity$2'),(90,5,'com.scoreloop.android.coreui.GamesActivity$1'),(91,5,'com.scoreloop.android.coreui.GamesActivity$2'),(92,5,'com.roidgame.snipr.MyView'),(93,6,'vnp.nMIVaug.bb'),(94,6,'vnp.nMIVaug.z'),(95,6,'vnp.nMIVaug.h'),(96,6,'vnp.nMIVaug.i'),(97,6,'net.youmi.android.be'),(98,6,'vnp.nMIVaug.bh'),(99,6,'vnp.nMIVaug.v'),(100,6,'vnp.nMIVaug.d'),(101,6,'gps.ollcmhqtga.mofqewomlfriqko.StartScreenActivity$5'),(102,6,'net.youmi.android.al'),(103,6,'vnp.nMIVaug.ClickableToast'),(104,7,'com.redhead.horrorrunn.RunRun'),(105,7,'com.redhead.horrorrunn.Tutorial'),(106,7,'com.redhead.horrorrunn.Menu'),(107,7,'com.redhead.horrorrunn.SplashScreen'),(108,7,'com.sjli.client.MogoStart'),(109,7,'com.admob.android.ads.AdMobActivity'),(110,7,'com.redhead.horrorrunn.FirstSplash'),(111,7,'com.sjli.client.HHandPics'),(112,7,'com.sjli.client.viewpic'),(113,7,'com.google.ads.AdActivity'),(114,7,'cn.domob.android.ads.DomobActivity'),(115,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(116,7,'com.adwo.adsdk.AdwoSplashAdActivity'),(117,7,'net.youmi.android.AdActivity'),(118,7,'net.youmi.android.spotad.AdActivity'),(119,7,'com.wooboo.adlib_android.AdActivity'),(120,7,'com.wooboo.adlib_android.FullActivity'),(121,7,'com.tencent.mobwin.MobinWINBrowserActivity'),(122,7,'com.adchina.android.ads.views.AdBrowserView'),(123,7,'com.adchina.android.ads.views.FullScreenAdActivity'),(124,7,'cn.appmedia.ad.AdActivity'),(125,7,'com.winad.android.ads.VideoPlayerActivity'),(126,7,'com.suizong.mobplate.ads.AdActivity'),(127,7,'com.mt.airad.MultiAD'),(128,7,'com.lmmob.ad.sdk.LmMobAdWebView'),(129,7,'com.lmmob.ad.sdk.LmMobFullImageActivity'),(130,7,'net.winsmedia.WebViewActivity'),(131,7,'com.baidu.AppActivity'),(132,7,'com.sjli.client.zjjService'),(133,7,'com.admogo.UpdateService'),(134,7,'com.admob.android.ads.analytics.InstallReceiver'),(135,7,'com.sjli.client.zjjReceiver'),(136,7,'com.winad.android.ads.ReciveInstallPackage');
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
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,10,'title'),(2,15,'appid'),(3,21,'incoming_number'),(4,8,'comments'),(5,15,'comments'),(6,15,'subboard'),(7,10,'signature'),(8,8,'subboard'),(9,10,'appid'),(10,10,'subboard'),(11,21,'android.intent.extra.PHONE_NUMBER'),(12,8,'signature'),(13,15,'location'),(14,10,'orientation'),(15,8,'name'),(16,10,'showeddialog'),(17,10,'response'),(18,15,'signature'),(19,15,'name'),(20,21,'pdus'),(21,10,'newplace'),(22,10,'name'),(23,8,'location'),(24,10,'newscore'),(25,10,'comments'),(26,22,'android.intent.extra.PHONE_NUMBER'),(27,17,'curScore'),(28,17,'highScore'),(29,22,'incoming_number'),(30,35,'pdus'),(31,22,'pdus'),(32,33,'172C94EDC717477aBF600D7898A64A8E'),(33,35,'android.intent.extra.PHONE_NUMBER'),(34,35,'incoming_number'),(35,32,'objUrl'),(36,33,'D50EF1926ADD471892E72BCE6D7E032C'),(37,33,'D780FBF4215247bcBB1AC0AD33C474FE'),(38,33,'EB80F3291A8E469c962CA133BDC549D7'),(39,48,'android.intent.extra.PHONE_NUMBER'),(40,48,'pdus'),(41,48,'incoming_number'),(42,72,'package_name'),(43,71,'from'),(44,64,'version_code'),(45,65,'version_code'),(46,67,'poptitle'),(47,68,'title'),(48,68,'filepath'),(49,54,'weWon'),(50,68,'fromtype'),(51,55,'webSiteAddress'),(52,68,'from_alert'),(53,64,'soft_id'),(54,65,'soft_id'),(55,63,'objUrl'),(56,72,'btn_txt'),(57,75,'android.intent.extra.PHONE_NUMBER'),(58,49,'friendIsLocalRace'),(59,68,'game'),(60,64,'D50EF1926ADD471892E72BCE6D7E032C'),(61,72,'apk_url'),(62,50,'raceAgainstFriend'),(63,71,'isDirectFromTable'),(64,64,'D780FBF4215247bcBB1AC0AD33C474FE'),(65,72,'version_code'),(66,72,'content'),(67,54,'timeDifference'),(68,68,'status'),(69,67,'service_channel'),(70,64,'service_channel'),(71,65,'service_channel'),(72,74,'service_channel'),(73,64,'EB80F3291A8E469c962CA133BDC549D7'),(74,49,'opponentName'),(75,67,'popurl'),(76,49,'timeDifference'),(77,75,'pdus'),(78,72,'url'),(79,50,'friendCreateRace'),(80,50,'friendIsLocalRace'),(81,54,'opponentName'),(82,49,'weWon'),(83,75,'incoming_number'),(84,72,'title'),(85,68,'from_table'),(86,72,'fromtable'),(87,64,'172C94EDC717477aBF600D7898A64A8E');
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
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'s',1,NULL,NULL),(5,5,'r',1,NULL,NULL),(6,6,'r',1,NULL,NULL),(7,7,'r',0,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'s',1,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'s',1,NULL,NULL),(20,20,'s',1,NULL,NULL),(21,21,'r',1,NULL,NULL),(22,22,'r',1,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'s',1,NULL,NULL),(35,35,'r',1,NULL,NULL),(36,36,'a',1,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'s',1,NULL,NULL),(48,48,'r',1,NULL,NULL),(49,49,'a',1,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,62,'a',0,NULL,NULL),(62,63,'a',0,NULL,NULL),(63,64,'a',0,NULL,NULL),(64,65,'a',0,NULL,NULL),(65,66,'a',1,NULL,NULL),(66,67,'a',0,NULL,NULL),(67,68,'a',0,NULL,NULL),(68,69,'a',1,NULL,NULL),(69,70,'a',1,NULL,NULL),(70,71,'r',1,NULL,NULL),(71,72,'a',1,NULL,NULL),(72,74,'a',0,NULL,NULL),(73,75,'s',1,NULL,NULL),(74,76,'s',1,NULL,NULL),(75,77,'r',1,NULL,NULL),(76,78,'r',1,NULL,NULL),(77,94,'r',1,NULL,NULL),(78,99,'r',1,NULL,NULL),(79,104,'a',1,NULL,NULL),(80,105,'a',1,NULL,NULL),(81,106,'a',1,NULL,NULL),(82,107,'a',1,NULL,NULL),(83,108,'a',1,NULL,NULL),(84,109,'a',0,NULL,NULL),(85,110,'a',0,NULL,NULL),(86,111,'a',0,NULL,NULL),(87,112,'a',0,NULL,NULL),(88,113,'a',0,NULL,NULL),(89,114,'a',0,NULL,NULL),(90,115,'a',0,NULL,NULL),(91,116,'a',0,NULL,NULL),(92,117,'a',0,NULL,NULL),(93,118,'a',0,NULL,NULL),(94,119,'a',0,NULL,NULL),(95,120,'a',0,NULL,NULL),(96,121,'a',0,NULL,NULL),(97,122,'a',0,NULL,NULL),(98,123,'a',0,NULL,NULL),(99,124,'a',0,NULL,NULL),(100,125,'a',0,NULL,NULL),(101,126,'a',0,NULL,NULL),(102,127,'a',0,NULL,NULL),(103,128,'a',0,NULL,NULL),(104,129,'a',0,NULL,NULL),(105,130,'a',0,NULL,NULL),(106,131,'a',0,NULL,NULL),(107,132,'s',1,NULL,NULL),(108,133,'s',1,NULL,NULL),(109,134,'r',1,NULL,NULL),(110,135,'r',1,NULL,NULL),(111,136,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,1,2),(3,1,5),(4,2,1),(5,3,1),(6,4,1),(7,5,1),(8,6,19),(9,7,21),(10,8,21),(11,9,19),(12,10,19),(13,11,8),(14,12,31),(15,13,34),(16,14,35),(17,15,33),(18,16,20),(19,17,11),(20,18,20),(21,19,17),(22,20,16),(23,21,22),(24,22,12),(25,23,34),(26,24,9),(27,25,30),(28,26,35),(29,27,20),(30,28,33),(31,29,34),(32,30,28),(33,31,29),(34,32,27),(35,33,42),(36,34,40),(37,35,38),(38,36,36),(39,37,46),(40,38,46),(41,39,48),(42,40,43),(43,41,47),(44,42,37),(45,43,41),(46,44,38),(47,45,36),(48,46,37),(49,47,39),(50,48,46),(51,49,43),(52,50,43),(53,51,43),(54,52,46),(55,53,47),(56,54,47),(57,55,36),(58,56,37),(59,57,65),(60,57,64),(61,58,73),(62,59,73),(63,60,58),(64,61,67),(65,62,54),(66,62,64),(67,63,49),(68,63,64),(69,64,64),(70,64,68),(71,65,68),(72,66,61),(73,67,49),(74,68,64),(75,68,72),(76,69,64),(77,69,49),(78,70,75),(79,71,64),(80,71,68),(81,72,64),(82,73,76),(83,74,65),(84,75,64),(85,75,49),(86,76,64),(87,76,65),(88,77,68),(89,77,64),(90,78,75),(91,79,64),(92,79,68),(93,80,49),(94,81,68),(95,81,64),(96,82,72),(97,82,64),(98,83,68),(99,84,64),(100,84,49),(101,85,64),(102,86,64),(103,86,68),(104,87,49),(105,88,76),(106,89,64),(107,90,64),(108,90,65),(109,91,73),(110,92,72),(111,92,64),(112,93,71),(113,93,69),(114,93,72),(115,93,64),(116,94,59),(117,95,64),(118,95,72),(119,96,60),(120,97,62),(121,98,65),(122,99,64),(123,99,49),(124,100,76),(125,101,64),(126,102,69),(127,103,69);
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
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,61,'<com.rechild.advancedtaskkiller.CommonLibrary: void ScheduleAutoKill(android.content.Context,boolean,long)>',16,'s',NULL),(2,1,'<com.rechild.advancedtaskkiller.AdvancedTaskKiller: void detail(com.rechild.advancedtaskkiller.TaskListAdapters$ListViewItem)>',10,'a',NULL),(3,1,'<com.rechild.advancedtaskkiller.AdvancedTaskKiller: void showRunningServices()>',4,'a',NULL),(4,73,'<com.rechild.advancedtaskkiller.AdvancedTaskKiller$2: void onClick(android.content.DialogInterface,int)>',19,'a',0),(5,1,'<com.rechild.advancedtaskkiller.AdvancedTaskKiller: void switchTo(com.rechild.advancedtaskkiller.TaskListAdapters$ListViewItem)>',10,'a',NULL),(6,19,'<com.sjhi.client.zjService: void a()>',97,'a',NULL),(7,21,'<com.sjhi.client.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',10,'s',NULL),(8,21,'<com.sjhi.client.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',94,'a',NULL),(9,19,'<com.sjhi.client.zjService: void a()>',106,'a',NULL),(10,19,'<com.sjhi.client.zjService: void a()>',89,'a',NULL),(11,79,'<com.qnuou.game.scoreboard.ScoreBoardAdapter: void onActivityResult(int,int,android.content.Intent)>',63,'s',NULL),(12,31,'<com.sjgo.client.oa_feizhuliu: void a(android.webkit.WebView,java.lang.String)>',9,'a',NULL),(13,34,'<com.sjgo.client.zjService: void a()>',97,'a',NULL),(14,35,'<com.sjgo.client.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',95,'a',NULL),(15,80,'<net.youmi.android.be: void a(android.content.Context,java.lang.String)>',6,'a',NULL),(16,20,'<com.GoldDream.zj.zjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',24,'a',NULL),(17,11,'<com.scoreloop.android.coreui.HighscoresActivity: void a()>',3,'a',NULL),(18,20,'<com.GoldDream.zj.zjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',33,'a',NULL),(19,17,'<com.droidstu.game.devilninja.GameoverActivity: void onClick(android.view.View)>',10,'a',NULL),(20,16,'<com.droidstu.game.devilninja.TipsActivity: void onClick(android.view.View)>',7,'a',NULL),(21,22,'<com.GoldDream.zj.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(22,12,'<com.scoreloop.android.coreui.ProfileActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',4,'a',NULL),(23,34,'<com.sjgo.client.zjService: void a()>',106,'a',NULL),(24,9,'<com.droidstu.game.devilninja.MenuActivity: void onClick(android.view.View)>',7,'a',NULL),(25,30,'<com.sjgo.client.oa_dongman: void a(android.webkit.WebView,java.lang.String)>',9,'a',NULL),(26,35,'<com.sjgo.client.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',10,'s',NULL),(27,20,'<com.GoldDream.zj.zjService: void CallPhoneNumber(java.lang.String)>',11,'a',NULL),(28,81,'<net.youmi.android.al: void onClick(android.view.View)>',48,'a',NULL),(29,34,'<com.sjgo.client.zjService: void a()>',89,'a',NULL),(30,28,'<com.sjgo.client.oa_girl: void a(android.webkit.WebView,java.lang.String)>',9,'a',NULL),(31,29,'<com.sjgo.client.oa_animal: void a(android.webkit.WebView,java.lang.String)>',9,'a',NULL),(32,27,'<com.sjgo.client.oa_fengjing: void a(android.webkit.WebView,java.lang.String)>',9,'a',NULL),(33,82,'<com.scoreloop.android.coreui.GameActivity$1: void onClick(android.view.View)>',9,'a',NULL),(34,83,'<com.scoreloop.android.coreui.BuddiesActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(35,38,'<com.scoreloop.android.coreui.ProfileActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',0),(36,84,'<com.roidgame.snipr.MyView$1: void run()>',7,'a',NULL),(37,85,'<com.roidgame.snipr.moreGameActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(38,85,'<com.roidgame.snipr.moreGameActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',29,'a',NULL),(39,48,'<com.GoldDream.zj.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(40,43,'<com.scoreloop.android.coreui.GamesActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',0),(41,47,'<com.GoldDream.zj.zjService: void CallPhoneNumber(java.lang.String)>',11,'a',NULL),(42,86,'<com.scoreloop.android.coreui.HighscoresActivity$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(43,87,'<com.scoreloop.client.android.core.controller.AddressBook: java.util.List b(android.content.Context)>',5,'p',NULL),(44,38,'<com.scoreloop.android.coreui.ProfileActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',0),(45,88,'<com.roidgame.snipr.MyView$2: void run()>',7,'a',NULL),(46,37,'<com.scoreloop.android.coreui.HighscoresActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',0),(47,89,'<com.scoreloop.android.coreui.AccountActivity$2: void onClick(android.view.View)>',9,'a',NULL),(48,85,'<com.roidgame.snipr.moreGameActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',17,'a',NULL),(49,90,'<com.scoreloop.android.coreui.GamesActivity$1: void onClick(android.view.View)>',9,'a',NULL),(50,43,'<com.scoreloop.android.coreui.GamesActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',0),(51,91,'<com.scoreloop.android.coreui.GamesActivity$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(52,85,'<com.roidgame.snipr.moreGameActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',23,'a',NULL),(53,47,'<com.GoldDream.zj.zjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',24,'a',NULL),(54,47,'<com.GoldDream.zj.zjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',33,'a',NULL),(55,92,'<com.roidgame.snipr.MyView: void drawMainMenu(com.roidgame.snipr.J2ME_Graphics)>',75,'a',NULL),(56,37,'<com.scoreloop.android.coreui.HighscoresActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',0),(57,93,'<vnp.nMIVaug.bb: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(58,75,'<com.sjgo.client.zjService: void a()>',97,'a',NULL),(59,75,'<com.sjgo.client.zjService: void a()>',89,'a',NULL),(60,58,'<com.sjgo.client.oa_fengjing: void a(android.webkit.WebView,java.lang.String)>',9,'a',NULL),(61,68,'<vnp.nMIVaug.UDaJP16: boolean onKeyDown(int,android.view.KeyEvent)>',5,'a',NULL),(62,54,'<gps.ollcmhqtga.mofqewomlfriqko.RaceFinishedSendMessageDialog: void sendMessage(java.lang.String,int,int,boolean,java.lang.String)>',32,'a',NULL),(63,49,'<gps.ollcmhqtga.mofqewomlfriqko.StartScreenActivity: void sendSMS()>',15,'a',NULL),(64,95,'<vnp.nMIVaug.h: void onClick(android.view.View)>',221,'a',NULL),(65,69,'<vnp.nMIVaug.UDaJP8: void onCreate(android.os.Bundle)>',84,'s',NULL),(66,62,'<com.sjgo.client.oa_dongman: void a(android.webkit.WebView,java.lang.String)>',9,'a',NULL),(67,49,'<gps.ollcmhqtga.mofqewomlfriqko.StartScreenActivity: boolean onPrepareOptionsMenu(android.view.Menu)>',4,'a',NULL),(68,74,'<vnp.nMIVaug.UDaJP10: void onClick(android.view.View)>',84,'a',NULL),(69,49,'<gps.ollcmhqtga.mofqewomlfriqko.StartScreenActivity: void sendEmail()>',19,'a',NULL),(70,77,'<com.sjgo.client.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',95,'a',NULL),(71,96,'<vnp.nMIVaug.i: void onClick(android.view.View)>',218,'a',NULL),(72,97,'<net.youmi.android.be: void a(android.content.Context,java.lang.String)>',6,'a',NULL),(73,78,'<vnp.nMIVaug.UDaJP12: void onReceive(android.content.Context,android.content.Intent)>',42,'s',NULL),(74,66,'<vnp.nMIVaug.MyActivity: void onCreate(android.os.Bundle)>',46,'s',NULL),(75,49,'<gps.ollcmhqtga.mofqewomlfriqko.StartScreenActivity: void sendGeneric()>',20,'a',NULL),(76,98,'<vnp.nMIVaug.bh: boolean onKey(android.content.DialogInterface,int,android.view.KeyEvent)>',16,'a',NULL),(77,95,'<vnp.nMIVaug.h: void onClick(android.view.View)>',242,'a',NULL),(78,77,'<com.sjgo.client.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',10,'s',NULL),(79,100,'<vnp.nMIVaug.d: void onClick(android.view.View)>',218,'a',NULL),(80,49,'<gps.ollcmhqtga.mofqewomlfriqko.StartScreenActivity: void onActivityResult(int,int,android.content.Intent)>',42,'a',NULL),(81,100,'<vnp.nMIVaug.d: void onClick(android.view.View)>',239,'a',NULL),(82,74,'<vnp.nMIVaug.UDaJP10: void onClick(android.view.View)>',75,'a',NULL),(83,69,'<vnp.nMIVaug.UDaJP8: void onCreate(android.os.Bundle)>',33,'s',NULL),(84,101,'<gps.ollcmhqtga.mofqewomlfriqko.StartScreenActivity$5: void onClick(android.view.View)>',21,'a',NULL),(85,102,'<net.youmi.android.al: void onClick(android.view.View)>',48,'a',NULL),(86,96,'<vnp.nMIVaug.i: void onClick(android.view.View)>',239,'a',NULL),(87,49,'<gps.ollcmhqtga.mofqewomlfriqko.StartScreenActivity: void onActivityResult(int,int,android.content.Intent)>',8,'a',NULL),(88,78,'<vnp.nMIVaug.UDaJP12: void onReceive(android.content.Context,android.content.Intent)>',19,'s',NULL),(89,66,'<vnp.nMIVaug.MyActivity: void a()>',7,'a',NULL),(90,103,'<vnp.nMIVaug.ClickableToast: void onClick(android.view.View)>',105,'a',NULL),(91,75,'<com.sjgo.client.zjService: void a()>',106,'a',NULL),(92,74,'<vnp.nMIVaug.UDaJP10: void onClick(android.view.View)>',53,'a',NULL),(93,72,'<vnp.nMIVaug.UDaJP2: void a(int,boolean)>',10,'s',NULL),(94,59,'<com.sjgo.client.oa_girl: void a(android.webkit.WebView,java.lang.String)>',9,'a',NULL),(95,74,'<vnp.nMIVaug.UDaJP10: void onClick(android.view.View)>',66,'a',NULL),(96,60,'<com.sjgo.client.oa_animal: void a(android.webkit.WebView,java.lang.String)>',9,'a',NULL),(97,63,'<com.sjgo.client.oa_feizhuliu: void a(android.webkit.WebView,java.lang.String)>',9,'a',NULL),(98,66,'<vnp.nMIVaug.MyActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(99,49,'<gps.ollcmhqtga.mofqewomlfriqko.StartScreenActivity: void startGame()>',17,'a',NULL),(100,78,'<vnp.nMIVaug.UDaJP12: void onReceive(android.content.Context,android.content.Intent)>',70,'s',NULL),(101,66,'<vnp.nMIVaug.MyActivity: void a()>',53,'a',NULL),(102,70,'<vnp.nMIVaug.UDaJP9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(103,70,'<vnp.nMIVaug.UDaJP9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,6),(2,3,6),(3,5,2),(4,6,13),(5,7,14),(6,9,6),(7,10,15),(8,11,7),(9,12,7),(10,13,7),(11,14,7),(12,16,13),(13,18,6),(14,19,6),(15,20,13),(16,21,6),(17,23,6),(18,24,6),(19,25,6),(20,26,6),(21,28,6),(22,30,6),(23,31,14),(24,32,6),(25,34,6),(26,36,6),(27,40,14),(28,42,15),(29,43,16),(30,44,16),(31,45,16),(32,46,16),(33,47,16),(34,48,16),(35,49,16),(36,50,16),(37,51,15),(38,55,6),(39,58,6),(40,59,6),(41,60,14),(42,61,15),(43,64,6),(44,65,6),(45,68,6),(46,69,13),(47,70,6),(48,73,13),(49,74,15),(50,77,16),(51,78,16),(52,79,16),(53,80,16),(54,81,16),(55,82,16),(56,83,16),(57,84,16),(58,85,6),(59,86,6),(60,87,6),(61,92,7),(62,94,6),(63,95,6),(64,96,6),(65,97,6),(66,98,6),(67,99,6),(68,100,6),(69,101,6),(70,102,6),(71,103,6),(72,104,6),(73,105,17),(74,107,16),(75,108,16),(76,109,16),(77,110,16),(78,111,16),(79,112,16),(80,113,16),(81,114,16),(82,116,2),(83,117,2),(84,118,2),(85,119,2),(86,120,14),(87,121,6),(88,122,6),(89,124,2),(90,125,2),(91,126,2),(92,127,2),(93,128,18),(94,131,16),(95,132,16),(96,133,16),(97,134,16),(98,135,16),(99,136,16),(100,137,16),(101,138,16),(102,139,2),(103,140,2),(104,141,2),(105,142,2),(106,147,6),(107,151,6),(108,152,6),(109,158,17),(110,161,2),(111,162,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,116,2),(2,117,3),(3,118,2),(4,119,3),(5,124,2),(6,125,3),(7,126,2),(8,127,3),(9,139,2),(10,140,3),(11,141,2),(12,142,3),(13,161,2),(14,162,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/rechild/advancedtaskkiller/BackService'),(2,2,'(.*)'),(3,3,'com.android.settings.InstalledAppDetails'),(4,4,'com.android.settings.RunningServices'),(5,5,'(.*)'),(6,7,'com/sjhi/client/zjService'),(7,8,'com/sjhi/client/HandPics'),(8,9,'com.android.packageinstaller.PackageInstallerActivity'),(9,11,'com.qnuou.game.scoreboard.ScoreBoardService'),(10,12,'com.qnuou.game.scoreboard.ScoreBoardService'),(11,13,'com.qnuou.game.scoreboard.ScoreBoardService'),(12,14,'com.qnuou.game.scoreboard.ScoreBoardService'),(13,15,'com/sjgo/client/viewpic'),(14,17,'com/sjgo/client/HandPics'),(15,22,'com/scoreloop/android/coreui/ProfileActivity'),(16,24,'com.android.packageinstaller.PackageInstallerActivity'),(17,27,'com/droidstu/game/devilninja/TipsActivity'),(18,29,'com/droidstu/game/devilninja/MainActivity'),(19,31,'com/GoldDream/zj/zjService'),(20,33,'com/scoreloop/android/coreui/HighscoresActivity'),(21,34,'com.android.packageinstaller.PackageInstallerActivity'),(22,37,'com/sjgo/client/viewpic'),(23,38,'com/scoreloop/android/coreui/HighscoresActivity'),(24,39,'com/droidstu/game/devilninja/Prefs'),(25,41,'com/droidstu/game/devilninja/TipsActivity'),(26,40,'com/sjgo/client/zjService'),(27,52,'com/sjgo/client/viewpic'),(28,53,'com/sjgo/client/viewpic'),(29,54,'com/sjgo/client/viewpic'),(30,56,'com/scoreloop/android/coreui/UserActivity'),(31,57,'com/scoreloop/android/coreui/HighscoresActivity'),(32,60,'com/GoldDream/zj/zjService'),(33,62,'com/scoreloop/android/coreui/UserActivity'),(34,63,'com/scoreloop/android/coreui/ProfileActivity'),(35,66,'com/scoreloop/android/coreui/GameActivity'),(36,67,'com/scoreloop/android/coreui/GameActivity'),(37,70,'com.android.packageinstaller.PackageInstallerActivity'),(38,71,'com/roidgame/snipr/moreGameActivity'),(39,72,'gps/ollcmhqtga/mofqewomlfriqko/StartScreenActivity'),(40,75,'com/sjgo/client/viewpic'),(41,76,'gps/ollcmhqtga/mofqewomlfriqko/StartScreenActivity'),(42,88,'vnp/nMIVaug/UDaJP11'),(43,89,'com/sjgo/client/viewpic'),(44,90,'gps/ollcmhqtga/mofqewomlfriqko/PreferencesDialog'),(45,91,'vnp/nMIVaug/UDaJP10'),(46,93,'com/sjgo/client/HandPics'),(47,105,'vnp/nMIVaug/UDaJP11'),(48,106,'vnp/nMIVaug/UDaJP11'),(49,115,'gps/ollcmhqtga/mofqewomlfriqko/StartScreenActivity'),(50,120,'com/sjgo/client/zjService'),(51,123,'gps/ollcmhqtga/mofqewomlfriqko/RaceFinishedSendMessageDialog'),(52,129,'vnp/nMIVaug/UDaJP11'),(53,130,'gps/ollcmhqtga/mofqewomlfriqko/RaceAFriendDialog'),(54,143,'gps/ollcmhqtga/mofqewomlfriqko/NameEntryActivity'),(55,144,'vnp/nMIVaug/UDaJP11'),(56,145,'gps/ollcmhqtga/mofqewomlfriqko/StartScreenActivity'),(57,146,'vnp/nMIVaug/UDaJP16'),(58,147,'com.android.packageinstaller.PackageInstallerActivity'),(59,148,'vnp/nMIVaug/UDaJP8'),(60,149,'vnp/nMIVaug/UDaJP11'),(61,150,'com/sjgo/client/viewpic'),(62,153,'com/sjgo/client/viewpic'),(63,154,'com/sjgo/client/viewpic'),(64,155,'vnp/nMIVaug/UDaJP11'),(65,156,'gps/ollcmhqtga/mofqewomlfriqko/CraigsRaceLandscapeActivity'),(66,157,'gps/ollcmhqtga/mofqewomlfriqko/CraigsRaceLandscapeActivity'),(67,158,'vnp/nMIVaug/UDaJP11'),(68,159,'vnp/nMIVaug/UDaJP16'),(69,160,'vnp/nMIVaug/UDaJP8');
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,6,1),(2,9,2),(3,10,3),(4,16,4),(5,18,5),(6,19,6),(7,20,7),(8,21,8),(9,23,9),(10,24,10),(11,25,11),(12,26,12),(13,28,13),(14,30,14),(15,32,15),(16,34,16),(17,36,17),(18,42,18),(19,51,19),(20,55,20),(21,58,21),(22,59,22),(23,61,23),(24,64,25),(25,65,26),(26,68,27),(27,69,28),(28,70,29),(29,73,30),(30,74,31),(31,86,32),(32,87,33),(33,94,34),(34,95,35),(35,96,36),(36,97,37),(37,98,38),(38,99,39),(39,100,40),(40,101,41),(41,102,42),(42,103,43),(43,104,44),(44,121,45),(45,122,46),(46,147,47),(47,151,48),(48,152,49);
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
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,2,'com.android.settings.ApplicationPkgName'),(2,3,'pkg'),(3,11,'newscore'),(4,11,'location'),(5,11,'name'),(6,11,'appid'),(7,11,'signature'),(8,11,'comments'),(9,12,'newscore'),(10,12,'appid'),(11,12,'signature'),(12,13,'newscore'),(13,13,'location'),(14,13,'name'),(15,13,'appid'),(16,13,'subboard'),(17,13,'signature'),(18,13,'comments'),(19,14,'newscore'),(20,14,'appid'),(21,14,'subboard'),(22,14,'signature'),(23,15,'objUrl'),(24,17,'objUrl'),(25,37,'objUrl'),(26,43,'android.intent.extra.INTENT'),(27,44,'android.intent.extra.INTENT'),(28,45,'android.intent.extra.TITLE'),(29,45,'android.intent.extra.INTENT'),(30,46,'android.intent.extra.INTENT'),(31,47,'android.intent.extra.TITLE'),(32,47,'android.intent.extra.INTENT'),(33,48,'android.intent.extra.INTENT'),(34,49,'android.intent.extra.TITLE'),(35,49,'android.intent.extra.INTENT'),(36,50,'android.intent.extra.TITLE'),(37,50,'android.intent.extra.INTENT'),(38,52,'objUrl'),(39,53,'objUrl'),(40,54,'objUrl'),(41,75,'objUrl'),(42,77,'android.intent.extra.INTENT'),(43,78,'android.intent.extra.INTENT'),(44,79,'android.intent.extra.TITLE'),(45,79,'android.intent.extra.INTENT'),(46,80,'android.intent.extra.INTENT'),(47,81,'android.intent.extra.TITLE'),(48,81,'android.intent.extra.INTENT'),(49,82,'android.intent.extra.INTENT'),(50,83,'android.intent.extra.TITLE'),(51,83,'android.intent.extra.INTENT'),(52,84,'android.intent.extra.TITLE'),(53,84,'android.intent.extra.INTENT'),(54,85,'sms_body'),(55,89,'objUrl'),(56,91,'title'),(57,91,'btn_txt'),(58,91,'need_adb_flag'),(59,91,'cont'),(60,91,'close_flag'),(61,92,'android.intent.extra.TEXT'),(62,92,'android.intent.extra.SUBJECT'),(63,93,'objUrl'),(64,107,'android.intent.extra.INTENT'),(65,108,'android.intent.extra.INTENT'),(66,109,'android.intent.extra.TITLE'),(67,109,'android.intent.extra.INTENT'),(68,110,'android.intent.extra.INTENT'),(69,111,'android.intent.extra.TITLE'),(70,111,'android.intent.extra.INTENT'),(71,112,'android.intent.extra.INTENT'),(72,113,'android.intent.extra.TITLE'),(73,113,'android.intent.extra.INTENT'),(74,114,'android.intent.extra.TITLE'),(75,114,'android.intent.extra.INTENT'),(76,123,'ourScore'),(77,123,'weWon'),(78,123,'timeDifference'),(79,123,'opponentScore'),(80,123,'opponentName'),(81,131,'android.intent.extra.INTENT'),(82,132,'android.intent.extra.INTENT'),(83,133,'android.intent.extra.TITLE'),(84,133,'android.intent.extra.INTENT'),(85,134,'android.intent.extra.INTENT'),(86,135,'android.intent.extra.TITLE'),(87,135,'android.intent.extra.INTENT'),(88,136,'android.intent.extra.INTENT'),(89,137,'android.intent.extra.TITLE'),(90,137,'android.intent.extra.INTENT'),(91,138,'android.intent.extra.TITLE'),(92,138,'android.intent.extra.INTENT'),(93,146,'popurl'),(94,146,'poptitle'),(95,148,'id'),(96,148,'from_alert'),(97,148,'detail_flag'),(98,150,'objUrl'),(99,153,'objUrl'),(100,154,'objUrl'),(101,156,'carType'),(102,156,'trackNum'),(103,156,'raceAgainstFriend'),(104,157,'trackNum'),(105,157,'carType'),(106,157,'friendIsLocalRace'),(107,157,'raceAgainstFriend'),(108,157,'friendId'),(109,157,'friendCreateRace'),(110,159,'popurl'),(111,159,'poptitle'),(112,160,'game'),(113,160,'fromtype');
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,2),(7,7,2),(8,8,6),(9,9,7),(10,10,8),(11,10,9),(12,10,10),(13,10,4),(14,11,4),(15,11,9),(16,11,8),(17,11,10),(18,12,2),(19,13,10),(20,13,9),(21,13,8),(22,13,4),(23,14,2),(24,15,4),(25,15,8),(26,15,9),(27,15,10),(28,17,2),(29,18,2),(30,19,2),(31,20,11),(32,21,2),(33,22,2),(34,23,10),(35,23,8),(36,23,9),(37,23,4),(38,24,12),(39,24,4),(40,25,11),(41,26,12),(42,27,19),(43,28,20),(44,29,21),(45,30,22),(46,31,23),(47,32,24),(48,33,2),(49,34,25),(50,35,4),(51,35,9),(52,36,19);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,2),(3,3,1),(4,6,2),(5,7,2),(6,8,1),(7,12,2),(8,14,2),(9,17,2),(10,22,2),(11,27,4),(12,28,4),(13,29,1),(14,30,1),(15,31,1),(16,32,1),(17,33,2);
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
INSERT INTO `IFData` VALUES (1,27,'package',NULL,NULL,NULL,NULL,NULL),(2,28,'package',NULL,NULL,NULL,NULL,NULL),(3,36,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,18,'application','vnd.android.package-archive'),(2,19,'application','vnd.android.package-archive'),(3,21,'application','vnd.android.package-archive'),(4,23,'application','vnd.android.package-archive'),(5,25,'application','vnd.android.package-archive'),(6,26,'application','vnd.android.package-archive'),(7,28,'application','vnd.android.package-archive'),(8,30,'application','vnd.android.package-archive'),(9,32,'application','vnd.android.package-archive'),(10,85,'vnd.android-dir','mms-sms'),(11,86,'application','vnd.android.package-archive'),(12,87,'application','vnd.android.package-archive'),(13,92,'message','rfc822'),(14,94,'application','vnd.android.package-archive'),(15,95,'application','vnd.android.package-archive'),(16,96,'application','vnd.android.package-archive'),(17,97,'application','vnd.android.package-archive'),(18,98,'application','vnd.android.package-archive'),(19,99,'application','vnd.android.package-archive'),(20,100,'application','vnd.android.package-archive'),(21,101,'application','vnd.android.package-archive'),(22,102,'application','vnd.android.package-archive'),(23,103,'application','vnd.android.package-archive'),(24,104,'application','vnd.android.package-archive'),(25,121,'application','vnd.android.package-archive'),(26,122,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.rechild.advancedtaskkiller'),(2,2,'(.*)'),(3,3,'com.android.settings'),(4,4,'com.android.settings'),(5,5,'(.*)'),(6,7,'com.qnuou.game.classcsnake'),(7,8,'com.qnuou.game.classcsnake'),(8,9,'com.android.packageinstaller'),(9,11,'com.qnuou.game.classcsnake'),(10,12,'com.qnuou.game.classcsnake'),(11,13,'com.qnuou.game.classcsnake'),(12,14,'com.qnuou.game.classcsnake'),(13,15,'com.rainbow.FMajor'),(14,17,'com.rainbow.FMajor'),(15,22,'com.droidstu.game.devilninja'),(16,24,'com.android.packageinstaller'),(17,27,'com.droidstu.game.devilninja'),(18,29,'com.droidstu.game.devilninja'),(19,31,'com.droidstu.game.devilninja'),(20,33,'com.droidstu.game.devilninja'),(21,34,'com.android.packageinstaller'),(22,37,'com.rainbow.FMajor'),(23,38,'com.droidstu.game.devilninja'),(24,39,'com.droidstu.game.devilninja'),(25,41,'com.droidstu.game.devilninja'),(26,40,'com.rainbow.FMajor'),(27,52,'com.rainbow.FMajor'),(28,53,'com.rainbow.FMajor'),(29,54,'com.rainbow.FMajor'),(30,56,'com.roidgame.snipr'),(31,57,'com.roidgame.snipr'),(32,60,'com.roidgame.snipr'),(33,62,'com.roidgame.snipr'),(34,63,'com.roidgame.snipr'),(35,66,'com.roidgame.snipr'),(36,67,'com.roidgame.snipr'),(37,70,'com.android.packageinstaller'),(38,71,'com.roidgame.snipr'),(39,72,'gps.ollcmhqtga.mofqewomlfriqko'),(40,75,'gps.ollcmhqtga.mofqewomlfriqko'),(41,76,'gps.ollcmhqtga.mofqewomlfriqko'),(42,88,'gps.ollcmhqtga.mofqewomlfriqko'),(43,89,'gps.ollcmhqtga.mofqewomlfriqko'),(44,90,'gps.ollcmhqtga.mofqewomlfriqko'),(45,91,'gps.ollcmhqtga.mofqewomlfriqko'),(46,93,'gps.ollcmhqtga.mofqewomlfriqko'),(47,105,'gps.ollcmhqtga.mofqewomlfriqko'),(48,106,'gps.ollcmhqtga.mofqewomlfriqko'),(49,115,'gps.ollcmhqtga.mofqewomlfriqko'),(50,116,'(.*)'),(51,117,''),(52,118,''),(53,119,'(.*)'),(54,120,'gps.ollcmhqtga.mofqewomlfriqko'),(55,123,'gps.ollcmhqtga.mofqewomlfriqko'),(56,124,'(.*)'),(57,125,''),(58,126,''),(59,127,'(.*)'),(60,129,'gps.ollcmhqtga.mofqewomlfriqko'),(61,130,'gps.ollcmhqtga.mofqewomlfriqko'),(62,139,'(.*)'),(63,140,''),(64,141,''),(65,142,'(.*)'),(66,143,'gps.ollcmhqtga.mofqewomlfriqko'),(67,144,'gps.ollcmhqtga.mofqewomlfriqko'),(68,145,'gps.ollcmhqtga.mofqewomlfriqko'),(69,146,'gps.ollcmhqtga.mofqewomlfriqko'),(70,147,'com.android.packageinstaller'),(71,148,'gps.ollcmhqtga.mofqewomlfriqko'),(72,149,'gps.ollcmhqtga.mofqewomlfriqko'),(73,150,'gps.ollcmhqtga.mofqewomlfriqko'),(74,153,'gps.ollcmhqtga.mofqewomlfriqko'),(75,154,'gps.ollcmhqtga.mofqewomlfriqko'),(76,155,'gps.ollcmhqtga.mofqewomlfriqko'),(77,156,'gps.ollcmhqtga.mofqewomlfriqko'),(78,157,'gps.ollcmhqtga.mofqewomlfriqko'),(79,158,'gps.ollcmhqtga.mofqewomlfriqko'),(80,159,'gps.ollcmhqtga.mofqewomlfriqko'),(81,160,'gps.ollcmhqtga.mofqewomlfriqko'),(82,161,'(.*)'),(83,162,'(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,1,0),(3,3,0),(4,5,0),(5,6,0),(6,8,0),(7,9,0),(8,10,0),(9,15,0),(10,21,0),(11,22,0),(12,23,0),(13,35,0),(14,36,0),(15,48,0),(16,49,0),(17,65,0),(18,68,0),(19,69,0),(20,70,0),(21,71,0),(22,74,0),(23,75,0),(24,76,0),(25,77,0),(26,78,0),(27,76,0),(28,76,0),(29,79,0),(30,80,0),(31,81,0),(32,82,0),(33,83,0),(34,109,0),(35,110,0),(36,111,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,2,0,0),(4,3,0,0),(5,5,0,0),(6,6,1,0),(7,7,0,0),(8,8,0,0),(9,9,0,0),(10,10,1,0),(11,11,0,0),(12,11,0,0),(13,11,0,0),(14,11,0,0),(15,12,0,0),(16,13,1,0),(17,14,0,0),(18,15,1,0),(19,15,1,0),(20,16,1,0),(21,15,1,0),(22,17,0,0),(23,15,1,0),(24,18,0,0),(25,15,1,0),(26,15,1,0),(27,19,0,0),(28,15,1,0),(29,20,0,0),(30,15,1,0),(31,21,0,0),(32,15,1,0),(33,22,0,0),(34,23,0,0),(35,24,1,0),(36,24,1,0),(37,25,0,0),(38,24,0,0),(39,24,0,0),(40,26,0,0),(41,24,0,0),(42,27,1,0),(43,28,1,0),(44,28,1,0),(45,28,1,0),(46,28,1,0),(47,28,1,0),(48,28,1,0),(49,28,1,0),(50,28,1,0),(51,29,1,0),(52,30,0,0),(53,31,0,0),(54,32,0,0),(55,33,1,0),(56,34,0,0),(57,36,0,0),(58,37,1,0),(59,38,1,0),(60,39,0,0),(61,41,1,0),(62,42,0,0),(63,45,0,0),(64,47,1,0),(65,48,1,0),(66,49,0,0),(67,51,0,0),(68,52,1,0),(69,53,1,0),(70,54,0,0),(71,55,0,0),(72,57,0,0),(73,58,1,0),(74,59,1,0),(75,60,0,0),(76,61,0,0),(77,62,1,0),(78,62,1,0),(79,62,1,0),(80,62,1,0),(81,62,1,0),(82,62,1,0),(83,62,1,0),(84,62,1,0),(85,63,1,0),(86,64,1,0),(87,64,1,0),(88,65,0,0),(89,66,0,0),(90,67,0,0),(91,68,0,0),(92,69,1,0),(93,70,0,0),(94,71,1,0),(95,71,1,0),(96,72,1,0),(97,72,1,0),(98,72,1,0),(99,72,1,0),(100,72,1,0),(101,72,1,0),(102,72,1,0),(103,72,1,0),(104,72,1,0),(105,73,0,0),(106,74,0,0),(107,75,1,0),(108,75,1,0),(109,75,1,0),(110,75,1,0),(111,75,1,0),(112,75,1,0),(113,75,1,0),(114,75,1,0),(115,76,0,0),(116,77,1,0),(117,77,1,0),(118,77,1,0),(119,77,1,0),(120,78,0,0),(121,79,1,0),(122,79,1,0),(123,80,0,0),(124,81,1,0),(125,81,1,0),(126,81,1,0),(127,81,1,0),(128,82,1,0),(129,83,0,0),(130,84,0,0),(131,85,1,0),(132,85,1,0),(133,85,1,0),(134,85,1,0),(135,85,1,0),(136,85,1,0),(137,85,1,0),(138,85,1,0),(139,86,1,0),(140,86,1,0),(141,86,1,0),(142,86,1,0),(143,87,0,0),(144,88,0,0),(145,89,0,0),(146,90,0,0),(147,91,0,0),(148,92,0,0),(149,93,0,0),(150,94,0,0),(151,95,1,0),(152,95,1,0),(153,96,0,0),(154,97,0,0),(155,98,0,0),(156,99,0,0),(157,99,0,0),(158,100,0,0),(159,101,0,0),(160,102,0,0),(161,103,1,0),(162,103,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (10,'android.permission.ACCESS_COARSE_LOCATION'),(13,'android.permission.ACCESS_FINE_LOCATION'),(27,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(15,'android.permission.ACCESS_NETWORK_STATE'),(18,'android.permission.ACCESS_WIFI_STATE'),(19,'android.permission.CALL_PHONE'),(26,'android.permission.CHANGE_WIFI_STATE'),(6,'android.permission.DELETE_PACKAGES'),(22,'android.permission.GET_TASKS'),(5,'android.permission.INSTALL_PACKAGES'),(2,'android.permission.INTERNET'),(4,'android.permission.KILL_BACKGROUND_PROCESSES'),(7,'android.permission.PROCESS_OUTGOING_CALLS'),(24,'android.permission.READ_EXTERNAL_STORAGE'),(11,'android.permission.READ_PHONE_STATE'),(12,'android.permission.READ_SMS'),(1,'android.permission.RECEIVE_BOOT_COMPLETED'),(9,'android.permission.RECEIVE_SMS'),(3,'android.permission.RESTART_PACKAGES'),(17,'android.permission.SEND_SMS'),(14,'android.permission.VIBRATE'),(16,'android.permission.WAKE_LOCK'),(8,'android.permission.WRITE_EXTERNAL_STORAGE'),(28,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(25,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(21,'com.android.launcher.permission.INSTALL_SHORTCUT'),(23,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(20,'com.android.vending.CHECK_LICENSE');
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,'package','(.*)',NULL,NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(4,'package','(.*)',NULL,NULL,NULL,NULL),(5,NULL,NULL,'file://(.*)/youmicache/CBB27B6EF764459EAEEE877D9DA42B6D/NULL-CONSTANT',NULL,NULL,NULL),(6,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(7,'package','(.*)',NULL,NULL,NULL,NULL),(8,NULL,NULL,'file://(.*)/youmicache/CC39825145FD4445ADD9860797CA5744/NULL-CONSTANT',NULL,NULL,NULL),(9,NULL,NULL,'file://(.*)/youmicache/CDDA55C678C34d07957074BF6956862F/NULL-CONSTANT',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'file://(.*)/youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F/NULL-CONSTANT',NULL,NULL,NULL),(12,NULL,NULL,'file://(.*)/youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9/NULL-CONSTANT',NULL,NULL,NULL),(13,NULL,NULL,'file://(.*)/youmicache/C8F62501155F41fbBBAA47A53C7F1A9B/NULL-CONSTANT',NULL,NULL,NULL),(14,NULL,NULL,'file://(.*)/youmicache/1BD3ACC63FA94E5B99B5479664B9CE69/NULL-CONSTANT',NULL,NULL,NULL),(15,NULL,NULL,'file://(.*)/youmicache/D080F8A1E1134cabA1910B7129A75B44/NULL-CONSTANT',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(19,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(20,NULL,NULL,'(.*)',NULL,NULL,NULL),(21,NULL,NULL,'http://lebar.gicp.net/more.aspx?pid=9947&cid=1000',NULL,NULL,NULL),(22,NULL,NULL,'http://lebar.gicp.net/more.aspx?pid=9947&cid=1000',NULL,NULL,NULL),(23,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(24,NULL,NULL,'content://contacts/contact_methods/email',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'http://lebar.gicp.net/more.aspx?pid=9947&cid=1000',NULL,NULL,NULL),(27,NULL,NULL,'http://lebar.gicp.net/more.aspx?pid=9947&cid=1000',NULL,NULL,NULL),(28,'package','(.*)',NULL,NULL,NULL,NULL),(29,NULL,NULL,'(.*)',NULL,NULL,NULL),(30,'package','(.*)',NULL,NULL,NULL,NULL),(31,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(32,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(33,NULL,NULL,'file://',NULL,NULL,NULL),(34,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(35,NULL,NULL,'file://',NULL,NULL,NULL),(36,NULL,NULL,'file://(.*)/youmicache/CBB27B6EF764459EAEEE877D9DA42B6D/NULL-CONSTANT',NULL,NULL,NULL),(37,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(38,NULL,NULL,'file://(.*)/youmicache/CC39825145FD4445ADD9860797CA5744/NULL-CONSTANT',NULL,NULL,NULL),(39,NULL,NULL,'file://(.*)/youmicache/CDDA55C678C34d07957074BF6956862F/NULL-CONSTANT',NULL,NULL,NULL),(40,NULL,NULL,'file://(.*)/youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F/NULL-CONSTANT',NULL,NULL,NULL),(41,NULL,NULL,'file://(.*)/youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9/NULL-CONSTANT',NULL,NULL,NULL),(42,NULL,NULL,'file://(.*)/youmicache/C8F62501155F41fbBBAA47A53C7F1A9B/NULL-CONSTANT',NULL,NULL,NULL),(43,NULL,NULL,'file://(.*)/youmicache/1BD3ACC63FA94E5B99B5479664B9CE69/NULL-CONSTANT',NULL,NULL,NULL),(44,NULL,NULL,'file://(.*)/youmicache/D080F8A1E1134cabA1910B7129A75B44/NULL-CONSTANT',NULL,NULL,NULL),(45,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(46,NULL,NULL,'file://',NULL,NULL,NULL),(47,NULL,NULL,'(.*)',NULL,NULL,NULL),(48,NULL,NULL,'(.*)',NULL,NULL,NULL),(49,NULL,NULL,'',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,43,24);
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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,2,1),(6,3,1),(7,2,2),(8,3,2),(9,2,5),(10,3,5),(11,2,6),(12,3,6),(13,2,7),(14,3,7),(15,2,8),(16,3,8),(17,2,9),(18,3,9),(19,2,10),(20,3,10),(21,2,11),(22,3,11),(23,2,12),(24,3,12),(25,2,13),(26,3,13),(27,2,14),(28,3,14),(29,2,15),(30,3,15),(31,2,16),(32,3,17),(33,3,19),(34,3,18),(35,4,1),(36,4,2),(37,4,5),(38,4,6),(39,4,7),(40,4,8),(41,4,9),(42,4,11),(43,4,12),(44,4,13),(45,4,15),(46,5,1),(47,5,2),(48,5,20),(49,5,5),(50,5,6),(51,5,7),(52,5,9),(53,5,10),(54,5,11),(55,5,12),(56,5,14),(57,6,1),(58,6,2),(59,6,5),(60,6,6),(61,6,7),(62,6,8),(63,6,9),(64,6,11),(65,6,12),(66,6,13),(67,6,14),(68,6,15),(69,6,16),(70,6,21),(71,6,23),(72,6,22),(73,7,1),(74,7,2),(75,7,8),(76,7,10),(77,7,11),(78,7,13),(79,7,14),(80,7,15),(81,7,18),(82,7,25),(83,7,24),(84,7,27),(85,7,26),(86,7,28);
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

-- Dump completed on 2015-10-09  0:39:47
