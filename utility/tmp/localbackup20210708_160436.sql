-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: wp
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint unsigned NOT NULL DEFAULT '0',
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2021-06-08 06:02:56','2021-06-08 06:02:56','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_links` (
  `link_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint unsigned NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_options` (
  `option_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=MyISAM AUTO_INCREMENT=401 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://127.0.0.1/wordpress','yes'),(2,'home','http://127.0.0.1/wordpress','yes'),(3,'blogname','lecopt','yes'),(4,'blogdescription','Just another WordPress site','yes'),(5,'users_can_register','0','yes'),(6,'admin_email','a@gmail.com','yes'),(7,'start_of_week','1','yes'),(8,'use_balanceTags','0','yes'),(9,'use_smilies','1','yes'),(10,'require_name_email','1','yes'),(11,'comments_notify','1','yes'),(12,'posts_per_rss','10','yes'),(13,'rss_use_excerpt','0','yes'),(14,'mailserver_url','mail.example.com','yes'),(15,'mailserver_login','login@example.com','yes'),(16,'mailserver_pass','password','yes'),(17,'mailserver_port','110','yes'),(18,'default_category','1','yes'),(19,'default_comment_status','open','yes'),(20,'default_ping_status','open','yes'),(21,'default_pingback_flag','1','yes'),(22,'posts_per_page','10','yes'),(23,'date_format','F j, Y','yes'),(24,'time_format','g:i a','yes'),(25,'links_updated_date_format','F j, Y g:i a','yes'),(26,'comment_moderation','0','yes'),(27,'moderation_notify','1','yes'),(28,'permalink_structure','/%postname%/','yes'),(29,'rewrite_rules','a:92:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=10&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes'),(30,'hack_file','0','yes'),(31,'blog_charset','UTF-8','yes'),(32,'moderation_keys','','no'),(33,'active_plugins','a:1:{i:0;s:25:\"timber-library/timber.php\";}','yes'),(34,'category_base','','yes'),(35,'ping_sites','http://rpc.pingomatic.com/','yes'),(36,'comment_max_links','2','yes'),(37,'gmt_offset','0','yes'),(38,'default_email_category','1','yes'),(39,'recently_edited','','no'),(40,'template','starter-theme-1.x','yes'),(41,'stylesheet','starter-theme-1.x','yes'),(42,'comment_registration','0','yes'),(43,'html_type','text/html','yes'),(44,'use_trackback','0','yes'),(45,'default_role','subscriber','yes'),(46,'db_version','49752','yes'),(47,'uploads_use_yearmonth_folders','1','yes'),(48,'upload_path','','yes'),(49,'blog_public','1','yes'),(50,'default_link_category','2','yes'),(51,'show_on_front','page','yes'),(52,'tag_base','','yes'),(53,'show_avatars','1','yes'),(54,'avatar_rating','G','yes'),(55,'upload_url_path','','yes'),(56,'thumbnail_size_w','150','yes'),(57,'thumbnail_size_h','150','yes'),(58,'thumbnail_crop','1','yes'),(59,'medium_size_w','300','yes'),(60,'medium_size_h','300','yes'),(61,'avatar_default','mystery','yes'),(62,'large_size_w','1024','yes'),(63,'large_size_h','1024','yes'),(64,'image_default_link_type','none','yes'),(65,'image_default_size','','yes'),(66,'image_default_align','','yes'),(67,'close_comments_for_old_posts','0','yes'),(68,'close_comments_days_old','14','yes'),(69,'thread_comments','1','yes'),(70,'thread_comments_depth','5','yes'),(71,'page_comments','0','yes'),(72,'comments_per_page','50','yes'),(73,'default_comments_page','newest','yes'),(74,'comment_order','asc','yes'),(75,'sticky_posts','a:0:{}','yes'),(76,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(77,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(78,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(79,'uninstall_plugins','a:0:{}','no'),(80,'timezone_string','','yes'),(81,'page_for_posts','0','yes'),(82,'page_on_front','10','yes'),(83,'default_post_format','0','yes'),(84,'link_manager_enabled','0','yes'),(85,'finished_splitting_shared_terms','1','yes'),(86,'site_icon','0','yes'),(87,'medium_large_size_w','768','yes'),(88,'medium_large_size_h','0','yes'),(89,'wp_page_for_privacy_policy','3','yes'),(90,'show_comments_cookies_opt_in','1','yes'),(91,'admin_email_lifespan','1638684176','yes'),(92,'disallowed_keys','','no'),(93,'comment_previously_approved','1','yes'),(94,'auto_plugin_theme_update_emails','a:0:{}','no'),(95,'auto_update_core_dev','enabled','yes'),(96,'auto_update_core_minor','enabled','yes'),(97,'auto_update_core_major','enabled','yes'),(98,'initial_db_version','49752','yes'),(99,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes'),(100,'fresh_site','0','yes'),(101,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(102,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(103,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(104,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(105,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(106,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes'),(154,'current_theme','My Timber Starter Theme','yes'),(155,'theme_mods_starter-theme-1.x','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}','yes'),(156,'theme_switched','','yes'),(161,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes'),(398,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1625726000;s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:5:\"4.1.9\";s:9:\"hello.php\";s:5:\"1.7.2\";s:25:\"timber-library/timber.php\";s:6:\"1.18.2\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:6:\"4.1.10\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/akismet.4.1.10.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.8\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:25:\"timber-library/timber.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/timber-library\";s:4:\"slug\";s:14:\"timber-library\";s:6:\"plugin\";s:25:\"timber-library/timber.php\";s:11:\"new_version\";s:6:\"1.18.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/timber-library/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/timber-library.1.18.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/timber-library/assets/icon-256x256.png?rev=1482054\";s:2:\"1x\";s:67:\"https://ps.w.org/timber-library/assets/icon-128x128.png?rev=1482055\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/timber-library/assets/banner-1544x500.jpg?rev=1481635\";s:2:\"1x\";s:69:\"https://ps.w.org/timber-library/assets/banner-772x250.jpg?rev=1481619\";}s:11:\"banners_rtl\";a:0:{}}}}','no'),(177,'_transient_health-check-site-status-result','{\"good\":14,\"recommended\":6,\"critical\":0}','yes'),(107,'cron','a:7:{i:1625734977;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1625767377;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1625810576;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1625810590;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1625810592;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1626242577;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes'),(108,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(109,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(110,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(111,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(112,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(113,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(114,'nonce_key','lyV180SN]PO]@*CC>_U^ (xf{FPEtTsO)MMzJL$V@A3++1ZDP-ffe4p+fw%kWA>~','no'),(115,'nonce_salt','nbt_e{!v>2}IMnDG~qkH(?I{h^/W`Sp.i}sOIZnccPqR(Wsocn,<;7P+W:zv2&I}','no'),(116,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(117,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(118,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(129,'auth_key','<lz>c+{_&K|RPxTm?3ZXL]B`iL;IvRjP*r4xv=QBH-3/;jYYkm!/:@?JAyW0)$r`','no'),(120,'recovery_keys','a:0:{}','yes'),(121,'https_detection_errors','a:2:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}s:17:\"bad_response_code\";a:1:{i:0;s:9:\"Not Found\";}}','yes'),(131,'logged_in_key',' 6|YQ6Pu|sgd%+8vNW8y/-[!PTIk&sfMJmx:~Y$!yEX^-WG?o~!r{.1!T2td!ou=','no'),(122,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.7.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.7.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.7.2\";s:7:\"version\";s:5:\"5.7.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1625725996;s:15:\"version_checked\";s:5:\"5.7.2\";s:12:\"translations\";a:0:{}}','no'),(125,'theme_mods_twentytwentyone','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1623132223;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}','yes'),(396,'_site_transient_timeout_theme_roots','1625727798','no'),(397,'_site_transient_theme_roots','a:4:{s:17:\"starter-theme-1.x\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}','no'),(128,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1625725999;s:7:\"checked\";a:3:{s:14:\"twentynineteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.7\";s:15:\"twentytwentyone\";s:3:\"1.3\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.0.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.7.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.3.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}','no'),(130,'auth_salt','lsa&Qt}cin&mJp4FIMAQwt&H@fCTbh^ehAU}l%0j7Hg]~WL88QA[O@&CH0Yt&Y!Q','no'),(132,'logged_in_salt','|4<}gkg:}45iaa7;/;!dcgC;pq6tXL.16$*#.DE{1@iC_PUZXX)=|Hqx$N`~2KUq','no'),(389,'_site_transient_timeout_php_check_7772753a7ea0fe5c6dd1e8406c9ba6ba','1626316521','no'),(390,'_site_transient_php_check_7772753a7ea0fe5c6dd1e8406c9ba6ba','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no'),(159,'finished_updating_comment_type','1','yes'),(138,'can_compress_scripts','1','no'),(153,'recently_activated','a:0:{}','yes');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=404 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default'),(2,3,'_wp_page_template','default'),(318,44,'_wp_old_date','2021-06-10'),(317,43,'_wp_old_date','2021-06-10'),(316,42,'_wp_old_date','2021-06-10'),(315,35,'_wp_old_date','2021-06-10'),(314,34,'_wp_old_date','2021-06-10'),(313,20,'_wp_old_date','2021-06-10'),(312,19,'_wp_old_date','2021-06-10'),(311,58,'_edit_lock','1623743140:1'),(11,10,'_edit_lock','1623308163:1'),(319,45,'_wp_old_date','2021-06-10'),(15,13,'_edit_lock','1623132170:1'),(16,15,'_edit_lock','1623300795:1'),(190,42,'_menu_item_xfn',''),(184,42,'_menu_item_type','custom'),(51,20,'_menu_item_url','http://127.0.0.1/wordpress/#'),(50,20,'_menu_item_xfn',''),(49,20,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(48,20,'_menu_item_target',''),(47,20,'_menu_item_object','custom'),(46,20,'_menu_item_object_id','20'),(45,20,'_menu_item_menu_item_parent','0'),(35,19,'_menu_item_type','custom'),(36,19,'_menu_item_menu_item_parent','0'),(37,19,'_menu_item_object_id','19'),(38,19,'_menu_item_object','custom'),(39,19,'_menu_item_target',''),(40,19,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(41,19,'_menu_item_xfn',''),(42,19,'_menu_item_url','http://127.0.0.1/wordpress/#'),(44,20,'_menu_item_type','custom'),(191,42,'_menu_item_url','http://127.0.0.1/wordpress/#'),(189,42,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(188,42,'_menu_item_target',''),(187,42,'_menu_item_object','custom'),(186,42,'_menu_item_object_id','42'),(185,42,'_menu_item_menu_item_parent','34'),(183,40,'_edit_lock','1625046355:1'),(182,23,'_wp_old_date','2021-06-09'),(181,35,'_wp_old_date','2021-06-09'),(180,34,'_wp_old_date','2021-06-09'),(179,20,'_wp_old_date','2021-06-09'),(71,23,'_menu_item_type','custom'),(72,23,'_menu_item_menu_item_parent','0'),(73,23,'_menu_item_object_id','23'),(74,23,'_menu_item_object','custom'),(75,23,'_menu_item_target',''),(76,23,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(77,23,'_menu_item_xfn',''),(78,23,'_menu_item_url','http://127.0.0.1/wordpress/about'),(82,25,'_wp_trash_meta_status','publish'),(83,25,'_wp_trash_meta_time','1623141525'),(84,26,'_wp_trash_meta_status','publish'),(85,26,'_wp_trash_meta_time','1623141538'),(86,27,'_menu_item_type','custom'),(87,27,'_menu_item_menu_item_parent','0'),(88,27,'_menu_item_object_id','27'),(89,27,'_menu_item_object','custom'),(90,27,'_menu_item_target',''),(91,27,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(92,27,'_menu_item_xfn',''),(93,27,'_menu_item_url','http://127.0.0.1/wordpress/home'),(94,27,'_menu_item_orphaned','1623141717'),(134,23,'_wp_old_date','2021-06-08'),(177,38,'_edit_lock','1623307944:1'),(132,20,'_wp_old_date','2021-06-08'),(178,19,'_wp_old_date','2021-06-09'),(131,19,'_wp_old_date','2021-06-08'),(170,35,'_menu_item_url','http://127.0.0.1/wordpress/law'),(169,35,'_menu_item_xfn',''),(168,35,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(155,34,'_menu_item_menu_item_parent','0'),(167,35,'_menu_item_target',''),(166,35,'_menu_item_object','custom'),(165,35,'_menu_item_object_id','35'),(164,35,'_menu_item_menu_item_parent','34'),(163,35,'_menu_item_type','custom'),(154,34,'_menu_item_type','custom'),(156,34,'_menu_item_object_id','34'),(157,34,'_menu_item_object','custom'),(158,34,'_menu_item_target',''),(159,34,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(160,34,'_menu_item_xfn',''),(161,34,'_menu_item_url','http://127.0.0.1/wordpress/#'),(193,43,'_menu_item_type','custom'),(194,43,'_menu_item_menu_item_parent','34'),(195,43,'_menu_item_object_id','43'),(196,43,'_menu_item_object','custom'),(197,43,'_menu_item_target',''),(198,43,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(199,43,'_menu_item_xfn',''),(200,43,'_menu_item_url','http://127.0.0.1/wordpress/#'),(331,60,'_edit_lock','1623813464:1'),(202,44,'_menu_item_type','custom'),(203,44,'_menu_item_menu_item_parent','34'),(204,44,'_menu_item_object_id','44'),(205,44,'_menu_item_object','custom'),(206,44,'_menu_item_target',''),(207,44,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(208,44,'_menu_item_xfn',''),(209,44,'_menu_item_url','http://127.0.0.1/wordpress/#'),(330,23,'_wp_old_date','2021-06-10'),(211,45,'_menu_item_type','custom'),(212,45,'_menu_item_menu_item_parent','34'),(213,45,'_menu_item_object_id','45'),(214,45,'_menu_item_object','custom'),(215,45,'_menu_item_target',''),(216,45,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(217,45,'_menu_item_xfn',''),(218,45,'_menu_item_url','http://127.0.0.1/wordpress/#'),(329,55,'_wp_old_date','2021-06-10'),(220,46,'_menu_item_type','custom'),(221,46,'_menu_item_menu_item_parent','34'),(222,46,'_menu_item_object_id','46'),(223,46,'_menu_item_object','custom'),(224,46,'_menu_item_target',''),(225,46,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(226,46,'_menu_item_xfn',''),(227,46,'_menu_item_url','http://127.0.0.1/wordpress/#'),(328,54,'_wp_old_date','2021-06-10'),(229,47,'_menu_item_type','custom'),(230,47,'_menu_item_menu_item_parent','34'),(231,47,'_menu_item_object_id','47'),(232,47,'_menu_item_object','custom'),(233,47,'_menu_item_target',''),(234,47,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(235,47,'_menu_item_xfn',''),(236,47,'_menu_item_url','http://127.0.0.1/wordpress/#'),(327,53,'_wp_old_date','2021-06-10'),(238,48,'_menu_item_type','custom'),(239,48,'_menu_item_menu_item_parent','34'),(240,48,'_menu_item_object_id','48'),(241,48,'_menu_item_object','custom'),(242,48,'_menu_item_target',''),(243,48,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(244,48,'_menu_item_xfn',''),(245,48,'_menu_item_url','http://127.0.0.1/wordpress/#'),(326,52,'_wp_old_date','2021-06-10'),(247,49,'_menu_item_type','custom'),(248,49,'_menu_item_menu_item_parent','34'),(249,49,'_menu_item_object_id','49'),(250,49,'_menu_item_object','custom'),(251,49,'_menu_item_target',''),(252,49,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(253,49,'_menu_item_xfn',''),(254,49,'_menu_item_url','http://127.0.0.1/wordpress/#'),(325,51,'_wp_old_date','2021-06-10'),(256,50,'_menu_item_type','custom'),(257,50,'_menu_item_menu_item_parent','34'),(258,50,'_menu_item_object_id','50'),(259,50,'_menu_item_object','custom'),(260,50,'_menu_item_target',''),(261,50,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(262,50,'_menu_item_xfn',''),(263,50,'_menu_item_url','http://127.0.0.1/wordpress/#'),(324,50,'_wp_old_date','2021-06-10'),(265,51,'_menu_item_type','custom'),(266,51,'_menu_item_menu_item_parent','34'),(267,51,'_menu_item_object_id','51'),(268,51,'_menu_item_object','custom'),(269,51,'_menu_item_target',''),(270,51,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(271,51,'_menu_item_xfn',''),(272,51,'_menu_item_url','http://127.0.0.1/wordpress/#'),(323,49,'_wp_old_date','2021-06-10'),(274,52,'_menu_item_type','custom'),(275,52,'_menu_item_menu_item_parent','34'),(276,52,'_menu_item_object_id','52'),(277,52,'_menu_item_object','custom'),(278,52,'_menu_item_target',''),(279,52,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(280,52,'_menu_item_xfn',''),(281,52,'_menu_item_url','http://127.0.0.1/wordpress/#'),(322,48,'_wp_old_date','2021-06-10'),(283,53,'_menu_item_type','custom'),(284,53,'_menu_item_menu_item_parent','34'),(285,53,'_menu_item_object_id','53'),(286,53,'_menu_item_object','custom'),(287,53,'_menu_item_target',''),(288,53,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(289,53,'_menu_item_xfn',''),(290,53,'_menu_item_url','http://127.0.0.1/wordpress/#'),(321,47,'_wp_old_date','2021-06-10'),(292,54,'_menu_item_type','custom'),(293,54,'_menu_item_menu_item_parent','34'),(294,54,'_menu_item_object_id','54'),(295,54,'_menu_item_object','custom'),(296,54,'_menu_item_target',''),(297,54,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(298,54,'_menu_item_xfn',''),(299,54,'_menu_item_url','http://127.0.0.1/wordpress/#'),(320,46,'_wp_old_date','2021-06-10'),(301,55,'_menu_item_type','custom'),(302,55,'_menu_item_menu_item_parent','34'),(303,55,'_menu_item_object_id','55'),(304,55,'_menu_item_object','custom'),(305,55,'_menu_item_target',''),(306,55,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(307,55,'_menu_item_xfn',''),(308,55,'_menu_item_url','http://127.0.0.1/wordpress/#'),(310,56,'_edit_lock','1623316933:1'),(389,100,'_edit_lock','1625030968:1');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_posts` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2021-06-08 06:02:56','2021-06-08 06:02:56','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2021-06-08 06:02:56','2021-06-08 06:02:56','',0,'http://127.0.0.1/wordpress/?p=1',0,'post','',1),(2,1,'2021-06-08 06:02:56','2021-06-08 06:02:56','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://127.0.0.1/wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2021-06-08 06:02:56','2021-06-08 06:02:56','',0,'http://127.0.0.1/wordpress/?page_id=2',0,'page','',0),(3,1,'2021-06-08 06:02:56','2021-06-08 06:02:56','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://127.0.0.1/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2021-06-08 06:02:56','2021-06-08 06:02:56','',0,'http://127.0.0.1/wordpress/?page_id=3',0,'page','',0),(58,1,'2021-06-15 07:48:00','2021-06-15 07:48:00','','law','','publish','closed','closed','','law','','','2021-06-15 07:48:00','2021-06-15 07:48:00','',0,'http://127.0.0.1/wordpress/?page_id=58',0,'page','',0),(59,1,'2021-06-15 07:48:00','2021-06-15 07:48:00','','law','','inherit','closed','closed','','58-revision-v1','','','2021-06-15 07:48:00','2021-06-15 07:48:00','',58,'http://127.0.0.1/wordpress/?p=59',0,'revision','',0),(60,1,'2021-06-16 03:14:48','2021-06-16 03:14:48','','form','','publish','closed','closed','','form','','','2021-06-16 03:14:48','2021-06-16 03:14:48','',0,'http://127.0.0.1/wordpress/?page_id=60',0,'page','',0),(61,1,'2021-06-16 03:14:48','2021-06-16 03:14:48','','form','','inherit','closed','closed','','60-revision-v1','','','2021-06-16 03:14:48','2021-06-16 03:14:48','',60,'http://127.0.0.1/wordpress/?p=61',0,'revision','',0),(100,1,'2021-06-30 04:49:10','2021-06-30 04:49:10','','suggestion','','publish','closed','closed','','suggestion','','','2021-06-30 04:49:10','2021-06-30 04:49:10','',0,'http://127.0.0.1/wordpress/?page_id=100',0,'page','',0),(101,1,'2021-06-30 04:49:10','2021-06-30 04:49:10','','suggestion','','inherit','closed','closed','','100-revision-v1','','','2021-06-30 04:49:10','2021-06-30 04:49:10','',100,'http://127.0.0.1/wordpress/?p=101',0,'revision','',0),(105,1,'2021-06-30 09:45:55','2021-06-30 09:45:55','','about','','inherit','closed','closed','','40-autosave-v1','','','2021-06-30 09:45:55','2021-06-30 09:45:55','',40,'http://127.0.0.1/wordpress/?p=105',0,'revision','',0),(10,1,'2021-06-08 06:04:09','2021-06-08 06:04:09','','home','','publish','closed','closed','','home','','','2021-06-08 06:04:09','2021-06-08 06:04:09','',0,'http://127.0.0.1/wordpress/?page_id=10',0,'page','',0),(11,1,'2021-06-08 06:04:09','2021-06-08 06:04:09','','home','','inherit','closed','closed','','10-revision-v1','','','2021-06-08 06:04:09','2021-06-08 06:04:09','',10,'http://127.0.0.1/wordpress/?p=11',0,'revision','',0),(13,1,'2021-06-08 06:05:11','2021-06-08 06:05:11','','grouplogin','','publish','closed','closed','','grouplogin','','','2021-06-08 06:05:11','2021-06-08 06:05:11','',0,'http://127.0.0.1/wordpress/?page_id=13',0,'page','',0),(14,1,'2021-06-08 06:05:11','2021-06-08 06:05:11','','grouplogin','','inherit','closed','closed','','13-revision-v1','','','2021-06-08 06:05:11','2021-06-08 06:05:11','',13,'http://127.0.0.1/wordpress/?p=14',0,'revision','',0),(15,1,'2021-06-08 06:05:26','2021-06-08 06:05:26','','personallogin','','publish','closed','closed','','personallogin','','','2021-06-08 06:05:26','2021-06-08 06:05:26','',0,'http://127.0.0.1/wordpress/?page_id=15',0,'page','',0),(16,1,'2021-06-08 06:05:26','2021-06-08 06:05:26','','personallogin','','inherit','closed','closed','','15-revision-v1','','','2021-06-08 06:05:26','2021-06-08 06:05:26','',15,'http://127.0.0.1/wordpress/?p=16',0,'revision','',0),(20,1,'2021-06-15 07:48:39','2021-06-08 08:26:00','','服務流程','','publish','closed','closed','','%e6%b5%81%e7%a8%8b','','','2021-06-15 07:48:39','2021-06-15 07:48:39','',0,'http://127.0.0.1/wordpress/?p=20',2,'nav_menu_item','',0),(19,1,'2021-06-15 07:48:39','2021-06-08 08:02:56','','我們的服務','','publish','closed','closed','','%e6%88%91%e5%80%91%e7%9a%84%e4%bd%bf%e5%91%bd','','','2021-06-15 07:48:39','2021-06-15 07:48:39','',0,'http://127.0.0.1/wordpress/?p=19',1,'nav_menu_item','',0),(39,1,'2021-06-10 05:15:54','2021-06-10 05:15:54','','signup','','inherit','closed','closed','','38-revision-v1','','','2021-06-10 05:15:54','2021-06-10 05:15:54','',38,'http://127.0.0.1/wordpress/?p=39',0,'revision','',0),(23,1,'2021-06-15 07:48:39','2021-06-08 08:31:59','','關於我們','','publish','closed','closed','','%e8%81%af%e7%b5%a1%e6%88%91%e5%80%91','','','2021-06-15 07:48:39','2021-06-15 07:48:39','',0,'http://127.0.0.1/wordpress/?p=23',19,'nav_menu_item','',0),(25,1,'2021-06-08 08:38:45','2021-06-08 08:38:45','{\n    \"site_icon\": {\n        \"value\": 24,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-08 08:38:45\"\n    }\n}','','','trash','closed','closed','','13a357ca-2c3e-43dd-ade1-b0a84d150bd6','','','2021-06-08 08:38:45','2021-06-08 08:38:45','',0,'http://127.0.0.1/wordpress/13a357ca-2c3e-43dd-ade1-b0a84d150bd6/',0,'customize_changeset','',0),(26,1,'2021-06-08 08:38:58','2021-06-08 08:38:58','{\n    \"site_icon\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-08 08:38:58\"\n    }\n}','','','trash','closed','closed','','baee0ff6-3699-4ce9-8957-e0c05973a7a0','','','2021-06-08 08:38:58','2021-06-08 08:38:58','',0,'http://127.0.0.1/wordpress/baee0ff6-3699-4ce9-8957-e0c05973a7a0/',0,'customize_changeset','',0),(27,1,'2021-06-08 08:41:57','0000-00-00 00:00:00','','Logo','','draft','closed','closed','','','','','2021-06-08 08:41:57','0000-00-00 00:00:00','',0,'http://127.0.0.1/wordpress/?p=27',1,'nav_menu_item','',0),(38,1,'2021-06-10 05:15:54','2021-06-10 05:15:54','','signup','','publish','closed','closed','','signup','','','2021-06-10 05:15:54','2021-06-10 05:15:54','',0,'http://127.0.0.1/wordpress/?page_id=38',0,'page','',0),(35,1,'2021-06-15 07:48:39','2021-06-09 03:48:33','','婚姻','','publish','closed','closed','','%e5%a9%9a%e5%a7%bb','','','2021-06-15 07:48:39','2021-06-15 07:48:39','',0,'http://127.0.0.1/wordpress/?p=35',4,'nav_menu_item','',0),(34,1,'2021-06-15 07:48:39','2021-06-09 03:47:55','','法律知識','','publish','closed','closed','','%e6%b3%95%e5%be%8b%e7%9f%a5%e8%ad%98','','','2021-06-15 07:48:39','2021-06-15 07:48:39','',0,'http://127.0.0.1/wordpress/?p=34',3,'nav_menu_item','',0),(40,1,'2021-06-10 06:58:45','2021-06-10 06:58:45','','about','','publish','closed','closed','','about','','','2021-06-10 06:58:45','2021-06-10 06:58:45','',0,'http://127.0.0.1/wordpress/?page_id=40',0,'page','',0),(41,1,'2021-06-10 06:58:45','2021-06-10 06:58:45','','about','','inherit','closed','closed','','40-revision-v1','','','2021-06-10 06:58:45','2021-06-10 06:58:45','',40,'http://127.0.0.1/wordpress/?p=41',0,'revision','',0),(42,1,'2021-06-15 07:48:39','2021-06-10 08:48:39','','土地及大廈','','publish','closed','closed','','%e5%9c%9f%e5%9c%b0%e5%8f%8a%e5%a4%a7%e5%bb%88','','','2021-06-15 07:48:39','2021-06-15 07:48:39','',0,'http://127.0.0.1/wordpress/?p=42',5,'nav_menu_item','',0),(43,1,'2021-06-15 07:48:39','2021-06-10 08:48:39','','刑事','','publish','closed','closed','','%e5%88%91%e4%ba%8b','','','2021-06-15 07:48:39','2021-06-15 07:48:39','',0,'http://127.0.0.1/wordpress/?p=43',6,'nav_menu_item','',0),(44,1,'2021-06-15 07:48:39','2021-06-10 08:48:39','','法律科技','','publish','closed','closed','','%e6%b3%95%e5%be%8b%e7%a7%91%e6%8a%80','','','2021-06-15 07:48:39','2021-06-15 07:48:39','',0,'http://127.0.0.1/wordpress/?p=44',7,'nav_menu_item','',0),(45,1,'2021-06-15 07:48:39','2021-06-10 08:48:39','','人身傷亡','','publish','closed','closed','','%e4%ba%ba%e8%ba%ab%e5%82%b7%e4%ba%a1','','','2021-06-15 07:48:39','2021-06-15 07:48:39','',0,'http://127.0.0.1/wordpress/?p=45',8,'nav_menu_item','',0),(46,1,'2021-06-15 07:48:39','2021-06-10 08:48:39','','動物權益','','publish','closed','closed','','%e5%8b%95%e7%89%a9%e6%ac%8a%e7%9b%8a','','','2021-06-15 07:48:39','2021-06-15 07:48:39','',0,'http://127.0.0.1/wordpress/?p=46',9,'nav_menu_item','',0),(47,1,'2021-06-15 07:48:39','2021-06-10 08:48:39','','創業事宜','','publish','closed','closed','','%e5%89%b5%e6%a5%ad%e4%ba%8b%e5%ae%9c','','','2021-06-15 07:48:39','2021-06-15 07:48:39','',0,'http://127.0.0.1/wordpress/?p=47',10,'nav_menu_item','',0),(48,1,'2021-06-15 07:48:39','2021-06-10 08:48:39','','網上騙案','','publish','closed','closed','','%e7%b6%b2%e4%b8%8a%e9%a8%99%e6%a1%88','','','2021-06-15 07:48:39','2021-06-15 07:48:39','',0,'http://127.0.0.1/wordpress/?p=48',11,'nav_menu_item','',0),(49,1,'2021-06-15 07:48:39','2021-06-10 08:48:39','','知識產權','','publish','closed','closed','','%e7%9f%a5%e8%ad%98%e7%94%a2%e6%ac%8a','','','2021-06-15 07:48:39','2021-06-15 07:48:39','',0,'http://127.0.0.1/wordpress/?p=49',12,'nav_menu_item','',0),(50,1,'2021-06-15 07:48:39','2021-06-10 08:48:39','','商業罪案','','publish','closed','closed','','%e5%95%86%e6%a5%ad%e7%bd%aa%e6%a1%88','','','2021-06-15 07:48:39','2021-06-15 07:48:39','',0,'http://127.0.0.1/wordpress/?p=50',13,'nav_menu_item','',0),(51,1,'2021-06-15 07:48:39','2021-06-10 08:48:39','','私穩','','publish','closed','closed','','%e7%a7%81%e7%a9%a9','','','2021-06-15 07:48:39','2021-06-15 07:48:39','',0,'http://127.0.0.1/wordpress/?p=51',14,'nav_menu_item','',0),(52,1,'2021-06-15 07:48:39','2021-06-10 08:48:39','','海外置業','','publish','closed','closed','','%e6%b5%b7%e5%a4%96%e7%bd%ae%e6%a5%ad','','','2021-06-15 07:48:39','2021-06-15 07:48:39','',0,'http://127.0.0.1/wordpress/?p=52',15,'nav_menu_item','',0),(53,1,'2021-06-15 07:48:39','2021-06-10 08:48:39','','移民','','publish','closed','closed','','%e7%a7%bb%e6%b0%91','','','2021-06-15 07:48:39','2021-06-15 07:48:39','',0,'http://127.0.0.1/wordpress/?p=53',16,'nav_menu_item','',0),(54,1,'2021-06-15 07:48:39','2021-06-10 08:48:39','','外傭','','publish','closed','closed','','%e5%a4%96%e5%82%ad','','','2021-06-15 07:48:39','2021-06-15 07:48:39','',0,'http://127.0.0.1/wordpress/?p=54',17,'nav_menu_item','',0),(55,1,'2021-06-15 07:48:39','2021-06-10 08:48:39','','法援','','publish','closed','closed','','%e6%b3%95%e6%8f%b4','','','2021-06-15 07:48:39','2021-06-15 07:48:39','',0,'http://127.0.0.1/wordpress/?p=55',18,'nav_menu_item','',0),(56,1,'2021-06-10 09:24:31','2021-06-10 09:24:31','','signupsuccess','','publish','closed','closed','','signupsuccess','','','2021-06-10 09:24:31','2021-06-10 09:24:31','',0,'http://127.0.0.1/wordpress/?page_id=56',0,'page','',0),(57,1,'2021-06-10 09:24:31','2021-06-10 09:24:31','','signupsuccess','','inherit','closed','closed','','56-revision-v1','','','2021-06-10 09:24:31','2021-06-10 09:24:31','',56,'http://127.0.0.1/wordpress/?p=57',0,'revision','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0),(45,2,0),(20,2,0),(19,2,0),(44,2,0),(23,2,0),(35,2,0),(43,2,0),(42,2,0),(34,2,0),(46,2,0),(47,2,0),(48,2,0),(49,2,0),(50,2,0),(51,2,0),(52,2,0),(53,2,0),(54,2,0),(55,2,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint unsigned NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1),(2,2,'nav_menu','',0,19);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0),(2,'test','test',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','bryan'),(2,1,'first_name',''),(3,1,'last_name',''),(4,1,'description',''),(5,1,'rich_editing','true'),(6,1,'syntax_highlighting','true'),(7,1,'comment_shortcuts','false'),(8,1,'admin_color','fresh'),(9,1,'use_ssl','0'),(10,1,'show_admin_bar_front','true'),(11,1,'locale',''),(12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(13,1,'wp_user_level','10'),(14,1,'dismissed_wp_pointers',''),(15,1,'show_welcome_panel','1'),(16,1,'session_tokens','a:1:{s:64:\"d850d51815a1df7df83f64b2a085c930ade1921199c4e41d7259525fec5b3269\";a:4:{s:10:\"expiration\";i:1625887000;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36\";s:5:\"login\";i:1625714200;}}'),(17,1,'wp_dashboard_quick_press_last_post_id','65'),(18,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),(19,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),(20,1,'metaboxhidden_nav-menus','a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),(21,1,'wp_user-settings','libraryContent=browse'),(22,1,'wp_user-settings-time','1623141558'),(23,1,'nav_menu_recently_edited','2');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_users` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'bryan','$P$Bel4ALoeovh9yQfb34U.sD/NqogtkW/','bryan','a@gmail.com','http://127.0.0.1/wordpress','2021-06-08 06:02:56','',0,'bryan');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-08 16:04:36
