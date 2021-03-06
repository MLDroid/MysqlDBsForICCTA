-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_445
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
INSERT INTO `ActionStrings` VALUES (8,'(.*)'),(10,'.JiFDRBhj17'),(6,'NHW.oRnUhQO.JiFDRBhj12'),(9,'NHW.oRnUhQO.JiFDRBhj17'),(4,'android.intent.action.BOOT_COMPLETED'),(1,'android.intent.action.MAIN'),(2,'android.intent.action.PACKAGE_ADDED'),(7,'android.intent.action.PACKAGE_REMOVED'),(13,'android.intent.action.SCREEN_OFF'),(3,'android.intent.action.USER_PRESENT'),(5,'android.intent.action.VIEW'),(11,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(12,'com.apmenfia.jflllgius.kScKfndNEUHi');
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
INSERT INTO `Applications` VALUES (1,'com.rtcmuwlqbknjiitd.nweepifljf',10020),(2,'rtn.geqho.jsw.idlibr.bibnosarckiqg',10033),(3,'qsl.ji.pt.pvtkvgvjn',10035),(4,'com.apmenfia.jflllgius',10008),(5,'NHW.oRnUhQO',20009),(6,'com.fteui.ncubteejm',10020),(7,'com.ruavjvivrtbuspsnihgvfjhnfr',10028);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(5,'android.intent.category.HOME'),(3,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(4,'android.intent.categroy.DEFUAULT');
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
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.batteryacidgames.streetball.StreetballActivity'),(2,1,'com.RJOmrCQa.uGMjAeBEPAwF'),(3,1,'com.RJOmrCQa.GpQuBdHAqMJ'),(4,1,'com.nd.dianjin.activity.OfferAppActivity'),(5,1,'com.nd.dianjin.broadcastreceiver.PackagedChangedBroadcastReceiver'),(6,2,'rtn.geqho.jsw.idlibr.bibnosarckiqg.Applause'),(7,2,'rtn.geqho.jsw.idlibr.bibnosarckiqg.OptionActivity'),(8,2,'com.WOoEVJs.qsnCfjkBru'),(9,2,'com.WOoEVJs.akqlsUJkseCiE'),(10,3,'qsl.ji.pt.pvtkvgvjn.GameActivity'),(11,2,'com.WOoEVJs.ntpDurIhbwNACpL'),(12,5,'NHW.oRnUhQO.JiFDRBhj17'),(13,3,'qsl.ji.pt.pvtkvgvjn.MyPreferenceActivity'),(14,2,'com.WOoEVJs.phDWdatTa'),(15,4,'com.apmenfia.jflllgius.MetroQuiz'),(16,3,'qsl.ji.pt.pvtkvgvjn.GameOverDialogActivity'),(17,2,'com.WOoEVJs.MsVNDlkAlpwabB'),(18,3,'qsl.ji.pt.pvtkvgvjn.ScoreDialogActivity'),(19,4,'com.apmenfia.jflllgius.QuestionActivity'),(20,2,'com.WOoEVJs.QBgCWkoDesFPUg'),(21,5,'NHW.oRnUhQO.JiFDRBhj8'),(22,3,'qsl.ji.pt.pvtkvgvjn.DownStepsActivity'),(23,4,'com.apmenfia.jflllgius.PaperActivity'),(24,2,'com.WOoEVJs.userPermissionReceiver'),(25,4,'com.apmenfia.jflllgius.PreferencesActivity'),(26,3,'com.google.ads.AdActivity'),(27,5,'NHW.oRnUhQO.JiFDRBhj9'),(28,4,'com.apmenfia.jflllgius.ScorePut'),(29,3,'com.NNfKRlsk.DebsjghfHVCrKIH'),(30,4,'com.apmenfia.jflllgius.ScoreList'),(31,5,'NHW.oRnUhQO.JiFDRBhj2'),(32,4,'com.lmmob.ad.sdk.LmMobAdWebView'),(33,3,'com.NNfKRlsk.mGavvohs'),(34,4,'com.lmmob.ad.sdk.LmMobFullImageActivity'),(35,5,'NHW.oRnUhQO.JiFDRBhj10'),(36,4,'com.VELpO.sRLigOCf'),(37,3,'com.NNfKRlsk.mNQQilkd'),(38,5,'NHW.oRnUhQO.JiFDRBhj11'),(39,3,'com.NNfKRlsk.RheHSiAKIceJnIi'),(40,3,'com.NNfKRlsk.cGgcKnTQuCM'),(41,4,'com.VELpO.TougfrQg'),(42,3,'com.NNfKRlsk.SLkkpiWeGrSj'),(43,5,'NHW.oRnUhQO.JiFDRBhj12'),(44,4,'com.VELpO.BOutSedcugdb'),(45,3,'com.NNfKRlsk.userPermissionReceiver'),(46,4,'com.VELpO.ibqDrkcJMFdADIq'),(47,4,'com.VELpO.QkscCvsucvf'),(48,4,'com.VELpO.MhkJUORwhqaRf'),(49,4,'com.VELpO.cIWISjrEwK'),(50,4,'com.VELpO.hepfaRQsrC'),(51,4,'com.VELpO.kScKfndNEUHi'),(52,1,'com.nd.dianjin.DianJinPlatform'),(53,6,'com.ggemulator.ggnes.RomManager'),(54,6,'com.ggemulator.ggnes.GamePlayer'),(55,6,'com.ggemulator.ggnes.downloadApp'),(56,6,'com.ggemulator.ggnes.GamePreference'),(57,6,'com.ggemulator.ggnes.KeypadPreference'),(58,6,'com.ggemulator.ggnes.DefaultKeyPad'),(59,6,'com.ggemulator.ggnes.KeyBindingActivity'),(60,6,'com.ggemulator.ggnes.GameGenieActivity'),(61,6,'com.papaya.social.PPYSocialActivity'),(62,6,'com.papaya.social.PPYSocialFriendsActivity'),(63,6,'com.papaya.social.PPYSocialChatActivity'),(64,6,'com.papaya.social.PPYSocialAppsActivity'),(65,6,'com.papaya.social.PPYSocialCircleActivity'),(66,6,'com.papaya.social.PPYSocialMoreActivity'),(67,6,'com.papaya.base.EntryActivity'),(68,6,'com.papaya.web.WebActivity'),(69,6,'com.papaya.social.SocialRegistrationActivity'),(70,6,'com.papaya.chat.FriendsActivity'),(71,6,'com.papaya.chat.ChatActivity'),(72,6,'com.papaya.social.PPYSocialLocationActivity'),(73,6,'com.zong.android.engine.web.ZongWebView'),(74,6,'com.jVGbhoq.uGMjAeBEPAwF'),(75,6,'com.jVGbhoq.GpQuBdHAqMJ'),(76,6,'com.nd.dianjin.activity.OfferAppActivity'),(77,6,'com.nd.dianjin.broadcastreceiver.PackagedChangedBroadcastReceiver'),(78,6,'com.papaya.social.PPYSocialContentProvider'),(79,2,'com.WOoEVJs.j'),(80,2,'com.WOoEVJs.ad'),(81,5,'aw'),(82,2,'com.WOoEVJs.ab'),(83,5,'ax'),(84,4,'com.VELpO.e'),(85,4,'com.VELpO.d'),(86,3,'com.NNfKRlsk.i'),(87,4,'com.VELpO.at'),(88,3,'com.NNfKRlsk.v'),(89,4,'com.apmenfia.jflllgius.QuestionActivity$2'),(90,3,'com.google.ads.util.AdUtil$UserActivityReceiver'),(91,5,'bb'),(92,4,'com.VELpO.aq'),(93,4,'com.VELpO.by'),(94,3,'qsl.ji.pt.pvtkvgvjn.GameOverDialogActivity$1'),(95,4,'com.VELpO.bx'),(96,3,'com.NNfKRlsk.ah'),(97,4,'com.VELpO.h'),(98,4,'com.VELpO.bj'),(99,7,'com.ruavjvivrtbuspsnihgvfjhnfr.PocketDrumActivity'),(100,7,'com.admob.android.ads.AdMobActivity'),(101,7,'com.IvtnNHwD.jhEvOFjQrURnluJ'),(102,7,'com.waps.OffersWebView'),(103,7,'com.IvtnNHwD.fenRcdsEpd'),(104,7,'com.waps.AppConnect'),(105,7,'com.waps.SDKUtils'),(106,7,'com.waps.al'),(107,7,'com.admob.android.ads.q'),(108,7,'com.waps.ao'),(109,7,'com.waps.w'),(110,7,'com.waps.y');
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
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,11,'detailFlag'),(2,11,'iconURL'),(3,20,'fileURL'),(4,11,'apkTitle'),(5,11,'packageName'),(6,17,'fileURL'),(7,7,'GameMusic'),(8,17,'packageName'),(9,9,'np_app_key'),(10,14,'np_app_key'),(11,8,'np_app_key'),(12,11,'np_app_key'),(13,20,'np_app_key'),(14,6,'ChangeTheme'),(15,20,'fileName'),(16,21,'from_alert'),(17,11,'apkSize'),(18,11,'apkSoftID'),(19,7,'Vibrate'),(20,11,'apkVersion'),(21,11,'imageURL'),(22,37,'apkTitle'),(23,6,'Vibrate'),(24,37,'detailFlag'),(25,11,'apkInfo'),(26,6,'GameMusic'),(27,7,'MatchSound'),(28,6,'MatchSound'),(29,37,'apkURL'),(30,11,'apkURL'),(31,7,'ChangeTheme'),(32,35,'package_name'),(33,31,'isDirectFromTable'),(34,37,'apkVersion'),(35,42,'fileURL'),(36,37,'packageName'),(37,37,'iconURL'),(38,36,'soft_id'),(39,21,'game'),(40,34,'lmmob_send_data'),(41,39,'np_app_key'),(42,37,'np_app_key'),(43,29,'np_app_key'),(44,42,'np_app_key'),(45,33,'np_app_key'),(46,40,'fileURL'),(47,26,'action'),(48,44,'title'),(49,35,'url'),(50,44,'from_table'),(51,21,'from_table'),(52,35,'title'),(53,21,'title'),(54,49,'packagename'),(55,35,'version_code'),(56,44,'from_alert'),(57,35,'fromtable'),(58,12,'service_channel'),(59,37,'apkSoftID'),(60,26,'params'),(61,47,'isDirectFromTable'),(62,49,'content'),(63,36,'NEW_APP_ID'),(64,41,'NEW_APP_ID'),(65,49,'apkurl'),(66,47,'from'),(67,48,'content'),(68,21,'status'),(69,32,'lmmob_send_data'),(70,42,'fileName'),(71,40,'packageName'),(72,37,'imageURL'),(73,36,'version_code'),(74,37,'apkInfo'),(75,44,'fromtype'),(76,34,'operationURL'),(77,26,'com.google.ads.AdOpener'),(78,38,'service_channel'),(79,35,'apk_url'),(80,21,'filepath'),(81,37,'apkSize'),(82,35,'content'),(83,48,'btn_txt'),(84,49,'title'),(85,48,'title'),(86,31,'from'),(87,35,'btn_txt'),(88,32,'operationURL'),(89,44,'status'),(90,21,'fromtype'),(91,48,'fromtable'),(92,48,'url'),(93,44,'game'),(94,48,'version_code'),(95,48,'package_name'),(96,41,'poptitle'),(97,44,'filepath'),(98,50,'NEW_APP_ID'),(99,47,'package_name'),(100,41,'popurl'),(101,48,'apk_url'),(102,82,'o'),(103,82,'c'),(104,82,'au'),(105,84,'URL'),(106,82,'mi'),(107,83,'DEVICE_ID'),(108,85,'DEVICE_ID'),(109,82,'json'),(110,82,'sd'),(111,84,'URL_PARAMS'),(112,84,'ACTIVITY_FLAG'),(113,83,'WAPS_ID'),(114,85,'WAPS_ID'),(115,84,'SHWO_FLAG'),(116,82,'b'),(117,83,'APP_ID'),(118,85,'APP_ID'),(119,82,'t'),(120,83,'APP_PID'),(121,85,'APP_PID'),(122,82,'cs'),(123,82,'int'),(124,82,'nosk'),(125,82,'msm'),(126,82,'ap'),(127,84,'isFinshClose'),(128,82,'tr'),(129,83,'CLIENT_PACKAGE'),(130,85,'CLIENT_PACKAGE'),(131,84,'ADVIEW'),(132,83,'ADVIEW'),(133,85,'ADVIEW'),(134,82,'oi'),(135,84,'Notify_Id'),(136,82,'u'),(137,84,'UrlPath'),(138,82,'cbo'),(139,83,'WAPS_PID'),(140,85,'WAPS_PID'),(141,82,'p'),(142,84,'offers_webview_tag'),(143,82,'a'),(144,82,'sku'),(145,84,'Offers_URL'),(146,84,'CLIENT_PACKAGE'),(147,82,'su'),(148,82,'skd'),(149,84,'Notify_Url_Params'),(150,82,'$'),(151,82,'ru'),(152,82,'or'),(153,82,'sc'),(154,84,'USER_ID'),(155,82,'sin'),(156,82,'rd'),(157,82,'ad'),(158,82,'si'),(159,82,'s');
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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'r',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'s',0,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'s',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'r',0,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'a',1,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'r',1,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',1,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',1,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'s',1,NULL,NULL),(39,39,'s',0,NULL,NULL),(40,40,'s',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'r',0,NULL,NULL),(43,43,'r',1,NULL,NULL),(44,44,'a',1,NULL,NULL),(45,45,'r',1,NULL,NULL),(46,46,'a',1,NULL,NULL),(47,47,'a',1,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'s',1,NULL,NULL),(51,51,'r',1,NULL,NULL),(52,53,'a',1,NULL,NULL),(53,54,'a',1,NULL,NULL),(54,55,'a',0,NULL,NULL),(55,56,'a',0,NULL,NULL),(56,57,'a',0,NULL,NULL),(57,58,'a',0,NULL,NULL),(58,59,'a',0,NULL,NULL),(59,60,'a',0,NULL,NULL),(60,61,'a',0,NULL,NULL),(61,62,'a',0,NULL,NULL),(62,63,'a',0,NULL,NULL),(63,64,'a',0,NULL,NULL),(64,65,'a',0,NULL,NULL),(65,66,'a',0,NULL,NULL),(66,67,'a',0,NULL,NULL),(67,68,'a',0,NULL,NULL),(68,69,'a',0,NULL,NULL),(69,70,'a',0,NULL,NULL),(70,71,'a',0,NULL,NULL),(71,72,'a',0,NULL,NULL),(72,73,'a',0,NULL,NULL),(73,74,'a',0,NULL,NULL),(74,75,'a',1,NULL,NULL),(75,76,'a',0,NULL,NULL),(76,77,'r',1,NULL,NULL),(77,78,'p',0,NULL,NULL),(78,87,'r',1,NULL,NULL),(79,90,'r',1,NULL,NULL),(80,92,'r',1,NULL,NULL),(81,99,'a',1,NULL,NULL),(82,100,'a',0,NULL,NULL),(83,101,'a',0,NULL,NULL),(84,102,'a',0,NULL,NULL),(85,103,'a',1,NULL,NULL),(86,110,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,3),(2,2,2),(3,3,3),(4,4,2),(5,5,8),(6,6,9),(7,6,11),(8,7,11),(9,8,6),(10,9,11),(11,9,9),(12,10,24),(13,11,9),(14,12,8),(15,13,9),(16,14,35),(17,15,20),(18,16,27),(19,17,8),(20,18,43),(21,19,6),(22,20,21),(23,21,21),(24,22,9),(25,23,33),(26,24,17),(27,25,33),(28,25,37),(29,26,27),(30,27,9),(31,28,33),(32,29,8),(33,30,43),(34,31,37),(35,32,21),(36,33,33),(37,34,26),(38,35,46),(39,36,35),(40,37,44),(41,38,12),(42,39,42),(43,40,48),(44,41,51),(45,42,21),(46,43,33),(47,43,22),(48,44,21),(49,45,44),(50,46,29),(51,47,21),(52,48,33),(53,48,22),(54,49,43),(55,50,35),(56,51,37),(57,51,33),(58,52,19),(59,53,21),(60,54,19),(61,55,21),(62,56,33),(63,57,29),(64,58,36),(65,59,21),(66,60,40),(67,61,12),(68,62,44),(69,63,35),(70,63,27),(71,63,31),(72,64,16),(73,64,33),(74,65,36),(75,66,21),(76,67,33),(77,67,22),(78,68,23),(79,69,44),(80,70,29),(81,71,35),(82,72,29),(83,73,45),(84,74,21),(85,75,48),(86,76,49),(87,77,21),(88,78,46),(89,79,44),(90,80,31),(91,80,35),(92,80,27),(93,81,15),(94,82,48),(95,83,41),(96,84,48),(97,84,47),(98,84,46),(99,85,48),(100,85,47),(101,85,46),(102,86,51),(103,87,36),(104,88,48),(105,89,44),(106,90,44),(107,91,44),(108,92,51),(109,93,28),(110,94,36),(111,95,49),(112,96,36),(113,97,84),(114,98,85),(115,99,83),(116,99,85),(117,100,85),(118,100,83),(119,101,85),(120,101,83),(121,102,83),(122,103,84),(123,104,85),(124,104,83),(125,105,84),(126,106,83),(127,107,85),(128,108,83),(129,108,85);
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
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,3,'<com.RJOmrCQa.GpQuBdHAqMJ: void a()>',3,'a',NULL),(2,2,'<com.RJOmrCQa.uGMjAeBEPAwF: void a(java.lang.String)>',10,'a',NULL),(3,52,'<com.nd.dianjin.DianJinPlatform: void showOfferWall(android.content.Context,com.nd.dianjin.DianJinPlatform$Oriention)>',7,'a',NULL),(4,2,'<com.RJOmrCQa.uGMjAeBEPAwF: void a()>',3,'a',NULL),(5,8,'<com.WOoEVJs.qsnCfjkBru: void onCreate(android.os.Bundle)>',28,'a',0),(6,79,'<com.WOoEVJs.j: void f(android.content.Context,java.lang.String)>',10,'a',NULL),(7,11,'<com.WOoEVJs.ntpDurIhbwNACpL: void onCreate(android.os.Bundle)>',74,'a',NULL),(8,6,'<rtn.geqho.jsw.idlibr.bibnosarckiqg.Applause: void showOptionDlg()>',12,'a',NULL),(9,11,'<com.WOoEVJs.ntpDurIhbwNACpL: void a(com.WOoEVJs.ntpDurIhbwNACpL,android.content.Context,java.lang.String)>',5,'a',NULL),(10,80,'<com.WOoEVJs.ad: void run()>',25,'s',NULL),(11,9,'<com.WOoEVJs.akqlsUJkseCiE: void b()>',55,'a',NULL),(12,8,'<com.WOoEVJs.qsnCfjkBru: void onCreate(android.os.Bundle)>',33,'a',NULL),(13,9,'<com.WOoEVJs.akqlsUJkseCiE: void b()>',45,'a',NULL),(14,35,'<NHW.oRnUhQO.JiFDRBhj10: void onClick(android.view.View)>',66,'a',NULL),(15,20,'<com.WOoEVJs.QBgCWkoDesFPUg: void a(android.content.Context)>',76,'a',NULL),(16,27,'<NHW.oRnUhQO.JiFDRBhj9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(17,8,'<com.WOoEVJs.qsnCfjkBru: void onCreate(android.os.Bundle)>',18,'a',NULL),(18,43,'<NHW.oRnUhQO.JiFDRBhj12: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(19,6,'<rtn.geqho.jsw.idlibr.bibnosarckiqg.Applause: void showMoreApp(int)>',9,'a',NULL),(20,21,'<NHW.oRnUhQO.JiFDRBhj8: void onCreate(android.os.Bundle)>',81,'a',NULL),(21,81,'<aw: void onClick(android.view.View)>',242,'a',NULL),(22,9,'<com.WOoEVJs.akqlsUJkseCiE: void a()>',3,'a',NULL),(23,33,'<com.NNfKRlsk.mGavvohs: void b()>',55,'a',NULL),(24,17,'<com.WOoEVJs.MsVNDlkAlpwabB: void a(java.lang.String)>',10,'a',NULL),(25,37,'<com.NNfKRlsk.mNQQilkd: void a(com.NNfKRlsk.mNQQilkd,android.content.Context,java.lang.String)>',5,'a',NULL),(26,27,'<NHW.oRnUhQO.JiFDRBhj9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(27,9,'<com.WOoEVJs.akqlsUJkseCiE: void onBackPressed()>',5,'a',NULL),(28,33,'<com.NNfKRlsk.mGavvohs: void b()>',45,'a',NULL),(29,82,'<com.WOoEVJs.ab: void run()>',8,'s',NULL),(30,43,'<NHW.oRnUhQO.JiFDRBhj12: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(31,37,'<com.NNfKRlsk.mNQQilkd: void onCreate(android.os.Bundle)>',67,'a',NULL),(32,83,'<ax: void onClick(android.view.View)>',239,'a',NULL),(33,33,'<com.NNfKRlsk.mGavvohs: void onBackPressed()>',5,'a',NULL),(34,26,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(35,46,'<com.VELpO.ibqDrkcJMFdADIq: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',70,'a',NULL),(36,35,'<NHW.oRnUhQO.JiFDRBhj10: void onClick(android.view.View)>',84,'a',NULL),(37,84,'<com.VELpO.e: void onClick(android.view.View)>',184,'a',NULL),(38,12,'<NHW.oRnUhQO.JiFDRBhj17: void onCreate(android.os.Bundle)>',83,'s',NULL),(39,42,'<com.NNfKRlsk.SLkkpiWeGrSj: void c(android.content.Context)>',74,'a',NULL),(40,48,'<com.VELpO.MhkJUORwhqaRf: void onClick(android.view.View)>',70,'a',NULL),(41,51,'<com.VELpO.kScKfndNEUHi: void onReceive(android.content.Context,android.content.Intent)>',59,'s',NULL),(42,21,'<NHW.oRnUhQO.JiFDRBhj8: void onCreate(android.os.Bundle)>',33,'s',NULL),(43,22,'<qsl.ji.pt.pvtkvgvjn.DownStepsActivity: void onClick(android.view.View)>',7,'a',NULL),(44,21,'<NHW.oRnUhQO.JiFDRBhj8: void onCreate(android.os.Bundle)>',76,'a',NULL),(45,85,'<com.VELpO.d: void onClick(android.view.View)>',181,'a',NULL),(46,86,'<com.NNfKRlsk.i: void run()>',8,'s',NULL),(47,21,'<NHW.oRnUhQO.JiFDRBhj8: void onCreate(android.os.Bundle)>',172,'a',NULL),(48,22,'<qsl.ji.pt.pvtkvgvjn.DownStepsActivity: void onClick(android.view.View)>',11,'a',NULL),(49,43,'<NHW.oRnUhQO.JiFDRBhj12: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(50,35,'<NHW.oRnUhQO.JiFDRBhj10: void onClick(android.view.View)>',75,'a',NULL),(51,88,'<com.NNfKRlsk.v: void f(android.content.Context,java.lang.String)>',10,'a',NULL),(52,19,'<com.apmenfia.jflllgius.QuestionActivity: void onClick(android.view.View)>',24,'a',NULL),(53,21,'<NHW.oRnUhQO.JiFDRBhj8: void onCreate(android.os.Bundle)>',90,'s',NULL),(54,89,'<com.apmenfia.jflllgius.QuestionActivity$2: void onClick(android.view.View)>',14,'a',NULL),(55,91,'<bb: void onClick(android.view.View)>',218,'a',NULL),(56,33,'<com.NNfKRlsk.mGavvohs: void a()>',3,'a',NULL),(57,29,'<com.NNfKRlsk.DebsjghfHVCrKIH: void onCreate(android.os.Bundle)>',36,'a',NULL),(58,93,'<com.VELpO.by: boolean onKey(android.content.DialogInterface,int,android.view.KeyEvent)>',16,'a',NULL),(59,21,'<NHW.oRnUhQO.JiFDRBhj8: void onCreate(android.os.Bundle)>',177,'a',NULL),(60,40,'<com.NNfKRlsk.cGgcKnTQuCM: void a(java.lang.String)>',10,'a',NULL),(61,12,'<NHW.oRnUhQO.JiFDRBhj17: void onCreate(android.os.Bundle)>',87,'s',NULL),(62,44,'<com.VELpO.BOutSedcugdb: void onCreate(android.os.Bundle)>',32,'s',NULL),(63,31,'<NHW.oRnUhQO.JiFDRBhj2: void a(int,boolean)>',63,'a',NULL),(64,94,'<qsl.ji.pt.pvtkvgvjn.GameOverDialogActivity$1: void onClick(android.view.View)>',6,'a',NULL),(65,95,'<com.VELpO.bx: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(66,81,'<aw: void onClick(android.view.View)>',221,'a',NULL),(67,22,'<qsl.ji.pt.pvtkvgvjn.DownStepsActivity: void showScoreDialog()>',10,'a',NULL),(68,23,'<com.apmenfia.jflllgius.PaperActivity: void onClick(android.view.View)>',23,'a',NULL),(69,84,'<com.VELpO.e: void onClick(android.view.View)>',199,'a',NULL),(70,29,'<com.NNfKRlsk.DebsjghfHVCrKIH: void onCreate(android.os.Bundle)>',21,'a',NULL),(71,35,'<NHW.oRnUhQO.JiFDRBhj10: void onClick(android.view.View)>',53,'a',NULL),(72,29,'<com.NNfKRlsk.DebsjghfHVCrKIH: void onCreate(android.os.Bundle)>',31,'a',0),(73,96,'<com.NNfKRlsk.ah: void run()>',25,'s',NULL),(74,91,'<bb: void onClick(android.view.View)>',239,'a',NULL),(75,48,'<com.VELpO.MhkJUORwhqaRf: void onClick(android.view.View)>',48,'a',NULL),(76,49,'<com.VELpO.cIWISjrEwK: void onCreate(android.os.Bundle)>',13,'s',NULL),(77,83,'<ax: void onClick(android.view.View)>',218,'a',NULL),(78,46,'<com.VELpO.ibqDrkcJMFdADIq: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(79,44,'<com.VELpO.BOutSedcugdb: void onCreate(android.os.Bundle)>',82,'s',NULL),(80,31,'<NHW.oRnUhQO.JiFDRBhj2: void a(int,boolean)>',10,'s',NULL),(81,15,'<com.apmenfia.jflllgius.MetroQuiz: void onClick(android.view.View)>',13,'a',NULL),(82,48,'<com.VELpO.MhkJUORwhqaRf: void onClick(android.view.View)>',79,'a',NULL),(83,41,'<com.VELpO.TougfrQg: boolean onKeyDown(int,android.view.KeyEvent)>',5,'a',NULL),(84,47,'<com.VELpO.QkscCvsucvf: void a(int,boolean)>',10,'s',NULL),(85,47,'<com.VELpO.QkscCvsucvf: void a(int,boolean)>',42,'a',NULL),(86,51,'<com.VELpO.kScKfndNEUHi: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(87,36,'<com.VELpO.sRLigOCf: void onCreate(android.os.Bundle)>',65,'s',NULL),(88,48,'<com.VELpO.MhkJUORwhqaRf: void onClick(android.view.View)>',61,'a',NULL),(89,85,'<com.VELpO.d: void onClick(android.view.View)>',196,'a',NULL),(90,97,'<com.VELpO.h: void onClick(android.view.View)>',181,'a',NULL),(91,97,'<com.VELpO.h: void onClick(android.view.View)>',196,'a',NULL),(92,51,'<com.VELpO.kScKfndNEUHi: void onReceive(android.content.Context,android.content.Intent)>',33,'s',NULL),(93,28,'<com.apmenfia.jflllgius.ScorePut: void onClick(android.view.View)>',27,'a',NULL),(94,36,'<com.VELpO.sRLigOCf: void onCreate(android.os.Bundle)>',61,'s',NULL),(95,49,'<com.VELpO.cIWISjrEwK: void onClick(android.view.View)>',26,'a',NULL),(96,98,'<com.VELpO.bj: void onClick(android.view.View)>',105,'a',NULL),(97,102,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',56,'a',NULL),(98,104,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',14,'a',NULL),(99,105,'<com.waps.SDKUtils: void goToTargetBrowser(java.lang.String,java.lang.String,android.content.pm.PackageManager)>',6,'a',NULL),(100,106,'<com.waps.al: void onClick(android.view.View)>',55,'a',NULL),(101,107,'<com.admob.android.ads.q: void a(android.content.Context)>',11,'a',0),(102,101,'<com.IvtnNHwD.jhEvOFjQrURnluJ: void a(java.lang.String)>',11,'a',NULL),(103,108,'<com.waps.ao: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(104,105,'<com.waps.SDKUtils: void openUrlByBrowser(java.lang.String,java.lang.String)>',18,'a',NULL),(105,109,'<com.waps.w: java.lang.String a(java.lang.String[])>',137,'a',NULL),(106,101,'<com.IvtnNHwD.jhEvOFjQrURnluJ: void a()>',3,'a',NULL),(107,103,'<com.IvtnNHwD.fenRcdsEpd: void a()>',3,'a',NULL),(108,106,'<com.waps.al: void onClick(android.view.View)>',84,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,5),(2,5,5),(3,6,1),(4,7,1),(5,9,1),(6,10,1),(7,15,5),(8,17,5),(9,20,6),(10,21,5),(11,23,5),(12,24,1),(13,25,5),(14,26,1),(15,28,1),(16,29,1),(17,31,5),(18,32,1),(19,33,1),(20,34,1),(21,36,1),(22,39,6),(23,40,1),(24,41,1),(25,42,1),(26,44,1),(27,45,1),(28,46,1),(29,47,5),(30,49,8),(31,51,8),(32,52,5),(33,53,5),(34,54,9),(35,55,10),(36,57,11),(37,59,12),(38,62,5),(39,65,5),(40,68,11),(41,69,5),(42,72,5),(43,73,5),(44,75,5),(45,79,5),(46,85,5),(47,88,5),(48,89,1),(49,91,1),(50,93,1),(51,95,1),(52,96,1),(53,98,1),(54,99,1),(55,100,1),(56,102,5),(57,103,1),(58,104,1),(59,105,5),(60,112,1),(61,113,1),(62,114,1),(63,115,1),(64,118,5),(65,119,5),(66,120,1),(67,121,1),(68,122,1),(69,123,1),(70,124,5),(71,125,5),(72,126,1),(73,127,1),(74,128,1),(75,129,1),(76,130,12),(77,133,1),(78,135,1),(79,136,1),(80,138,5),(81,139,5),(82,140,5),(83,141,5),(84,142,5),(85,143,5),(86,145,1),(87,146,1),(88,147,5),(89,148,5),(90,149,5),(91,150,5),(92,151,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,6,1),(2,7,3),(3,9,1),(4,10,3),(5,24,1),(6,26,3),(7,28,1),(8,29,3),(9,32,1),(10,33,1),(11,34,3),(12,36,3),(13,40,1),(14,41,3),(15,42,1),(16,44,3),(17,45,1),(18,46,3),(19,89,1),(20,91,3),(21,93,1),(22,95,3),(23,96,1),(24,98,3),(25,99,1),(26,100,3),(27,103,1),(28,104,3),(29,112,1),(30,113,3),(31,114,1),(32,115,3),(33,120,1),(34,121,3),(35,122,1),(36,123,3),(37,126,1),(38,127,3),(39,128,1),(40,129,3),(41,133,5),(42,135,1),(43,136,3),(44,138,3),(45,138,2),(46,139,1),(47,139,2),(48,140,2),(49,140,1),(50,141,3),(51,141,2),(52,142,2),(53,143,2),(54,145,1),(55,146,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/batteryacidgames/streetball/StreetballActivity'),(2,3,'com/nd/dianjin/activity/OfferAppActivity'),(3,4,'com/batteryacidgames/streetball/StreetballActivity'),(4,8,'rtn/geqho/jsw/idlibr/bibnosarckiqg/OptionActivity'),(5,11,'com/WOoEVJs/phDWdatTa'),(6,12,'rtn/geqho/jsw/idlibr/bibnosarckiqg/Applause'),(7,13,'com/WOoEVJs/akqlsUJkseCiE'),(8,14,'rtn/geqho/jsw/idlibr/bibnosarckiqg/Applause'),(9,16,'com/WOoEVJs/ntpDurIhbwNACpL'),(10,18,'NHW/oRnUhQO/JiFDRBhj8'),(11,19,'com/WOoEVJs/akqlsUJkseCiE'),(12,20,'NHW/oRnUhQO/JiFDRBhj11'),(13,22,'NHW/oRnUhQO/JiFDRBhj17'),(14,27,'rtn/geqho/jsw/idlibr/bibnosarckiqg/Applause'),(15,30,'qsl/ji/pt/pvtkvgvjn/GameActivity'),(16,35,'rtn/geqho/jsw/idlibr/bibnosarckiqg/Applause'),(17,37,'qsl/ji/pt/pvtkvgvjn/GameActivity'),(18,38,'com/WOoEVJs/phDWdatTa'),(19,39,'NHW/oRnUhQO/JiFDRBhj11'),(20,43,'qsl/ji/pt/pvtkvgvjn/GameActivity'),(21,48,'com/VELpO/BOutSedcugdb'),(22,50,'NHW/oRnUhQO/JiFDRBhj10'),(23,54,'NHW/oRnUhQO/JiFDRBhj11'),(24,55,'NHW/oRnUhQO/JiFDRBhj11'),(25,58,'NHW/oRnUhQO/JiFDRBhj11'),(26,56,'com/NNfKRlsk/mNQQilkd'),(27,59,'com/VELpO/hepfaRQsrC'),(28,60,'qsl/ji/pt/pvtkvgvjn/GameActivity'),(29,61,'NHW/oRnUhQO/JiFDRBhj17'),(30,63,'com/NNfKRlsk/RheHSiAKIceJnIi'),(31,64,'NHW/oRnUhQO/JiFDRBhj17'),(32,66,'qsl/ji/pt/pvtkvgvjn/MyPreferenceActivity'),(33,67,'NHW/oRnUhQO/JiFDRBhj11'),(34,70,'com/apmenfia/jflllgius/ScorePut'),(35,71,'NHW/oRnUhQO/JiFDRBhj11'),(36,74,'qsl/ji/pt/pvtkvgvjn/GameActivity'),(37,76,'com/NNfKRlsk/mGavvohs'),(38,77,'com/apmenfia/jflllgius/MetroQuiz'),(39,78,'NHW/oRnUhQO/JiFDRBhj17'),(40,80,'NHW/oRnUhQO/JiFDRBhj11'),(41,81,'com/VELpO/hepfaRQsrC'),(42,82,'NHW/oRnUhQO/JiFDRBhj17'),(43,83,'qsl/ji/pt/pvtkvgvjn/GameActivity'),(44,84,'com/apmenfia/jflllgius/MetroQuiz'),(45,87,'com/apmenfia/jflllgius/ScorePut'),(46,86,'qsl/ji/pt/pvtkvgvjn/ScoreDialogActivity'),(47,90,'com/NNfKRlsk/mGavvohs'),(48,92,'NHW/oRnUhQO/JiFDRBhj8'),(49,94,'com/NNfKRlsk/RheHSiAKIceJnIi'),(50,97,'com/VELpO/BOutSedcugdb'),(51,101,'com/VELpO/hepfaRQsrC'),(52,106,'com/VELpO/hepfaRQsrC'),(53,107,'NHW/oRnUhQO/JiFDRBhj11'),(54,108,'com/apmenfia/jflllgius/QuestionActivity'),(55,109,'com/VELpO/MhkJUORwhqaRf'),(56,110,'com/apmenfia/jflllgius/MetroQuiz'),(57,111,'com/VELpO/hepfaRQsrC'),(58,116,'com/VELpO/hepfaRQsrC'),(59,117,'com/VELpO/hepfaRQsrC'),(60,130,'com/VELpO/hepfaRQsrC'),(61,131,'com/apmenfia/jflllgius/ScoreList'),(62,132,'com/VELpO/hepfaRQsrC'),(63,134,'com/VELpO/TougfrQg'),(64,137,'(.*)'),(65,142,''),(66,143,''),(67,152,'com/ruavjvivrtbuspsnihgvfjhnfr/PocketDrumActivity'),(68,153,'com/ruavjvivrtbuspsnihgvfjhnfr/PocketDrumActivity'),(69,154,'(.*)'),(70,155,'(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,2,1),(2,5,2),(3,15,3),(4,17,4),(5,21,5),(6,23,6),(7,25,7),(8,31,8),(9,47,9),(10,49,10),(11,51,11),(12,52,12),(13,53,13),(14,62,14),(15,65,15),(16,69,16),(17,73,17),(18,75,18),(19,79,19),(20,85,20),(21,88,21),(22,102,22),(23,105,23),(24,118,24),(25,119,25),(26,124,26),(27,125,27),(28,138,28),(29,139,29),(30,140,30),(31,141,31),(32,142,32),(33,143,33),(34,147,34),(35,148,35),(36,149,36),(37,150,37),(38,151,38);
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,3,'oriention'),(2,8,'MatchSound'),(3,8,'GameMusic'),(4,8,'ChangeTheme'),(5,8,'Vibrate'),(6,16,'apkVersion'),(7,16,'apkURL'),(8,16,'apkInfo'),(9,16,'packageName'),(10,16,'apkSoftID'),(11,16,'apkTitle'),(12,16,'iconURL'),(13,16,'apkSize'),(14,16,'imageURL'),(15,18,'game'),(16,18,'fromtype'),(17,48,'game'),(18,48,'fromtype'),(19,50,'title'),(20,50,'btn_txt'),(21,50,'need_adb_flag'),(22,50,'cont'),(23,50,'close_flag'),(24,56,'apkVersion'),(25,56,'apkURL'),(26,56,'apkInfo'),(27,56,'packageName'),(28,56,'apkSoftID'),(29,56,'apkTitle'),(30,56,'iconURL'),(31,56,'apkSize'),(32,56,'imageURL'),(33,72,'sms_body'),(34,86,'easy'),(35,86,'hard'),(36,86,'middle'),(37,92,'id'),(38,92,'from_alert'),(39,92,'detail_flag'),(40,97,'id'),(41,97,'from_alert'),(42,97,'detail_flag'),(43,109,'title'),(44,109,'btn_txt'),(45,109,'need_adb_flag'),(46,109,'cont'),(47,109,'close_flag'),(48,134,'popurl'),(49,134,'poptitle'),(50,137,'USER_ID'),(51,137,'CLIENT_PACKAGE'),(52,137,'Offers_URL'),(53,137,'offers_webview_tag'),(54,137,'URL_PARAMS'),(55,154,'CLIENT_PACKAGE'),(56,154,'URL'),(57,154,'isFinshClose'),(58,154,'offers_webview_tag'),(59,155,'CLIENT_PACKAGE'),(60,155,'URL'),(61,155,'offers_webview_tag');
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,2,1),(2,3,2),(3,5,1),(4,6,1),(5,8,1),(6,10,3),(7,11,1),(8,12,1),(9,13,1),(10,14,1),(11,15,1),(12,16,1),(13,17,4),(14,18,3),(15,19,1),(16,20,1),(17,21,1),(18,22,3),(19,22,4),(20,24,5),(21,25,1),(22,26,2),(23,27,7),(24,28,3),(25,29,13),(26,29,3),(27,30,13),(28,31,2),(29,32,2),(30,33,7),(31,35,1),(32,36,2);
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
INSERT INTO `IFCategories` VALUES (1,2,1),(2,5,1),(3,6,2),(4,6,1),(5,12,1),(6,14,1),(7,15,1),(8,21,1),(9,24,2),(10,25,1),(11,27,4),(12,31,4),(13,32,4),(14,33,4),(15,35,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,3,'package',NULL,NULL,NULL,NULL,NULL),(2,24,NULL,NULL,NULL,NULL,'application','x-nes-rom'),(3,26,'package',NULL,NULL,NULL,NULL,NULL),(4,27,'package',NULL,NULL,NULL,NULL,NULL),(5,31,'package',NULL,NULL,NULL,NULL,NULL),(6,32,'package',NULL,NULL,NULL,NULL,NULL),(7,33,'package',NULL,NULL,NULL,NULL,NULL),(8,36,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,2,'application','vnd.android.package-archive'),(2,5,'application','vnd.android.package-archive'),(3,31,'application','vnd.android.package-archive'),(4,49,'(.*)','(.*)'),(5,52,'application','vnd.android.package-archive'),(6,53,'application','vnd.android.package-archive'),(7,62,'application','vnd.android.package-archive'),(8,65,'application','vnd.android.package-archive'),(9,69,'application','vnd.android.package-archive'),(10,72,'vnd.android-dir','mms-sms'),(11,73,'application','vnd.android.package-archive'),(12,75,'application','vnd.android.package-archive'),(13,79,'application','vnd.android.package-archive'),(14,85,'application','vnd.android.package-archive'),(15,88,'application','vnd.android.package-archive'),(16,102,'application','vnd.android.package-archive'),(17,105,'application','vnd.android.package-archive'),(18,124,'application','vnd.android.package-archive'),(19,125,'application','vnd.android.package-archive'),(20,148,'(.*)','(.*)'),(21,149,'application','vnd.android.package-archive'),(22,151,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.rtcmuwlqbknjiitd.nweepifljf'),(2,3,'com.rtcmuwlqbknjiitd.nweepifljf'),(3,4,'com.rtcmuwlqbknjiitd.nweepifljf'),(4,6,'(.*)'),(5,7,'(.*)'),(6,8,'rtn.geqho.jsw.idlibr.bibnosarckiqg'),(7,9,'(.*)'),(8,10,'(.*)'),(9,11,'rtn.geqho.jsw.idlibr.bibnosarckiqg'),(10,12,'rtn.geqho.jsw.idlibr.bibnosarckiqg'),(11,13,'rtn.geqho.jsw.idlibr.bibnosarckiqg'),(12,14,'rtn.geqho.jsw.idlibr.bibnosarckiqg'),(13,16,'rtn.geqho.jsw.idlibr.bibnosarckiqg'),(14,18,'NHW.oRnUhQO'),(15,19,'rtn.geqho.jsw.idlibr.bibnosarckiqg'),(16,20,'NHW.oRnUhQO'),(17,22,'NHW.oRnUhQO'),(18,24,'(.*)'),(19,26,''),(20,27,'rtn.geqho.jsw.idlibr.bibnosarckiqg'),(21,28,''),(22,29,'(.*)'),(23,30,'qsl.ji.pt.pvtkvgvjn'),(24,32,'(.*)'),(25,33,'(.*)'),(26,35,'rtn.geqho.jsw.idlibr.bibnosarckiqg'),(27,34,'(.*)'),(28,36,'(.*)'),(29,37,'qsl.ji.pt.pvtkvgvjn'),(30,38,'rtn.geqho.jsw.idlibr.bibnosarckiqg'),(31,39,'NHW.oRnUhQO'),(32,40,'(.*)'),(33,41,'(.*)'),(34,42,'(.*)'),(35,43,'qsl.ji.pt.pvtkvgvjn'),(36,44,''),(37,45,''),(38,46,'(.*)'),(39,48,'com.apmenfia.jflllgius'),(40,50,'NHW.oRnUhQO'),(41,54,'NHW.oRnUhQO'),(42,55,'NHW.oRnUhQO'),(43,58,'NHW.oRnUhQO'),(44,56,'qsl.ji.pt.pvtkvgvjn'),(45,59,'com.apmenfia.jflllgius'),(46,60,'qsl.ji.pt.pvtkvgvjn'),(47,61,'NHW.oRnUhQO'),(48,63,'qsl.ji.pt.pvtkvgvjn'),(49,64,'NHW.oRnUhQO'),(50,66,'qsl.ji.pt.pvtkvgvjn'),(51,67,'NHW.oRnUhQO'),(52,70,'com.apmenfia.jflllgius'),(53,71,'NHW.oRnUhQO'),(54,74,'qsl.ji.pt.pvtkvgvjn'),(55,76,'qsl.ji.pt.pvtkvgvjn'),(56,77,'com.apmenfia.jflllgius'),(57,78,'NHW.oRnUhQO'),(58,80,'NHW.oRnUhQO'),(59,81,'com.apmenfia.jflllgius'),(60,82,'NHW.oRnUhQO'),(61,83,'qsl.ji.pt.pvtkvgvjn'),(62,84,'com.apmenfia.jflllgius'),(63,87,'com.apmenfia.jflllgius'),(64,86,'qsl.ji.pt.pvtkvgvjn'),(65,90,'qsl.ji.pt.pvtkvgvjn'),(66,89,'(.*)'),(67,91,''),(68,92,'NHW.oRnUhQO'),(69,93,''),(70,94,'qsl.ji.pt.pvtkvgvjn'),(71,95,'(.*)'),(72,96,'(.*)'),(73,98,''),(74,97,'com.apmenfia.jflllgius'),(75,99,''),(76,100,'(.*)'),(77,101,'com.apmenfia.jflllgius'),(78,103,'(.*)'),(79,104,'(.*)'),(80,106,'com.apmenfia.jflllgius'),(81,107,'NHW.oRnUhQO'),(82,108,'com.apmenfia.jflllgius'),(83,109,'com.apmenfia.jflllgius'),(84,110,'com.apmenfia.jflllgius'),(85,111,'com.apmenfia.jflllgius'),(86,112,'(.*)'),(87,113,''),(88,114,''),(89,115,'(.*)'),(90,116,'com.apmenfia.jflllgius'),(91,117,'com.apmenfia.jflllgius'),(92,120,'(.*)'),(93,121,''),(94,122,''),(95,123,'(.*)'),(96,126,'(.*)'),(97,127,''),(98,128,''),(99,129,'(.*)'),(100,130,'com.apmenfia.jflllgius'),(101,131,'com.apmenfia.jflllgius'),(102,132,'com.apmenfia.jflllgius'),(103,134,'com.apmenfia.jflllgius'),(104,135,'(.*)'),(105,136,'(.*)'),(106,137,'com.ruavjvivrtbuspsnihgvfjhnfr'),(107,138,''),(108,139,''),(109,140,'(.*)'),(110,141,'(.*)'),(111,142,''),(112,143,'(.*)'),(113,145,'(.*)'),(114,146,'(.*)'),(115,152,'com.ruavjvivrtbuspsnihgvfjhnfr'),(116,153,'com.ruavjvivrtbuspsnihgvfjhnfr'),(117,154,'com.ruavjvivrtbuspsnihgvfjhnfr'),(118,155,'com.ruavjvivrtbuspsnihgvfjhnfr');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,3,0),(3,5,0),(4,6,0),(5,8,0),(6,12,0),(7,15,0),(8,21,0),(9,22,0),(10,24,0),(11,27,0),(12,29,0),(13,31,0),(14,36,0),(15,38,0),(16,44,0),(17,43,0),(18,45,0),(19,46,0),(20,47,0),(21,50,0),(22,51,0),(23,52,0),(24,53,0),(25,74,0),(26,76,0),(27,43,0),(28,78,0),(29,79,0),(30,80,0),(31,43,0),(32,51,0),(33,51,0),(34,81,0),(35,85,0),(36,86,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,3,0,0),(4,4,0,0),(5,6,1,0),(6,7,1,0),(7,7,1,0),(8,8,0,0),(9,9,1,0),(10,9,1,0),(11,10,0,0),(12,11,0,0),(13,12,0,0),(14,13,0,0),(15,14,1,0),(16,15,0,0),(17,14,1,0),(18,16,0,0),(19,17,0,0),(20,18,0,0),(21,19,1,0),(22,20,0,0),(23,19,1,0),(24,21,1,0),(25,19,1,0),(26,21,1,0),(27,22,0,0),(28,21,1,0),(29,21,1,0),(30,23,0,0),(31,24,1,0),(32,25,1,0),(33,26,1,0),(34,25,1,0),(35,27,0,0),(36,26,1,0),(37,28,0,0),(38,29,0,0),(39,30,0,0),(40,31,1,0),(41,31,1,0),(42,32,1,0),(43,33,0,0),(44,32,1,0),(45,32,1,0),(46,32,1,0),(47,34,1,0),(48,35,0,0),(49,34,1,0),(50,36,0,0),(51,34,1,0),(52,37,1,0),(53,37,1,0),(54,38,0,0),(55,38,0,0),(56,39,0,0),(57,40,1,0),(58,42,0,0),(59,41,0,0),(60,43,0,0),(61,44,0,0),(62,45,1,0),(63,46,0,0),(64,47,0,0),(65,45,1,0),(66,48,0,0),(67,49,0,0),(68,50,1,0),(69,51,1,0),(70,52,0,0),(71,53,0,0),(72,54,1,0),(73,55,1,0),(74,56,0,0),(75,55,1,0),(76,57,0,0),(77,58,0,0),(78,59,0,0),(79,60,1,0),(80,61,0,0),(81,62,0,0),(82,63,0,0),(83,64,0,0),(84,65,0,0),(85,66,1,0),(86,67,0,0),(87,68,0,0),(88,66,1,0),(89,69,1,0),(90,70,0,0),(91,69,1,0),(92,71,0,0),(93,69,1,0),(94,73,0,0),(95,69,1,0),(96,74,1,0),(97,75,0,0),(98,74,1,0),(99,74,1,0),(100,74,1,0),(101,76,0,0),(102,77,1,0),(103,78,1,0),(104,78,1,0),(105,77,1,0),(106,79,0,0),(107,80,0,0),(108,81,0,0),(109,82,0,0),(110,83,0,0),(111,84,0,0),(112,85,1,0),(113,85,1,0),(114,85,1,0),(115,85,1,0),(116,86,0,0),(117,87,0,0),(118,88,1,0),(119,88,1,0),(120,89,1,0),(121,89,1,0),(122,89,1,0),(123,89,1,0),(124,90,1,0),(125,90,1,0),(126,91,1,0),(127,91,1,0),(128,91,1,0),(129,91,1,0),(130,92,0,0),(131,93,0,0),(132,94,0,0),(133,95,1,0),(134,96,0,0),(135,97,1,0),(136,97,1,0),(137,98,0,0),(138,99,1,0),(139,99,1,0),(140,99,1,0),(141,99,1,0),(142,99,0,0),(143,99,0,0),(144,100,1,0),(145,100,1,0),(146,100,1,0),(147,102,1,0),(148,102,1,0),(149,103,1,0),(150,104,1,0),(151,105,1,0),(152,106,0,0),(153,107,0,0),(154,108,0,0),(155,108,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=805 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,108,19,2,NULL),(2,6,15,2,NULL),(3,7,15,2,NULL),(4,9,15,2,NULL),(5,10,15,2,NULL),(6,47,15,2,NULL),(7,51,15,2,NULL),(8,32,15,2,NULL),(9,34,15,2,NULL),(10,40,15,2,NULL),(11,41,15,2,NULL),(12,103,15,2,NULL),(13,104,15,2,NULL),(14,112,15,2,NULL),(15,113,15,2,NULL),(16,114,15,2,NULL),(17,115,15,2,NULL),(18,57,15,2,NULL),(19,118,15,2,NULL),(20,119,15,2,NULL),(21,133,15,2,NULL),(22,33,15,2,NULL),(23,36,15,2,NULL),(24,15,15,2,NULL),(25,17,15,2,NULL),(26,68,15,2,NULL),(27,135,15,2,NULL),(28,136,15,2,NULL),(29,70,28,2,NULL),(30,87,28,2,NULL),(31,131,30,2,NULL),(32,117,50,2,NULL),(33,132,50,2,NULL),(34,6,36,2,NULL),(35,7,36,2,NULL),(36,9,36,2,NULL),(37,10,36,2,NULL),(38,47,36,2,NULL),(39,51,36,2,NULL),(40,32,36,2,NULL),(41,34,36,2,NULL),(42,40,36,2,NULL),(43,41,36,2,NULL),(44,103,36,2,NULL),(45,104,36,2,NULL),(46,112,36,2,NULL),(47,113,36,2,NULL),(48,114,36,2,NULL),(49,115,36,2,NULL),(50,57,36,2,NULL),(51,118,36,2,NULL),(52,119,36,2,NULL),(53,133,36,2,NULL),(54,33,36,2,NULL),(55,36,36,2,NULL),(56,15,36,2,NULL),(57,17,36,2,NULL),(58,68,36,2,NULL),(59,135,36,2,NULL),(60,136,36,2,NULL),(61,110,15,2,NULL),(62,81,50,2,NULL),(63,106,50,2,NULL),(64,6,44,2,NULL),(65,7,44,2,NULL),(66,9,44,2,NULL),(67,10,44,2,NULL),(68,47,44,2,NULL),(69,51,44,2,NULL),(70,32,44,2,NULL),(71,34,44,2,NULL),(72,40,44,2,NULL),(73,41,44,2,NULL),(74,103,44,2,NULL),(75,104,44,2,NULL),(76,112,44,2,NULL),(77,113,44,2,NULL),(78,114,44,2,NULL),(79,115,44,2,NULL),(80,57,44,2,NULL),(81,118,44,2,NULL),(82,119,44,2,NULL),(83,133,44,2,NULL),(84,33,44,2,NULL),(85,36,44,2,NULL),(86,15,44,2,NULL),(87,17,44,2,NULL),(88,68,44,2,NULL),(89,135,44,2,NULL),(90,136,44,2,NULL),(91,48,44,2,NULL),(92,103,1,2,NULL),(93,104,1,2,NULL),(94,103,3,2,NULL),(95,104,3,2,NULL),(96,103,6,2,NULL),(97,104,6,2,NULL),(98,103,8,2,NULL),(99,104,8,2,NULL),(100,6,46,2,NULL),(101,7,46,2,NULL),(102,9,46,2,NULL),(103,10,46,2,NULL),(104,103,24,2,NULL),(105,104,24,2,NULL),(106,103,22,2,NULL),(107,104,22,2,NULL),(108,47,46,2,NULL),(109,51,46,2,NULL),(110,103,29,2,NULL),(111,104,29,2,NULL),(112,32,46,2,NULL),(113,34,46,2,NULL),(114,40,46,2,NULL),(115,41,46,2,NULL),(116,103,45,2,NULL),(117,104,45,2,NULL),(118,103,79,2,NULL),(119,104,79,2,NULL),(120,103,47,2,NULL),(121,104,47,2,NULL),(122,112,46,2,NULL),(123,113,46,2,NULL),(124,114,46,2,NULL),(125,115,46,2,NULL),(126,57,46,2,NULL),(127,118,46,2,NULL),(128,119,46,2,NULL),(129,133,46,2,NULL),(130,103,50,2,NULL),(131,104,50,2,NULL),(132,103,51,2,NULL),(133,104,51,2,NULL),(134,103,78,2,NULL),(135,104,78,2,NULL),(136,103,80,2,NULL),(137,104,80,2,NULL),(138,103,12,2,NULL),(139,104,12,2,NULL),(140,103,21,2,NULL),(141,104,21,2,NULL),(142,103,27,2,NULL),(143,104,27,2,NULL),(144,33,46,2,NULL),(145,36,46,2,NULL),(146,103,31,2,NULL),(147,104,31,2,NULL),(148,15,46,2,NULL),(149,17,46,2,NULL),(150,68,46,2,NULL),(151,103,38,2,NULL),(152,104,38,2,NULL),(153,103,43,2,NULL),(154,104,43,2,NULL),(155,103,52,2,NULL),(156,104,52,2,NULL),(157,103,74,2,NULL),(158,104,74,2,NULL),(159,103,81,2,NULL),(160,104,81,2,NULL),(161,135,46,2,NULL),(162,136,46,2,NULL),(163,103,85,2,NULL),(164,104,85,2,NULL),(165,111,50,2,NULL),(166,112,1,2,NULL),(167,113,1,2,NULL),(168,114,1,2,NULL),(169,115,1,2,NULL),(170,112,3,2,NULL),(171,113,3,2,NULL),(172,114,3,2,NULL),(173,115,3,2,NULL),(174,112,6,2,NULL),(175,113,6,2,NULL),(176,114,6,2,NULL),(177,115,6,2,NULL),(178,112,8,2,NULL),(179,113,8,2,NULL),(180,114,8,2,NULL),(181,115,8,2,NULL),(182,6,47,2,NULL),(183,7,47,2,NULL),(184,9,47,2,NULL),(185,10,47,2,NULL),(186,112,24,2,NULL),(187,113,24,2,NULL),(188,114,24,2,NULL),(189,115,24,2,NULL),(190,112,22,2,NULL),(191,113,22,2,NULL),(192,114,22,2,NULL),(193,115,22,2,NULL),(194,47,47,2,NULL),(195,51,47,2,NULL),(196,112,29,2,NULL),(197,113,29,2,NULL),(198,114,29,2,NULL),(199,115,29,2,NULL),(200,32,47,2,NULL),(201,34,47,2,NULL),(202,40,47,2,NULL),(203,41,47,2,NULL),(204,112,45,2,NULL),(205,113,45,2,NULL),(206,114,45,2,NULL),(207,115,45,2,NULL),(208,112,79,2,NULL),(209,113,79,2,NULL),(210,114,79,2,NULL),(211,115,79,2,NULL),(212,57,47,2,NULL),(213,118,47,2,NULL),(214,119,47,2,NULL),(215,133,47,2,NULL),(216,112,50,2,NULL),(217,113,50,2,NULL),(218,114,50,2,NULL),(219,115,50,2,NULL),(220,112,51,2,NULL),(221,113,51,2,NULL),(222,114,51,2,NULL),(223,115,51,2,NULL),(224,112,78,2,NULL),(225,113,78,2,NULL),(226,114,78,2,NULL),(227,115,78,2,NULL),(228,112,80,2,NULL),(229,113,80,2,NULL),(230,114,80,2,NULL),(231,115,80,2,NULL),(232,112,12,2,NULL),(233,113,12,2,NULL),(234,114,12,2,NULL),(235,115,12,2,NULL),(236,112,21,2,NULL),(237,113,21,2,NULL),(238,114,21,2,NULL),(239,115,21,2,NULL),(240,112,27,2,NULL),(241,113,27,2,NULL),(242,114,27,2,NULL),(243,115,27,2,NULL),(244,33,47,2,NULL),(245,36,47,2,NULL),(246,112,31,2,NULL),(247,113,31,2,NULL),(248,114,31,2,NULL),(249,115,31,2,NULL),(250,15,47,2,NULL),(251,17,47,2,NULL),(252,68,47,2,NULL),(253,112,38,2,NULL),(254,113,38,2,NULL),(255,114,38,2,NULL),(256,115,38,2,NULL),(257,112,43,2,NULL),(258,113,43,2,NULL),(259,114,43,2,NULL),(260,115,43,2,NULL),(261,112,52,2,NULL),(262,113,52,2,NULL),(263,114,52,2,NULL),(264,115,52,2,NULL),(265,112,74,2,NULL),(266,113,74,2,NULL),(267,114,74,2,NULL),(268,115,74,2,NULL),(269,112,81,2,NULL),(270,113,81,2,NULL),(271,114,81,2,NULL),(272,115,81,2,NULL),(273,135,47,2,NULL),(274,136,47,2,NULL),(275,112,85,2,NULL),(276,113,85,2,NULL),(277,114,85,2,NULL),(278,115,85,2,NULL),(279,97,44,2,NULL),(280,109,48,2,NULL),(281,57,1,2,NULL),(282,118,1,2,NULL),(283,119,1,2,NULL),(284,57,3,2,NULL),(285,118,3,2,NULL),(286,119,3,2,NULL),(287,57,6,2,NULL),(288,118,6,2,NULL),(289,119,6,2,NULL),(290,57,8,2,NULL),(291,118,8,2,NULL),(292,119,8,2,NULL),(293,57,24,2,NULL),(294,118,24,2,NULL),(295,119,24,2,NULL),(296,57,22,2,NULL),(297,118,22,2,NULL),(298,119,22,2,NULL),(299,57,29,2,NULL),(300,118,29,2,NULL),(301,119,29,2,NULL),(302,57,45,2,NULL),(303,118,45,2,NULL),(304,119,45,2,NULL),(305,57,79,2,NULL),(306,118,79,2,NULL),(307,119,79,2,NULL),(308,57,50,2,NULL),(309,118,50,2,NULL),(310,119,50,2,NULL),(311,57,51,2,NULL),(312,118,51,2,NULL),(313,119,51,2,NULL),(314,57,78,2,NULL),(315,118,78,2,NULL),(316,119,78,2,NULL),(317,57,80,2,NULL),(318,118,80,2,NULL),(319,119,80,2,NULL),(320,57,12,2,NULL),(321,118,12,2,NULL),(322,119,12,2,NULL),(323,57,21,2,NULL),(324,118,21,2,NULL),(325,119,21,2,NULL),(326,57,27,2,NULL),(327,118,27,2,NULL),(328,119,27,2,NULL),(329,57,31,2,NULL),(330,118,31,2,NULL),(331,119,31,2,NULL),(332,57,38,2,NULL),(333,118,38,2,NULL),(334,119,38,2,NULL),(335,57,43,2,NULL),(336,118,43,2,NULL),(337,119,43,2,NULL),(338,57,52,2,NULL),(339,118,52,2,NULL),(340,119,52,2,NULL),(341,57,74,2,NULL),(342,118,74,2,NULL),(343,119,74,2,NULL),(344,57,81,2,NULL),(345,118,81,2,NULL),(346,119,81,2,NULL),(347,57,85,2,NULL),(348,118,85,2,NULL),(349,119,85,2,NULL),(350,101,50,2,NULL),(351,133,1,2,NULL),(352,133,3,2,NULL),(353,133,6,2,NULL),(354,133,8,2,NULL),(355,133,24,2,NULL),(356,133,22,2,NULL),(357,133,29,2,NULL),(358,133,45,2,NULL),(359,133,79,2,NULL),(360,133,50,2,NULL),(361,133,51,2,NULL),(362,133,78,2,NULL),(363,133,80,2,NULL),(364,133,12,2,NULL),(365,133,21,2,NULL),(366,133,27,2,NULL),(367,133,31,2,NULL),(368,133,38,2,NULL),(369,133,43,2,NULL),(370,133,52,2,NULL),(371,133,74,2,NULL),(372,133,81,2,NULL),(373,133,85,2,NULL),(374,6,50,2,NULL),(375,7,50,2,NULL),(376,9,50,2,NULL),(377,10,50,2,NULL),(378,47,50,2,NULL),(379,51,50,2,NULL),(380,32,50,2,NULL),(381,34,50,2,NULL),(382,40,50,2,NULL),(383,41,50,2,NULL),(384,33,50,2,NULL),(385,36,50,2,NULL),(386,15,50,2,NULL),(387,17,50,2,NULL),(388,68,50,2,NULL),(389,135,50,2,NULL),(390,136,50,2,NULL),(391,59,50,2,NULL),(392,116,50,2,NULL),(393,130,50,2,NULL),(394,6,51,2,NULL),(395,7,51,2,NULL),(396,9,51,2,NULL),(397,10,51,2,NULL),(398,47,51,2,NULL),(399,51,51,2,NULL),(400,32,51,2,NULL),(401,34,51,2,NULL),(402,40,51,2,NULL),(403,41,51,2,NULL),(404,33,51,2,NULL),(405,36,51,2,NULL),(406,15,51,2,NULL),(407,17,51,2,NULL),(408,68,51,2,NULL),(409,135,51,2,NULL),(410,136,51,2,NULL),(411,6,78,2,NULL),(412,7,78,2,NULL),(413,9,78,2,NULL),(414,10,78,2,NULL),(415,47,78,2,NULL),(416,51,78,2,NULL),(417,32,78,2,NULL),(418,34,78,2,NULL),(419,40,78,2,NULL),(420,41,78,2,NULL),(421,33,78,2,NULL),(422,36,78,2,NULL),(423,15,78,2,NULL),(424,17,78,2,NULL),(425,68,78,2,NULL),(426,135,78,2,NULL),(427,136,78,2,NULL),(428,6,80,2,NULL),(429,7,80,2,NULL),(430,9,80,2,NULL),(431,10,80,2,NULL),(432,47,80,2,NULL),(433,51,80,2,NULL),(434,32,80,2,NULL),(435,34,80,2,NULL),(436,40,80,2,NULL),(437,41,80,2,NULL),(438,33,80,2,NULL),(439,36,80,2,NULL),(440,15,80,2,NULL),(441,17,80,2,NULL),(442,68,80,2,NULL),(443,135,80,2,NULL),(444,136,80,2,NULL),(445,8,7,2,NULL),(446,6,6,2,NULL),(447,7,6,2,NULL),(448,9,6,2,NULL),(449,10,6,2,NULL),(450,47,6,2,NULL),(451,51,6,2,NULL),(452,32,6,2,NULL),(453,34,6,2,NULL),(454,40,6,2,NULL),(455,41,6,2,NULL),(456,33,6,2,NULL),(457,36,6,2,NULL),(458,15,6,2,NULL),(459,17,6,2,NULL),(460,68,6,2,NULL),(461,135,6,2,NULL),(462,136,6,2,NULL),(463,13,9,2,NULL),(464,19,9,2,NULL),(465,6,8,2,NULL),(466,7,8,2,NULL),(467,9,8,2,NULL),(468,10,8,2,NULL),(469,47,8,2,NULL),(470,51,8,2,NULL),(471,32,8,2,NULL),(472,34,8,2,NULL),(473,40,8,2,NULL),(474,41,8,2,NULL),(475,33,8,2,NULL),(476,36,8,2,NULL),(477,15,8,2,NULL),(478,17,8,2,NULL),(479,68,8,2,NULL),(480,135,8,2,NULL),(481,136,8,2,NULL),(482,12,6,2,NULL),(483,14,6,2,NULL),(484,27,6,2,NULL),(485,35,6,2,NULL),(486,6,1,2,NULL),(487,7,1,2,NULL),(488,9,1,2,NULL),(489,10,1,2,NULL),(490,6,3,2,NULL),(491,7,3,2,NULL),(492,9,3,2,NULL),(493,10,3,2,NULL),(494,6,24,2,NULL),(495,7,24,2,NULL),(496,9,24,2,NULL),(497,10,24,2,NULL),(498,6,22,2,NULL),(499,7,22,2,NULL),(500,9,22,2,NULL),(501,10,22,2,NULL),(502,6,29,2,NULL),(503,7,29,2,NULL),(504,9,29,2,NULL),(505,10,29,2,NULL),(506,6,45,2,NULL),(507,7,45,2,NULL),(508,9,45,2,NULL),(509,10,45,2,NULL),(510,6,79,2,NULL),(511,7,79,2,NULL),(512,9,79,2,NULL),(513,10,79,2,NULL),(514,6,12,2,NULL),(515,7,12,2,NULL),(516,9,12,2,NULL),(517,10,12,2,NULL),(518,6,21,2,NULL),(519,7,21,2,NULL),(520,9,21,2,NULL),(521,10,21,2,NULL),(522,6,27,2,NULL),(523,7,27,2,NULL),(524,9,27,2,NULL),(525,10,27,2,NULL),(526,6,31,2,NULL),(527,7,31,2,NULL),(528,9,31,2,NULL),(529,10,31,2,NULL),(530,6,38,2,NULL),(531,7,38,2,NULL),(532,9,38,2,NULL),(533,10,38,2,NULL),(534,6,43,2,NULL),(535,7,43,2,NULL),(536,9,43,2,NULL),(537,10,43,2,NULL),(538,6,52,2,NULL),(539,7,52,2,NULL),(540,9,52,2,NULL),(541,10,52,2,NULL),(542,6,74,2,NULL),(543,7,74,2,NULL),(544,9,74,2,NULL),(545,10,74,2,NULL),(546,6,81,2,NULL),(547,7,81,2,NULL),(548,9,81,2,NULL),(549,10,81,2,NULL),(550,6,85,2,NULL),(551,7,85,2,NULL),(552,9,85,2,NULL),(553,10,85,2,NULL),(554,16,11,2,NULL),(555,47,24,2,NULL),(556,51,24,2,NULL),(557,32,24,2,NULL),(558,34,24,2,NULL),(559,40,24,2,NULL),(560,41,24,2,NULL),(561,33,24,2,NULL),(562,36,24,2,NULL),(563,15,24,2,NULL),(564,17,24,2,NULL),(565,68,24,2,NULL),(566,135,24,2,NULL),(567,136,24,2,NULL),(568,47,1,2,NULL),(569,51,1,2,NULL),(570,32,1,2,NULL),(571,34,1,2,NULL),(572,40,1,2,NULL),(573,41,1,2,NULL),(574,33,1,2,NULL),(575,36,1,2,NULL),(576,15,1,2,NULL),(577,17,1,2,NULL),(578,68,1,2,NULL),(579,135,1,2,NULL),(580,136,1,2,NULL),(581,4,1,2,NULL),(582,1,1,2,NULL),(583,47,3,2,NULL),(584,51,3,2,NULL),(585,32,3,2,NULL),(586,34,3,2,NULL),(587,40,3,2,NULL),(588,41,3,2,NULL),(589,33,3,2,NULL),(590,36,3,2,NULL),(591,15,3,2,NULL),(592,17,3,2,NULL),(593,68,3,2,NULL),(594,135,3,2,NULL),(595,136,3,2,NULL),(596,47,52,2,NULL),(597,51,52,2,NULL),(598,32,52,2,NULL),(599,34,52,2,NULL),(600,40,52,2,NULL),(601,41,52,2,NULL),(602,33,52,2,NULL),(603,36,52,2,NULL),(604,15,52,2,NULL),(605,17,52,2,NULL),(606,68,52,2,NULL),(607,135,52,2,NULL),(608,136,52,2,NULL),(609,47,74,2,NULL),(610,51,74,2,NULL),(611,32,74,2,NULL),(612,34,74,2,NULL),(613,40,74,2,NULL),(614,41,74,2,NULL),(615,33,74,2,NULL),(616,36,74,2,NULL),(617,15,74,2,NULL),(618,17,74,2,NULL),(619,68,74,2,NULL),(620,135,74,2,NULL),(621,136,74,2,NULL),(622,60,10,2,NULL),(623,66,13,2,NULL),(624,86,18,2,NULL),(625,47,22,2,NULL),(626,51,22,2,NULL),(627,32,22,2,NULL),(628,34,22,2,NULL),(629,40,22,2,NULL),(630,41,22,2,NULL),(631,33,22,2,NULL),(632,36,22,2,NULL),(633,15,22,2,NULL),(634,17,22,2,NULL),(635,68,22,2,NULL),(636,135,22,2,NULL),(637,136,22,2,NULL),(638,47,29,2,NULL),(639,51,29,2,NULL),(640,47,45,2,NULL),(641,51,45,2,NULL),(642,47,79,2,NULL),(643,51,79,2,NULL),(644,47,12,2,NULL),(645,51,12,2,NULL),(646,47,21,2,NULL),(647,51,21,2,NULL),(648,47,27,2,NULL),(649,51,27,2,NULL),(650,47,31,2,NULL),(651,51,31,2,NULL),(652,47,38,2,NULL),(653,51,38,2,NULL),(654,47,43,2,NULL),(655,51,43,2,NULL),(656,47,81,2,NULL),(657,51,81,2,NULL),(658,47,85,2,NULL),(659,51,85,2,NULL),(660,76,33,2,NULL),(661,90,33,2,NULL),(662,32,29,2,NULL),(663,34,29,2,NULL),(664,40,29,2,NULL),(665,41,29,2,NULL),(666,33,29,2,NULL),(667,36,29,2,NULL),(668,15,29,2,NULL),(669,17,29,2,NULL),(670,68,29,2,NULL),(671,135,29,2,NULL),(672,136,29,2,NULL),(673,30,10,2,NULL),(674,37,10,2,NULL),(675,43,10,2,NULL),(676,74,10,2,NULL),(677,32,45,2,NULL),(678,34,45,2,NULL),(679,40,45,2,NULL),(680,41,45,2,NULL),(681,32,79,2,NULL),(682,34,79,2,NULL),(683,40,79,2,NULL),(684,41,79,2,NULL),(685,32,12,2,NULL),(686,34,12,2,NULL),(687,40,12,2,NULL),(688,41,12,2,NULL),(689,32,21,2,NULL),(690,34,21,2,NULL),(691,40,21,2,NULL),(692,41,21,2,NULL),(693,32,27,2,NULL),(694,34,27,2,NULL),(695,40,27,2,NULL),(696,41,27,2,NULL),(697,32,31,2,NULL),(698,34,31,2,NULL),(699,40,31,2,NULL),(700,41,31,2,NULL),(701,32,38,2,NULL),(702,34,38,2,NULL),(703,40,38,2,NULL),(704,41,38,2,NULL),(705,32,43,2,NULL),(706,34,43,2,NULL),(707,40,43,2,NULL),(708,41,43,2,NULL),(709,32,81,2,NULL),(710,34,81,2,NULL),(711,40,81,2,NULL),(712,41,81,2,NULL),(713,32,85,2,NULL),(714,34,85,2,NULL),(715,40,85,2,NULL),(716,41,85,2,NULL),(717,56,37,2,NULL),(718,33,45,2,NULL),(719,36,45,2,NULL),(720,15,45,2,NULL),(721,17,45,2,NULL),(722,68,45,2,NULL),(723,135,45,2,NULL),(724,136,45,2,NULL),(725,33,79,2,NULL),(726,36,79,2,NULL),(727,15,79,2,NULL),(728,17,79,2,NULL),(729,68,79,2,NULL),(730,135,79,2,NULL),(731,136,79,2,NULL),(732,33,81,2,NULL),(733,36,81,2,NULL),(734,15,81,2,NULL),(735,17,81,2,NULL),(736,68,81,2,NULL),(737,135,81,2,NULL),(738,136,81,2,NULL),(739,152,81,2,NULL),(740,135,12,2,NULL),(741,136,12,2,NULL),(742,135,21,2,NULL),(743,136,21,2,NULL),(744,135,27,2,NULL),(745,136,27,2,NULL),(746,135,31,2,NULL),(747,136,31,2,NULL),(748,135,38,2,NULL),(749,136,38,2,NULL),(750,135,43,2,NULL),(751,136,43,2,NULL),(752,135,85,2,NULL),(753,136,85,2,NULL),(754,153,81,2,NULL),(755,33,85,2,NULL),(756,36,85,2,NULL),(757,15,85,2,NULL),(758,17,85,2,NULL),(759,68,85,2,NULL),(760,54,38,2,NULL),(761,55,38,2,NULL),(762,80,38,2,NULL),(763,33,12,2,NULL),(764,36,12,2,NULL),(765,15,12,2,NULL),(766,17,12,2,NULL),(767,68,12,2,NULL),(768,22,12,2,NULL),(769,58,38,2,NULL),(770,61,12,2,NULL),(771,64,12,2,NULL),(772,71,38,2,NULL),(773,78,12,2,NULL),(774,33,21,2,NULL),(775,36,21,2,NULL),(776,15,21,2,NULL),(777,17,21,2,NULL),(778,68,21,2,NULL),(779,18,21,2,NULL),(780,33,31,2,NULL),(781,36,31,2,NULL),(782,15,27,2,NULL),(783,17,27,2,NULL),(784,68,27,2,NULL),(785,33,38,2,NULL),(786,36,38,2,NULL),(787,33,43,2,NULL),(788,36,43,2,NULL),(789,82,12,2,NULL),(790,107,38,2,NULL),(791,15,31,2,NULL),(792,17,31,2,NULL),(793,68,31,2,NULL),(794,50,35,2,NULL),(795,92,21,2,NULL),(796,15,38,2,NULL),(797,17,38,2,NULL),(798,68,38,2,NULL),(799,15,43,2,NULL),(800,17,43,2,NULL),(801,68,43,2,NULL),(802,20,38,2,NULL),(803,39,38,2,NULL),(804,67,38,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAuthorities`
--

LOCK TABLES `PAuthorities` WRITE;
/*!40000 ALTER TABLE `PAuthorities` DISABLE KEYS */;
INSERT INTO `PAuthorities` VALUES (1,1,'com.ggnes.chipndale.ppy_cache');
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (10,'android.permission.ACCESS_FINE_LOCATION'),(5,'android.permission.ACCESS_NETWORK_STATE'),(4,'android.permission.ACCESS_WIFI_STATE'),(8,'android.permission.GET_TASKS'),(2,'android.permission.INTERNET'),(1,'android.permission.READ_PHONE_STATE'),(14,'android.permission.READ_SMS'),(12,'android.permission.RECEIVE_BOOT_COMPLETED'),(16,'android.permission.RECEIVE_SMS'),(7,'android.permission.SYSTEM_ALERT_WINDOW'),(9,'android.permission.VIBRATE'),(11,'android.permission.WAKE_LOCK'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(15,'android.permission.WRITE_SMS'),(6,'com.android.launcher.permission.INSTALL_SHORTCUT'),(13,'com.android.launcher.permission.UNINSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Providers`
--

LOCK TABLES `Providers` WRITE;
/*!40000 ALTER TABLE `Providers` DISABLE KEYS */;
INSERT INTO `Providers` VALUES (1,77,0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'',NULL,NULL,NULL),(5,NULL,NULL,'market://details?id=com.feasy.jewels.Jelly',NULL,NULL,NULL),(6,NULL,NULL,'market:///search?q=pub:\"funweaver\"',NULL,NULL,NULL),(7,NULL,NULL,'market://search?q=pub:\"funweaver\"',NULL,NULL,NULL),(8,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(9,NULL,NULL,'(.*)',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(13,NULL,NULL,'file://',NULL,NULL,NULL),(14,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(15,NULL,NULL,'file://',NULL,NULL,NULL),(16,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(17,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(18,NULL,NULL,'file://',NULL,NULL,NULL),(19,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(20,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(21,NULL,NULL,'file://',NULL,NULL,NULL),(22,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(23,NULL,NULL,'file://',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'',NULL,NULL,NULL),(26,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(27,NULL,NULL,'file://',NULL,NULL,NULL),(28,NULL,NULL,'(.*)',NULL,NULL,NULL),(29,NULL,NULL,'(.*)',NULL,NULL,NULL),(30,NULL,NULL,'(.*)',NULL,NULL,NULL),(31,NULL,NULL,'(.*)',NULL,NULL,NULL),(32,NULL,NULL,'(.*)',NULL,NULL,NULL),(33,NULL,NULL,'(.*)',NULL,NULL,NULL),(34,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(35,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(36,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(37,NULL,NULL,'(.*)',NULL,NULL,NULL),(38,NULL,NULL,'file://(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,2,1),(7,2,2),(8,2,3),(9,2,6),(10,2,7),(11,2,8),(12,2,9),(13,3,1),(14,3,2),(15,4,1),(16,3,3),(17,4,2),(18,3,5),(19,4,3),(20,5,1),(21,3,6),(22,4,4),(23,5,2),(24,4,5),(25,3,7),(26,5,3),(27,3,8),(28,4,6),(29,5,5),(30,3,10),(31,4,8),(32,5,6),(33,3,11),(34,4,9),(35,5,12),(36,4,11),(37,5,13),(38,4,12),(39,4,13),(40,6,16),(41,6,1),(42,6,2),(43,6,3),(44,6,4),(45,6,5),(46,6,14),(47,6,15),(48,7,1),(49,7,2),(50,7,3),(51,7,4),(52,7,5),(53,7,8);
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

-- Dump completed on 2015-10-12  3:30:31
