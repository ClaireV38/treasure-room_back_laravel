-- MySQL dump 10.13  Distrib 8.0.25, for Linux (x86_64)
--
-- Host: localhost    Database: treasure-room-laravel
-- ------------------------------------------------------
-- Server version	8.0.25-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `assets`
--

DROP TABLE IF EXISTS `assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assets` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int unsigned DEFAULT NULL,
  `owner_id` int unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `place_of_discovery` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(10,2) DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `assets_category_id_foreign` (`category_id`),
  KEY `assets_owner_id_foreign` (`owner_id`),
  CONSTRAINT `assets_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `assets_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assets`
--

LOCK TABLES `assets` WRITE;
/*!40000 ALTER TABLE `assets` DISABLE KEYS */;
INSERT INTO `assets` VALUES (35,2,2,'Aut consequatur exercitationem.','Voluptatem odit provident.',153745.91,'https://cdn.pixabay.com/photo/2018/05/17/23/45/sculpture-3410011__340.jpg',NULL),(36,2,7,'Et ut.','Laboriosam non hic provident provident.',8.44,'https://cdn.pixabay.com/photo/2018/10/11/17/38/angel-3740393__340.jpg',NULL),(37,2,2,'At et.','Tempore et nisi.',7915.53,'https://cdn.pixabay.com/photo/2018/05/17/23/45/sculpture-3410011__340.jpg',NULL),(38,2,4,'Qui qui ipsum.','Mollitia eos voluptatem sit.',587.28,'https://cdn.pixabay.com/photo/2016/11/19/21/04/angel-1841177__340.jpg',NULL),(39,2,3,'Fugiat tempora.','Iusto rerum dolores.',426.87,'https://cdn.pixabay.com/photo/2017/06/14/06/51/angel-2401263__340.jpg',NULL),(40,2,2,'Quia facilis possimus.','Architecto autem sint amet.',4.68,'https://cdn.pixabay.com/photo/2018/10/11/17/38/angel-3740393__340.jpg',NULL),(41,2,2,'Quo vitae.','Mollitia in sunt autem id.',11.71,'https://cdn.pixabay.com/photo/2013/10/22/19/54/buddha-199462__340.jpg',NULL),(42,2,8,'Non natus consequatur.','Minus minima autem.',670693.97,'https://cdn.pixabay.com/photo/2018/10/11/17/38/angel-3740393__340.jpg',NULL),(43,3,8,'Quisquam id.','Non laudantium culpa velit.',1870708.41,'https://cdn.pixabay.com/photo/2017/12/17/14/12/bitcoin-3024279__340.jpg',NULL),(45,3,4,'Repellat error.','Sed ullam repellendus.',45717.37,'https://cdn.pixabay.com/photo/2015/01/19/23/18/money-605075__340.jpg',NULL),(46,3,3,'Ipsam consequatur quae.','Et nobis quae voluptas.',1350028.26,'https://cdn.pixabay.com/photo/2018/09/23/18/38/coins-3698092__340.jpg',NULL),(47,3,7,'Dicta autem.','Sapiente dolor libero aliquid.',18.33,'https://cdn.pixabay.com/photo/2016/08/31/10/43/gold-1633073__340.jpg',NULL),(48,3,6,'Quo nihil necessitatibus.','Quam et et numquam.',1486043.83,'https://cdn.pixabay.com/photo/2017/12/17/14/12/bitcoin-3024279__340.jpg',NULL),(56,NULL,NULL,'nouvel essai photo','pixabay',NULL,'https://cdn.pixabay.com/photo/2021/04/28/23/58/ice-6215207__340.jpg','2021-05-12'),(59,NULL,NULL,'test','tota',2.00,'vfdqnbd','2021-05-12'),(60,NULL,NULL,'test','test',2.00,NULL,'2021-05-25');
/*!40000 ALTER TABLE `assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Sculptures','2021-05-09 07:44:57','2021-05-09 07:44:57'),(2,'Pièces d\'or','2021-05-09 07:44:57','2021-05-09 07:44:57'),(3,'Pierres précieuses','2021-05-09 07:44:57','2021-05-09 07:44:57');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (57,'2014_10_12_000000_create_users_table',1),(58,'2014_10_12_100000_create_password_resets_table',1),(59,'2019_08_19_000000_create_failed_jobs_table',1),(60,'2021_05_02_133529_create_categories_table',1),(61,'2021_05_02_134720_create_assets_table',1),(67,'2016_06_01_000001_create_oauth_auth_codes_table',2),(68,'2016_06_01_000002_create_oauth_access_tokens_table',2),(69,'2016_06_01_000003_create_oauth_refresh_tokens_table',2),(70,'2016_06_01_000004_create_oauth_clients_table',2),(71,'2016_06_01_000005_create_oauth_personal_access_clients_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` VALUES ('009d7376d9a0fea3ca1dac5ec1d77a3c06d9214a9bd68c80947d1d9d467a9fd42e82e0e2e4eeac97',9,'93696e7e-e302-4ebe-b50f-e976e7a20f2a',NULL,'[]',0,'2021-05-25 06:38:07','2021-05-25 06:38:07','2022-05-25 08:38:07'),('088c25ff4432fee43b080d070c07c8cd7a05aa6a128b2f41a457282bf48d9f728291451036fe24bf',9,'93696e7e-e302-4ebe-b50f-e976e7a20f2a',NULL,'[]',0,'2021-05-12 10:05:24','2021-05-12 10:05:24','2022-05-12 12:05:24'),('0ab093954a9967f8733136e57c3d6370f6d7d7867a08525e074bce74f72b658e563f71487e458b38',9,'93696e7e-e302-4ebe-b50f-e976e7a20f2a',NULL,'[]',0,'2021-05-12 12:38:51','2021-05-12 12:38:51','2022-05-12 14:38:51'),('0b2063676309bb2159d7f6f4040ab62e9800cff206b7553eec5c50eab8c89cecf49a2ae07617f9cc',9,'93696e7e-e302-4ebe-b50f-e976e7a20f2a',NULL,'[]',0,'2021-05-12 12:35:57','2021-05-12 12:35:57','2022-05-12 14:35:57'),('21fc127c3b2f8e8dd7cfc84b3165afbd94f02e218dd24572e74df99003d51c8cb82794c70113d58f',9,'93696e7e-e302-4ebe-b50f-e976e7a20f2a',NULL,'[]',0,'2021-05-12 10:59:00','2021-05-12 10:59:00','2022-05-12 12:59:00'),('2f612f5782d6fe10ef4aeacba9a360b1cc76728e46a808c0ac1661eaf20dced86515f1413d286da0',9,'93696e7e-e302-4ebe-b50f-e976e7a20f2a',NULL,'[]',0,'2021-05-12 11:22:00','2021-05-12 11:22:00','2022-05-12 13:22:00'),('39a31bcbf9f38b924cf85076fbbf1075a4c95ef47a7e8e13be96cf5db2ed40b335d6881cf00d1fc3',9,'93696e7e-e302-4ebe-b50f-e976e7a20f2a',NULL,'[]',0,'2021-05-12 10:57:06','2021-05-12 10:57:06','2022-05-12 12:57:06'),('4818ecc1b1abc0997e555c87a6471980afc417c6b3b69bb07716d1a23bd22b71a136a933ec4780c2',9,'93696e7e-e302-4ebe-b50f-e976e7a20f2a',NULL,'[]',0,'2021-05-12 10:45:50','2021-05-12 10:45:50','2022-05-12 12:45:50'),('4aa101d2d0b8341e919815f4f79294476d086a393d733273a0e882b19b6d34f8a4db0a7033cfd6ab',9,'93696e7e-e302-4ebe-b50f-e976e7a20f2a',NULL,'[]',0,'2021-05-12 10:48:10','2021-05-12 10:48:10','2022-05-12 12:48:10'),('4c26d43e7cef8d5699de5a570316730ec720e6ba235dd15f8f21630abc6fecbf897187908dfc8d07',9,'93696e7e-e302-4ebe-b50f-e976e7a20f2a',NULL,'[]',0,'2021-05-12 12:23:47','2021-05-12 12:23:47','2022-05-12 14:23:47'),('5ff231f629a7b83b10d01375d95a44786de9bea0b1185fe3374db0c3868ef8b558f7194df27904a8',9,'93696e7e-e302-4ebe-b50f-e976e7a20f2a',NULL,'[]',0,'2021-05-12 11:15:52','2021-05-12 11:15:52','2022-05-12 13:15:52'),('71685a80a6328bfe16e2f0d2725a241229570ae8d3a76b6b2f7cb71dc673e676ce515a187f970d56',9,'93696e7e-e302-4ebe-b50f-e976e7a20f2a',NULL,'[]',0,'2021-05-18 07:21:37','2021-05-18 07:21:37','2022-05-18 09:21:37'),('794835fe8c0e292a8a69d2a71a60bf0108b832fd0d8ba592a69ead71ab3268ae426294540673b257',9,'93696e7e-e302-4ebe-b50f-e976e7a20f2a',NULL,'[]',0,'2021-05-12 11:20:33','2021-05-12 11:20:33','2022-05-12 13:20:33'),('7ebf49aade349b28f8757e6284cf16359603d3189c6dd94133f3a0a440d5600494edafe893bed3ae',9,'93696e7e-e302-4ebe-b50f-e976e7a20f2a',NULL,'[]',0,'2021-05-12 10:55:16','2021-05-12 10:55:16','2022-05-12 12:55:16'),('83a93a1d6e3f025a5db5fc8de311b8dfd9c4f86b1bfc63859c21b1d6424c0c8e67ad71702ee59acf',9,'93696e7e-e302-4ebe-b50f-e976e7a20f2a',NULL,'[]',0,'2021-05-25 14:39:12','2021-05-25 14:39:12','2022-05-25 16:39:12'),('8450ed2092c40216b493e75fbdc75929cad26b28e26a3f7c8f3095ff4e57448ec9a7c10c3deef5b3',9,'93696e7e-e302-4ebe-b50f-e976e7a20f2a',NULL,'[]',0,'2021-05-12 11:17:59','2021-05-12 11:17:59','2022-05-12 13:17:59'),('8bf58fe3deb0525bd5b8864d4a40a5caf6660f337a79c0d29004524b2ade7827c4195de91eb3e250',9,'93696e7e-e302-4ebe-b50f-e976e7a20f2a',NULL,'[]',0,'2021-05-25 14:24:50','2021-05-25 14:24:50','2022-05-25 16:24:50'),('8d6ffa44cf0fc8d5152f004f65866272594c20d7dad4a9c63469a91edb8681f0dbf4bdf85536133d',9,'93696e7e-e302-4ebe-b50f-e976e7a20f2a',NULL,'[]',0,'2021-05-12 12:33:18','2021-05-12 12:33:18','2022-05-12 14:33:18'),('9431e705fa657fea3b360266fb3eda915e6ac132126e101d13dab54c7a98b6e36f644aa06d6074ff',9,'93696e7e-e302-4ebe-b50f-e976e7a20f2a',NULL,'[]',0,'2021-05-12 12:32:00','2021-05-12 12:32:00','2022-05-12 14:32:00'),('9f2abbc6e427c74561d79eec89d915cd9a677bdf2a324e7fcb13608e8cd34650e2a3ae26a71584f3',9,'93696e7e-e302-4ebe-b50f-e976e7a20f2a',NULL,'[]',0,'2021-05-25 14:22:54','2021-05-25 14:22:54','2022-05-25 16:22:54'),('a176695f4674ce63a9af8da1f6af808c9969958cfb44ef0b3e5412ce6987444e33df506fcf27287a',9,'93696e7e-e302-4ebe-b50f-e976e7a20f2a',NULL,'[]',0,'2021-05-12 07:15:12','2021-05-12 07:15:12','2022-05-12 09:15:12'),('a2fbfd034b7d9f9b4ab185c82658d711577c3d1a1efc3141af6a53f3d9c0e882c13c47eb65561c57',9,'93696e7e-e302-4ebe-b50f-e976e7a20f2a',NULL,'[]',0,'2021-05-12 11:55:12','2021-05-12 11:55:12','2022-05-12 13:55:12'),('b8e1df107485faffa8826dab4f02ce091d035509c99a5ff53dc6a68eaa9664f90da68f36c5217f75',9,'93696e7e-e302-4ebe-b50f-e976e7a20f2a',NULL,'[]',0,'2021-05-12 12:14:41','2021-05-12 12:14:41','2022-05-12 14:14:41'),('c3f5135502475f94d23e9a9eaab7537ba6eefa306c83f0836a819fc003d83fd01e286cd906db2324',9,'93696e7e-e302-4ebe-b50f-e976e7a20f2a',NULL,'[]',0,'2021-05-25 06:59:33','2021-05-25 06:59:33','2022-05-25 08:59:33'),('cc38bfaeac4255eff97d8305be989e645c612e7d83585fef3c5e84daeb296014c21a32e3e3390e11',9,'93696e7e-e302-4ebe-b50f-e976e7a20f2a',NULL,'[]',0,'2021-05-25 14:04:14','2021-05-25 14:04:14','2022-05-25 16:04:14'),('cd4be4fdced8db9f6f5a3c760cbc3c466bf1818718bfac58ac370fce3438f4505b74a093d2e02776',9,'93696e7e-e302-4ebe-b50f-e976e7a20f2a',NULL,'[]',0,'2021-05-12 10:51:14','2021-05-12 10:51:14','2022-05-12 12:51:14'),('dd26d2053a04b379fc79f0b792453409c827d05f987a4c30dcf9e03225093f9a401127d4af9f83c4',9,'93696e7e-e302-4ebe-b50f-e976e7a20f2a',NULL,'[]',0,'2021-05-25 14:31:25','2021-05-25 14:31:25','2022-05-25 16:31:25'),('e17b1721166400709c041d22f7e319371657629cf39027fd569d48f441a6cb1b94128dce056b3eb1',9,'93696e7e-e302-4ebe-b50f-e976e7a20f2a',NULL,'[]',0,'2021-05-12 10:43:44','2021-05-12 10:43:44','2022-05-12 12:43:44'),('eae665efd379ce73ed779d52c3a0345ee986acf962dfe826098f35cf117c753ef70a3fb788d1d54e',9,'93696e7e-e302-4ebe-b50f-e976e7a20f2a',NULL,'[]',0,'2021-05-12 10:12:11','2021-05-12 10:12:11','2022-05-12 12:12:11'),('ed410d0cc21a297a57545dedb89c935e07e40778afb20d0e8ff7164c5b11da43e16f7c68faefd763',9,'93696e7e-e302-4ebe-b50f-e976e7a20f2a',NULL,'[]',0,'2021-05-25 14:13:59','2021-05-25 14:13:59','2022-05-25 16:13:59'),('efe540cf9996f3eeabe7595541bab41536cfd2fe8cc2e93e31f24b5f538fc46fa104f0bf17b283f9',9,'93696e7e-e302-4ebe-b50f-e976e7a20f2a',NULL,'[]',0,'2021-05-12 12:35:25','2021-05-12 12:35:25','2022-05-12 14:35:25'),('fb50102bfc33de2f8c74ceffb01d661fb839f1129a3367282dc0548ee912da5c348020a06a527d6e',9,'93696e7e-e302-4ebe-b50f-e976e7a20f2a',NULL,'[]',0,'2021-05-25 14:22:23','2021-05-25 14:22:23','2022-05-25 16:22:23');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_clients` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES ('93696e7e-de4f-4940-a1dc-a489faa95c42',NULL,'Laravel Personal Access Client','CKjxfOhgyJOXlL9UFo1JTa6AIUZqATgSYLUC7gnF',NULL,'http://localhost',1,0,0,'2021-05-12 07:05:46','2021-05-12 07:05:46'),('93696e7e-e302-4ebe-b50f-e976e7a20f2a',NULL,'Laravel Password Grant Client','JVnptbFa3HrCygv1b7Lz9MqapfNGvR83DabSMDQM','users','http://localhost',0,1,0,'2021-05-12 07:05:46','2021-05-12 07:05:46');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` VALUES (1,'93696e7e-de4f-4940-a1dc-a489faa95c42','2021-05-12 07:05:46','2021-05-12 07:05:46');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
INSERT INTO `oauth_refresh_tokens` VALUES ('1f0c9669db346f19a3b259a6816f85bc78112ae807cd0cf370d89c38e3c801d1de27b58e161172cf','0b2063676309bb2159d7f6f4040ab62e9800cff206b7553eec5c50eab8c89cecf49a2ae07617f9cc',0,'2022-05-12 14:35:57'),('21d734d360d668417b2ab0502c8a9303d926bfb288fe1c06d5be33cfdbe50dcc49823d1587de05f5','8450ed2092c40216b493e75fbdc75929cad26b28e26a3f7c8f3095ff4e57448ec9a7c10c3deef5b3',0,'2022-05-12 13:17:59'),('277590e3c8a8ae201d39fbb79763642e3ad8615568c073bbd3e90c0cb261e6f570427374e4045908','cc38bfaeac4255eff97d8305be989e645c612e7d83585fef3c5e84daeb296014c21a32e3e3390e11',0,'2022-05-25 16:04:14'),('33dca62ba056ffc1f0a66e3277e78af0caed23e727a2beef725ec489d575caa7cb72bfcba315ef49','9f2abbc6e427c74561d79eec89d915cd9a677bdf2a324e7fcb13608e8cd34650e2a3ae26a71584f3',0,'2022-05-25 16:22:54'),('37ffd25748217d9d7ac0c07589fe937ab600024268440185248e1591acb9550d2583478915dd79bb','83a93a1d6e3f025a5db5fc8de311b8dfd9c4f86b1bfc63859c21b1d6424c0c8e67ad71702ee59acf',0,'2022-05-25 16:39:12'),('44eed888c380a0401472f731210a6e34a2fee0e786251b7d2ba7d909d58325d29712254afe710dab','4aa101d2d0b8341e919815f4f79294476d086a393d733273a0e882b19b6d34f8a4db0a7033cfd6ab',0,'2022-05-12 12:48:10'),('62f58b7f236734ca43e224c1248fb298a460e0b818938ebf80d7398305c80c0d81b99d800cced63b','4c26d43e7cef8d5699de5a570316730ec720e6ba235dd15f8f21630abc6fecbf897187908dfc8d07',0,'2022-05-12 14:23:47'),('65543bb8ad4e8a37c3ae101dbd26c429810ae240e1573c9311282585c73f087d197e73c336ac9c3d','ed410d0cc21a297a57545dedb89c935e07e40778afb20d0e8ff7164c5b11da43e16f7c68faefd763',0,'2022-05-25 16:13:59'),('6f2c0b42a731607e50d2d19ab942423852481910485e0338871cf4a33c563145ddd408bdb431f4cc','088c25ff4432fee43b080d070c07c8cd7a05aa6a128b2f41a457282bf48d9f728291451036fe24bf',0,'2022-05-12 12:05:24'),('7269ebc6769d2d804cb12e4a4e6fa191addb21e21a0e2f346ad292708f3d8989638b9ec4fa853c33','cd4be4fdced8db9f6f5a3c760cbc3c466bf1818718bfac58ac370fce3438f4505b74a093d2e02776',0,'2022-05-12 12:51:14'),('796864f92af9ed6f2ff0b6ea9144cd77d3cabcac80c9f799839def95d1f11c95e06f51a1a6637397','dd26d2053a04b379fc79f0b792453409c827d05f987a4c30dcf9e03225093f9a401127d4af9f83c4',0,'2022-05-25 16:31:25'),('7d27737a0f1fd45b4a244a868cce6a1aa3b00b3c972f5166811ecfbd1909cfa971e11624c652bcf3','fb50102bfc33de2f8c74ceffb01d661fb839f1129a3367282dc0548ee912da5c348020a06a527d6e',0,'2022-05-25 16:22:23'),('8460320486df64fe11f5d54f5002c3d23dc9bb17f2d435c56c67139511f2a9a9a5669913007391d2','21fc127c3b2f8e8dd7cfc84b3165afbd94f02e218dd24572e74df99003d51c8cb82794c70113d58f',0,'2022-05-12 12:59:00'),('86bd60a3fa210e62d97bf9f1975443b2606bea6a8ef787184d9563175e6d3cb3aeb59773db2d5a78','9431e705fa657fea3b360266fb3eda915e6ac132126e101d13dab54c7a98b6e36f644aa06d6074ff',0,'2022-05-12 14:32:00'),('89430b1ed1fad662260fdf92ac6e6454cae0c23dce36fc91bf294a82c47c390daa50feb203a208be','eae665efd379ce73ed779d52c3a0345ee986acf962dfe826098f35cf117c753ef70a3fb788d1d54e',0,'2022-05-12 12:12:11'),('9cb13dc1903c5b5aea8c921568a11b9f29f3de85d214e5234992aa02a3a141b06bc9e80e512baa4c','8d6ffa44cf0fc8d5152f004f65866272594c20d7dad4a9c63469a91edb8681f0dbf4bdf85536133d',0,'2022-05-12 14:33:18'),('9eeec326adc65e816e7c8ac1eed238d617b49bb068e9e5a17326e60c500a193aaec824e2649529af','5ff231f629a7b83b10d01375d95a44786de9bea0b1185fe3374db0c3868ef8b558f7194df27904a8',0,'2022-05-12 13:15:52'),('adfd435b8b803948a385c17785aa7e06de7a38ae8f02ea363e6645e986fb492aaee2fd5d982b0e33','7ebf49aade349b28f8757e6284cf16359603d3189c6dd94133f3a0a440d5600494edafe893bed3ae',0,'2022-05-12 12:55:16'),('b172ef78e2d58641a900bcdfa6cdd394b3fcd7e60a16e77a852574d7c1e38c5d4bee4c82cce0736b','b8e1df107485faffa8826dab4f02ce091d035509c99a5ff53dc6a68eaa9664f90da68f36c5217f75',0,'2022-05-12 14:14:41'),('b2300f259fc28a46b82747e0eeeca777b7d1e51c01af3cd0249b3a3c05a3c624a808a5dd42568daf','009d7376d9a0fea3ca1dac5ec1d77a3c06d9214a9bd68c80947d1d9d467a9fd42e82e0e2e4eeac97',0,'2022-05-25 08:38:07'),('b251c683d6187cabde075c11c2a851d25ef6be0062f38f2c5e7235f3af0f9bdf7360e5dcf7d598ae','0ab093954a9967f8733136e57c3d6370f6d7d7867a08525e074bce74f72b658e563f71487e458b38',0,'2022-05-12 14:38:51'),('b862311ab2e5e605f9e341ad077e228cae973b82bb9990d1df4b5e19b5136ed3fb36bd4f310a82cd','2f612f5782d6fe10ef4aeacba9a360b1cc76728e46a808c0ac1661eaf20dced86515f1413d286da0',0,'2022-05-12 13:22:00'),('b95b897ea1fb28f26e864973fbae717487ed49c27c5b927365f3cc6ec79eae3f82796bc871bd3fac','c3f5135502475f94d23e9a9eaab7537ba6eefa306c83f0836a819fc003d83fd01e286cd906db2324',0,'2022-05-25 08:59:33'),('c1fd03b4ed0c29f2d49a940e474d3d2777a3f665b6d8a89234decf3031ed9b718907664fd0b0db79','a176695f4674ce63a9af8da1f6af808c9969958cfb44ef0b3e5412ce6987444e33df506fcf27287a',0,'2022-05-12 09:15:12'),('ccab04bb04f644670d70b14758e9a4284989b6ed3d23794640c59045a2e7237fbb169d0606d775c5','e17b1721166400709c041d22f7e319371657629cf39027fd569d48f441a6cb1b94128dce056b3eb1',0,'2022-05-12 12:43:44'),('e7e2417cee5b6de3707606b45b52a2c1403a6e539905bd2a9eddd340985426d34d89733c11c14f5d','8bf58fe3deb0525bd5b8864d4a40a5caf6660f337a79c0d29004524b2ade7827c4195de91eb3e250',0,'2022-05-25 16:24:50'),('ea5537160dc2aa75f9e85f25c3a50d34e16cf85af8b6163bb17ce307f634dbd67b0bb8cc5030b5a2','71685a80a6328bfe16e2f0d2725a241229570ae8d3a76b6b2f7cb71dc673e676ce515a187f970d56',0,'2022-05-18 09:21:37'),('ec122a14a7f51ce6e8ae66c4d70f99f2c3656aedc2c57a95547b5d0142aed2ed4d7ad3896b946a9e','a2fbfd034b7d9f9b4ab185c82658d711577c3d1a1efc3141af6a53f3d9c0e882c13c47eb65561c57',0,'2022-05-12 13:55:12'),('f29c520a5ad2412d4b441d56afd3b0472d35eccf27af4e84df078805040212d4d0aabb6b7479ce48','4818ecc1b1abc0997e555c87a6471980afc417c6b3b69bb07716d1a23bd22b71a136a933ec4780c2',0,'2022-05-12 12:45:50'),('f75f1936e19f95e596c7e2d7026915cb6eb3cd48caf6fb93d74be0a508c14ab21aa2ab642852f4ef','794835fe8c0e292a8a69d2a71a60bf0108b832fd0d8ba592a69ead71ab3268ae426294540673b257',0,'2022-05-12 13:20:33'),('f77f02d0433c6ef9388f87369633b3d6e212e30e50b0fc44ff8e77a95ff21ddfbb6182ca7a7bf556','efe540cf9996f3eeabe7595541bab41536cfd2fe8cc2e93e31f24b5f538fc46fa104f0bf17b283f9',0,'2022-05-12 14:35:25'),('ff8ab7f513012743d4ccb0478d38a01e74fad8635027979d248bc1e2f8d5d2f05b1d38c7b951ff01','39a31bcbf9f38b924cf85076fbbf1075a4c95ef47a7e8e13be96cf5db2ed40b335d6881cf00d1fc3',0,'2022-05-12 12:57:06');
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Jason','dkeebler@example.org','2021-05-09 07:44:57','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','btWfzPAiFb','2021-05-09 07:44:57','2021-05-09 07:44:57'),(2,'Ulysse','bruen.tyrell@example.org','2021-05-09 07:44:57','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','KeMdVqKNqb','2021-05-09 07:44:57','2021-05-09 07:44:57'),(3,'Helene','nicolas.tiara@example.com','2021-05-09 07:44:57','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','d0hj1C8igM','2021-05-09 07:44:57','2021-05-09 07:44:57'),(4,'Salakis','merle.stroman@example.org','2021-05-09 07:44:57','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','8RFWodIlVs','2021-05-09 07:44:57','2021-05-09 07:44:57'),(5,'Heracles','fglover@example.net','2021-05-09 07:44:57','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','3hxB4f0ord','2021-05-09 07:44:57','2021-05-09 07:44:57'),(6,'Achille','romaguera.sofia@example.org','2021-05-09 07:44:57','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','kMmRAFBYjP','2021-05-09 07:44:57','2021-05-09 07:44:57'),(7,'Egée','marielle61@example.com','2021-05-09 07:44:57','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Fb0LBCN5CX','2021-05-09 07:44:57','2021-05-09 07:44:57'),(8,'Oedipe','merl.bergstrom@example.org','2021-05-09 07:44:57','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','T5Bspc4XHV','2021-05-09 07:44:57','2021-05-09 07:44:57'),(9,'SuperUser','su@gmail.com',NULL,'$2y$10$9PtDwMDRIN/iOUGZMtZQC.Xhw4VhPbHq0wNfPyMUCsVCv1VyItGCW',NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-26 10:55:46
