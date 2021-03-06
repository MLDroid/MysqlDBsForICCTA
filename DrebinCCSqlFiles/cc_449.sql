-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_449
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (17,'.ImageTestActivity'),(25,'.Myhall'),(13,'.PintuActivity'),(12,'.Web'),(2,'android.intent.action.BOOT_COMPLETED'),(20,'android.intent.action.CHOOSER'),(10,'android.intent.action.CheckinHub'),(26,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(11,'android.intent.action.PACKAGE_ADDED'),(8,'android.intent.action.PACKAGE_REMOVED'),(9,'android.intent.action.SEARCH'),(3,'android.intent.action.USER_PRESENT'),(5,'android.intent.action.VIEW'),(21,'android.net.conn.CONNECTIVITY_CHANGE'),(4,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(19,'com.android.vending.INSTALL_REFERRER'),(6,'com.android_isoyixingmrg.PgJwr1'),(15,'com.android_isoyixingmrg.PintuActivity'),(16,'com.gamesns.GamesnsService'),(23,'com.qiaojr1.GameBootReceiver'),(18,'com.qiaojr1.ImageTestActivity'),(24,'com.qiaojr1.Myhall'),(14,'com.qiaojr1.Web'),(22,'org.android_ioxxgrj.ImageTestActivity'),(7,'org.android_ioxxgrj.cwjbTr1');
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
INSERT INTO `Applications` VALUES (1,'com.android_isoyixingmrg',20009),(2,'com.fadfidkbn.wtsklhfacwgbwiors',10033),(3,'org.android_ioxxgrj',1100),(4,'com.qiaojr1',1002),(5,'com.rvknehdt.awtijwrao',10041),(6,'com.rim.nana.laipe',10021),(7,'com.gamesns',114);
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
INSERT INTO `CategoryStrings` VALUES (5,'android.intent.category.BROWSABLE'),(1,'android.intent.category.DEFAULT'),(3,'android.intent.category.INFO'),(2,'android.intent.category.LAUNCHER'),(4,'android.intent.categroy.DEFUAULT');
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
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.android_isoyixingmrg.PintuActivity'),(2,1,'com.android_isoyixingmrg.PgJwr8'),(3,1,'com.android_isoyixingmrg.PgJwr5'),(4,1,'com.android_isoyixingmrg.PgJwr13'),(5,1,'com.android_isoyixingmrg.PgJwr12'),(6,1,'com.android_isoyixingmrg.PgJwr2'),(7,1,'com.android_isoyixingmrg.PgJwr1'),(8,2,'com.fadfidkbn.wtsklhfacwgbwiors.ActivityMain'),(9,2,'com.fadfidkbn.wtsklhfacwgbwiors.ActivityShow'),(10,3,'org.android_ioxxgrj.image.PhotoGrid'),(11,2,'com.fadfidkbn.wtsklhfacwgbwiors.ActivityScore'),(12,2,'com.fadfidkbn.wtsklhfacwgbwiors.ActivityHelp'),(13,3,'org.android_ioxxgrj.image.ShowImage'),(14,2,'com.EEGrHUDK.qsnCfjkBru'),(15,3,'org.android_ioxxgrj.cwjbTr8'),(16,4,'com.qiaojr1.Myhall'),(17,4,'com.qiaojr1.Web'),(18,3,'org.android_ioxxgrj.cwjbTr5'),(19,2,'com.EEGrHUDK.akqlsUJkseCiE'),(20,4,'com.qiaojr1.HomeActivity'),(21,2,'com.EEGrHUDK.ntpDurIhbwNACpL'),(22,4,'com.qiaojr1.SortActivity1'),(23,3,'org.android_ioxxgrj.cwjbTr13'),(24,2,'com.EEGrHUDK.phDWdatTa'),(25,4,'com.qiaojr1.SortActivity2'),(26,2,'com.EEGrHUDK.MsVNDlkAlpwabB'),(27,3,'org.android_ioxxgrj.cwjbTr12'),(28,2,'com.EEGrHUDK.QBgCWkoDesFPUg'),(29,4,'com.qiaojr1.SearchActivity'),(30,3,'org.android_ioxxgrj.cwjbTr2'),(31,2,'com.EEGrHUDK.userPermissionReceiver'),(32,5,'com.rvknehdt.awtijwrao.MetroQuiz'),(33,4,'com.qiaojr1.ManagerActivity'),(34,5,'com.rvknehdt.awtijwrao.QuestionActivity'),(35,3,'org.android_ioxxgrj.cwjbTr1'),(36,5,'com.rvknehdt.awtijwrao.PaperActivity'),(37,4,'com.qiaojr1.GameInfo'),(38,5,'com.rvknehdt.awtijwrao.PreferencesActivity'),(39,5,'com.rvknehdt.awtijwrao.ScorePut'),(40,4,'com.qiaojr1.TableClass'),(41,5,'com.rvknehdt.awtijwrao.ScoreList'),(42,5,'net.youmi.android.AdActivity'),(43,4,'com.qiaojr1.GameAlertDialog'),(44,5,'com.qjSwce.MLWHlUQGBaEWDb'),(45,4,'com.qiaojr1.DevelopmentSettings'),(46,5,'com.qjSwce.GAjQGvOf'),(47,4,'com.qiaojr1.img.ImageTestActivity'),(48,5,'com.nd.dianjin.activity.OfferAppActivity'),(49,4,'com.qiaojr1.GameService'),(50,4,'com.qiaojr1.GameBootReceiver'),(51,6,'i.l.l.ooooooooo'),(52,6,'com.admob.android.ads.AdMobActivity'),(53,6,'com.OQEGkbJcK.AkfUcwshMQDdQ'),(54,6,'com.OQEGkbJcK.vEphGedQWhKRkQ'),(55,1,'u'),(56,3,'o'),(57,7,'com.gamesns.activity.BackupAppActivity'),(58,7,'com.gamesns.activity.DiscussionFeed'),(59,7,'com.gamesns.activity.DiscussionForm'),(60,7,'com.gamesns.activity.AddFriends'),(61,7,'com.gamesns.activity.FriendSearch'),(62,7,'com.gamesns.activity.BasicFeed'),(63,7,'com.gamesns.activity.AddFriendsOptions'),(64,7,'com.gamesns.activity.LoginForm'),(65,7,'com.gamesns.activity.RegisterForm'),(66,3,'n'),(67,7,'com.gamesns.activity.SimpleGallery'),(68,7,'com.gamesns.activity.CheckinForm'),(69,7,'com.gamesns.activity.LoginSignupSplash'),(70,7,'com.gamesns.activity.DiscoverTab'),(71,2,'com.fadfidkbn.wtsklhfacwgbwiors.ActivityMain$4'),(72,7,'com.gamesns.activity.DiscoverInstructions'),(73,5,'com.rvknehdt.awtijwrao.QuestionActivity$2'),(74,7,'com.gamesns.activity.GameDetails'),(75,1,'ac'),(76,7,'com.gamesns.activity.GameTab'),(77,7,'com.gamesns.activity.FriendsTab'),(78,7,'com.gamesns.activity.YouTab'),(79,7,'com.gamesns.activity.YouTabNew'),(80,3,'u'),(81,7,'com.gamesns.activity.FriendDetails'),(82,7,'com.gamesns.activity.CheckinHub'),(83,2,'com.EEGrHUDK.ad'),(84,5,'net.youmi.android.bd'),(85,7,'com.gamesns.GameList'),(86,4,'bo'),(87,7,'com.gamesns.activity.ChatActivity'),(88,2,'com.fadfidkbn.wtsklhfacwgbwiors.ActivityMain$2'),(89,7,'com.gamesns.activity.MediaActivity'),(90,7,'com.gamesns.activity.Web'),(91,7,'com.gamesns.activity.WebMediaPlayer'),(92,7,'com.gamesns.activity.UpdateActivity'),(93,1,'y'),(94,4,'n'),(95,2,'com.fadfidkbn.wtsklhfacwgbwiors.ActivityShow$4'),(96,7,'com.gamesns.activity.Share'),(97,7,'com.gamesns.activity.AppTrafficActivity'),(98,2,'com.EEGrHUDK.j'),(99,7,'com.gamesns.activity.VideoDetail'),(100,7,'com.gamesns.activity.GameDetailNewActivity'),(101,7,'com.gamesns.activity.ModifyUserData'),(102,7,'com.gamesns.activity.HomeActivity'),(103,7,'com.gamesns.activity.DiscussionDetail'),(104,7,'com.gamesns.activity.DeskTabActivity'),(105,4,'bz'),(106,7,'com.gamesns.activity.AllGame'),(107,7,'com.gamesns.activity.GameRecommend'),(108,7,'com.gamesns.activity.ManagerGame'),(109,5,'com.nd.dianjin.DianJinPlatform'),(110,7,'com.gamesns.GamesnsService'),(111,2,'com.EEGrHUDK.ab'),(112,7,'com.gamesns.receiver.StartupIntentReceiver'),(113,7,'com.gamesns.receiver.PackageAddedReceiver'),(114,7,'com.gamesns.receiver.PackageRemovedReceiver'),(115,7,'com.gamesns.receiver.ReferrerReceiver'),(116,4,'dc'),(117,5,'net.youmi.android.t'),(118,7,'com.gamesns.receiver.NetStateReceiver'),(119,7,'com.gamesns.AlarmReceiver'),(120,4,'cw'),(121,2,'com.fadfidkbn.wtsklhfacwgbwiors.ActivityShow$7'),(122,2,'com.fadfidkbn.wtsklhfacwgbwiors.ActivityMain$1'),(123,4,'ax'),(124,4,'cu'),(125,4,'an'),(126,4,'ao'),(127,4,'dd');
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
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,4,'from'),(2,1,'service_channel'),(3,2,'title'),(4,2,'from_table'),(5,5,'url'),(6,2,'from_alert'),(7,2,'filepath'),(8,5,'fromtable'),(9,5,'btn_txt'),(10,2,'game'),(11,30,'stylebox'),(12,15,'status'),(13,28,'version_code'),(14,5,'package_name'),(15,28,'apk_url'),(16,15,'filepath'),(17,15,'fromtype'),(18,15,'game'),(19,24,'isDirectFromTable'),(20,28,'package_name'),(21,5,'apk_url'),(22,28,'title'),(23,28,'content'),(24,4,'isDirectFromTable'),(25,5,'title'),(26,5,'version_code'),(27,26,'packageName'),(28,5,'content'),(29,21,'apkURL'),(30,21,'apkSoftID'),(31,15,'from_alert'),(32,42,'D50EF1926ADD471892E72BCE6D7E032C'),(33,42,'EB80F3291A8E469c962CA133BDC549D7'),(34,42,'D780FBF4215247bcBB1AC0AD33C474FE'),(35,52,'u'),(36,52,'json'),(37,21,'iconURL'),(38,51,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(39,52,'su'),(40,52,'a'),(41,52,'sku'),(42,51,'ADMOB_PUBLISHER_ID'),(43,51,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(44,52,'ru'),(45,21,'np_app_key'),(46,23,'np_app_key'),(47,14,'np_app_key'),(48,27,'np_app_key'),(49,19,'np_app_key'),(50,2,'fromtype'),(51,52,'t'),(52,52,'c'),(53,52,'rd'),(54,52,'nosk'),(55,52,'skd'),(56,16,'nextclassid'),(57,52,'mi'),(58,6,'service_channel'),(59,33,'total'),(60,52,'si'),(61,52,'tr'),(62,52,'or'),(63,52,'p'),(64,52,'ad'),(65,52,'au'),(66,27,'fileName'),(67,21,'apkInfo'),(68,25,'nextclassid'),(69,21,'detailFlag'),(70,52,'oi'),(71,52,'o'),(72,52,'cs'),(73,52,'int'),(74,52,'b'),(75,52,'sin'),(76,52,'sc'),(77,52,'ap'),(78,52,'s'),(79,52,'cbo'),(80,52,'msm'),(81,33,'soft_id'),(82,52,'$'),(83,52,'sd'),(84,26,'fileURL'),(85,33,'url'),(86,27,'fileURL'),(87,15,'from_table'),(88,15,'title'),(89,28,'btn_txt'),(90,28,'fromtable'),(91,21,'apkSize'),(92,21,'packageName'),(93,42,'172C94EDC717477aBF600D7898A64A8E'),(94,33,'package_name'),(95,33,'app_name'),(96,25,'status'),(97,2,'status'),(98,21,'apkVersion'),(99,47,'service_channel'),(100,21,'apkTitle'),(101,16,'service_channel'),(102,17,'service_channel'),(103,21,'imageURL'),(104,24,'from'),(105,37,'status'),(106,33,'icon'),(107,10,'stylebox'),(108,28,'url'),(109,37,'filepath'),(110,37,'title'),(111,29,'package_name'),(112,33,'filepath'),(113,33,'status'),(114,37,'from_table'),(115,33,'completed'),(116,49,'service_channel'),(117,43,'content'),(118,29,'status'),(119,43,'title'),(120,25,'package_name'),(121,29,'version_code'),(122,43,'url'),(123,43,'btn_txt'),(124,37,'from_alert');
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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'s',1,NULL,NULL),(7,7,'r',1,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',1,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,24,'s',0,NULL,NULL),(24,23,'a',1,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'s',0,NULL,NULL),(27,28,'r',0,NULL,NULL),(28,27,'a',0,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'s',1,NULL,NULL),(31,31,'r',1,NULL,NULL),(32,32,'a',1,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'r',1,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',1,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',1,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',1,NULL,NULL),(46,46,'a',1,NULL,NULL),(47,47,'a',1,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'s',1,NULL,NULL),(50,50,'r',1,NULL,NULL),(51,51,'a',1,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',1,NULL,NULL),(55,57,'a',0,NULL,NULL),(56,58,'a',0,NULL,NULL),(57,59,'a',0,NULL,NULL),(58,60,'a',0,NULL,NULL),(59,61,'a',0,NULL,NULL),(60,62,'a',0,NULL,NULL),(61,63,'a',0,NULL,NULL),(62,64,'a',0,NULL,NULL),(63,65,'a',0,NULL,NULL),(64,67,'a',0,NULL,NULL),(65,68,'a',0,NULL,NULL),(66,69,'a',0,NULL,NULL),(67,70,'a',1,NULL,NULL),(68,72,'a',0,NULL,NULL),(69,74,'a',0,NULL,NULL),(70,76,'a',0,NULL,NULL),(71,77,'a',0,NULL,NULL),(72,78,'a',1,NULL,NULL),(73,79,'a',1,NULL,NULL),(74,81,'a',0,NULL,NULL),(75,82,'a',1,NULL,NULL),(76,85,'a',1,NULL,NULL),(77,87,'a',1,NULL,NULL),(78,89,'a',0,NULL,NULL),(79,90,'a',0,NULL,NULL),(80,91,'a',0,NULL,NULL),(81,92,'a',0,NULL,NULL),(82,96,'a',1,NULL,NULL),(83,97,'a',0,NULL,NULL),(84,99,'a',0,NULL,NULL),(85,100,'a',0,NULL,NULL),(86,101,'a',0,NULL,NULL),(87,102,'a',0,NULL,NULL),(88,103,'a',0,NULL,NULL),(89,104,'a',1,NULL,NULL),(90,106,'a',0,NULL,NULL),(91,107,'a',0,NULL,NULL),(92,108,'a',0,NULL,NULL),(93,110,'s',1,NULL,NULL),(94,112,'r',1,NULL,NULL),(95,113,'r',1,NULL,NULL),(96,114,'r',1,NULL,NULL),(97,115,'r',1,NULL,NULL),(98,118,'r',1,NULL,NULL),(99,119,'r',0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,3),(2,2,5),(3,3,7),(4,4,1),(5,5,2),(6,6,7),(7,7,2),(8,8,2),(9,9,2),(10,10,5),(11,11,18),(12,11,24),(13,11,28),(14,12,2),(15,13,5),(16,14,15),(17,15,2),(18,16,35),(19,17,35),(20,18,2),(21,19,15),(22,20,5),(23,20,4),(24,20,3),(25,21,7),(26,22,15),(27,23,3),(28,24,15),(29,25,19),(30,26,4),(31,26,3),(32,26,5),(33,27,8),(34,27,19),(35,28,15),(36,29,42),(37,29,34),(38,30,2),(39,31,14),(40,32,10),(41,33,19),(42,33,21),(43,34,42),(44,34,32),(45,35,15),(46,36,46),(47,37,14),(48,38,32),(49,39,31),(50,40,20),(51,41,2),(52,42,42),(53,43,53),(54,44,33),(55,45,28),(56,46,19),(57,46,8),(58,47,28),(59,48,19),(60,49,2),(61,50,17),(62,51,9),(63,52,15),(64,53,53),(65,54,17),(66,55,21),(67,55,19),(68,56,1),(69,57,21),(70,58,15),(71,59,37),(72,60,2),(73,61,26),(74,62,46),(75,63,47),(76,64,14),(77,65,42),(78,65,39),(79,66,15),(80,67,2),(81,68,34),(82,68,42),(83,69,27),(84,70,18),(85,70,28),(86,70,24),(87,71,5),(88,72,44),(89,73,15),(90,74,20),(91,75,42),(92,76,15),(93,77,14),(94,78,16),(95,79,9),(96,80,10),(97,81,33),(98,82,19),(99,84,37),(100,83,19),(101,85,18),(102,86,19),(103,86,8),(104,87,25),(105,88,35),(106,89,40),(107,90,16),(108,91,18),(109,92,37),(110,93,20),(111,94,10),(112,95,43),(113,96,28),(114,97,16),(115,98,25),(116,99,15),(117,100,28),(118,101,37),(119,102,37),(120,103,43),(121,104,20),(122,105,17),(123,106,47),(124,107,29),(125,108,40),(126,109,50),(127,110,29),(128,111,16),(129,112,40),(130,113,50),(131,114,16),(132,115,20),(133,116,25),(134,117,25),(135,118,40),(136,119,25),(137,120,50),(138,121,33),(139,122,25),(140,123,43),(141,124,43),(142,125,16),(143,126,37),(144,127,16),(145,128,47),(146,129,20);
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
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,3,'<com.android_isoyixingmrg.PgJwr5: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(2,5,'<com.android_isoyixingmrg.PgJwr12: void onClick(android.view.View)>',66,'a',NULL),(3,7,'<com.android_isoyixingmrg.PgJwr1: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(4,1,'<com.android_isoyixingmrg.PintuActivity: void onCreate(android.os.Bundle)>',86,'s',NULL),(5,2,'<com.android_isoyixingmrg.PgJwr8: void onCreate(android.os.Bundle)>',172,'a',NULL),(6,7,'<com.android_isoyixingmrg.PgJwr1: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(7,55,'<u: void onClick(android.view.View)>',239,'a',NULL),(8,2,'<com.android_isoyixingmrg.PgJwr8: void onCreate(android.os.Bundle)>',33,'s',NULL),(9,2,'<com.android_isoyixingmrg.PgJwr8: void onCreate(android.os.Bundle)>',177,'a',NULL),(10,5,'<com.android_isoyixingmrg.PgJwr12: void onClick(android.view.View)>',84,'a',NULL),(11,23,'<org.android_ioxxgrj.cwjbTr13: void a(int,boolean)>',63,'a',NULL),(12,2,'<com.android_isoyixingmrg.PgJwr8: void onCreate(android.os.Bundle)>',76,'a',NULL),(13,5,'<com.android_isoyixingmrg.PgJwr12: void onClick(android.view.View)>',75,'a',NULL),(14,15,'<org.android_ioxxgrj.cwjbTr8: void onCreate(android.os.Bundle)>',76,'a',NULL),(15,55,'<u: void onClick(android.view.View)>',218,'a',NULL),(16,35,'<org.android_ioxxgrj.cwjbTr1: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(17,35,'<org.android_ioxxgrj.cwjbTr1: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(18,2,'<com.android_isoyixingmrg.PgJwr8: void onCreate(android.os.Bundle)>',90,'s',NULL),(19,56,'<o: void onClick(android.view.View)>',218,'a',NULL),(20,4,'<com.android_isoyixingmrg.PgJwr13: void a(int,boolean)>',63,'a',NULL),(21,7,'<com.android_isoyixingmrg.PgJwr1: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(22,15,'<org.android_ioxxgrj.cwjbTr8: void onCreate(android.os.Bundle)>',33,'s',NULL),(23,3,'<com.android_isoyixingmrg.PgJwr5: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(24,66,'<n: void onClick(android.view.View)>',221,'a',NULL),(25,19,'<com.EEGrHUDK.akqlsUJkseCiE: void a()>',3,'a',NULL),(26,4,'<com.android_isoyixingmrg.PgJwr13: void a(int,boolean)>',10,'s',NULL),(27,71,'<com.fadfidkbn.wtsklhfacwgbwiors.ActivityMain$4: void onClick(android.view.View)>',7,'a',NULL),(28,15,'<org.android_ioxxgrj.cwjbTr8: void onCreate(android.os.Bundle)>',172,'a',NULL),(29,73,'<com.rvknehdt.awtijwrao.QuestionActivity$2: void onClick(android.view.View)>',14,'a',NULL),(30,75,'<ac: void onClick(android.view.View)>',239,'a',NULL),(31,14,'<com.EEGrHUDK.qsnCfjkBru: void onCreate(android.os.Bundle)>',18,'a',NULL),(32,10,'<org.android_ioxxgrj.image.PhotoGrid: void onCreate(android.os.Bundle)>',126,'s',NULL),(33,21,'<com.EEGrHUDK.ntpDurIhbwNACpL: void a(com.EEGrHUDK.ntpDurIhbwNACpL,android.content.Context,java.lang.String)>',5,'a',NULL),(34,32,'<com.rvknehdt.awtijwrao.MetroQuiz: void onClick(android.view.View)>',13,'a',NULL),(35,80,'<u: void onClick(android.view.View)>',239,'a',NULL),(36,46,'<com.qjSwce.GAjQGvOf: void a()>',3,'a',NULL),(37,14,'<com.EEGrHUDK.qsnCfjkBru: void onCreate(android.os.Bundle)>',28,'a',0),(38,32,'<com.rvknehdt.awtijwrao.MetroQuiz: void doChoose(int)>',18,'a',NULL),(39,83,'<com.EEGrHUDK.ad: void run()>',25,'s',NULL),(40,20,'<com.qiaojr1.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',39,'a',NULL),(41,75,'<ac: void onClick(android.view.View)>',218,'a',NULL),(42,84,'<net.youmi.android.bd: void a(android.content.Context,java.lang.String)>',7,'a',NULL),(43,53,'<com.OQEGkbJcK.AkfUcwshMQDdQ: void a(java.lang.String)>',10,'a',NULL),(44,86,'<bo: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(45,27,'<org.android_ioxxgrj.cwjbTr12: void onClick(android.view.View)>',75,'a',NULL),(46,88,'<com.fadfidkbn.wtsklhfacwgbwiors.ActivityMain$2: void onClick(android.view.View)>',7,'a',NULL),(47,27,'<org.android_ioxxgrj.cwjbTr12: void onClick(android.view.View)>',53,'a',NULL),(48,19,'<com.EEGrHUDK.akqlsUJkseCiE: void b()>',45,'a',NULL),(49,93,'<y: void onClick(android.view.View)>',221,'a',NULL),(50,94,'<n: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(51,95,'<com.fadfidkbn.wtsklhfacwgbwiors.ActivityShow$4: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(52,56,'<o: void onClick(android.view.View)>',239,'a',NULL),(53,53,'<com.OQEGkbJcK.AkfUcwshMQDdQ: void a()>',3,'a',NULL),(54,17,'<com.qiaojr1.Web: void onCreate(android.os.Bundle)>',19,'s',NULL),(55,98,'<com.EEGrHUDK.j: void f(android.content.Context,java.lang.String)>',10,'a',NULL),(56,1,'<com.android_isoyixingmrg.PintuActivity: void onCreate(android.os.Bundle)>',82,'s',NULL),(57,21,'<com.EEGrHUDK.ntpDurIhbwNACpL: void onCreate(android.os.Bundle)>',74,'a',NULL),(58,66,'<n: void onClick(android.view.View)>',242,'a',NULL),(59,105,'<bz: void onClick(android.view.View)>',205,'a',NULL),(60,93,'<y: void onClick(android.view.View)>',242,'a',NULL),(61,26,'<com.EEGrHUDK.MsVNDlkAlpwabB: void a(java.lang.String)>',10,'a',NULL),(62,109,'<com.nd.dianjin.DianJinPlatform: void showOfferWall(android.content.Context,com.nd.dianjin.DianJinPlatform$Oriention)>',7,'a',NULL),(63,47,'<com.qiaojr1.img.ImageTestActivity: void onCreate(android.os.Bundle)>',49,'s',NULL),(64,111,'<com.EEGrHUDK.ab: void run()>',8,'s',NULL),(65,39,'<com.rvknehdt.awtijwrao.ScorePut: void onClick(android.view.View)>',27,'a',NULL),(66,15,'<org.android_ioxxgrj.cwjbTr8: void onCreate(android.os.Bundle)>',90,'s',NULL),(67,2,'<com.android_isoyixingmrg.PgJwr8: void onCreate(android.os.Bundle)>',81,'a',NULL),(68,34,'<com.rvknehdt.awtijwrao.QuestionActivity: void onClick(android.view.View)>',24,'a',NULL),(69,28,'<com.EEGrHUDK.QBgCWkoDesFPUg: void a(android.content.Context)>',76,'a',NULL),(70,23,'<org.android_ioxxgrj.cwjbTr13: void a(int,boolean)>',10,'s',NULL),(71,5,'<com.android_isoyixingmrg.PgJwr12: void onClick(android.view.View)>',53,'a',NULL),(72,44,'<com.qjSwce.MLWHlUQGBaEWDb: void b()>',3,'a',NULL),(73,15,'<org.android_ioxxgrj.cwjbTr8: void onCreate(android.os.Bundle)>',81,'a',NULL),(74,116,'<dc: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(75,117,'<net.youmi.android.t: void onClick(android.view.View)>',48,'a',NULL),(76,80,'<u: void onClick(android.view.View)>',218,'a',NULL),(77,14,'<com.EEGrHUDK.qsnCfjkBru: void onCreate(android.os.Bundle)>',33,'a',NULL),(78,120,'<cw: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(79,121,'<com.fadfidkbn.wtsklhfacwgbwiors.ActivityShow$7: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(80,10,'<org.android_ioxxgrj.image.PhotoGrid: void onCreate(android.os.Bundle)>',122,'s',NULL),(81,33,'<com.qiaojr1.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(82,19,'<com.EEGrHUDK.akqlsUJkseCiE: void onBackPressed()>',5,'a',NULL),(83,19,'<com.EEGrHUDK.akqlsUJkseCiE: void b()>',55,'a',NULL),(84,37,'<com.qiaojr1.GameInfo: void onCreate(android.os.Bundle)>',94,'a',NULL),(85,18,'<org.android_ioxxgrj.cwjbTr5: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(86,122,'<com.fadfidkbn.wtsklhfacwgbwiors.ActivityMain$1: void onClick(android.view.View)>',7,'a',NULL),(87,25,'<com.qiaojr1.SortActivity2: void onCreate(android.os.Bundle)>',11,'s',NULL),(88,35,'<org.android_ioxxgrj.cwjbTr1: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(89,123,'<ax: void a(int,boolean)>',29,'a',NULL),(90,124,'<cu: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(91,18,'<org.android_ioxxgrj.cwjbTr5: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(92,37,'<com.qiaojr1.GameInfo: boolean onKeyDown(int,android.view.KeyEvent)>',10,'a',NULL),(93,20,'<com.qiaojr1.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',48,'a',NULL),(94,10,'<org.android_ioxxgrj.image.PhotoGrid: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',12,'a',NULL),(95,43,'<com.qiaojr1.GameAlertDialog: void onClick(android.view.View)>',53,'a',NULL),(96,27,'<org.android_ioxxgrj.cwjbTr12: void onClick(android.view.View)>',66,'a',NULL),(97,124,'<cu: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(98,125,'<an: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(99,15,'<org.android_ioxxgrj.cwjbTr8: void onCreate(android.os.Bundle)>',177,'a',NULL),(100,27,'<org.android_ioxxgrj.cwjbTr12: void onClick(android.view.View)>',84,'a',NULL),(101,37,'<com.qiaojr1.GameInfo: void onCreate(android.os.Bundle)>',11,'s',NULL),(102,105,'<bz: void onClick(android.view.View)>',224,'a',NULL),(103,43,'<com.qiaojr1.GameAlertDialog: void onClick(android.view.View)>',30,'a',NULL),(104,20,'<com.qiaojr1.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',29,'a',NULL),(105,17,'<com.qiaojr1.Web: void onCreate(android.os.Bundle)>',23,'s',NULL),(106,47,'<com.qiaojr1.img.ImageTestActivity: void onCreate(android.os.Bundle)>',53,'s',NULL),(107,29,'<com.qiaojr1.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(108,123,'<ax: void a(int,boolean)>',10,'s',NULL),(109,50,'<com.qiaojr1.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(110,29,'<com.qiaojr1.SearchActivity: void onCreate(android.os.Bundle)>',12,'s',NULL),(111,16,'<com.qiaojr1.Myhall: void onCreate(android.os.Bundle)>',96,'s',NULL),(112,40,'<com.qiaojr1.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',72,'a',NULL),(113,50,'<com.qiaojr1.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(114,124,'<cu: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(115,116,'<dc: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(116,125,'<an: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(117,125,'<an: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(118,40,'<com.qiaojr1.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(119,25,'<com.qiaojr1.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',24,'a',NULL),(120,50,'<com.qiaojr1.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(121,86,'<bo: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(122,126,'<ao: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(123,43,'<com.qiaojr1.GameAlertDialog: void onClick(android.view.View)>',62,'a',NULL),(124,43,'<com.qiaojr1.GameAlertDialog: void onClick(android.view.View)>',44,'a',NULL),(125,16,'<com.qiaojr1.Myhall: void onCreate(android.os.Bundle)>',101,'s',NULL),(126,37,'<com.qiaojr1.GameInfo: void onCreate(android.os.Bundle)>',99,'a',NULL),(127,124,'<cu: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(128,127,'<dd: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(129,116,'<dc: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,1),(2,2,1),(3,3,5),(4,4,5),(5,5,6),(6,8,6),(7,9,1),(8,10,1),(9,11,1),(10,12,1),(11,18,4),(12,20,5),(13,21,7),(14,22,5),(15,25,5),(16,26,5),(17,31,5),(18,34,5),(19,37,5),(20,38,1),(21,41,1),(22,42,1),(23,44,1),(24,45,1),(25,46,1),(26,47,1),(27,49,1),(28,53,1),(29,54,5),(30,55,1),(31,56,5),(32,57,5),(33,58,5),(34,59,1),(35,61,5),(36,60,4),(37,63,1),(38,65,5),(39,67,5),(40,68,5),(41,69,5),(42,71,1),(43,73,5),(44,74,5),(45,75,1),(46,76,12),(47,77,5),(48,78,1),(49,79,5),(50,80,13),(51,81,1),(52,82,14),(53,83,5),(54,84,1),(55,85,15),(56,87,1),(57,86,5),(58,88,1),(59,89,5),(60,90,1),(61,91,1),(62,92,5),(63,93,5),(64,94,1),(65,96,1),(66,95,5),(67,97,1),(68,98,1),(69,101,1),(70,100,17),(71,104,18),(72,113,5),(73,115,5),(74,114,20),(75,117,20),(76,118,5),(77,119,5),(78,120,20),(79,122,20),(80,125,22),(81,126,20),(82,128,17),(83,127,20),(84,131,20),(85,133,20),(86,136,7),(87,139,1),(88,140,1),(89,142,5),(90,144,4),(91,145,5),(92,147,5),(93,148,5),(94,152,1),(95,153,1),(96,154,1),(97,155,1),(98,162,23),(99,164,24),(100,165,25),(101,167,23),(102,172,1),(103,173,1),(104,176,26),(105,179,5),(106,180,5),(107,184,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,1,2),(2,2,3),(3,9,2),(4,10,3),(5,11,2),(6,12,3),(7,38,2),(8,41,3),(9,42,2),(10,44,2),(11,46,3),(12,45,2),(13,47,3),(14,49,3),(15,53,2),(16,55,3),(17,59,2),(18,63,3),(19,71,2),(20,75,3),(21,78,2),(22,81,3),(23,84,2),(24,87,2),(25,88,3),(26,90,3),(27,91,2),(28,94,2),(29,96,3),(30,97,3),(31,98,2),(32,101,3),(33,139,2),(34,140,3),(35,152,2),(36,153,3),(37,154,2),(38,155,3),(39,172,2),(40,173,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,5,'com/android_isoyixingmrg/PgJwr2'),(2,6,'com/android_isoyixingmrg/PgJwr2'),(3,7,'com/android_isoyixingmrg/PintuActivity'),(4,8,'com/android_isoyixingmrg/PgJwr2'),(5,13,'com/android_isoyixingmrg/PgJwr2'),(6,14,'com/android_isoyixingmrg/PintuActivity'),(7,15,'com/android_isoyixingmrg/PgJwr12'),(8,16,'org/android_ioxxgrj/image/PhotoGrid'),(9,17,'com/android_isoyixingmrg/PintuActivity'),(10,19,'org/android_ioxxgrj/image/PhotoGrid'),(11,21,'org/android_ioxxgrj/cwjbTr2'),(12,23,'org/android_ioxxgrj/cwjbTr2'),(13,24,'com/android_isoyixingmrg/PgJwr2'),(14,27,'com/android_isoyixingmrg/PintuActivity'),(15,28,'com/android_isoyixingmrg/PgJwr2'),(16,29,'org/android_ioxxgrj/cwjbTr2'),(17,30,'com/android_isoyixingmrg/PgJwr8'),(18,32,'com/fadfidkbn/wtsklhfacwgbwiors/ActivityMain'),(19,33,'com/android_isoyixingmrg/PgJwr2'),(20,35,'com/fadfidkbn/wtsklhfacwgbwiors/ActivityHelp'),(21,36,'org/android_ioxxgrj/image/PhotoGrid'),(22,39,'com/EEGrHUDK/akqlsUJkseCiE'),(23,40,'org/android_ioxxgrj/cwjbTr2'),(24,43,'com/rvknehdt/awtijwrao/QuestionActivity'),(25,48,'com/rvknehdt/awtijwrao/MetroQuiz'),(26,50,'com/rvknehdt/awtijwrao/QuestionActivity'),(27,51,'com/EEGrHUDK/phDWdatTa'),(28,52,'com/qiaojr1/Myhall'),(29,62,'com/fadfidkbn/wtsklhfacwgbwiors/ActivityScore'),(30,66,'com/fadfidkbn/wtsklhfacwgbwiors/ActivityMain'),(31,64,'org/android_ioxxgrj/cwjbTr8'),(32,70,'com/fadfidkbn/wtsklhfacwgbwiors/ActivityScore'),(33,72,'i/l/l/ooooooooo'),(34,76,'com/qiaojr1/GameService'),(35,80,'com/android_isoyixingmrg/PgJwr2'),(36,82,'com/qiaojr1/GameService'),(37,85,'com/android_isoyixingmrg/PgJwr2'),(38,99,'com/nd/dianjin/activity/OfferAppActivity'),(39,100,'com/qiaojr1/GameService'),(40,102,'com/EEGrHUDK/phDWdatTa'),(41,103,'com/rvknehdt/awtijwrao/ScoreList'),(42,105,'org/android_ioxxgrj/cwjbTr2'),(43,104,'com/qiaojr1/GameService'),(44,106,'com/android_isoyixingmrg/PintuActivity'),(45,107,'com/rvknehdt/awtijwrao/ScorePut'),(46,109,'org/android_ioxxgrj/cwjbTr2'),(47,111,'com/rvknehdt/awtijwrao/MetroQuiz'),(48,110,'com/android_isoyixingmrg/PgJwr8'),(49,112,'org/android_ioxxgrj/image/PhotoGrid'),(50,108,'com/EEGrHUDK/ntpDurIhbwNACpL'),(51,116,'com/EEGrHUDK/akqlsUJkseCiE'),(52,121,'com/fadfidkbn/wtsklhfacwgbwiors/ActivityScore'),(53,124,'com/fadfidkbn/wtsklhfacwgbwiors/ActivityMain'),(54,123,'com/qiaojr1/GameService'),(55,125,'org/android_ioxxgrj/cwjbTr2'),(56,130,'com/fadfidkbn/wtsklhfacwgbwiors/ActivityMain'),(57,129,'com/qiaojr1/Myhall'),(58,128,'org/android_ioxxgrj/cwjbTr2'),(59,132,'org/android_ioxxgrj/cwjbTr8'),(60,134,'com/fadfidkbn/wtsklhfacwgbwiors/ActivityShow'),(61,135,'com/qiaojr1/GameService'),(62,136,'org/android_ioxxgrj/cwjbTr2'),(63,137,'com/qiaojr1/Myhall'),(64,138,'com/qiaojr1/Myhall'),(65,141,'com/qiaojr1/Myhall'),(66,143,'org/android_ioxxgrj/image/ShowImage'),(67,146,'com/qiaojr1/Myhall'),(68,149,'org/android_ioxxgrj/image/PhotoGrid'),(69,151,'com/qiaojr1/GameService'),(70,150,'org/android_ioxxgrj/cwjbTr12'),(71,156,'com/qiaojr1/GameInfo'),(72,157,'com/qiaojr1/GameInfo'),(73,158,'com/qiaojr1/GameService'),(74,159,'com/qiaojr1/GameService'),(75,160,'com/qiaojr1/GameInfo'),(76,161,'com/qiaojr1/GameService'),(77,162,'com/qiaojr1/GameService'),(78,163,'com/qiaojr1/GameService'),(79,164,'com/qiaojr1/GameService'),(80,165,'com/qiaojr1/GameService'),(81,166,'com/qiaojr1/GameInfo'),(82,167,'com/qiaojr1/GameService'),(83,168,'com/qiaojr1/Myhall'),(84,169,'com/qiaojr1/GameInfo'),(85,170,'com/qiaojr1/Myhall'),(86,171,'com/qiaojr1/GameInfo'),(87,174,'com/qiaojr1/GameInfo'),(88,175,'com/qiaojr1/GameService'),(89,177,'com/qiaojr1/Myhall'),(90,178,'com/qiaojr1/GameAlertDialog'),(91,181,'com/qiaojr1/GameService'),(92,182,'com/qiaojr1/Myhall'),(93,183,'com/qiaojr1/Myhall'),(94,185,'com/qiaojr1/Myhall');
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,3,1),(2,4,2),(3,20,3),(4,22,4),(5,25,5),(6,26,6),(7,31,7),(8,34,8),(9,54,9),(10,56,10),(11,57,11),(12,58,12),(13,61,13),(14,65,14),(15,67,15),(16,68,16),(17,69,17),(18,73,18),(19,74,19),(20,77,20),(21,79,21),(22,83,22),(23,86,23),(24,89,24),(25,92,25),(26,93,26),(27,95,27),(28,113,28),(29,115,29),(30,118,30),(31,119,31),(32,142,32),(33,145,33),(34,147,34),(35,148,35),(36,176,36),(37,179,37),(38,180,38),(39,184,39);
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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,15,'title'),(2,15,'btn_txt'),(3,15,'need_adb_flag'),(4,15,'cont'),(5,15,'close_flag'),(6,30,'game'),(7,30,'fromtype'),(8,37,'sms_body'),(9,52,'nextclassid'),(10,52,'clicked'),(11,64,'id'),(12,64,'from_alert'),(13,64,'detail_flag'),(14,99,'oriention'),(15,108,'apkVersion'),(16,108,'apkURL'),(17,108,'apkInfo'),(18,110,'id'),(19,108,'packageName'),(20,110,'from_alert'),(21,108,'apkSoftID'),(22,110,'detail_flag'),(23,108,'apkTitle'),(24,108,'iconURL'),(25,108,'apkSize'),(26,108,'imageURL'),(27,114,'android.intent.extra.INTENT'),(28,117,'android.intent.extra.INTENT'),(29,120,'android.intent.extra.TITLE'),(30,120,'android.intent.extra.INTENT'),(31,122,'android.intent.extra.INTENT'),(32,126,'android.intent.extra.TITLE'),(33,126,'android.intent.extra.INTENT'),(34,127,'android.intent.extra.INTENT'),(35,131,'android.intent.extra.TITLE'),(36,131,'android.intent.extra.INTENT'),(37,132,'game'),(38,132,'fromtype'),(39,133,'android.intent.extra.TITLE'),(40,133,'android.intent.extra.INTENT'),(41,138,'clicked'),(42,143,'startid'),(43,143,'position'),(44,146,'clicked'),(45,150,'title'),(46,150,'btn_txt'),(47,150,'need_adb_flag'),(48,150,'cont'),(49,150,'close_flag'),(50,156,'id'),(51,156,'from_table'),(52,156,'detail_flag'),(53,168,'clicked'),(54,169,'title'),(55,170,'title'),(56,170,'nextclassid'),(57,170,'clicked'),(58,171,'title'),(59,174,'title'),(60,177,'title'),(61,177,'nextclassid'),(62,177,'clicked'),(63,178,'title'),(64,178,'btn_txt'),(65,178,'need_adb_flag'),(66,178,'cont'),(67,178,'close_flag'),(68,183,'clicked'),(69,185,'title'),(70,185,'nextclassid'),(71,185,'clicked');
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,2),(7,8,1),(8,9,1),(9,10,1),(10,11,1),(11,12,1),(12,13,1),(13,14,1),(14,15,1),(15,16,3),(16,18,1),(17,19,2),(18,20,1),(19,21,1),(20,22,4),(21,23,1),(22,24,1),(23,25,1),(24,26,2),(25,28,1),(26,29,8),(27,30,9),(28,31,1),(29,32,1),(30,33,1),(31,34,10),(32,35,9),(33,36,1),(34,37,1),(35,38,11),(36,39,5),(37,40,1),(38,41,16),(39,42,2),(40,42,3),(41,43,11),(42,44,8),(43,45,8),(44,46,19),(45,47,21),(46,48,8),(47,49,11),(48,50,11);
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,1,2),(3,5,2),(4,8,1),(5,8,2),(6,9,2),(7,15,2),(8,23,2),(9,24,2),(10,25,2),(11,28,2),(12,29,4),(13,33,3),(14,33,2),(15,34,1),(16,38,4),(17,39,5),(18,39,1),(19,40,2),(20,44,4),(21,48,4),(22,49,4),(23,50,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,29,'package',NULL,NULL,NULL,NULL,NULL),(2,38,'package',NULL,NULL,NULL,NULL,NULL),(3,39,'gamesnsschema','GamesnsSinaActivity',NULL,NULL,NULL,NULL),(4,39,'gamesnsschema','GamesnsTencentActivity',NULL,NULL,NULL,NULL),(5,43,'package',NULL,NULL,NULL,NULL,NULL),(6,45,'package',NULL,NULL,NULL,NULL,NULL),(7,44,'package',NULL,NULL,NULL,NULL,NULL),(8,48,'package',NULL,NULL,NULL,NULL,NULL),(9,49,'package',NULL,NULL,NULL,NULL,NULL),(10,50,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,20,'application','vnd.android.package-archive'),(2,22,'application','vnd.android.package-archive'),(3,25,'application','vnd.android.package-archive'),(4,26,'application','vnd.android.package-archive'),(5,31,'application','vnd.android.package-archive'),(6,34,'application','vnd.android.package-archive'),(7,37,'vnd.android-dir','mms-sms'),(8,54,'application','vnd.android.package-archive'),(9,56,'application','vnd.android.package-archive'),(10,57,'application','vnd.android.package-archive'),(11,58,'application','vnd.android.package-archive'),(12,61,'application','vnd.android.package-archive'),(13,65,'application','vnd.android.package-archive'),(14,67,'application','vnd.android.package-archive'),(15,68,'application','vnd.android.package-archive'),(16,69,'application','vnd.android.package-archive'),(17,73,'application','vnd.android.package-archive'),(18,74,'application','vnd.android.package-archive'),(19,77,'application','vnd.android.package-archive'),(20,79,'application','vnd.android.package-archive'),(21,83,'application','vnd.android.package-archive'),(22,86,'application','vnd.android.package-archive'),(23,89,'application','vnd.android.package-archive'),(24,92,'application','vnd.android.package-archive'),(25,93,'application','vnd.android.package-archive'),(26,95,'application','vnd.android.package-archive'),(27,115,'application','vnd.android.package-archive'),(28,118,'application','vnd.android.package-archive'),(29,119,'application','vnd.android.package-archive'),(30,184,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'(.*)'),(2,2,'(.*)'),(3,5,'com.android_isoyixingmrg'),(4,6,'com.android_isoyixingmrg'),(5,7,'com.android_isoyixingmrg'),(6,8,'com.android_isoyixingmrg'),(7,9,'(.*)'),(8,10,''),(9,11,''),(10,12,'(.*)'),(11,13,'com.android_isoyixingmrg'),(12,14,'com.android_isoyixingmrg'),(13,15,'com.android_isoyixingmrg'),(14,16,'org.android_ioxxgrj'),(15,17,'com.android_isoyixingmrg'),(16,19,'org.android_ioxxgrj'),(17,21,'org.android_ioxxgrj'),(18,23,'org.android_ioxxgrj'),(19,24,'com.android_isoyixingmrg'),(20,27,'com.android_isoyixingmrg'),(21,28,'com.android_isoyixingmrg'),(22,29,'org.android_ioxxgrj'),(23,30,'com.android_isoyixingmrg'),(24,32,'com.fadfidkbn.wtsklhfacwgbwiors'),(25,33,'com.android_isoyixingmrg'),(26,35,'com.fadfidkbn.wtsklhfacwgbwiors'),(27,36,'org.android_ioxxgrj'),(28,39,'com.fadfidkbn.wtsklhfacwgbwiors'),(29,38,'(.*)'),(30,40,'org.android_ioxxgrj'),(31,41,''),(32,42,'(.*)'),(33,43,'com.rvknehdt.awtijwrao'),(34,44,''),(35,46,'(.*)'),(36,45,'(.*)'),(37,48,'com.rvknehdt.awtijwrao'),(38,47,'(.*)'),(39,49,''),(40,50,'com.rvknehdt.awtijwrao'),(41,51,'com.fadfidkbn.wtsklhfacwgbwiors'),(42,53,''),(43,52,'com.qiaojr1'),(44,55,'(.*)'),(45,59,'NULL-CONSTANT'),(46,62,'com.fadfidkbn.wtsklhfacwgbwiors'),(47,63,'NULL-CONSTANT'),(48,66,'com.fadfidkbn.wtsklhfacwgbwiors'),(49,64,'org.android_ioxxgrj'),(50,70,'com.fadfidkbn.wtsklhfacwgbwiors'),(51,71,'(.*)'),(52,72,'com.rim.nana.laipe'),(53,75,''),(54,76,'com.qiaojr1'),(55,78,''),(56,80,'com.android_isoyixingmrg'),(57,81,'(.*)'),(58,82,'com.qiaojr1'),(59,84,'(.*)'),(60,85,'com.android_isoyixingmrg'),(61,87,'(.*)'),(62,88,'(.*)'),(63,90,''),(64,91,'(.*)'),(65,94,''),(66,96,''),(67,97,'(.*)'),(68,98,''),(69,99,'com.rvknehdt.awtijwrao'),(70,101,'(.*)'),(71,100,'com.qiaojr1'),(72,102,'com.fadfidkbn.wtsklhfacwgbwiors'),(73,103,'com.rvknehdt.awtijwrao'),(74,105,'org.android_ioxxgrj'),(75,104,'com.qiaojr1'),(76,106,'com.android_isoyixingmrg'),(77,107,'com.rvknehdt.awtijwrao'),(78,109,'org.android_ioxxgrj'),(79,111,'com.rvknehdt.awtijwrao'),(80,110,'com.android_isoyixingmrg'),(81,112,'org.android_ioxxgrj'),(82,108,'com.fadfidkbn.wtsklhfacwgbwiors'),(83,116,'com.fadfidkbn.wtsklhfacwgbwiors'),(84,121,'com.fadfidkbn.wtsklhfacwgbwiors'),(85,124,'com.fadfidkbn.wtsklhfacwgbwiors'),(86,123,'com.qiaojr1'),(87,125,'org.android_ioxxgrj'),(88,130,'com.fadfidkbn.wtsklhfacwgbwiors'),(89,129,'com.qiaojr1'),(90,128,'org.android_ioxxgrj'),(91,132,'org.android_ioxxgrj'),(92,134,'com.fadfidkbn.wtsklhfacwgbwiors'),(93,135,'com.qiaojr1'),(94,136,'org.android_ioxxgrj'),(95,137,'com.qiaojr1'),(96,138,'com.qiaojr1'),(97,139,'(.*)'),(98,140,'(.*)'),(99,141,'com.qiaojr1'),(100,143,'org.android_ioxxgrj'),(101,146,'com.qiaojr1'),(102,149,'org.android_ioxxgrj'),(103,151,'com.qiaojr1'),(104,150,'org.android_ioxxgrj'),(105,152,'(.*)'),(106,153,''),(107,154,''),(108,155,'(.*)'),(109,156,'com.qiaojr1'),(110,157,'com.qiaojr1'),(111,158,'com.qiaojr1'),(112,159,'com.qiaojr1'),(113,160,'com.qiaojr1'),(114,161,'com.qiaojr1'),(115,162,'com.qiaojr1'),(116,163,'com.qiaojr1'),(117,164,'com.qiaojr1'),(118,165,'com.qiaojr1'),(119,166,'com.qiaojr1'),(120,167,'com.qiaojr1'),(121,168,'com.qiaojr1'),(122,169,'com.qiaojr1'),(123,170,'com.qiaojr1'),(124,171,'com.qiaojr1'),(125,172,'(.*)'),(126,173,'(.*)'),(127,174,'com.qiaojr1'),(128,175,'com.qiaojr1'),(129,177,'com.qiaojr1'),(130,178,'com.qiaojr1'),(131,181,'com.qiaojr1'),(132,182,'com.qiaojr1'),(133,183,'com.qiaojr1'),(134,185,'com.qiaojr1');
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,3,0),(4,4,0),(5,6,0),(6,7,0),(7,8,0),(8,10,0),(9,14,0),(10,15,0),(11,18,0),(12,24,0),(13,25,0),(14,29,0),(15,30,0),(16,31,0),(17,32,0),(18,33,0),(19,35,0),(20,37,0),(21,40,0),(22,45,0),(23,46,0),(24,47,0),(25,49,0),(26,50,0),(27,51,0),(28,54,0),(29,7,0),(30,67,0),(31,72,0),(32,73,0),(33,75,0),(34,75,0),(35,75,0),(36,76,0),(37,77,0),(38,7,0),(39,82,0),(40,89,0),(41,93,0),(42,94,0),(43,95,0),(44,50,0),(45,96,0),(46,97,0),(47,98,0),(48,35,0),(49,35,0),(50,50,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=186 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,1,1,0),(3,2,1,0),(4,2,1,0),(5,3,0,0),(6,4,0,0),(7,5,0,0),(8,6,0,0),(9,7,1,0),(10,7,1,0),(11,7,1,0),(12,7,1,0),(13,8,0,0),(14,9,0,0),(15,10,0,0),(16,11,0,0),(17,12,0,0),(18,13,1,0),(19,14,0,0),(20,15,1,0),(21,16,0,0),(22,15,1,0),(23,17,0,0),(24,18,0,0),(25,19,1,0),(26,19,1,0),(27,20,0,0),(28,21,0,0),(29,22,0,0),(30,23,0,0),(31,24,1,0),(32,25,0,0),(33,26,0,0),(34,24,1,0),(35,27,0,0),(36,28,0,0),(37,29,1,0),(38,30,1,0),(39,31,0,0),(40,32,0,0),(41,30,1,0),(42,33,1,0),(43,34,0,0),(44,30,1,0),(45,35,1,0),(46,33,1,0),(47,30,1,0),(48,36,0,0),(49,35,1,0),(50,38,0,0),(51,39,0,0),(52,40,0,0),(53,35,1,0),(54,41,1,0),(55,35,1,0),(56,42,1,0),(57,41,1,0),(58,43,1,0),(59,44,1,0),(60,45,1,0),(61,42,1,0),(62,46,0,0),(63,44,1,0),(64,47,0,0),(65,42,1,0),(66,48,0,0),(67,42,1,0),(68,49,1,0),(69,50,1,0),(70,51,0,0),(71,52,1,0),(72,53,0,0),(73,42,1,0),(74,49,1,0),(75,52,1,0),(76,54,0,0),(77,42,1,0),(78,52,1,0),(79,55,1,0),(80,56,0,0),(81,52,1,0),(82,54,0,0),(83,42,1,0),(84,57,1,0),(85,56,0,0),(86,42,1,0),(87,58,1,0),(88,57,1,0),(89,59,1,0),(90,58,1,0),(91,60,1,0),(92,42,1,0),(93,59,1,0),(94,58,1,0),(95,61,1,0),(96,60,1,0),(97,58,1,0),(98,60,1,0),(99,62,0,0),(100,63,0,0),(101,60,1,0),(102,64,0,0),(103,65,0,0),(104,63,0,0),(105,66,0,0),(106,67,0,0),(107,68,0,0),(108,69,0,0),(109,70,0,0),(110,71,0,0),(111,72,0,0),(112,73,0,0),(113,74,1,0),(114,75,1,0),(115,76,1,0),(116,77,0,0),(117,75,1,0),(118,76,1,0),(119,78,1,0),(120,75,1,0),(121,79,0,0),(122,75,1,0),(123,81,0,0),(124,82,0,0),(125,80,0,0),(126,75,1,0),(127,75,1,0),(128,80,0,0),(129,84,0,0),(130,83,0,0),(131,75,1,0),(132,85,0,0),(133,75,1,0),(134,86,0,0),(135,87,0,0),(136,88,0,0),(137,89,0,0),(138,90,0,0),(139,91,1,0),(140,91,1,0),(141,92,0,0),(142,93,1,0),(143,94,0,0),(144,95,1,0),(145,96,1,0),(146,97,0,0),(147,96,1,0),(148,98,1,0),(149,99,0,0),(150,100,0,0),(151,101,0,0),(152,102,1,0),(153,102,1,0),(154,102,1,0),(155,102,1,0),(156,103,0,0),(157,104,0,0),(158,105,0,0),(159,106,0,0),(160,107,0,0),(161,108,0,0),(162,109,0,0),(163,110,0,0),(164,111,0,0),(165,111,0,0),(166,112,0,0),(167,113,0,0),(168,114,0,0),(169,115,0,0),(170,116,0,0),(171,117,0,0),(172,118,1,0),(173,118,1,0),(174,119,0,0),(175,120,0,0),(176,121,1,0),(177,122,0,0),(178,123,0,0),(179,124,1,0),(180,124,1,0),(181,125,0,0),(182,126,0,0),(183,127,0,0),(184,128,1,0),(185,129,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (11,'android.permission.ACCESS_CACHE_FILESYSTEM'),(16,'android.permission.ACCESS_COARSE_LOCATION'),(6,'android.permission.ACCESS_NETWORK_STATE'),(15,'android.permission.ACCESS_WIFI_STATE'),(20,'android.permission.CAMERA'),(22,'android.permission.CHANGE_CONFIGURATION'),(21,'android.permission.CHANGE_WIFI_STATE'),(13,'android.permission.DELETE_CACHE_FILES'),(19,'android.permission.GET_ACCOUNTS'),(9,'android.permission.GET_TASKS'),(4,'android.permission.INTERNET'),(12,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(3,'android.permission.RECEIVE_BOOT_COMPLETED'),(10,'android.permission.SET_WALLPAPER'),(8,'android.permission.SYSTEM_ALERT_WINDOW'),(14,'android.permission.VIBRATE'),(17,'android.permission.WAKE_LOCK'),(18,'android.permission.WRITE_APN_SETTINGS'),(5,'android.permission.WRITE_EXTERNAL_STORAGE'),(2,'com.android.launcher.permission.INSTALL_SHORTCUT'),(7,'com.android.launcher.permission.UNINSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(4,NULL,NULL,'file://',NULL,NULL,NULL),(5,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(6,NULL,NULL,'file://',NULL,NULL,NULL),(7,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(8,NULL,NULL,'file://',NULL,NULL,NULL),(9,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(10,NULL,NULL,'file://(.*)/youmicache/CDDA55C678C34d07957074BF6956862F/NULL-CONSTANT',NULL,NULL,NULL),(11,NULL,NULL,'file://',NULL,NULL,NULL),(12,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(13,NULL,NULL,'file://(.*)/youmicache/C8F62501155F41fbBBAA47A53C7F1A9B/NULL-CONSTANT',NULL,NULL,NULL),(14,NULL,NULL,'file://(.*)/youmicache/1BD3ACC63FA94E5B99B5479664B9CE69/NULL-CONSTANT',NULL,NULL,NULL),(15,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(16,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(17,NULL,NULL,'file://',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)/youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F/NULL-CONSTANT',NULL,NULL,NULL),(19,NULL,NULL,'file://',NULL,NULL,NULL),(20,NULL,NULL,'file://(.*)/youmicache/CBB27B6EF764459EAEEE877D9DA42B6D/NULL-CONSTANT',NULL,NULL,NULL),(21,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(22,NULL,NULL,'file://(.*)/youmicache/D080F8A1E1134cabA1910B7129A75B44/NULL-CONSTANT',NULL,NULL,NULL),(23,NULL,NULL,'file://(.*)/youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9/NULL-CONSTANT',NULL,NULL,NULL),(24,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(25,NULL,NULL,'file://(.*)/youmicache/CC39825145FD4445ADD9860797CA5744/NULL-CONSTANT',NULL,NULL,NULL),(26,NULL,NULL,'file://',NULL,NULL,NULL),(27,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(28,NULL,NULL,'(.*)',NULL,NULL,NULL),(29,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(30,NULL,NULL,'file://',NULL,NULL,NULL),(31,NULL,NULL,'file://',NULL,NULL,NULL),(32,NULL,NULL,'(.*)',NULL,NULL,NULL),(33,NULL,NULL,'(.*)',NULL,NULL,NULL),(34,NULL,NULL,'',NULL,NULL,NULL),(35,NULL,NULL,'(.*)',NULL,NULL,NULL),(36,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(37,NULL,NULL,'(.*)',NULL,NULL,NULL),(38,NULL,NULL,'',NULL,NULL,NULL),(39,NULL,NULL,'file://',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,2,1),(9,2,2),(10,3,1),(11,2,4),(12,3,2),(13,3,3),(14,2,5),(15,2,8),(16,3,4),(17,3,5),(18,2,9),(19,3,6),(20,4,1),(21,3,7),(22,4,2),(23,3,10),(24,4,3),(25,4,4),(26,4,5),(27,4,6),(28,4,7),(29,4,11),(30,4,12),(31,4,13),(32,5,17),(33,5,16),(34,5,1),(35,5,4),(36,5,5),(37,5,6),(38,5,14),(39,5,15),(40,6,1),(41,6,4),(42,6,5),(43,6,6),(44,6,14),(45,6,15),(46,7,1),(47,7,2),(48,7,3),(49,7,4),(50,7,5),(51,7,6),(52,7,7),(53,7,9),(54,7,15),(55,7,17),(56,7,19),(57,7,18),(58,7,21),(59,7,20),(60,7,22);
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

-- Dump completed on 2015-10-09  0:39:43
