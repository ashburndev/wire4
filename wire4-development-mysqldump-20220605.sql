-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: wire4_development
-- ------------------------------------------------------
-- Server version	8.0.29-0ubuntu0.22.04.2

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
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2022-06-05 18:38:51.077650','2022-06-05 18:38:51.077650');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attachments`
--

DROP TABLE IF EXISTS `attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attachments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT NULL,
  `position` bigint DEFAULT NULL,
  `file_size` bigint DEFAULT NULL,
  `caption` varchar(1000) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `document_id` bigint NOT NULL,
  `binary_id` bigint NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_attachments_on_document_id` (`document_id`),
  KEY `index_attachments_on_binary_id` (`binary_id`),
  CONSTRAINT `fk_rails_18758b2fef` FOREIGN KEY (`document_id`) REFERENCES `documents` (`id`),
  CONSTRAINT `fk_rails_93d77356c2` FOREIGN KEY (`binary_id`) REFERENCES `binaries` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attachments`
--

LOCK TABLES `attachments` WRITE;
/*!40000 ALTER TABLE `attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authors` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `foo` varchar(255) DEFAULT NULL,
  `bar` varchar(255) DEFAULT NULL,
  `baz` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `binaries`
--

DROP TABLE IF EXISTS `binaries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `binaries` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `data` longblob,
  `searchable` tinyint(1) DEFAULT NULL,
  `document_id` bigint NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_binaries_on_document_id` (`document_id`),
  CONSTRAINT `fk_rails_e6d938646d` FOREIGN KEY (`document_id`) REFERENCES `documents` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `binaries`
--

LOCK TABLES `binaries` WRITE;
/*!40000 ALTER TABLE `binaries` DISABLE KEYS */;
/*!40000 ALTER TABLE `binaries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carrier_wave_files`
--

DROP TABLE IF EXISTS `carrier_wave_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carrier_wave_files` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `data` blob,
  `identifier` varchar(255) DEFAULT NULL,
  `original_filename` varchar(255) DEFAULT NULL,
  `content_type` varchar(255) DEFAULT NULL,
  `extension` varchar(255) DEFAULT NULL,
  `size` bigint DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrier_wave_files`
--

LOCK TABLES `carrier_wave_files` WRITE;
/*!40000 ALTER TABLE `carrier_wave_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `carrier_wave_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `body` text,
  `classification` varchar(255) DEFAULT NULL,
  `classification_xml` varchar(4000) DEFAULT NULL,
  `document_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_comments_on_document_id` (`document_id`),
  KEY `index_comments_on_user_id` (`user_id`),
  CONSTRAINT `fk_rails_03de2dc08c` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_rails_bf7f33d4a8` FOREIGN KEY (`document_id`) REFERENCES `documents` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digested_data`
--

DROP TABLE IF EXISTS `digested_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `digested_data` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `data` longblob,
  `md5` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digested_data`
--

LOCK TABLES `digested_data` WRITE;
/*!40000 ALTER TABLE `digested_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `digested_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_authors`
--

DROP TABLE IF EXISTS `document_authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `document_authors` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `document_id` bigint NOT NULL,
  `author_id` bigint NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_document_authors_on_document_id` (`document_id`),
  KEY `index_document_authors_on_author_id` (`author_id`),
  CONSTRAINT `fk_rails_684cfcaa78` FOREIGN KEY (`document_id`) REFERENCES `documents` (`id`),
  CONSTRAINT `fk_rails_f8af13ce16` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_authors`
--

LOCK TABLES `document_authors` WRITE;
/*!40000 ALTER TABLE `document_authors` DISABLE KEYS */;
/*!40000 ALTER TABLE `document_authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_countries`
--

DROP TABLE IF EXISTS `document_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `document_countries` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(5) DEFAULT NULL,
  `document_id` bigint NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_document_countries_on_document_id` (`document_id`),
  CONSTRAINT `fk_rails_2e8e6e9c60` FOREIGN KEY (`document_id`) REFERENCES `documents` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_countries`
--

LOCK TABLES `document_countries` WRITE;
/*!40000 ALTER TABLE `document_countries` DISABLE KEYS */;
INSERT INTO `document_countries` VALUES (1,'AUS',1,'2022-06-05 18:52:17.954443','2022-06-05 18:52:17.954443'),(2,'NZL',1,'2022-06-05 18:52:18.008264','2022-06-05 18:52:18.008264'),(3,'AUS',2,'2022-06-05 18:52:18.365389','2022-06-05 18:52:18.365389'),(4,'NZL',3,'2022-06-05 18:52:18.627840','2022-06-05 18:52:18.627840');
/*!40000 ALTER TABLE `document_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_non_state_actors`
--

DROP TABLE IF EXISTS `document_non_state_actors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `document_non_state_actors` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `document_id` bigint NOT NULL,
  `non_state_actor_id` bigint NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_document_non_state_actors_on_document_id` (`document_id`),
  KEY `index_document_non_state_actors_on_non_state_actor_id` (`non_state_actor_id`),
  CONSTRAINT `fk_rails_4515721593` FOREIGN KEY (`document_id`) REFERENCES `documents` (`id`),
  CONSTRAINT `fk_rails_56ddaf30be` FOREIGN KEY (`non_state_actor_id`) REFERENCES `non_state_actors` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_non_state_actors`
--

LOCK TABLES `document_non_state_actors` WRITE;
/*!40000 ALTER TABLE `document_non_state_actors` DISABLE KEYS */;
INSERT INTO `document_non_state_actors` VALUES (1,1,1,'2022-06-05 18:52:18.107751','2022-06-05 18:52:18.107751'),(2,1,2,'2022-06-05 18:52:18.136049','2022-06-05 18:52:18.136049'),(3,1,3,'2022-06-05 18:52:18.160775','2022-06-05 18:52:18.160775'),(4,2,1,'2022-06-05 18:52:18.423382','2022-06-05 18:52:18.423382'),(5,3,2,'2022-06-05 18:52:18.685328','2022-06-05 18:52:18.685328');
/*!40000 ALTER TABLE `document_non_state_actors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_topics`
--

DROP TABLE IF EXISTS `document_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `document_topics` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(5) DEFAULT NULL,
  `document_id` bigint NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_document_topics_on_document_id` (`document_id`),
  CONSTRAINT `fk_rails_b3dc866381` FOREIGN KEY (`document_id`) REFERENCES `documents` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_topics`
--

LOCK TABLES `document_topics` WRITE;
/*!40000 ALTER TABLE `document_topics` DISABLE KEYS */;
INSERT INTO `document_topics` VALUES (1,'JAVA',1,'2022-06-05 18:52:18.044148','2022-06-05 18:52:18.044148'),(2,'RUBY',1,'2022-06-05 18:52:18.066313','2022-06-05 18:52:18.066313'),(3,'JAVA',2,'2022-06-05 18:52:18.396158','2022-06-05 18:52:18.396158'),(4,'RUBY',3,'2022-06-05 18:52:18.654701','2022-06-05 18:52:18.654701');
/*!40000 ALTER TABLE `document_topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(4000) DEFAULT NULL,
  `summary` varchar(4000) DEFAULT NULL,
  `doc_num` varchar(100) DEFAULT NULL,
  `image_caption` varchar(1000) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `has_attachments` tinyint(1) DEFAULT NULL,
  `worldwide` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
INSERT INTO `documents` VALUES (1,'Favorite animal, fruit, and sport','Favorite animal is wallaby.\nFavorite fruit is kiwi.\nFavorite sport is cricket.',NULL,NULL,NULL,NULL,NULL,'2022-06-05 18:52:17.868251','2022-06-05 18:52:17.868251'),(2,'Australia favorite animal, fruit, and sport','Favorite animal is kangaroo.\nFavorite fruit is quandong.\nFavorite sport is rugby.',NULL,NULL,NULL,NULL,NULL,'2022-06-05 18:52:18.326292','2022-06-05 18:52:18.326292'),(3,'New Zealand favorite animal, fruit, and sport','Favorite animal is wombat.\nFavorite fruit is feijoas.\nFavorite sport is netball.',NULL,NULL,NULL,NULL,NULL,'2022-06-05 18:52:18.587120','2022-06-05 18:52:18.587120');
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `export_chunks`
--

DROP TABLE IF EXISTS `export_chunks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `export_chunks` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `chunk` int DEFAULT NULL,
  `data` longblob,
  `size` int DEFAULT NULL,
  `volume` int DEFAULT NULL,
  `export_id` bigint NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_export_chunks_on_export_id` (`export_id`),
  CONSTRAINT `fk_rails_aa621e160c` FOREIGN KEY (`export_id`) REFERENCES `exports` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `export_chunks`
--

LOCK TABLES `export_chunks` WRITE;
/*!40000 ALTER TABLE `export_chunks` DISABLE KEYS */;
/*!40000 ALTER TABLE `export_chunks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exports`
--

DROP TABLE IF EXISTS `exports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exports` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `type` varchar(15) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `state` varchar(15) DEFAULT NULL,
  `log` text,
  `document_ids_csv` mediumtext,
  `chunks` int DEFAULT NULL,
  `expired_at` datetime(6) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `progress` int DEFAULT NULL,
  `total` int DEFAULT NULL,
  `context` text,
  `attempts` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_exports_on_user_id` (`user_id`),
  CONSTRAINT `fk_rails_26b155474a` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exports`
--

LOCK TABLES `exports` WRITE;
/*!40000 ALTER TABLE `exports` DISABLE KEYS */;
/*!40000 ALTER TABLE `exports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filedrop_ng_uploaded_file_binaries`
--

DROP TABLE IF EXISTS `filedrop_ng_uploaded_file_binaries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filedrop_ng_uploaded_file_binaries` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `data` longblob,
  `part` bigint DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filedrop_ng_uploaded_file_binaries`
--

LOCK TABLES `filedrop_ng_uploaded_file_binaries` WRITE;
/*!40000 ALTER TABLE `filedrop_ng_uploaded_file_binaries` DISABLE KEYS */;
/*!40000 ALTER TABLE `filedrop_ng_uploaded_file_binaries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `non_state_actors`
--

DROP TABLE IF EXISTS `non_state_actors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `non_state_actors` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(4000) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `non_state_actors`
--

LOCK TABLES `non_state_actors` WRITE;
/*!40000 ALTER TABLE `non_state_actors` DISABLE KEYS */;
INSERT INTO `non_state_actors` VALUES (1,'Australian Kiwifruit Growers Association','2022-06-05 18:52:17.072332','2022-06-05 18:52:17.072332'),(2,'New Zealand Kiwifruit Growers Incorporated','2022-06-05 18:52:17.127322','2022-06-05 18:52:17.127322'),(3,'International Cricket Council','2022-06-05 18:52:17.155627','2022-06-05 18:52:17.155627'),(4,'Major Leage Baseball','2022-06-05 18:52:17.182018','2022-06-05 18:52:17.182018'),(5,'National Football League','2022-06-05 18:52:17.217698','2022-06-05 18:52:17.217698'),(6,'National Hockey League','2022-06-05 18:52:17.249762','2022-06-05 18:52:17.249762'),(7,'National Basketball Association','2022-06-05 18:52:17.280217','2022-06-05 18:52:17.280217'),(8,'Boy Scouts of America','2022-06-05 18:52:17.314150','2022-06-05 18:52:17.314150'),(9,'International Brotherhood of Teamsters','2022-06-05 18:52:17.341446','2022-06-05 18:52:17.341446');
/*!40000 ALTER TABLE `non_state_actors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pdf_books`
--

DROP TABLE IF EXISTS `pdf_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pdf_books` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `data` longblob,
  `state` varchar(30) DEFAULT NULL,
  `user_id` bigint NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_pdf_books_on_user_id` (`user_id`),
  CONSTRAINT `fk_rails_96fe590865` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pdf_books`
--

LOCK TABLES `pdf_books` WRITE;
/*!40000 ALTER TABLE `pdf_books` DISABLE KEYS */;
/*!40000 ALTER TABLE `pdf_books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20220605183428'),('20220605183429'),('20220605183430'),('20220605183431'),('20220605183432'),('20220605183433'),('20220605183434'),('20220605183435'),('20220605183436'),('20220605183437'),('20220605183438'),('20220605183439'),('20220605183440'),('20220605183441'),('20220605183442'),('20220605183443'),('20220605183444'),('20220605183445');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `organization` varchar(255) DEFAULT NULL,
  `dn` varchar(500) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visual_media_types`
--

DROP TABLE IF EXISTS `visual_media_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visual_media_types` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visual_media_types`
--

LOCK TABLES `visual_media_types` WRITE;
/*!40000 ALTER TABLE `visual_media_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `visual_media_types` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-05 14:55:32
