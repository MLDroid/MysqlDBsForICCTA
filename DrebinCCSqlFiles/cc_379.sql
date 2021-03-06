-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_379
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
INSERT INTO `ActionStrings` VALUES (30,'(.*)'),(34,'<INTENT>'),(43,'APP-6R155974MW219473WCREATE_PAYMENT_FAIL'),(36,'APP-6R155974MW219473WCREATE_PAYMENT_SUCCESS'),(45,'APP-6R155974MW219473WFATAL_ERROR'),(46,'APP-6R155974MW219473WLOGIN_FAIL'),(37,'APP-6R155974MW219473WLOGIN_SUCCESS'),(41,'APP-6R155974MW219473WPOP_DIALOG'),(42,'APP-6R155974MW219473WPUSH_DIALOG_(.*)'),(39,'APP-6R155974MW219473WREPLACE_DIALOG_(.*)'),(35,'APP-6R155974MW219473WUPDATE_VIEW'),(40,'CHANGE_STRING'),(13,'android.app.action.ADD_DEVICE_ADMIN'),(8,'android.app.action.DEVICE_ADMIN_ENABLED'),(7,'android.appwidget.action.APPWIDGET_UPDATE'),(1,'android.intent.action.BOOT_COMPLETED'),(24,'android.intent.action.CAMERA_BUTTON'),(33,'android.intent.action.CHOOSER'),(20,'android.intent.action.CREATE_SHORTCUT'),(31,'android.intent.action.GET_CONTENT'),(2,'android.intent.action.MAIN'),(9,'android.intent.action.SCREEN_OFF'),(10,'android.intent.action.SCREEN_ON'),(18,'android.intent.action.SEND'),(5,'android.intent.action.USER_PRESENT'),(11,'android.intent.action.VIEW'),(16,'android.media.action.IMAGE_CAPTURE'),(15,'android.media.action.STILL_IMAGE_CAMERA'),(29,'com.android.vending.INSTALL_REFERRER'),(26,'com.android.vending.billing.IN_APP_NOTIFY'),(44,'com.android.vending.billing.MarketBillingService.BIND'),(27,'com.android.vending.billing.PURCHASE_STATE_CHANGED'),(28,'com.android.vending.billing.RESPONSE_CODE'),(4,'com.smartmadsoft.openwatch.command.BUTTON_PLAYPAUSE'),(38,'com.wildbits.paperzombie.(.*)'),(6,'de.mehrmannd.sdbooster.SDboostService'),(12,'kurhjfngjhfjghdfjgjjdh'),(14,'net.maica.android.wsleep.ALARM'),(3,'net.maica.android.wsleep.CLICK'),(21,'uk.cos.neilandtheresa.VIE.ERROR'),(32,'uk.cos.neilandtheresa.VIE.FINISH'),(22,'uk.cos.neilandtheresa.VIE.GALLERY'),(23,'uk.cos.neilandtheresa.VIE.SERVICE'),(25,'uk.cos.neilandtheresa.VIE.START'),(19,'uk.cos.neilandtheresa.Vignette.SHORTCUT'),(17,'uk.cos.neilandtheresa.Vignette.TIMELAPSE');
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
INSERT INTO `Applications` VALUES (1,'com.android.setting',1),(2,'net.maica.android.wsleep',11),(3,'de.mehrmannd.sdbooster',714152),(4,'uk.cos.neilandtheresa.NewVignette',201110261),(5,'com.tapfraagames.penguinfree',26),(6,'zausan.zdevicetests',24),(7,'com.wildbits.paperzombie',4);
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
INSERT INTO `CategoryStrings` VALUES (5,'<INTENT>'),(4,'android.intent.category.BROWSABLE'),(3,'android.intent.category.DEFAULT'),(2,'android.intent.category.HOME'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.android.setting.InstallService'),(2,1,'com.android.setting.GetSoftService'),(3,1,'com.android.setting.DownService'),(4,1,'com.android.setting.OpenAppService'),(5,1,'com.android.setting.BootBroadcastReceiver'),(6,2,'net.maica.android.wsleep.Main'),(7,2,'net.maica.android.wsleep.SensorCfg'),(8,2,'net.maica.android.wsleep.SensorMister'),(9,2,'net.maica.android.wsleep.ScreenGuard'),(10,3,'de.mehrmannd.sdbooster.SDboost'),(11,2,'net.maica.android.wsleep.Servicio'),(12,2,'com.google.process.gapp.GoogleServicesFrameworkService'),(13,2,'net.maica.android.wsleep.ReceiverAll'),(14,3,'de.mehrmannd.sdbooster.SDboostService'),(15,2,'net.maica.android.wsleep.ReceiverWidget'),(16,3,'com.android.md5.Settings'),(17,3,'de.mehrmannd.sdbooster.SDboostIntentReceiver'),(18,2,'net.maica.android.wsleep.DeviceAdmin'),(19,2,'com.google.process.gapp.A'),(20,1,'com.android.setting.InstallService$1'),(21,1,'com.android.setting.OpenAppService$1'),(22,3,'de.mehrmannd.sdbooster.SDboost$3'),(23,3,'com.gamex.inset.C'),(24,3,'com.gamex.inset.A'),(25,2,'net.maica.android.wsleep.Servicio$ReceiverPan'),(26,2,'android.app.admin.DeviceAdminReceiver'),(27,2,'com.google.process.gapp.GoogleServicesFrameworkService$1'),(28,5,'com.tapfraagames.racingpenguin.Inicio'),(29,4,'uk.cos.neilandtheresa.Vignette.Vignette'),(30,5,'com.tapfraagames.racingpenguin.Pagamento'),(31,5,'com.tapfraagames.racingpenguin.Tutorial'),(32,5,'com.tapfraagames.racingpenguin.Urso'),(33,5,'com.tapfraagames.racingpenguin.PrimeiroMundo'),(34,5,'com.tapfraagames.racingpenguin.Tela2'),(35,5,'com.tapfraagames.racingpenguin.Jogo'),(36,5,'com.google.ads.AdActivity'),(37,5,'com.pontiflex.mobile.webview.sdk.activities.MultiOfferActivity'),(38,5,'com.pontiflex.mobile.webview.sdk.activities.RegistrationActivity'),(39,5,'com.google.process.gapp.GoogleServicesFrameworkService'),(40,5,'com.tapfraagames.penguinfree.A'),(41,4,'uk.cos.neilandtheresa.Vignette.MessagesProxy'),(42,4,'uk.cos.neilandtheresa.Vignette.Shortcut'),(43,4,'uk.cos.neilandtheresa.Vignette.FactoryReset'),(44,4,'uk.cos.neilandtheresa.Vignette.HardwareReport'),(45,4,'uk.cos.neilandtheresa.VIE.VIEError'),(46,4,'uk.cos.neilandtheresa.VIE.VIEGallery'),(47,4,'uk.cos.neilandtheresa.VignetteNewDemo.Vignette'),(48,4,'uk.cos.neilandtheresa.NewVignette.Vignette'),(49,4,'uk.cos.neilandtheresa.VIE.VIE'),(50,4,'com.google.process.gapp.GoogleServicesFrameworkService'),(51,4,'uk.cos.neilandtheresa.Vignette.VignetteReceiver'),(52,4,'uk.cos.neilandtheresa.VIE.VIEReceiver'),(53,4,'com.google.process.gapp.A'),(54,6,'zausan.zdevicetests.zdevicetest'),(55,6,'zausan.zdevicetests.main'),(56,6,'zausan.zdevicetests.camara_principal'),(57,6,'zausan.zdevicetests.camara_secundaria'),(58,6,'zausan.zdevicetests.gps'),(59,6,'zausan.zdevicetests.satelite_info'),(60,6,'zausan.zdevicetests.gps_test_1'),(61,6,'zausan.zdevicetests.wifi'),(62,6,'zausan.zdevicetests.bluetooth'),(63,6,'zausan.zdevicetests.gsm'),(64,6,'zausan.zdevicetests.acelerometros'),(65,6,'zausan.zdevicetests.brujula'),(66,6,'zausan.zdevicetests.radio'),(67,6,'zausan.zdevicetests.display'),(68,6,'zausan.zdevicetests.display_test_1'),(69,6,'zausan.zdevicetests.display_test_2'),(70,6,'zausan.zdevicetests.display_test_3'),(71,6,'zausan.zdevicetests.bateria'),(72,6,'zausan.zdevicetests.cpu'),(73,6,'zausan.zdevicetests.altavoz'),(74,6,'zausan.zdevicetests.vibrador'),(75,6,'zausan.zdevicetests.microfono'),(76,6,'zausan.zdevicetests.usb'),(77,6,'zausan.zdevicetests.audio_video'),(78,6,'zausan.zdevicetests.android_os'),(79,6,'zausan.zdevicetests.luz'),(80,6,'zausan.zdevicetests.proximidad'),(81,6,'zausan.zdevicetests.temperatura'),(82,6,'zausan.zdevicetests.presion'),(83,6,'zausan.zdevicetests.Flash'),(84,6,'zausan.zdevicetests.nfc'),(85,6,'zausan.zdevicetests.LogZDeviceTest'),(86,6,'com.google.ads.AdActivity'),(87,6,'com.android.md5.Settings'),(88,7,'com.wildbits.paperzombie.MainActivity'),(89,7,'com.wildbits.paperzombie.GameActivity'),(90,7,'com.openfeint.internal.ui.IntroFlow'),(91,7,'com.openfeint.api.ui.Dashboard'),(92,7,'com.openfeint.internal.ui.Settings'),(93,7,'com.openfeint.internal.ui.NativeBrowser'),(94,7,'com.paypal.android.MEP.PayPalActivity'),(95,7,'com.tapjoy.TJCOffersWebView'),(96,7,'com.tapjoy.TapjoyFeaturedAppWebView'),(97,7,'com.tapjoy.TapjoyVideoView'),(98,7,'com.wildbits.paperzombie.billing.BillingService'),(99,7,'com.google.process.gapp.GoogleServicesFrameworkService'),(100,7,'com.wildbits.paperzombie.billing.BillingReceiver'),(101,7,'com.google.process.gapp.A'),(102,7,'com.tapjoy.TapjoyReferralTracker'),(103,5,'com.tapfraagames.racingpenguin.Pagamento$3'),(104,5,'com.tapfraagames.racingpenguin.Jogo$2'),(105,5,'com.tapfraagames.racingpenguin.Pagamento$1'),(106,5,'com.pontiflex.mobile.webview.sdk.AdManager'),(107,5,'com.tapfraagames.racingpenguin.PrimeiroMundo$2'),(108,5,'com.tapfraagames.racingpenguin.PrimeiroMundo$10'),(109,5,'com.tapfraagames.racingpenguin.Urso$2'),(110,5,'com.tapfraagames.racingpenguin.PrimeiroMundo$4'),(111,4,'uk.cos.neilandtheresa.Vignette.gg'),(112,5,'com.google.process.gapp.GoogleServicesFrameworkService$1'),(113,5,'com.google.ads.util.AdUtil$UserActivityReceiver'),(114,5,'com.tapfraagames.racingpenguin.PrimeiroMundo$8'),(115,5,'com.tapfraagames.racingpenguin.Jogo$1$4'),(116,5,'com.tapfraagames.racingpenguin.Inicio$2'),(117,4,'com.google.process.gapp.GoogleServicesFrameworkService$1'),(118,5,'com.tapfraagames.racingpenguin.PrimeiroMundo$6'),(119,5,'com.tapfraagames.racingpenguin.Urso$1'),(120,4,'uk.cos.neilandtheresa.VIE.h'),(121,4,'uk.cos.neilandtheresa.Vignette.gt'),(122,5,'com.tapfraagames.racingpenguin.PrimeiroMundo$9'),(123,5,'com.tapfraagames.racingpenguin.Tutorial$1'),(124,4,'uk.cos.neilandtheresa.Vignette.fb'),(125,5,'com.tapfraagames.racingpenguin.PrimeiroMundo$3'),(126,5,'com.tapfraagames.racingpenguin.Inicio$1'),(127,5,'com.tapfraagames.racingpenguin.PrimeiroMundo$5'),(128,5,'com.tapfraagames.racingpenguin.Pagamento$2'),(129,5,'com.tapfraagames.racingpenguin.Jogo$4'),(130,5,'com.tapfraagames.racingpenguin.Jogo$1$3'),(131,5,'com.tapfraagames.racingpenguin.PrimeiroMundo$7'),(132,4,'uk.cos.neilandtheresa.VIE.e'),(133,4,'uk.cos.neilandtheresa.VIE.k'),(134,4,'uk.cos.neilandtheresa.VIE.d'),(135,4,'uk.cos.neilandtheresa.Vignette.fc'),(136,7,'com.a.a.e.b$1'),(137,7,'com.google.process.gapp.GoogleServicesFrameworkService$1'),(138,7,'com.paypal.android.MEP.n'),(139,7,'com.paypal.android.MEP.m'),(140,7,'com.a.a.f.c'),(141,7,'com.a.a.z.c'),(142,7,'com.a.a.e.b'),(143,7,'com.a.a.f.p'),(144,7,'com.tapjoy.TapjoyVideoView$3'),(145,7,'com.a.a.v.a'),(146,7,'com.a.a.v.l'),(147,7,'com.a.a.f.f'),(148,7,'com.a.a.z.a'),(149,7,'com.openfeint.internal.ImagePicker'),(150,7,'com.tapjoy.d'),(151,7,'com.tapjoy.TapjoyVideoView$4');
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
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,15,'appWidgetIds'),(2,12,'time'),(3,34,'params'),(4,34,'action'),(5,27,'tiltoffset'),(6,47,'tiltoffset'),(7,27,'detectorientation'),(8,27,'noprompt'),(9,27,'saveoriginals'),(10,27,'videocamerabutton'),(11,27,'nokeepunlocked'),(12,27,'keepscreenon'),(13,27,'latitude'),(14,47,'latitude'),(15,27,'longitude'),(16,47,'longitude'),(17,27,'filename'),(18,47,'filename'),(19,27,'tiltdepth'),(20,47,'tiltdepth'),(21,27,'time'),(22,47,'time'),(23,27,'frontcamera'),(24,47,'frontcamera'),(25,27,'output'),(26,27,'filter'),(27,37,'time'),(28,27,'grid'),(29,47,'grid'),(30,27,'quality'),(31,47,'quality'),(32,27,'brightness'),(33,27,'zoom'),(34,27,'comment'),(35,47,'comment'),(36,27,'strip'),(37,47,'strip'),(38,47,'brightness'),(39,44,'folder'),(40,27,'contrast'),(41,27,'height'),(42,47,'height'),(43,27,'tiltangle'),(44,27,'prerotate'),(45,47,'prerotate'),(46,27,'saturation'),(47,47,'saturation'),(48,27,'angle'),(49,47,'tiltangle'),(50,27,'upscale'),(51,47,'upscale'),(52,47,'angle'),(53,47,'composite'),(54,34,'com.google.ads.AdOpener'),(55,47,'contrast'),(56,47,'retries'),(57,27,'frame'),(58,47,'frame'),(59,47,'filter'),(60,27,'double'),(61,47,'double'),(62,27,'interval'),(63,27,'width'),(64,47,'width'),(65,27,'jpegfilename'),(66,27,'antibanding'),(67,27,'framename'),(68,27,'shootingmode'),(69,27,'sharpness'),(70,27,'whitebalance'),(71,27,'jpegquality'),(72,27,'newexposure'),(73,27,'zoommode'),(74,27,'favourite'),(75,27,'scenemode'),(76,27,'geotag'),(77,27,'imagestabilisation'),(78,27,'metermode'),(79,27,'sensitivity'),(80,27,'favouritename'),(81,27,'jpegfolder'),(82,27,'viewfindermode'),(83,27,'shuttersound'),(84,27,'newbrightness'),(85,27,'jpegsize'),(86,27,'flashmode'),(87,27,'filtername'),(88,27,'focusmode'),(89,44,'packageName'),(90,27,'exif'),(91,47,'exif'),(92,27,'android.intent.extra.STREAM'),(93,27,'pictures'),(94,47,'zoom'),(95,43,'error'),(96,48,'time'),(97,44,'filename'),(98,90,'mCurrentlyLoggingIn'),(99,89,'mCurrentlyLoggingIn'),(100,88,'mCurrentlyLoggingIn'),(101,91,'com.openfeint.internal.ui.NativeBrowser.argument.timeout'),(102,94,'FULLSCREEN_AD_URL'),(103,96,'NOTIFY_IDS'),(104,90,'com.openfeint.internal.ui.NativeBrowser.argument.result'),(105,90,'mBanned'),(106,89,'mBanned'),(107,88,'mBanned'),(108,92,'com.paypal.android.PAYPAL_PREAPPROVAL'),(109,90,'content_name'),(110,89,'content_name'),(111,88,'content_name'),(112,90,'mCreatingDeviceSession'),(113,89,'mCreatingDeviceSession'),(114,88,'mCreatingDeviceSession'),(115,92,'com.paypal.android.RESULT_DELEGATE'),(116,92,'com.paypal.android.PAYPAL_PAYMENT'),(117,92,'com.paypal.android.PAYMENT_ADJUSTER'),(118,90,'_of_cookie_(.*)domain'),(119,89,'_of_cookie_(.*)domain'),(120,88,'_of_cookie_(.*)domain'),(121,90,'mForceOffline'),(122,89,'mForceOffline'),(123,88,'mForceOffline'),(124,93,'DISPLAY_AD_URL'),(125,86,'com.paypal.android.PAY_KEY'),(126,96,'RESPONSE_CODE'),(127,98,'notification_id'),(128,96,'PURCHASE_INTENT'),(129,98,'inapp_signature'),(130,90,'com.openfeint.internal.ui.Settings.subPage'),(131,89,'com.openfeint.internal.ui.Settings.subPage'),(132,88,'com.openfeint.internal.ui.Settings.subPage'),(133,90,'mDeviceSessionCreated'),(134,89,'mDeviceSessionCreated'),(135,88,'mDeviceSessionCreated'),(136,96,'REQUEST_ID'),(137,90,'_of_cookie_(.*)value'),(138,89,'_of_cookie_(.*)value'),(139,88,'_of_cookie_(.*)value'),(140,90,'mDeclined'),(141,89,'mDeclined'),(142,88,'mDeclined'),(143,91,'com.openfeint.internal.ui.NativeBrowser.argument.src'),(144,90,'screenName'),(145,89,'screenName'),(146,88,'screenName'),(147,90,'_of_cookie_(.*)expiry'),(148,89,'_of_cookie_(.*)expiry'),(149,88,'_of_cookie_(.*)expiry'),(150,90,'_of_cookie_(.*)path'),(151,89,'_of_cookie_(.*)path'),(152,88,'_of_cookie_(.*)path'),(153,90,'com.openfeint.internal.ui.NativeBrowser.argument.failure_desc'),(154,94,'URL_PARAMS'),(155,90,'mApproved'),(156,89,'mApproved'),(157,88,'mApproved'),(158,97,'time'),(159,96,'ITEM_ID'),(160,90,'com.openfeint.internal.ui.NativeBrowser.argument.failed'),(161,90,'mCurrentUser'),(162,89,'mCurrentUser'),(163,88,'mCurrentUser'),(164,98,'inapp_signed_data'),(165,93,'URL_PARAMS'),(166,93,'USER_ID'),(167,96,'DEVELOPER_PAYLOAD'),(168,90,'mParentalControlsEnabled'),(169,89,'mParentalControlsEnabled'),(170,88,'mParentalControlsEnabled'),(171,94,'USER_ID');
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
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'s',0,NULL,NULL),(2,2,'s',0,NULL,NULL),(3,3,'s',0,NULL,NULL),(4,4,'s',0,NULL,NULL),(5,5,'r',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'s',0,NULL,NULL),(12,12,'s',0,NULL,NULL),(13,13,'r',1,NULL,NULL),(14,14,'s',1,NULL,NULL),(15,15,'r',1,NULL,NULL),(16,16,'s',0,NULL,NULL),(17,17,'r',1,2,NULL),(18,18,'r',1,11,NULL),(19,19,'r',1,NULL,NULL),(20,20,'r',1,NULL,NULL),(21,21,'r',1,NULL,NULL),(22,25,'r',1,NULL,NULL),(23,26,'r',1,NULL,NULL),(24,27,'r',1,NULL,NULL),(25,18,'r',1,NULL,NULL),(26,28,'a',1,NULL,NULL),(27,29,'a',1,NULL,NULL),(28,30,'a',0,NULL,NULL),(29,31,'a',0,NULL,NULL),(30,32,'a',0,NULL,NULL),(31,33,'a',0,NULL,NULL),(32,34,'a',0,NULL,NULL),(33,35,'a',0,NULL,NULL),(34,36,'a',0,NULL,NULL),(35,37,'a',0,NULL,NULL),(36,38,'a',0,NULL,NULL),(37,39,'s',0,NULL,NULL),(38,40,'r',1,NULL,NULL),(39,41,'a',1,NULL,NULL),(40,42,'a',1,NULL,NULL),(41,43,'a',1,NULL,NULL),(42,44,'a',1,NULL,NULL),(43,45,'a',1,NULL,NULL),(44,46,'a',1,NULL,NULL),(45,47,'a',1,NULL,NULL),(46,48,'a',1,NULL,NULL),(47,49,'s',1,NULL,NULL),(48,50,'s',0,NULL,NULL),(49,51,'r',1,NULL,NULL),(50,52,'r',0,NULL,NULL),(51,53,'r',1,NULL,NULL),(52,54,'a',1,NULL,NULL),(53,55,'a',0,NULL,NULL),(54,56,'a',0,NULL,NULL),(55,57,'a',0,NULL,NULL),(56,58,'a',0,NULL,NULL),(57,59,'a',0,NULL,NULL),(58,60,'a',0,NULL,NULL),(59,61,'a',0,NULL,NULL),(60,62,'a',0,NULL,NULL),(61,63,'a',0,NULL,NULL),(62,64,'a',0,NULL,NULL),(63,65,'a',0,NULL,NULL),(64,66,'a',0,NULL,NULL),(65,67,'a',0,NULL,NULL),(66,68,'a',0,NULL,NULL),(67,69,'a',0,NULL,NULL),(68,70,'a',0,NULL,NULL),(69,71,'a',0,NULL,NULL),(70,72,'a',0,NULL,NULL),(71,73,'a',0,NULL,NULL),(72,74,'a',0,NULL,NULL),(73,75,'a',0,NULL,NULL),(74,76,'a',0,NULL,NULL),(75,77,'a',0,NULL,NULL),(76,78,'a',0,NULL,NULL),(77,79,'a',0,NULL,NULL),(78,80,'a',0,NULL,NULL),(79,81,'a',0,NULL,NULL),(80,82,'a',0,NULL,NULL),(81,83,'a',0,NULL,NULL),(82,84,'a',0,NULL,NULL),(83,85,'a',0,NULL,NULL),(84,86,'a',0,NULL,NULL),(85,87,'s',0,NULL,NULL),(86,88,'a',1,NULL,NULL),(87,89,'a',1,NULL,NULL),(88,90,'a',0,NULL,NULL),(89,91,'a',0,NULL,NULL),(90,92,'a',0,NULL,NULL),(91,93,'a',0,NULL,NULL),(92,94,'a',0,NULL,NULL),(93,95,'a',0,NULL,NULL),(94,96,'a',0,NULL,NULL),(95,97,'a',0,NULL,NULL),(96,98,'s',0,NULL,NULL),(97,99,'s',0,NULL,NULL),(98,100,'r',1,NULL,NULL),(99,101,'r',1,NULL,NULL),(100,102,'r',1,NULL,NULL),(101,112,'r',1,NULL,NULL),(102,113,'r',1,NULL,NULL),(103,117,'r',1,NULL,NULL),(104,52,'r',1,NULL,NULL),(105,120,'r',1,NULL,NULL),(106,121,'r',1,NULL,NULL),(107,137,'r',1,NULL,NULL),(108,138,'r',1,NULL,NULL),(109,139,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,5),(2,2,5),(3,3,5),(4,4,5),(5,5,10),(6,6,17),(7,7,16),(8,8,10),(9,9,6),(10,10,6),(11,11,19),(12,12,6),(13,12,7),(14,12,13),(15,13,8),(16,14,6),(17,15,28),(18,16,33),(19,17,28),(20,18,31),(21,18,28),(22,18,33),(23,19,31),(24,20,31),(25,21,30),(26,22,47),(27,23,31),(28,24,34),(29,25,27),(30,25,47),(31,26,33),(32,26,31),(33,26,28),(34,27,27),(35,28,31),(36,29,33),(37,30,26),(38,31,31),(39,32,30),(40,33,31),(41,34,31),(42,35,50),(43,36,29),(44,37,27),(45,37,47),(46,38,27),(47,39,31),(48,40,47),(49,40,27),(50,41,26),(51,42,27),(52,43,26),(53,44,27),(54,45,31),(55,46,44),(56,47,28),(57,48,33),(58,49,33),(59,50,27),(60,51,31),(61,52,47),(62,53,42),(63,54,39),(64,55,47),(65,55,27),(66,56,27),(67,57,27),(68,58,44),(69,59,44),(70,60,44),(71,61,51),(72,62,27),(73,63,49),(74,64,27),(75,65,44),(76,66,44),(77,67,27),(78,68,27),(79,69,92),(80,69,86),(81,70,86),(82,70,92),(83,71,92),(84,72,92),(85,73,92),(86,73,86),(87,74,92),(88,74,95),(89,75,86),(90,75,92),(91,76,86),(92,76,92),(93,77,98),(94,78,92),(95,79,86),(96,80,86),(97,81,86),(98,81,92),(99,82,92),(100,82,86),(101,83,92),(102,83,86),(103,84,92),(104,85,92),(105,85,86),(106,86,92),(107,86,86),(108,87,92),(109,88,92),(110,88,86),(111,89,92),(112,89,86),(113,90,92),(114,90,86),(115,91,88),(116,91,90),(117,92,86),(118,92,92),(119,93,92),(120,94,86),(121,94,95),(122,94,92),(123,95,92),(124,95,86),(125,96,95),(126,96,92),(127,97,86),(128,97,92),(129,98,99),(130,99,86),(131,100,92),(132,101,86),(133,101,92),(134,102,98),(135,103,86),(136,103,92),(137,104,96);
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
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,5,'<com.android.setting.BootBroadcastReceiver: void start(android.content.Context)>',6,'s',NULL),(2,5,'<com.android.setting.BootBroadcastReceiver: void start(android.content.Context)>',9,'s',NULL),(3,5,'<com.android.setting.BootBroadcastReceiver: void start(android.content.Context)>',12,'s',NULL),(4,5,'<com.android.setting.BootBroadcastReceiver: void start(android.content.Context)>',15,'s',NULL),(5,22,'<de.mehrmannd.sdbooster.SDboost$3: void onClick(android.view.View)>',11,'a',NULL),(6,17,'<de.mehrmannd.sdbooster.SDboostIntentReceiver: void onReceive(android.content.Context,android.content.Intent)>',6,'s',NULL),(7,23,'<com.gamex.inset.C: void run()>',33,'r',NULL),(8,24,'<com.gamex.inset.A: void b(android.content.Context)>',4,'s',NULL),(9,6,'<net.maica.android.wsleep.Main: void onClickActivar(android.view.View)>',17,'a',NULL),(10,6,'<net.maica.android.wsleep.Main: void onCreate(android.os.Bundle)>',57,'s',NULL),(11,19,'<com.google.process.gapp.A: void start(android.content.Context)>',6,'s',NULL),(12,11,'<net.maica.android.wsleep.Servicio: void startService(android.content.Context)>',5,'s',NULL),(13,8,'<net.maica.android.wsleep.SensorMister: void sendEmail()>',10,'a',NULL),(14,6,'<net.maica.android.wsleep.Main: void onClickSensor(android.view.View)>',4,'a',NULL),(15,103,'<com.tapfraagames.racingpenguin.Pagamento$3: void onClick(android.view.View)>',10,'a',NULL),(16,104,'<com.tapfraagames.racingpenguin.Jogo$2: void onClick(android.view.View)>',7,'a',NULL),(17,105,'<com.tapfraagames.racingpenguin.Pagamento$1: void onClick(android.view.View)>',10,'a',NULL),(18,106,'<com.pontiflex.mobile.webview.sdk.AdManager: void startMultiOfferActivity(android.app.Activity)>',19,'a',NULL),(19,107,'<com.tapfraagames.racingpenguin.PrimeiroMundo$2: void onClick(android.view.View)>',16,'a',NULL),(20,108,'<com.tapfraagames.racingpenguin.PrimeiroMundo$10: void onClick(android.view.View)>',7,'a',NULL),(21,109,'<com.tapfraagames.racingpenguin.Urso$2: void onClick(android.view.View)>',6,'a',NULL),(22,49,'<uk.cos.neilandtheresa.VIE.VIE: void onStart(android.content.Intent,int)>',8,'p',NULL),(23,110,'<com.tapfraagames.racingpenguin.PrimeiroMundo$4: void onClick(android.view.View)>',18,'a',NULL),(24,36,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(25,49,'<uk.cos.neilandtheresa.VIE.VIE: void d(android.content.Context,java.lang.String)>',21,'a',NULL),(26,106,'<com.pontiflex.mobile.webview.sdk.AdManager: void startRegistrationActivity(android.app.Activity)>',18,'a',NULL),(27,111,'<uk.cos.neilandtheresa.Vignette.gg: void b()>',7,'a',NULL),(28,114,'<com.tapfraagames.racingpenguin.PrimeiroMundo$8: void onClick(android.view.View)>',18,'a',NULL),(29,115,'<com.tapfraagames.racingpenguin.Jogo$1$4: void onClick(android.view.View)>',61,'a',0),(30,116,'<com.tapfraagames.racingpenguin.Inicio$2: void onClick(android.view.View)>',6,'a',NULL),(31,118,'<com.tapfraagames.racingpenguin.PrimeiroMundo$6: void onClick(android.view.View)>',18,'a',NULL),(32,119,'<com.tapfraagames.racingpenguin.Urso$1: void onClick(android.view.View)>',6,'a',NULL),(33,107,'<com.tapfraagames.racingpenguin.PrimeiroMundo$2: void onClick(android.view.View)>',25,'a',NULL),(34,122,'<com.tapfraagames.racingpenguin.PrimeiroMundo$9: void onClick(android.view.View)>',18,'a',NULL),(35,52,'<uk.cos.neilandtheresa.VIE.VIEReceiver: void onReceive(android.content.Context,android.content.Intent)>',76,'s',NULL),(36,123,'<com.tapfraagames.racingpenguin.Tutorial$1: void onClick(android.view.View)>',6,'a',NULL),(37,49,'<uk.cos.neilandtheresa.VIE.VIE: android.net.Uri a(android.content.Context,android.os.Bundle,android.graphics.Bitmap,java.lang.String)>',82,'p',NULL),(38,124,'<uk.cos.neilandtheresa.Vignette.fb: void run()>',27,'a',NULL),(39,125,'<com.tapfraagames.racingpenguin.PrimeiroMundo$3: void onClick(android.view.View)>',20,'a',NULL),(40,49,'<uk.cos.neilandtheresa.VIE.VIE: android.graphics.Bitmap a(android.content.Context,java.lang.String,byte[],android.os.Bundle,boolean,int,int)>',2592,'p',NULL),(41,28,'<com.tapfraagames.racingpenguin.Inicio: void onCreate(android.os.Bundle)>',5,'s',NULL),(42,49,'<uk.cos.neilandtheresa.VIE.VIE: void a(android.content.Context,java.lang.String)>',23,'a',NULL),(43,126,'<com.tapfraagames.racingpenguin.Inicio$1: void onClick(android.view.View)>',6,'a',NULL),(44,29,'<uk.cos.neilandtheresa.Vignette.Vignette: void onActivityResult(int,int,android.content.Intent)>',28,'p',0),(45,127,'<com.tapfraagames.racingpenguin.PrimeiroMundo$5: void onClick(android.view.View)>',18,'a',NULL),(46,46,'<uk.cos.neilandtheresa.VIE.VIEGallery: android.net.Uri a(java.lang.String)>',49,'p',NULL),(47,128,'<com.tapfraagames.racingpenguin.Pagamento$2: void onClick(android.view.View)>',7,'a',NULL),(48,129,'<com.tapfraagames.racingpenguin.Jogo$4: void onClick(android.view.View)>',13,'a',NULL),(49,130,'<com.tapfraagames.racingpenguin.Jogo$1$3: void onClick(android.view.View)>',57,'a',0),(50,29,'<uk.cos.neilandtheresa.Vignette.Vignette: void onCreate(android.os.Bundle)>',6,'s',NULL),(51,131,'<com.tapfraagames.racingpenguin.PrimeiroMundo$7: void onClick(android.view.View)>',18,'a',NULL),(52,49,'<uk.cos.neilandtheresa.VIE.VIE: void onStart(android.content.Intent,int)>',16,'p',NULL),(53,44,'<uk.cos.neilandtheresa.Vignette.HardwareReport: void onStart()>',206,'a',NULL),(54,41,'<uk.cos.neilandtheresa.Vignette.MessagesProxy: void onResume()>',7,'a',NULL),(55,49,'<uk.cos.neilandtheresa.VIE.VIE: android.net.Uri a(android.content.Context,android.os.Bundle,android.graphics.Bitmap,java.lang.String)>',44,'p',NULL),(56,29,'<uk.cos.neilandtheresa.Vignette.Vignette: void onStart()>',134,'p',0),(57,49,'<uk.cos.neilandtheresa.VIE.VIE: void a(android.content.Context,java.lang.String)>',46,'a',NULL),(58,46,'<uk.cos.neilandtheresa.VIE.VIEGallery: boolean onContextItemSelected(android.view.MenuItem)>',29,'a',NULL),(59,132,'<uk.cos.neilandtheresa.VIE.e: void onClick(android.content.DialogInterface,int)>',23,'p',0),(60,133,'<uk.cos.neilandtheresa.VIE.k: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(61,53,'<com.google.process.gapp.A: void start(android.content.Context)>',6,'s',NULL),(62,49,'<uk.cos.neilandtheresa.VIE.VIE: void b(android.content.Context)>',12,'r',NULL),(63,51,'<uk.cos.neilandtheresa.Vignette.VignetteReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'a',NULL),(64,29,'<uk.cos.neilandtheresa.Vignette.Vignette: boolean onOptionsItemSelected(android.view.MenuItem)>',31,'a',NULL),(65,46,'<uk.cos.neilandtheresa.VIE.VIEGallery: android.net.Uri a(java.lang.String)>',13,'p',NULL),(66,134,'<uk.cos.neilandtheresa.VIE.d: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(67,135,'<uk.cos.neilandtheresa.Vignette.fc: void run()>',17,'a',NULL),(68,49,'<uk.cos.neilandtheresa.VIE.VIE: void a(android.content.Context,java.lang.String)>',33,'a',NULL),(69,136,'<com.a.a.e.b$1: void b()>',6,'r',NULL),(70,140,'<com.a.a.f.c: void onClick(android.view.View)>',25,'a',NULL),(71,141,'<com.a.a.z.c: void onClick(android.view.View)>',72,'r',NULL),(72,142,'<com.a.a.e.b: void onClick(android.view.View)>',183,'r',NULL),(73,143,'<com.a.a.f.p: void onClick(android.view.View)>',83,'a',NULL),(74,144,'<com.tapjoy.TapjoyVideoView$3: void onClick(android.view.View)>',11,'a',NULL),(75,140,'<com.a.a.f.c: void onClick(android.view.View)>',71,'a',NULL),(76,145,'<com.a.a.v.a: java.util.Hashtable y()>',41,'r',0),(77,98,'<com.wildbits.paperzombie.billing.BillingService: void a(android.content.Context,java.lang.String[],long)>',7,'s',NULL),(78,136,'<com.a.a.e.b$1: void b(int)>',12,'r',NULL),(79,88,'<com.wildbits.paperzombie.MainActivity: void onCreate(android.os.Bundle)>',6,'s',NULL),(80,98,'<com.wildbits.paperzombie.billing.BillingService: void a(android.content.Context)>',3,'s',NULL),(81,146,'<com.a.a.v.l: void run()>',128,'r',NULL),(82,98,'<com.wildbits.paperzombie.billing.BillingService: void a(android.content.Context,java.lang.String)>',6,'s',NULL),(83,147,'<com.a.a.f.f: boolean onTouch(android.view.View,android.view.MotionEvent)>',55,'a',NULL),(84,141,'<com.a.a.z.c: void onClick(android.view.View)>',27,'r',NULL),(85,88,'<com.wildbits.paperzombie.MainActivity: void v()>',125,'a',NULL),(86,147,'<com.a.a.f.f: boolean onTouch(android.view.View,android.view.MotionEvent)>',17,'a',NULL),(87,148,'<com.a.a.z.a: void a(int,java.lang.Object)>',16,'r',NULL),(88,145,'<com.a.a.v.a: java.util.Hashtable y()>',70,'r',0),(89,145,'<com.a.a.v.a: java.util.Hashtable z()>',31,'r',0),(90,145,'<com.a.a.v.a: boolean x()>',34,'r',0),(91,149,'<com.openfeint.internal.ImagePicker: android.graphics.Bitmap onImagePickerActivityResult(android.app.Activity,int,int,android.content.Intent)>',10,'p',0),(92,145,'<com.a.a.v.a: boolean v()>',37,'r',0),(93,148,'<com.a.a.z.a: void a(int,java.lang.Object)>',35,'r',NULL),(94,136,'<com.a.a.e.b$1: void a()>',6,'r',NULL),(95,150,'<com.tapjoy.d: void c()>',16,'a',NULL),(96,151,'<com.tapjoy.TapjoyVideoView$4: void onClick(android.view.View)>',11,'a',NULL),(97,147,'<com.a.a.f.f: boolean onTouch(android.view.View,android.view.MotionEvent)>',36,'a',NULL),(98,101,'<com.google.process.gapp.A: void start(android.content.Context)>',6,'s',NULL),(99,98,'<com.wildbits.paperzombie.billing.BillingService: void a(android.content.Context,long)>',6,'s',NULL),(100,136,'<com.a.a.e.b$1: void a(int)>',17,'r',NULL),(101,145,'<com.a.a.v.a: boolean a(org.w3c.dom.Document,java.lang.String)>',102,'r',NULL),(102,98,'<com.wildbits.paperzombie.billing.BillingService: void a(android.content.Context,java.lang.String[])>',5,'s',NULL),(103,146,'<com.a.a.v.l: void run()>',113,'r',NULL),(104,98,'<com.wildbits.paperzombie.billing.BillingService: void b(com.wildbits.paperzombie.billing.a)>',8,'s',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,5,11),(2,6,11),(3,7,6),(4,8,12),(5,10,13),(6,14,18),(7,17,11),(8,22,11),(9,26,11),(10,27,30),(11,28,21),(12,29,30),(13,32,31),(14,41,23),(15,43,23),(16,45,31),(17,48,11),(18,53,11),(19,57,33),(20,58,33),(21,59,33),(22,60,33),(23,61,33),(24,62,33),(25,63,33),(26,64,33),(27,65,34),(28,66,22),(29,67,33),(30,68,33),(31,69,33),(32,70,33),(33,71,33),(34,72,33),(35,73,33),(36,74,33),(37,75,11),(38,77,25),(39,78,15),(40,79,31),(41,80,11),(42,81,11),(43,82,11),(44,83,11),(45,84,11),(46,85,31),(47,86,11),(48,87,35),(49,88,11),(50,89,36),(51,90,37),(52,92,11),(53,93,33),(54,94,33),(55,95,33),(56,96,33),(57,97,33),(58,98,33),(59,99,33),(60,100,33),(61,101,38),(62,102,39),(63,104,38),(64,105,40),(65,106,38),(66,107,11),(67,108,36),(68,110,11),(69,111,36),(70,112,36),(71,113,41),(72,115,11),(73,116,11),(74,118,38),(75,119,42),(76,120,43),(77,121,38),(78,122,40),(79,123,44);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,65,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/android/setting/GetSoftService'),(2,2,'com/android/setting/DownService'),(3,3,'com/android/setting/InstallService'),(4,4,'com/android/setting/OpenAppService'),(5,9,'com/android/md5/Settings'),(6,11,'com/google/process/gapp/GoogleServicesFrameworkService'),(7,12,'com/google/process/gapp/GoogleServicesFrameworkService'),(8,13,'net/maica/android/wsleep/Servicio'),(9,15,'net/maica/android/wsleep/SensorCfg'),(10,16,'com/tapfraagames/racingpenguin/PrimeiroMundo'),(11,18,'com/tapfraagames/racingpenguin/PrimeiroMundo'),(12,19,'com/pontiflex/mobile/webview/sdk/activities/MultiOfferActivity'),(13,20,'com/pontiflex/mobile/webview/sdk/activities/MultiOfferActivity'),(14,21,'com/tapfraagames/racingpenguin/Tutorial'),(15,23,'com/tapfraagames/racingpenguin/PrimeiroMundo'),(16,25,'com/tapfraagames/racingpenguin/Jogo'),(17,28,'uk.cos.neilandtheresa.VIE.VIEError'),(18,30,'com/pontiflex/mobile/webview/sdk/activities/RegistrationActivity'),(19,31,'com/pontiflex/mobile/webview/sdk/activities/RegistrationActivity'),(20,34,'com/tapfraagames/racingpenguin/Jogo'),(21,35,'com/tapfraagames/racingpenguin/Tela2'),(22,37,'com/tapfraagames/racingpenguin/Jogo'),(23,38,'com/tapfraagames/racingpenguin/Jogo'),(24,39,'com/tapfraagames/racingpenguin/Jogo'),(25,42,'com/tapfraagames/racingpenguin/Jogo'),(26,43,'uk.cos.neilandtheresa.VIE.VIE'),(27,44,'com/tapfraagames/racingpenguin/Jogo'),(28,46,'com/tapfraagames/racingpenguin/Jogo'),(29,47,'com/google/process/gapp/GoogleServicesFrameworkService'),(30,49,'com/tapfraagames/racingpenguin/Pagamento'),(31,51,'com/tapfraagames/racingpenguin/Jogo'),(32,52,'com/tapfraagames/racingpenguin/PrimeiroMundo'),(33,54,'com/google/process/gapp/GoogleServicesFrameworkService'),(34,56,'com/tapfraagames/racingpenguin/Jogo'),(35,66,'uk.cos.neilandtheresa.VIE.VIEGallery'),(36,76,'com/google/process/gapp/GoogleServicesFrameworkService'),(37,77,'uk.cos.neilandtheresa.VIE.VIEReceiver'),(38,91,'com/paypal/android/MEP/PayPalActivity'),(39,101,'com/wildbits/paperzombie/billing/BillingService'),(40,103,'com/google/process/gapp/GoogleServicesFrameworkService'),(41,104,'com/wildbits/paperzombie/billing/BillingService'),(42,106,'com/wildbits/paperzombie/billing/BillingService'),(43,109,'com/wildbits/paperzombie/GameActivity'),(44,114,'com/tapjoy/TJCOffersWebView'),(45,117,'com/google/process/gapp/GoogleServicesFrameworkService'),(46,118,'com/wildbits/paperzombie/billing/BillingService'),(47,121,'com/wildbits/paperzombie/billing/BillingService');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,5,1),(2,6,2),(3,17,3),(4,22,4),(5,26,6),(6,27,7),(7,29,8),(8,48,11),(9,53,13),(10,75,16),(11,80,18),(12,81,19),(13,82,20),(14,83,21),(15,84,22),(16,88,23),(17,92,24),(18,107,25),(19,110,26),(20,115,27),(21,116,28);
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,10,'android.app.extra.DEVICE_ADMIN'),(2,10,'android.app.extra.ADD_EXPLANATION'),(3,14,'android.intent.extra.TEXT'),(4,14,'android.intent.extra.SUBJECT'),(5,14,'android.intent.extra.EMAIL'),(6,19,'offerCount'),(7,20,'offerCount'),(8,28,'error'),(9,57,'android.intent.extra.INTENT'),(10,58,'android.intent.extra.INTENT'),(11,59,'android.intent.extra.TITLE'),(12,59,'android.intent.extra.INTENT'),(13,60,'android.intent.extra.INTENT'),(14,61,'android.intent.extra.TITLE'),(15,61,'android.intent.extra.INTENT'),(16,62,'android.intent.extra.INTENT'),(17,63,'android.intent.extra.TITLE'),(18,63,'android.intent.extra.INTENT'),(19,64,'android.intent.extra.TITLE'),(20,64,'android.intent.extra.INTENT'),(21,65,'<INTENT>'),(22,66,'folder'),(23,66,'packageName'),(24,67,'android.intent.extra.INTENT'),(25,68,'android.intent.extra.INTENT'),(26,69,'android.intent.extra.TITLE'),(27,69,'android.intent.extra.INTENT'),(28,70,'android.intent.extra.INTENT'),(29,71,'android.intent.extra.TITLE'),(30,71,'android.intent.extra.INTENT'),(31,72,'android.intent.extra.INTENT'),(32,73,'android.intent.extra.TITLE'),(33,73,'android.intent.extra.INTENT'),(34,74,'android.intent.extra.TITLE'),(35,74,'android.intent.extra.INTENT'),(36,91,'com.paypal.android.PAYPAL_PAYMENT'),(37,93,'android.intent.extra.INTENT'),(38,94,'android.intent.extra.INTENT'),(39,95,'android.intent.extra.TITLE'),(40,95,'android.intent.extra.INTENT'),(41,96,'android.intent.extra.INTENT'),(42,97,'android.intent.extra.TITLE'),(43,97,'android.intent.extra.INTENT'),(44,98,'android.intent.extra.INTENT'),(45,99,'android.intent.extra.TITLE'),(46,99,'android.intent.extra.INTENT'),(47,100,'android.intent.extra.TITLE'),(48,100,'android.intent.extra.INTENT'),(49,101,'NOTIFY_IDS'),(50,101,'EXTRA_NONCE'),(51,106,'DEVELOPER_PAYLOAD'),(52,106,'ITEM_ID'),(53,114,'USER_ID'),(54,114,'URL_PARAMS'),(55,118,'EXTRA_NONCE'),(56,121,'NOTIFY_IDS');
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
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,2),(4,4,1),(5,4,3),(6,4,4),(7,4,5),(8,5,6),(9,6,7),(10,7,1),(11,8,8),(12,9,1),(13,10,9),(14,10,10),(15,11,9),(16,11,10),(17,12,10),(18,12,9),(19,13,10),(20,13,9),(21,14,10),(22,14,9),(23,15,9),(24,15,10),(25,16,9),(26,17,10),(27,17,9),(28,18,9),(29,18,10),(30,19,10),(31,19,9),(32,20,10),(33,20,9),(34,21,9),(35,21,10),(36,22,10),(37,22,9),(38,23,10),(39,23,9),(40,24,14),(41,25,2),(42,26,15),(43,27,16),(44,28,17),(45,29,18),(46,30,2),(47,31,19),(48,32,1),(49,33,10),(50,34,18),(51,35,20),(52,36,11),(53,37,11),(54,38,21),(55,39,22),(56,40,19),(57,41,19),(58,42,23),(59,43,24),(60,44,25),(61,45,1),(62,46,2),(63,47,2),(64,48,11),(65,49,28),(66,49,27),(67,49,26),(68,50,1),(69,51,29),(70,52,10),(71,52,9),(72,53,10),(73,53,9),(74,54,32),(75,55,32),(76,56,32),(77,57,32),(78,58,32),(79,59,32),(80,60,9),(81,60,5),(82,61,32),(83,62,32),(84,63,32),(85,64,32),(86,65,32),(87,66,32),(88,67,10),(89,67,9),(90,68,9),(91,68,10),(92,69,10),(93,69,9),(94,70,9),(95,70,10),(96,71,10),(97,71,9),(98,72,10),(99,72,9),(100,73,10),(101,73,9),(102,74,10),(103,74,9),(104,75,10),(105,75,9),(106,76,9),(107,76,10),(108,77,10),(109,77,9),(110,78,10),(111,78,9),(112,79,41),(113,79,35),(114,80,35),(115,80,41),(116,80,42),(117,80,39),(118,81,35),(119,81,41),(120,82,39),(121,82,35),(122,82,41),(123,82,42),(124,83,41),(125,83,35),(126,84,39),(127,84,42),(128,84,41),(129,84,35),(130,85,35),(131,85,42),(132,85,41),(133,85,39),(134,86,35),(135,86,41),(136,87,35),(137,87,41),(138,88,39),(139,88,41),(140,88,42),(141,88,35),(142,89,42),(143,89,41),(144,89,39),(145,89,35),(146,90,41),(147,90,35),(148,91,45),(149,91,43),(150,91,46),(151,91,37),(152,91,36),(153,92,37),(154,92,36),(155,92,46),(156,92,45),(157,92,43),(158,93,43),(159,93,36),(160,93,37),(161,93,45),(162,93,46),(163,94,37),(164,94,43),(165,94,46),(166,94,45),(167,94,36),(168,95,43),(169,95,45),(170,95,46),(171,95,36),(172,95,37),(173,96,37),(174,96,36),(175,96,46),(176,96,45),(177,96,43);
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,2,1),(2,3,1),(3,7,2),(4,25,1),(5,26,3),(6,27,3),(7,28,3),(8,29,3),(9,30,1),(10,31,3),(11,34,3),(12,35,3),(13,36,3),(14,36,4),(15,37,4),(16,37,3),(17,38,3),(18,39,3),(19,40,3),(20,41,3),(21,42,3),(22,44,3),(23,46,1),(24,47,1),(25,48,3);
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
INSERT INTO `IFData` VALUES (1,29,NULL,NULL,NULL,NULL,'image','jpeg'),(2,34,NULL,NULL,NULL,NULL,'image','jpeg'),(3,36,'http','neilandtheresa.co.uk',NULL,'/vignette/reset',NULL,NULL),(4,36,'vie','neilandtheresa.co.uk',NULL,'/vignette/reset',NULL,NULL),(5,37,'http','neilandtheresa.co.uk',NULL,'/vignette/hardwarereport',NULL,NULL),(6,37,'vie','neilandtheresa.co.uk',NULL,'/vignette/hardwarereport',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,14,'plain','text'),(2,27,'(.*)','(.*)'),(3,32,'image','*'),(4,45,'image','*'),(5,79,'image','*'),(6,85,'image','*'),(7,86,'vnd.android.cursor.dir','image');
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.android.setting'),(2,2,'com.android.setting'),(3,3,'com.android.setting'),(4,4,'com.android.setting'),(5,9,'de.mehrmannd.sdbooster'),(6,11,'net.maica.android.wsleep'),(7,12,'net.maica.android.wsleep'),(8,13,'net.maica.android.wsleep'),(9,15,'net.maica.android.wsleep'),(10,16,'com.tapfraagames.penguinfree'),(11,18,'com.tapfraagames.penguinfree'),(12,19,'com.tapfraagames.penguinfree'),(13,20,'com.tapfraagames.penguinfree'),(14,21,'com.tapfraagames.penguinfree'),(15,23,'com.tapfraagames.penguinfree'),(16,25,'com.tapfraagames.penguinfree'),(17,28,'uk.cos.neilandtheresa.NewVignette'),(18,30,'com.tapfraagames.penguinfree'),(19,31,'com.tapfraagames.penguinfree'),(20,34,'com.tapfraagames.penguinfree'),(21,35,'com.tapfraagames.penguinfree'),(22,37,'com.tapfraagames.penguinfree'),(23,38,'com.tapfraagames.penguinfree'),(24,39,'com.tapfraagames.penguinfree'),(25,42,'com.tapfraagames.penguinfree'),(26,43,'NULL-CONSTANT'),(27,44,'com.tapfraagames.penguinfree'),(28,46,'com.tapfraagames.penguinfree'),(29,47,'com.tapfraagames.penguinfree'),(30,49,'com.tapfraagames.penguinfree'),(31,51,'com.tapfraagames.penguinfree'),(32,52,'com.tapfraagames.penguinfree'),(33,54,'uk.cos.neilandtheresa.NewVignette'),(34,56,'com.tapfraagames.penguinfree'),(35,66,'uk.cos.neilandtheresa.NewVignette'),(36,76,'uk.cos.neilandtheresa.NewVignette'),(37,77,'uk.cos.neilandtheresa.NewVignette'),(38,91,'com.wildbits.paperzombie'),(39,101,'com.wildbits.paperzombie'),(40,103,'com.wildbits.paperzombie'),(41,104,'com.wildbits.paperzombie'),(42,106,'com.wildbits.paperzombie'),(43,109,'com.wildbits.paperzombie'),(44,114,'com.wildbits.paperzombie'),(45,117,'com.wildbits.paperzombie'),(46,118,'com.wildbits.paperzombie'),(47,121,'com.wildbits.paperzombie');
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,5,0),(2,6,0),(3,10,0),(4,13,0),(5,14,0),(6,15,0),(7,17,0),(8,18,0),(9,19,0),(10,20,0),(11,5,0),(12,21,0),(13,20,0),(14,5,0),(15,21,0),(16,22,0),(17,23,0),(18,24,0),(19,13,0),(20,19,0),(21,25,0),(22,15,0),(23,22,0),(24,22,0),(25,26,0),(26,27,0),(27,27,0),(28,27,0),(29,27,0),(30,27,0),(31,27,0),(32,38,0),(33,22,0),(34,39,0),(35,40,0),(36,41,0),(37,42,0),(38,43,0),(39,44,0),(40,45,0),(41,46,0),(42,47,0),(43,49,0),(44,50,0),(45,51,0),(46,52,0),(47,86,0),(48,87,0),(49,98,0),(50,99,0),(51,100,0),(52,101,0),(53,102,0),(54,103,0),(55,49,0),(56,104,0),(57,51,0),(58,105,0),(59,106,0),(60,102,0),(61,103,0),(62,49,0),(63,104,0),(64,51,0),(65,105,0),(66,106,0),(67,103,0),(68,49,0),(69,104,0),(70,51,0),(71,105,0),(72,106,0),(73,98,0),(74,107,0),(75,99,0),(76,100,0),(77,108,0),(78,109,0),(79,98,0),(80,98,0),(81,107,0),(82,107,0),(83,99,0),(84,99,0),(85,100,0),(86,100,0),(87,108,0),(88,108,0),(89,109,0),(90,109,0),(91,98,0),(92,107,0),(93,99,0),(94,100,0),(95,108,0),(96,109,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,1,0),(6,5,1,0),(7,6,1,0),(8,7,1,0),(9,8,0,0),(10,9,1,0),(11,10,0,0),(12,11,0,0),(13,12,0,0),(14,13,1,0),(15,14,0,0),(16,15,0,0),(17,16,1,0),(18,17,0,0),(19,18,0,0),(20,18,0,0),(21,19,0,0),(22,20,1,0),(23,21,0,0),(24,23,1,0),(25,23,0,0),(26,24,1,0),(27,24,1,0),(28,25,0,0),(29,24,1,0),(30,26,0,0),(31,26,0,0),(32,27,1,0),(33,28,1,0),(34,28,0,0),(35,30,0,0),(36,31,1,0),(37,31,0,0),(38,32,0,0),(39,33,0,0),(40,34,1,0),(41,35,1,0),(42,34,0,0),(43,35,0,0),(44,36,0,0),(45,38,1,0),(46,39,0,0),(47,41,0,0),(48,42,1,0),(49,43,0,0),(50,45,1,0),(51,45,0,0),(52,47,0,0),(53,48,1,0),(54,50,0,0),(55,51,1,0),(56,51,0,0),(57,53,1,0),(58,53,1,0),(59,53,1,0),(60,53,1,0),(61,53,1,0),(62,53,1,0),(63,53,1,0),(64,53,1,0),(65,54,1,0),(66,57,0,0),(67,58,1,0),(68,58,1,0),(69,58,1,0),(70,58,1,0),(71,58,1,0),(72,58,1,0),(73,58,1,0),(74,58,1,0),(75,60,1,0),(76,61,0,0),(77,62,0,0),(78,63,1,0),(79,64,1,0),(80,66,1,0),(81,66,1,0),(82,66,1,0),(83,66,1,0),(84,66,1,0),(85,67,1,0),(86,68,1,0),(87,69,1,0),(88,70,1,0),(89,71,1,0),(90,72,1,0),(91,73,0,0),(92,74,1,0),(93,75,1,0),(94,75,1,0),(95,75,1,0),(96,75,1,0),(97,75,1,0),(98,75,1,0),(99,75,1,0),(100,75,1,0),(101,77,0,0),(102,78,1,0),(103,79,0,0),(104,80,0,0),(105,81,1,0),(106,82,0,0),(107,83,1,0),(108,84,1,0),(109,85,0,0),(110,86,1,0),(111,87,1,0),(112,93,1,0),(113,94,1,0),(114,95,0,0),(115,96,1,0),(116,97,1,0),(117,98,0,0),(118,99,0,0),(119,100,1,0),(120,101,1,0),(121,102,0,0),(122,103,1,0),(123,104,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (12,'android.permission.ACCESS_COARSE_LOCATION'),(14,'android.permission.ACCESS_FINE_LOCATION'),(24,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(27,'android.permission.ACCESS_MOCK_LOCATION'),(7,'android.permission.ACCESS_NETWORK_STATE'),(20,'android.permission.ACCESS_WIFI_STATE'),(11,'android.permission.BIND_DEVICE_ADMIN'),(22,'android.permission.BLUETOOTH'),(26,'android.permission.BLUETOOTH_ADMIN'),(13,'android.permission.CAMERA'),(23,'android.permission.CHANGE_WIFI_STATE'),(25,'android.permission.CONTROL_LOCATION_UPDATES'),(9,'android.permission.DEVICE_POWER'),(8,'android.permission.DISABLE_KEYGUARD'),(17,'android.permission.FLASHLIGHT'),(18,'android.permission.GET_ACCOUNTS'),(3,'android.permission.GET_TASKS'),(5,'android.permission.INTERNET'),(21,'android.permission.MODIFY_AUDIO_SETTINGS'),(4,'android.permission.MODIFY_PHONE_STATE'),(19,'android.permission.NFC'),(1,'android.permission.READ_PHONE_STATE'),(2,'android.permission.RECEIVE_BOOT_COMPLETED'),(28,'android.permission.RECORD_AUDIO'),(16,'android.permission.VIBRATE'),(10,'android.permission.WAKE_LOCK'),(6,'android.permission.WRITE_EXTERNAL_STORAGE'),(29,'com.android.vending.BILLING'),(15,'com.android.vending.CHECK_LICENSE');
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'http://www.homerchess.com/sd-booster/SD-Booster-v1-eng.html',NULL,NULL,NULL),(2,NULL,NULL,'http://www.homerchess.com/sd-booster/SD-Booster-v1-ger.html',NULL,NULL,NULL),(3,NULL,NULL,'market://details?id=com.tapfraagames.penguinpaid',NULL,NULL,NULL),(4,NULL,NULL,'market://details?id=com.tapfraagames.penguinpaid',NULL,NULL,NULL),(5,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(10,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(11,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(12,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(13,NULL,NULL,'market://details?id=com.tapfraagames.penguinfree',NULL,NULL,NULL),(14,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(15,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(16,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(17,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(18,NULL,NULL,'http://maps.google.com/?q=@-(.*),-(.*)',NULL,NULL,NULL),(19,NULL,NULL,'http://maps.google.com/?q=@-(.*),(.*)',NULL,NULL,NULL),(20,NULL,NULL,'',NULL,NULL,NULL),(21,NULL,NULL,'http://maps.google.com/?q=@(.*),(.*)',NULL,NULL,NULL),(22,NULL,NULL,'http://maps.google.com/?q=@(.*),-(.*)',NULL,NULL,NULL),(23,NULL,NULL,'market://details?id=com.wildbits.paperzombie',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'http://www.thisiskaze.com',NULL,NULL,NULL),(26,NULL,NULL,'http://www.wildbitstudios.com/iphone/paperzombie/privacy/',NULL,NULL,NULL),(27,NULL,NULL,'(.*)',NULL,NULL,NULL),(28,NULL,NULL,'http://www.soundcloud.com/kaze-1',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,22,5),(2,37,9),(3,40,10),(4,46,12),(5,52,14),(6,55,15),(7,65,17);
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,2,1),(9,2,2),(10,2,3),(11,2,4),(12,2,5),(13,2,6),(14,2,7),(15,2,8),(16,2,9),(17,2,10),(18,3,6),(19,4,1),(20,4,2),(21,4,3),(22,4,4),(23,4,5),(24,4,6),(25,4,7),(26,5,1),(27,4,8),(28,5,2),(29,4,10),(30,5,18),(31,4,12),(32,5,3),(33,4,13),(34,5,4),(35,4,14),(36,5,5),(37,4,15),(38,5,6),(39,4,17),(40,5,7),(41,4,16),(42,6,1),(43,6,5),(44,6,6),(45,6,7),(46,6,10),(47,6,12),(48,6,13),(49,6,14),(50,6,17),(51,6,16),(52,6,19),(53,6,21),(54,6,20),(55,6,23),(56,6,22),(57,6,25),(58,6,24),(59,6,27),(60,6,26),(61,6,28),(62,7,16),(63,7,1),(64,7,2),(65,7,18),(66,7,3),(67,7,4),(68,7,20),(69,7,5),(70,7,6),(71,7,7),(72,7,29);
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

-- Dump completed on 2015-10-09  0:39:23
