-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 13, 2021 at 03:39 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop-cms-wordpress`
--
CREATE DATABASE IF NOT EXISTS `shop-cms-wordpress` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `shop-cms-wordpress`;

-- --------------------------------------------------------

--
-- Table structure for table `hk5_actionscheduler_actions`
--

DROP TABLE IF EXISTS `hk5_actionscheduler_actions`;
CREATE TABLE IF NOT EXISTS `hk5_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `hook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scheduled_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`action_id`),
  KEY `hook` (`hook`),
  KEY `status` (`status`),
  KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  KEY `args` (`args`),
  KEY `group_id` (`group_id`),
  KEY `last_attempt_gmt` (`last_attempt_gmt`),
  KEY `claim_id` (`claim_id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hk5_actionscheduler_actions`
--

INSERT INTO `hk5_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(87, 'woocommerce_update_marketplace_suggestions', 'complete', '2021-01-09 11:54:55', '2021-01-09 18:54:55', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1610193295;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1610193295;}', 0, 1, '2021-01-09 11:55:00', '2021-01-09 18:55:00', 0, NULL),
(86, 'woocommerce_run_update_callback', 'complete', '2021-01-09 07:15:07', '2021-01-09 14:15:07', '[\"wc_admin_update_170_db_version\"]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1610176507;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1610176507;}', 2, 1, '2021-01-09 07:15:07', '2021-01-09 14:15:07', 0, NULL),
(85, 'woocommerce_run_update_callback', 'complete', '2021-01-09 07:15:06', '2021-01-09 14:15:06', '[\"wc_admin_update_170_homescreen_layout\"]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1610176506;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1610176506;}', 2, 1, '2021-01-09 07:15:07', '2021-01-09 14:15:07', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hk5_actionscheduler_claims`
--

DROP TABLE IF EXISTS `hk5_actionscheduler_claims`;
CREATE TABLE IF NOT EXISTS `hk5_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`claim_id`),
  KEY `date_created_gmt` (`date_created_gmt`)
) ENGINE=MyISAM AUTO_INCREMENT=1258 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hk5_actionscheduler_groups`
--

DROP TABLE IF EXISTS `hk5_actionscheduler_groups`;
CREATE TABLE IF NOT EXISTS `hk5_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `slug` (`slug`(191))
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hk5_actionscheduler_groups`
--

INSERT INTO `hk5_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration'),
(2, 'woocommerce-db-updates');

-- --------------------------------------------------------

--
-- Table structure for table `hk5_actionscheduler_logs`
--

DROP TABLE IF EXISTS `hk5_actionscheduler_logs`;
CREATE TABLE IF NOT EXISTS `hk5_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`log_id`),
  KEY `action_id` (`action_id`),
  KEY `log_date_gmt` (`log_date_gmt`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hk5_actionscheduler_logs`
--

INSERT INTO `hk5_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(16, 87, 'action created', '2021-01-09 11:54:55', '2021-01-09 18:54:55'),
(15, 85, 'action complete via WP Cron', '2021-01-09 07:15:07', '2021-01-09 14:15:07'),
(14, 85, 'action started via WP Cron', '2021-01-09 07:15:07', '2021-01-09 14:15:07'),
(13, 86, 'action complete via WP Cron', '2021-01-09 07:15:07', '2021-01-09 14:15:07'),
(12, 86, 'action started via WP Cron', '2021-01-09 07:15:07', '2021-01-09 14:15:07'),
(11, 86, 'action created', '2021-01-09 07:15:06', '2021-01-09 14:15:06'),
(10, 85, 'action created', '2021-01-09 07:15:06', '2021-01-09 14:15:06'),
(17, 87, 'action started via WP Cron', '2021-01-09 11:54:59', '2021-01-09 18:54:59'),
(18, 87, 'action complete via WP Cron', '2021-01-09 11:55:00', '2021-01-09 18:55:00');

-- --------------------------------------------------------

--
-- Table structure for table `hk5_commentmeta`
--

DROP TABLE IF EXISTS `hk5_commentmeta`;
CREATE TABLE IF NOT EXISTS `hk5_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hk5_comments`
--

DROP TABLE IF EXISTS `hk5_comments`;
CREATE TABLE IF NOT EXISTS `hk5_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10)),
  KEY `woo_idx_comment_type` (`comment_type`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hk5_duplicator_packages`
--

DROP TABLE IF EXISTS `hk5_duplicator_packages`;
CREATE TABLE IF NOT EXISTS `hk5_duplicator_packages` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `owner` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `package` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hash` (`hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hk5_links`
--

DROP TABLE IF EXISTS `hk5_links`;
CREATE TABLE IF NOT EXISTS `hk5_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hk5_options`
--

DROP TABLE IF EXISTS `hk5_options`;
CREATE TABLE IF NOT EXISTS `hk5_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=MyISAM AUTO_INCREMENT=2968 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hk5_options`
--

INSERT INTO `hk5_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/shop-cms-wordpress', 'yes'),
(2, 'home', 'http://localhost/shop-cms-wordpress', 'yes'),
(3, 'blogname', 'Team CMS', 'yes'),
(4, 'blogdescription', 'Website Cookie Shop TNT', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'phuongtan12357nguyen@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd/m/Y', 'yes'),
(24, 'time_format', 'g:i A', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:159:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=88&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:25:\"([^/]+)/wc-api(/(.*))?/?$\";s:45:\"index.php?name=$matches[1]&wc-api=$matches[3]\";s:31:\"[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:8:{i:0;s:85:\"all-in-one-wp-migration-gdrive-extension/all-in-one-wp-migration-gdrive-extension.php\";i:1;s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";i:2;s:25:\"duplicator/duplicator.php\";i:3;s:59:\"kliken-marketing-for-google/kliken-marketing-for-google.php\";i:4;s:21:\"test-block/plugin.php\";i:5;s:41:\"widget-css-classes/widget-css-classes.php\";i:6;s:27:\"woocommerce/woocommerce.php\";i:7;s:21:\"wp-sweep/wp-sweep.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:75:\"C:\\wamp64\\www\\shop-cms-wordpress/wp-content/themes/cookie-cms/page-cart.php\";i:1;s:71:\"C:\\wamp64\\www\\shop-cms-wordpress/wp-content/themes/cookie-cms/style.css\";i:2;s:71:\"C:\\wamp64\\www\\shop-cms-wordpress/wp-content/themes/cookie-cms/index.php\";i:3;s:76:\"C:\\wamp64\\www\\shop-cms-wordpress/wp-content/themes/cookie-cms/searchform.php\";i:4;s:72:\"C:\\wamp64\\www\\shop-cms-wordpress/wp-content/themes/cookie-cms/footer.php\";}', 'no'),
(40, 'template', 'cookie-cms', 'yes'),
(41, 'stylesheet', 'cookie-cms', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:3;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'Asia/Ho_Chi_Minh', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '88', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '15', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1620739870', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'initial_db_version', '48748', 'yes'),
(96, 'hk5_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(97, 'fresh_site', '0', 'yes'),
(98, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:9:{s:19:\"wp_inactive_widgets\";a:0:{}s:15:\"banner-slider-1\";a:1:{i:0;s:13:\"custom_html-3\";}s:6:\"area-2\";a:1:{i:0;s:13:\"custom_html-4\";}s:12:\"main-sidebar\";a:0:{}s:16:\"footer-sidebar-1\";a:2:{i:0;s:13:\"media_image-2\";i:1;s:13:\"custom_html-2\";}s:16:\"footer-sidebar-2\";a:1:{i:0;s:12:\"categories-3\";}s:16:\"footer-sidebar-3\";a:1:{i:0;s:10:\"calendar-2\";}s:16:\"footer-sidebar-4\";a:1:{i:0;s:15:\"media_gallery-3\";}s:13:\"array_version\";i:3;}', 'yes'),
(190, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(104, 'cron', 'a:17:{i:1610509198;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1610510220;a:1:{s:33:\"wc_admin_process_orders_milestone\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1610510226;a:1:{s:29:\"wc_admin_unsnooze_admin_notes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1610511307;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1610511708;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1610517420;a:1:{s:14:\"wc_admin_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1610522116;a:2:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1610532906;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1610543706;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1610544201;a:1:{s:21:\"ai1wm_storage_cleanup\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1610544671;a:4:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1610544694;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1610544696;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1610557200;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1610717471;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1611472566;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:11:\"fifteendays\";s:4:\"args\";a:0:{}s:8:\"interval\";i:1296000;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:2:{i:2;a:1:{s:5:\"title\";s:8:\"Calendar\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:2:{i:2;a:16:{s:4:\"size\";s:4:\"full\";s:5:\"width\";i:172;s:6:\"height\";i:55;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:6:\"custom\";s:8:\"link_url\";s:21:\"https://tanhongit.com\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";s:13:\"attachment_id\";i:51;s:3:\"url\";s:82:\"http://localhost/shop-cms-wordpress/wp-content/uploads/2020/11/logo-cms-header.png\";s:5:\"title\";s:0:\"\";s:7:\"classes\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:2:{i:3;a:7:{s:5:\"title\";s:20:\"Gallery Review Image\";s:3:\"ids\";a:5:{i:0;i:94;i:1;i:93;i:2;i:89;i:3;i:87;i:4;i:15;}s:7:\"columns\";i:4;s:4:\"size\";s:9:\"thumbnail\";s:9:\"link_type\";s:4:\"file\";s:14:\"orderby_random\";b:1;s:7:\"classes\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:4:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:380:\"<p>Shop Bánh Ngon - Siêu thị cung cấp dụng cụ và nguyên liệu làm bánh, các đồ dùng làm bánh.</p>\r\n<div class=\"footer-text\"><span><i class=\"icon icon-Pointer\"></i>Address : TDC, Vo Van Ngan, Thu Duc, HCM.</span><span><i class=\"icon icon-Phone\"></i>Phone : +(84) 123 456 789</span><span><i class=\"icon icon-Mail\"></i>Email : admin@cookietnt.com</span></div>\r\n\";}i:3;a:3:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:1353:\"<div class=\"ht-hero-section fix\">\r\n    <div class=\"ht-hero-slider\">\r\n        <!-- Single Slide Start -->\r\n        <div class=\"ht-single-slide\" style=\"background-image: url(wp-content/themes/cookie-cms/assets/img/slider/8.jpg)\">\r\n            <div class=\"ht-hero-content-one container\">\r\n                <h3>Organic fruits</h3>\r\n                <h1 class=\"cssanimation leDoorCloseLeft sequence\">Fresh Pineapple</h1>\r\n                <p>We believe that healthy eating, clean air, and gentle character is the best start to genuine wellbeing.</p>\r\n                <a href=\"shop.html\" class=\"default-btn large circle blue hover-blue uppercase\">Shop now</a>\r\n            </div>\r\n        </div>\r\n        <!-- Single Slide End -->\r\n        <!-- Single Slide Start -->\r\n        <div class=\"ht-single-slide\" style=\"background-image: url(wp-content/themes/cookie-cms/assets/img/slider/7.jpg)\">\r\n            <div class=\"ht-hero-content-one container\">\r\n                <h3>Organic fruits</h3>\r\n                <h1 class=\"cssanimation leDoorCloseLeft sequence\">Fruits Juice</h1>\r\n                <p>We believe that healthy eating, clean air, and gentle character is the best start to genuine wellbeing.</p>\r\n                <a href=\"shop.html\" class=\"default-btn\">Shop now</a>\r\n            </div>\r\n        </div>\r\n        <!-- Single Slide End -->\r\n    </div>\r\n</div>\";s:7:\"classes\";s:0:\"\";}i:4;a:3:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:1218:\"<div class=\"organic-about-area pt-90 pb-90\">\r\n    <div class=\"container\">\r\n        <div class=\"row\">\r\n            <div class=\"col-lg-6 col-md-6\">\r\n                <div class=\"organic-about-img\">\r\n                    <img src=\"wp-content/themes/cookie-cms/assets/img/banner/about.jpg\" alt=\"\">\r\n                </div>\r\n            </div>\r\n            <div class=\"col-lg-6 col-md-6 align-self-center\">\r\n                <div class=\"organic-about-text\">\r\n                    <div class=\"banner-logo\">\r\n                        <img src=\"wp-content/themes/cookie-cms/assets/img/logo/logo.png\" alt=\"\">\r\n                    </div>\r\n                    <h4>who we are</h4>\r\n                    <p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan t iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>\r\n                    <div class=\"signature\">\r\n                        <img src=\"wp-content/themes/cookie-cms/assets/img/banner/signature.png\" alt=\"\">\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>\";s:7:\"classes\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(119, 'theme_mods_twentytwenty', 'a:4:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1610192741;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:1:{i:0;s:15:\"media_gallery-3\";}s:9:\"sidebar-1\";a:2:{i:0;s:13:\"media_image-2\";i:1;s:13:\"custom_html-2\";}s:9:\"sidebar-2\";a:2:{i:0;s:12:\"categories-3\";i:1;s:10:\"calendar-2\";}}}s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:37;}s:16:\"background_color\";s:3:\"fff\";}', 'yes'),
(167, 'ai1wm_updater', 'a:1:{s:40:\"all-in-one-wp-migration-gdrive-extension\";a:13:{s:4:\"name\";s:22:\"Google Drive Extension\";s:4:\"slug\";s:22:\"google-drive-extension\";s:8:\"homepage\";s:54:\"https://servmask.com/extensions/google-drive-extension\";s:13:\"download_link\";s:29:\"https://servmask.com/purchase\";s:7:\"version\";s:4:\"2.62\";s:6:\"author\";s:8:\"ServMask\";s:15:\"author_homepage\";s:20:\"https://servmask.com\";s:8:\"sections\";a:1:{s:11:\"description\";s:333:\"<ul class=\"description\"><li>Export and import to and from Google Drive</li><li>Lifetime license with lifetime updates</li><li>Use on any number of websites that you own</li><li>Backup scheduler with hourly, daily, and weekly options</li><li>Unlimited Extension included</li><li>WP CLI commands</li><li>Premium support</li></ul><br />\";}s:7:\"banners\";a:2:{s:3:\"low\";s:68:\"https://servmask.com/img/products/google-drive-extension-772x250.png\";s:4:\"high\";s:69:\"https://servmask.com/img/products/google-drive-extension-1544x500.png\";}s:5:\"icons\";a:3:{s:2:\"1x\";s:68:\"https://servmask.com/img/products/google-drive-extension-128x128.png\";s:2:\"2x\";s:68:\"https://servmask.com/img/products/google-drive-extension-256x256.png\";s:7:\"default\";s:68:\"https://servmask.com/img/products/google-drive-extension-256x256.png\";}s:6:\"rating\";i:99;s:11:\"num_ratings\";i:309;s:10:\"downloaded\";i:40188;}}', 'yes'),
(164, 'ai1wm_secret_key', 'PvmZ1wXucRA0', 'yes'),
(143, 'finished_updating_comment_type', '1', 'yes'),
(1205, 'db_upgraded', '', 'yes'),
(1685, 'category_children', 'a:1:{i:5;a:1:{i:0;i:8;}}', 'yes'),
(159, 'recently_activated', 'a:0:{}', 'yes'),
(168, 'ai1wmge_gdrive_token', '1//0gzbgmWxaqw8cCgYIARAAGBASNwF-L9IrrvY4I98RJi88wU74mvYprr0tvo0hpBtENL1KydVqK8AMNEiUQx-KtsxRXTNEWTCctdM', 'yes'),
(169, 'ai1wmge_gdrive_access_token', 'ya29.A0AfH6SMAx2kbW-DzoluqQUu9J36T8lT8HgyeXD3qVB97kcll-4c1f8gibGUokD-nT20j3G8Dbxg9P_vAJm-Nm3cvIwPw_bQpvpiVulj5FwioGu0oUJFbbrQkVK0rbcXSM9HHB0ZbShHJAhrex6SZq8xJ-yK6O9dsCH6vgYIHQasg', 'yes'),
(170, 'ai1wmge_gdrive_access_token_expires_in', '1605276900', 'yes'),
(171, 'ai1wmge_gdrive_folder_id', '1yM5RT9lSR-lA9pDMfJwPNj4QXAW5_Pwo', 'yes'),
(455, 'action_scheduler_hybrid_store_demarkation', '81', 'yes'),
(456, 'schema-ActionScheduler_StoreSchema', '3.0.1605938218', 'yes'),
(457, 'schema-ActionScheduler_LoggerSchema', '2.0.1605938218', 'yes'),
(460, 'woocommerce_schema_version', '430', 'yes'),
(461, 'woocommerce_store_address', 'Trường Cao Đẳng Công Nghệ Thủ Đức', 'yes'),
(462, 'woocommerce_store_address_2', '', 'yes'),
(463, 'woocommerce_store_city', 'HCM City', 'yes'),
(464, 'woocommerce_default_country', 'VN', 'yes'),
(465, 'woocommerce_store_postcode', '71200', 'yes'),
(466, 'woocommerce_allowed_countries', 'all', 'yes'),
(467, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(468, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(469, 'woocommerce_ship_to_countries', '', 'yes'),
(470, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(471, 'woocommerce_default_customer_address', 'base', 'yes'),
(472, 'woocommerce_calc_taxes', 'yes', 'yes'),
(473, 'woocommerce_enable_coupons', 'yes', 'yes'),
(474, 'woocommerce_calc_discounts_sequentially', 'yes', 'no'),
(475, 'woocommerce_currency', 'VND', 'yes'),
(476, 'woocommerce_currency_pos', 'right', 'yes'),
(477, 'woocommerce_price_thousand_sep', '.', 'yes'),
(478, 'woocommerce_price_decimal_sep', ',', 'yes'),
(479, 'woocommerce_price_num_decimals', '1', 'yes'),
(480, 'woocommerce_shop_page_id', '82', 'yes'),
(481, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(482, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(483, 'woocommerce_placeholder_image', '81', 'yes'),
(411, 'WCSSC_options', 'a:9:{s:7:\"show_id\";b:0;s:4:\"type\";i:1;s:15:\"defined_classes\";a:0:{}s:11:\"show_number\";b:1;s:13:\"show_location\";b:1;s:12:\"show_evenodd\";b:1;s:17:\"fix_widget_params\";b:0;s:13:\"filter_unique\";b:0;s:17:\"translate_classes\";b:0;}', 'yes'),
(412, 'WCSSC_db_version', '1.5.4', 'yes'),
(174, 'WPLANG', '', 'yes'),
(175, 'new_admin_email', 'phuongtan12357nguyen@gmail.com', 'yes'),
(180, 'ai1wm_status', 'a:2:{s:4:\"type\";s:8:\"download\";s:7:\"message\";s:337:\"<a href=\"http://localhost/shop-cms-wordpress/wp-content/ai1wm-backups/localhost-shop-cms-wordpress-20201113-132835-jlzbop.wpress\" class=\"ai1wm-button-green ai1wm-emphasize ai1wm-button-download\" title=\"localhost\" download=\"localhost-shop-cms-wordpress-20201113-132835-jlzbop.wpress\"><span>Download localhost</span><em>Size: 5 MB</em></a>\";}', 'yes'),
(186, 'theme_mods_mytheme', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1605275794;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(188, 'current_theme', 'Web Shop TNT CMS TEAM', 'yes'),
(189, 'theme_switched', '', 'yes'),
(317, 'recovery_mode_email_last_sent', '1610303885', 'yes'),
(204, 'theme_mods_cookie-cms', 'a:4:{s:11:\"custom_logo\";i:51;s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:9:\"main-menu\";i:37;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1610192689;s:4:\"data\";a:6:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"main-sidebar\";a:0:{}s:16:\"footer-sidebar-1\";a:2:{i:0;s:13:\"media_image-2\";i:1;s:13:\"custom_html-2\";}s:16:\"footer-sidebar-2\";a:1:{i:0;s:12:\"categories-3\";}s:16:\"footer-sidebar-3\";a:1:{i:0;s:10:\"calendar-2\";}s:16:\"footer-sidebar-4\";a:1:{i:0;s:15:\"media_gallery-3\";}}}}', 'yes'),
(716, 'woocommerce_task_list_appearance_complete', '1', 'yes'),
(717, 'woocommerce_demo_store_notice', 'Web bán bánh ngon', 'yes'),
(195, 'theme_mods_twentynineteen', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:4;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1605820991;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:12:\"categories-3\";i:1;s:10:\"calendar-2\";i:2;s:10:\"nav_menu-2\";i:3;s:8:\"search-2\";i:4;s:14:\"recent-posts-2\";i:5;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:2:{i:0;s:13:\"media_image-2\";i:1;s:13:\"custom_html-2\";}}}}', 'yes'),
(652, 'woocommerce_task_list_tracked_completed_tasks', 'a:3:{i:0;s:13:\"store_details\";i:1;s:8:\"products\";i:2;s:10:\"appearance\";}', 'yes'),
(484, 'woocommerce_weight_unit', 'kg', 'yes'),
(485, 'woocommerce_dimension_unit', 'cm', 'yes'),
(486, 'woocommerce_enable_reviews', 'yes', 'yes'),
(487, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(488, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(489, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(490, 'woocommerce_review_rating_required', 'yes', 'no'),
(491, 'woocommerce_manage_stock', 'yes', 'yes'),
(492, 'woocommerce_hold_stock_minutes', '60', 'no'),
(493, 'woocommerce_notify_low_stock', 'yes', 'no'),
(494, 'woocommerce_notify_no_stock', 'yes', 'no'),
(495, 'woocommerce_stock_email_recipient', 'phuongtan12357nguyen@gmail.com', 'no'),
(496, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(497, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(498, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(499, 'woocommerce_stock_format', '', 'yes'),
(500, 'woocommerce_file_download_method', 'force', 'no'),
(501, 'woocommerce_downloads_require_login', 'no', 'no'),
(502, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(503, 'woocommerce_downloads_add_hash_to_filename', 'yes', 'yes'),
(504, 'woocommerce_prices_include_tax', 'no', 'yes'),
(505, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(506, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(507, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(508, 'woocommerce_tax_classes', '', 'yes'),
(509, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(510, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(511, 'woocommerce_price_display_suffix', '', 'yes'),
(512, 'woocommerce_tax_total_display', 'itemized', 'no'),
(513, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(514, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(515, 'woocommerce_ship_to_destination', 'billing', 'no'),
(516, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(517, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(518, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(519, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(520, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(521, 'woocommerce_registration_generate_username', 'yes', 'no'),
(522, 'woocommerce_registration_generate_password', 'yes', 'no'),
(523, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(524, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(525, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(526, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(527, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(528, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(529, 'woocommerce_trash_pending_orders', '', 'no'),
(530, 'woocommerce_trash_failed_orders', '', 'no'),
(531, 'woocommerce_trash_cancelled_orders', '', 'no'),
(532, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(533, 'woocommerce_email_from_name', 'Team CMS', 'no'),
(534, 'woocommerce_email_from_address', 'phuongtan12357nguyen@gmail.com', 'no'),
(535, 'woocommerce_email_header_image', '', 'no'),
(536, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(537, 'woocommerce_email_base_color', '#96588a', 'no'),
(538, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(539, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(540, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(541, 'woocommerce_cart_page_id', '83', 'no'),
(542, 'woocommerce_checkout_page_id', '84', 'no'),
(543, 'woocommerce_myaccount_page_id', '85', 'no'),
(544, 'woocommerce_terms_page_id', '', 'no'),
(545, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(546, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(547, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(548, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(549, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(550, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(551, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(552, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes');
INSERT INTO `hk5_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(553, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(554, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(555, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(556, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(557, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(558, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(559, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(560, 'woocommerce_api_enabled', 'no', 'yes'),
(561, 'woocommerce_allow_tracking', 'yes', 'no'),
(562, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(563, 'woocommerce_single_image_width', '600', 'yes'),
(564, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(565, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(566, 'woocommerce_demo_store', 'yes', 'no'),
(567, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(568, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(569, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(572, 'default_product_cat', '35', 'yes'),
(607, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(575, 'woocommerce_version', '4.8.0', 'yes'),
(576, 'woocommerce_db_version', '4.8.0', 'yes'),
(579, 'action_scheduler_lock_async-request-runner', '1610509209', 'yes'),
(580, 'woocommerce_admin_notices', 'a:1:{i:0;s:20:\"no_secure_connection\";}', 'yes'),
(581, 'woocommerce_maxmind_geolocation_settings', 'a:1:{s:15:\"database_prefix\";s:32:\"fh1R0Njr3xkdeC8NyYN1IV0vUG3DTnJD\";}', 'yes'),
(1679, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(583, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(584, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(585, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(586, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(587, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(588, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(589, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(590, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(591, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(592, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(593, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(594, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(598, 'woocommerce_admin_install_timestamp', '1605938220', 'yes'),
(1195, 'woocommerce_admin_version', '1.7.3', 'yes'),
(602, 'wc_admin_note_home_screen_feedback_homescreen_accessed', '1605938220', 'yes'),
(603, 'wc_remote_inbox_notifications_specs', 'a:7:{s:37:\"ecomm-need-help-setting-up-your-store\";O:8:\"stdClass\":8:{s:4:\"slug\";s:37:\"ecomm-need-help-setting-up-your-store\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:32:\"Need help setting up your Store?\";s:7:\"content\";s:350:\"Schedule a free 30-min <a href=\"https://wordpress.com/support/concierge-support/\">quick start session</a> and get help from our specialists. We’re happy to walk through setup steps, show you around the WordPress.com dashboard, troubleshoot any issues you may have, and help you the find the features you need to accomplish your goals for your site.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:16:\"set-up-concierge\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:21:\"Schedule free session\";}}s:3:\"url\";s:34:\"https://wordpress.com/me/concierge\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:3:{i:0;s:35:\"woocommerce-shipping-australia-post\";i:1;s:32:\"woocommerce-shipping-canada-post\";i:2;s:30:\"woocommerce-shipping-royalmail\";}}}}s:20:\"woocommerce-services\";O:8:\"stdClass\":8:{s:4:\"slug\";s:20:\"woocommerce-services\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:26:\"WooCommerce Shipping & Tax\";s:7:\"content\";s:255:\"WooCommerce Shipping & Tax helps get your store “ready to sell” as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:84:\"https://docs.woocommerce.com/document/woocommerce-shipping-and-tax/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-services\";}}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\"<\";s:4:\"days\";i:2;}}}s:32:\"ecomm-unique-shopping-experience\";O:8:\"stdClass\":8:{s:4:\"slug\";s:32:\"ecomm-unique-shopping-experience\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:53:\"For a shopping experience as unique as your customers\";s:7:\"content\";s:274:\"Product Add-Ons allow your customers to personalize products while they’re shopping on your online store. No more follow-up email requests—customers get what they want, before they’re done checking out. Learn more about this extension that comes included in your plan.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:43:\"learn-more-ecomm-unique-shopping-experience\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:71:\"https://docs.woocommerce.com/document/product-add-ons/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:3:{i:0;s:35:\"woocommerce-shipping-australia-post\";i:1;s:32:\"woocommerce-shipping-canada-post\";i:2;s:30:\"woocommerce-shipping-royalmail\";}}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\"<\";s:4:\"days\";i:2;}}}s:19:\"wcpay-promo-2020-11\";O:8:\"stdClass\":8:{s:4:\"slug\";s:19:\"wcpay-promo-2020-11\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:54:\"Manage subscriber payments from your store\'s dashboard\";s:7:\"content\";s:643:\"Securely accept cards and manage transactions right from your dashboard with <a href=\"https://woocommerce.com/payments/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_ctrl20\" target=\"_blank\">WooCommerce Payments</a>  – now supporting <a href=\"https://woocommerce.com/products/woocommerce-subscriptions/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_ctrl20\" target=\"_blank\">WooCommerce Subscriptions</a>! <br/><br/><em>By clicking \"Install now,\" you agree to our <a href=\"https://wordpress.com/tos/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_ctrl20\" target=\"_blank\">Terms of Service</a>.</em>\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:11:\"install-now\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:11:\"Install now\";}}s:3:\"url\";s:57:\"admin.php?page=wc-admin&action=setup-woocommerce-payments\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:10:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:17:\"woocommerce-admin\";}}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:17:\"woocommerce-admin\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:5:\"1.7.0\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-payments\";}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:26:\"woocommerce-gateway-stripe\";}}}i:4;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:8:\"industry\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";}}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:11:\"order_count\";s:9:\"operation\";s:2:\">=\";s:5:\"value\";i:10;}i:6;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2020-11-18 14:00:00\";}i:7;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2020-12-07 00:00:00\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"US\";}i:9;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:26:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"CO\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"DE\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"FL\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"HI\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"ID\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"IN\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"KS\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"KY\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"LA\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MA\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MN\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MT\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NE\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NV\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NH\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NM\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"ND\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"OH\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"OR\";}i:19;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"PA\";}i:20;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"SD\";}i:21;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"TN\";}i:22;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"TX\";}i:23;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"VA\";}i:24;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"WA\";}i:25;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"WI\";}}}}}s:27:\"wcpay-subscriptions-2020-11\";O:8:\"stdClass\":8:{s:4:\"slug\";s:27:\"wcpay-subscriptions-2020-11\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:54:\"Manage subscriber payments from your store\'s dashboard\";s:7:\"content\";s:643:\"Securely accept cards and manage transactions right from your dashboard with <a href=\"https://woocommerce.com/payments/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_ctrl20\" target=\"_blank\">WooCommerce Payments</a>  – now supporting <a href=\"https://woocommerce.com/products/woocommerce-subscriptions/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_ctrl20\" target=\"_blank\">WooCommerce Subscriptions</a>! <br/><br/><em>By clicking \"Install now,\" you agree to our <a href=\"https://wordpress.com/tos/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_ctrl20\" target=\"_blank\">Terms of Service</a>.</em>\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:11:\"install-now\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:11:\"Install now\";}}s:3:\"url\";s:57:\"admin.php?page=wc-admin&action=setup-woocommerce-payments\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:10:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:17:\"woocommerce-admin\";}}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:17:\"woocommerce-admin\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:5:\"1.7.0\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-payments\";}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:26:\"woocommerce-gateway-stripe\";}}}i:4;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:8:\"industry\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";}}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:11:\"order_count\";s:9:\"operation\";s:2:\">=\";s:5:\"value\";i:10;}i:6;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2020-11-18 14:00:00\";}i:7;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2020-12-07 00:00:00\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"US\";}i:9;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:24:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AL\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AK\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AZ\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AR\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"CA\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"CT\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"DC\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"IL\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"IA\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"ME\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MD\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MI\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MS\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MO\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NJ\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NY\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NC\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"OK\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"RI\";}i:19;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"SC\";}i:20;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"UT\";}i:21;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"VT\";}i:22;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"WV\";}i:23;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"WY\";}}}}}s:19:\"wcpay-promo-2020-12\";O:8:\"stdClass\":8:{s:4:\"slug\";s:19:\"wcpay-promo-2020-12\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:54:\"Get 50% off transaction fees with WooCommerce Payments\";s:7:\"content\";s:625:\"Keep more of your hard-earned cash by adding <a href=\"https://woocommerce.com/payments/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_exp20\" target=\"_blank\">WooCommerce Payments</a> to your store. Lock in a discounted rate of 1.5% + $0.15 for $25,000 of payments (or three months, whichever comes first). Limited time offer – don’t miss out! <br/><br/><em>By clicking \"Install now,\" you agree to our promotional <a href=\"https://woocommerce.com/terms-conditions/woocommerce-payments-promotion/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_exp20\" target=\"_blank\">Terms of Service</a>.</em>\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:11:\"install-now\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:11:\"Install now\";}}s:3:\"url\";s:57:\"admin.php?page=wc-admin&action=setup-woocommerce-payments\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:7:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"4.8\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-payments\";}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:26:\"woocommerce-gateway-stripe\";}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:8:\"industry\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";}}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:11:\"order_count\";s:9:\"operation\";s:2:\">=\";s:5:\"value\";i:10;}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"US\";}i:6;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:26:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"CO\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"DE\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"FL\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"HI\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"ID\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"IN\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"KS\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"KY\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"LA\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MA\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MN\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MT\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NE\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NV\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NH\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NM\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"ND\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"OH\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"OR\";}i:19;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"PA\";}i:20;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"SD\";}i:21;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"TN\";}i:22;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"TX\";}i:23;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"VA\";}i:24;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"WA\";}i:25;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"WI\";}}}}}s:27:\"wcpay-subscriptions-2020-12\";O:8:\"stdClass\":8:{s:4:\"slug\";s:27:\"wcpay-subscriptions-2020-12\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:43:\"Manage payments from your store\'s dashboard\";s:7:\"content\";s:560:\"Securely accept cards and manage transactions right from your dashboard with <a href=\"https://woocommerce.com/payments/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_ctrl20\" target=\"_blank\">WooCommerce Payments</a>! Zero setup fees or monthly fees. Just pay-as-you-go, starting at just 2.9% + $0.30 per transaction for U.S.-issued cards. <br/><br/><em>By clicking \"Install now,\" you agree to our <a href=\"https://wordpress.com/tos/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_ctrl20\" target=\"_blank\">Terms of Service</a>.</em>\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:11:\"install-now\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:11:\"Install now\";}}s:3:\"url\";s:57:\"admin.php?page=wc-admin&action=setup-woocommerce-payments\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:7:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"4.8\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-payments\";}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:26:\"woocommerce-gateway-stripe\";}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:8:\"industry\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";}}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:11:\"order_count\";s:9:\"operation\";s:2:\">=\";s:5:\"value\";i:10;}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"US\";}i:6;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:24:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AL\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AK\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AZ\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AR\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"CA\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"CT\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"DC\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"IL\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"IA\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"ME\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MD\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MI\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MS\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MO\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NJ\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NY\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NC\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"OK\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"RI\";}i:19;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"SC\";}i:20;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"UT\";}i:21;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"VT\";}i:22;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"WV\";}i:23;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"WY\";}}}}}}', 'yes'),
(604, 'wc_remote_inbox_notifications_stored_state', 'O:8:\"stdClass\":2:{s:22:\"there_were_no_products\";b:1;s:22:\"there_are_now_products\";b:1;}', 'yes'),
(606, 'wc_blocks_db_schema_version', '260', 'yes'),
(1680, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(633, 'woocommerce_onboarding_profile', 'a:9:{s:12:\"setup_client\";b:0;s:8:\"industry\";a:1:{i:0;a:1:{s:4:\"slug\";s:10:\"food-drink\";}}s:13:\"product_types\";a:1:{i:0;s:8:\"physical\";}s:13:\"product_count\";s:8:\"101-1000\";s:14:\"selling_venues\";s:2:\"no\";s:19:\"business_extensions\";a:1:{i:0;s:27:\"kliken-marketing-for-google\";}s:5:\"theme\";s:10:\"cookie-cms\";s:7:\"plugins\";s:9:\"installed\";s:9:\"completed\";b:1;}', 'yes'),
(631, 'action_scheduler_migration_status', 'complete', 'yes'),
(639, 'woocommerce_kk_wcintegration_settings', 'a:3:{s:10:\"account_id\";i:0;s:9:\"app_token\";s:0:\"\";s:12:\"google_token\";s:0:\"\";}', 'yes'),
(642, 'woocommerce_setup_jetpack_opted_in', '1', 'yes'),
(660, 'woocommerce_task_list_welcome_modal_dismissed', 'yes', 'yes'),
(671, 'woocommerce_tracker_ua', 'a:4:{i:0;s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36\";i:1;s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.66 Safari/537.36\";i:2;s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36\";i:3;s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36\";}', 'yes'),
(709, 'woocommerce_task_list_hidden', 'no', 'yes'),
(689, 'woocommerce_marketplace_suggestions', 'a:2:{s:11:\"suggestions\";a:26:{i:0;a:4:{s:4:\"slug\";s:28:\"product-edit-meta-tab-header\";s:7:\"context\";s:28:\"product-edit-meta-tab-header\";s:5:\"title\";s:22:\"Recommended extensions\";s:13:\"allow-dismiss\";b:0;}i:1;a:6:{s:4:\"slug\";s:39:\"product-edit-meta-tab-footer-browse-all\";s:7:\"context\";s:28:\"product-edit-meta-tab-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:2;a:9:{s:4:\"slug\";s:46:\"product-edit-mailchimp-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-mailchimp\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:116:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/mailchimp-for-memberships.svg\";s:5:\"title\";s:25:\"Mailchimp for Memberships\";s:4:\"copy\";s:79:\"Completely automate your email lists by syncing membership changes to Mailchimp\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/mailchimp-woocommerce-memberships/\";}i:3;a:9:{s:4:\"slug\";s:19:\"product-edit-addons\";s:7:\"product\";s:26:\"woocommerce-product-addons\";s:14:\"show-if-active\";a:2:{i:0;s:25:\"woocommerce-subscriptions\";i:1;s:20:\"woocommerce-bookings\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-add-ons.svg\";s:5:\"title\";s:15:\"Product Add-Ons\";s:4:\"copy\";s:93:\"Offer add-ons like gift wrapping, special messages or other special options for your products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-add-ons/\";}i:4;a:9:{s:4:\"slug\";s:46:\"product-edit-woocommerce-subscriptions-gifting\";s:7:\"product\";s:33:\"woocommerce-subscriptions-gifting\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:116:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/gifting-for-subscriptions.svg\";s:5:\"title\";s:25:\"Gifting for Subscriptions\";s:4:\"copy\";s:70:\"Let customers buy subscriptions for others - they\'re the ultimate gift\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/woocommerce-subscriptions-gifting/\";}i:5;a:9:{s:4:\"slug\";s:42:\"product-edit-teams-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-for-teams\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:112:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/teams-for-memberships.svg\";s:5:\"title\";s:21:\"Teams for Memberships\";s:4:\"copy\";s:123:\"Adds B2B functionality to WooCommerce Memberships, allowing sites to sell team, group, corporate, or family member accounts\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/teams-woocommerce-memberships/\";}i:6;a:8:{s:4:\"slug\";s:29:\"product-edit-variation-images\";s:7:\"product\";s:39:\"woocommerce-additional-variation-images\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:118:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/additional-variation-images.svg\";s:5:\"title\";s:27:\"Additional Variation Images\";s:4:\"copy\";s:72:\"Showcase your products in the best light with a image for each variation\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:73:\"https://woocommerce.com/products/woocommerce-additional-variation-images/\";}i:7;a:9:{s:4:\"slug\";s:47:\"product-edit-woocommerce-subscription-downloads\";s:7:\"product\";s:34:\"woocommerce-subscription-downloads\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:113:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/subscription-downloads.svg\";s:5:\"title\";s:22:\"Subscription Downloads\";s:4:\"copy\";s:57:\"Give customers special downloads with their subscriptions\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:68:\"https://woocommerce.com/products/woocommerce-subscription-downloads/\";}i:8;a:8:{s:4:\"slug\";s:31:\"product-edit-min-max-quantities\";s:7:\"product\";s:30:\"woocommerce-min-max-quantities\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:109:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/min-max-quantities.svg\";s:5:\"title\";s:18:\"Min/Max Quantities\";s:4:\"copy\";s:81:\"Specify minimum and maximum allowed product quantities for orders to be completed\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/min-max-quantities/\";}i:9;a:8:{s:4:\"slug\";s:28:\"product-edit-name-your-price\";s:7:\"product\";s:27:\"woocommerce-name-your-price\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/name-your-price.svg\";s:5:\"title\";s:15:\"Name Your Price\";s:4:\"copy\";s:70:\"Let customers pay what they want - useful for donations, tips and more\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/name-your-price/\";}i:10;a:8:{s:4:\"slug\";s:42:\"product-edit-woocommerce-one-page-checkout\";s:7:\"product\";s:29:\"woocommerce-one-page-checkout\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/one-page-checkout.svg\";s:5:\"title\";s:17:\"One Page Checkout\";s:4:\"copy\";s:92:\"Don\'t make customers click around - let them choose products, checkout & pay all on one page\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/woocommerce-one-page-checkout/\";}i:11;a:4:{s:4:\"slug\";s:19:\"orders-empty-header\";s:7:\"context\";s:24:\"orders-list-empty-header\";s:5:\"title\";s:20:\"Tools for your store\";s:13:\"allow-dismiss\";b:0;}i:12;a:6:{s:4:\"slug\";s:30:\"orders-empty-footer-browse-all\";s:7:\"context\";s:24:\"orders-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:13;a:8:{s:4:\"slug\";s:19:\"orders-empty-zapier\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:18:\"woocommerce-zapier\";s:4:\"icon\";s:97:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/zapier.svg\";s:5:\"title\";s:6:\"Zapier\";s:4:\"copy\";s:88:\"Save time and increase productivity by connecting your store to more than 1000+ services\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/woocommerce-zapier/\";}i:14;a:8:{s:4:\"slug\";s:30:\"orders-empty-shipment-tracking\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:29:\"woocommerce-shipment-tracking\";s:4:\"icon\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/shipment-tracking.svg\";s:5:\"title\";s:17:\"Shipment Tracking\";s:4:\"copy\";s:86:\"Let customers know when their orders will arrive by adding shipment tracking to emails\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:51:\"https://woocommerce.com/products/shipment-tracking/\";}i:15;a:8:{s:4:\"slug\";s:32:\"orders-empty-table-rate-shipping\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:31:\"woocommerce-table-rate-shipping\";s:4:\"icon\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/table-rate-shipping.svg\";s:5:\"title\";s:19:\"Table Rate Shipping\";s:4:\"copy\";s:122:\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/table-rate-shipping/\";}i:16;a:8:{s:4:\"slug\";s:40:\"orders-empty-shipping-carrier-extensions\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:4:\"icon\";s:118:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/shipping-carrier-extensions.svg\";s:5:\"title\";s:27:\"Shipping Carrier Extensions\";s:4:\"copy\";s:116:\"Show live rates from FedEx, UPS, USPS and more directly on your store - never under or overcharge for shipping again\";s:11:\"button-text\";s:13:\"Find Carriers\";s:8:\"promoted\";s:26:\"category-shipping-carriers\";s:3:\"url\";s:99:\"https://woocommerce.com/product-category/woocommerce-extensions/shipping-methods/shipping-carriers/\";}i:17;a:8:{s:4:\"slug\";s:32:\"orders-empty-google-product-feed\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-product-feeds\";s:4:\"icon\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/google-product-feed.svg\";s:5:\"title\";s:19:\"Google Product Feed\";s:4:\"copy\";s:76:\"Increase sales by letting customers find you when they\'re shopping on Google\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/google-product-feed/\";}i:18;a:4:{s:4:\"slug\";s:35:\"products-empty-header-product-types\";s:7:\"context\";s:26:\"products-list-empty-header\";s:5:\"title\";s:23:\"Other types of products\";s:13:\"allow-dismiss\";b:0;}i:19;a:6:{s:4:\"slug\";s:32:\"products-empty-footer-browse-all\";s:7:\"context\";s:26:\"products-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:20;a:8:{s:4:\"slug\";s:30:\"products-empty-product-vendors\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-vendors\";s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-vendors.svg\";s:5:\"title\";s:15:\"Product Vendors\";s:4:\"copy\";s:47:\"Turn your store into a multi-vendor marketplace\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-vendors/\";}i:21;a:8:{s:4:\"slug\";s:26:\"products-empty-memberships\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:23:\"woocommerce-memberships\";s:4:\"icon\";s:102:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/memberships.svg\";s:5:\"title\";s:11:\"Memberships\";s:4:\"copy\";s:76:\"Give members access to restricted content or products, for a fee or for free\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:57:\"https://woocommerce.com/products/woocommerce-memberships/\";}i:22;a:9:{s:4:\"slug\";s:35:\"products-empty-woocommerce-deposits\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-deposits\";s:14:\"show-if-active\";a:1:{i:0;s:20:\"woocommerce-bookings\";}s:4:\"icon\";s:99:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/deposits.svg\";s:5:\"title\";s:8:\"Deposits\";s:4:\"copy\";s:75:\"Make it easier for customers to pay by offering a deposit or a payment plan\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-deposits/\";}i:23;a:8:{s:4:\"slug\";s:40:\"products-empty-woocommerce-subscriptions\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-subscriptions\";s:4:\"icon\";s:104:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/subscriptions.svg\";s:5:\"title\";s:13:\"Subscriptions\";s:4:\"copy\";s:97:\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:59:\"https://woocommerce.com/products/woocommerce-subscriptions/\";}i:24;a:8:{s:4:\"slug\";s:35:\"products-empty-woocommerce-bookings\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-bookings\";s:4:\"icon\";s:99:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/bookings.svg\";s:5:\"title\";s:8:\"Bookings\";s:4:\"copy\";s:99:\"Allow customers to book appointments, make reservations or rent equipment without leaving your site\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-bookings/\";}i:25;a:8:{s:4:\"slug\";s:30:\"products-empty-product-bundles\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-bundles\";s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-bundles.svg\";s:5:\"title\";s:15:\"Product Bundles\";s:4:\"copy\";s:49:\"Offer customizable bundles and assembled products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-bundles/\";}}s:7:\"updated\";i:1610193299;}', 'no'),
(714, 'woocommerce_onboarding_homepage_post_id', '88', 'yes'),
(953, 'woocommerce_tracker_last_send', '1610034993', 'yes'),
(896, 'kk_wc_welcome_message_dismissed', '1', 'yes'),
(1192, 'woocommerce_default_homepage_layout', 'two_columns', 'no'),
(1208, 'can_compress_scripts', '1', 'no'),
(1334, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'yes'),
(1202, 'auto_update_core_dev', 'enabled', 'yes'),
(1203, 'auto_update_core_minor', 'enabled', 'yes'),
(1204, 'auto_update_core_major', 'unset', 'yes'),
(1683, '_transient_product_query-transient-version', '1610509014', 'yes'),
(1690, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:0;s:3:\"all\";i:0;s:9:\"moderated\";i:0;s:8:\"approved\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(1825, '_transient_shipping-transient-version', '1610279374', 'yes'),
(1693, '_transient_timeout_wc_product_loop_2055ee2d1ec59268178c9ffb971d9414', '1612999613', 'no'),
(1694, '_transient_wc_product_loop_2055ee2d1ec59268178c9ffb971d9414', 'a:2:{s:7:\"version\";s:10:\"1610407608\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:6:{i:0;i:185;i:1;i:183;i:2;i:181;i:3;i:178;i:4;i:175;i:5;i:86;}s:5:\"total\";i:6;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:10;s:12:\"current_page\";i:1;}}', 'no'),
(2218, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.6.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.6-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.6-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.6\";s:7:\"version\";s:3:\"5.6\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1610507708;s:15:\"version_checked\";s:3:\"5.6\";s:12:\"translations\";a:0:{}}', 'no'),
(2913, '_site_transient_timeout_theme_roots', '1610509508', 'no'),
(2914, '_site_transient_theme_roots', 'a:2:{s:10:\"cookie-cms\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";}', 'no'),
(2915, '_transient_timeout__woocommerce_helper_updates', '1610550908', 'no'),
(2916, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1610507708;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(2600, 'duplicator_settings', 'a:17:{s:7:\"version\";s:8:\"1.3.40.1\";s:18:\"uninstall_settings\";b:1;s:15:\"uninstall_files\";b:1;s:16:\"uninstall_tables\";b:1;s:13:\"package_debug\";b:0;s:17:\"package_mysqldump\";b:1;s:22:\"package_mysqldump_path\";s:0:\"\";s:24:\"package_phpdump_qrylimit\";s:3:\"100\";s:17:\"package_zip_flush\";b:0;s:19:\"installer_name_mode\";s:6:\"simple\";s:16:\"storage_position\";s:6:\"wpcont\";s:20:\"storage_htaccess_off\";b:0;s:18:\"archive_build_mode\";i:2;s:17:\"skip_archive_scan\";b:0;s:21:\"unhook_third_party_js\";b:0;s:22:\"unhook_third_party_css\";b:0;s:17:\"active_package_id\";i:-1;}', 'yes'),
(2601, 'duplicator_lite_inst_hash_notice', '1', 'yes'),
(2602, 'duplicator_version_plugin', '1.3.40.1', 'yes'),
(2603, 'duplicator_ui_view_state', 'a:1:{s:24:\"dup-pack-installer-panel\";s:1:\"1\";}', 'yes'),
(2807, '_transient_timeout_wc_tracks_blog_details', '1610536062', 'no'),
(2808, '_transient_wc_tracks_blog_details', 'a:4:{s:3:\"url\";s:35:\"http://localhost/shop-cms-wordpress\";s:9:\"blog_lang\";s:5:\"en_US\";s:7:\"blog_id\";N;s:14:\"products_count\";s:2:\"24\";}', 'no'),
(2809, '_transient_timeout_wc_onboarding_product_data', '1610536063', 'no');
INSERT INTO `hk5_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(2810, '_transient_wc_onboarding_product_data', 'a:6:{s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:17:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Tue, 12 Jan 2021 11:07:43 GMT\";s:12:\"content-type\";s:31:\"application/json; charset=UTF-8\";s:14:\"content-length\";s:5:\"11456\";s:12:\"x-robots-tag\";s:7:\"noindex\";s:4:\"link\";s:60:\"<https://woocommerce.com/wp-json/>; rel=\"https://api.w.org/\"\";s:22:\"x-content-type-options\";s:7:\"nosniff\";s:29:\"access-control-expose-headers\";s:33:\"X-WP-Total, X-WP-TotalPages, Link\";s:28:\"access-control-allow-headers\";s:73:\"Authorization, X-WP-Nonce, Content-Disposition, Content-MD5, Content-Type\";s:13:\"cache-control\";s:10:\"max-age=60\";s:5:\"allow\";s:3:\"GET\";s:16:\"content-encoding\";s:4:\"gzip\";s:4:\"x-rq\";s:15:\"hkg2 87 20 3199\";s:3:\"age\";s:2:\"12\";s:7:\"x-cache\";s:3:\"hit\";s:4:\"vary\";s:23:\"Accept-Encoding, Origin\";s:13:\"accept-ranges\";s:5:\"bytes\";}}s:4:\"body\";s:48113:\"{\"products\":[{\"title\":\"WooCommerce Google Analytics\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/GA-Dark.png\",\"excerpt\":\"Understand your customers and increase revenue with world\\u2019s leading analytics platform - integrated with WooCommerce for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"2d21f7de14dfb8e9885a4622be701ddf\",\"slug\":\"woocommerce-google-analytics-integration\",\"id\":1442927},{\"title\":\"WooCommerce Tax\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Tax-Dark.png\",\"excerpt\":\"Get live rates, discounted labels, tracking numbers, and more \\u2013 without leaving your dashboard.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/tax\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"f31b3b9273cce188cc2b27f7849d02dd\",\"slug\":\"woocommerce-services\",\"id\":3220291},{\"title\":\"Stripe\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Stripe-Dark-1.png\",\"excerpt\":\"Accept all major debit and credit cards as well as local payment methods with Stripe.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/stripe\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"50bb7a985c691bb943a9da4d2c8b5efd\",\"slug\":\"woocommerce-gateway-stripe\",\"id\":18627},{\"title\":\"Jetpack\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Jetpack-Dark.png\",\"excerpt\":\"Power up and protect your store with Jetpack\\r\\n\\r\\nFor free security, insights and monitoring, connect to Jetpack. It\'s everything you need for a strong, secure start.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/jetpack\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"d5bfef9700b62b2b132c74c74c3193eb\",\"slug\":\"jetpack\",\"id\":2725249},{\"title\":\"Facebook for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Facebook-Dark.png\",\"excerpt\":\"Get the Official Facebook for WooCommerce plugin for three powerful ways to help grow your business.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/facebook\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"0ea4fe4c2d7ca6338f8a322fb3e4e187\",\"slug\":\"facebook-for-woocommerce\",\"id\":2127297},{\"title\":\"Amazon Pay\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Amazon-Pay-Dark.png\",\"excerpt\":\"Amazon Pay is embedded in your WooCommerce store. Transactions take place via\\u00a0Amazon widgets, so the buyer never leaves your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/pay-with-amazon\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"9865e043bbbe4f8c9735af31cb509b53\",\"slug\":\"woocommerce-gateway-amazon-payments-advanced\",\"id\":238816},{\"title\":\"Square for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Square-Dark.png\",\"excerpt\":\"Accepting payments is easy with Square. Clear rates, fast deposits (1-2 business days). Sell online and in person, and sync all payments, items and inventory.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/square\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e907be8b86d7df0c8f8e0d0020b52638\",\"slug\":\"woocommerce-square\",\"id\":1770503},{\"title\":\"WooCommerce Shipping\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Dark-1.png\",\"excerpt\":\"Print USPS and DHL labels right from your WooCommerce dashboard and instantly save up to 90%. WooCommerce Shipping is free to use and saves you time and money.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"f31b3b9273cce188cc2b27f7849d02dd\",\"slug\":\"woocommerce-services\",\"id\":2165910},{\"title\":\"WooCommerce Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Pay-Dark.png\",\"excerpt\":\"The only payment method designed exclusively for WooCommerce, by WooCommerce. Securely accept major credit and debit cards on your site. View and manage your transactions within your WordPress dashboard.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-payments\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"8c6319ca-8f41-4e69-be63-6b15ee37773b\",\"slug\":\"woocommerce-payments\",\"id\":5278104},{\"title\":\"WooCommerce Subscriptions\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Subscriptions-Dark.png\",\"excerpt\":\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscriptions\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"6115e6d7e297b623a169fdcf5728b224\",\"slug\":\"woocommerce-subscriptions\",\"id\":27147},{\"title\":\"Mailchimp for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/09\\/logo-mailchimp-dark-v2.png\",\"excerpt\":\"Increase traffic, drive repeat purchases, and personalize your marketing when you connect to Mailchimp.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/mailchimp-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"b4481616ebece8b1ff68fc59b90c1a91\",\"slug\":\"mailchimp-for-woocommerce\",\"id\":2545166},{\"title\":\"PayPal Checkout\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Paypal-Dark.png\",\"excerpt\":\"PayPal Checkout now with Smart Payment Buttons\\u2122, dynamically displays, PayPal, Venmo, PayPal Credit, or other local payment options in a single stack giving customers the choice to pay with their preferred option.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-paypal-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"69e6cba62ac4021df9e117cc3f716d07\",\"slug\":\"woocommerce-gateway-paypal-express-checkout\",\"id\":1597922},{\"title\":\"ShipStation Integration\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Shipstation-Dark.png\",\"excerpt\":\"Fulfill all your Woo orders (and wherever else you sell) quickly and easily using ShipStation. Try it free for 30 days today!\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipstation-integration\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"9de8640767ba64237808ed7f245a49bb\",\"slug\":\"woocommerce-shipstation-integration\",\"id\":18734},{\"title\":\"PayFast Payment Gateway\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Payfast-Dark-1.png\",\"excerpt\":\"Take payments on your WooCommerce store via PayFast (redirect method).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/payfast-payment-gateway\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"557bf07293ad916f20c207c6c9cd15ff\",\"slug\":\"woocommerce-payfast-gateway\",\"id\":18596},{\"title\":\"Product Add-Ons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-Add-Ons-Dark.png\",\"excerpt\":\"Offer add-ons like gift wrapping, special messages or other special options for your products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"147d0077e591e16db9d0d67daeb8c484\",\"slug\":\"woocommerce-product-addons\",\"id\":18618},{\"title\":\"Google Ads &#038; Marketing by Kliken\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/02\\/GA-for-Woo-Logo-374x192px-qu3duk.png\",\"excerpt\":\"Get in front of shoppers and drive traffic to your store so you can grow your business with Smart Shopping Campaigns and free listings.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-ads-and-marketing\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"bf66e173-a220-4da7-9512-b5728c20fc16\",\"slug\":\"kliken-marketing-for-google\",\"id\":3866145},{\"title\":\"USPS Shipping Method\",\"image\":\"\",\"excerpt\":\"Get shipping rates from the USPS API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/usps-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"83d1524e8f5f1913e58889f83d442c32\",\"slug\":\"woocommerce-shipping-usps\",\"id\":18657},{\"title\":\"Braintree for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/02\\/braintree-black-copy.png\",\"excerpt\":\"Accept PayPal, credit cards and debit cards with a single payment gateway solution \\u2014 PayPal Powered by Braintree.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-paypal-powered-by-braintree\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"27f010c8e34ca65b205ddec88ad14536\",\"slug\":\"woocommerce-gateway-paypal-powered-by-braintree\",\"id\":1489837},{\"title\":\"WooCommerce Memberships\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/Thumbnail-Memberships-updated.png\",\"excerpt\":\"Give members access to restricted content or products, for a fee or for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-memberships\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"9288e7609ad0b487b81ef6232efa5cfc\",\"slug\":\"woocommerce-memberships\",\"id\":958589},{\"title\":\"UPS Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/UPS-Shipping-Method-Dark.png\",\"excerpt\":\"Get shipping rates from the UPS API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/ups-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8dae58502913bac0fbcdcaba515ea998\",\"slug\":\"woocommerce-shipping-ups\",\"id\":18665},{\"title\":\"Product Bundles\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-PB.png?v=1\",\"excerpt\":\"Offer personalized product bundles, bulk discount packages and assembled\\u00a0products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-bundles\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa2518b5-ab19-4b75-bde9-60ca51e20f28\",\"slug\":\"woocommerce-product-bundles\",\"id\":18716},{\"title\":\"Table Rate Shipping\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Product-Table-Rate-Shipping-Dark.png\",\"excerpt\":\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/table-rate-shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"3034ed8aff427b0f635fe4c86bbf008a\",\"slug\":\"woocommerce-table-rate-shipping\",\"id\":18718},{\"title\":\"Checkout Field Editor\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Checkout-Field-Editor-Dark.png\",\"excerpt\":\"Optimize your checkout process by adding, removing or editing fields to suit your needs.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-field-editor\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"2b8029f0d7cdd1118f4d843eb3ab43ff\",\"slug\":\"woocommerce-checkout-field-editor\",\"id\":184594},{\"title\":\"Shipment Tracking\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Tracking-Dark-1.png\",\"excerpt\":\"Add shipment tracking information to your orders.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipment-tracking\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"1968e199038a8a001c9f9966fd06bf88\",\"slug\":\"woocommerce-shipment-tracking\",\"id\":18693},{\"title\":\"WooCommerce Bookings\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Dark.png\",\"excerpt\":\"Allow customers to book appointments, make reservations or rent equipment without leaving your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/hotel\\/\",\"price\":\"&#36;249.00\",\"hash\":\"911c438934af094c2b38d5560b9f50f3\",\"slug\":\"WooCommerce Bookings\",\"id\":390890},{\"title\":\"Authorize.Net\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/04\\/Thumbnail-Authorize.net-updated.png\",\"excerpt\":\"Authorize.Net gateway with support for pre-orders and subscriptions.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/authorize-net\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8b61524fe53add7fdd1a8d1b00b9327d\",\"slug\":\"woocommerce-gateway-authorize-net-cim\",\"id\":178481},{\"title\":\"Amazon and eBay Integration for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/10\\/wooapplogoretina.png\",\"excerpt\":\"Sell on Amazon and eBay directly from your WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/amazon-ebay-integration\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e4000666-9275-4c71-8619-be61fb41c9f9\",\"slug\":\"woocommerce-amazon-ebay-integration\",\"id\":3545890},{\"title\":\"WooCommerce Customer \\/ Order \\/ Coupon Export\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/Thumbnail-Customer-Order-Coupon-Export-updated.png\",\"excerpt\":\"Export customers, orders, and coupons from WooCommerce manually or on an automated schedule.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/ordercustomer-csv-export\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"914de15813a903c767b55445608bf290\",\"slug\":\"woocommerce-customer-order-csv-export\",\"id\":18652},{\"title\":\"Min\\/Max Quantities\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Min-Max-Qua-Dark.png\",\"excerpt\":\"Specify minimum and maximum allowed product quantities for orders to be completed.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/minmax-quantities\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"2b5188d90baecfb781a5aa2d6abb900a\",\"slug\":\"woocommerce-min-max-quantities\",\"id\":18616},{\"title\":\"LiveChat for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/11\\/LC_woo_regular-zmiaym.png\",\"excerpt\":\"Live Chat and messaging platform for sales and support -- increase average order value and overall sales through live conversations.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/livechat\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.livechat.com\\/livechat-for-ecommerce\\/?a=woocommerce&amp;utm_source=woocommerce.com&amp;utm_medium=integration&amp;utm_campaign=woocommerce.com\",\"price\":\"&#36;0.00\",\"hash\":\"5344cc1f-ed4a-4d00-beff-9d67f6d372f3\",\"slug\":\"livechat-woocommerce\",\"id\":1348888},{\"title\":\"Smart Coupons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/10\\/wc-product-smart-coupons.png\",\"excerpt\":\"Everything you need for discounts, coupons, credits, gift cards, product giveaways, offers, and promotions. Most popular and complete coupons plugin for WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/smart-coupons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo.storeapps.org\\/?demo=sc\",\"price\":\"&#36;99.00\",\"hash\":\"05c45f2aa466106a466de4402fff9dde\",\"slug\":\"woocommerce-smart-coupons\",\"id\":18729},{\"title\":\"FedEx Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/01\\/FedEx_Logo_Wallpaper.jpeg\",\"excerpt\":\"Get shipping rates from the FedEx API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/fedex-shipping-module\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1a48b598b47a81559baadef15e320f64\",\"slug\":\"woocommerce-shipping-fedex\",\"id\":18620},{\"title\":\"Product CSV Import Suite\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-CSV-Import-Dark.png\",\"excerpt\":\"Import, merge, and export products and variations to and from WooCommerce using a CSV file.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-csv-import-suite\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"7ac9b00a1fe980fb61d28ab54d167d0d\",\"slug\":\"woocommerce-product-csv-import-suite\",\"id\":18680},{\"title\":\"Follow-Ups\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Follow-Ups-Dark.png\",\"excerpt\":\"Automatically contact customers after purchase - be it everyone, your most loyal or your biggest spenders - and keep your store top-of-mind.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/follow-up-emails\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"05ece68fe94558e65278fe54d9ec84d2\",\"slug\":\"woocommerce-follow-up-emails\",\"id\":18686},{\"title\":\"Dynamic Pricing\",\"image\":\"\",\"excerpt\":\"Bulk discounts, role-based pricing and much more\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/dynamic-pricing\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"9a41775bb33843f52c93c922b0053986\",\"slug\":\"woocommerce-dynamic-pricing\",\"id\":18643},{\"title\":\"Name Your Price\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/09\\/nyp-icon-dark-v83owf.png\",\"excerpt\":\"Allow customers to define the product price. Also useful for accepting user-set donations.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/name-your-price\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"31b4e11696cd99a3c0572975a84f1c08\",\"slug\":\"woocommerce-name-your-price\",\"id\":18738},{\"title\":\"WooCommerce Zapier\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/woocommerce-zapier-logo.png\",\"excerpt\":\"Integrate with 2000+ cloud apps and services today.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-zapier\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;59.00\",\"hash\":\"0782bdbe932c00f4978850268c6cfe40\",\"slug\":\"woocommerce-zapier\",\"id\":243589},{\"title\":\"WooCommerce Print Invoices &amp; Packing lists\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/03\\/Thumbnail-Print-Invoices-Packing-lists-updated.png\",\"excerpt\":\"Generate invoices, packing slips, and pick lists for your WooCommerce orders.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/print-invoices-packing-lists\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"465de1126817cdfb42d97ebca7eea717\",\"slug\":\"woocommerce-pip\",\"id\":18666},{\"title\":\"Product Vendors\",\"image\":\"\",\"excerpt\":\"Turn your store into a multi-vendor marketplace\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-vendors\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"a97d99fccd651bbdd728f4d67d492c31\",\"slug\":\"woocommerce-product-vendors\",\"id\":219982},{\"title\":\"Google Product Feed\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2011\\/11\\/logo-regular-lscryp.png\",\"excerpt\":\"Allows you to create real-time product &amp; review feeds to supply product information to Google Merchant Center for setting up Google Product Ads. Also supports Bing Merchant Centre.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-product-feed\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"d55b4f852872025741312839f142447e\",\"slug\":\"woocommerce-product-feeds\",\"id\":18619},{\"title\":\"WooCommerce Accommodation Bookings\",\"image\":\"\",\"excerpt\":\"Book accommodation using WooCommerce and the WooCommerce Bookings extension.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-accommodation-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"99b2a7a4af90b6cefd2a733b3b1f78e7\",\"slug\":\"woocommerce-accommodation-bookings\",\"id\":1412069},{\"title\":\"PayPal Payments Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Paypal-Payments-Pro-Dark.png\",\"excerpt\":\"Take credit card payments directly on your checkout using PayPal Pro.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/paypal-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"6d23ba7f0e0198937c0029f9e865b40e\",\"slug\":\"woocommerce-gateway-paypal-pro\",\"id\":18594},{\"title\":\"WooCommerce Brands\",\"image\":\"\",\"excerpt\":\"Create, assign and list brands for products, and allow customers to view by brand.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/brands\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"8a88c7cbd2f1e73636c331c7a86f818c\",\"slug\":\"woocommerce-brands\",\"id\":18737},{\"title\":\"Gravity Forms Product Add-ons\",\"image\":\"\",\"excerpt\":\"Powerful product add-ons, Gravity style\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/gravity-forms-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/gravity-forms\\/\",\"price\":\"&#36;99.00\",\"hash\":\"a6ac0ab1a1536e3a357ccf24c0650ed0\",\"slug\":\"woocommerce-gravityforms-product-addons\",\"id\":18633},{\"title\":\"Xero\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/08\\/xero2.png\",\"excerpt\":\"Save time with automated sync between WooCommerce and your Xero account.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/xero\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"f0dd29d338d3c67cf6cee88eddf6869b\",\"slug\":\"woocommerce-xero\",\"id\":18733},{\"title\":\"Composite Products\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-CP.png?v=1\",\"excerpt\":\"Create product kit builders and custom product configurators using existing products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/composite-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"0343e0115bbcb97ccd98442b8326a0af\",\"slug\":\"woocommerce-composite-products\",\"id\":216836},{\"title\":\"Advanced Notifications\",\"image\":\"\",\"excerpt\":\"Easily setup \\\"new order\\\" and stock email notifications for multiple recipients of your choosing.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/advanced-notifications\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"112372c44b002fea2640bd6bfafbca27\",\"slug\":\"woocommerce-advanced-notifications\",\"id\":18740},{\"title\":\"Australia Post Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/australia-post.gif\",\"excerpt\":\"Get shipping rates for your WooCommerce store from the Australia Post API, which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/australia-post-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1dbd4dc6bd91a9cda1bd6b9e7a5e4f43\",\"slug\":\"woocommerce-shipping-australia-post\",\"id\":18622},{\"title\":\"WooCommerce Points and Rewards\",\"image\":\"\",\"excerpt\":\"Reward your customers for purchases and other actions with points which can be redeemed for discounts.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-points-and-rewards\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"1649b6cca5da8b923b01ca56b5cdd246\",\"slug\":\"woocommerce-points-and-rewards\",\"id\":210259},{\"title\":\"WooCommerce Paid Courses\",\"image\":\"\",\"excerpt\":\"Sell your online courses using the most popular eCommerce platform on the web \\u2013 WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-paid-courses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"bad2a02a063555b7e2bee59924690763\",\"slug\":\"woothemes-sensei\",\"id\":152116},{\"title\":\"Canada Post Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/canada-post.png\",\"excerpt\":\"Get shipping rates from the Canada Post Ratings API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/canada-post-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ac029cdf3daba20b20c7b9be7dc00e0e\",\"slug\":\"woocommerce-shipping-canada-post\",\"id\":18623},{\"title\":\"WooCommerce AvaTax\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/01\\/Thumbnail-Avalara-updated.png\",\"excerpt\":\"Get 100% accurate sales tax calculations and on time tax return filing. No more tracking sales tax rates, rules, or jurisdictional boundaries.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-avatax\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"57077a4b28ba71cacf692bcf4a1a7f60\",\"slug\":\"woocommerce-avatax\",\"id\":1389326},{\"title\":\"AutomateWoo\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-AutomateWoo-Dark-1.png\",\"excerpt\":\"Powerful marketing automation for WooCommerce. AutomateWoo has the tools you need to grow your store and make more money.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/automatewoo\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"ba9299b8-1dba-4aa0-a313-28bc1755cb88\",\"slug\":\"automatewoo\",\"id\":4652610},{\"title\":\"WooCommerce Subscription Downloads\",\"image\":\"\",\"excerpt\":\"Offer additional downloads to your subscribers, via downloadable products listed in your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscription-downloads\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5be9e21c13953253e4406d2a700382ec\",\"slug\":\"woocommerce-subscription-downloads\",\"id\":420458},{\"title\":\"WooCommerce Pre-Orders\",\"image\":\"\",\"excerpt\":\"Allow customers to order products before they are available.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-pre-orders\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"b2dc75e7d55e6f5bbfaccb59830f66b7\",\"slug\":\"woocommerce-pre-orders\",\"id\":178477},{\"title\":\"Klarna Checkout\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/01\\/Partner_marketing_Klarna_Checkout_Black-1.png\",\"excerpt\":\"Klarna Checkout is a full checkout experience embedded on your site that includes all popular payment methods (Pay Now, Pay Later, Financing, Installments).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/klarna-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.krokedil.se\\/klarnacheckout\\/\",\"price\":\"&#36;0.00\",\"hash\":\"90f8ce584e785fcd8c2d739fd4f40d78\",\"slug\":\"klarna-checkout-for-woocommerce\",\"id\":2754152},{\"title\":\"Catalog Visibility Options\",\"image\":\"\",\"excerpt\":\"Transform WooCommerce into an online catalog by removing eCommerce functionality\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/catalog-visibility-options\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"12e791110365fdbb5865c8658907967e\",\"slug\":\"woocommerce-catalog-visibility-options\",\"id\":18648},{\"title\":\"WooCommerce Additional Variation Images\",\"image\":\"\",\"excerpt\":\"Add gallery images per variation on variable products within WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-additional-variation-images\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/storefront\\/product\\/woo-single-1\\/\",\"price\":\"&#36;49.00\",\"hash\":\"c61dd6de57dcecb32bd7358866de4539\",\"slug\":\"woocommerce-additional-variation-images\",\"id\":477384},{\"title\":\"WooCommerce Deposits\",\"image\":\"\",\"excerpt\":\"Enable customers to pay for products using a deposit or a payment plan.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-deposits\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;179.00\",\"hash\":\"de192a6cf12c4fd803248da5db700762\",\"slug\":\"woocommerce-deposits\",\"id\":977087},{\"title\":\"eWAY\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/eway-logo-3000-2000.jpg\",\"excerpt\":\"Take credit card payments securely via eWay (SG, MY, HK, AU, and NZ) keeping customers on your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/eway\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"2c497769d98d025e0d340cd0b5ea5da1\",\"slug\":\"woocommerce-gateway-eway\",\"id\":18604},{\"title\":\"Royal Mail\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/04\\/royalmail.png\",\"excerpt\":\"Offer Royal Mail shipping rates to your customers\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/royal-mail\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"03839cca1a16c4488fcb669aeb91a056\",\"slug\":\"woocommerce-shipping-royalmail\",\"id\":182719},{\"title\":\"Amazon S3 Storage\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/amazon.png\",\"excerpt\":\"Serve digital products via Amazon S3\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/amazon-s3-storage\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"473bf6f221b865eff165c97881b473bb\",\"slug\":\"woocommerce-amazon-s3-storage\",\"id\":18663},{\"title\":\"Cart Add-ons\",\"image\":\"\",\"excerpt\":\"A powerful tool for driving incremental and impulse purchases by customers once they are in the shopping cart\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/cart-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"3a8ef25334396206f5da4cf208adeda3\",\"slug\":\"woocommerce-cart-add-ons\",\"id\":18717},{\"title\":\"Shipping Multiple Addresses\",\"image\":\"\",\"excerpt\":\"Allow your customers to ship individual items in a single order to multiple addresses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipping-multiple-addresses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa0eb6f777846d329952d5b891d6f8cc\",\"slug\":\"woocommerce-shipping-multiple-addresses\",\"id\":18741},{\"title\":\"Sequential Order Numbers Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/05\\/Thumbnail-Sequential-Order-Numbers-Pro-updated.png\",\"excerpt\":\"Tame your order numbers! Advanced &amp; sequential order numbers with optional prefixes \\/ suffixes\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sequential-order-numbers-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"0b18a2816e016ba9988b93b1cd8fe766\",\"slug\":\"woocommerce-sequential-order-numbers-pro\",\"id\":18688},{\"title\":\"WooCommerce Checkout Add-Ons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/07\\/Thumbnail-Checkout-Add-Ons-updated.png\",\"excerpt\":\"Highlight relevant products, offers like free shipping and other up-sells during checkout.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8fdca00b4000b7a8cc26371d0e470a8f\",\"slug\":\"woocommerce-checkout-add-ons\",\"id\":466854},{\"title\":\"Conditional Shipping and Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-CSP.png?v=1\",\"excerpt\":\"Use conditional logic to restrict the shipping and payment options available on your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/conditional-shipping-and-payments\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1f56ff002fa830b77017b0107505211a\",\"slug\":\"woocommerce-conditional-shipping-and-payments\",\"id\":680253},{\"title\":\"WooCommerce Google Analytics Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/01\\/Thumbnail-GAPro-updated.png\",\"excerpt\":\"Add advanced event tracking and enhanced eCommerce tracking to your WooCommerce site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"d8aed8b7306b509eec1589e59abe319f\",\"slug\":\"woocommerce-google-analytics-pro\",\"id\":1312497},{\"title\":\"WooCommerce Order Status Manager\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/02\\/Thumbnail-Order-Status-Manager-updated.png\",\"excerpt\":\"Create, edit, and delete completely custom order statuses and integrate them seamlessly into your order management flow.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"51fd9ab45394b4cad5a0ebf58d012342\",\"slug\":\"woocommerce-order-status-manager\",\"id\":588398},{\"title\":\"Bulk Stock Management\",\"image\":\"\",\"excerpt\":\"Edit product and variation stock levels in bulk via this handy interface\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bulk-stock-management\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"02f4328d52f324ebe06a78eaaae7934f\",\"slug\":\"woocommerce-bulk-stock-management\",\"id\":18670},{\"title\":\"First Data\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/Thumbnail-FirstData-updated.png\",\"excerpt\":\"FirstData gateway for WooCommerce\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/firstdata\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"eb3e32663ec0810592eaf0d097796230\",\"slug\":\"woocommerce-gateway-firstdata\",\"id\":18645},{\"title\":\"TaxJar\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/10\\/taxjar-logotype.png\",\"excerpt\":\"Save hours every month by putting your sales tax on autopilot. Automated, multi-state sales tax calculation, reporting, and filing for your WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/taxjar\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"12072d8e-e933-4561-97b1-9db3c7eeed91\",\"slug\":\"taxjar-simplified-taxes-for-woocommerce\",\"id\":514914},{\"title\":\"WooCommerce One Page Checkout\",\"image\":\"\",\"excerpt\":\"Create special pages where customers can choose products, checkout &amp; pay all on the one page.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-one-page-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"c9ba8f8352cd71b5508af5161268619a\",\"slug\":\"woocommerce-one-page-checkout\",\"id\":527886},{\"title\":\"WooCommerce Email Customizer\",\"image\":\"\",\"excerpt\":\"Connect with your customers with each email you send by visually modifying your email templates via the WordPress Customizer.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-email-customizer\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"bd909fa97874d431f203b5336c7e8873\",\"slug\":\"woocommerce-email-customizer\",\"id\":853277},{\"title\":\"WooSlider\",\"image\":\"\",\"excerpt\":\"WooSlider is the ultimate responsive slideshow WordPress slider plugin\\r\\n\\r\\n\\u00a0\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/wooslider\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/www.wooslider.com\\/\",\"price\":\"&#36;49.00\",\"hash\":\"209d98f3ccde6cc3de7e8732a2b20b6a\",\"slug\":\"wooslider\",\"id\":46506},{\"title\":\"WooCommerce Quick View\",\"image\":\"\",\"excerpt\":\"Show a quick-view button to view product details and add to cart via lightbox popup\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-quick-view\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"619c6e57ce72c49c4b57e15b06eddb65\",\"slug\":\"woocommerce-quick-view\",\"id\":187509},{\"title\":\"Force Sells\",\"image\":\"\",\"excerpt\":\"Force products to be added to the cart\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/force-sells\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"3ebddfc491ca168a4ea4800b893302b0\",\"slug\":\"woocommerce-force-sells\",\"id\":18678},{\"title\":\"WooCommerce Purchase Order Gateway\",\"image\":\"\",\"excerpt\":\"Receive purchase orders via your WooCommerce-powered online store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-purchase-order\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"573a92318244ece5facb449d63e74874\",\"slug\":\"woocommerce-gateway-purchase-order\",\"id\":478542},{\"title\":\"WooCommerce Product Search\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2014\\/10\\/woocommerce-product-search-product-image-1870x960-1-jvsljj.png\",\"excerpt\":\"The perfect search engine helps customers to find and buy products quickly \\u2013 essential for every WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-product-search\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.itthinx.com\\/wps\\/\",\"price\":\"&#36;49.00\",\"hash\":\"c84cc8ca16ddac3408e6b6c5871133a8\",\"slug\":\"woocommerce-product-search\",\"id\":512174},{\"title\":\"WooCommerce Blocks\",\"image\":\"\",\"excerpt\":\"WooCommerce Blocks offers a range of Gutenberg blocks you can use to build and customise your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gutenberg-products-block\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"c2e9f13a-f90c-4ffe-a8a5-b432399ec263\",\"slug\":\"woo-gutenberg-products-block\",\"id\":3076677},{\"title\":\"WooCommerce Social Login\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/08\\/Thumbnail-Social-Login-updated.png\",\"excerpt\":\"Enable Social Login for seamless checkout and account creation.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-social-login\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demos.skyverge.com\\/woocommerce-social-login\\/\",\"price\":\"&#36;79.00\",\"hash\":\"b231cd6367a79cc8a53b7d992d77525d\",\"slug\":\"woocommerce-social-login\",\"id\":473617},{\"title\":\"Returns and Warranty Requests\",\"image\":\"\",\"excerpt\":\"Manage the RMA process, add warranties to products &amp; let customers request &amp; manage returns \\/ exchanges from their account.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/warranty-requests\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"9b4c41102e6b61ea5f558e16f9b63e25\",\"slug\":\"woocommerce-warranty\",\"id\":228315},{\"title\":\"Product Enquiry Form\",\"image\":\"\",\"excerpt\":\"Allow visitors to contact you directly from the product details page via a reCAPTCHA protected form to enquire about a product.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-enquiry-form\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5a0f5d72519a8ffcc86669f042296937\",\"slug\":\"woocommerce-product-enquiry-form\",\"id\":18601},{\"title\":\"Variation Swatches and Photos\",\"image\":\"\",\"excerpt\":\"Show color and image swatches instead of dropdowns for variable products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/variation-swatches-and-photos\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/swatches-and-photos\\/\",\"price\":\"&#36;99.00\",\"hash\":\"37bea8d549df279c8278878d081b062f\",\"slug\":\"woocommerce-variation-swatches-and-photos\",\"id\":18697},{\"title\":\"WooCommerce Box Office\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-BO-Dark.png\",\"excerpt\":\"Sell tickets for your next event, concert, function, fundraiser or conference directly on your own site\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-box-office\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"e704c9160de318216a8fa657404b9131\",\"slug\":\"woocommerce-box-office\",\"id\":1628717},{\"title\":\"WooCommerce Order Status Control\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/06\\/Thumbnail-Order-Status-Control-updated.png\",\"excerpt\":\"Use this extension to automatically change the order status to \\\"completed\\\" after successful payment.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-control\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"32400e509c7c36dcc1cd368e8267d981\",\"slug\":\"woocommerce-order-status-control\",\"id\":439037},{\"title\":\"Opayo (Formerly SagePay)\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/Opayo_logo_RGB.png\",\"excerpt\":\"Take payments on your WooCommerce store via Opayo (formally SagePay).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sage-pay-form\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"6bc0cca47d0274d8ef9b164f6fbec1cc\",\"slug\":\"woocommerce-gateway-sagepay-form\",\"id\":18599},{\"title\":\"WooCommerce Order Barcodes\",\"image\":\"\",\"excerpt\":\"Generates a unique barcode for each order on your site - perfect for e-tickets, packing slips, reservations and a variety of other uses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-barcodes\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"889835bb29ee3400923653e1e44a3779\",\"slug\":\"woocommerce-order-barcodes\",\"id\":391708},{\"title\":\"QuickBooks Sync for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/04\\/woocommerce-com-logo-1-hyhzbh.png\",\"excerpt\":\"Automatic two-way sync for orders, customers, products, inventory and more between WooCommerce and QuickBooks (Online, Desktop, or POS).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/quickbooks-sync-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"c5e32e20-7c1f-4585-8b15-d930c2d842ac\",\"slug\":\"myworks-woo-sync-for-quickbooks-online\",\"id\":4065824},{\"title\":\"WooCommerce 360\\u00ba Image\",\"image\":\"\",\"excerpt\":\"An easy way to add a dynamic, controllable 360\\u00ba image rotation to your WooCommerce site, by adding a group of images to a product\\u2019s gallery.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-360-image\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"24eb2cfa3738a66bf3b2587876668cd2\",\"slug\":\"woocommerce-360-image\",\"id\":512186},{\"title\":\"EU VAT Number\",\"image\":\"\",\"excerpt\":\"Collect VAT numbers at checkout and remove the VAT charge for eligible EU businesses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/eu-vat-number\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"d2720c4b4bb8d6908e530355b7a2d734\",\"slug\":\"woocommerce-eu-vat-number\",\"id\":18592},{\"title\":\"WooCommerce Photography\",\"image\":\"\",\"excerpt\":\"Sell photos in the blink of an eye using this simple as dragging &amp; dropping interface.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-photography\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ee76e8b9daf1d97ca4d3874cc9e35687\",\"slug\":\"woocommerce-photography\",\"id\":583602},{\"title\":\"QuickBooks Commerce (formerly TradeGecko)\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/09\\/qbo-mark.png\",\"excerpt\":\"Get a wholesale and multichannel inventory &amp; order management platform for your WooCommerce store with QuickBooks Commerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-tradegecko\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"21da7811f7fc1f13ee19daa7415f0ff3\",\"slug\":\"woocommerce-tradegecko\",\"id\":245960},{\"title\":\"Software Add-on\",\"image\":\"\",\"excerpt\":\"Sell License Keys for Software\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/software-add-on\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"79f6dbfe1f1d3a56a86f0509b6d6b04b\",\"slug\":\"woocommerce-software-add-on\",\"id\":18683},{\"title\":\"WooCommerce Tab Manager\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/11\\/Thumbnail-Tab-Manager-updated.png\",\"excerpt\":\"Gives you complete control over your product page tabs, create local and global tabs using a visual drag-and-drop interface, and more.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-tab-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"89a9ac74850855cfe772b4b4ee1e31e0\",\"slug\":\"woocommerce-tab-manager\",\"id\":132195},{\"title\":\"WooCommerce Bookings Availability\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Aval-Dark.png\",\"excerpt\":\"Sell more bookings by presenting a calendar or schedule of available slots in a page or post.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bookings-availability\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"30770d2a-e392-4e82-baaa-76cfc7d02ae3\",\"slug\":\"woocommerce-bookings-availability\",\"id\":4228225},{\"title\":\"Coupon Shortcodes\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/09\\/woocommerce-coupon-shortcodes-product-image-1870x960-1-vc5gux.png\",\"excerpt\":\"Show coupon discount info using shortcodes. Allows to render coupon information and content conditionally, based on the validity of coupons.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/coupon-shortcodes\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"ac5d9d51-70b2-4d8f-8b89-24200eea1394\",\"slug\":\"woocommerce-coupon-shortcodes\",\"id\":244762},{\"title\":\"WooCommerce Products Compare\",\"image\":\"\",\"excerpt\":\"WooCommerce Products Compare will allow your potential customers to easily compare products within your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-products-compare\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"c3ba0a4a3199a0cc7a6112eb24414548\",\"slug\":\"woocommerce-products-compare\",\"id\":853117},{\"title\":\"WooCommerce Store Catalog PDF Download\",\"image\":\"\",\"excerpt\":\"Offer your customers a PDF download of your product catalog, generated by WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-store-catalog-pdf-download\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"79ca7aadafe706364e2d738b7c1090c4\",\"slug\":\"woocommerce-store-catalog-pdf-download\",\"id\":675790},{\"title\":\"Customer\\/Order\\/Coupon CSV Import Suite\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/07\\/Thumbnail-Customer-Order-Coupon-CSV-Import-Suite-updated.png\",\"excerpt\":\"Import both customers and orders into WooCommerce from a CSV file.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/customerorder-csv-import-suite\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"eb00ca8317a0f64dbe185c995e5ea3df\",\"slug\":\"woocommerce-customer-order-csv-import\",\"id\":18709}]}\";s:8:\"response\";a:2:{s:4:\"code\";i:200;s:7:\"message\";s:2:\"OK\";}s:7:\"cookies\";a:0:{}s:8:\"filename\";N;s:13:\"http_response\";O:25:\"WP_HTTP_Requests_Response\":5:{s:11:\"\0*\0response\";O:17:\"Requests_Response\":10:{s:4:\"body\";s:48113:\"{\"products\":[{\"title\":\"WooCommerce Google Analytics\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/GA-Dark.png\",\"excerpt\":\"Understand your customers and increase revenue with world\\u2019s leading analytics platform - integrated with WooCommerce for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"2d21f7de14dfb8e9885a4622be701ddf\",\"slug\":\"woocommerce-google-analytics-integration\",\"id\":1442927},{\"title\":\"WooCommerce Tax\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Tax-Dark.png\",\"excerpt\":\"Get live rates, discounted labels, tracking numbers, and more \\u2013 without leaving your dashboard.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/tax\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"f31b3b9273cce188cc2b27f7849d02dd\",\"slug\":\"woocommerce-services\",\"id\":3220291},{\"title\":\"Stripe\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Stripe-Dark-1.png\",\"excerpt\":\"Accept all major debit and credit cards as well as local payment methods with Stripe.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/stripe\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"50bb7a985c691bb943a9da4d2c8b5efd\",\"slug\":\"woocommerce-gateway-stripe\",\"id\":18627},{\"title\":\"Jetpack\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Jetpack-Dark.png\",\"excerpt\":\"Power up and protect your store with Jetpack\\r\\n\\r\\nFor free security, insights and monitoring, connect to Jetpack. It\'s everything you need for a strong, secure start.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/jetpack\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"d5bfef9700b62b2b132c74c74c3193eb\",\"slug\":\"jetpack\",\"id\":2725249},{\"title\":\"Facebook for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Facebook-Dark.png\",\"excerpt\":\"Get the Official Facebook for WooCommerce plugin for three powerful ways to help grow your business.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/facebook\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"0ea4fe4c2d7ca6338f8a322fb3e4e187\",\"slug\":\"facebook-for-woocommerce\",\"id\":2127297},{\"title\":\"Amazon Pay\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Amazon-Pay-Dark.png\",\"excerpt\":\"Amazon Pay is embedded in your WooCommerce store. Transactions take place via\\u00a0Amazon widgets, so the buyer never leaves your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/pay-with-amazon\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"9865e043bbbe4f8c9735af31cb509b53\",\"slug\":\"woocommerce-gateway-amazon-payments-advanced\",\"id\":238816},{\"title\":\"Square for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Square-Dark.png\",\"excerpt\":\"Accepting payments is easy with Square. Clear rates, fast deposits (1-2 business days). Sell online and in person, and sync all payments, items and inventory.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/square\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e907be8b86d7df0c8f8e0d0020b52638\",\"slug\":\"woocommerce-square\",\"id\":1770503},{\"title\":\"WooCommerce Shipping\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Dark-1.png\",\"excerpt\":\"Print USPS and DHL labels right from your WooCommerce dashboard and instantly save up to 90%. WooCommerce Shipping is free to use and saves you time and money.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"f31b3b9273cce188cc2b27f7849d02dd\",\"slug\":\"woocommerce-services\",\"id\":2165910},{\"title\":\"WooCommerce Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Pay-Dark.png\",\"excerpt\":\"The only payment method designed exclusively for WooCommerce, by WooCommerce. Securely accept major credit and debit cards on your site. View and manage your transactions within your WordPress dashboard.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-payments\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"8c6319ca-8f41-4e69-be63-6b15ee37773b\",\"slug\":\"woocommerce-payments\",\"id\":5278104},{\"title\":\"WooCommerce Subscriptions\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Subscriptions-Dark.png\",\"excerpt\":\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscriptions\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"6115e6d7e297b623a169fdcf5728b224\",\"slug\":\"woocommerce-subscriptions\",\"id\":27147},{\"title\":\"Mailchimp for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/09\\/logo-mailchimp-dark-v2.png\",\"excerpt\":\"Increase traffic, drive repeat purchases, and personalize your marketing when you connect to Mailchimp.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/mailchimp-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"b4481616ebece8b1ff68fc59b90c1a91\",\"slug\":\"mailchimp-for-woocommerce\",\"id\":2545166},{\"title\":\"PayPal Checkout\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Paypal-Dark.png\",\"excerpt\":\"PayPal Checkout now with Smart Payment Buttons\\u2122, dynamically displays, PayPal, Venmo, PayPal Credit, or other local payment options in a single stack giving customers the choice to pay with their preferred option.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-paypal-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"69e6cba62ac4021df9e117cc3f716d07\",\"slug\":\"woocommerce-gateway-paypal-express-checkout\",\"id\":1597922},{\"title\":\"ShipStation Integration\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Shipstation-Dark.png\",\"excerpt\":\"Fulfill all your Woo orders (and wherever else you sell) quickly and easily using ShipStation. Try it free for 30 days today!\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipstation-integration\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"9de8640767ba64237808ed7f245a49bb\",\"slug\":\"woocommerce-shipstation-integration\",\"id\":18734},{\"title\":\"PayFast Payment Gateway\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Payfast-Dark-1.png\",\"excerpt\":\"Take payments on your WooCommerce store via PayFast (redirect method).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/payfast-payment-gateway\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"557bf07293ad916f20c207c6c9cd15ff\",\"slug\":\"woocommerce-payfast-gateway\",\"id\":18596},{\"title\":\"Product Add-Ons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-Add-Ons-Dark.png\",\"excerpt\":\"Offer add-ons like gift wrapping, special messages or other special options for your products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"147d0077e591e16db9d0d67daeb8c484\",\"slug\":\"woocommerce-product-addons\",\"id\":18618},{\"title\":\"Google Ads &#038; Marketing by Kliken\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/02\\/GA-for-Woo-Logo-374x192px-qu3duk.png\",\"excerpt\":\"Get in front of shoppers and drive traffic to your store so you can grow your business with Smart Shopping Campaigns and free listings.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-ads-and-marketing\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"bf66e173-a220-4da7-9512-b5728c20fc16\",\"slug\":\"kliken-marketing-for-google\",\"id\":3866145},{\"title\":\"USPS Shipping Method\",\"image\":\"\",\"excerpt\":\"Get shipping rates from the USPS API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/usps-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"83d1524e8f5f1913e58889f83d442c32\",\"slug\":\"woocommerce-shipping-usps\",\"id\":18657},{\"title\":\"Braintree for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/02\\/braintree-black-copy.png\",\"excerpt\":\"Accept PayPal, credit cards and debit cards with a single payment gateway solution \\u2014 PayPal Powered by Braintree.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-paypal-powered-by-braintree\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"27f010c8e34ca65b205ddec88ad14536\",\"slug\":\"woocommerce-gateway-paypal-powered-by-braintree\",\"id\":1489837},{\"title\":\"WooCommerce Memberships\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/Thumbnail-Memberships-updated.png\",\"excerpt\":\"Give members access to restricted content or products, for a fee or for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-memberships\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"9288e7609ad0b487b81ef6232efa5cfc\",\"slug\":\"woocommerce-memberships\",\"id\":958589},{\"title\":\"UPS Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/UPS-Shipping-Method-Dark.png\",\"excerpt\":\"Get shipping rates from the UPS API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/ups-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8dae58502913bac0fbcdcaba515ea998\",\"slug\":\"woocommerce-shipping-ups\",\"id\":18665},{\"title\":\"Product Bundles\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-PB.png?v=1\",\"excerpt\":\"Offer personalized product bundles, bulk discount packages and assembled\\u00a0products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-bundles\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa2518b5-ab19-4b75-bde9-60ca51e20f28\",\"slug\":\"woocommerce-product-bundles\",\"id\":18716},{\"title\":\"Table Rate Shipping\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Product-Table-Rate-Shipping-Dark.png\",\"excerpt\":\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/table-rate-shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"3034ed8aff427b0f635fe4c86bbf008a\",\"slug\":\"woocommerce-table-rate-shipping\",\"id\":18718},{\"title\":\"Checkout Field Editor\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Checkout-Field-Editor-Dark.png\",\"excerpt\":\"Optimize your checkout process by adding, removing or editing fields to suit your needs.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-field-editor\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"2b8029f0d7cdd1118f4d843eb3ab43ff\",\"slug\":\"woocommerce-checkout-field-editor\",\"id\":184594},{\"title\":\"Shipment Tracking\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Tracking-Dark-1.png\",\"excerpt\":\"Add shipment tracking information to your orders.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipment-tracking\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"1968e199038a8a001c9f9966fd06bf88\",\"slug\":\"woocommerce-shipment-tracking\",\"id\":18693},{\"title\":\"WooCommerce Bookings\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Dark.png\",\"excerpt\":\"Allow customers to book appointments, make reservations or rent equipment without leaving your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/hotel\\/\",\"price\":\"&#36;249.00\",\"hash\":\"911c438934af094c2b38d5560b9f50f3\",\"slug\":\"WooCommerce Bookings\",\"id\":390890},{\"title\":\"Authorize.Net\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/04\\/Thumbnail-Authorize.net-updated.png\",\"excerpt\":\"Authorize.Net gateway with support for pre-orders and subscriptions.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/authorize-net\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8b61524fe53add7fdd1a8d1b00b9327d\",\"slug\":\"woocommerce-gateway-authorize-net-cim\",\"id\":178481},{\"title\":\"Amazon and eBay Integration for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/10\\/wooapplogoretina.png\",\"excerpt\":\"Sell on Amazon and eBay directly from your WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/amazon-ebay-integration\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e4000666-9275-4c71-8619-be61fb41c9f9\",\"slug\":\"woocommerce-amazon-ebay-integration\",\"id\":3545890},{\"title\":\"WooCommerce Customer \\/ Order \\/ Coupon Export\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/Thumbnail-Customer-Order-Coupon-Export-updated.png\",\"excerpt\":\"Export customers, orders, and coupons from WooCommerce manually or on an automated schedule.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/ordercustomer-csv-export\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"914de15813a903c767b55445608bf290\",\"slug\":\"woocommerce-customer-order-csv-export\",\"id\":18652},{\"title\":\"Min\\/Max Quantities\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Min-Max-Qua-Dark.png\",\"excerpt\":\"Specify minimum and maximum allowed product quantities for orders to be completed.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/minmax-quantities\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"2b5188d90baecfb781a5aa2d6abb900a\",\"slug\":\"woocommerce-min-max-quantities\",\"id\":18616},{\"title\":\"LiveChat for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/11\\/LC_woo_regular-zmiaym.png\",\"excerpt\":\"Live Chat and messaging platform for sales and support -- increase average order value and overall sales through live conversations.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/livechat\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.livechat.com\\/livechat-for-ecommerce\\/?a=woocommerce&amp;utm_source=woocommerce.com&amp;utm_medium=integration&amp;utm_campaign=woocommerce.com\",\"price\":\"&#36;0.00\",\"hash\":\"5344cc1f-ed4a-4d00-beff-9d67f6d372f3\",\"slug\":\"livechat-woocommerce\",\"id\":1348888},{\"title\":\"Smart Coupons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/10\\/wc-product-smart-coupons.png\",\"excerpt\":\"Everything you need for discounts, coupons, credits, gift cards, product giveaways, offers, and promotions. Most popular and complete coupons plugin for WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/smart-coupons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo.storeapps.org\\/?demo=sc\",\"price\":\"&#36;99.00\",\"hash\":\"05c45f2aa466106a466de4402fff9dde\",\"slug\":\"woocommerce-smart-coupons\",\"id\":18729},{\"title\":\"FedEx Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/01\\/FedEx_Logo_Wallpaper.jpeg\",\"excerpt\":\"Get shipping rates from the FedEx API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/fedex-shipping-module\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1a48b598b47a81559baadef15e320f64\",\"slug\":\"woocommerce-shipping-fedex\",\"id\":18620},{\"title\":\"Product CSV Import Suite\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-CSV-Import-Dark.png\",\"excerpt\":\"Import, merge, and export products and variations to and from WooCommerce using a CSV file.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-csv-import-suite\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"7ac9b00a1fe980fb61d28ab54d167d0d\",\"slug\":\"woocommerce-product-csv-import-suite\",\"id\":18680},{\"title\":\"Follow-Ups\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Follow-Ups-Dark.png\",\"excerpt\":\"Automatically contact customers after purchase - be it everyone, your most loyal or your biggest spenders - and keep your store top-of-mind.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/follow-up-emails\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"05ece68fe94558e65278fe54d9ec84d2\",\"slug\":\"woocommerce-follow-up-emails\",\"id\":18686},{\"title\":\"Dynamic Pricing\",\"image\":\"\",\"excerpt\":\"Bulk discounts, role-based pricing and much more\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/dynamic-pricing\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"9a41775bb33843f52c93c922b0053986\",\"slug\":\"woocommerce-dynamic-pricing\",\"id\":18643},{\"title\":\"Name Your Price\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/09\\/nyp-icon-dark-v83owf.png\",\"excerpt\":\"Allow customers to define the product price. Also useful for accepting user-set donations.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/name-your-price\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"31b4e11696cd99a3c0572975a84f1c08\",\"slug\":\"woocommerce-name-your-price\",\"id\":18738},{\"title\":\"WooCommerce Zapier\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/woocommerce-zapier-logo.png\",\"excerpt\":\"Integrate with 2000+ cloud apps and services today.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-zapier\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;59.00\",\"hash\":\"0782bdbe932c00f4978850268c6cfe40\",\"slug\":\"woocommerce-zapier\",\"id\":243589},{\"title\":\"WooCommerce Print Invoices &amp; Packing lists\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/03\\/Thumbnail-Print-Invoices-Packing-lists-updated.png\",\"excerpt\":\"Generate invoices, packing slips, and pick lists for your WooCommerce orders.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/print-invoices-packing-lists\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"465de1126817cdfb42d97ebca7eea717\",\"slug\":\"woocommerce-pip\",\"id\":18666},{\"title\":\"Product Vendors\",\"image\":\"\",\"excerpt\":\"Turn your store into a multi-vendor marketplace\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-vendors\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"a97d99fccd651bbdd728f4d67d492c31\",\"slug\":\"woocommerce-product-vendors\",\"id\":219982},{\"title\":\"Google Product Feed\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2011\\/11\\/logo-regular-lscryp.png\",\"excerpt\":\"Allows you to create real-time product &amp; review feeds to supply product information to Google Merchant Center for setting up Google Product Ads. Also supports Bing Merchant Centre.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-product-feed\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"d55b4f852872025741312839f142447e\",\"slug\":\"woocommerce-product-feeds\",\"id\":18619},{\"title\":\"WooCommerce Accommodation Bookings\",\"image\":\"\",\"excerpt\":\"Book accommodation using WooCommerce and the WooCommerce Bookings extension.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-accommodation-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"99b2a7a4af90b6cefd2a733b3b1f78e7\",\"slug\":\"woocommerce-accommodation-bookings\",\"id\":1412069},{\"title\":\"PayPal Payments Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Paypal-Payments-Pro-Dark.png\",\"excerpt\":\"Take credit card payments directly on your checkout using PayPal Pro.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/paypal-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"6d23ba7f0e0198937c0029f9e865b40e\",\"slug\":\"woocommerce-gateway-paypal-pro\",\"id\":18594},{\"title\":\"WooCommerce Brands\",\"image\":\"\",\"excerpt\":\"Create, assign and list brands for products, and allow customers to view by brand.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/brands\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"8a88c7cbd2f1e73636c331c7a86f818c\",\"slug\":\"woocommerce-brands\",\"id\":18737},{\"title\":\"Gravity Forms Product Add-ons\",\"image\":\"\",\"excerpt\":\"Powerful product add-ons, Gravity style\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/gravity-forms-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/gravity-forms\\/\",\"price\":\"&#36;99.00\",\"hash\":\"a6ac0ab1a1536e3a357ccf24c0650ed0\",\"slug\":\"woocommerce-gravityforms-product-addons\",\"id\":18633},{\"title\":\"Xero\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/08\\/xero2.png\",\"excerpt\":\"Save time with automated sync between WooCommerce and your Xero account.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/xero\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"f0dd29d338d3c67cf6cee88eddf6869b\",\"slug\":\"woocommerce-xero\",\"id\":18733},{\"title\":\"Composite Products\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-CP.png?v=1\",\"excerpt\":\"Create product kit builders and custom product configurators using existing products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/composite-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"0343e0115bbcb97ccd98442b8326a0af\",\"slug\":\"woocommerce-composite-products\",\"id\":216836},{\"title\":\"Advanced Notifications\",\"image\":\"\",\"excerpt\":\"Easily setup \\\"new order\\\" and stock email notifications for multiple recipients of your choosing.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/advanced-notifications\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"112372c44b002fea2640bd6bfafbca27\",\"slug\":\"woocommerce-advanced-notifications\",\"id\":18740},{\"title\":\"Australia Post Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/australia-post.gif\",\"excerpt\":\"Get shipping rates for your WooCommerce store from the Australia Post API, which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/australia-post-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1dbd4dc6bd91a9cda1bd6b9e7a5e4f43\",\"slug\":\"woocommerce-shipping-australia-post\",\"id\":18622},{\"title\":\"WooCommerce Points and Rewards\",\"image\":\"\",\"excerpt\":\"Reward your customers for purchases and other actions with points which can be redeemed for discounts.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-points-and-rewards\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"1649b6cca5da8b923b01ca56b5cdd246\",\"slug\":\"woocommerce-points-and-rewards\",\"id\":210259},{\"title\":\"WooCommerce Paid Courses\",\"image\":\"\",\"excerpt\":\"Sell your online courses using the most popular eCommerce platform on the web \\u2013 WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-paid-courses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"bad2a02a063555b7e2bee59924690763\",\"slug\":\"woothemes-sensei\",\"id\":152116},{\"title\":\"Canada Post Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/canada-post.png\",\"excerpt\":\"Get shipping rates from the Canada Post Ratings API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/canada-post-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ac029cdf3daba20b20c7b9be7dc00e0e\",\"slug\":\"woocommerce-shipping-canada-post\",\"id\":18623},{\"title\":\"WooCommerce AvaTax\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/01\\/Thumbnail-Avalara-updated.png\",\"excerpt\":\"Get 100% accurate sales tax calculations and on time tax return filing. No more tracking sales tax rates, rules, or jurisdictional boundaries.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-avatax\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"57077a4b28ba71cacf692bcf4a1a7f60\",\"slug\":\"woocommerce-avatax\",\"id\":1389326},{\"title\":\"AutomateWoo\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-AutomateWoo-Dark-1.png\",\"excerpt\":\"Powerful marketing automation for WooCommerce. AutomateWoo has the tools you need to grow your store and make more money.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/automatewoo\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"ba9299b8-1dba-4aa0-a313-28bc1755cb88\",\"slug\":\"automatewoo\",\"id\":4652610},{\"title\":\"WooCommerce Subscription Downloads\",\"image\":\"\",\"excerpt\":\"Offer additional downloads to your subscribers, via downloadable products listed in your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscription-downloads\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5be9e21c13953253e4406d2a700382ec\",\"slug\":\"woocommerce-subscription-downloads\",\"id\":420458},{\"title\":\"WooCommerce Pre-Orders\",\"image\":\"\",\"excerpt\":\"Allow customers to order products before they are available.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-pre-orders\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"b2dc75e7d55e6f5bbfaccb59830f66b7\",\"slug\":\"woocommerce-pre-orders\",\"id\":178477},{\"title\":\"Klarna Checkout\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/01\\/Partner_marketing_Klarna_Checkout_Black-1.png\",\"excerpt\":\"Klarna Checkout is a full checkout experience embedded on your site that includes all popular payment methods (Pay Now, Pay Later, Financing, Installments).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/klarna-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.krokedil.se\\/klarnacheckout\\/\",\"price\":\"&#36;0.00\",\"hash\":\"90f8ce584e785fcd8c2d739fd4f40d78\",\"slug\":\"klarna-checkout-for-woocommerce\",\"id\":2754152},{\"title\":\"Catalog Visibility Options\",\"image\":\"\",\"excerpt\":\"Transform WooCommerce into an online catalog by removing eCommerce functionality\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/catalog-visibility-options\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"12e791110365fdbb5865c8658907967e\",\"slug\":\"woocommerce-catalog-visibility-options\",\"id\":18648},{\"title\":\"WooCommerce Additional Variation Images\",\"image\":\"\",\"excerpt\":\"Add gallery images per variation on variable products within WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-additional-variation-images\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/storefront\\/product\\/woo-single-1\\/\",\"price\":\"&#36;49.00\",\"hash\":\"c61dd6de57dcecb32bd7358866de4539\",\"slug\":\"woocommerce-additional-variation-images\",\"id\":477384},{\"title\":\"WooCommerce Deposits\",\"image\":\"\",\"excerpt\":\"Enable customers to pay for products using a deposit or a payment plan.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-deposits\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;179.00\",\"hash\":\"de192a6cf12c4fd803248da5db700762\",\"slug\":\"woocommerce-deposits\",\"id\":977087},{\"title\":\"eWAY\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/eway-logo-3000-2000.jpg\",\"excerpt\":\"Take credit card payments securely via eWay (SG, MY, HK, AU, and NZ) keeping customers on your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/eway\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"2c497769d98d025e0d340cd0b5ea5da1\",\"slug\":\"woocommerce-gateway-eway\",\"id\":18604},{\"title\":\"Royal Mail\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/04\\/royalmail.png\",\"excerpt\":\"Offer Royal Mail shipping rates to your customers\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/royal-mail\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"03839cca1a16c4488fcb669aeb91a056\",\"slug\":\"woocommerce-shipping-royalmail\",\"id\":182719},{\"title\":\"Amazon S3 Storage\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/amazon.png\",\"excerpt\":\"Serve digital products via Amazon S3\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/amazon-s3-storage\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"473bf6f221b865eff165c97881b473bb\",\"slug\":\"woocommerce-amazon-s3-storage\",\"id\":18663},{\"title\":\"Cart Add-ons\",\"image\":\"\",\"excerpt\":\"A powerful tool for driving incremental and impulse purchases by customers once they are in the shopping cart\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/cart-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"3a8ef25334396206f5da4cf208adeda3\",\"slug\":\"woocommerce-cart-add-ons\",\"id\":18717},{\"title\":\"Shipping Multiple Addresses\",\"image\":\"\",\"excerpt\":\"Allow your customers to ship individual items in a single order to multiple addresses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipping-multiple-addresses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa0eb6f777846d329952d5b891d6f8cc\",\"slug\":\"woocommerce-shipping-multiple-addresses\",\"id\":18741},{\"title\":\"Sequential Order Numbers Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/05\\/Thumbnail-Sequential-Order-Numbers-Pro-updated.png\",\"excerpt\":\"Tame your order numbers! Advanced &amp; sequential order numbers with optional prefixes \\/ suffixes\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sequential-order-numbers-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"0b18a2816e016ba9988b93b1cd8fe766\",\"slug\":\"woocommerce-sequential-order-numbers-pro\",\"id\":18688},{\"title\":\"WooCommerce Checkout Add-Ons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/07\\/Thumbnail-Checkout-Add-Ons-updated.png\",\"excerpt\":\"Highlight relevant products, offers like free shipping and other up-sells during checkout.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8fdca00b4000b7a8cc26371d0e470a8f\",\"slug\":\"woocommerce-checkout-add-ons\",\"id\":466854},{\"title\":\"Conditional Shipping and Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-CSP.png?v=1\",\"excerpt\":\"Use conditional logic to restrict the shipping and payment options available on your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/conditional-shipping-and-payments\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1f56ff002fa830b77017b0107505211a\",\"slug\":\"woocommerce-conditional-shipping-and-payments\",\"id\":680253},{\"title\":\"WooCommerce Google Analytics Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/01\\/Thumbnail-GAPro-updated.png\",\"excerpt\":\"Add advanced event tracking and enhanced eCommerce tracking to your WooCommerce site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"d8aed8b7306b509eec1589e59abe319f\",\"slug\":\"woocommerce-google-analytics-pro\",\"id\":1312497},{\"title\":\"WooCommerce Order Status Manager\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/02\\/Thumbnail-Order-Status-Manager-updated.png\",\"excerpt\":\"Create, edit, and delete completely custom order statuses and integrate them seamlessly into your order management flow.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"51fd9ab45394b4cad5a0ebf58d012342\",\"slug\":\"woocommerce-order-status-manager\",\"id\":588398},{\"title\":\"Bulk Stock Management\",\"image\":\"\",\"excerpt\":\"Edit product and variation stock levels in bulk via this handy interface\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bulk-stock-management\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"02f4328d52f324ebe06a78eaaae7934f\",\"slug\":\"woocommerce-bulk-stock-management\",\"id\":18670},{\"title\":\"First Data\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/Thumbnail-FirstData-updated.png\",\"excerpt\":\"FirstData gateway for WooCommerce\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/firstdata\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"eb3e32663ec0810592eaf0d097796230\",\"slug\":\"woocommerce-gateway-firstdata\",\"id\":18645},{\"title\":\"TaxJar\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/10\\/taxjar-logotype.png\",\"excerpt\":\"Save hours every month by putting your sales tax on autopilot. Automated, multi-state sales tax calculation, reporting, and filing for your WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/taxjar\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"12072d8e-e933-4561-97b1-9db3c7eeed91\",\"slug\":\"taxjar-simplified-taxes-for-woocommerce\",\"id\":514914},{\"title\":\"WooCommerce One Page Checkout\",\"image\":\"\",\"excerpt\":\"Create special pages where customers can choose products, checkout &amp; pay all on the one page.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-one-page-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"c9ba8f8352cd71b5508af5161268619a\",\"slug\":\"woocommerce-one-page-checkout\",\"id\":527886},{\"title\":\"WooCommerce Email Customizer\",\"image\":\"\",\"excerpt\":\"Connect with your customers with each email you send by visually modifying your email templates via the WordPress Customizer.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-email-customizer\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"bd909fa97874d431f203b5336c7e8873\",\"slug\":\"woocommerce-email-customizer\",\"id\":853277},{\"title\":\"WooSlider\",\"image\":\"\",\"excerpt\":\"WooSlider is the ultimate responsive slideshow WordPress slider plugin\\r\\n\\r\\n\\u00a0\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/wooslider\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/www.wooslider.com\\/\",\"price\":\"&#36;49.00\",\"hash\":\"209d98f3ccde6cc3de7e8732a2b20b6a\",\"slug\":\"wooslider\",\"id\":46506},{\"title\":\"WooCommerce Quick View\",\"image\":\"\",\"excerpt\":\"Show a quick-view button to view product details and add to cart via lightbox popup\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-quick-view\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"619c6e57ce72c49c4b57e15b06eddb65\",\"slug\":\"woocommerce-quick-view\",\"id\":187509},{\"title\":\"Force Sells\",\"image\":\"\",\"excerpt\":\"Force products to be added to the cart\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/force-sells\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"3ebddfc491ca168a4ea4800b893302b0\",\"slug\":\"woocommerce-force-sells\",\"id\":18678},{\"title\":\"WooCommerce Purchase Order Gateway\",\"image\":\"\",\"excerpt\":\"Receive purchase orders via your WooCommerce-powered online store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-purchase-order\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"573a92318244ece5facb449d63e74874\",\"slug\":\"woocommerce-gateway-purchase-order\",\"id\":478542},{\"title\":\"WooCommerce Product Search\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2014\\/10\\/woocommerce-product-search-product-image-1870x960-1-jvsljj.png\",\"excerpt\":\"The perfect search engine helps customers to find and buy products quickly \\u2013 essential for every WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-product-search\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.itthinx.com\\/wps\\/\",\"price\":\"&#36;49.00\",\"hash\":\"c84cc8ca16ddac3408e6b6c5871133a8\",\"slug\":\"woocommerce-product-search\",\"id\":512174},{\"title\":\"WooCommerce Blocks\",\"image\":\"\",\"excerpt\":\"WooCommerce Blocks offers a range of Gutenberg blocks you can use to build and customise your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gutenberg-products-block\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"c2e9f13a-f90c-4ffe-a8a5-b432399ec263\",\"slug\":\"woo-gutenberg-products-block\",\"id\":3076677},{\"title\":\"WooCommerce Social Login\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/08\\/Thumbnail-Social-Login-updated.png\",\"excerpt\":\"Enable Social Login for seamless checkout and account creation.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-social-login\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demos.skyverge.com\\/woocommerce-social-login\\/\",\"price\":\"&#36;79.00\",\"hash\":\"b231cd6367a79cc8a53b7d992d77525d\",\"slug\":\"woocommerce-social-login\",\"id\":473617},{\"title\":\"Returns and Warranty Requests\",\"image\":\"\",\"excerpt\":\"Manage the RMA process, add warranties to products &amp; let customers request &amp; manage returns \\/ exchanges from their account.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/warranty-requests\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"9b4c41102e6b61ea5f558e16f9b63e25\",\"slug\":\"woocommerce-warranty\",\"id\":228315},{\"title\":\"Product Enquiry Form\",\"image\":\"\",\"excerpt\":\"Allow visitors to contact you directly from the product details page via a reCAPTCHA protected form to enquire about a product.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-enquiry-form\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5a0f5d72519a8ffcc86669f042296937\",\"slug\":\"woocommerce-product-enquiry-form\",\"id\":18601},{\"title\":\"Variation Swatches and Photos\",\"image\":\"\",\"excerpt\":\"Show color and image swatches instead of dropdowns for variable products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/variation-swatches-and-photos\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/swatches-and-photos\\/\",\"price\":\"&#36;99.00\",\"hash\":\"37bea8d549df279c8278878d081b062f\",\"slug\":\"woocommerce-variation-swatches-and-photos\",\"id\":18697},{\"title\":\"WooCommerce Box Office\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-BO-Dark.png\",\"excerpt\":\"Sell tickets for your next event, concert, function, fundraiser or conference directly on your own site\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-box-office\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"e704c9160de318216a8fa657404b9131\",\"slug\":\"woocommerce-box-office\",\"id\":1628717},{\"title\":\"WooCommerce Order Status Control\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/06\\/Thumbnail-Order-Status-Control-updated.png\",\"excerpt\":\"Use this extension to automatically change the order status to \\\"completed\\\" after successful payment.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-control\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"32400e509c7c36dcc1cd368e8267d981\",\"slug\":\"woocommerce-order-status-control\",\"id\":439037},{\"title\":\"Opayo (Formerly SagePay)\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/Opayo_logo_RGB.png\",\"excerpt\":\"Take payments on your WooCommerce store via Opayo (formally SagePay).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sage-pay-form\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"6bc0cca47d0274d8ef9b164f6fbec1cc\",\"slug\":\"woocommerce-gateway-sagepay-form\",\"id\":18599},{\"title\":\"WooCommerce Order Barcodes\",\"image\":\"\",\"excerpt\":\"Generates a unique barcode for each order on your site - perfect for e-tickets, packing slips, reservations and a variety of other uses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-barcodes\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"889835bb29ee3400923653e1e44a3779\",\"slug\":\"woocommerce-order-barcodes\",\"id\":391708},{\"title\":\"QuickBooks Sync for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/04\\/woocommerce-com-logo-1-hyhzbh.png\",\"excerpt\":\"Automatic two-way sync for orders, customers, products, inventory and more between WooCommerce and QuickBooks (Online, Desktop, or POS).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/quickbooks-sync-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"c5e32e20-7c1f-4585-8b15-d930c2d842ac\",\"slug\":\"myworks-woo-sync-for-quickbooks-online\",\"id\":4065824},{\"title\":\"WooCommerce 360\\u00ba Image\",\"image\":\"\",\"excerpt\":\"An easy way to add a dynamic, controllable 360\\u00ba image rotation to your WooCommerce site, by adding a group of images to a product\\u2019s gallery.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-360-image\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"24eb2cfa3738a66bf3b2587876668cd2\",\"slug\":\"woocommerce-360-image\",\"id\":512186},{\"title\":\"EU VAT Number\",\"image\":\"\",\"excerpt\":\"Collect VAT numbers at checkout and remove the VAT charge for eligible EU businesses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/eu-vat-number\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"d2720c4b4bb8d6908e530355b7a2d734\",\"slug\":\"woocommerce-eu-vat-number\",\"id\":18592},{\"title\":\"WooCommerce Photography\",\"image\":\"\",\"excerpt\":\"Sell photos in the blink of an eye using this simple as dragging &amp; dropping interface.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-photography\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ee76e8b9daf1d97ca4d3874cc9e35687\",\"slug\":\"woocommerce-photography\",\"id\":583602},{\"title\":\"QuickBooks Commerce (formerly TradeGecko)\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/09\\/qbo-mark.png\",\"excerpt\":\"Get a wholesale and multichannel inventory &amp; order management platform for your WooCommerce store with QuickBooks Commerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-tradegecko\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"21da7811f7fc1f13ee19daa7415f0ff3\",\"slug\":\"woocommerce-tradegecko\",\"id\":245960},{\"title\":\"Software Add-on\",\"image\":\"\",\"excerpt\":\"Sell License Keys for Software\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/software-add-on\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"79f6dbfe1f1d3a56a86f0509b6d6b04b\",\"slug\":\"woocommerce-software-add-on\",\"id\":18683},{\"title\":\"WooCommerce Tab Manager\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/11\\/Thumbnail-Tab-Manager-updated.png\",\"excerpt\":\"Gives you complete control over your product page tabs, create local and global tabs using a visual drag-and-drop interface, and more.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-tab-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"89a9ac74850855cfe772b4b4ee1e31e0\",\"slug\":\"woocommerce-tab-manager\",\"id\":132195},{\"title\":\"WooCommerce Bookings Availability\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Aval-Dark.png\",\"excerpt\":\"Sell more bookings by presenting a calendar or schedule of available slots in a page or post.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bookings-availability\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"30770d2a-e392-4e82-baaa-76cfc7d02ae3\",\"slug\":\"woocommerce-bookings-availability\",\"id\":4228225},{\"title\":\"Coupon Shortcodes\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/09\\/woocommerce-coupon-shortcodes-product-image-1870x960-1-vc5gux.png\",\"excerpt\":\"Show coupon discount info using shortcodes. Allows to render coupon information and content conditionally, based on the validity of coupons.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/coupon-shortcodes\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"ac5d9d51-70b2-4d8f-8b89-24200eea1394\",\"slug\":\"woocommerce-coupon-shortcodes\",\"id\":244762},{\"title\":\"WooCommerce Products Compare\",\"image\":\"\",\"excerpt\":\"WooCommerce Products Compare will allow your potential customers to easily compare products within your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-products-compare\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"c3ba0a4a3199a0cc7a6112eb24414548\",\"slug\":\"woocommerce-products-compare\",\"id\":853117},{\"title\":\"WooCommerce Store Catalog PDF Download\",\"image\":\"\",\"excerpt\":\"Offer your customers a PDF download of your product catalog, generated by WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-store-catalog-pdf-download\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"79ca7aadafe706364e2d738b7c1090c4\",\"slug\":\"woocommerce-store-catalog-pdf-download\",\"id\":675790},{\"title\":\"Customer\\/Order\\/Coupon CSV Import Suite\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/07\\/Thumbnail-Customer-Order-Coupon-CSV-Import-Suite-updated.png\",\"excerpt\":\"Import both customers and orders into WooCommerce from a CSV file.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/customerorder-csv-import-suite\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"eb00ca8317a0f64dbe185c995e5ea3df\",\"slug\":\"woocommerce-customer-order-csv-import\",\"id\":18709}]}\";s:3:\"raw\";s:48730:\"HTTP/1.1 200 OK\r\nServer: nginx\r\nDate: Tue, 12 Jan 2021 11:07:43 GMT\r\nContent-Type: application/json; charset=UTF-8\r\nContent-Length: 11456\r\nConnection: close\r\nX-Robots-Tag: noindex\r\nLink: <https://woocommerce.com/wp-json/>; rel=\"https://api.w.org/\"\r\nX-Content-Type-Options: nosniff\r\nAccess-Control-Expose-Headers: X-WP-Total, X-WP-TotalPages, Link\r\nAccess-Control-Allow-Headers: Authorization, X-WP-Nonce, Content-Disposition, Content-MD5, Content-Type\r\nCache-Control: max-age=60\r\nAllow: GET\r\nContent-Encoding: gzip\r\nX-rq: hkg2 87 20 3199\r\nAge: 12\r\nX-Cache: hit\r\nVary: Accept-Encoding, Origin\r\nAccept-Ranges: bytes\r\n\r\n{\"products\":[{\"title\":\"WooCommerce Google Analytics\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/GA-Dark.png\",\"excerpt\":\"Understand your customers and increase revenue with world\\u2019s leading analytics platform - integrated with WooCommerce for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"2d21f7de14dfb8e9885a4622be701ddf\",\"slug\":\"woocommerce-google-analytics-integration\",\"id\":1442927},{\"title\":\"WooCommerce Tax\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Tax-Dark.png\",\"excerpt\":\"Get live rates, discounted labels, tracking numbers, and more \\u2013 without leaving your dashboard.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/tax\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"f31b3b9273cce188cc2b27f7849d02dd\",\"slug\":\"woocommerce-services\",\"id\":3220291},{\"title\":\"Stripe\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Stripe-Dark-1.png\",\"excerpt\":\"Accept all major debit and credit cards as well as local payment methods with Stripe.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/stripe\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"50bb7a985c691bb943a9da4d2c8b5efd\",\"slug\":\"woocommerce-gateway-stripe\",\"id\":18627},{\"title\":\"Jetpack\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Jetpack-Dark.png\",\"excerpt\":\"Power up and protect your store with Jetpack\\r\\n\\r\\nFor free security, insights and monitoring, connect to Jetpack. It\'s everything you need for a strong, secure start.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/jetpack\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"d5bfef9700b62b2b132c74c74c3193eb\",\"slug\":\"jetpack\",\"id\":2725249},{\"title\":\"Facebook for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Facebook-Dark.png\",\"excerpt\":\"Get the Official Facebook for WooCommerce plugin for three powerful ways to help grow your business.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/facebook\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"0ea4fe4c2d7ca6338f8a322fb3e4e187\",\"slug\":\"facebook-for-woocommerce\",\"id\":2127297},{\"title\":\"Amazon Pay\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Amazon-Pay-Dark.png\",\"excerpt\":\"Amazon Pay is embedded in your WooCommerce store. Transactions take place via\\u00a0Amazon widgets, so the buyer never leaves your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/pay-with-amazon\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"9865e043bbbe4f8c9735af31cb509b53\",\"slug\":\"woocommerce-gateway-amazon-payments-advanced\",\"id\":238816},{\"title\":\"Square for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Square-Dark.png\",\"excerpt\":\"Accepting payments is easy with Square. Clear rates, fast deposits (1-2 business days). Sell online and in person, and sync all payments, items and inventory.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/square\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e907be8b86d7df0c8f8e0d0020b52638\",\"slug\":\"woocommerce-square\",\"id\":1770503},{\"title\":\"WooCommerce Shipping\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Dark-1.png\",\"excerpt\":\"Print USPS and DHL labels right from your WooCommerce dashboard and instantly save up to 90%. WooCommerce Shipping is free to use and saves you time and money.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"f31b3b9273cce188cc2b27f7849d02dd\",\"slug\":\"woocommerce-services\",\"id\":2165910},{\"title\":\"WooCommerce Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Pay-Dark.png\",\"excerpt\":\"The only payment method designed exclusively for WooCommerce, by WooCommerce. Securely accept major credit and debit cards on your site. View and manage your transactions within your WordPress dashboard.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-payments\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"8c6319ca-8f41-4e69-be63-6b15ee37773b\",\"slug\":\"woocommerce-payments\",\"id\":5278104},{\"title\":\"WooCommerce Subscriptions\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Subscriptions-Dark.png\",\"excerpt\":\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscriptions\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"6115e6d7e297b623a169fdcf5728b224\",\"slug\":\"woocommerce-subscriptions\",\"id\":27147},{\"title\":\"Mailchimp for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/09\\/logo-mailchimp-dark-v2.png\",\"excerpt\":\"Increase traffic, drive repeat purchases, and personalize your marketing when you connect to Mailchimp.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/mailchimp-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"b4481616ebece8b1ff68fc59b90c1a91\",\"slug\":\"mailchimp-for-woocommerce\",\"id\":2545166},{\"title\":\"PayPal Checkout\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Paypal-Dark.png\",\"excerpt\":\"PayPal Checkout now with Smart Payment Buttons\\u2122, dynamically displays, PayPal, Venmo, PayPal Credit, or other local payment options in a single stack giving customers the choice to pay with their preferred option.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-paypal-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"69e6cba62ac4021df9e117cc3f716d07\",\"slug\":\"woocommerce-gateway-paypal-express-checkout\",\"id\":1597922},{\"title\":\"ShipStation Integration\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Shipstation-Dark.png\",\"excerpt\":\"Fulfill all your Woo orders (and wherever else you sell) quickly and easily using ShipStation. Try it free for 30 days today!\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipstation-integration\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"9de8640767ba64237808ed7f245a49bb\",\"slug\":\"woocommerce-shipstation-integration\",\"id\":18734},{\"title\":\"PayFast Payment Gateway\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Payfast-Dark-1.png\",\"excerpt\":\"Take payments on your WooCommerce store via PayFast (redirect method).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/payfast-payment-gateway\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"557bf07293ad916f20c207c6c9cd15ff\",\"slug\":\"woocommerce-payfast-gateway\",\"id\":18596},{\"title\":\"Product Add-Ons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-Add-Ons-Dark.png\",\"excerpt\":\"Offer add-ons like gift wrapping, special messages or other special options for your products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"147d0077e591e16db9d0d67daeb8c484\",\"slug\":\"woocommerce-product-addons\",\"id\":18618},{\"title\":\"Google Ads &#038; Marketing by Kliken\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/02\\/GA-for-Woo-Logo-374x192px-qu3duk.png\",\"excerpt\":\"Get in front of shoppers and drive traffic to your store so you can grow your business with Smart Shopping Campaigns and free listings.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-ads-and-marketing\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"bf66e173-a220-4da7-9512-b5728c20fc16\",\"slug\":\"kliken-marketing-for-google\",\"id\":3866145},{\"title\":\"USPS Shipping Method\",\"image\":\"\",\"excerpt\":\"Get shipping rates from the USPS API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/usps-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"83d1524e8f5f1913e58889f83d442c32\",\"slug\":\"woocommerce-shipping-usps\",\"id\":18657},{\"title\":\"Braintree for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/02\\/braintree-black-copy.png\",\"excerpt\":\"Accept PayPal, credit cards and debit cards with a single payment gateway solution \\u2014 PayPal Powered by Braintree.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-paypal-powered-by-braintree\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"27f010c8e34ca65b205ddec88ad14536\",\"slug\":\"woocommerce-gateway-paypal-powered-by-braintree\",\"id\":1489837},{\"title\":\"WooCommerce Memberships\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/Thumbnail-Memberships-updated.png\",\"excerpt\":\"Give members access to restricted content or products, for a fee or for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-memberships\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"9288e7609ad0b487b81ef6232efa5cfc\",\"slug\":\"woocommerce-memberships\",\"id\":958589},{\"title\":\"UPS Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/UPS-Shipping-Method-Dark.png\",\"excerpt\":\"Get shipping rates from the UPS API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/ups-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8dae58502913bac0fbcdcaba515ea998\",\"slug\":\"woocommerce-shipping-ups\",\"id\":18665},{\"title\":\"Product Bundles\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-PB.png?v=1\",\"excerpt\":\"Offer personalized product bundles, bulk discount packages and assembled\\u00a0products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-bundles\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa2518b5-ab19-4b75-bde9-60ca51e20f28\",\"slug\":\"woocommerce-product-bundles\",\"id\":18716},{\"title\":\"Table Rate Shipping\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Product-Table-Rate-Shipping-Dark.png\",\"excerpt\":\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/table-rate-shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"3034ed8aff427b0f635fe4c86bbf008a\",\"slug\":\"woocommerce-table-rate-shipping\",\"id\":18718},{\"title\":\"Checkout Field Editor\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Checkout-Field-Editor-Dark.png\",\"excerpt\":\"Optimize your checkout process by adding, removing or editing fields to suit your needs.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-field-editor\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"2b8029f0d7cdd1118f4d843eb3ab43ff\",\"slug\":\"woocommerce-checkout-field-editor\",\"id\":184594},{\"title\":\"Shipment Tracking\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Tracking-Dark-1.png\",\"excerpt\":\"Add shipment tracking information to your orders.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipment-tracking\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"1968e199038a8a001c9f9966fd06bf88\",\"slug\":\"woocommerce-shipment-tracking\",\"id\":18693},{\"title\":\"WooCommerce Bookings\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Dark.png\",\"excerpt\":\"Allow customers to book appointments, make reservations or rent equipment without leaving your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/hotel\\/\",\"price\":\"&#36;249.00\",\"hash\":\"911c438934af094c2b38d5560b9f50f3\",\"slug\":\"WooCommerce Bookings\",\"id\":390890},{\"title\":\"Authorize.Net\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/04\\/Thumbnail-Authorize.net-updated.png\",\"excerpt\":\"Authorize.Net gateway with support for pre-orders and subscriptions.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/authorize-net\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8b61524fe53add7fdd1a8d1b00b9327d\",\"slug\":\"woocommerce-gateway-authorize-net-cim\",\"id\":178481},{\"title\":\"Amazon and eBay Integration for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/10\\/wooapplogoretina.png\",\"excerpt\":\"Sell on Amazon and eBay directly from your WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/amazon-ebay-integration\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e4000666-9275-4c71-8619-be61fb41c9f9\",\"slug\":\"woocommerce-amazon-ebay-integration\",\"id\":3545890},{\"title\":\"WooCommerce Customer \\/ Order \\/ Coupon Export\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/Thumbnail-Customer-Order-Coupon-Export-updated.png\",\"excerpt\":\"Export customers, orders, and coupons from WooCommerce manually or on an automated schedule.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/ordercustomer-csv-export\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"914de15813a903c767b55445608bf290\",\"slug\":\"woocommerce-customer-order-csv-export\",\"id\":18652},{\"title\":\"Min\\/Max Quantities\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Min-Max-Qua-Dark.png\",\"excerpt\":\"Specify minimum and maximum allowed product quantities for orders to be completed.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/minmax-quantities\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"2b5188d90baecfb781a5aa2d6abb900a\",\"slug\":\"woocommerce-min-max-quantities\",\"id\":18616},{\"title\":\"LiveChat for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/11\\/LC_woo_regular-zmiaym.png\",\"excerpt\":\"Live Chat and messaging platform for sales and support -- increase average order value and overall sales through live conversations.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/livechat\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.livechat.com\\/livechat-for-ecommerce\\/?a=woocommerce&amp;utm_source=woocommerce.com&amp;utm_medium=integration&amp;utm_campaign=woocommerce.com\",\"price\":\"&#36;0.00\",\"hash\":\"5344cc1f-ed4a-4d00-beff-9d67f6d372f3\",\"slug\":\"livechat-woocommerce\",\"id\":1348888},{\"title\":\"Smart Coupons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/10\\/wc-product-smart-coupons.png\",\"excerpt\":\"Everything you need for discounts, coupons, credits, gift cards, product giveaways, offers, and promotions. Most popular and complete coupons plugin for WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/smart-coupons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo.storeapps.org\\/?demo=sc\",\"price\":\"&#36;99.00\",\"hash\":\"05c45f2aa466106a466de4402fff9dde\",\"slug\":\"woocommerce-smart-coupons\",\"id\":18729},{\"title\":\"FedEx Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/01\\/FedEx_Logo_Wallpaper.jpeg\",\"excerpt\":\"Get shipping rates from the FedEx API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/fedex-shipping-module\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1a48b598b47a81559baadef15e320f64\",\"slug\":\"woocommerce-shipping-fedex\",\"id\":18620},{\"title\":\"Product CSV Import Suite\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-CSV-Import-Dark.png\",\"excerpt\":\"Import, merge, and export products and variations to and from WooCommerce using a CSV file.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-csv-import-suite\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"7ac9b00a1fe980fb61d28ab54d167d0d\",\"slug\":\"woocommerce-product-csv-import-suite\",\"id\":18680},{\"title\":\"Follow-Ups\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Follow-Ups-Dark.png\",\"excerpt\":\"Automatically contact customers after purchase - be it everyone, your most loyal or your biggest spenders - and keep your store top-of-mind.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/follow-up-emails\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"05ece68fe94558e65278fe54d9ec84d2\",\"slug\":\"woocommerce-follow-up-emails\",\"id\":18686},{\"title\":\"Dynamic Pricing\",\"image\":\"\",\"excerpt\":\"Bulk discounts, role-based pricing and much more\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/dynamic-pricing\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"9a41775bb33843f52c93c922b0053986\",\"slug\":\"woocommerce-dynamic-pricing\",\"id\":18643},{\"title\":\"Name Your Price\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/09\\/nyp-icon-dark-v83owf.png\",\"excerpt\":\"Allow customers to define the product price. Also useful for accepting user-set donations.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/name-your-price\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"31b4e11696cd99a3c0572975a84f1c08\",\"slug\":\"woocommerce-name-your-price\",\"id\":18738},{\"title\":\"WooCommerce Zapier\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/woocommerce-zapier-logo.png\",\"excerpt\":\"Integrate with 2000+ cloud apps and services today.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-zapier\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;59.00\",\"hash\":\"0782bdbe932c00f4978850268c6cfe40\",\"slug\":\"woocommerce-zapier\",\"id\":243589},{\"title\":\"WooCommerce Print Invoices &amp; Packing lists\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/03\\/Thumbnail-Print-Invoices-Packing-lists-updated.png\",\"excerpt\":\"Generate invoices, packing slips, and pick lists for your WooCommerce orders.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/print-invoices-packing-lists\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"465de1126817cdfb42d97ebca7eea717\",\"slug\":\"woocommerce-pip\",\"id\":18666},{\"title\":\"Product Vendors\",\"image\":\"\",\"excerpt\":\"Turn your store into a multi-vendor marketplace\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-vendors\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"a97d99fccd651bbdd728f4d67d492c31\",\"slug\":\"woocommerce-product-vendors\",\"id\":219982},{\"title\":\"Google Product Feed\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2011\\/11\\/logo-regular-lscryp.png\",\"excerpt\":\"Allows you to create real-time product &amp; review feeds to supply product information to Google Merchant Center for setting up Google Product Ads. Also supports Bing Merchant Centre.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-product-feed\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"d55b4f852872025741312839f142447e\",\"slug\":\"woocommerce-product-feeds\",\"id\":18619},{\"title\":\"WooCommerce Accommodation Bookings\",\"image\":\"\",\"excerpt\":\"Book accommodation using WooCommerce and the WooCommerce Bookings extension.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-accommodation-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"99b2a7a4af90b6cefd2a733b3b1f78e7\",\"slug\":\"woocommerce-accommodation-bookings\",\"id\":1412069},{\"title\":\"PayPal Payments Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Paypal-Payments-Pro-Dark.png\",\"excerpt\":\"Take credit card payments directly on your checkout using PayPal Pro.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/paypal-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"6d23ba7f0e0198937c0029f9e865b40e\",\"slug\":\"woocommerce-gateway-paypal-pro\",\"id\":18594},{\"title\":\"WooCommerce Brands\",\"image\":\"\",\"excerpt\":\"Create, assign and list brands for products, and allow customers to view by brand.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/brands\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"8a88c7cbd2f1e73636c331c7a86f818c\",\"slug\":\"woocommerce-brands\",\"id\":18737},{\"title\":\"Gravity Forms Product Add-ons\",\"image\":\"\",\"excerpt\":\"Powerful product add-ons, Gravity style\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/gravity-forms-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/gravity-forms\\/\",\"price\":\"&#36;99.00\",\"hash\":\"a6ac0ab1a1536e3a357ccf24c0650ed0\",\"slug\":\"woocommerce-gravityforms-product-addons\",\"id\":18633},{\"title\":\"Xero\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/08\\/xero2.png\",\"excerpt\":\"Save time with automated sync between WooCommerce and your Xero account.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/xero\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"f0dd29d338d3c67cf6cee88eddf6869b\",\"slug\":\"woocommerce-xero\",\"id\":18733},{\"title\":\"Composite Products\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-CP.png?v=1\",\"excerpt\":\"Create product kit builders and custom product configurators using existing products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/composite-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"0343e0115bbcb97ccd98442b8326a0af\",\"slug\":\"woocommerce-composite-products\",\"id\":216836},{\"title\":\"Advanced Notifications\",\"image\":\"\",\"excerpt\":\"Easily setup \\\"new order\\\" and stock email notifications for multiple recipients of your choosing.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/advanced-notifications\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"112372c44b002fea2640bd6bfafbca27\",\"slug\":\"woocommerce-advanced-notifications\",\"id\":18740},{\"title\":\"Australia Post Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/australia-post.gif\",\"excerpt\":\"Get shipping rates for your WooCommerce store from the Australia Post API, which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/australia-post-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1dbd4dc6bd91a9cda1bd6b9e7a5e4f43\",\"slug\":\"woocommerce-shipping-australia-post\",\"id\":18622},{\"title\":\"WooCommerce Points and Rewards\",\"image\":\"\",\"excerpt\":\"Reward your customers for purchases and other actions with points which can be redeemed for discounts.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-points-and-rewards\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"1649b6cca5da8b923b01ca56b5cdd246\",\"slug\":\"woocommerce-points-and-rewards\",\"id\":210259},{\"title\":\"WooCommerce Paid Courses\",\"image\":\"\",\"excerpt\":\"Sell your online courses using the most popular eCommerce platform on the web \\u2013 WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-paid-courses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"bad2a02a063555b7e2bee59924690763\",\"slug\":\"woothemes-sensei\",\"id\":152116},{\"title\":\"Canada Post Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/canada-post.png\",\"excerpt\":\"Get shipping rates from the Canada Post Ratings API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/canada-post-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ac029cdf3daba20b20c7b9be7dc00e0e\",\"slug\":\"woocommerce-shipping-canada-post\",\"id\":18623},{\"title\":\"WooCommerce AvaTax\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/01\\/Thumbnail-Avalara-updated.png\",\"excerpt\":\"Get 100% accurate sales tax calculations and on time tax return filing. No more tracking sales tax rates, rules, or jurisdictional boundaries.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-avatax\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"57077a4b28ba71cacf692bcf4a1a7f60\",\"slug\":\"woocommerce-avatax\",\"id\":1389326},{\"title\":\"AutomateWoo\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-AutomateWoo-Dark-1.png\",\"excerpt\":\"Powerful marketing automation for WooCommerce. AutomateWoo has the tools you need to grow your store and make more money.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/automatewoo\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"ba9299b8-1dba-4aa0-a313-28bc1755cb88\",\"slug\":\"automatewoo\",\"id\":4652610},{\"title\":\"WooCommerce Subscription Downloads\",\"image\":\"\",\"excerpt\":\"Offer additional downloads to your subscribers, via downloadable products listed in your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscription-downloads\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5be9e21c13953253e4406d2a700382ec\",\"slug\":\"woocommerce-subscription-downloads\",\"id\":420458},{\"title\":\"WooCommerce Pre-Orders\",\"image\":\"\",\"excerpt\":\"Allow customers to order products before they are available.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-pre-orders\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"b2dc75e7d55e6f5bbfaccb59830f66b7\",\"slug\":\"woocommerce-pre-orders\",\"id\":178477},{\"title\":\"Klarna Checkout\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/01\\/Partner_marketing_Klarna_Checkout_Black-1.png\",\"excerpt\":\"Klarna Checkout is a full checkout experience embedded on your site that includes all popular payment methods (Pay Now, Pay Later, Financing, Installments).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/klarna-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.krokedil.se\\/klarnacheckout\\/\",\"price\":\"&#36;0.00\",\"hash\":\"90f8ce584e785fcd8c2d739fd4f40d78\",\"slug\":\"klarna-checkout-for-woocommerce\",\"id\":2754152},{\"title\":\"Catalog Visibility Options\",\"image\":\"\",\"excerpt\":\"Transform WooCommerce into an online catalog by removing eCommerce functionality\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/catalog-visibility-options\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"12e791110365fdbb5865c8658907967e\",\"slug\":\"woocommerce-catalog-visibility-options\",\"id\":18648},{\"title\":\"WooCommerce Additional Variation Images\",\"image\":\"\",\"excerpt\":\"Add gallery images per variation on variable products within WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-additional-variation-images\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/storefront\\/product\\/woo-single-1\\/\",\"price\":\"&#36;49.00\",\"hash\":\"c61dd6de57dcecb32bd7358866de4539\",\"slug\":\"woocommerce-additional-variation-images\",\"id\":477384},{\"title\":\"WooCommerce Deposits\",\"image\":\"\",\"excerpt\":\"Enable customers to pay for products using a deposit or a payment plan.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-deposits\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;179.00\",\"hash\":\"de192a6cf12c4fd803248da5db700762\",\"slug\":\"woocommerce-deposits\",\"id\":977087},{\"title\":\"eWAY\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/eway-logo-3000-2000.jpg\",\"excerpt\":\"Take credit card payments securely via eWay (SG, MY, HK, AU, and NZ) keeping customers on your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/eway\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"2c497769d98d025e0d340cd0b5ea5da1\",\"slug\":\"woocommerce-gateway-eway\",\"id\":18604},{\"title\":\"Royal Mail\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/04\\/royalmail.png\",\"excerpt\":\"Offer Royal Mail shipping rates to your customers\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/royal-mail\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"03839cca1a16c4488fcb669aeb91a056\",\"slug\":\"woocommerce-shipping-royalmail\",\"id\":182719},{\"title\":\"Amazon S3 Storage\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/amazon.png\",\"excerpt\":\"Serve digital products via Amazon S3\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/amazon-s3-storage\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"473bf6f221b865eff165c97881b473bb\",\"slug\":\"woocommerce-amazon-s3-storage\",\"id\":18663},{\"title\":\"Cart Add-ons\",\"image\":\"\",\"excerpt\":\"A powerful tool for driving incremental and impulse purchases by customers once they are in the shopping cart\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/cart-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"3a8ef25334396206f5da4cf208adeda3\",\"slug\":\"woocommerce-cart-add-ons\",\"id\":18717},{\"title\":\"Shipping Multiple Addresses\",\"image\":\"\",\"excerpt\":\"Allow your customers to ship individual items in a single order to multiple addresses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipping-multiple-addresses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa0eb6f777846d329952d5b891d6f8cc\",\"slug\":\"woocommerce-shipping-multiple-addresses\",\"id\":18741},{\"title\":\"Sequential Order Numbers Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/05\\/Thumbnail-Sequential-Order-Numbers-Pro-updated.png\",\"excerpt\":\"Tame your order numbers! Advanced &amp; sequential order numbers with optional prefixes \\/ suffixes\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sequential-order-numbers-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"0b18a2816e016ba9988b93b1cd8fe766\",\"slug\":\"woocommerce-sequential-order-numbers-pro\",\"id\":18688},{\"title\":\"WooCommerce Checkout Add-Ons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/07\\/Thumbnail-Checkout-Add-Ons-updated.png\",\"excerpt\":\"Highlight relevant products, offers like free shipping and other up-sells during checkout.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8fdca00b4000b7a8cc26371d0e470a8f\",\"slug\":\"woocommerce-checkout-add-ons\",\"id\":466854},{\"title\":\"Conditional Shipping and Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-CSP.png?v=1\",\"excerpt\":\"Use conditional logic to restrict the shipping and payment options available on your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/conditional-shipping-and-payments\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1f56ff002fa830b77017b0107505211a\",\"slug\":\"woocommerce-conditional-shipping-and-payments\",\"id\":680253},{\"title\":\"WooCommerce Google Analytics Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/01\\/Thumbnail-GAPro-updated.png\",\"excerpt\":\"Add advanced event tracking and enhanced eCommerce tracking to your WooCommerce site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"d8aed8b7306b509eec1589e59abe319f\",\"slug\":\"woocommerce-google-analytics-pro\",\"id\":1312497},{\"title\":\"WooCommerce Order Status Manager\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/02\\/Thumbnail-Order-Status-Manager-updated.png\",\"excerpt\":\"Create, edit, and delete completely custom order statuses and integrate them seamlessly into your order management flow.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"51fd9ab45394b4cad5a0ebf58d012342\",\"slug\":\"woocommerce-order-status-manager\",\"id\":588398},{\"title\":\"Bulk Stock Management\",\"image\":\"\",\"excerpt\":\"Edit product and variation stock levels in bulk via this handy interface\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bulk-stock-management\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"02f4328d52f324ebe06a78eaaae7934f\",\"slug\":\"woocommerce-bulk-stock-management\",\"id\":18670},{\"title\":\"First Data\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/Thumbnail-FirstData-updated.png\",\"excerpt\":\"FirstData gateway for WooCommerce\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/firstdata\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"eb3e32663ec0810592eaf0d097796230\",\"slug\":\"woocommerce-gateway-firstdata\",\"id\":18645},{\"title\":\"TaxJar\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/10\\/taxjar-logotype.png\",\"excerpt\":\"Save hours every month by putting your sales tax on autopilot. Automated, multi-state sales tax calculation, reporting, and filing for your WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/taxjar\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"12072d8e-e933-4561-97b1-9db3c7eeed91\",\"slug\":\"taxjar-simplified-taxes-for-woocommerce\",\"id\":514914},{\"title\":\"WooCommerce One Page Checkout\",\"image\":\"\",\"excerpt\":\"Create special pages where customers can choose products, checkout &amp; pay all on the one page.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-one-page-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"c9ba8f8352cd71b5508af5161268619a\",\"slug\":\"woocommerce-one-page-checkout\",\"id\":527886},{\"title\":\"WooCommerce Email Customizer\",\"image\":\"\",\"excerpt\":\"Connect with your customers with each email you send by visually modifying your email templates via the WordPress Customizer.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-email-customizer\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"bd909fa97874d431f203b5336c7e8873\",\"slug\":\"woocommerce-email-customizer\",\"id\":853277},{\"title\":\"WooSlider\",\"image\":\"\",\"excerpt\":\"WooSlider is the ultimate responsive slideshow WordPress slider plugin\\r\\n\\r\\n\\u00a0\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/wooslider\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/www.wooslider.com\\/\",\"price\":\"&#36;49.00\",\"hash\":\"209d98f3ccde6cc3de7e8732a2b20b6a\",\"slug\":\"wooslider\",\"id\":46506},{\"title\":\"WooCommerce Quick View\",\"image\":\"\",\"excerpt\":\"Show a quick-view button to view product details and add to cart via lightbox popup\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-quick-view\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"619c6e57ce72c49c4b57e15b06eddb65\",\"slug\":\"woocommerce-quick-view\",\"id\":187509},{\"title\":\"Force Sells\",\"image\":\"\",\"excerpt\":\"Force products to be added to the cart\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/force-sells\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"3ebddfc491ca168a4ea4800b893302b0\",\"slug\":\"woocommerce-force-sells\",\"id\":18678},{\"title\":\"WooCommerce Purchase Order Gateway\",\"image\":\"\",\"excerpt\":\"Receive purchase orders via your WooCommerce-powered online store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-purchase-order\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"573a92318244ece5facb449d63e74874\",\"slug\":\"woocommerce-gateway-purchase-order\",\"id\":478542},{\"title\":\"WooCommerce Product Search\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2014\\/10\\/woocommerce-product-search-product-image-1870x960-1-jvsljj.png\",\"excerpt\":\"The perfect search engine helps customers to find and buy products quickly \\u2013 essential for every WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-product-search\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.itthinx.com\\/wps\\/\",\"price\":\"&#36;49.00\",\"hash\":\"c84cc8ca16ddac3408e6b6c5871133a8\",\"slug\":\"woocommerce-product-search\",\"id\":512174},{\"title\":\"WooCommerce Blocks\",\"image\":\"\",\"excerpt\":\"WooCommerce Blocks offers a range of Gutenberg blocks you can use to build and customise your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gutenberg-products-block\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"c2e9f13a-f90c-4ffe-a8a5-b432399ec263\",\"slug\":\"woo-gutenberg-products-block\",\"id\":3076677},{\"title\":\"WooCommerce Social Login\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/08\\/Thumbnail-Social-Login-updated.png\",\"excerpt\":\"Enable Social Login for seamless checkout and account creation.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-social-login\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demos.skyverge.com\\/woocommerce-social-login\\/\",\"price\":\"&#36;79.00\",\"hash\":\"b231cd6367a79cc8a53b7d992d77525d\",\"slug\":\"woocommerce-social-login\",\"id\":473617},{\"title\":\"Returns and Warranty Requests\",\"image\":\"\",\"excerpt\":\"Manage the RMA process, add warranties to products &amp; let customers request &amp; manage returns \\/ exchanges from their account.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/warranty-requests\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"9b4c41102e6b61ea5f558e16f9b63e25\",\"slug\":\"woocommerce-warranty\",\"id\":228315},{\"title\":\"Product Enquiry Form\",\"image\":\"\",\"excerpt\":\"Allow visitors to contact you directly from the product details page via a reCAPTCHA protected form to enquire about a product.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-enquiry-form\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5a0f5d72519a8ffcc86669f042296937\",\"slug\":\"woocommerce-product-enquiry-form\",\"id\":18601},{\"title\":\"Variation Swatches and Photos\",\"image\":\"\",\"excerpt\":\"Show color and image swatches instead of dropdowns for variable products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/variation-swatches-and-photos\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/swatches-and-photos\\/\",\"price\":\"&#36;99.00\",\"hash\":\"37bea8d549df279c8278878d081b062f\",\"slug\":\"woocommerce-variation-swatches-and-photos\",\"id\":18697},{\"title\":\"WooCommerce Box Office\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-BO-Dark.png\",\"excerpt\":\"Sell tickets for your next event, concert, function, fundraiser or conference directly on your own site\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-box-office\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"e704c9160de318216a8fa657404b9131\",\"slug\":\"woocommerce-box-office\",\"id\":1628717},{\"title\":\"WooCommerce Order Status Control\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/06\\/Thumbnail-Order-Status-Control-updated.png\",\"excerpt\":\"Use this extension to automatically change the order status to \\\"completed\\\" after successful payment.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-control\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"32400e509c7c36dcc1cd368e8267d981\",\"slug\":\"woocommerce-order-status-control\",\"id\":439037},{\"title\":\"Opayo (Formerly SagePay)\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/Opayo_logo_RGB.png\",\"excerpt\":\"Take payments on your WooCommerce store via Opayo (formally SagePay).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sage-pay-form\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"6bc0cca47d0274d8ef9b164f6fbec1cc\",\"slug\":\"woocommerce-gateway-sagepay-form\",\"id\":18599},{\"title\":\"WooCommerce Order Barcodes\",\"image\":\"\",\"excerpt\":\"Generates a unique barcode for each order on your site - perfect for e-tickets, packing slips, reservations and a variety of other uses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-barcodes\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"889835bb29ee3400923653e1e44a3779\",\"slug\":\"woocommerce-order-barcodes\",\"id\":391708},{\"title\":\"QuickBooks Sync for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/04\\/woocommerce-com-logo-1-hyhzbh.png\",\"excerpt\":\"Automatic two-way sync for orders, customers, products, inventory and more between WooCommerce and QuickBooks (Online, Desktop, or POS).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/quickbooks-sync-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"c5e32e20-7c1f-4585-8b15-d930c2d842ac\",\"slug\":\"myworks-woo-sync-for-quickbooks-online\",\"id\":4065824},{\"title\":\"WooCommerce 360\\u00ba Image\",\"image\":\"\",\"excerpt\":\"An easy way to add a dynamic, controllable 360\\u00ba image rotation to your WooCommerce site, by adding a group of images to a product\\u2019s gallery.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-360-image\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"24eb2cfa3738a66bf3b2587876668cd2\",\"slug\":\"woocommerce-360-image\",\"id\":512186},{\"title\":\"EU VAT Number\",\"image\":\"\",\"excerpt\":\"Collect VAT numbers at checkout and remove the VAT charge for eligible EU businesses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/eu-vat-number\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"d2720c4b4bb8d6908e530355b7a2d734\",\"slug\":\"woocommerce-eu-vat-number\",\"id\":18592},{\"title\":\"WooCommerce Photography\",\"image\":\"\",\"excerpt\":\"Sell photos in the blink of an eye using this simple as dragging &amp; dropping interface.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-photography\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ee76e8b9daf1d97ca4d3874cc9e35687\",\"slug\":\"woocommerce-photography\",\"id\":583602},{\"title\":\"QuickBooks Commerce (formerly TradeGecko)\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/09\\/qbo-mark.png\",\"excerpt\":\"Get a wholesale and multichannel inventory &amp; order management platform for your WooCommerce store with QuickBooks Commerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-tradegecko\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"21da7811f7fc1f13ee19daa7415f0ff3\",\"slug\":\"woocommerce-tradegecko\",\"id\":245960},{\"title\":\"Software Add-on\",\"image\":\"\",\"excerpt\":\"Sell License Keys for Software\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/software-add-on\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"79f6dbfe1f1d3a56a86f0509b6d6b04b\",\"slug\":\"woocommerce-software-add-on\",\"id\":18683},{\"title\":\"WooCommerce Tab Manager\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/11\\/Thumbnail-Tab-Manager-updated.png\",\"excerpt\":\"Gives you complete control over your product page tabs, create local and global tabs using a visual drag-and-drop interface, and more.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-tab-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"89a9ac74850855cfe772b4b4ee1e31e0\",\"slug\":\"woocommerce-tab-manager\",\"id\":132195},{\"title\":\"WooCommerce Bookings Availability\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Aval-Dark.png\",\"excerpt\":\"Sell more bookings by presenting a calendar or schedule of available slots in a page or post.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bookings-availability\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"30770d2a-e392-4e82-baaa-76cfc7d02ae3\",\"slug\":\"woocommerce-bookings-availability\",\"id\":4228225},{\"title\":\"Coupon Shortcodes\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/09\\/woocommerce-coupon-shortcodes-product-image-1870x960-1-vc5gux.png\",\"excerpt\":\"Show coupon discount info using shortcodes. Allows to render coupon information and content conditionally, based on the validity of coupons.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/coupon-shortcodes\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"ac5d9d51-70b2-4d8f-8b89-24200eea1394\",\"slug\":\"woocommerce-coupon-shortcodes\",\"id\":244762},{\"title\":\"WooCommerce Products Compare\",\"image\":\"\",\"excerpt\":\"WooCommerce Products Compare will allow your potential customers to easily compare products within your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-products-compare\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"c3ba0a4a3199a0cc7a6112eb24414548\",\"slug\":\"woocommerce-products-compare\",\"id\":853117},{\"title\":\"WooCommerce Store Catalog PDF Download\",\"image\":\"\",\"excerpt\":\"Offer your customers a PDF download of your product catalog, generated by WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-store-catalog-pdf-download\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"79ca7aadafe706364e2d738b7c1090c4\",\"slug\":\"woocommerce-store-catalog-pdf-download\",\"id\":675790},{\"title\":\"Customer\\/Order\\/Coupon CSV Import Suite\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/07\\/Thumbnail-Customer-Order-Coupon-CSV-Import-Suite-updated.png\",\"excerpt\":\"Import both customers and orders into WooCommerce from a CSV file.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/customerorder-csv-import-suite\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"eb00ca8317a0f64dbe185c995e5ea3df\",\"slug\":\"woocommerce-customer-order-csv-import\",\"id\":18709}]}\";s:7:\"headers\";O:25:\"Requests_Response_Headers\":1:{s:7:\"\0*\0data\";a:17:{s:6:\"server\";a:1:{i:0;s:5:\"nginx\";}s:4:\"date\";a:1:{i:0;s:29:\"Tue, 12 Jan 2021 11:07:43 GMT\";}s:12:\"content-type\";a:1:{i:0;s:31:\"application/json; charset=UTF-8\";}s:14:\"content-length\";a:1:{i:0;s:5:\"11456\";}s:12:\"x-robots-tag\";a:1:{i:0;s:7:\"noindex\";}s:4:\"link\";a:1:{i:0;s:60:\"<https://woocommerce.com/wp-json/>; rel=\"https://api.w.org/\"\";}s:22:\"x-content-type-options\";a:1:{i:0;s:7:\"nosniff\";}s:29:\"access-control-expose-headers\";a:1:{i:0;s:33:\"X-WP-Total, X-WP-TotalPages, Link\";}s:28:\"access-control-allow-headers\";a:1:{i:0;s:73:\"Authorization, X-WP-Nonce, Content-Disposition, Content-MD5, Content-Type\";}s:13:\"cache-control\";a:1:{i:0;s:10:\"max-age=60\";}s:5:\"allow\";a:1:{i:0;s:3:\"GET\";}s:16:\"content-encoding\";a:1:{i:0;s:4:\"gzip\";}s:4:\"x-rq\";a:1:{i:0;s:15:\"hkg2 87 20 3199\";}s:3:\"age\";a:1:{i:0;s:2:\"12\";}s:7:\"x-cache\";a:1:{i:0;s:3:\"hit\";}s:4:\"vary\";a:1:{i:0;s:23:\"Accept-Encoding, Origin\";}s:13:\"accept-ranges\";a:1:{i:0;s:5:\"bytes\";}}}s:11:\"status_code\";i:200;s:16:\"protocol_version\";d:1.1;s:7:\"success\";b:1;s:9:\"redirects\";i:0;s:3:\"url\";s:59:\"https://woocommerce.com/wp-json/wccom-extensions/1.0/search\";s:7:\"history\";a:0:{}s:7:\"cookies\";O:19:\"Requests_Cookie_Jar\":1:{s:10:\"\0*\0cookies\";a:0:{}}}s:11:\"\0*\0filename\";N;s:4:\"data\";N;s:7:\"headers\";N;s:6:\"status\";N;}}', 'no');
INSERT INTO `hk5_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1709, '_transient_woocommerce_reports-transient-version', '1610232843', 'yes'),
(1710, '_transient_timeout_orders-all-statuses', '1610837643', 'no'),
(1711, '_transient_orders-all-statuses', 'a:2:{s:7:\"version\";s:10:\"1610232843\";s:5:\"value\";a:0:{}}', 'no'),
(1931, '_transient_wc_shipping_method_count', 'a:2:{s:7:\"version\";s:10:\"1610279374\";s:5:\"value\";i:0;}', 'no'),
(2815, '_transient_timeout_wc_onboarding_themes', '1610536064', 'no'),
(2816, '_transient_wc_onboarding_themes', 'a:25:{s:10:\"cookie-cms\";a:6:{s:4:\"slug\";s:10:\"cookie-cms\";s:5:\"title\";s:21:\"Web Shop TNT CMS TEAM\";s:5:\"price\";s:4:\"0.00\";s:12:\"is_installed\";b:1;s:5:\"image\";s:79:\"http://localhost/shop-cms-wordpress/wp-content/themes/cookie-cms/screenshot.png\";s:23:\"has_woocommerce_support\";b:1;}s:10:\"storefront\";a:11:{s:5:\"title\";s:10:\"Storefront\";s:5:\"image\";s:77:\"https://woocommerce.com/wp-content/themes/woo/images/storefront/feature-1.jpg\";s:7:\"excerpt\";s:161:\"Storefront is an intuitive &amp; flexible, free theme offering deep integration with WooCommerce.\r\n\r\nIt\'s the perfect platform for your next WooCommerce project.\";s:4:\"link\";s:103:\"https://woocommerce.com/products/storefront/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:8:\"demo_url\";s:42:\"https://themes.woocommerce.com/storefront/\";s:5:\"price\";s:9:\"&#36;0.00\";s:4:\"hash\";s:32:\"5714dad8f8d0b930bd6cc9c99657b930\";s:4:\"slug\";s:10:\"storefront\";s:2:\"id\";i:565154;s:12:\"is_installed\";b:0;s:23:\"has_woocommerce_support\";b:1;}s:6:\"agency\";a:11:{s:5:\"title\";s:6:\"Agency\";s:5:\"image\";s:70:\"https://woocommerce.com/wp-content/uploads/2020/10/agency-featured.jpg\";s:7:\"excerpt\";s:134:\"Agency is a Gutenberg and WooCommerce optimized WordPress theme for marketing, advertising, and creative agencies. Sell your services!\";s:4:\"link\";s:99:\"https://woocommerce.com/products/agency/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:8:\"demo_url\";s:38:\"https://organicthemes.com/demo/agency/\";s:5:\"price\";s:10:\"&#36;79.00\";s:4:\"hash\";s:36:\"4a3a3a22-a5f0-4fa4-8c09-4f37575602ef\";s:4:\"slug\";s:6:\"agency\";s:2:\"id\";i:6674855;s:12:\"is_installed\";b:0;s:23:\"has_woocommerce_support\";b:1;}s:6:\"rhodes\";a:11:{s:5:\"title\";s:6:\"Rhodes\";s:5:\"image\";s:66:\"https://woocommerce.com/wp-content/uploads/2020/09/rhodes-home.jpg\";s:7:\"excerpt\";s:193:\"The perfect WooCommerce theme for retailers. Whether you\'re selling high-street fashion, beauty products, or home accessories, Rhodes will just stand out of the way letting your products shine.\";s:4:\"link\";s:99:\"https://woocommerce.com/products/rhodes/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:8:\"demo_url\";s:34:\"https://www.cssigniter.com/rhodes/\";s:5:\"price\";s:10:\"&#36;79.00\";s:4:\"hash\";s:36:\"b95c0103-23b9-43f3-af49-ee7eaa35e49b\";s:4:\"slug\";s:6:\"rhodes\";s:2:\"id\";i:6509339;s:12:\"is_installed\";b:0;s:23:\"has_woocommerce_support\";b:1;}s:11:\"restoration\";a:11:{s:5:\"title\";s:11:\"Restoration\";s:5:\"image\";s:78:\"https://woocommerce.com/wp-content/uploads/2020/09/restoration-woocommerce.jpg\";s:7:\"excerpt\";s:90:\"An elegant and sophisticated mobile-first, Gutenberg-powered theme for WooCommerce stores.\";s:4:\"link\";s:104:\"https://woocommerce.com/products/restoration/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:8:\"demo_url\";s:35:\"https://restoration.fuelthemes.net/\";s:5:\"price\";s:10:\"&#36;79.00\";s:4:\"hash\";s:36:\"e793e6af-f338-4e92-b268-e0576ddb137b\";s:4:\"slug\";s:11:\"restoration\";s:2:\"id\";i:6454820;s:12:\"is_installed\";b:0;s:23:\"has_woocommerce_support\";b:1;}s:7:\"matthew\";a:11:{s:5:\"title\";s:7:\"Matthew\";s:5:\"image\";s:71:\"https://woocommerce.com/wp-content/uploads/2020/06/screenshot.png?w=620\";s:7:\"excerpt\";s:145:\"Matthew is a Gutenberg-powered WooCommerce theme designed for building a professional online store so that you can sell goods or services online.\";s:4:\"link\";s:100:\"https://woocommerce.com/products/matthew/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:8:\"demo_url\";s:38:\"https://demo.themesharbor.com/matthew/\";s:5:\"price\";s:11:\"&#36;129.00\";s:4:\"hash\";s:36:\"b3983408-c4f6-4751-8bd7-ae65ae34cf3b\";s:4:\"slug\";s:7:\"matthew\";s:2:\"id\";i:6214538;s:12:\"is_installed\";b:0;s:23:\"has_woocommerce_support\";b:1;}s:11:\"fifthavenue\";a:11:{s:5:\"title\";s:12:\"Fifth Avenue\";s:5:\"image\";s:78:\"https://woocommerce.com/wp-content/uploads/2020/06/fifthavenue-woocommerce.jpg\";s:7:\"excerpt\";s:103:\"Beautiful Gutenberg powered WooCommerce theme designed to be easily customized for all types of stores.\";s:4:\"link\";s:105:\"https://woocommerce.com/products/fifth-avenue/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:8:\"demo_url\";s:35:\"https://fifthavenue.fuelthemes.net/\";s:5:\"price\";s:10:\"&#36;79.00\";s:4:\"hash\";s:36:\"9e093a9f-3d49-4fcd-bec7-c87b097d9df8\";s:4:\"slug\";s:11:\"fifthavenue\";s:2:\"id\";i:5989481;s:12:\"is_installed\";b:0;s:23:\"has_woocommerce_support\";b:1;}s:7:\"artisan\";a:11:{s:5:\"title\";s:7:\"Artisan\";s:5:\"image\";s:71:\"https://woocommerce.com/wp-content/uploads/2020/03/artisan-featured.jpg\";s:7:\"excerpt\";s:79:\"Sell your hand-crafted products online using the Artisan Theme for WooCommerce.\";s:4:\"link\";s:100:\"https://woocommerce.com/products/artisan/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:8:\"demo_url\";s:39:\"https://organicthemes.com/demo/artisan/\";s:5:\"price\";s:10:\"&#36;79.00\";s:4:\"hash\";s:36:\"64529812-81f6-4efd-9686-ecb34e527421\";s:4:\"slug\";s:7:\"artisan\";s:2:\"id\";i:5576887;s:12:\"is_installed\";b:0;s:23:\"has_woocommerce_support\";b:1;}s:7:\"threads\";a:11:{s:5:\"title\";s:7:\"Threads\";s:5:\"image\";s:75:\"https://woocommerce.com/wp-content/uploads/2019/08/threads-home-cropped.jpg\";s:7:\"excerpt\";s:79:\"Create a stunning website for your apparel brand using Threads for WooCommerce.\";s:4:\"link\";s:100:\"https://woocommerce.com/products/threads/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:8:\"demo_url\";s:39:\"https://organicthemes.com/demo/threads/\";s:5:\"price\";s:10:\"&#36;79.00\";s:4:\"hash\";s:36:\"7ca579a6-6aaf-498c-9ee7-e15280ace9e9\";s:4:\"slug\";s:7:\"threads\";s:2:\"id\";i:4663191;s:12:\"is_installed\";b:0;s:23:\"has_woocommerce_support\";b:1;}s:10:\"block-shop\";a:11:{s:5:\"title\";s:10:\"Block Shop\";s:5:\"image\";s:79:\"https://woocommerce.com/wp-content/uploads/2019/08/block-shop-theme-preview.jpg\";s:7:\"excerpt\";s:154:\"A hassle-free Block-Editor-Era theme for your next WooCommerce project.\r\n\r\n&nbsp;\r\n\r\nPre-sale questions? Ask Get Bowtied: http://m.me/getbowtied\r\n\r\n&nbsp;\";s:4:\"link\";s:103:\"https://woocommerce.com/products/block-shop/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:8:\"demo_url\";s:34:\"https://blockshop.wp-theme.design/\";s:5:\"price\";s:10:\"&#36;59.00\";s:4:\"hash\";s:36:\"21fa433c-6c31-4be7-83ab-8d2cc8986130\";s:4:\"slug\";s:10:\"block-shop\";s:2:\"id\";i:4660093;s:12:\"is_installed\";b:0;s:23:\"has_woocommerce_support\";b:1;}s:6:\"bistro\";a:11:{s:5:\"title\";s:6:\"Bistro\";s:5:\"image\";s:61:\"https://woocommerce.com/wp-content/uploads/2016/07/bistro.png\";s:7:\"excerpt\";s:174:\"Bistro is a Storefront child theme designed for stores selling organic goods and other consumables. It features a friendly and warm design that lends itself to this industry.\";s:4:\"link\";s:99:\"https://woocommerce.com/products/bistro/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:8:\"demo_url\";s:37:\"https://themes.woocommerce.com/bistro\";s:5:\"price\";s:10:\"&#36;39.00\";s:4:\"hash\";s:32:\"58e753f91fddf40abe8ebe4486f8c378\";s:4:\"slug\";s:6:\"bistro\";s:2:\"id\";i:1822936;s:12:\"is_installed\";b:0;s:23:\"has_woocommerce_support\";b:1;}s:10:\"stationery\";a:11:{s:5:\"title\";s:10:\"Stationery\";s:5:\"image\";s:65:\"https://woocommerce.com/wp-content/uploads/2016/04/stationery.jpg\";s:7:\"excerpt\";s:186:\"Stationery is a Storefront child theme designed for stores selling office supplies and/or arts &amp; crafts. The design has subtle tactile decorations while also being clean and elegant.\";s:4:\"link\";s:103:\"https://woocommerce.com/products/stationery/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:8:\"demo_url\";s:42:\"https://themes.woocommerce.com/stationery/\";s:5:\"price\";s:10:\"&#36;39.00\";s:4:\"hash\";s:32:\"b939225b8b8ccdc7b14ffb6d7eab2ac2\";s:4:\"slug\";s:10:\"stationery\";s:2:\"id\";i:1629126;s:12:\"is_installed\";b:0;s:23:\"has_woocommerce_support\";b:1;}s:7:\"petshop\";a:11:{s:5:\"title\";s:7:\"Petshop\";s:5:\"image\";s:62:\"https://woocommerce.com/wp-content/uploads/2016/03/petshop.png\";s:7:\"excerpt\";s:181:\"Petshop is a Storefront child theme designed for stores selling products in the pet industry. The design is organic and friendly, featuring many details that point to pet ownership.\";s:4:\"link\";s:100:\"https://woocommerce.com/products/petshop/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:8:\"demo_url\";s:39:\"https://themes.woocommerce.com/petshop/\";s:5:\"price\";s:10:\"&#36;39.00\";s:4:\"hash\";s:32:\"8060743c9031974326850f539aba5196\";s:4:\"slug\";s:7:\"petshop\";s:2:\"id\";i:1587689;s:12:\"is_installed\";b:0;s:23:\"has_woocommerce_support\";b:1;}s:5:\"hotel\";a:11:{s:5:\"title\";s:5:\"Hotel\";s:5:\"image\";s:69:\"https://woocommerce.com/wp-content/uploads/2016/03/hotel-featured.jpg\";s:7:\"excerpt\";s:246:\"Hotel is designed for businesses selling time, services and accommodation, offering unique integration with WooCommerce Bookings and Accommodation Bookings. The design is bold yet simple, allowing your content and imagery to do all the talking.\";s:4:\"link\";s:98:\"https://woocommerce.com/products/hotel/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:8:\"demo_url\";s:37:\"https://themes.woocommerce.com/hotel/\";s:5:\"price\";s:10:\"&#36;39.00\";s:4:\"hash\";s:32:\"0b0df891aa46f289f4e49bae2389bb04\";s:4:\"slug\";s:5:\"hotel\";s:2:\"id\";i:1554532;s:12:\"is_installed\";b:0;s:23:\"has_woocommerce_support\";b:1;}s:8:\"bookshop\";a:11:{s:5:\"title\";s:8:\"Bookshop\";s:5:\"image\";s:63:\"https://woocommerce.com/wp-content/uploads/2016/02/featured.png\";s:7:\"excerpt\";s:183:\"Bookshop comes with a unique homepage layout that prominently displays product categories and a variety of products in an arrangement that is popular with bookstores and collectibles.\";s:4:\"link\";s:101:\"https://woocommerce.com/products/bookshop/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:8:\"demo_url\";s:40:\"https://themes.woocommerce.com/bookshop/\";s:5:\"price\";s:10:\"&#36;39.00\";s:4:\"hash\";s:32:\"9fe861227e3e82fde8fe5d7e8cc3340e\";s:4:\"slug\";s:8:\"bookshop\";s:2:\"id\";i:1508713;s:12:\"is_installed\";b:0;s:23:\"has_woocommerce_support\";b:1;}s:6:\"arcade\";a:11:{s:5:\"title\";s:6:\"Arcade\";s:5:\"image\";s:61:\"https://woocommerce.com/wp-content/uploads/2016/01/arcade.png\";s:7:\"excerpt\";s:216:\"Upgrade your video game shops look and feel with Arcade. It\'s bold and modern design will engage visitors and the unique homepage layout will present them with a variety of products as soon as they hit your homepage.\";s:4:\"link\";s:99:\"https://woocommerce.com/products/arcade/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:8:\"demo_url\";s:38:\"https://themes.woocommerce.com/arcade/\";s:5:\"price\";s:10:\"&#36;39.00\";s:4:\"hash\";s:32:\"5af09d4e590eec977c6b9519b517f479\";s:4:\"slug\";s:6:\"arcade\";s:2:\"id\";i:1418260;s:12:\"is_installed\";b:0;s:23:\"has_woocommerce_support\";b:1;}s:9:\"homestore\";a:11:{s:5:\"title\";s:9:\"Homestore\";s:5:\"image\";s:64:\"https://woocommerce.com/wp-content/uploads/2015/12/homestore.jpg\";s:7:\"excerpt\";s:166:\"Give your Department Store a classic look with Homestore. Its clean and efficient design will work well whether you\'re a boutique independent or a high street giant.\";s:4:\"link\";s:102:\"https://woocommerce.com/products/homestore/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:8:\"demo_url\";s:41:\"https://themes.woocommerce.com/homestore/\";s:5:\"price\";s:10:\"&#36;39.00\";s:4:\"hash\";s:32:\"d79fe7a1beba26523aafa6ce6d3e1e85\";s:4:\"slug\";s:9:\"homestore\";s:2:\"id\";i:1365559;s:12:\"is_installed\";b:0;s:23:\"has_woocommerce_support\";b:1;}s:8:\"pharmacy\";a:11:{s:5:\"title\";s:8:\"Pharmacy\";s:5:\"image\";s:63:\"https://woocommerce.com/wp-content/uploads/2015/12/pharmacy.jpg\";s:7:\"excerpt\";s:235:\"Give your health store a professional, trust-worthy design with the Pharmacy Storefront Child Theme. Built upon our rock solid Storefront Parent theme you\'ll also enjoy reliable integration with current and future WooCommerce releases.\";s:4:\"link\";s:101:\"https://woocommerce.com/products/pharmacy/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:8:\"demo_url\";s:40:\"https://themes.woocommerce.com/pharmacy/\";s:5:\"price\";s:10:\"&#36;39.00\";s:4:\"hash\";s:32:\"ebeff3c0f89cd3169fb6b3e7e137e513\";s:4:\"slug\";s:8:\"pharmacy\";s:2:\"id\";i:1365557;s:12:\"is_installed\";b:0;s:23:\"has_woocommerce_support\";b:1;}s:7:\"toyshop\";a:11:{s:5:\"title\";s:7:\"ToyShop\";s:5:\"image\";s:62:\"https://woocommerce.com/wp-content/uploads/2015/09/toyshop.jpg\";s:7:\"excerpt\";s:269:\"Add some fun to your store with ToyShop. The engaging and colorful design of ToyShop makes it a perfect child theme or any store that sells exciting products that are aimed at customers that like to have fun. The outdoorsy style would even be perfect for a flower shop.\";s:4:\"link\";s:100:\"https://woocommerce.com/products/toyshop/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:8:\"demo_url\";s:39:\"https://themes.woocommerce.com/toyshop/\";s:5:\"price\";s:10:\"&#36;39.00\";s:4:\"hash\";s:32:\"3e2520021b41ee49a55b93362aaced98\";s:4:\"slug\";s:7:\"toyshop\";s:2:\"id\";i:1230716;s:12:\"is_installed\";b:0;s:23:\"has_woocommerce_support\";b:1;}s:6:\"outlet\";a:11:{s:5:\"title\";s:6:\"Outlet\";s:5:\"image\";s:61:\"https://woocommerce.com/wp-content/uploads/2015/09/outlet.jpg\";s:7:\"excerpt\";s:221:\"Overclock your tech store with Outlet! Whether you sell boutique iPad jewellery or the nuts and bolts of hardware itself, Outlet will give your shop a stylish look and feel while enjoying the stability of Storefront core.\";s:4:\"link\";s:99:\"https://woocommerce.com/products/outlet/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:8:\"demo_url\";s:38:\"https://themes.woocommerce.com/outlet/\";s:5:\"price\";s:10:\"&#36;39.00\";s:4:\"hash\";s:32:\"4c311cb3a3131570946b8799715a0991\";s:4:\"slug\";s:6:\"outlet\";s:2:\"id\";i:1212805;s:12:\"is_installed\";b:0;s:23:\"has_woocommerce_support\";b:1;}s:7:\"proshop\";a:11:{s:5:\"title\";s:7:\"ProShop\";s:5:\"image\";s:62:\"https://woocommerce.com/wp-content/uploads/2015/06/proshop.jpg\";s:7:\"excerpt\";s:176:\"Unlock the true potential of your sports clothing and equipment store with ProShop! It\'s metropolitan design provides an active aesthetic giving your store oodles of character.\";s:4:\"link\";s:100:\"https://woocommerce.com/products/proshop/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:8:\"demo_url\";s:39:\"https://themes.woocommerce.com/proshop/\";s:5:\"price\";s:10:\"&#36;39.00\";s:4:\"hash\";s:32:\"1d51b8633bbd1782dc17fce15f8bd2af\";s:4:\"slug\";s:7:\"proshop\";s:2:\"id\";i:1000757;s:12:\"is_installed\";b:0;s:23:\"has_woocommerce_support\";b:1;}s:8:\"galleria\";a:11:{s:5:\"title\";s:8:\"Galleria\";s:5:\"image\";s:68:\"https://woocommerce.com/wp-content/uploads/2015/05/galleria-hero.png\";s:7:\"excerpt\";s:162:\"Galleria is a Storefront child theme perfect for fashion and design stores. Stylish and minimalist, it gives sites a classy look and keeps products center stage.\";s:4:\"link\";s:101:\"https://woocommerce.com/products/galleria/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:8:\"demo_url\";s:40:\"https://themes.woocommerce.com/galleria/\";s:5:\"price\";s:10:\"&#36;39.00\";s:4:\"hash\";s:32:\"2429c1dde521031cd053886b15844bbf\";s:4:\"slug\";s:8:\"galleria\";s:2:\"id\";i:887931;s:12:\"is_installed\";b:0;s:23:\"has_woocommerce_support\";b:1;}s:4:\"deli\";a:11:{s:5:\"title\";s:4:\"Deli\";s:5:\"image\";s:59:\"https://woocommerce.com/wp-content/uploads/2015/03/deli.jpg\";s:7:\"excerpt\";s:135:\"Deli is a Storefront child theme featuring a texturised, earthy design, perfect for stores selling natural, organic or hand made goods.\";s:4:\"link\";s:97:\"https://woocommerce.com/products/deli/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:8:\"demo_url\";s:36:\"https://themes.woocommerce.com/deli/\";s:5:\"price\";s:9:\"&#36;0.00\";s:4:\"hash\";s:32:\"83c6db94c8ebf9da56b59fb97f724e88\";s:4:\"slug\";s:4:\"deli\";s:2:\"id\";i:784823;s:12:\"is_installed\";b:0;s:23:\"has_woocommerce_support\";b:1;}s:8:\"boutique\";a:11:{s:5:\"title\";s:8:\"Boutique\";s:5:\"image\";s:63:\"https://woocommerce.com/wp-content/uploads/2015/01/boutique.png\";s:7:\"excerpt\";s:168:\"Boutique is a simple, traditionally designed Storefront child theme, ideal for small stores or boutiques. Add your logo, create a unique color scheme and start selling!\";s:4:\"link\";s:101:\"https://woocommerce.com/products/boutique/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:8:\"demo_url\";s:40:\"https://themes.woocommerce.com/boutique/\";s:5:\"price\";s:9:\"&#36;0.00\";s:4:\"hash\";s:32:\"71815288e266d58031727d48d6deee25\";s:4:\"slug\";s:8:\"boutique\";s:2:\"id\";i:605777;s:12:\"is_installed\";b:0;s:23:\"has_woocommerce_support\";b:1;}s:14:\"twentynineteen\";a:6:{s:4:\"slug\";s:14:\"twentynineteen\";s:5:\"title\";s:15:\"Twenty Nineteen\";s:5:\"price\";s:4:\"0.00\";s:12:\"is_installed\";b:1;s:5:\"image\";s:83:\"http://localhost/shop-cms-wordpress/wp-content/themes/twentynineteen/screenshot.png\";s:23:\"has_woocommerce_support\";b:0;}}', 'no'),
(1750, '_site_transient_timeout_browser_2d6330f380f44ac20f3a02eed0958f66', '1610878086', 'no'),
(1751, '_site_transient_browser_2d6330f380f44ac20f3a02eed0958f66', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"87.0.4280.88\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(1833, '_transient_timeout_wc_product_loop_68db94fb6a72a2984e1b265b06f37763', '1613003416', 'no'),
(1752, '_site_transient_timeout_php_check_7ddb89c02f1abf791c6717dc46cef1eb', '1610878087', 'no'),
(1753, '_site_transient_php_check_7ddb89c02f1abf791c6717dc46cef1eb', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(1807, '_transient_product-transient-version', '1610509014', 'yes'),
(1758, '_transient_timeout_wc_report_sales_by_date', '1610536059', 'no'),
(1759, '_transient_wc_report_sales_by_date', 'a:24:{s:32:\"f32df9bc198e3bd5a5898d7b34b34bd5\";a:0:{}s:32:\"7ac766785b4d0b32cf762180dc5cca85\";a:0:{}s:32:\"c8bf830bd3022e1d911a18eb034ec90e\";a:0:{}s:32:\"0d79fd1ab9ce5bfcde5b6036b286f8a5\";N;s:32:\"bef0f52090c5efef1234f501ea762f82\";a:0:{}s:32:\"3e9a7d347bc5ef1239270aecaec18c9d\";a:0:{}s:32:\"2a48f1061ad25b35e384b95b04aa5101\";a:0:{}s:32:\"61977d736c22d9d5ab66d05746e0da89\";a:0:{}s:32:\"2e17e26e40ff1b702c43af0a4b7e2f7d\";a:0:{}s:32:\"328e92ea83296ea68e07869335fa07ba\";a:0:{}s:32:\"0de5370b478585d91bb617de39924d60\";a:0:{}s:32:\"1732993be98450d8fcced42c85791377\";N;s:32:\"d0e4d3464b5e02136a41e00aafba8d33\";a:0:{}s:32:\"49cb5712172ddf927544537ec3272565\";a:0:{}s:32:\"b22ec997458e1f84af801b4d7b6ae2ea\";a:0:{}s:32:\"d09087f4036d5284e3c66265f262d2c6\";a:0:{}s:32:\"214eb4a243b5d2a39ccc5c26f0a7f1d2\";a:0:{}s:32:\"216e43f01138959450b9be29c2718def\";a:0:{}s:32:\"0c392316e3280eac2a9f4e6074b6613e\";a:0:{}s:32:\"5103ca8d541d8c804081c8c754f68ef6\";N;s:32:\"cd34e2e5780f48ac60fe9106c7b7a674\";a:0:{}s:32:\"0efe247744f296cadf5960c0e911ac96\";a:0:{}s:32:\"1593ece85fe357a1887477fb0dc7c01e\";a:0:{}s:32:\"d8abb40f7d7ee9dde9d1cfd869a8a045\";a:0:{}}', 'no'),
(1760, '_transient_timeout_wc_admin_report', '1610536059', 'no'),
(1761, '_transient_wc_admin_report', 'a:1:{s:32:\"aba00dc9ac0fef81d5132e17a8b2886d\";a:0:{}}', 'no'),
(1826, '_transient_timeout_wc_shipping_method_count_legacy', '1612871374', 'no'),
(1827, '_transient_wc_shipping_method_count_legacy', 'a:2:{s:7:\"version\";s:10:\"1610279374\";s:5:\"value\";i:0;}', 'no'),
(1834, '_transient_wc_product_loop_68db94fb6a72a2984e1b265b06f37763', 'a:2:{s:7:\"version\";s:10:\"1610407608\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:0:{}s:5:\"total\";i:0;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:10;s:12:\"current_page\";i:1;}}', 'no'),
(2963, '_transient_timeout_woocommerce_admin_low_out_of_stock_count', '1610512615', 'no'),
(2964, '_transient_woocommerce_admin_low_out_of_stock_count', '0', 'no'),
(1930, '_transient_timeout_wc_shipping_method_count', '1612881280', 'no'),
(2219, '_site_transient_timeout_browser_94fb6483abf307a4bafac80827dcc22a', '1610964172', 'no'),
(2220, '_site_transient_browser_94fb6483abf307a4bafac80827dcc22a', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"87.0.4280.141\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(2540, 'product_cat_children', 'a:3:{i:38;a:2:{i:0;i:41;i:1;i:72;}i:55;a:3:{i:0;i:56;i:1;i:66;i:2;i:68;}i:60;a:2:{i:0;i:61;i:1;i:62;}}', 'yes'),
(2917, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1610507711;s:7:\"checked\";a:2:{s:10:\"cookie-cms\";s:3:\"1.0\";s:14:\"twentynineteen\";s:3:\"1.5\";}s:8:\"response\";a:1:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.9.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(2918, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1610507712;s:7:\"checked\";a:8:{s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:4:\"7.32\";s:85:\"all-in-one-wp-migration-gdrive-extension/all-in-one-wp-migration-gdrive-extension.php\";s:4:\"2.58\";s:25:\"duplicator/duplicator.php\";s:8:\"1.3.40.1\";s:59:\"kliken-marketing-for-google/kliken-marketing-for-google.php\";s:5:\"1.0.6\";s:21:\"test-block/plugin.php\";s:5:\"1.0.0\";s:41:\"widget-css-classes/widget-css-classes.php\";s:7:\"1.5.4.1\";s:27:\"woocommerce/woocommerce.php\";s:5:\"4.8.0\";s:21:\"wp-sweep/wp-sweep.php\";s:5:\"1.1.3\";}s:8:\"response\";a:1:{s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"4.9.0\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.4.9.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2366418\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2366418\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2366418\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2366418\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.6\";s:12:\"requires_php\";s:3:\"7.0\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:37:\"w.org/plugins/all-in-one-wp-migration\";s:4:\"slug\";s:23:\"all-in-one-wp-migration\";s:6:\"plugin\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:11:\"new_version\";s:4:\"7.32\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/all-in-one-wp-migration/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.7.32.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=2427458\";s:2:\"1x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-128x128.png?rev=2427458\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.png?rev=2427458\";s:2:\"1x\";s:78:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-772x250.png?rev=2427458\";}s:11:\"banners_rtl\";a:0:{}}s:25:\"duplicator/duplicator.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"w.org/plugins/duplicator\";s:4:\"slug\";s:10:\"duplicator\";s:6:\"plugin\";s:25:\"duplicator/duplicator.php\";s:11:\"new_version\";s:8:\"1.3.40.1\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/duplicator/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/duplicator.1.3.40.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/duplicator/assets/icon-256x256.png?rev=2083921\";s:2:\"1x\";s:63:\"https://ps.w.org/duplicator/assets/icon-128x128.png?rev=2083921\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/duplicator/assets/banner-772x250.png?rev=2085472\";}s:11:\"banners_rtl\";a:0:{}}s:59:\"kliken-marketing-for-google/kliken-marketing-for-google.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:41:\"w.org/plugins/kliken-marketing-for-google\";s:4:\"slug\";s:27:\"kliken-marketing-for-google\";s:6:\"plugin\";s:59:\"kliken-marketing-for-google/kliken-marketing-for-google.php\";s:11:\"new_version\";s:5:\"1.0.6\";s:3:\"url\";s:58:\"https://wordpress.org/plugins/kliken-marketing-for-google/\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/plugin/kliken-marketing-for-google.1.0.6.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:72:\"https://ps.w.org/kliken-marketing-for-google/assets/icon.svg?rev=2246875\";s:3:\"svg\";s:72:\"https://ps.w.org/kliken-marketing-for-google/assets/icon.svg?rev=2246875\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:83:\"https://ps.w.org/kliken-marketing-for-google/assets/banner-1544x500.png?rev=2384650\";s:2:\"1x\";s:82:\"https://ps.w.org/kliken-marketing-for-google/assets/banner-772x250.png?rev=2384650\";}s:11:\"banners_rtl\";a:0:{}}s:41:\"widget-css-classes/widget-css-classes.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/widget-css-classes\";s:4:\"slug\";s:18:\"widget-css-classes\";s:6:\"plugin\";s:41:\"widget-css-classes/widget-css-classes.php\";s:11:\"new_version\";s:7:\"1.5.4.1\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/widget-css-classes/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/widget-css-classes.1.5.4.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/widget-css-classes/assets/icon-256x256.jpg?rev=1130657\";s:2:\"1x\";s:71:\"https://ps.w.org/widget-css-classes/assets/icon-128x128.jpg?rev=1130657\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/widget-css-classes/assets/banner-1544x500.jpg?rev=1130650\";s:2:\"1x\";s:73:\"https://ps.w.org/widget-css-classes/assets/banner-772x250.jpg?rev=1130650\";}s:11:\"banners_rtl\";a:0:{}}s:21:\"wp-sweep/wp-sweep.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:22:\"w.org/plugins/wp-sweep\";s:4:\"slug\";s:8:\"wp-sweep\";s:6:\"plugin\";s:21:\"wp-sweep/wp-sweep.php\";s:11:\"new_version\";s:5:\"1.1.3\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/wp-sweep/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/wp-sweep.1.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:53:\"https://ps.w.org/wp-sweep/assets/icon.svg?rev=1098912\";s:3:\"svg\";s:53:\"https://ps.w.org/wp-sweep/assets/icon.svg?rev=1098912\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/wp-sweep/assets/banner-1544x500.jpg?rev=1098912\";s:2:\"1x\";s:63:\"https://ps.w.org/wp-sweep/assets/banner-772x250.jpg?rev=1098912\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(2625, '_transient_timeout_wc_report_orders_stats_f8832047d553768211dc7ccb1e824726', '1611012122', 'no'),
(2626, '_transient_wc_report_orders_stats_f8832047d553768211dc7ccb1e824726', 'a:2:{s:7:\"version\";s:10:\"1610232843\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2021-02\";s:10:\"date_start\";s:19:\"2021-01-12 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-01-11 17:00:00\";s:8:\"date_end\";s:19:\"2021-01-12 06:22:00\";s:12:\"date_end_gmt\";s:19:\"2021-01-11 23:22:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(2627, '_transient_timeout_wc_report_orders_stats_e7760c8d79f42dbb821dc089a6e9b21c', '1611012122', 'no'),
(2628, '_transient_wc_report_orders_stats_e7760c8d79f42dbb821dc089a6e9b21c', 'a:2:{s:7:\"version\";s:10:\"1610232843\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2021-02\";s:10:\"date_start\";s:19:\"2021-01-12 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-01-11 17:00:00\";s:8:\"date_end\";s:19:\"2021-01-12 06:22:00\";s:12:\"date_end_gmt\";s:19:\"2021-01-11 23:22:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(2629, '_transient_timeout_wc_report_orders_stats_4328552f0479530785d3661adcc952dc', '1611012122', 'no'),
(2630, '_transient_wc_report_orders_stats_4328552f0479530785d3661adcc952dc', 'a:2:{s:7:\"version\";s:10:\"1610232843\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2021-02\";s:10:\"date_start\";s:19:\"2021-01-11 07:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-01-11 00:00:00\";s:8:\"date_end\";s:19:\"2021-01-11 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-01-11 16:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(2631, '_transient_timeout_wc_report_orders_stats_b1a023edd69d7ea876e918555c6f732b', '1611012122', 'no'),
(2632, '_transient_wc_report_orders_stats_b1a023edd69d7ea876e918555c6f732b', 'a:2:{s:7:\"version\";s:10:\"1610232843\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2021-02\";s:10:\"date_start\";s:19:\"2021-01-11 07:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-01-11 00:00:00\";s:8:\"date_end\";s:19:\"2021-01-11 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-01-11 16:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `hk5_postmeta`
--

DROP TABLE IF EXISTS `hk5_postmeta`;
CREATE TABLE IF NOT EXISTS `hk5_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=1615 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hk5_postmeta`
--

INSERT INTO `hk5_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(100, 29, '_wp_attached_file', '2020/11/cropped-logo-cms.png'),
(99, 28, '_wp_attachment_image_alt', 'logo-cms'),
(28, 15, '_wp_attached_file', '2020/11/cropped-logoPJ.png'),
(29, 15, '_wp_attachment_context', 'site-icon'),
(30, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:26:\"2020/11/cropped-logoPJ.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"cropped-logoPJ-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"cropped-logoPJ-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:26:\"cropped-logoPJ-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:26:\"cropped-logoPJ-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:26:\"cropped-logoPJ-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:24:\"cropped-logoPJ-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(26, 14, '_wp_attached_file', '2020/11/logoPJ.png'),
(27, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:340;s:6:\"height\";i:338;s:4:\"file\";s:18:\"2020/11/logoPJ.png\";s:5:\"sizes\";a:4:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"logoPJ-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"logoPJ-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"logoPJ-300x298.png\";s:5:\"width\";i:300;s:6:\"height\";i:298;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"logoPJ-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(21, 12, '_wp_attached_file', '2020/11/cropped-logoCMS.png'),
(22, 12, '_wp_attachment_context', 'site-icon'),
(23, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:27:\"2020/11/cropped-logoCMS.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"cropped-logoCMS-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"cropped-logoCMS-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:27:\"cropped-logoCMS-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:27:\"cropped-logoCMS-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:27:\"cropped-logoCMS-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:25:\"cropped-logoCMS-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(97, 28, '_wp_attached_file', '2020/11/logo-cms.png'),
(98, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:974;s:6:\"height\";i:312;s:4:\"file\";s:20:\"2020/11/logo-cms.png\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"logo-cms-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"logo-cms-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"logo-cms-600x192.png\";s:5:\"width\";i:600;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"logo-cms-300x96.png\";s:5:\"width\";i:300;s:6:\"height\";i:96;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"logo-cms-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"logo-cms-768x246.png\";s:5:\"width\";i:768;s:6:\"height\";i:246;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(162, 38, '_menu_item_url', ''),
(161, 38, '_menu_item_xfn', ''),
(160, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(159, 38, '_menu_item_target', ''),
(158, 38, '_menu_item_object', 'category'),
(157, 38, '_menu_item_object_id', '5'),
(156, 38, '_menu_item_menu_item_parent', '0'),
(155, 38, '_menu_item_type', 'taxonomy'),
(101, 29, '_wp_attachment_context', 'custom-logo'),
(102, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:974;s:6:\"height\";i:312;s:4:\"file\";s:28:\"2020/11/cropped-logo-cms.png\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:28:\"cropped-logo-cms-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"cropped-logo-cms-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:28:\"cropped-logo-cms-600x192.png\";s:5:\"width\";i:600;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"cropped-logo-cms-300x96.png\";s:5:\"width\";i:300;s:6:\"height\";i:96;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"cropped-logo-cms-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"cropped-logo-cms-768x246.png\";s:5:\"width\";i:768;s:6:\"height\";i:246;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(104, 31, '_wp_attached_file', '2020/11/cropped-logo-cms-1.png'),
(105, 31, '_wp_attachment_context', 'custom-logo'),
(106, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:974;s:6:\"height\";i:312;s:4:\"file\";s:30:\"2020/11/cropped-logo-cms-1.png\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"cropped-logo-cms-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"cropped-logo-cms-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:30:\"cropped-logo-cms-1-600x192.png\";s:5:\"width\";i:600;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"cropped-logo-cms-1-300x96.png\";s:5:\"width\";i:300;s:6:\"height\";i:96;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"cropped-logo-cms-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"cropped-logo-cms-1-768x246.png\";s:5:\"width\";i:768;s:6:\"height\";i:246;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(258, 51, '_wp_attached_file', '2020/11/logo-cms-header.png'),
(259, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:172;s:6:\"height\";i:55;s:4:\"file\";s:27:\"2020/11/logo-cms-header.png\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"logo-cms-header-100x55.png\";s:5:\"width\";i:100;s:6:\"height\";i:55;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"logo-cms-header-150x55.png\";s:5:\"width\";i:150;s:6:\"height\";i:55;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(182, 41, '_menu_item_type', 'taxonomy'),
(183, 41, '_menu_item_menu_item_parent', '38'),
(184, 41, '_menu_item_object_id', '8'),
(185, 41, '_menu_item_object', 'category'),
(186, 41, '_menu_item_target', ''),
(187, 41, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(188, 41, '_menu_item_xfn', ''),
(189, 41, '_menu_item_url', ''),
(272, 58, '_wp_attached_file', '2020/11/cropped-logo-cms-header.png'),
(273, 58, '_wp_attachment_context', 'custom-logo'),
(274, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:172;s:6:\"height\";i:42;s:4:\"file\";s:35:\"2020/11/cropped-logo-cms-header.png\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:34:\"cropped-logo-cms-header-100x42.png\";s:5:\"width\";i:100;s:6:\"height\";i:42;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"cropped-logo-cms-header-150x42.png\";s:5:\"width\";i:150;s:6:\"height\";i:42;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(278, 60, '_wp_attached_file', '2020/11/cropped-logo-cms-header-1.png'),
(279, 60, '_wp_attachment_context', 'custom-logo'),
(280, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:172;s:6:\"height\";i:38;s:4:\"file\";s:37:\"2020/11/cropped-logo-cms-header-1.png\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:36:\"cropped-logo-cms-header-1-100x38.png\";s:5:\"width\";i:100;s:6:\"height\";i:38;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"cropped-logo-cms-header-1-150x38.png\";s:5:\"width\";i:150;s:6:\"height\";i:38;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(283, 62, '_wp_attached_file', '2020/11/cropped-logo-cms-header-1-1.png'),
(284, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:140;s:6:\"height\";i:31;s:4:\"file\";s:39:\"2020/11/cropped-logo-cms-header-1-1.png\";s:5:\"sizes\";a:1:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:38:\"cropped-logo-cms-header-1-1-100x31.png\";s:5:\"width\";i:100;s:6:\"height\";i:31;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(334, 70, '_edit_lock', '1607152742:1'),
(357, 81, '_wp_attached_file', 'woocommerce-placeholder.png'),
(358, 81, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(359, 86, '_edit_lock', '1610370623:1'),
(360, 86, '_edit_last', '1'),
(361, 87, '_wp_attached_file', '2020/11/06_de9a3fb951884589a7de023a8f500870_grande.jpg'),
(362, 87, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:54:\"2020/11/06_de9a3fb951884589a7de023a8f500870_grande.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:54:\"06_de9a3fb951884589a7de023a8f500870_grande-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:54:\"06_de9a3fb951884589a7de023a8f500870_grande-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:54:\"06_de9a3fb951884589a7de023a8f500870_grande-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:54:\"06_de9a3fb951884589a7de023a8f500870_grande-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:54:\"06_de9a3fb951884589a7de023a8f500870_grande-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:54:\"06_de9a3fb951884589a7de023a8f500870_grande-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(363, 86, '_thumbnail_id', '87'),
(364, 86, 'total_sales', '0'),
(365, 86, '_tax_status', 'shipping'),
(366, 86, '_tax_class', ''),
(367, 86, '_manage_stock', 'no'),
(368, 86, '_backorders', 'no'),
(369, 86, '_sold_individually', 'no'),
(370, 86, '_virtual', 'no'),
(371, 86, '_downloadable', 'no'),
(372, 86, '_download_limit', '-1'),
(373, 86, '_download_expiry', '-1'),
(374, 86, '_stock', NULL),
(375, 86, '_stock_status', 'instock'),
(376, 86, '_wc_average_rating', '0'),
(377, 86, '_wc_review_count', '0'),
(378, 86, '_product_version', '4.8.0'),
(379, 89, '_wp_attached_file', '2020/11/other-small.jpg'),
(380, 89, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:23:\"2020/11/other-small.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"other-small-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"other-small-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"other-small-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"other-small-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"other-small-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"other-small-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"other-small-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:25:\"other-small-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:23:\"other-small-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"other-small-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"other-small-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(381, 89, '_source_url', 'http://localhost/shop-cms-wordpress/wp-content/plugins/woocommerce/packages/woocommerce-admin/images/onboarding/other-small.jpg'),
(382, 84, '_edit_lock', '1610281281:1'),
(383, 83, '_edit_lock', '1610286333:1'),
(384, 93, '_wp_attached_file', '2020/11/recipe49685-cook-step5-637051833243455548.jpg'),
(385, 93, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:320;s:6:\"height\";i:320;s:4:\"file\";s:53:\"2020/11/recipe49685-cook-step5-637051833243455548.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:53:\"recipe49685-cook-step5-637051833243455548-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:53:\"recipe49685-cook-step5-637051833243455548-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:53:\"recipe49685-cook-step5-637051833243455548-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:53:\"recipe49685-cook-step5-637051833243455548-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:53:\"recipe49685-cook-step5-637051833243455548-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:53:\"recipe49685-cook-step5-637051833243455548-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(386, 94, '_wp_attached_file', '2020/11/4183c5944997aff7042e20d3ad7f4124.jpg'),
(387, 94, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:640;s:4:\"file\";s:44:\"2020/11/4183c5944997aff7042e20d3ad7f4124.jpg\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:44:\"4183c5944997aff7042e20d3ad7f4124-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:44:\"4183c5944997aff7042e20d3ad7f4124-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:44:\"4183c5944997aff7042e20d3ad7f4124-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"4183c5944997aff7042e20d3ad7f4124-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"4183c5944997aff7042e20d3ad7f4124-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:44:\"4183c5944997aff7042e20d3ad7f4124-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:44:\"4183c5944997aff7042e20d3ad7f4124-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:44:\"4183c5944997aff7042e20d3ad7f4124-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(553, 129, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:450;s:6:\"height\";i:450;s:4:\"file\";s:69:\"2021/01/32083871_2069324373355926_6662859195227832320_n-450x450-1.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:69:\"32083871_2069324373355926_6662859195227832320_n-450x450-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:69:\"32083871_2069324373355926_6662859195227832320_n-450x450-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:69:\"32083871_2069324373355926_6662859195227832320_n-450x450-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:69:\"32083871_2069324373355926_6662859195227832320_n-450x450-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:69:\"32083871_2069324373355926_6662859195227832320_n-450x450-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:69:\"32083871_2069324373355926_6662859195227832320_n-450x450-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(552, 129, '_wp_attached_file', '2021/01/32083871_2069324373355926_6662859195227832320_n-450x450-1.jpg'),
(551, 127, '_edit_lock', '1610360147:1'),
(550, 125, '_edit_lock', '1610232875:1'),
(478, 105, '_menu_item_type', 'taxonomy'),
(479, 105, '_menu_item_menu_item_parent', '0'),
(480, 105, '_menu_item_object_id', '38'),
(481, 105, '_menu_item_object', 'product_cat'),
(482, 105, '_menu_item_target', ''),
(483, 105, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(484, 105, '_menu_item_xfn', ''),
(485, 105, '_menu_item_url', ''),
(505, 108, '_menu_item_type', 'taxonomy'),
(506, 108, '_menu_item_menu_item_parent', '105'),
(507, 108, '_menu_item_object_id', '41'),
(508, 108, '_menu_item_object', 'product_cat'),
(509, 108, '_menu_item_target', ''),
(510, 108, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(511, 108, '_menu_item_xfn', ''),
(512, 108, '_menu_item_url', ''),
(543, 88, '_edit_lock', '1610411416:1'),
(542, 86, '_price', '80000'),
(541, 86, '_regular_price', '100000'),
(554, 129, '_wp_attachment_image_alt', 'Banh kem bo trong loai 1'),
(555, 127, '_edit_last', '1'),
(556, 127, '_thumbnail_id', '129'),
(557, 127, '_regular_price', '170000'),
(558, 127, 'total_sales', '0'),
(559, 127, '_tax_status', 'taxable'),
(560, 127, '_tax_class', ''),
(561, 127, '_manage_stock', 'no'),
(562, 127, '_backorders', 'no'),
(563, 127, '_sold_individually', 'no'),
(564, 127, '_virtual', 'no'),
(565, 127, '_downloadable', 'no'),
(566, 127, '_download_limit', '-1'),
(567, 127, '_download_expiry', '-1'),
(568, 127, '_stock', NULL),
(569, 127, '_stock_status', 'instock'),
(570, 127, '_wc_average_rating', '0'),
(571, 127, '_wc_review_count', '0'),
(572, 127, '_product_version', '4.8.0'),
(573, 127, '_price', '170000'),
(574, 130, '_menu_item_type', 'taxonomy'),
(575, 130, '_menu_item_menu_item_parent', '0'),
(576, 130, '_menu_item_object_id', '55'),
(577, 130, '_menu_item_object', 'product_cat'),
(578, 130, '_menu_item_target', ''),
(579, 130, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(580, 130, '_menu_item_xfn', ''),
(581, 130, '_menu_item_url', ''),
(593, 86, '_length', '50'),
(583, 131, '_menu_item_type', 'taxonomy'),
(584, 131, '_menu_item_menu_item_parent', '130'),
(585, 131, '_menu_item_object_id', '56'),
(586, 131, '_menu_item_object', 'product_cat'),
(587, 131, '_menu_item_target', ''),
(588, 131, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(589, 131, '_menu_item_xfn', ''),
(590, 131, '_menu_item_url', ''),
(592, 86, '_weight', '10'),
(594, 86, '_width', '50'),
(595, 86, '_height', '70'),
(596, 86, '_sale_price', '80000'),
(597, 133, '_edit_lock', '1610360505:1'),
(598, 133, '_edit_last', '1'),
(599, 133, '_oembed_93c679b05d4d1a31f1df2c58e1e29e66', '{{unknown}}'),
(600, 134, '_wp_attached_file', '2021/01/35363297_2095657100722653_2954406263733092352_n.jpg'),
(601, 134, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:960;s:4:\"file\";s:59:\"2021/01/35363297_2095657100722653_2954406263733092352_n.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:59:\"35363297_2095657100722653_2954406263733092352_n-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:59:\"35363297_2095657100722653_2954406263733092352_n-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:59:\"35363297_2095657100722653_2954406263733092352_n-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:59:\"35363297_2095657100722653_2954406263733092352_n-600x800.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:59:\"35363297_2095657100722653_2954406263733092352_n-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:59:\"35363297_2095657100722653_2954406263733092352_n-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:59:\"35363297_2095657100722653_2954406263733092352_n-600x800.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:59:\"35363297_2095657100722653_2954406263733092352_n-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(602, 133, '_thumbnail_id', '134'),
(603, 133, '_regular_price', '100000'),
(604, 133, '_sale_price', '80000'),
(605, 133, 'total_sales', '0'),
(606, 133, '_tax_status', 'shipping'),
(607, 133, '_tax_class', ''),
(608, 133, '_manage_stock', 'no'),
(609, 133, '_backorders', 'no'),
(610, 133, '_sold_individually', 'no'),
(611, 133, '_virtual', 'no'),
(612, 133, '_downloadable', 'no'),
(613, 133, '_download_limit', '-1'),
(614, 133, '_download_expiry', '-1'),
(615, 133, '_stock', NULL),
(616, 133, '_stock_status', 'instock'),
(617, 133, '_wc_average_rating', '0'),
(618, 133, '_wc_review_count', '0'),
(619, 133, '_product_version', '4.8.0'),
(620, 133, '_price', '80000'),
(621, 135, '_edit_lock', '1610362391:1'),
(622, 135, '_edit_last', '1'),
(623, 136, '_wp_attached_file', '2021/01/28870164_2036693406619023_8530338673772724224_n.jpg'),
(624, 136, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:960;s:4:\"file\";s:59:\"2021/01/28870164_2036693406619023_8530338673772724224_n.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:59:\"28870164_2036693406619023_8530338673772724224_n-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:59:\"28870164_2036693406619023_8530338673772724224_n-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:59:\"28870164_2036693406619023_8530338673772724224_n-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:59:\"28870164_2036693406619023_8530338673772724224_n-600x800.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:59:\"28870164_2036693406619023_8530338673772724224_n-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:59:\"28870164_2036693406619023_8530338673772724224_n-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:59:\"28870164_2036693406619023_8530338673772724224_n-600x800.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:59:\"28870164_2036693406619023_8530338673772724224_n-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(625, 135, '_regular_price', '120000'),
(626, 135, '_sale_price', '100000'),
(627, 135, 'total_sales', '0'),
(628, 135, '_tax_status', 'taxable'),
(629, 135, '_tax_class', ''),
(630, 135, '_manage_stock', 'no'),
(631, 135, '_backorders', 'no'),
(632, 135, '_sold_individually', 'no'),
(633, 135, '_virtual', 'no'),
(634, 135, '_downloadable', 'no'),
(635, 135, '_download_limit', '-1'),
(636, 135, '_download_expiry', '-1'),
(637, 135, '_stock', NULL),
(638, 135, '_stock_status', 'instock'),
(639, 135, '_wc_average_rating', '0'),
(640, 135, '_wc_review_count', '0'),
(641, 135, '_product_version', '4.8.0'),
(642, 135, '_price', '100000'),
(643, 135, '_thumbnail_id', '136'),
(644, 137, '_edit_lock', '1610362372:1'),
(645, 137, '_edit_last', '1'),
(646, 138, '_wp_attached_file', '2021/01/mit-say.jpg'),
(647, 138, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:445;s:6:\"height\";i:260;s:4:\"file\";s:19:\"2021/01/mit-say.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"mit-say-300x175.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"mit-say-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"mit-say-300x260.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"mit-say-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"mit-say-300x260.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"mit-say-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(648, 137, '_thumbnail_id', '138'),
(649, 137, '_regular_price', '40000'),
(650, 137, '_sale_price', '35000'),
(651, 137, 'total_sales', '0'),
(652, 137, '_tax_status', 'taxable'),
(653, 137, '_tax_class', ''),
(654, 137, '_manage_stock', 'no'),
(655, 137, '_backorders', 'no'),
(656, 137, '_sold_individually', 'no'),
(657, 137, '_virtual', 'no'),
(658, 137, '_downloadable', 'no'),
(659, 137, '_download_limit', '-1'),
(660, 137, '_download_expiry', '-1'),
(661, 137, '_stock', NULL),
(662, 137, '_stock_status', 'instock'),
(663, 137, '_wc_average_rating', '0'),
(664, 137, '_wc_review_count', '0'),
(665, 137, '_product_version', '4.8.0'),
(666, 137, '_price', '35000'),
(667, 139, '_edit_lock', '1610362268:1'),
(668, 139, '_edit_last', '1'),
(669, 140, '_wp_attached_file', '2021/01/khoai-lang-say.jpg'),
(670, 140, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:26:\"2021/01/khoai-lang-say.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"khoai-lang-say-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"khoai-lang-say-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"khoai-lang-say-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"khoai-lang-say-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:26:\"khoai-lang-say-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"khoai-lang-say-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(671, 139, '_thumbnail_id', '140'),
(672, 139, '_regular_price', '30000'),
(673, 139, '_sale_price', '25000'),
(674, 139, 'total_sales', '0'),
(675, 139, '_tax_status', 'taxable'),
(676, 139, '_tax_class', ''),
(677, 139, '_manage_stock', 'no'),
(678, 139, '_backorders', 'no'),
(679, 139, '_sold_individually', 'no'),
(680, 139, '_virtual', 'no'),
(681, 139, '_downloadable', 'no'),
(682, 139, '_download_limit', '-1'),
(683, 139, '_download_expiry', '-1'),
(684, 139, '_stock', NULL),
(685, 139, '_stock_status', 'instock'),
(686, 139, '_wc_average_rating', '0'),
(687, 139, '_wc_review_count', '0'),
(688, 139, '_product_version', '4.8.0'),
(689, 139, '_price', '25000'),
(690, 142, '_edit_lock', '1610362278:1'),
(691, 142, '_edit_last', '1'),
(692, 143, '_wp_attached_file', '2021/01/trai-cay-say.jpg'),
(693, 143, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:700;s:6:\"height\";i:523;s:4:\"file\";s:24:\"2021/01/trai-cay-say.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"trai-cay-say-300x224.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:224;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"trai-cay-say-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"trai-cay-say-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:24:\"trai-cay-say-600x448.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:448;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"trai-cay-say-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"trai-cay-say-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:24:\"trai-cay-say-600x448.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:448;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"trai-cay-say-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(694, 142, '_thumbnail_id', '143'),
(695, 142, '_regular_price', '100000'),
(696, 142, '_sale_price', '90000'),
(697, 142, 'total_sales', '0'),
(698, 142, '_tax_status', 'taxable'),
(699, 142, '_tax_class', ''),
(700, 142, '_manage_stock', 'no'),
(701, 142, '_backorders', 'no'),
(702, 142, '_sold_individually', 'no'),
(703, 142, '_virtual', 'no'),
(704, 142, '_downloadable', 'no'),
(705, 142, '_download_limit', '-1'),
(706, 142, '_download_expiry', '-1'),
(707, 142, '_stock', NULL),
(708, 142, '_stock_status', 'instock'),
(709, 142, '_wc_average_rating', '0'),
(710, 142, '_wc_review_count', '0'),
(711, 142, '_product_version', '4.8.0'),
(712, 142, '_price', '90000'),
(713, 144, '_edit_lock', '1610362307:1'),
(714, 144, '_edit_last', '1'),
(715, 146, '_wp_attached_file', '2021/01/cam-xanh.jpg'),
(716, 146, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:259;s:6:\"height\";i:194;s:4:\"file\";s:20:\"2021/01/cam-xanh.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"cam-xanh-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"cam-xanh-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"cam-xanh-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(717, 144, '_thumbnail_id', '146'),
(718, 144, '_regular_price', '30000'),
(719, 144, 'total_sales', '0'),
(720, 144, '_tax_status', 'taxable'),
(721, 144, '_tax_class', ''),
(722, 144, '_manage_stock', 'no'),
(723, 144, '_backorders', 'no'),
(724, 144, '_sold_individually', 'no'),
(725, 144, '_virtual', 'no'),
(726, 144, '_downloadable', 'no'),
(727, 144, '_download_limit', '-1'),
(728, 144, '_download_expiry', '-1'),
(729, 144, '_stock', NULL),
(730, 144, '_stock_status', 'instock'),
(731, 144, '_wc_average_rating', '0'),
(732, 144, '_wc_review_count', '0'),
(733, 144, '_product_version', '4.8.0'),
(734, 144, '_price', '30000'),
(735, 147, '_edit_lock', '1610362247:1'),
(736, 147, '_edit_last', '1'),
(737, 148, '_wp_attached_file', '2021/01/cam-vang.jpg'),
(738, 148, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:380;s:4:\"file\";s:20:\"2021/01/cam-vang.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"cam-vang-300x228.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:228;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"cam-vang-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"cam-vang-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"cam-vang-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"cam-vang-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"cam-vang-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(739, 147, '_thumbnail_id', '148'),
(740, 147, '_regular_price', '50000'),
(741, 147, 'total_sales', '0'),
(742, 147, '_tax_status', 'taxable'),
(743, 147, '_tax_class', ''),
(744, 147, '_manage_stock', 'no'),
(745, 147, '_backorders', 'no'),
(746, 147, '_sold_individually', 'no'),
(747, 147, '_virtual', 'no'),
(748, 147, '_downloadable', 'no'),
(749, 147, '_download_limit', '-1'),
(750, 147, '_download_expiry', '-1'),
(751, 147, '_stock', NULL),
(752, 147, '_stock_status', 'instock'),
(753, 147, '_wc_average_rating', '0'),
(754, 147, '_wc_review_count', '0'),
(755, 147, '_product_version', '4.8.0'),
(756, 147, '_price', '50000'),
(757, 150, '_edit_lock', '1610449931:1'),
(758, 150, '_edit_last', '1'),
(759, 151, '_wp_attached_file', '2021/01/banh-kem-sinh-nhat-zk6wabvt-scaled.jpg'),
(760, 151, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:2560;s:4:\"file\";s:46:\"2021/01/banh-kem-sinh-nhat-zk6wabvt-scaled.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"banh-kem-sinh-nhat-zk6wabvt-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:41:\"banh-kem-sinh-nhat-zk6wabvt-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"banh-kem-sinh-nhat-zk6wabvt-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:39:\"banh-kem-sinh-nhat-zk6wabvt-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:41:\"banh-kem-sinh-nhat-zk6wabvt-1536x1536.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:41:\"banh-kem-sinh-nhat-zk6wabvt-2048x2048.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:39:\"banh-kem-sinh-nhat-zk6wabvt-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:39:\"banh-kem-sinh-nhat-zk6wabvt-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:39:\"banh-kem-sinh-nhat-zk6wabvt-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:39:\"banh-kem-sinh-nhat-zk6wabvt-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:39:\"banh-kem-sinh-nhat-zk6wabvt-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:39:\"banh-kem-sinh-nhat-zk6wabvt-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:31:\"banh-kem-sinh-nhat-zk6wabvt.jpg\";}'),
(761, 150, '_thumbnail_id', '151'),
(762, 150, '_regular_price', '150000'),
(763, 150, '_sale_price', '140000'),
(764, 150, 'total_sales', '0'),
(765, 150, '_tax_status', 'taxable'),
(766, 150, '_tax_class', ''),
(767, 150, '_manage_stock', 'no'),
(768, 150, '_backorders', 'no'),
(769, 150, '_sold_individually', 'no'),
(770, 150, '_virtual', 'no'),
(771, 150, '_downloadable', 'no'),
(772, 150, '_download_limit', '-1'),
(773, 150, '_download_expiry', '-1'),
(774, 150, '_stock', NULL),
(775, 150, '_stock_status', 'instock'),
(776, 150, '_wc_average_rating', '0'),
(777, 150, '_wc_review_count', '0'),
(778, 150, '_product_version', '4.8.0'),
(779, 150, '_price', '140000'),
(780, 152, '_edit_lock', '1610371065:1'),
(781, 152, '_edit_last', '1'),
(782, 153, '_wp_attached_file', '2021/01/banh-kem.jpg');
INSERT INTO `hk5_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(783, 153, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:650;s:6:\"height\";i:650;s:4:\"file\";s:20:\"2021/01/banh-kem.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"banh-kem-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"banh-kem-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"banh-kem-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"banh-kem-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"banh-kem-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"banh-kem-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"banh-kem-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"banh-kem-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(784, 154, '_edit_lock', '1610371054:1'),
(785, 154, '_edit_last', '1'),
(786, 154, '_thumbnail_id', '153'),
(787, 154, '_regular_price', '140000'),
(788, 154, '_sale_price', '130000'),
(789, 154, 'total_sales', '0'),
(790, 154, '_tax_status', 'taxable'),
(791, 154, '_tax_class', ''),
(792, 154, '_manage_stock', 'no'),
(793, 154, '_backorders', 'no'),
(794, 154, '_sold_individually', 'no'),
(795, 154, '_virtual', 'no'),
(796, 154, '_downloadable', 'no'),
(797, 154, '_download_limit', '-1'),
(798, 154, '_download_expiry', '-1'),
(799, 154, '_stock', NULL),
(800, 154, '_stock_status', 'instock'),
(801, 154, '_wc_average_rating', '0'),
(802, 154, '_wc_review_count', '0'),
(803, 154, '_product_version', '4.8.0'),
(804, 154, '_price', '130000'),
(805, 155, '_edit_lock', '1610508719:1'),
(806, 155, '_edit_last', '1'),
(807, 156, '_wp_attached_file', '2021/01/banhkem2.png'),
(808, 156, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:20:\"2021/01/banhkem2.png\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"banhkem2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"banhkem2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"banhkem2-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"banhkem2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"banhkem2-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"banhkem2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"banhkem2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"banhkem2-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"banhkem2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(809, 155, '_thumbnail_id', '156'),
(810, 155, '_regular_price', '140000'),
(811, 155, '_sale_price', '130000'),
(812, 155, 'total_sales', '0'),
(813, 155, '_tax_status', 'taxable'),
(814, 155, '_tax_class', ''),
(815, 155, '_manage_stock', 'no'),
(816, 155, '_backorders', 'no'),
(817, 155, '_sold_individually', 'no'),
(818, 155, '_virtual', 'no'),
(819, 155, '_downloadable', 'no'),
(820, 155, '_download_limit', '-1'),
(821, 155, '_download_expiry', '-1'),
(822, 155, '_stock', NULL),
(823, 155, '_stock_status', 'instock'),
(824, 155, '_wc_average_rating', '0'),
(825, 155, '_wc_review_count', '0'),
(826, 155, '_product_version', '4.8.0'),
(827, 155, '_price', '130000'),
(828, 157, '_edit_lock', '1610371173:1'),
(829, 158, '_wp_attached_file', '2021/01/dau-tay.jpg'),
(830, 158, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:19:\"2021/01/dau-tay.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"dau-tay-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"dau-tay-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"dau-tay-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"dau-tay-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"dau-tay-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"dau-tay-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"dau-tay-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"dau-tay-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"dau-tay-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(831, 157, '_edit_last', '1'),
(832, 157, '_thumbnail_id', '158'),
(833, 157, '_regular_price', '60000'),
(834, 157, '_sale_price', '55000'),
(835, 157, 'total_sales', '0'),
(836, 157, '_tax_status', 'taxable'),
(837, 157, '_tax_class', ''),
(838, 157, '_manage_stock', 'no'),
(839, 157, '_backorders', 'no'),
(840, 157, '_sold_individually', 'no'),
(841, 157, '_virtual', 'no'),
(842, 157, '_downloadable', 'no'),
(843, 157, '_download_limit', '-1'),
(844, 157, '_download_expiry', '-1'),
(845, 157, '_stock', NULL),
(846, 157, '_stock_status', 'instock'),
(847, 157, '_wc_average_rating', '0'),
(848, 157, '_wc_review_count', '0'),
(849, 157, '_product_version', '4.8.0'),
(850, 157, '_price', '55000'),
(851, 152, '_thumbnail_id', '153'),
(852, 152, '_regular_price', '15000'),
(853, 152, '_sale_price', '14000'),
(854, 152, 'total_sales', '0'),
(855, 152, '_tax_status', 'taxable'),
(856, 152, '_tax_class', ''),
(857, 152, '_manage_stock', 'no'),
(858, 152, '_backorders', 'no'),
(859, 152, '_sold_individually', 'no'),
(860, 152, '_virtual', 'no'),
(861, 152, '_downloadable', 'no'),
(862, 152, '_download_limit', '-1'),
(863, 152, '_download_expiry', '-1'),
(864, 152, '_stock', NULL),
(865, 152, '_stock_status', 'instock'),
(866, 152, '_wc_average_rating', '0'),
(867, 152, '_wc_review_count', '0'),
(868, 152, '_product_version', '4.8.0'),
(869, 152, '_price', '14000'),
(870, 152, '_wp_trash_meta_status', 'publish'),
(871, 152, '_wp_trash_meta_time', '1610371182'),
(872, 152, '_wp_desired_post_slug', 'banh-kem'),
(873, 160, '_edit_lock', '1610372873:1'),
(874, 160, '_edit_last', '1'),
(875, 161, '_wp_attached_file', '2021/01/Tao-Do-My-2-502x502-1.png'),
(876, 161, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:502;s:6:\"height\";i:502;s:4:\"file\";s:33:\"2021/01/Tao-Do-My-2-502x502-1.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"Tao-Do-My-2-502x502-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"Tao-Do-My-2-502x502-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:33:\"Tao-Do-My-2-502x502-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:33:\"Tao-Do-My-2-502x502-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:33:\"Tao-Do-My-2-502x502-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:33:\"Tao-Do-My-2-502x502-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(877, 160, '_thumbnail_id', '161'),
(878, 160, '_regular_price', '50000'),
(879, 160, 'total_sales', '0'),
(880, 160, '_tax_status', 'taxable'),
(881, 160, '_tax_class', ''),
(882, 160, '_manage_stock', 'no'),
(883, 160, '_backorders', 'no'),
(884, 160, '_sold_individually', 'no'),
(885, 160, '_virtual', 'no'),
(886, 160, '_downloadable', 'no'),
(887, 160, '_download_limit', '-1'),
(888, 160, '_download_expiry', '-1'),
(889, 160, '_stock', NULL),
(890, 160, '_stock_status', 'instock'),
(891, 160, '_wc_average_rating', '0'),
(892, 160, '_wc_review_count', '0'),
(893, 160, '_product_version', '4.8.0'),
(894, 160, '_price', '50000'),
(895, 162, '_edit_lock', '1610372699:1'),
(896, 162, '_edit_last', '1'),
(897, 163, '_wp_attached_file', '2021/01/banhngot1.jpg'),
(898, 163, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:480;s:6:\"height\";i:480;s:4:\"file\";s:21:\"2021/01/banhngot1.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"banhngot1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"banhngot1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"banhngot1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"banhngot1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"banhngot1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"banhngot1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(899, 162, '_oembed_a3d69013d2cef5bc036542f67919a782', '{{unknown}}'),
(900, 162, '_thumbnail_id', '163'),
(901, 162, '_regular_price', '30000'),
(902, 162, '_sale_price', '25000'),
(903, 162, 'total_sales', '0'),
(904, 162, '_tax_status', 'taxable'),
(905, 162, '_tax_class', ''),
(906, 162, '_manage_stock', 'no'),
(907, 162, '_backorders', 'no'),
(908, 162, '_sold_individually', 'no'),
(909, 162, '_virtual', 'no'),
(910, 162, '_downloadable', 'no'),
(911, 162, '_download_limit', '-1'),
(912, 162, '_download_expiry', '-1'),
(913, 162, '_stock', NULL),
(914, 162, '_stock_status', 'instock'),
(915, 162, '_wc_average_rating', '0'),
(916, 162, '_wc_review_count', '0'),
(917, 162, '_product_version', '4.8.0'),
(918, 162, '_price', '25000'),
(919, 164, '_edit_lock', '1610372887:1'),
(920, 164, '_edit_last', '1'),
(921, 165, '_wp_attached_file', '2021/01/banhngot2.jpg'),
(922, 165, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:743;s:4:\"file\";s:21:\"2021/01/banhngot2.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"banhngot2-300x223.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:223;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"banhngot2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"banhngot2-768x571.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:571;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"banhngot2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"banhngot2-600x446.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:446;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"banhngot2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"banhngot2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"banhngot2-600x446.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:446;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"banhngot2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.8\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:19:\"Canon EOS REBEL T3i\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1374314357\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(923, 164, '_thumbnail_id', '165'),
(924, 164, '_regular_price', '15000'),
(925, 164, 'total_sales', '0'),
(926, 164, '_tax_status', 'taxable'),
(927, 164, '_tax_class', ''),
(928, 164, '_manage_stock', 'no'),
(929, 164, '_backorders', 'no'),
(930, 164, '_sold_individually', 'no'),
(931, 164, '_virtual', 'no'),
(932, 164, '_downloadable', 'no'),
(933, 164, '_download_limit', '-1'),
(934, 164, '_download_expiry', '-1'),
(935, 164, '_stock', NULL),
(936, 164, '_stock_status', 'instock'),
(937, 164, '_wc_average_rating', '0'),
(938, 164, '_wc_review_count', '0'),
(939, 164, '_product_version', '4.8.0'),
(940, 164, '_price', '15000'),
(941, 166, '_edit_lock', '1610372942:1'),
(942, 166, '_edit_last', '1'),
(943, 167, '_wp_attached_file', '2021/01/banhngot3.jpg'),
(944, 167, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:366;s:4:\"file\";s:21:\"2021/01/banhngot3.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"banhngot3-300x220.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:220;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"banhngot3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"banhngot3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"banhngot3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"banhngot3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"banhngot3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(945, 166, '_thumbnail_id', '167'),
(946, 166, '_regular_price', '25000'),
(947, 166, 'total_sales', '0'),
(948, 166, '_tax_status', 'taxable'),
(949, 166, '_tax_class', ''),
(950, 166, '_manage_stock', 'no'),
(951, 166, '_backorders', 'no'),
(952, 166, '_sold_individually', 'no'),
(953, 166, '_virtual', 'no'),
(954, 166, '_downloadable', 'no'),
(955, 166, '_download_limit', '-1'),
(956, 166, '_download_expiry', '-1'),
(957, 166, '_stock', NULL),
(958, 166, '_stock_status', 'instock'),
(959, 166, '_wc_average_rating', '0'),
(960, 166, '_wc_review_count', '0'),
(961, 166, '_product_version', '4.8.0'),
(962, 166, '_price', '25000'),
(963, 168, '_edit_lock', '1610373280:1'),
(968, 168, '_edit_last', '1'),
(966, 171, '_wp_attached_file', '2021/01/e0a70f72bdae9885bfc32d7cd19a26a1_XL.jpg'),
(967, 171, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:47:\"2021/01/e0a70f72bdae9885bfc32d7cd19a26a1_XL.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:47:\"e0a70f72bdae9885bfc32d7cd19a26a1_XL-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:47:\"e0a70f72bdae9885bfc32d7cd19a26a1_XL-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:47:\"e0a70f72bdae9885bfc32d7cd19a26a1_XL-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:47:\"e0a70f72bdae9885bfc32d7cd19a26a1_XL-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:47:\"e0a70f72bdae9885bfc32d7cd19a26a1_XL-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:47:\"e0a70f72bdae9885bfc32d7cd19a26a1_XL-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(969, 168, '_thumbnail_id', '171'),
(970, 168, '_regular_price', '100000'),
(971, 168, 'total_sales', '0'),
(972, 168, '_tax_status', 'taxable'),
(973, 168, '_tax_class', ''),
(974, 168, '_manage_stock', 'no'),
(975, 168, '_backorders', 'no'),
(976, 168, '_sold_individually', 'no'),
(977, 168, '_virtual', 'no'),
(978, 168, '_downloadable', 'no'),
(979, 168, '_download_limit', '-1'),
(980, 168, '_download_expiry', '-1'),
(981, 168, '_stock', NULL),
(982, 168, '_stock_status', 'instock'),
(983, 168, '_wc_average_rating', '0'),
(984, 168, '_wc_review_count', '0'),
(985, 168, '_product_version', '4.8.0'),
(986, 168, '_price', '100000'),
(987, 172, '_edit_lock', '1610373281:1'),
(988, 173, '_wp_attached_file', '2021/01/dao.png'),
(989, 173, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:400;s:4:\"file\";s:15:\"2021/01/dao.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"dao-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"dao-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"dao-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"dao-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:15:\"dao-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"dao-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(990, 172, '_edit_last', '1'),
(991, 172, '_thumbnail_id', '173'),
(992, 172, '_regular_price', '80000'),
(993, 172, '_sale_price', '75000'),
(994, 172, 'total_sales', '0'),
(995, 172, '_tax_status', 'taxable'),
(996, 172, '_tax_class', ''),
(997, 172, '_manage_stock', 'no'),
(998, 172, '_backorders', 'no'),
(999, 172, '_sold_individually', 'no'),
(1000, 172, '_virtual', 'no'),
(1001, 172, '_downloadable', 'no'),
(1002, 172, '_download_limit', '-1'),
(1003, 172, '_download_expiry', '-1'),
(1004, 172, '_stock', NULL),
(1005, 172, '_stock_status', 'instock'),
(1006, 172, '_wc_average_rating', '0'),
(1007, 172, '_wc_review_count', '0'),
(1008, 172, '_product_version', '4.8.0'),
(1009, 172, '_price', '75000'),
(1010, 175, '_edit_lock', '1610373438:1'),
(1011, 175, '_edit_last', '1'),
(1012, 176, '_wp_attached_file', '2021/01/may-danh-trung.jpg'),
(1013, 176, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:720;s:4:\"file\";s:26:\"2021/01/may-danh-trung.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"may-danh-trung-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"may-danh-trung-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"may-danh-trung-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:26:\"may-danh-trung-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"may-danh-trung-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:26:\"may-danh-trung-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"may-danh-trung-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"may-danh-trung-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1014, 175, '_thumbnail_id', '176'),
(1015, 175, '_regular_price', '600000'),
(1016, 175, 'total_sales', '0'),
(1017, 175, '_tax_status', 'taxable'),
(1018, 175, '_tax_class', ''),
(1019, 175, '_manage_stock', 'no'),
(1020, 175, '_backorders', 'no'),
(1021, 175, '_sold_individually', 'no'),
(1022, 175, '_virtual', 'no'),
(1023, 175, '_downloadable', 'no'),
(1024, 175, '_download_limit', '-1'),
(1025, 175, '_download_expiry', '-1'),
(1026, 175, '_stock', NULL),
(1027, 175, '_stock_status', 'instock'),
(1028, 175, '_wc_average_rating', '0'),
(1029, 175, '_wc_review_count', '0'),
(1030, 175, '_product_version', '4.8.0'),
(1031, 175, '_price', '600000'),
(1032, 178, '_edit_lock', '1610373559:1'),
(1033, 178, '_edit_last', '1'),
(1034, 179, '_wp_attached_file', '2021/01/may-danh-bot.png'),
(1035, 179, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:656;s:6:\"height\";i:656;s:4:\"file\";s:24:\"2021/01/may-danh-bot.png\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"may-danh-bot-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"may-danh-bot-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"may-danh-bot-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:24:\"may-danh-bot-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"may-danh-bot-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"may-danh-bot-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:24:\"may-danh-bot-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"may-danh-bot-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1036, 178, '_thumbnail_id', '179'),
(1037, 178, '_regular_price', '1500000'),
(1038, 178, '_sale_price', '1350000'),
(1039, 178, 'total_sales', '0'),
(1040, 178, '_tax_status', 'taxable'),
(1041, 178, '_tax_class', ''),
(1042, 178, '_manage_stock', 'no'),
(1043, 178, '_backorders', 'no'),
(1044, 178, '_sold_individually', 'no'),
(1045, 178, '_virtual', 'no'),
(1046, 178, '_downloadable', 'no'),
(1047, 178, '_download_limit', '-1'),
(1048, 178, '_download_expiry', '-1'),
(1049, 178, '_stock', NULL),
(1050, 178, '_stock_status', 'instock'),
(1051, 178, '_wc_average_rating', '0'),
(1052, 178, '_wc_review_count', '0'),
(1053, 178, '_product_version', '4.8.0'),
(1054, 178, '_price', '1350000'),
(1055, 182, '_wp_attached_file', '2021/01/may-lam-banh.jpg'),
(1056, 182, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1234;s:6:\"height\";i:965;s:4:\"file\";s:24:\"2021/01/may-lam-banh.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"may-lam-banh-300x235.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"may-lam-banh-1024x801.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:801;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"may-lam-banh-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"may-lam-banh-768x601.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:601;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"may-lam-banh-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:24:\"may-lam-banh-600x469.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:469;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"may-lam-banh-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"may-lam-banh-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:24:\"may-lam-banh-600x469.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:469;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"may-lam-banh-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:5:\"admin\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1545401857\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1057, 181, '_edit_lock', '1610373646:1'),
(1058, 181, '_edit_last', '1'),
(1059, 181, '_thumbnail_id', '182'),
(1060, 181, '_regular_price', '600000'),
(1061, 181, '_sale_price', '550000'),
(1062, 181, 'total_sales', '0'),
(1063, 181, '_tax_status', 'taxable'),
(1064, 181, '_tax_class', ''),
(1065, 181, '_manage_stock', 'no'),
(1066, 181, '_backorders', 'no'),
(1067, 181, '_sold_individually', 'no'),
(1068, 181, '_virtual', 'no'),
(1069, 181, '_downloadable', 'no'),
(1070, 181, '_download_limit', '-1'),
(1071, 181, '_download_expiry', '-1'),
(1072, 181, '_stock', NULL),
(1073, 181, '_stock_status', 'instock'),
(1074, 181, '_wc_average_rating', '0'),
(1075, 181, '_wc_review_count', '0'),
(1076, 181, '_product_version', '4.8.0'),
(1077, 181, '_price', '550000'),
(1078, 183, '_edit_lock', '1610374106:1'),
(1079, 184, '_wp_attached_file', '2021/01/lo-nuong-banh-01.jpg'),
(1080, 184, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:700;s:6:\"height\";i:400;s:4:\"file\";s:28:\"2021/01/lo-nuong-banh-01.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"lo-nuong-banh-01-300x171.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"lo-nuong-banh-01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:28:\"lo-nuong-banh-01-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:28:\"lo-nuong-banh-01-600x343.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:343;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"lo-nuong-banh-01-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:28:\"lo-nuong-banh-01-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:28:\"lo-nuong-banh-01-600x343.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:343;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"lo-nuong-banh-01-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1081, 183, '_edit_last', '1'),
(1082, 183, '_thumbnail_id', '184'),
(1083, 183, '_regular_price', '2000000'),
(1084, 183, '_sale_price', '1900000'),
(1085, 183, 'total_sales', '0'),
(1086, 183, '_tax_status', 'taxable'),
(1087, 183, '_tax_class', ''),
(1088, 183, '_manage_stock', 'no'),
(1089, 183, '_backorders', 'no'),
(1090, 183, '_sold_individually', 'no'),
(1091, 183, '_virtual', 'no'),
(1092, 183, '_downloadable', 'no'),
(1093, 183, '_download_limit', '-1'),
(1094, 183, '_download_expiry', '-1'),
(1095, 183, '_stock', NULL),
(1096, 183, '_stock_status', 'instock'),
(1097, 183, '_wc_average_rating', '0'),
(1098, 183, '_wc_review_count', '0'),
(1099, 183, '_product_version', '4.8.0'),
(1100, 183, '_price', '1900000'),
(1101, 186, '_wp_attached_file', '2021/01/can-dien-tu.jpg'),
(1102, 186, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:480;s:6:\"height\";i:480;s:4:\"file\";s:23:\"2021/01/can-dien-tu.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"can-dien-tu-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"can-dien-tu-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"can-dien-tu-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"can-dien-tu-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"can-dien-tu-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"can-dien-tu-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1103, 185, '_edit_lock', '1610374340:1'),
(1104, 185, '_edit_last', '1'),
(1105, 185, '_thumbnail_id', '186'),
(1106, 185, '_regular_price', '500000'),
(1107, 185, '_sale_price', '450000'),
(1108, 185, 'total_sales', '0'),
(1109, 185, '_tax_status', 'taxable'),
(1110, 185, '_tax_class', ''),
(1111, 185, '_manage_stock', 'no'),
(1112, 185, '_backorders', 'no'),
(1113, 185, '_sold_individually', 'no'),
(1114, 185, '_virtual', 'no'),
(1115, 185, '_downloadable', 'no'),
(1116, 185, '_download_limit', '-1'),
(1117, 185, '_download_expiry', '-1'),
(1118, 185, '_stock', NULL),
(1119, 185, '_stock_status', 'instock'),
(1120, 185, '_wc_average_rating', '0'),
(1121, 185, '_wc_review_count', '0'),
(1122, 185, '_product_version', '4.8.0'),
(1123, 185, '_price', '450000'),
(1124, 187, '_menu_item_type', 'taxonomy'),
(1125, 187, '_menu_item_menu_item_parent', '0'),
(1126, 187, '_menu_item_object_id', '60'),
(1127, 187, '_menu_item_object', 'product_cat'),
(1128, 187, '_menu_item_target', ''),
(1129, 187, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1130, 187, '_menu_item_xfn', ''),
(1131, 187, '_menu_item_url', ''),
(1133, 188, '_menu_item_type', 'taxonomy'),
(1134, 188, '_menu_item_menu_item_parent', '187'),
(1135, 188, '_menu_item_object_id', '61'),
(1136, 188, '_menu_item_object', 'product_cat'),
(1137, 188, '_menu_item_target', ''),
(1138, 188, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1139, 188, '_menu_item_xfn', ''),
(1140, 188, '_menu_item_url', ''),
(1142, 189, '_menu_item_type', 'taxonomy'),
(1143, 189, '_menu_item_menu_item_parent', '187'),
(1144, 189, '_menu_item_object_id', '62'),
(1145, 189, '_menu_item_object', 'product_cat'),
(1146, 189, '_menu_item_target', ''),
(1147, 189, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1148, 189, '_menu_item_xfn', ''),
(1149, 189, '_menu_item_url', ''),
(1151, 190, '_menu_item_type', 'taxonomy'),
(1152, 190, '_menu_item_menu_item_parent', '130'),
(1153, 190, '_menu_item_object_id', '68'),
(1154, 190, '_menu_item_object', 'product_cat'),
(1155, 190, '_menu_item_target', ''),
(1156, 190, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1157, 190, '_menu_item_xfn', ''),
(1158, 190, '_menu_item_url', ''),
(1160, 191, '_menu_item_type', 'taxonomy'),
(1161, 191, '_menu_item_menu_item_parent', '0'),
(1162, 191, '_menu_item_object_id', '70'),
(1163, 191, '_menu_item_object', 'product_cat'),
(1164, 191, '_menu_item_target', ''),
(1165, 191, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1166, 191, '_menu_item_xfn', ''),
(1167, 191, '_menu_item_url', ''),
(1169, 193, '_edit_lock', '1610449801:1'),
(1170, 194, '_wp_attached_file', '2021/01/banhsinhnhat2.jpg'),
(1171, 194, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:720;s:4:\"file\";s:25:\"2021/01/banhsinhnhat2.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"banhsinhnhat2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"banhsinhnhat2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"banhsinhnhat2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"banhsinhnhat2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"banhsinhnhat2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"banhsinhnhat2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"banhsinhnhat2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"banhsinhnhat2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1172, 193, '_edit_last', '1'),
(1173, 193, '_thumbnail_id', '194'),
(1174, 193, '_regular_price', '170000'),
(1175, 193, 'total_sales', '0'),
(1176, 193, '_tax_status', 'taxable'),
(1177, 193, '_tax_class', ''),
(1178, 193, '_manage_stock', 'no'),
(1179, 193, '_backorders', 'no'),
(1180, 193, '_sold_individually', 'no'),
(1181, 193, '_virtual', 'no'),
(1182, 193, '_downloadable', 'no'),
(1183, 193, '_download_limit', '-1'),
(1184, 193, '_download_expiry', '-1'),
(1185, 193, '_stock', NULL),
(1186, 193, '_stock_status', 'instock'),
(1187, 193, '_wc_average_rating', '0'),
(1188, 193, '_wc_review_count', '0'),
(1189, 193, '_product_version', '4.8.0'),
(1190, 193, '_price', '170000'),
(1191, 195, '_edit_lock', '1610449853:1'),
(1192, 195, '_edit_last', '1'),
(1193, 196, '_wp_attached_file', '2021/01/banhsinhnhat3.jpg'),
(1194, 196, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:897;s:6:\"height\";i:1178;s:4:\"file\";s:25:\"2021/01/banhsinhnhat3.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"banhsinhnhat3-228x300.jpg\";s:5:\"width\";i:228;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"banhsinhnhat3-780x1024.jpg\";s:5:\"width\";i:780;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"banhsinhnhat3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"banhsinhnhat3-768x1009.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1009;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"banhsinhnhat3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"banhsinhnhat3-600x788.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:788;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"banhsinhnhat3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"banhsinhnhat3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"banhsinhnhat3-600x788.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:788;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"banhsinhnhat3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1195, 195, '_thumbnail_id', '196'),
(1196, 195, '_regular_price', '200000'),
(1197, 195, 'total_sales', '0'),
(1198, 195, '_tax_status', 'taxable'),
(1199, 195, '_tax_class', ''),
(1200, 195, '_manage_stock', 'no'),
(1201, 195, '_backorders', 'no'),
(1202, 195, '_sold_individually', 'no'),
(1203, 195, '_virtual', 'no'),
(1204, 195, '_downloadable', 'no'),
(1205, 195, '_download_limit', '-1'),
(1206, 195, '_download_expiry', '-1'),
(1207, 195, '_stock', NULL),
(1208, 195, '_stock_status', 'instock'),
(1209, 195, '_wc_average_rating', '0'),
(1210, 195, '_wc_review_count', '0'),
(1211, 195, '_product_version', '4.8.0'),
(1212, 195, '_price', '200000'),
(1213, 197, '_edit_lock', '1610449917:1'),
(1214, 197, '_edit_last', '1'),
(1215, 198, '_wp_attached_file', '2021/01/banhsinhnhat4-scaled.jpg'),
(1216, 198, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:2560;s:4:\"file\";s:32:\"2021/01/banhsinhnhat4-scaled.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"banhsinhnhat4-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"banhsinhnhat4-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"banhsinhnhat4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"banhsinhnhat4-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:27:\"banhsinhnhat4-1152x1536.jpg\";s:5:\"width\";i:1152;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:27:\"banhsinhnhat4-1536x2048.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"banhsinhnhat4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"banhsinhnhat4-600x800.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"banhsinhnhat4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"banhsinhnhat4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"banhsinhnhat4-600x800.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"banhsinhnhat4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:17:\"banhsinhnhat4.jpg\";}'),
(1217, 197, '_thumbnail_id', '198'),
(1218, 197, '_regular_price', '190000'),
(1219, 197, '_sale_price', '170000'),
(1220, 197, 'total_sales', '0'),
(1221, 197, '_tax_status', 'taxable'),
(1222, 197, '_tax_class', ''),
(1223, 197, '_manage_stock', 'no'),
(1224, 197, '_backorders', 'no'),
(1225, 197, '_sold_individually', 'no'),
(1226, 197, '_virtual', 'no'),
(1227, 197, '_downloadable', 'no'),
(1228, 197, '_download_limit', '-1'),
(1229, 197, '_download_expiry', '-1'),
(1230, 197, '_stock', NULL),
(1231, 197, '_stock_status', 'instock'),
(1232, 197, '_wc_average_rating', '0'),
(1233, 197, '_wc_review_count', '0'),
(1234, 197, '_product_version', '4.8.0'),
(1235, 197, '_price', '170000'),
(1236, 199, '_edit_lock', '1610449999:1'),
(1237, 199, '_edit_last', '1'),
(1238, 200, '_wp_attached_file', '2021/01/banhsinhnhat5.jpg'),
(1239, 200, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1189;s:4:\"file\";s:25:\"2021/01/banhsinhnhat5.jpg\";s:5:\"sizes\";a:11:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"banhsinhnhat5-300x223.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:223;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"banhsinhnhat5-1024x761.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:761;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"banhsinhnhat5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"banhsinhnhat5-768x571.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:571;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:27:\"banhsinhnhat5-1536x1141.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1141;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"banhsinhnhat5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"banhsinhnhat5-600x446.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:446;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"banhsinhnhat5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"banhsinhnhat5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"banhsinhnhat5-600x446.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:446;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"banhsinhnhat5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1240, 199, '_thumbnail_id', '200'),
(1241, 199, '_regular_price', '180000'),
(1242, 199, '_sale_price', '170000'),
(1243, 199, 'total_sales', '0'),
(1244, 199, '_tax_status', 'taxable'),
(1245, 199, '_tax_class', ''),
(1246, 199, '_manage_stock', 'no'),
(1247, 199, '_backorders', 'no'),
(1248, 199, '_sold_individually', 'no'),
(1249, 199, '_virtual', 'no'),
(1250, 199, '_downloadable', 'no'),
(1251, 199, '_download_limit', '-1'),
(1252, 199, '_download_expiry', '-1'),
(1253, 199, '_stock', NULL),
(1254, 199, '_stock_status', 'instock'),
(1255, 199, '_wc_average_rating', '0'),
(1256, 199, '_wc_review_count', '0'),
(1257, 199, '_product_version', '4.8.0'),
(1258, 199, '_price', '170000'),
(1259, 201, '_edit_lock', '1610450061:1'),
(1260, 201, '_edit_last', '1'),
(1261, 202, '_wp_attached_file', '2021/01/banhsinhnhat6.jpg');
INSERT INTO `hk5_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1262, 202, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:577;s:4:\"file\";s:25:\"2021/01/banhsinhnhat6.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"banhsinhnhat6-300x289.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:289;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"banhsinhnhat6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"banhsinhnhat6-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"banhsinhnhat6-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"banhsinhnhat6-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"banhsinhnhat6-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1263, 201, '_thumbnail_id', '202'),
(1264, 201, '_regular_price', '160000'),
(1265, 201, 'total_sales', '0'),
(1266, 201, '_tax_status', 'taxable'),
(1267, 201, '_tax_class', ''),
(1268, 201, '_manage_stock', 'no'),
(1269, 201, '_backorders', 'no'),
(1270, 201, '_sold_individually', 'no'),
(1271, 201, '_virtual', 'no'),
(1272, 201, '_downloadable', 'no'),
(1273, 201, '_download_limit', '-1'),
(1274, 201, '_download_expiry', '-1'),
(1275, 201, '_stock', NULL),
(1276, 201, '_stock_status', 'instock'),
(1277, 201, '_wc_average_rating', '0'),
(1278, 201, '_wc_review_count', '0'),
(1279, 201, '_product_version', '4.8.0'),
(1280, 201, '_price', '160000'),
(1281, 203, '_edit_lock', '1610450131:1'),
(1282, 203, '_edit_last', '1'),
(1283, 204, '_wp_attached_file', '2021/01/banhsinhnhat7.jpg'),
(1284, 204, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:25:\"2021/01/banhsinhnhat7.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"banhsinhnhat7-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"banhsinhnhat7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"banhsinhnhat7-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"banhsinhnhat7-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"banhsinhnhat7-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"banhsinhnhat7-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1285, 203, '_thumbnail_id', '204'),
(1286, 203, '_regular_price', '250000'),
(1287, 203, 'total_sales', '0'),
(1288, 203, '_tax_status', 'taxable'),
(1289, 203, '_tax_class', ''),
(1290, 203, '_manage_stock', 'no'),
(1291, 203, '_backorders', 'no'),
(1292, 203, '_sold_individually', 'no'),
(1293, 203, '_virtual', 'no'),
(1294, 203, '_downloadable', 'no'),
(1295, 203, '_download_limit', '-1'),
(1296, 203, '_download_expiry', '-1'),
(1297, 203, '_stock', NULL),
(1298, 203, '_stock_status', 'instock'),
(1299, 203, '_wc_average_rating', '0'),
(1300, 203, '_wc_review_count', '0'),
(1301, 203, '_product_version', '4.8.0'),
(1302, 203, '_price', '250000'),
(1303, 205, '_edit_lock', '1610450288:1'),
(1304, 205, '_edit_last', '1'),
(1305, 206, '_wp_attached_file', '2021/01/banh-ngot-4.jpg'),
(1306, 206, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:335;s:4:\"file\";s:23:\"2021/01/banh-ngot-4.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"banh-ngot-4-300x201.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:201;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"banh-ngot-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"banh-ngot-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"banh-ngot-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"banh-ngot-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"banh-ngot-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1307, 205, '_thumbnail_id', '206'),
(1308, 205, '_regular_price', '40000'),
(1309, 205, 'total_sales', '0'),
(1310, 205, '_tax_status', 'taxable'),
(1311, 205, '_tax_class', ''),
(1312, 205, '_manage_stock', 'no'),
(1313, 205, '_backorders', 'no'),
(1314, 205, '_sold_individually', 'no'),
(1315, 205, '_virtual', 'no'),
(1316, 205, '_downloadable', 'no'),
(1317, 205, '_download_limit', '-1'),
(1318, 205, '_download_expiry', '-1'),
(1319, 205, '_stock', NULL),
(1320, 205, '_stock_status', 'instock'),
(1321, 205, '_wc_average_rating', '0'),
(1322, 205, '_wc_review_count', '0'),
(1323, 205, '_product_version', '4.8.0'),
(1324, 205, '_price', '40000'),
(1325, 207, '_edit_lock', '1610450338:1'),
(1326, 207, '_edit_last', '1'),
(1327, 208, '_wp_attached_file', '2021/01/banhngot5.jpg'),
(1328, 208, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:760;s:6:\"height\";i:570;s:4:\"file\";s:21:\"2021/01/banhngot5.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"banhngot5-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"banhngot5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"banhngot5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"banhngot5-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"banhngot5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"banhngot5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"banhngot5-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"banhngot5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1329, 207, '_thumbnail_id', '208'),
(1330, 207, '_regular_price', '35000'),
(1331, 207, 'total_sales', '0'),
(1332, 207, '_tax_status', 'taxable'),
(1333, 207, '_tax_class', ''),
(1334, 207, '_manage_stock', 'no'),
(1335, 207, '_backorders', 'no'),
(1336, 207, '_sold_individually', 'no'),
(1337, 207, '_virtual', 'no'),
(1338, 207, '_downloadable', 'no'),
(1339, 207, '_download_limit', '-1'),
(1340, 207, '_download_expiry', '-1'),
(1341, 207, '_stock', NULL),
(1342, 207, '_stock_status', 'instock'),
(1343, 207, '_wc_average_rating', '0'),
(1344, 207, '_wc_review_count', '0'),
(1345, 207, '_product_version', '4.8.0'),
(1346, 207, '_price', '35000'),
(1347, 209, '_edit_last', '1'),
(1348, 209, 'total_sales', '0'),
(1349, 209, '_tax_status', 'taxable'),
(1350, 209, '_tax_class', ''),
(1351, 209, '_manage_stock', 'no'),
(1352, 209, '_backorders', 'no'),
(1353, 209, '_sold_individually', 'no'),
(1354, 209, '_virtual', 'no'),
(1355, 209, '_downloadable', 'no'),
(1356, 209, '_download_limit', '-1'),
(1357, 209, '_download_expiry', '-1'),
(1358, 209, '_stock', NULL),
(1359, 209, '_stock_status', 'instock'),
(1360, 209, '_wc_average_rating', '0'),
(1361, 209, '_wc_review_count', '0'),
(1362, 209, '_product_version', '4.8.0'),
(1363, 209, '_edit_lock', '1610450388:1'),
(1364, 210, '_wp_attached_file', '2021/01/banhngot6.jpg'),
(1365, 210, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1224;s:6:\"height\";i:919;s:4:\"file\";s:21:\"2021/01/banhngot6.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"banhngot6-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"banhngot6-1024x769.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:769;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"banhngot6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"banhngot6-768x577.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:577;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"banhngot6-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"banhngot6-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"banhngot6-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"banhngot6-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"banhngot6-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"banhngot6-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1366, 209, '_thumbnail_id', '210'),
(1367, 209, '_regular_price', '40000'),
(1368, 209, '_price', '40000'),
(1369, 211, '_edit_lock', '1610450586:1'),
(1370, 211, '_edit_last', '1'),
(1371, 212, '_wp_attached_file', '2021/01/banh-ngot7.jpg'),
(1372, 212, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:739;s:6:\"height\";i:487;s:4:\"file\";s:22:\"2021/01/banh-ngot7.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"banh-ngot7-300x198.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:198;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"banh-ngot7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"banh-ngot7-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"banh-ngot7-600x395.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:395;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"banh-ngot7-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"banh-ngot7-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"banh-ngot7-600x395.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:395;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"banh-ngot7-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1373, 211, '_thumbnail_id', '212'),
(1374, 211, '_regular_price', '30000'),
(1375, 211, 'total_sales', '0'),
(1376, 211, '_tax_status', 'taxable'),
(1377, 211, '_tax_class', ''),
(1378, 211, '_manage_stock', 'no'),
(1379, 211, '_backorders', 'no'),
(1380, 211, '_sold_individually', 'no'),
(1381, 211, '_virtual', 'no'),
(1382, 211, '_downloadable', 'no'),
(1383, 211, '_download_limit', '-1'),
(1384, 211, '_download_expiry', '-1'),
(1385, 211, '_stock', NULL),
(1386, 211, '_stock_status', 'instock'),
(1387, 211, '_wc_average_rating', '0'),
(1388, 211, '_wc_review_count', '0'),
(1389, 211, '_product_version', '4.8.0'),
(1390, 211, '_price', '30000'),
(1391, 213, '_edit_lock', '1610450828:1'),
(1392, 213, '_edit_last', '1'),
(1393, 214, '_wp_attached_file', '2021/01/banhngot8.png'),
(1394, 214, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:896;s:6:\"height\";i:1074;s:4:\"file\";s:21:\"2021/01/banhngot8.png\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"banhngot8-250x300.png\";s:5:\"width\";i:250;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"banhngot8-854x1024.png\";s:5:\"width\";i:854;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"banhngot8-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"banhngot8-768x921.png\";s:5:\"width\";i:768;s:6:\"height\";i:921;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"banhngot8-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"banhngot8-600x719.png\";s:5:\"width\";i:600;s:6:\"height\";i:719;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"banhngot8-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"banhngot8-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"banhngot8-600x719.png\";s:5:\"width\";i:600;s:6:\"height\";i:719;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"banhngot8-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1395, 213, '_thumbnail_id', '214'),
(1396, 213, '_regular_price', '50000'),
(1397, 213, 'total_sales', '0'),
(1398, 213, '_tax_status', 'taxable'),
(1399, 213, '_tax_class', ''),
(1400, 213, '_manage_stock', 'no'),
(1401, 213, '_backorders', 'no'),
(1402, 213, '_sold_individually', 'no'),
(1403, 213, '_virtual', 'no'),
(1404, 213, '_downloadable', 'no'),
(1405, 213, '_download_limit', '-1'),
(1406, 213, '_download_expiry', '-1'),
(1407, 213, '_stock', NULL),
(1408, 213, '_stock_status', 'instock'),
(1409, 213, '_wc_average_rating', '0'),
(1410, 213, '_wc_review_count', '0'),
(1411, 213, '_product_version', '4.8.0'),
(1412, 213, '_price', '50000'),
(1413, 215, '_edit_lock', '1610450718:1'),
(1414, 215, '_edit_last', '1'),
(1415, 216, '_wp_attached_file', '2021/01/khuonlambanh2.jpg'),
(1416, 216, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:25:\"2021/01/khuonlambanh2.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"khuonlambanh2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"khuonlambanh2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"khuonlambanh2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"khuonlambanh2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"khuonlambanh2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"khuonlambanh2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1417, 215, '_thumbnail_id', '216'),
(1418, 215, '_regular_price', '75000'),
(1419, 215, 'total_sales', '0'),
(1420, 215, '_tax_status', 'taxable'),
(1421, 215, '_tax_class', ''),
(1422, 215, '_manage_stock', 'no'),
(1423, 215, '_backorders', 'no'),
(1424, 215, '_sold_individually', 'no'),
(1425, 215, '_virtual', 'no'),
(1426, 215, '_downloadable', 'no'),
(1427, 215, '_download_limit', '-1'),
(1428, 215, '_download_expiry', '-1'),
(1429, 215, '_stock', NULL),
(1430, 215, '_stock_status', 'instock'),
(1431, 215, '_wc_average_rating', '0'),
(1432, 215, '_wc_review_count', '0'),
(1433, 215, '_product_version', '4.8.0'),
(1434, 215, '_price', '75000'),
(1435, 217, '_edit_lock', '1610450733:1'),
(1436, 217, '_edit_last', '1'),
(1437, 218, '_wp_attached_file', '2021/01/khuonlambanh3.jpg'),
(1438, 218, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:850;s:6:\"height\";i:420;s:4:\"file\";s:25:\"2021/01/khuonlambanh3.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"khuonlambanh3-300x148.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:148;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"khuonlambanh3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"khuonlambanh3-768x379.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:379;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"khuonlambanh3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"khuonlambanh3-600x296.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:296;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"khuonlambanh3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"khuonlambanh3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"khuonlambanh3-600x296.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:296;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"khuonlambanh3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1439, 217, '_thumbnail_id', '218'),
(1440, 217, '_regular_price', '120000'),
(1441, 217, 'total_sales', '0'),
(1442, 217, '_tax_status', 'taxable'),
(1443, 217, '_tax_class', ''),
(1444, 217, '_manage_stock', 'no'),
(1445, 217, '_backorders', 'no'),
(1446, 217, '_sold_individually', 'no'),
(1447, 217, '_virtual', 'no'),
(1448, 217, '_downloadable', 'no'),
(1449, 217, '_download_limit', '-1'),
(1450, 217, '_download_expiry', '-1'),
(1451, 217, '_stock', NULL),
(1452, 217, '_stock_status', 'instock'),
(1453, 217, '_wc_average_rating', '0'),
(1454, 217, '_wc_review_count', '0'),
(1455, 217, '_product_version', '4.8.0'),
(1456, 217, '_price', '120000'),
(1457, 220, '_edit_lock', '1610450900:1'),
(1458, 220, '_edit_last', '1'),
(1459, 221, '_wp_attached_file', '2021/01/banhngot9.jpg'),
(1460, 221, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:675;s:4:\"file\";s:21:\"2021/01/banhngot9.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"banhngot9-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"banhngot9-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"banhngot9-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"banhngot9-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"banhngot9-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"banhngot9-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"banhngot9-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"banhngot9-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"banhngot9-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:10:\"Con Poulos\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:55:\"Food stylist: Anne Disrude\rProp Stylist: Marina Malchin\";s:17:\"created_timestamp\";s:0:\"\";s:9:\"copyright\";s:31:\"© 2010. Con Poulos Photography\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:4:\"0.25\";s:5:\"title\";s:13:\"FNM030111_130\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1461, 220, '_thumbnail_id', '221'),
(1462, 220, '_regular_price', '70000'),
(1463, 220, 'total_sales', '0'),
(1464, 220, '_tax_status', 'taxable'),
(1465, 220, '_tax_class', ''),
(1466, 220, '_manage_stock', 'no'),
(1467, 220, '_backorders', 'no'),
(1468, 220, '_sold_individually', 'no'),
(1469, 220, '_virtual', 'no'),
(1470, 220, '_downloadable', 'no'),
(1471, 220, '_download_limit', '-1'),
(1472, 220, '_download_expiry', '-1'),
(1473, 220, '_stock', NULL),
(1474, 220, '_stock_status', 'instock'),
(1475, 220, '_wc_average_rating', '0'),
(1476, 220, '_wc_review_count', '0'),
(1477, 220, '_product_version', '4.8.0'),
(1478, 220, '_price', '70000'),
(1479, 222, '_edit_lock', '1610451088:1'),
(1480, 222, '_edit_last', '1'),
(1481, 223, '_wp_attached_file', '2021/01/banhngot10.jpg'),
(1482, 223, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:22:\"2021/01/banhngot10.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"banhngot10-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"banhngot10-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"banhngot10-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"banhngot10-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"banhngot10-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"banhngot10-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1483, 222, '_thumbnail_id', '223'),
(1484, 222, 'total_sales', '0'),
(1485, 222, '_tax_status', 'taxable'),
(1486, 222, '_tax_class', ''),
(1487, 222, '_manage_stock', 'no'),
(1488, 222, '_backorders', 'no'),
(1489, 222, '_sold_individually', 'no'),
(1490, 222, '_virtual', 'no'),
(1491, 222, '_downloadable', 'no'),
(1492, 222, '_download_limit', '-1'),
(1493, 222, '_download_expiry', '-1'),
(1494, 222, '_stock', NULL),
(1495, 222, '_stock_status', 'instock'),
(1496, 222, '_wc_average_rating', '0'),
(1497, 222, '_wc_review_count', '0'),
(1498, 222, '_product_version', '4.8.0'),
(1499, 222, '_regular_price', '40000'),
(1500, 222, '_price', '40000'),
(1501, 224, '_edit_lock', '1610508662:1'),
(1502, 224, '_edit_last', '1'),
(1503, 225, '_wp_attached_file', '2021/01/banhkem3.jpg'),
(1504, 225, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:680;s:6:\"height\";i:453;s:4:\"file\";s:20:\"2021/01/banhkem3.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"banhkem3-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"banhkem3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"banhkem3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"banhkem3-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"banhkem3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"banhkem3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"banhkem3-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"banhkem3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1505, 224, '_thumbnail_id', '225'),
(1506, 224, '_regular_price', '250000'),
(1507, 224, '_sale_price', '240000'),
(1508, 224, 'total_sales', '0'),
(1509, 224, '_tax_status', 'taxable'),
(1510, 224, '_tax_class', ''),
(1511, 224, '_manage_stock', 'no'),
(1512, 224, '_backorders', 'no'),
(1513, 224, '_sold_individually', 'no'),
(1514, 224, '_virtual', 'no'),
(1515, 224, '_downloadable', 'no'),
(1516, 224, '_download_limit', '-1'),
(1517, 224, '_download_expiry', '-1'),
(1518, 224, '_stock', NULL),
(1519, 224, '_stock_status', 'instock'),
(1520, 224, '_wc_average_rating', '0'),
(1521, 224, '_wc_review_count', '0'),
(1522, 224, '_product_version', '4.8.0'),
(1523, 224, '_price', '240000'),
(1524, 226, '_edit_lock', '1610508873:1'),
(1525, 226, '_edit_last', '1'),
(1526, 227, '_wp_attached_file', '2021/01/banhkem4.jpg'),
(1527, 227, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:680;s:6:\"height\";i:680;s:4:\"file\";s:20:\"2021/01/banhkem4.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"banhkem4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"banhkem4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"banhkem4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"banhkem4-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"banhkem4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"banhkem4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"banhkem4-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"banhkem4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1528, 226, '_thumbnail_id', '227'),
(1529, 226, '_regular_price', '300000'),
(1530, 226, 'total_sales', '0'),
(1531, 226, '_tax_status', 'taxable'),
(1532, 226, '_tax_class', ''),
(1533, 226, '_manage_stock', 'no'),
(1534, 226, '_backorders', 'no'),
(1535, 226, '_sold_individually', 'no'),
(1536, 226, '_virtual', 'no'),
(1537, 226, '_downloadable', 'no'),
(1538, 226, '_download_limit', '-1'),
(1539, 226, '_download_expiry', '-1'),
(1540, 226, '_stock', NULL),
(1541, 226, '_stock_status', 'instock'),
(1542, 226, '_wc_average_rating', '0'),
(1543, 226, '_wc_review_count', '0'),
(1544, 226, '_product_version', '4.8.0'),
(1545, 226, '_price', '300000'),
(1546, 228, '_edit_lock', '1610508874:1'),
(1547, 228, '_edit_last', '1'),
(1548, 229, '_wp_attached_file', '2021/01/banhkem5.jpg'),
(1549, 229, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:600;s:4:\"file\";s:20:\"2021/01/banhkem5.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"banhkem5-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"banhkem5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"banhkem5-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"banhkem5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"banhkem5-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"banhkem5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"banhkem5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"banhkem5-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"banhkem5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1550, 228, '_thumbnail_id', '229'),
(1551, 228, '_regular_price', '270000'),
(1552, 228, '_sale_price', '250000'),
(1553, 228, 'total_sales', '0'),
(1554, 228, '_tax_status', 'taxable'),
(1555, 228, '_tax_class', ''),
(1556, 228, '_manage_stock', 'no'),
(1557, 228, '_backorders', 'no'),
(1558, 228, '_sold_individually', 'no'),
(1559, 228, '_virtual', 'no'),
(1560, 228, '_downloadable', 'no'),
(1561, 228, '_download_limit', '-1'),
(1562, 228, '_download_expiry', '-1'),
(1563, 228, '_stock', NULL),
(1564, 228, '_stock_status', 'instock'),
(1565, 228, '_wc_average_rating', '0'),
(1566, 228, '_wc_review_count', '0'),
(1567, 228, '_product_version', '4.8.0'),
(1568, 228, '_price', '250000'),
(1569, 230, '_edit_lock', '1610508831:1'),
(1570, 230, '_edit_last', '1'),
(1571, 232, '_wp_attached_file', '2021/01/banhkem6.jpg'),
(1572, 232, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:293;s:4:\"file\";s:20:\"2021/01/banhkem6.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"banhkem6-300x172.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:172;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"banhkem6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"banhkem6-300x293.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:293;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"banhkem6-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"banhkem6-300x293.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:293;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"banhkem6-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:6:\"Picasa\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1573, 230, '_thumbnail_id', '232'),
(1574, 230, '_regular_price', '200000'),
(1575, 230, '_sale_price', '190000'),
(1576, 230, 'total_sales', '0'),
(1577, 230, '_tax_status', 'taxable'),
(1578, 230, '_tax_class', ''),
(1579, 230, '_manage_stock', 'no'),
(1580, 230, '_backorders', 'no'),
(1581, 230, '_sold_individually', 'no'),
(1582, 230, '_virtual', 'no'),
(1583, 230, '_downloadable', 'no'),
(1584, 230, '_download_limit', '-1'),
(1585, 230, '_download_expiry', '-1'),
(1586, 230, '_stock', NULL),
(1587, 230, '_stock_status', 'instock'),
(1588, 230, '_wc_average_rating', '0'),
(1589, 230, '_wc_review_count', '0'),
(1590, 230, '_product_version', '4.8.0'),
(1591, 230, '_price', '190000'),
(1592, 233, '_edit_lock', '1610509121:1'),
(1593, 233, '_edit_last', '1'),
(1594, 234, '_wp_attached_file', '2021/01/banhkem7.jpg'),
(1595, 234, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:400;s:4:\"file\";s:20:\"2021/01/banhkem7.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"banhkem7-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"banhkem7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"banhkem7-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"banhkem7-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"banhkem7-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"banhkem7-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:20:\"2015 Keller + Keller\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1596, 233, '_thumbnail_id', '234'),
(1597, 233, '_regular_price', '300000'),
(1598, 233, '_sale_price', '290000'),
(1599, 233, 'total_sales', '0'),
(1600, 233, '_tax_status', 'taxable'),
(1601, 233, '_tax_class', ''),
(1602, 233, '_manage_stock', 'no'),
(1603, 233, '_backorders', 'no'),
(1604, 233, '_sold_individually', 'no'),
(1605, 233, '_virtual', 'no'),
(1606, 233, '_downloadable', 'no'),
(1607, 233, '_download_limit', '-1'),
(1608, 233, '_download_expiry', '-1'),
(1609, 233, '_stock', NULL),
(1610, 233, '_stock_status', 'instock'),
(1611, 233, '_wc_average_rating', '0'),
(1612, 233, '_wc_review_count', '0'),
(1613, 233, '_product_version', '4.8.0'),
(1614, 233, '_price', '290000');

-- --------------------------------------------------------

--
-- Table structure for table `hk5_posts`
--

DROP TABLE IF EXISTS `hk5_posts`;
CREATE TABLE IF NOT EXISTS `hk5_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=235 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hk5_posts`
--

INSERT INTO `hk5_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-11-12 13:31:11', '2020-11-12 13:31:11', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2020-11-12 13:31:11', '2020-11-12 13:31:11', '', 0, 'http://localhost/shop-cms-wordpress/?p=1', 0, 'post', '', 0),
(2, 1, '2020-11-12 13:31:11', '2020-11-12 13:31:11', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/shop-cms-wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2020-11-12 13:31:11', '2020-11-12 13:31:11', '', 0, 'http://localhost/shop-cms-wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-11-12 13:31:11', '2020-11-12 13:31:11', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/shop-cms-wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-11-12 13:31:11', '2020-11-12 13:31:11', '', 0, 'http://localhost/shop-cms-wordpress/?page_id=3', 0, 'page', '', 0),
(15, 1, '2020-11-13 21:17:58', '2020-11-13 14:17:58', 'http://localhost/shop-cms-wordpress/wp-content/uploads/2020/11/cropped-logoPJ.png', 'cropped-logoPJ.png', '', 'inherit', 'open', 'closed', '', 'cropped-logopj-png', '', '', '2020-11-13 21:17:58', '2020-11-13 14:17:58', '', 0, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2020/11/cropped-logoPJ.png', 0, 'attachment', 'image/png', 0),
(14, 1, '2020-11-13 21:17:49', '2020-11-13 14:17:49', '', 'logoPJ', '', 'inherit', 'open', 'closed', '', 'logopj', '', '', '2020-11-13 21:17:49', '2020-11-13 14:17:49', '', 0, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2020/11/logoPJ.png', 0, 'attachment', 'image/png', 0),
(12, 1, '2020-11-13 20:51:44', '2020-11-13 13:51:44', 'http://localhost/shop-cms-wordpress/wp-content/uploads/2020/11/cropped-logoCMS.png', 'cropped-logoCMS.png', '', 'inherit', 'open', 'closed', '', 'cropped-logocms-png', '', '', '2021-01-11 17:11:17', '2021-01-11 10:11:17', '', 133, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2020/11/cropped-logoCMS.png', 0, 'attachment', 'image/png', 0),
(38, 1, '2020-11-14 23:46:46', '2020-11-14 16:46:46', '', 'Danh mục làm bánh <i class=\"fa fa-angle-down\"></i></a>', '', 'publish', 'closed', 'closed', '', '38', '', '', '2020-11-21 15:50:27', '2020-11-21 08:50:27', '', 0, 'http://localhost/shop-cms-wordpress/?p=38', 1, 'nav_menu_item', '', 0),
(28, 1, '2020-11-14 13:39:06', '2020-11-14 06:39:06', '', 'logo-cms', '', 'inherit', 'open', 'closed', '', 'logo-cms', '', '', '2020-11-14 13:39:13', '2020-11-14 06:39:13', '', 0, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2020/11/logo-cms.png', 0, 'attachment', 'image/png', 0),
(29, 1, '2020-11-14 13:39:48', '2020-11-14 06:39:48', 'http://localhost/shop-cms-wordpress/wp-content/uploads/2020/11/cropped-logo-cms.png', 'cropped-logo-cms.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-cms-png', '', '', '2020-11-14 13:39:48', '2020-11-14 06:39:48', '', 0, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2020/11/cropped-logo-cms.png', 0, 'attachment', 'image/png', 0),
(31, 1, '2020-11-14 13:40:09', '2020-11-14 06:40:09', 'http://localhost/shop-cms-wordpress/wp-content/uploads/2020/11/cropped-logo-cms-1.png', 'cropped-logo-cms-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-cms-1-png', '', '', '2020-11-14 13:40:09', '2020-11-14 06:40:09', '', 0, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2020/11/cropped-logo-cms-1.png', 0, 'attachment', 'image/png', 0),
(41, 1, '2020-11-14 23:46:47', '2020-11-14 16:46:47', ' ', '', '', 'publish', 'closed', 'closed', '', '41', '', '', '2020-11-21 15:50:27', '2020-11-21 08:50:27', '', 5, 'http://localhost/shop-cms-wordpress/?p=41', 4, 'nav_menu_item', '', 0),
(51, 1, '2020-11-15 02:07:46', '2020-11-14 19:07:46', '', 'logo-cms-header', '', 'inherit', 'open', 'closed', '', 'logo-cms-header', '', '', '2020-11-15 02:07:46', '2020-11-14 19:07:46', '', 0, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2020/11/logo-cms-header.png', 0, 'attachment', 'image/png', 0),
(58, 1, '2020-11-15 02:32:40', '2020-11-14 19:32:40', 'http://localhost/shop-cms-wordpress/wp-content/uploads/2020/11/cropped-logo-cms-header.png', 'cropped-logo-cms-header.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-cms-header-png', '', '', '2020-11-15 02:32:40', '2020-11-14 19:32:40', '', 0, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2020/11/cropped-logo-cms-header.png', 0, 'attachment', 'image/png', 0),
(60, 1, '2020-11-15 02:35:30', '2020-11-14 19:35:30', 'http://localhost/shop-cms-wordpress/wp-content/uploads/2020/11/cropped-logo-cms-header-1.png', 'cropped-logo-cms-header-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-cms-header-1-png', '', '', '2020-11-15 02:35:30', '2020-11-14 19:35:30', '', 0, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2020/11/cropped-logo-cms-header-1.png', 0, 'attachment', 'image/png', 0),
(62, 1, '2020-11-15 02:36:38', '2020-11-14 19:36:38', '', 'cropped-logo-cms-header-1', '', 'inherit', 'open', 'closed', '', 'cropped-logo-cms-header-1', '', '', '2020-11-15 02:36:38', '2020-11-14 19:36:38', '', 0, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2020/11/cropped-logo-cms-header-1-1.png', 0, 'attachment', 'image/png', 0),
(70, 1, '2020-11-15 15:14:53', '2020-11-15 08:14:53', '<!-- wp:paragraph -->\n<p><strong>Khuôn nướng bánh cupcake chống dính 12 ô (Đen)</strong><br>một trong những dụng cụ không thể thiếu khi làm bánh cupcake. Khuôn cupcake an toàn chịu nhiệt tốt dễ dàng sử dụng.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Kích thước: DàixRộngxCao:(35cmx26cmx3cm)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Đường kính lỗ: 6,5cm, đáy:4,5</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Chất liệu:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Trọng lượng: 504g</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Mách nhỏ:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>- Khuôn làm bánh muffin và cupcake là 01 dù đó là 2 loại bánh khác nhau.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>- Lưu ý kiểm tra kích thước của lò nướng trước khi mua khuôn nhé.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>- Sản phẩm có khả năng chịu nhiệt cao dùng trong lò nướng an toàn cho người sử dụng.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Hướng dẫn sử dụng:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>- Làm bánh cupcake xong các bạn bỏ vào khuôn đã có lót sẵn cup giấy rồi cho vào lò nướng sau đó chọn thời gian và nhiệt độ thích hợp. Thế là chúng ta đã có những chiếc bánh cupcake/muffin thơm ngon để chiêu đãi bạn bè và người thân.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Lưu ý khi sử dụng:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>- Khi mua về trước khi sử dụng phải được rửa sạch, hơ trên lửa nhỏ để khô khuôn bánh</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>- Bôi một lớp bơ, dầu mỡ lên mặt khuôn<br>- Đặt vào lò nướng, nướng ở nhiệt độ 150 độ C, trong vòng 5 phút</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>- Để nguội ở nhiệt độ bình thường sau đó lau khô bằng khăn mềm</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Việc làm này giúp cho khuôn của bạn đảm bảo độ chống dính tối đa.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Đặt hàng ngay để mang đến cho gia đình, bạn bè những chiếc bánh thơm ngon nóng hổi nào!</p>\n<!-- /wp:paragraph -->', 'Combo 3 Khuôn nướng bánh cupcake chống dính 12 ô to', '', 'publish', 'open', 'open', '', '70-2', '', '', '2020-11-15 15:15:26', '2020-11-15 08:15:26', '', 0, 'http://localhost/shop-cms-wordpress/?p=70', 0, 'post', '', 0),
(118, 1, '2021-01-09 19:16:39', '2021-01-09 12:16:39', '<!-- wp:shortcode -->\n[products limit=\"10\" columns=\"4\" orderby=\"date\" order=\"DESC\" visibility=\"visible\" category=\"laptop Gaming\"]\n<!-- /wp:shortcode -->', 'Untitled Reusable Block', '', 'publish', 'closed', 'closed', '', 'untitled-reusable-block', '', '', '2021-01-09 19:16:39', '2021-01-09 12:16:39', '', 0, 'http://localhost/shop-cms-wordpress/untitled-reusable-block/', 0, 'wp_block', '', 0),
(81, 1, '2020-11-21 12:56:59', '2020-11-21 05:56:59', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2020-11-21 12:56:59', '2020-11-21 05:56:59', '', 0, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2020/11/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(82, 1, '2020-11-21 12:57:00', '2020-11-21 05:57:00', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2020-11-21 12:57:00', '2020-11-21 05:57:00', '', 0, 'http://localhost/shop-cms-wordpress/shop/', 0, 'page', '', 0),
(83, 1, '2020-11-21 12:57:00', '2020-11-21 05:57:00', '<!-- wp:shortcode -->\n[woocommerce_cart]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2021-01-10 20:39:13', '2021-01-10 13:39:13', '', 0, 'http://localhost/shop-cms-wordpress/cart/', 0, 'page', '', 0),
(132, 1, '2021-01-10 20:39:13', '2021-01-10 13:39:13', '<!-- wp:shortcode -->\n[woocommerce_cart]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Cart', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2021-01-10 20:39:13', '2021-01-10 13:39:13', '', 83, 'http://localhost/shop-cms-wordpress/83-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2020-11-21 12:57:00', '2020-11-21 05:57:00', '<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2020-11-21 12:57:00', '2020-11-21 05:57:00', '', 0, 'http://localhost/shop-cms-wordpress/checkout/', 0, 'page', '', 0),
(85, 1, '2020-11-21 12:57:00', '2020-11-21 05:57:00', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2020-11-21 12:57:00', '2020-11-21 05:57:00', '', 0, 'http://localhost/shop-cms-wordpress/my-account/', 0, 'page', '', 0),
(86, 1, '2020-11-21 13:36:24', '2020-11-21 06:36:24', '<p style=\"text-align: justify;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Bộ túi đựng bánh trung thu lá đồng màu Trung thu, kiểu túi trong, túi trong tương ứng với khối lượng bánh 150-180gr (khay số 9)</span></span></p>\r\n<img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://file.hstatic.net/1000089133/file/06_de9a3fb951884589a7de023a8f500870_grande.jpg\" />\r\n<p style=\"text-align: justify;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Kích thước: dài 15xm, x rộng 13cm.</span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Medium with khay 8,5 và 9cm tương đương với bánh 125-150 - 180gr</span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Kiểu túi trong, đồng màu Mid - Autumn, nổi bật với bánh dẻo.</span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Lẻ bán giá: 8K / Set 10 bộ gồm 10 túi và 10 khay</span></span></p>\r\n<p style=\"text-align: left;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Sỉ Sỉ gọi 0978 329 959</span></span></p>', 'Khay Túi Bánh Trung Thu Mid-Autumn Màu Đồng 150-180gr Set 10 Bộ', '', 'publish', 'open', 'closed', '', 'khay-tui-banh-trung-thu-mid-autumn-mau-dong-150-180gr-set-10-bo', '', '', '2021-01-11 03:04:30', '2021-01-10 20:04:30', '', 0, 'http://localhost/shop-cms-wordpress/?post_type=product&#038;p=86', 0, 'product', '', 0),
(87, 1, '2020-11-21 13:26:46', '2020-11-21 06:26:46', '', '06_de9a3fb951884589a7de023a8f500870_grande', '', 'inherit', 'open', 'closed', '', '06_de9a3fb951884589a7de023a8f500870_grande', '', '', '2020-11-21 13:26:46', '2020-11-21 06:26:46', '', 86, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2020/11/06_de9a3fb951884589a7de023a8f500870_grande.jpg', 0, 'attachment', 'image/jpeg', 0),
(88, 1, '2020-11-21 13:44:47', '2020-11-21 06:44:47', '<!-- wp:html -->\n<div class=\"product-laptop\">\n<div class=\"container\">\n<div class=\"product-title\">\n<h2>Danh mục làm bánh</h2>\n</div>\n[products limit=\"10\" columns=\"4\" orderby=\"date\" order=\"DESC\" visibility=\"visible\" category=\"Danh mục làm bánh\"]</div>\n</div>\n<!-- /wp:html -->', 'Homepage', '', 'publish', 'closed', 'closed', '', 'homepage', '', '', '2021-01-10 05:45:44', '2021-01-09 22:45:44', '', 0, 'http://localhost/shop-cms-wordpress/homepage/', 0, 'page', '', 0),
(89, 1, '2020-11-21 13:44:47', '2020-11-21 06:44:47', '', 'other-small', '', 'inherit', 'open', 'closed', '', 'other-small', '', '', '2020-11-21 13:44:47', '2020-11-21 06:44:47', '', 88, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2020/11/other-small.jpg', 0, 'attachment', 'image/jpeg', 0),
(93, 1, '2020-11-21 15:49:46', '2020-11-21 08:49:46', '', 'recipe49685-cook-step5-637051833243455548', '', 'inherit', 'open', 'closed', '', 'recipe49685-cook-step5-637051833243455548', '', '', '2020-11-21 15:49:46', '2020-11-21 08:49:46', '', 0, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2020/11/recipe49685-cook-step5-637051833243455548.jpg', 0, 'attachment', 'image/jpeg', 0),
(94, 1, '2020-11-21 15:53:09', '2020-11-21 08:53:09', '', '4183c5944997aff7042e20d3ad7f4124', '', 'inherit', 'open', 'closed', '', '4183c5944997aff7042e20d3ad7f4124', '', '', '2020-11-21 15:53:09', '2020-11-21 08:53:09', '', 0, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2020/11/4183c5944997aff7042e20d3ad7f4124.jpg', 0, 'attachment', 'image/jpeg', 0),
(125, 1, '2021-01-10 05:54:15', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2021-01-10 05:54:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/shop-cms-wordpress/?post_type=product&p=125', 0, 'product', '', 0),
(126, 1, '2021-01-10 17:08:07', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-01-10 17:08:07', '0000-00-00 00:00:00', '', 0, 'http://localhost/shop-cms-wordpress/?p=126', 0, 'post', '', 0),
(127, 1, '2021-01-10 18:36:04', '2021-01-10 11:36:04', '<p style=\"text-align: justify;\">Kích thước: 15xm dài, x 13cm rộng.</p>\r\n<p style=\"text-align: justify;\">Vừa với khay 8,5 và 9cm tương đương với bánh 125-150 - 180gr</p>\r\n<p style=\"text-align: justify;\">Kiểu túi trong, chữ Mid - Autumn màu đồng, nổi bật với bánh dẻo.</p>\r\n<img class=\"size-medium wp-image-129 aligncenter\" src=\"http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/32083871_2069324373355926_6662859195227832320_n-450x450-1-300x300.jpg\" alt=\"Banh kem bo trong loai 1\" width=\"300\" height=\"300\" />\r\n<p style=\"text-align: justify;\">Giá bán lẻ: 8K/ Set 10 bộ gồm 10 túi và 10 khay</p>\r\nSDT: 01234567890', 'Bánh kem bơ trong loại 1', '', 'publish', 'open', 'closed', '', 'banh-kem-bo-trong-loai-1', '', '', '2021-01-11 17:14:51', '2021-01-11 10:14:51', '', 0, 'http://localhost/shop-cms-wordpress/?post_type=product&#038;p=127', 0, 'product', '', 0),
(105, 1, '2020-11-21 15:57:21', '2020-11-21 08:57:21', '', 'Danh mục làm bánh <i class=\"fa fa-angle-down\"></i>', '', 'publish', 'closed', 'closed', '', '105', '', '', '2021-01-12 06:28:02', '2021-01-11 23:28:02', '', 0, 'http://localhost/shop-cms-wordpress/?p=105', 1, 'nav_menu_item', '', 0),
(108, 1, '2020-11-21 15:57:21', '2020-11-21 08:57:21', ' ', '', '', 'publish', 'closed', 'closed', '', '108', '', '', '2021-01-12 06:28:02', '2021-01-11 23:28:02', '', 38, 'http://localhost/shop-cms-wordpress/?p=108', 2, 'nav_menu_item', '', 0),
(129, 1, '2021-01-10 18:32:29', '2021-01-10 11:32:29', '', '32083871_2069324373355926_6662859195227832320_n-450x450', '', 'inherit', 'open', 'closed', '', '32083871_2069324373355926_6662859195227832320_n-450x450', '', '', '2021-01-10 18:32:41', '2021-01-10 11:32:41', '', 127, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/32083871_2069324373355926_6662859195227832320_n-450x450-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(130, 1, '2021-01-10 18:39:44', '2021-01-10 11:39:44', '', 'Bánh Kem <i class=\"fa fa-angle-down\"></i>', '', 'publish', 'closed', 'closed', '', 'banh-kem', '', '', '2021-01-12 06:28:02', '2021-01-11 23:28:02', '', 0, 'http://localhost/shop-cms-wordpress/?p=130', 3, 'nav_menu_item', '', 0),
(131, 1, '2021-01-10 18:39:44', '2021-01-10 11:39:44', ' ', '', '', 'publish', 'closed', 'closed', '', '131', '', '', '2021-01-12 06:28:02', '2021-01-11 23:28:02', '', 55, 'http://localhost/shop-cms-wordpress/?p=131', 4, 'nav_menu_item', '', 0),
(133, 1, '2021-01-11 17:17:14', '2021-01-11 10:17:14', '<p style=\"text-align: justify;\">Kích thước: 15xm dài, x 13cm rộng.</p>\r\n<p style=\"text-align: justify;\">Vừa với khay 8,5 và 9cm tương đương với bánh 125-150 - 180gr</p>\r\n<p style=\"text-align: justify;\">Kiểu túi trong, chữ Mid - Autumn màu đồng, nổi bật với bánh dẻo.</p>\r\n<p style=\"text-align: justify;\"><img class=\"alignnone size-medium wp-image-12\" src=\"http://localhost/shop-cms-wordpress/wp-content/uploads/2020/11/cropped-logoCMS-300x300.png\" alt=\"\" width=\"300\" height=\"300\" /><img class=\"size-medium wp-image-134 aligncenter\" src=\"http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/35363297_2095657100722653_2954406263733092352_n-225x300.jpg\" alt=\"\" width=\"225\" height=\"300\" /></p>\r\n<p style=\"text-align: justify;\">Giá bán lẻ: 8K/ Set 10 bộ gồm 10 túi và 10 khay</p>\r\n<p style=\"text-align: left;\">SDT 01234567890</p>', 'Bánh kem bơ trong loại 2', '', 'publish', 'open', 'closed', '', 'banh-kem-bo-trong-2', '', '', '2021-01-11 17:23:00', '2021-01-11 10:23:00', '', 0, 'http://localhost/shop-cms-wordpress/?post_type=product&#038;p=133', 0, 'product', '', 0),
(134, 1, '2021-01-11 17:11:15', '2021-01-11 10:11:15', '', '35363297_2095657100722653_2954406263733092352_n', '', 'inherit', 'open', 'closed', '', '35363297_2095657100722653_2954406263733092352_n', '', '', '2021-01-11 17:11:15', '2021-01-11 10:11:15', '', 133, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/35363297_2095657100722653_2954406263733092352_n.jpg', 0, 'attachment', 'image/jpeg', 0),
(135, 1, '2021-01-11 17:23:47', '2021-01-11 10:23:47', '<p style=\"text-align: justify;\">Kích thước: 15xm dài, x 13cm rộng.</p>\r\n<p style=\"text-align: justify;\">Vừa với khay 8,5 và 9cm tương đương với bánh 125-150 - 180gr</p>\r\n<p style=\"text-align: justify;\">Kiểu túi trong, chữ Mid - Autumn màu đồng, nổi bật với bánh dẻo.</p>\r\n<img class=\"size-medium wp-image-136 aligncenter\" src=\"http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/28870164_2036693406619023_8530338673772724224_n-225x300.jpg\" alt=\"\" width=\"225\" height=\"300\" />\r\n<p style=\"text-align: justify;\">Giá bán lẻ: 8K/ Set 10 bộ gồm 10 túi và 10 khay</p>\r\n<p style=\"text-align: left;\">SDT 01234567890</p>', 'Bánh kem bơ trong loại 3', '', 'publish', 'open', 'closed', '', 'banh-kem-bo-trong-loai-3', '', '', '2021-01-11 17:24:30', '2021-01-11 10:24:30', '', 0, 'http://localhost/shop-cms-wordpress/?post_type=product&#038;p=135', 0, 'product', '', 0),
(136, 1, '2021-01-11 17:23:15', '2021-01-11 10:23:15', '', '28870164_2036693406619023_8530338673772724224_n', '', 'inherit', 'open', 'closed', '', '28870164_2036693406619023_8530338673772724224_n', '', '', '2021-01-11 17:23:15', '2021-01-11 10:23:15', '', 135, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/28870164_2036693406619023_8530338673772724224_n.jpg', 0, 'attachment', 'image/jpeg', 0),
(137, 1, '2021-01-11 17:29:33', '2021-01-11 10:29:33', 'Mít sấy tự nhiên không phẩm màu, chất bảo quản\r\n\r\n<img class=\"size-medium wp-image-138 aligncenter\" src=\"http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/mit-say-300x175.jpg\" alt=\"\" width=\"300\" height=\"175\" />\r\n\r\nSDT 01234567890', 'Mít sấy', '', 'publish', 'open', 'closed', '', 'mit-say', '', '', '2021-01-11 17:54:06', '2021-01-11 10:54:06', '', 0, 'http://localhost/shop-cms-wordpress/?post_type=product&#038;p=137', 0, 'product', '', 0),
(138, 1, '2021-01-11 17:28:22', '2021-01-11 10:28:22', '', 'mit-say', '', 'inherit', 'open', 'closed', '', 'mit-say', '', '', '2021-01-11 17:28:22', '2021-01-11 10:28:22', '', 137, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/mit-say.jpg', 0, 'attachment', 'image/jpeg', 0),
(139, 1, '2021-01-11 17:44:45', '2021-01-11 10:44:45', 'Khoai lang tự nhiên sấy khô không hóa chất phẩm màu\r\n\r\n<img class=\"size-medium wp-image-140 aligncenter\" src=\"http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/khoai-lang-say-300x300.jpg\" alt=\"\" width=\"300\" height=\"300\" />\r\n\r\nSDT 01234567890', 'Khoai lang sấy', '', 'publish', 'open', 'closed', '', 'khoai-lang-say', '', '', '2021-01-11 17:47:33', '2021-01-11 10:47:33', '', 0, 'http://localhost/shop-cms-wordpress/?post_type=product&#038;p=139', 0, 'product', '', 0),
(140, 1, '2021-01-11 17:44:00', '2021-01-11 10:44:00', '', 'khoai-lang-say', '', 'inherit', 'open', 'closed', '', 'khoai-lang-say', '', '', '2021-01-11 17:44:00', '2021-01-11 10:44:00', '', 139, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/khoai-lang-say.jpg', 0, 'attachment', 'image/jpeg', 0),
(141, 1, '2021-01-11 17:44:50', '2021-01-11 10:44:50', 'Khoai lang tự nhiên sấy khô không hóa chất phẩm màu\r\n\r\n<img class=\"size-medium wp-image-140 aligncenter\" src=\"http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/khoai-lang-say-300x300.jpg\" alt=\"\" width=\"300\" height=\"300\" />\r\n\r\nSDT 01234567890', 'Khoai Lang Sấy', '', 'inherit', 'closed', 'closed', '', '139-autosave-v1', '', '', '2021-01-11 17:44:50', '2021-01-11 10:44:50', '', 139, 'http://localhost/shop-cms-wordpress/139-autosave-v1/', 0, 'revision', '', 0),
(142, 1, '2021-01-11 17:46:33', '2021-01-11 10:46:33', 'Được chọn lựa những loại tốt nhất\r\n\r\n<img class=\"size-medium wp-image-143 aligncenter\" src=\"http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/trai-cay-say-300x224.jpg\" alt=\"\" width=\"300\" height=\"224\" />\r\n\r\nSDT 01234567890', 'Trái cây tổng hợp', '', 'publish', 'open', 'closed', '', 'trai-cay-tong-hop', '', '', '2021-01-11 17:47:51', '2021-01-11 10:47:51', '', 0, 'http://localhost/shop-cms-wordpress/?post_type=product&#038;p=142', 0, 'product', '', 0),
(143, 1, '2021-01-11 17:46:11', '2021-01-11 10:46:11', '', 'trai-cay-say', '', 'inherit', 'open', 'closed', '', 'trai-cay-say', '', '', '2021-01-11 17:46:11', '2021-01-11 10:46:11', '', 142, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/trai-cay-say.jpg', 0, 'attachment', 'image/jpeg', 0),
(144, 1, '2021-01-11 17:52:12', '2021-01-11 10:52:12', 'Cam được trồng một cách tự nhiên\r\n\r\n<img class=\"size-full wp-image-146 aligncenter\" src=\"http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/cam-xanh.jpg\" alt=\"\" width=\"259\" height=\"194\" />\r\n\r\nSDT 01234567890', 'Cam xanh', '', 'publish', 'open', 'closed', '', 'cam-xanh', '', '', '2021-01-11 17:53:19', '2021-01-11 10:53:19', '', 0, 'http://localhost/shop-cms-wordpress/?post_type=product&#038;p=144', 0, 'product', '', 0),
(145, 1, '2021-01-11 17:50:34', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2021-01-11 17:50:34', '0000-00-00 00:00:00', '', 0, 'http://localhost/shop-cms-wordpress/?post_type=product&p=145', 0, 'product', '', 0),
(146, 1, '2021-01-11 17:51:44', '2021-01-11 10:51:44', '', 'cam-xanh', '', 'inherit', 'open', 'closed', '', 'cam-xanh', '', '', '2021-01-11 17:51:44', '2021-01-11 10:51:44', '', 144, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/cam-xanh.jpg', 0, 'attachment', 'image/jpeg', 0),
(147, 1, '2021-01-11 17:53:05', '2021-01-11 10:53:05', 'Cam nhập khẩu\r\n\r\n<img class=\"size-medium wp-image-148 aligncenter\" src=\"http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/cam-vang-300x228.jpg\" alt=\"\" width=\"300\" height=\"228\" />\r\n\r\nSDT 01234567890', 'Cam vàng', '', 'publish', 'open', 'closed', '', 'cam-vang', '', '', '2021-01-11 17:53:06', '2021-01-11 10:53:06', '', 0, 'http://localhost/shop-cms-wordpress/?post_type=product&#038;p=147', 0, 'product', '', 0),
(148, 1, '2021-01-11 17:52:52', '2021-01-11 10:52:52', '', 'cam-vang', '', 'inherit', 'open', 'closed', '', 'cam-vang', '', '', '2021-01-11 17:52:52', '2021-01-11 10:52:52', '', 147, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/cam-vang.jpg', 0, 'attachment', 'image/jpeg', 0),
(149, 1, '2021-01-11 17:53:08', '2021-01-11 10:53:08', 'Cam nhập khẩu\n\n<img class=\"size-medium wp-image-148 aligncenter\" src=\"http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/cam-vang-300x228.jpg\" alt=\"\" width=\"300\" height=\"228\" />\n\nSDT 01234567890', 'Cam vàng', '', 'inherit', 'closed', 'closed', '', '147-autosave-v1', '', '', '2021-01-11 17:53:08', '2021-01-11 10:53:08', '', 147, 'http://localhost/shop-cms-wordpress/147-autosave-v1/', 0, 'revision', '', 0),
(150, 1, '2021-01-11 20:12:22', '2021-01-11 13:12:22', 'Bánh được làm với nguyên liệu tự nhiên an toàn thực phẩm đã được kiểm định\r\n\r\n<img class=\"size-medium wp-image-151 aligncenter\" src=\"http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/banh-kem-sinh-nhat-zk6wabvt-300x300.jpg\" alt=\"\" width=\"300\" height=\"300\" />\r\n\r\nSDT 01234567890', 'Bánh sinh nhật', '', 'publish', 'open', 'closed', '', 'banh-sinh-nhat', '', '', '2021-01-11 20:19:57', '2021-01-11 13:19:57', '', 0, 'http://localhost/shop-cms-wordpress/?post_type=product&#038;p=150', 0, 'product', '', 0),
(151, 1, '2021-01-11 20:11:03', '2021-01-11 13:11:03', '', 'banh-kem-sinh-nhat-zk6wabvt', '', 'inherit', 'open', 'closed', '', 'banh-kem-sinh-nhat-zk6wabvt', '', '', '2021-01-11 20:11:03', '2021-01-11 13:11:03', '', 150, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/banh-kem-sinh-nhat-zk6wabvt.jpg', 0, 'attachment', 'image/jpeg', 0),
(152, 1, '2021-01-11 20:18:31', '2021-01-11 13:18:31', 'Bánh kem được làm từ những nguyên liệu vệ sinh an toàn thực phẩm cũng như đã được kiểm định\r\n\r\n<img class=\"size-medium wp-image-153 aligncenter\" src=\"http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/banh-kem-300x300.jpg\" alt=\"\" width=\"300\" height=\"300\" />\r\n\r\nSDT 01234567890', 'Bánh kem', '', 'trash', 'open', 'closed', '', 'banh-kem__trashed', '', '', '2021-01-11 20:19:42', '2021-01-11 13:19:42', '', 0, 'http://localhost/shop-cms-wordpress/?post_type=product&#038;p=152', 0, 'product', '', 0),
(153, 1, '2021-01-11 20:13:14', '2021-01-11 13:13:14', '', 'banh-kem', '', 'inherit', 'open', 'closed', '', 'banh-kem-2', '', '', '2021-01-11 20:13:14', '2021-01-11 13:13:14', '', 152, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/banh-kem.jpg', 0, 'attachment', 'image/jpeg', 0),
(154, 1, '2021-01-11 20:15:22', '2021-01-11 13:15:22', 'Bánh kem được làm từ những nguyên liệu vệ sinh an toàn thực phẩm cũng như đã được kiểm định\r\n\r\n<img class=\"size-medium wp-image-153 aligncenter\" src=\"http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/banh-kem-300x300.jpg\" alt=\"\" width=\"300\" height=\"300\" />\r\n\r\nSDT 01234567890', 'Bánh kem cơ bản', '', 'publish', 'open', 'closed', '', 'banh-kem-co-ban', '', '', '2021-01-11 20:19:54', '2021-01-11 13:19:54', '', 0, 'http://localhost/shop-cms-wordpress/?post_type=product&#038;p=154', 0, 'product', '', 0),
(155, 1, '2021-01-11 20:16:37', '2021-01-11 13:16:37', 'Bánh kem được làm từ những nguyên liệu vệ sinh an toàn thực phẩm cũng như đã được kiểm định\r\n\r\n<img class=\"size-medium wp-image-156 aligncenter\" src=\"http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/banhkem2-300x300.png\" alt=\"\" width=\"300\" height=\"300\" />\r\n\r\nSDT 01234567890', 'Bánh kem cơ bản loại 2', '', 'publish', 'open', 'closed', '', 'banh-kem-co-ban-loai-2', '', '', '2021-01-11 20:19:24', '2021-01-11 13:19:24', '', 0, 'http://localhost/shop-cms-wordpress/?post_type=product&#038;p=155', 0, 'product', '', 0),
(156, 1, '2021-01-11 20:16:09', '2021-01-11 13:16:09', '', 'banhkem2', '', 'inherit', 'open', 'closed', '', 'banhkem2', '', '', '2021-01-11 20:16:09', '2021-01-11 13:16:09', '', 155, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/banhkem2.png', 0, 'attachment', 'image/png', 0),
(157, 1, '2021-01-11 20:17:51', '2021-01-11 13:17:51', 'Dâu tây được trồng một cách tự nhiên không sử dụng các chất kích thích.\r\n\r\n<img class=\"size-medium wp-image-158 aligncenter\" src=\"http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/dau-tay-300x300.jpg\" alt=\"\" width=\"300\" height=\"300\" />\r\n\r\nSDT 01234567890', 'Dâu tây', '', 'publish', 'open', 'closed', '', 'dau-tay', '', '', '2021-01-11 20:19:58', '2021-01-11 13:19:58', '', 0, 'http://localhost/shop-cms-wordpress/?post_type=product&#038;p=157', 0, 'product', '', 0),
(158, 1, '2021-01-11 20:17:04', '2021-01-11 13:17:04', '', 'dau-tay', '', 'inherit', 'open', 'closed', '', 'dau-tay', '', '', '2021-01-11 20:17:04', '2021-01-11 13:17:04', '', 157, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/dau-tay.jpg', 0, 'attachment', 'image/jpeg', 0),
(159, 1, '2021-01-11 20:20:01', '2021-01-11 13:20:01', 'Dâu tây được trồng một cách tự nhiên không sử dụng các chất kích thích.\n\n<img class=\"size-medium wp-image-158 aligncenter\" src=\"http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/dau-tay-300x300.jpg\" alt=\"\" width=\"300\" height=\"300\" />\n\nSDT 01234567890', 'Dâu tây', '', 'inherit', 'closed', 'closed', '', '157-autosave-v1', '', '', '2021-01-11 20:20:01', '2021-01-11 13:20:01', '', 157, 'http://localhost/shop-cms-wordpress/157-autosave-v1/', 0, 'revision', '', 0),
(160, 1, '2021-01-11 20:21:16', '2021-01-11 13:21:16', 'Táo được trồng một cách tự nhiên không dùng hóa chất độc hại\r\n\r\n<img class=\"size-medium wp-image-161 aligncenter\" src=\"http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/Tao-Do-My-2-502x502-1-300x300.png\" alt=\"\" width=\"300\" height=\"300\" />\r\n\r\nSDT 01234567890', 'Táo mỹ', '', 'publish', 'open', 'closed', '', 'tao-my', '', '', '2021-01-11 20:21:16', '2021-01-11 13:21:16', '', 0, 'http://localhost/shop-cms-wordpress/?post_type=product&#038;p=160', 0, 'product', '', 0),
(161, 1, '2021-01-11 20:20:48', '2021-01-11 13:20:48', '', 'Táo Đỏ Mỹ 2-502x502', '', 'inherit', 'open', 'closed', '', 'tao-do-my-2-502x502', '', '', '2021-01-11 20:20:48', '2021-01-11 13:20:48', '', 160, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/Tao-Do-My-2-502x502-1.png', 0, 'attachment', 'image/png', 0),
(162, 1, '2021-01-11 20:47:11', '2021-01-11 13:47:11', 'https://drive.google.com/file/d/1qT9GdLirxND_P4b3KzPVExfdQSOGiyiU/view\r\n\r\n<img class=\"alignnone size-medium wp-image-163\" src=\"http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/banhngot1-300x300.jpg\" alt=\"\" width=\"300\" height=\"300\" />\r\n\r\nSDT 01234567890', 'Bánh ngọt loại 1', '', 'publish', 'open', 'closed', '', 'banh-ngot-loai-1', '', '', '2021-01-11 20:47:11', '2021-01-11 13:47:11', '', 0, 'http://localhost/shop-cms-wordpress/?post_type=product&#038;p=162', 0, 'product', '', 0),
(163, 1, '2021-01-11 20:45:30', '2021-01-11 13:45:30', '', 'banhngot1', '', 'inherit', 'open', 'closed', '', 'banhngot1', '', '', '2021-01-11 20:45:30', '2021-01-11 13:45:30', '', 162, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/banhngot1.jpg', 0, 'attachment', 'image/jpeg', 0),
(164, 1, '2021-01-11 20:49:51', '2021-01-11 13:49:51', 'Được làm từ những nguyên liệu đảm bảo vệ sinh an toàn thực phẩm\r\n\r\n<img class=\"alignnone size-medium wp-image-165\" src=\"http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/banhngot2-300x223.jpg\" alt=\"\" width=\"300\" height=\"223\" />\r\n\r\nSDT 01234567890', 'Bánh ngọt loại 2', '', 'publish', 'open', 'closed', '', 'banh-ngot-loai-2', '', '', '2021-01-11 20:49:51', '2021-01-11 13:49:51', '', 0, 'http://localhost/shop-cms-wordpress/?post_type=product&#038;p=164', 0, 'product', '', 0),
(165, 1, '2021-01-11 20:47:35', '2021-01-11 13:47:35', '', 'banhngot2', '', 'inherit', 'open', 'closed', '', 'banhngot2', '', '', '2021-01-11 20:47:35', '2021-01-11 13:47:35', '', 164, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/banhngot2.jpg', 0, 'attachment', 'image/jpeg', 0),
(166, 1, '2021-01-11 20:51:08', '2021-01-11 13:51:08', 'Được làm từ những nguyên liệu đảm bảo vệ sinh an toàn thực phẩm\r\n\r\n<img class=\"alignnone size-medium wp-image-167\" src=\"http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/banhngot3-300x220.jpg\" alt=\"\" width=\"300\" height=\"220\" />\r\n\r\nSDT 01234567890', 'Bánh ngọt loại 3', '', 'publish', 'open', 'closed', '', 'banh-ngot-loai-3', '', '', '2021-01-11 20:51:08', '2021-01-11 13:51:08', '', 0, 'http://localhost/shop-cms-wordpress/?post_type=product&#038;p=166', 0, 'product', '', 0),
(167, 1, '2021-01-11 20:50:48', '2021-01-11 13:50:48', '', 'banhngot3', '', 'inherit', 'open', 'closed', '', 'banhngot3', '', '', '2021-01-11 20:50:48', '2021-01-11 13:50:48', '', 166, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/banhngot3.jpg', 0, 'attachment', 'image/jpeg', 0),
(168, 1, '2021-01-11 20:53:20', '2021-01-11 13:53:20', 'Trái cây tự nhiên không chất độc hại\r\n\r\n<img class=\"alignnone size-medium wp-image-171\" src=\"http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/e0a70f72bdae9885bfc32d7cd19a26a1_XL-300x300.jpg\" alt=\"\" width=\"300\" height=\"300\" />\r\n\r\nSDT 01234567890', 'Cherry', '', 'publish', 'open', 'closed', '', '168', '', '', '2021-01-11 20:56:57', '2021-01-11 13:56:57', '', 0, 'http://localhost/shop-cms-wordpress/?post_type=product&#038;p=168', 0, 'product', '', 0),
(169, 1, '2021-01-11 20:52:23', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2021-01-11 20:52:23', '0000-00-00 00:00:00', '', 0, 'http://localhost/shop-cms-wordpress/?post_type=product&p=169', 0, 'product', '', 0),
(171, 1, '2021-01-11 20:52:39', '2021-01-11 13:52:39', '', 'e0a70f72bdae9885bfc32d7cd19a26a1_XL', '', 'inherit', 'open', 'closed', '', 'e0a70f72bdae9885bfc32d7cd19a26a1_xl', '', '', '2021-01-11 20:52:39', '2021-01-11 13:52:39', '', 168, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/e0a70f72bdae9885bfc32d7cd19a26a1_XL.jpg', 0, 'attachment', 'image/jpeg', 0),
(172, 1, '2021-01-11 20:55:09', '2021-01-11 13:55:09', 'Trái cây được trồng không chất kích thích\r\n\r\n<img class=\"alignnone size-medium wp-image-173\" src=\"http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/dao-300x200.png\" alt=\"\" width=\"300\" height=\"200\" />\r\n\r\nSDT 01234567890', 'Đào', '', 'publish', 'open', 'closed', '', '172', '', '', '2021-01-11 20:56:43', '2021-01-11 13:56:43', '', 0, 'http://localhost/shop-cms-wordpress/?post_type=product&#038;p=172', 0, 'product', '', 0),
(173, 1, '2021-01-11 20:54:27', '2021-01-11 13:54:27', '', 'dao', '', 'inherit', 'open', 'closed', '', 'dao', '', '', '2021-01-11 20:54:27', '2021-01-11 13:54:27', '', 172, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/dao.png', 0, 'attachment', 'image/png', 0),
(174, 1, '2021-01-11 20:57:04', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2021-01-11 20:57:04', '0000-00-00 00:00:00', '', 0, 'http://localhost/shop-cms-wordpress/?post_type=product&p=174', 0, 'product', '', 0),
(175, 1, '2021-01-11 20:59:25', '2021-01-11 13:59:25', 'Máy bảo đảm chất lượng cũng như hiệu suất làm việc\r\n\r\n<img class=\"alignnone size-medium wp-image-176\" src=\"http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/may-danh-trung-300x300.jpg\" alt=\"\" width=\"300\" height=\"300\" />\r\n\r\nSDT 01234567890', 'Máy đánh trứng', '', 'publish', 'open', 'closed', '', 'may-danh-trung', '', '', '2021-01-11 20:59:34', '2021-01-11 13:59:34', '', 0, 'http://localhost/shop-cms-wordpress/?post_type=product&#038;p=175', 0, 'product', '', 0),
(176, 1, '2021-01-11 20:58:05', '2021-01-11 13:58:05', '', 'may danh trung', '', 'inherit', 'open', 'closed', '', 'may-danh-trung', '', '', '2021-01-11 20:58:05', '2021-01-11 13:58:05', '', 175, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/may-danh-trung.jpg', 0, 'attachment', 'image/jpeg', 0),
(177, 1, '2021-01-11 20:59:30', '2021-01-11 13:59:30', 'Máy bảo đảm chất lượng cũng như hiệu suất làm việc\n\n<img class=\"alignnone size-medium wp-image-176\" src=\"http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/may-danh-trung-300x300.jpg\" alt=\"\" width=\"300\" height=\"300\" />\n\nSDT 01234567890', 'Máy đánh trứng', '', 'inherit', 'closed', 'closed', '', '175-autosave-v1', '', '', '2021-01-11 20:59:30', '2021-01-11 13:59:30', '', 175, 'http://localhost/shop-cms-wordpress/175-autosave-v1/', 0, 'revision', '', 0),
(178, 1, '2021-01-11 21:00:51', '2021-01-11 14:00:51', 'Máy đánh bột được kiểm định đảm bảo vệ sinh an toàn thực phẩm\r\n\r\n<img class=\"alignnone size-medium wp-image-179\" src=\"http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/may-danh-bot-300x300.png\" alt=\"\" width=\"300\" height=\"300\" />\r\n\r\nSDT 01234567890', 'Máy đánh bột', '', 'publish', 'open', 'closed', '', 'may-danh-bot', '', '', '2021-01-11 21:00:51', '2021-01-11 14:00:51', '', 0, 'http://localhost/shop-cms-wordpress/?post_type=product&#038;p=178', 0, 'product', '', 0),
(179, 1, '2021-01-11 20:59:53', '2021-01-11 13:59:53', '', 'may-danh-bot', '', 'inherit', 'open', 'closed', '', 'may-danh-bot', '', '', '2021-01-11 20:59:53', '2021-01-11 13:59:53', '', 178, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/may-danh-bot.png', 0, 'attachment', 'image/png', 0),
(180, 1, '2021-01-11 21:00:55', '2021-01-11 14:00:55', 'Máy đánh bột được kiểm định đảm bảo vệ sinh an toàn thực phẩm\n\n<img class=\"alignnone size-medium wp-image-179\" src=\"http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/may-danh-bot-300x300.png\" alt=\"\" width=\"300\" height=\"300\" />\n\nSDT 01234567890', 'Máy đánh bột', '', 'inherit', 'closed', 'closed', '', '178-autosave-v1', '', '', '2021-01-11 21:00:55', '2021-01-11 14:00:55', '', 178, 'http://localhost/shop-cms-wordpress/178-autosave-v1/', 0, 'revision', '', 0),
(181, 1, '2021-01-11 21:03:02', '2021-01-11 14:03:02', 'Sản phẩm được kiểm định an toàn thực phẩm không gây độc hại trong quá trình nướng bánh\r\n\r\n<img class=\"alignnone size-medium wp-image-182\" src=\"http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/may-lam-banh-300x235.jpg\" alt=\"\" width=\"300\" height=\"235\" />\r\n\r\nSDT 01234567890', 'Máy làm bánh kẹp', '', 'publish', 'open', 'closed', '', 'may-lam-banh-kep', '', '', '2021-01-11 21:03:02', '2021-01-11 14:03:02', '', 0, 'http://localhost/shop-cms-wordpress/?post_type=product&#038;p=181', 0, 'product', '', 0),
(182, 1, '2021-01-11 21:01:51', '2021-01-11 14:01:51', '', 'may-lam-banh', '', 'inherit', 'open', 'closed', '', 'may-lam-banh', '', '', '2021-01-11 21:01:51', '2021-01-11 14:01:51', '', 181, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/may-lam-banh.jpg', 0, 'attachment', 'image/jpeg', 0),
(183, 1, '2021-01-11 21:10:36', '2021-01-11 14:10:36', 'Sản phẩm được kiểm định an toàn sử dụng\r\n\r\n<img class=\"alignnone size-medium wp-image-184\" src=\"http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/lo-nuong-banh-01-300x171.jpg\" alt=\"\" width=\"300\" height=\"171\" />\r\n\r\nSDT 01234567890', 'Lò nướng bánh', '', 'publish', 'open', 'closed', '', 'lo-nuong-banh', '', '', '2021-01-11 21:10:37', '2021-01-11 14:10:37', '', 0, 'http://localhost/shop-cms-wordpress/?post_type=product&#038;p=183', 0, 'product', '', 0),
(184, 1, '2021-01-11 21:09:41', '2021-01-11 14:09:41', '', 'lo-nuong-banh-01', '', 'inherit', 'open', 'closed', '', 'lo-nuong-banh-01', '', '', '2021-01-11 21:09:41', '2021-01-11 14:09:41', '', 183, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/lo-nuong-banh-01.jpg', 0, 'attachment', 'image/jpeg', 0),
(185, 1, '2021-01-11 21:12:18', '2021-01-11 14:12:18', 'Máy được đảm bảo chất lượng cũng như khả năng chính xác khi cân\r\n\r\n<img class=\"alignnone size-medium wp-image-186\" src=\"http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/can-dien-tu-300x300.jpg\" alt=\"\" width=\"300\" height=\"300\" />\r\n\r\nSDT 01234567890', 'Cân điện tử', '', 'publish', 'open', 'closed', '', 'can-dien-tu', '', '', '2021-01-11 21:12:18', '2021-01-11 14:12:18', '', 0, 'http://localhost/shop-cms-wordpress/?post_type=product&#038;p=185', 0, 'product', '', 0),
(186, 1, '2021-01-11 21:11:00', '2021-01-11 14:11:00', '', 'can-dien-tu', '', 'inherit', 'open', 'closed', '', 'can-dien-tu', '', '', '2021-01-11 21:11:00', '2021-01-11 14:11:00', '', 185, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/can-dien-tu.jpg', 0, 'attachment', 'image/jpeg', 0),
(187, 1, '2021-01-12 06:26:48', '2021-01-11 23:26:48', '', 'Trái Cây <i class=\"fa fa-angle-down\"></i>', '', 'publish', 'closed', 'closed', '', 'trai-cay', '', '', '2021-01-12 06:28:02', '2021-01-11 23:28:02', '', 0, 'http://localhost/shop-cms-wordpress/?p=187', 6, 'nav_menu_item', '', 0),
(188, 1, '2021-01-12 06:26:48', '2021-01-11 23:26:48', ' ', '', '', 'publish', 'closed', 'closed', '', '188', '', '', '2021-01-12 06:28:02', '2021-01-11 23:28:02', '', 60, 'http://localhost/shop-cms-wordpress/?p=188', 7, 'nav_menu_item', '', 0),
(189, 1, '2021-01-12 06:26:48', '2021-01-11 23:26:48', ' ', '', '', 'publish', 'closed', 'closed', '', '189', '', '', '2021-01-12 06:28:02', '2021-01-11 23:28:02', '', 60, 'http://localhost/shop-cms-wordpress/?p=189', 8, 'nav_menu_item', '', 0),
(190, 1, '2021-01-12 06:26:48', '2021-01-11 23:26:48', ' ', '', '', 'publish', 'closed', 'closed', '', '190', '', '', '2021-01-12 06:28:02', '2021-01-11 23:28:02', '', 55, 'http://localhost/shop-cms-wordpress/?p=190', 5, 'nav_menu_item', '', 0),
(191, 1, '2021-01-12 06:26:48', '2021-01-11 23:26:48', ' ', '', '', 'publish', 'closed', 'closed', '', '191', '', '', '2021-01-12 06:28:02', '2021-01-11 23:28:02', '', 0, 'http://localhost/shop-cms-wordpress/?p=191', 9, 'nav_menu_item', '', 0);
INSERT INTO `hk5_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(192, 1, '2021-01-12 07:32:15', '2021-01-12 00:32:15', '<!-- wp:html -->\n<div class=\"product-laptop\">\n<div class=\"container\">\n<div class=\"product-title\">\n<h2>Danh mục làm bánh</h2>\n</div>\n[products limit=\"10\" columns=\"4\" orderby=\"date\" order=\"DESC\" visibility=\"visible\" category=\"Danh mục làm bánh\"]</div>\n</div>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '88-autosave-v1', '', '', '2021-01-12 07:32:15', '2021-01-12 00:32:15', '', 88, 'http://localhost/shop-cms-wordpress/88-autosave-v1/', 0, 'revision', '', 0),
(193, 1, '2021-01-12 18:12:07', '2021-01-12 11:12:07', 'Bánh được làm với nguyên liệu tự nhiên an toàn thực phẩm đã được kiểm định\r\n\r\n<img class=\"size-medium wp-image-194 aligncenter\" src=\"http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/banhsinhnhat2-300x300.jpg\" alt=\"\" width=\"300\" height=\"300\" />\r\n\r\nSDT 01234567890', 'Bánh sinh nhật loại 2', '', 'publish', 'open', 'closed', '', '193', '', '', '2021-01-12 18:12:22', '2021-01-12 11:12:22', '', 0, 'http://localhost/shop-cms-wordpress/?post_type=product&#038;p=193', 0, 'product', '', 0),
(194, 1, '2021-01-12 18:11:17', '2021-01-12 11:11:17', '', 'banhsinhnhat2', '', 'inherit', 'open', 'closed', '', 'banhsinhnhat2', '', '', '2021-01-12 18:11:17', '2021-01-12 11:11:17', '', 193, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/banhsinhnhat2.jpg', 0, 'attachment', 'image/jpeg', 0),
(195, 1, '2021-01-12 18:13:08', '2021-01-12 11:13:08', 'Bánh được làm với nguyên liệu tự nhiên an toàn thực phẩm đã được kiểm định\r\n\r\n<img class=\"size-medium wp-image-196 aligncenter\" src=\"http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/banhsinhnhat3-228x300.jpg\" alt=\"\" width=\"228\" height=\"300\" />\r\n\r\nSDT 01234567890', 'Bánh sinh nhật loại 3', '', 'publish', 'open', 'closed', '', 'banh-sinh-nhat-loai-3', '', '', '2021-01-12 18:13:14', '2021-01-12 11:13:14', '', 0, 'http://localhost/shop-cms-wordpress/?post_type=product&#038;p=195', 0, 'product', '', 0),
(196, 1, '2021-01-12 18:12:39', '2021-01-12 11:12:39', '', 'banhsinhnhat3', '', 'inherit', 'open', 'closed', '', 'banhsinhnhat3', '', '', '2021-01-12 18:12:39', '2021-01-12 11:12:39', '', 195, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/banhsinhnhat3.jpg', 0, 'attachment', 'image/jpeg', 0),
(197, 1, '2021-01-12 18:14:15', '2021-01-12 11:14:15', 'Bánh được làm với nguyên liệu tự nhiên an toàn thực phẩm đã được kiểm định\r\n\r\n<img class=\"size-medium wp-image-198 aligncenter\" src=\"http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/banhsinhnhat4-225x300.jpg\" alt=\"\" width=\"225\" height=\"300\" />\r\n\r\nSDT 01234567890', 'Bánh sinh nhật loại 4', '', 'publish', 'open', 'closed', '', 'banh-sinh-nhat-loai-4', '', '', '2021-01-12 18:14:16', '2021-01-12 11:14:16', '', 0, 'http://localhost/shop-cms-wordpress/?post_type=product&#038;p=197', 0, 'product', '', 0),
(198, 1, '2021-01-12 18:13:32', '2021-01-12 11:13:32', '', 'banhsinhnhat4', '', 'inherit', 'open', 'closed', '', 'banhsinhnhat4', '', '', '2021-01-12 18:13:32', '2021-01-12 11:13:32', '', 197, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/banhsinhnhat4.jpg', 0, 'attachment', 'image/jpeg', 0),
(199, 1, '2021-01-12 18:15:38', '2021-01-12 11:15:38', 'Bánh được làm với nguyên liệu tự nhiên an toàn thực phẩm đã được kiểm định\r\n\r\n<img class=\"size-medium wp-image-200 aligncenter\" src=\"http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/banhsinhnhat5-300x223.jpg\" alt=\"\" width=\"300\" height=\"223\" />\r\n\r\nSDT 01234567890', 'Bánh sinh nhật loại 5', '', 'publish', 'open', 'closed', '', 'banh-sinh-nhat-loai-5', '', '', '2021-01-12 18:15:38', '2021-01-12 11:15:38', '', 0, 'http://localhost/shop-cms-wordpress/?post_type=product&#038;p=199', 0, 'product', '', 0),
(200, 1, '2021-01-12 18:15:05', '2021-01-12 11:15:05', '', 'banhsinhnhat5', '', 'inherit', 'open', 'closed', '', 'banhsinhnhat5', '', '', '2021-01-12 18:15:05', '2021-01-12 11:15:05', '', 199, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/banhsinhnhat5.jpg', 0, 'attachment', 'image/jpeg', 0),
(201, 1, '2021-01-12 18:16:33', '2021-01-12 11:16:33', 'Bánh được làm với nguyên liệu tự nhiên an toàn thực phẩm đã được kiểm định\r\n\r\n<img class=\"size-medium wp-image-202 aligncenter\" src=\"http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/banhsinhnhat6-300x289.jpg\" alt=\"\" width=\"300\" height=\"289\" />\r\n\r\nSDT 01234567890', 'Bánh sinh nhật loại 6', '', 'publish', 'open', 'closed', '', 'banh-sinh-nhat-loai-6', '', '', '2021-01-12 18:16:33', '2021-01-12 11:16:33', '', 0, 'http://localhost/shop-cms-wordpress/?post_type=product&#038;p=201', 0, 'product', '', 0),
(202, 1, '2021-01-12 18:15:58', '2021-01-12 11:15:58', '', 'banhsinhnhat6', '', 'inherit', 'open', 'closed', '', 'banhsinhnhat6', '', '', '2021-01-12 18:15:58', '2021-01-12 11:15:58', '', 201, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/banhsinhnhat6.jpg', 0, 'attachment', 'image/jpeg', 0),
(203, 1, '2021-01-12 18:17:40', '2021-01-12 11:17:40', 'Bánh được làm với nguyên liệu tự nhiên an toàn thực phẩm đã được kiểm định\r\n\r\n<img class=\"size-medium wp-image-204 aligncenter\" src=\"http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/banhsinhnhat7-300x300.jpg\" alt=\"\" width=\"300\" height=\"300\" />\r\n\r\nSDT 01234567890', 'Bánh sinh nhật loại 7', '', 'publish', 'open', 'closed', '', 'banh-sinh-nhat-loai-7', '', '', '2021-01-12 18:17:40', '2021-01-12 11:17:40', '', 0, 'http://localhost/shop-cms-wordpress/?post_type=product&#038;p=203', 0, 'product', '', 0),
(204, 1, '2021-01-12 18:17:10', '2021-01-12 11:17:10', '', 'banhsinhnhat7', '', 'inherit', 'open', 'closed', '', 'banhsinhnhat7', '', '', '2021-01-12 18:17:10', '2021-01-12 11:17:10', '', 203, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/banhsinhnhat7.jpg', 0, 'attachment', 'image/jpeg', 0),
(205, 1, '2021-01-12 18:20:27', '2021-01-12 11:20:27', 'Bánh được làm với nguyên liệu tự nhiên an toàn thực phẩm đã được kiểm định\r\n\r\n<img class=\"size-medium wp-image-206 aligncenter\" src=\"http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/banh-ngot-4-300x201.jpg\" alt=\"\" width=\"300\" height=\"201\" />\r\n\r\nSDT 01234567890', 'Bánh ngọt loại 4', '', 'publish', 'open', 'closed', '', 'banh-ngot-loai-4', '', '', '2021-01-12 18:20:27', '2021-01-12 11:20:27', '', 0, 'http://localhost/shop-cms-wordpress/?post_type=product&#038;p=205', 0, 'product', '', 0),
(206, 1, '2021-01-12 18:20:04', '2021-01-12 11:20:04', '', 'banh-ngot-4', '', 'inherit', 'open', 'closed', '', 'banh-ngot-4', '', '', '2021-01-12 18:20:04', '2021-01-12 11:20:04', '', 205, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/banh-ngot-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(207, 1, '2021-01-12 18:21:17', '2021-01-12 11:21:17', 'Bánh được làm với nguyên liệu tự nhiên an toàn thực phẩm đã được kiểm định\r\n\r\n<img class=\"size-medium wp-image-208 aligncenter\" src=\"http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/banhngot5-300x225.jpg\" alt=\"\" width=\"300\" height=\"225\" />\r\n\r\nSDT 01234567890', 'Bánh ngọt loại 5', '', 'publish', 'open', 'closed', '', 'banh-ngot-loai-5', '', '', '2021-01-12 18:21:17', '2021-01-12 11:21:17', '', 0, 'http://localhost/shop-cms-wordpress/?post_type=product&#038;p=207', 0, 'product', '', 0),
(208, 1, '2021-01-12 18:20:47', '2021-01-12 11:20:47', '', 'banhngot5', '', 'inherit', 'open', 'closed', '', 'banhngot5', '', '', '2021-01-12 18:20:47', '2021-01-12 11:20:47', '', 207, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/banhngot5.jpg', 0, 'attachment', 'image/jpeg', 0),
(209, 1, '2021-01-12 18:22:02', '2021-01-12 11:22:02', 'Bánh được làm với nguyên liệu tự nhiên an toàn thực phẩm đã được kiểm định\r\n\r\n<img class=\"size-medium wp-image-210 aligncenter\" src=\"http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/banhngot6-300x225.jpg\" alt=\"\" width=\"300\" height=\"225\" />\r\n\r\nSDT 01234567890', 'Bánh ngọt loại 6', '', 'publish', 'open', 'closed', '', 'banh-ngot-loai-6', '', '', '2021-01-12 18:22:02', '2021-01-12 11:22:02', '', 0, 'http://localhost/shop-cms-wordpress/?post_type=product&#038;p=209', 0, 'product', '', 0),
(210, 1, '2021-01-12 18:21:39', '2021-01-12 11:21:39', '', 'banhngot6', '', 'inherit', 'open', 'closed', '', 'banhngot6', '', '', '2021-01-12 18:21:39', '2021-01-12 11:21:39', '', 209, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/banhngot6.jpg', 0, 'attachment', 'image/jpeg', 0),
(211, 1, '2021-01-12 18:23:04', '2021-01-12 11:23:04', 'Bánh được làm với nguyên liệu tự nhiên an toàn thực phẩm đã được kiểm định\r\n\r\n<img class=\"size-medium wp-image-212 aligncenter\" src=\"http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/banh-ngot7-300x198.jpg\" alt=\"\" width=\"300\" height=\"198\" />\r\n\r\nSDT 01234567890', 'Bánh ngọt loại 7', '', 'publish', 'open', 'closed', '', 'banh-ngot-loai-7', '', '', '2021-01-12 18:23:04', '2021-01-12 11:23:04', '', 0, 'http://localhost/shop-cms-wordpress/?post_type=product&#038;p=211', 0, 'product', '', 0),
(212, 1, '2021-01-12 18:22:28', '2021-01-12 11:22:28', '', 'banh-ngot7', '', 'inherit', 'open', 'closed', '', 'banh-ngot7', '', '', '2021-01-12 18:22:28', '2021-01-12 11:22:28', '', 211, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/banh-ngot7.jpg', 0, 'attachment', 'image/jpeg', 0),
(213, 1, '2021-01-12 18:23:44', '2021-01-12 11:23:44', 'Bánh được làm với nguyên liệu tự nhiên an toàn thực phẩm đã được kiểm định\r\n\r\n<img class=\"size-medium wp-image-214 aligncenter\" src=\"http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/banhngot8-250x300.png\" alt=\"\" width=\"250\" height=\"300\" />\r\n\r\nSDT 01234567890', 'Bánh ngọt loại 8', '', 'publish', 'open', 'closed', '', 'banh-ngot-loai-8', '', '', '2021-01-12 18:23:45', '2021-01-12 11:23:45', '', 0, 'http://localhost/shop-cms-wordpress/?post_type=product&#038;p=213', 0, 'product', '', 0),
(214, 1, '2021-01-12 18:23:20', '2021-01-12 11:23:20', '', 'banhngot8', '', 'inherit', 'open', 'closed', '', 'banhngot8', '', '', '2021-01-12 18:23:20', '2021-01-12 11:23:20', '', 213, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/banhngot8.png', 0, 'attachment', 'image/png', 0),
(215, 1, '2021-01-12 18:26:24', '2021-01-12 11:26:24', 'Sản phẩm được kiểm định vệ sinh an toàn thực phẩm\r\n\r\n<img class=\"size-medium wp-image-216 aligncenter\" src=\"http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/khuonlambanh2-300x300.jpg\" alt=\"\" width=\"300\" height=\"300\" />\r\n\r\nSDT 01234567890', 'Khuôn làm bánh loại 2', '', 'publish', 'open', 'closed', '', 'khuon-lam-banh-loai-2', '', '', '2021-01-12 18:27:36', '2021-01-12 11:27:36', '', 0, 'http://localhost/shop-cms-wordpress/?post_type=product&#038;p=215', 0, 'product', '', 0),
(216, 1, '2021-01-12 18:25:56', '2021-01-12 11:25:56', '', 'khuonlambanh2', '', 'inherit', 'open', 'closed', '', 'khuonlambanh2', '', '', '2021-01-12 18:25:56', '2021-01-12 11:25:56', '', 215, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/khuonlambanh2.jpg', 0, 'attachment', 'image/jpeg', 0),
(217, 1, '2021-01-12 18:27:12', '2021-01-12 11:27:12', 'Sản phẩm được kiểm định vệ sinh an toàn thực phẩm\r\n\r\n<img class=\"size-medium wp-image-218 aligncenter\" src=\"http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/khuonlambanh3-300x148.jpg\" alt=\"\" width=\"300\" height=\"148\" />\r\n\r\nSDT 01234567890', 'Khuôn làm bánh loại 3', '', 'publish', 'open', 'closed', '', 'khuon-lam-banh-loai-3', '', '', '2021-01-12 18:27:13', '2021-01-12 11:27:13', '', 0, 'http://localhost/shop-cms-wordpress/?post_type=product&#038;p=217', 0, 'product', '', 0),
(218, 1, '2021-01-12 18:26:43', '2021-01-12 11:26:43', '', 'khuonlambanh3', '', 'inherit', 'open', 'closed', '', 'khuonlambanh3', '', '', '2021-01-12 18:26:43', '2021-01-12 11:26:43', '', 217, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/khuonlambanh3.jpg', 0, 'attachment', 'image/jpeg', 0),
(219, 1, '2021-01-12 18:27:38', '2021-01-12 11:27:38', 'Sản phẩm được kiểm định vệ sinh an toàn thực phẩm\n\n<img class=\"size-medium wp-image-216 aligncenter\" src=\"http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/khuonlambanh2-300x300.jpg\" alt=\"\" width=\"300\" height=\"300\" />\n\nSDT 01234567890', 'Khuôn làm bánh loại 2', '', 'inherit', 'closed', 'closed', '', '215-autosave-v1', '', '', '2021-01-12 18:27:38', '2021-01-12 11:27:38', '', 215, 'http://localhost/shop-cms-wordpress/215-autosave-v1/', 0, 'revision', '', 0),
(220, 1, '2021-01-12 18:30:38', '2021-01-12 11:30:38', 'Bánh được làm với nguyên liệu tự nhiên an toàn thực phẩm đã được kiểm định\r\n\r\n<img class=\"size-medium wp-image-221\" src=\"http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/banhngot9-300x225.jpg\" alt=\"\" width=\"300\" height=\"225\" />\r\n\r\nSDT 01234567890\r\n\r\n&nbsp;', 'Bánh ngọt loại 9', '', 'publish', 'open', 'closed', '', 'banh-ngot-loai-9', '', '', '2021-01-12 18:30:38', '2021-01-12 11:30:38', '', 0, 'http://localhost/shop-cms-wordpress/?post_type=product&#038;p=220', 0, 'product', '', 0),
(221, 1, '2021-01-12 18:29:41', '2021-01-12 11:29:41', '', 'FNM030111_130', 'Food stylist: Anne Disrude\nProp Stylist: Marina Malchin', 'inherit', 'open', 'closed', '', 'fnm030111_130', '', '', '2021-01-12 18:29:43', '2021-01-12 11:29:43', '', 220, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/banhngot9.jpg', 0, 'attachment', 'image/jpeg', 0),
(222, 1, '2021-01-12 18:31:20', '2021-01-12 11:31:20', 'Bánh được làm với nguyên liệu tự nhiên an toàn thực phẩm đã được kiểm định\r\n\r\n<img class=\"size-medium wp-image-223 aligncenter\" src=\"http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/banhngot10-300x300.jpg\" alt=\"\" width=\"300\" height=\"300\" />\r\n\r\nSDT 01234567890', 'Bánh ngọt loại 10', '', 'publish', 'open', 'closed', '', 'banh-ngot-loai-10', '', '', '2021-01-12 18:31:28', '2021-01-12 11:31:28', '', 0, 'http://localhost/shop-cms-wordpress/?post_type=product&#038;p=222', 0, 'product', '', 0),
(223, 1, '2021-01-12 18:30:58', '2021-01-12 11:30:58', '', 'banhngot10', '', 'inherit', 'open', 'closed', '', 'banhngot10', '', '', '2021-01-12 18:30:58', '2021-01-12 11:30:58', '', 222, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/banhngot10.jpg', 0, 'attachment', 'image/jpeg', 0),
(224, 1, '2021-01-13 10:33:20', '2021-01-13 03:33:20', 'Bánh kem được làm từ những nguyên liệu vệ sinh an toàn thực phẩm cũng như đã được kiểm định\r\n\r\n<img class=\"size-medium wp-image-225 aligncenter\" src=\"http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/banhkem3-300x200.jpg\" alt=\"\" width=\"300\" height=\"200\" />\r\n\r\nSDT 01234567890', 'Bánh kem cơ bản loại 3', '', 'publish', 'open', 'closed', '', 'banh-kem-co-ban-loai-3', '', '', '2021-01-13 10:33:20', '2021-01-13 03:33:20', '', 0, 'http://localhost/shop-cms-wordpress/?post_type=product&#038;p=224', 0, 'product', '', 0),
(225, 1, '2021-01-13 10:31:32', '2021-01-13 03:31:32', '', 'banhkem3', '', 'inherit', 'open', 'closed', '', 'banhkem3', '', '', '2021-01-13 10:31:32', '2021-01-13 03:31:32', '', 224, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/banhkem3.jpg', 0, 'attachment', 'image/jpeg', 0),
(226, 1, '2021-01-13 10:34:00', '2021-01-13 03:34:00', 'Bánh kem được làm từ những nguyên liệu vệ sinh an toàn thực phẩm cũng như đã được kiểm định\r\n\r\n<img class=\"size-medium wp-image-227 aligncenter\" src=\"http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/banhkem4-300x300.jpg\" alt=\"\" width=\"300\" height=\"300\" />\r\n\r\nSDT 01234567890', 'Bánh kem cơ bản loại 4', '', 'publish', 'open', 'closed', '', 'banh-kem-loai-4', '', '', '2021-01-13 10:35:26', '2021-01-13 03:35:26', '', 0, 'http://localhost/shop-cms-wordpress/?post_type=product&#038;p=226', 0, 'product', '', 0),
(227, 1, '2021-01-13 10:33:40', '2021-01-13 03:33:40', '', 'banhkem4', '', 'inherit', 'open', 'closed', '', 'banhkem4', '', '', '2021-01-13 10:33:40', '2021-01-13 03:33:40', '', 226, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/banhkem4.jpg', 0, 'attachment', 'image/jpeg', 0),
(228, 1, '2021-01-13 10:35:07', '2021-01-13 03:35:07', 'Bánh kem được làm từ những nguyên liệu vệ sinh an toàn thực phẩm cũng như đã được kiểm định\r\n\r\n<img class=\"size-medium wp-image-229 aligncenter\" src=\"http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/banhkem5-300x200.jpg\" alt=\"\" width=\"300\" height=\"200\" />\r\n\r\nSDT 01234567890', 'Bánh kem cơ bản loại 5', '', 'publish', 'open', 'closed', '', 'banh-kem-loai-5', '', '', '2021-01-13 10:35:30', '2021-01-13 03:35:30', '', 0, 'http://localhost/shop-cms-wordpress/?post_type=product&#038;p=228', 0, 'product', '', 0),
(229, 1, '2021-01-13 10:34:37', '2021-01-13 03:34:37', '', 'banhkem5', '', 'inherit', 'open', 'closed', '', 'banhkem5', '', '', '2021-01-13 10:34:37', '2021-01-13 03:34:37', '', 228, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/banhkem5.jpg', 0, 'attachment', 'image/jpeg', 0),
(230, 1, '2021-01-13 10:36:10', '2021-01-13 03:36:10', 'Bánh kem được làm từ những nguyên liệu vệ sinh an toàn thực phẩm cũng như đã được kiểm định\r\n\r\n<img class=\"size-medium wp-image-232 aligncenter\" src=\"http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/banhkem6-300x172.jpg\" alt=\"\" width=\"300\" height=\"172\" />\r\n\r\nSDT 01234567890', 'Bánh kem cơ bản loại 6', '', 'publish', 'open', 'closed', '', 'banh-kem-co-ban-loai-6', '', '', '2021-01-13 10:36:10', '2021-01-13 03:36:10', '', 0, 'http://localhost/shop-cms-wordpress/?post_type=product&#038;p=230', 0, 'product', '', 0),
(231, 1, '2021-01-13 10:35:22', '2021-01-13 03:35:22', 'Bánh kem được làm từ những nguyên liệu vệ sinh an toàn thực phẩm cũng như đã được kiểm định\n\n<img class=\"size-medium wp-image-227 aligncenter\" src=\"http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/banhkem4-300x300.jpg\" alt=\"\" width=\"300\" height=\"300\" />\n\nSDT 01234567890', 'Bánh kem loại 4', '', 'inherit', 'closed', 'closed', '', '226-autosave-v1', '', '', '2021-01-13 10:35:22', '2021-01-13 03:35:22', '', 226, 'http://localhost/shop-cms-wordpress/226-autosave-v1/', 0, 'revision', '', 0),
(232, 1, '2021-01-13 10:35:40', '2021-01-13 03:35:40', '', 'banhkem6', '', 'inherit', 'open', 'closed', '', 'banhkem6', '', '', '2021-01-13 10:35:40', '2021-01-13 03:35:40', '', 230, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/banhkem6.jpg', 0, 'attachment', 'image/jpeg', 0),
(233, 1, '2021-01-13 10:36:54', '2021-01-13 03:36:54', 'Bánh kem được làm từ những nguyên liệu vệ sinh an toàn thực phẩm cũng như đã được kiểm định\r\n\r\n<img class=\"size-medium wp-image-234 aligncenter\" src=\"http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/banhkem7-300x200.jpg\" alt=\"\" width=\"300\" height=\"200\" />\r\n\r\nSDT 01234567890', 'Bánh kem cơ bản loại 7', '', 'publish', 'open', 'closed', '', 'banh-kem-co-ban-loai-7', '', '', '2021-01-13 10:36:54', '2021-01-13 03:36:54', '', 0, 'http://localhost/shop-cms-wordpress/?post_type=product&#038;p=233', 0, 'product', '', 0),
(234, 1, '2021-01-13 10:36:28', '2021-01-13 03:36:28', '', 'banhkem7', '', 'inherit', 'open', 'closed', '', 'banhkem7', '', '', '2021-01-13 10:36:28', '2021-01-13 03:36:28', '', 233, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2021/01/banhkem7.jpg', 0, 'attachment', 'image/jpeg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `hk5_termmeta`
--

DROP TABLE IF EXISTS `hk5_termmeta`;
CREATE TABLE IF NOT EXISTS `hk5_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hk5_termmeta`
--

INSERT INTO `hk5_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 35, 'product_count_product_cat', '0'),
(58, 56, 'display_type', ''),
(57, 56, 'order', '0'),
(5, 38, 'order', '0'),
(6, 38, 'display_type', ''),
(7, 38, 'thumbnail_id', '94'),
(14, 41, 'order', '0'),
(15, 41, 'display_type', ''),
(16, 41, 'thumbnail_id', '0'),
(56, 55, 'thumbnail_id', '0'),
(55, 55, 'display_type', ''),
(54, 55, 'order', '0'),
(50, 53, 'product_count_product_tag', '8'),
(51, 54, 'product_count_product_tag', '3'),
(52, 38, 'product_count_product_cat', '8'),
(53, 41, 'product_count_product_cat', '3'),
(59, 56, 'thumbnail_id', '0'),
(60, 57, 'product_count_product_tag', '17'),
(61, 58, 'product_count_product_tag', '3'),
(62, 55, 'product_count_product_cat', '17'),
(63, 56, 'product_count_product_cat', '3'),
(64, 60, 'order', '0'),
(65, 60, 'display_type', ''),
(66, 60, 'thumbnail_id', '0'),
(67, 61, 'order', '0'),
(68, 61, 'display_type', ''),
(69, 61, 'thumbnail_id', '0'),
(70, 62, 'order', '0'),
(71, 62, 'display_type', ''),
(72, 62, 'thumbnail_id', '0'),
(73, 63, 'product_count_product_tag', '9'),
(74, 64, 'product_count_product_tag', '3'),
(75, 60, 'product_count_product_cat', '9'),
(76, 62, 'product_count_product_cat', '3'),
(77, 65, 'product_count_product_tag', '6'),
(78, 61, 'product_count_product_cat', '6'),
(79, 66, 'order', '0'),
(80, 66, 'display_type', ''),
(81, 66, 'thumbnail_id', '0'),
(82, 67, 'product_count_product_tag', '7'),
(83, 66, 'product_count_product_cat', '7'),
(84, 68, 'order', '0'),
(85, 68, 'display_type', ''),
(86, 68, 'thumbnail_id', '0'),
(87, 69, 'product_count_product_tag', '7'),
(88, 68, 'product_count_product_cat', '7'),
(89, 70, 'order', '0'),
(90, 70, 'display_type', ''),
(91, 70, 'thumbnail_id', '0'),
(92, 71, 'product_count_product_tag', '10'),
(93, 70, 'product_count_product_cat', '10'),
(94, 72, 'order', '0'),
(95, 72, 'display_type', ''),
(96, 72, 'thumbnail_id', '0'),
(97, 73, 'product_count_product_tag', '5'),
(98, 72, 'product_count_product_cat', '5');

-- --------------------------------------------------------

--
-- Table structure for table `hk5_terms`
--

DROP TABLE IF EXISTS `hk5_terms`;
CREATE TABLE IF NOT EXISTS `hk5_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hk5_terms`
--

INSERT INTO `hk5_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(4, 'Header menu blog', 'header-menu-blog', 0),
(5, 'Danh mục làm bánh', 'danh-muc-lam-banh', 0),
(8, 'Khay khuôn làm bánh', 'khay-khuon-lam-banh', 0),
(57, 'Bánh kem', 'banh-kem', 0),
(21, 'Làm Bánh', 'lam-banh', 0),
(22, 'simple', 'simple', 0),
(35, 'Uncategorized', 'uncategorized', 0),
(56, 'Bánh kem bơ trong', 'banh-kem-bo-trong', 0),
(37, 'Header menu shop', 'header-menu-shop', 0),
(38, 'Danh mục làm bánh', 'danh-muc-lam-banh', 0),
(41, 'Khay khuôn làm bánh', 'khay-khuon-lam-banh', 0),
(55, 'Bánh Kem', 'banh-kem', 0),
(53, 'Danh mục làm bánh', 'danh-muc-lam-banh', 0),
(54, 'Khay khuôn làm bánh', 'khay-khuon-lam-banh', 0),
(58, 'Bánh kem bơ trong', 'banh-kem-bo-trong', 0),
(59, 'Ship code', 'ship-code', 0),
(60, 'Trái Cây', 'trai-cay', 0),
(61, 'Trái cây tươi', 'trai-cay-tuoi', 0),
(62, 'Trái cây sấy khô', 'trai-cay-say-kho', 0),
(63, 'Trái Cây', 'trai-cay', 0),
(64, 'Trái cây sấy khô', 'trai-cay-say-kho', 0),
(65, 'Trái Cây Tươi', 'trai-cay-tuoi', 0),
(66, 'Bánh sinh nhật', 'banh-sinh-nhat', 0),
(67, 'Bánh sinh nhật', 'banh-sinh-nhat', 0),
(68, 'Bánh kem cơ bản', 'banh-kem-co-ban', 0),
(69, 'Bánh kem cơ bản', 'banh-kem-co-ban', 0),
(70, 'Bánh Ngọt', 'banh-ngot', 0),
(71, 'Bánh ngọt', 'banh-ngot', 0),
(72, 'Máy làm bánh', 'may-lam-banh', 0),
(73, 'Máy làm bánh', 'may-lam-banh', 0);

-- --------------------------------------------------------

--
-- Table structure for table `hk5_term_relationships`
--

DROP TABLE IF EXISTS `hk5_term_relationships`;
CREATE TABLE IF NOT EXISTS `hk5_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hk5_term_relationships`
--

INSERT INTO `hk5_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(127, 56, 0),
(38, 4, 0),
(41, 4, 0),
(127, 55, 0),
(70, 21, 0),
(70, 8, 0),
(70, 5, 0),
(86, 22, 0),
(127, 57, 0),
(127, 58, 0),
(105, 37, 0),
(108, 37, 0),
(86, 53, 0),
(86, 54, 0),
(86, 38, 0),
(86, 41, 0),
(127, 22, 0),
(130, 37, 0),
(131, 37, 0),
(86, 59, 0),
(133, 55, 0),
(133, 56, 0),
(133, 22, 0),
(133, 57, 0),
(133, 58, 0),
(135, 57, 0),
(135, 58, 0),
(135, 55, 0),
(135, 56, 0),
(135, 22, 0),
(137, 63, 0),
(137, 64, 0),
(137, 60, 0),
(137, 62, 0),
(137, 22, 0),
(139, 63, 0),
(139, 64, 0),
(139, 60, 0),
(139, 62, 0),
(139, 22, 0),
(142, 63, 0),
(142, 64, 0),
(142, 60, 0),
(142, 62, 0),
(142, 22, 0),
(144, 63, 0),
(144, 65, 0),
(144, 60, 0),
(144, 61, 0),
(144, 22, 0),
(147, 63, 0),
(147, 65, 0),
(147, 60, 0),
(147, 61, 0),
(147, 22, 0),
(150, 57, 0),
(150, 67, 0),
(150, 55, 0),
(150, 22, 0),
(150, 66, 0),
(154, 57, 0),
(154, 69, 0),
(154, 55, 0),
(154, 68, 0),
(154, 22, 0),
(155, 57, 0),
(155, 69, 0),
(155, 55, 0),
(155, 68, 0),
(155, 22, 0),
(157, 63, 0),
(157, 65, 0),
(157, 60, 0),
(157, 61, 0),
(157, 22, 0),
(152, 57, 0),
(152, 69, 0),
(152, 55, 0),
(152, 68, 0),
(152, 22, 0),
(160, 63, 0),
(160, 65, 0),
(160, 60, 0),
(160, 61, 0),
(160, 22, 0),
(162, 71, 0),
(162, 70, 0),
(162, 22, 0),
(164, 71, 0),
(164, 70, 0),
(164, 22, 0),
(166, 71, 0),
(166, 70, 0),
(166, 22, 0),
(168, 63, 0),
(168, 65, 0),
(168, 60, 0),
(168, 61, 0),
(168, 22, 0),
(172, 63, 0),
(172, 65, 0),
(172, 60, 0),
(172, 61, 0),
(172, 22, 0),
(175, 53, 0),
(175, 73, 0),
(175, 38, 0),
(175, 22, 0),
(175, 72, 0),
(178, 53, 0),
(178, 73, 0),
(178, 38, 0),
(178, 72, 0),
(178, 22, 0),
(181, 53, 0),
(181, 73, 0),
(181, 38, 0),
(181, 72, 0),
(181, 22, 0),
(183, 53, 0),
(183, 73, 0),
(183, 38, 0),
(183, 72, 0),
(183, 22, 0),
(185, 73, 0),
(185, 53, 0),
(185, 38, 0),
(185, 72, 0),
(185, 22, 0),
(190, 37, 0),
(187, 37, 0),
(188, 37, 0),
(189, 37, 0),
(191, 37, 0),
(193, 57, 0),
(193, 67, 0),
(193, 55, 0),
(193, 66, 0),
(193, 22, 0),
(195, 57, 0),
(195, 67, 0),
(195, 55, 0),
(195, 66, 0),
(195, 22, 0),
(197, 57, 0),
(197, 67, 0),
(197, 55, 0),
(197, 66, 0),
(197, 22, 0),
(199, 57, 0),
(199, 67, 0),
(199, 55, 0),
(199, 66, 0),
(199, 22, 0),
(201, 57, 0),
(201, 67, 0),
(201, 55, 0),
(201, 66, 0),
(201, 22, 0),
(203, 57, 0),
(203, 67, 0),
(203, 55, 0),
(203, 66, 0),
(203, 22, 0),
(205, 71, 0),
(205, 70, 0),
(205, 22, 0),
(207, 71, 0),
(207, 70, 0),
(207, 22, 0),
(211, 71, 0),
(209, 22, 0),
(209, 71, 0),
(209, 70, 0),
(211, 70, 0),
(211, 22, 0),
(213, 71, 0),
(213, 70, 0),
(213, 22, 0),
(220, 71, 0),
(215, 54, 0),
(215, 38, 0),
(215, 41, 0),
(215, 22, 0),
(217, 54, 0),
(217, 53, 0),
(217, 38, 0),
(217, 41, 0),
(217, 22, 0),
(215, 53, 0),
(220, 70, 0),
(220, 22, 0),
(222, 71, 0),
(222, 70, 0),
(222, 22, 0),
(224, 57, 0),
(224, 69, 0),
(224, 55, 0),
(224, 68, 0),
(224, 22, 0),
(226, 55, 0),
(226, 68, 0),
(226, 22, 0),
(226, 57, 0),
(226, 69, 0),
(228, 69, 0),
(228, 57, 0),
(228, 55, 0),
(228, 68, 0),
(228, 22, 0),
(230, 69, 0),
(230, 57, 0),
(230, 55, 0),
(230, 68, 0),
(230, 22, 0),
(233, 57, 0),
(233, 69, 0),
(233, 55, 0),
(233, 68, 0),
(233, 22, 0);

-- --------------------------------------------------------

--
-- Table structure for table `hk5_term_taxonomy`
--

DROP TABLE IF EXISTS `hk5_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `hk5_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hk5_term_taxonomy`
--

INSERT INTO `hk5_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(4, 4, 'nav_menu', '', 0, 2),
(5, 5, 'category', '', 0, 1),
(8, 8, 'category', '', 5, 1),
(57, 57, 'product_tag', '', 0, 17),
(21, 21, 'post_tag', '', 0, 1),
(22, 22, 'product_type', '', 0, 44),
(35, 35, 'product_cat', '', 0, 0),
(56, 56, 'product_cat', '', 55, 3),
(37, 37, 'nav_menu', '', 0, 9),
(38, 38, 'product_cat', '', 0, 8),
(41, 41, 'product_cat', '', 38, 3),
(55, 55, 'product_cat', '', 0, 17),
(53, 53, 'product_tag', '', 0, 8),
(54, 54, 'product_tag', '', 0, 3),
(58, 58, 'product_tag', '', 0, 3),
(59, 59, 'product_shipping_class', '', 0, 1),
(60, 60, 'product_cat', '', 0, 9),
(61, 61, 'product_cat', '', 60, 6),
(62, 62, 'product_cat', '', 60, 3),
(63, 63, 'product_tag', '', 0, 9),
(64, 64, 'product_tag', '', 0, 3),
(65, 65, 'product_tag', '', 0, 6),
(66, 66, 'product_cat', '', 55, 7),
(67, 67, 'product_tag', '', 0, 7),
(68, 68, 'product_cat', '', 55, 7),
(69, 69, 'product_tag', '', 0, 7),
(70, 70, 'product_cat', '', 0, 10),
(71, 71, 'product_tag', '', 0, 10),
(72, 72, 'product_cat', '', 38, 5),
(73, 73, 'product_tag', '', 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `hk5_usermeta`
--

DROP TABLE IF EXISTS `hk5_usermeta`;
CREATE TABLE IF NOT EXISTS `hk5_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hk5_usermeta`
--

INSERT INTO `hk5_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', 'Tân'),
(3, 1, 'last_name', 'Hồng'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'hk5_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'hk5_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(20, 1, 'session_tokens', 'a:2:{s:64:\"f035cda77a75aad2e005a9991cd01173f7043066c2f4f7ac93cb88241e14fa5d\";a:4:{s:10:\"expiration\";i:1611568970;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36\";s:5:\"login\";i:1610359370;}s:64:\"b40576446ae18b2c9d2232544cb62ae68acdfe8e83c2f4b3b608387b9bfffa61\";a:4:{s:10:\"expiration\";i:1611626978;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36\";s:5:\"login\";i:1610417378;}}'),
(49, 1, '_order_count', '0'),
(17, 1, 'hk5_user-settings', 'libraryContent=browse&editor=tinymce&posts_list_mode=list&mfold=o&advImgDetails=show'),
(18, 1, 'hk5_user-settings-time', '1610373307'),
(19, 1, 'hk5_dashboard_quick_press_last_post_id', '126'),
(21, 1, 'community-events-location', 'a:4:{s:11:\"description\";s:11:\"Ho Chi Minh\";s:8:\"latitude\";s:10:\"10.8230200\";s:9:\"longitude\";s:11:\"106.6296500\";s:7:\"country\";s:2:\"VN\";}'),
(22, 1, 'nav_menu_recently_edited', '37'),
(23, 1, 'managenav-menuscolumnshidden', 'a:0:{}'),
(25, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(24, 1, 'metaboxhidden_nav-menus', 'a:0:{}'),
(26, 2, 'nickname', 'enasd'),
(27, 2, 'first_name', ''),
(28, 2, 'last_name', ''),
(29, 2, 'description', ''),
(30, 2, 'rich_editing', 'true'),
(31, 2, 'syntax_highlighting', 'true'),
(32, 2, 'comment_shortcuts', 'false'),
(33, 2, 'admin_color', 'fresh'),
(34, 2, 'use_ssl', '0'),
(35, 2, 'show_admin_bar_front', 'true'),
(36, 2, 'locale', ''),
(37, 2, 'hk5_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(38, 2, 'hk5_user_level', '0'),
(39, 2, 'default_password_nag', ''),
(40, 1, 'meta-box-order_dashboard', 'a:4:{s:6:\"normal\";s:41:\"dashboard_site_health,dashboard_right_now\";s:4:\"side\";s:21:\"dashboard_quick_press\";s:7:\"column3\";s:17:\"dashboard_primary\";s:7:\"column4\";s:18:\"dashboard_activity\";}'),
(41, 1, '_woocommerce_tracks_anon_id', 'woo:dP1EVPd+y5PkFYuSL71aWenz'),
(42, 1, 'last_update', '1610204963'),
(43, 1, 'woocommerce_admin_activity_panel_inbox_last_read', '1605941070875'),
(44, 1, 'wc_last_active', '1610496000'),
(46, 1, 'meta-box-order_product', 'a:3:{s:4:\"side\";s:84:\"tagsdiv-product_tag,submitdiv,product_catdiv,postimagediv,woocommerce-product-images\";s:6:\"normal\";s:55:\"woocommerce-product-data,postcustom,slugdiv,postexcerpt\";s:8:\"advanced\";s:0:\"\";}'),
(47, 1, 'screen_layout_product', '2'),
(48, 1, 'dismissed_no_secure_connection_notice', '1'),
(54, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:4:{s:32:\"8f85517967795eeef66c225f7883bdcb\";a:11:{s:3:\"key\";s:32:\"8f85517967795eeef66c225f7883bdcb\";s:10:\"product_id\";i:178;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:1350000;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:1350000;s:8:\"line_tax\";i:0;}s:32:\"cedebb6e872f539bef8c3f919874e9d7\";a:11:{s:3:\"key\";s:32:\"cedebb6e872f539bef8c3f919874e9d7\";s:10:\"product_id\";i:183;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:1900000;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:1900000;s:8:\"line_tax\";i:0;}s:32:\"eecca5b6365d9607ee5a9d336962c534\";a:11:{s:3:\"key\";s:32:\"eecca5b6365d9607ee5a9d336962c534\";s:10:\"product_id\";i:185;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:450000;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:450000;s:8:\"line_tax\";i:0;}s:32:\"9fc3d7152ba9336a670e36d0ed79bc43\";a:11:{s:3:\"key\";s:32:\"9fc3d7152ba9336a670e36d0ed79bc43\";s:10:\"product_id\";i:133;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:5;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:320000;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:320000;s:8:\"line_tax\";i:0;}}}'),
(56, 1, 'billing_first_name', ''),
(57, 1, 'billing_last_name', ''),
(58, 1, 'billing_company', ''),
(59, 1, 'billing_address_1', ''),
(60, 1, 'billing_address_2', ''),
(61, 1, 'billing_city', ''),
(62, 1, 'billing_postcode', ''),
(63, 1, 'billing_country', ''),
(64, 1, 'billing_state', ''),
(65, 1, 'billing_phone', ''),
(66, 1, 'billing_email', 'phuongtan12357nguyen@gmail.com'),
(67, 1, 'shipping_first_name', ''),
(68, 1, 'shipping_last_name', ''),
(69, 1, 'shipping_company', ''),
(70, 1, 'shipping_address_1', ''),
(71, 1, 'shipping_address_2', ''),
(72, 1, 'shipping_city', ''),
(73, 1, 'shipping_postcode', ''),
(74, 1, 'shipping_country', ''),
(75, 1, 'shipping_state', ''),
(79, 2, '_order_count', '0'),
(80, 2, 'billing_first_name', ''),
(81, 2, 'billing_last_name', ''),
(82, 2, 'billing_company', ''),
(83, 2, 'billing_address_1', ''),
(84, 2, 'billing_address_2', ''),
(85, 2, 'billing_city', ''),
(86, 2, 'billing_postcode', ''),
(87, 2, 'billing_country', ''),
(88, 2, 'billing_state', ''),
(89, 2, 'billing_phone', ''),
(90, 2, 'billing_email', 'phuongtan12357@gmail.com'),
(91, 2, 'shipping_first_name', ''),
(92, 2, 'shipping_last_name', ''),
(93, 2, 'shipping_company', ''),
(94, 2, 'shipping_address_1', ''),
(95, 2, 'shipping_address_2', ''),
(96, 2, 'shipping_city', ''),
(97, 2, 'shipping_postcode', ''),
(98, 2, 'shipping_country', ''),
(99, 2, 'shipping_state', ''),
(100, 2, 'last_update', '1610309605'),
(102, 2, 'wc_last_active', '1610236800'),
(108, 1, 'edit_product_per_page', '100');

-- --------------------------------------------------------

--
-- Table structure for table `hk5_users`
--

DROP TABLE IF EXISTS `hk5_users`;
CREATE TABLE IF NOT EXISTS `hk5_users` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hk5_users`
--

INSERT INTO `hk5_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BtPHUVhxrmLx3RmVgzn/MCR05NncWk0', 'admin', 'phuongtan12357nguyen@gmail.com', 'http://localhost/shop-cms-wordpress', '2020-11-12 13:31:11', '', 0, 'admin'),
(2, 'enasd', '$P$B9BfNiOth.gOcLWLSBDsdckBWP8A0Y1', 'enasd', 'phuongtan12357@gmail.com', '', '2020-11-15 07:24:02', '', 0, 'enasd');

-- --------------------------------------------------------

--
-- Table structure for table `hk5_wc_admin_notes`
--

DROP TABLE IF EXISTS `hk5_wc_admin_notes`;
CREATE TABLE IF NOT EXISTS `hk5_wc_admin_notes` (
  `note_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT 0,
  `layout` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `icon` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'info',
  PRIMARY KEY (`note_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hk5_wc_admin_notes`
--

INSERT INTO `hk5_wc_admin_notes` (`note_id`, `name`, `type`, `locale`, `title`, `content`, `content_data`, `status`, `source`, `date_created`, `date_reminder`, `is_snoozable`, `layout`, `image`, `is_deleted`, `icon`) VALUES
(1, 'wc-admin-onboarding-email-marketing', 'info', 'en_US', 'Tips, product updates, and inspiration', 'We\'re here for you - get tips, product updates and inspiration straight to your email box', '{}', 'actioned', 'woocommerce-admin', '2020-11-20 15:57:00', NULL, 0, 'plain', '', 0, 'info'),
(2, 'wc-admin-marketing-intro', 'info', 'en_US', 'Connect with your audience', 'Grow your customer base and increase your sales with marketing tools built for WooCommerce.', '{}', 'unactioned', 'woocommerce-admin', '2020-11-21 05:57:00', NULL, 0, 'plain', '', 0, 'info'),
(3, 'ecomm-need-help-setting-up-your-store', 'info', 'en_US', 'Need help setting up your Store?', 'Schedule a free 30-min <a href=\"https://wordpress.com/support/concierge-support/\">quick start session</a> and get help from our specialists. We’re happy to walk through setup steps, show you around the WordPress.com dashboard, troubleshoot any issues you may have, and help you the find the features you need to accomplish your goals for your site.', '{}', 'pending', 'woocommerce.com', '2020-10-23 01:57:01', NULL, 0, 'plain', '', 0, 'info'),
(4, 'woocommerce-services', 'info', 'en_US', 'WooCommerce Shipping & Tax', 'WooCommerce Shipping &amp; Tax helps get your store “ready to sell” as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.', '{}', 'pending', 'woocommerce.com', '2020-10-23 01:57:01', NULL, 0, 'plain', '', 0, 'info'),
(5, 'ecomm-unique-shopping-experience', 'info', 'en_US', 'For a shopping experience as unique as your customers', 'Product Add-Ons allow your customers to personalize products while they’re shopping on your online store. No more follow-up email requests—customers get what they want, before they’re done checking out. Learn more about this extension that comes included in your plan.', '{}', 'pending', 'woocommerce.com', '2020-10-23 01:57:01', NULL, 0, 'plain', '', 0, 'info'),
(6, 'wcpay-promo-2020-11', 'marketing', 'en_US', 'Manage subscriber payments from your store\'s dashboard', 'Securely accept cards and manage transactions right from your dashboard with <a href=\"https://woocommerce.com/payments/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_ctrl20\" target=\"_blank\">WooCommerce Payments</a>  – now supporting <a href=\"https://woocommerce.com/products/woocommerce-subscriptions/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_ctrl20\" target=\"_blank\">WooCommerce Subscriptions</a>! <br /><br /><em>By clicking \"Install now,\" you agree to our <a href=\"https://wordpress.com/tos/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_ctrl20\" target=\"_blank\">Terms of Service</a>.</em>', '{}', 'pending', 'woocommerce.com', '2020-10-23 01:57:01', NULL, 0, 'plain', '', 0, 'info'),
(20, 'wcpay-promo-2020-12', 'marketing', 'en_US', 'Get 50% off transaction fees with WooCommerce Payments', 'Keep more of your hard-earned cash by adding <a href=\"https://woocommerce.com/payments/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_exp20\" target=\"_blank\">WooCommerce Payments</a> to your store. Lock in a discounted rate of 1.5% + $0.15 for $25,000 of payments (or three months, whichever comes first). Limited time offer – don’t miss out! <br /><br /><em>By clicking \"Install now,\" you agree to our promotional <a href=\"https://woocommerce.com/terms-conditions/woocommerce-payments-promotion/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_exp20\" target=\"_blank\">Terms of Service</a>.</em>', '{}', 'pending', 'woocommerce.com', '2020-11-16 05:24:34', NULL, 0, 'plain', '', 0, 'info'),
(7, 'wcpay-subscriptions-2020-11', 'marketing', 'en_US', 'Manage subscriber payments from your store\'s dashboard', 'Securely accept cards and manage transactions right from your dashboard with <a href=\"https://woocommerce.com/payments/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_ctrl20\" target=\"_blank\">WooCommerce Payments</a>  – now supporting <a href=\"https://woocommerce.com/products/woocommerce-subscriptions/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_ctrl20\" target=\"_blank\">WooCommerce Subscriptions</a>! <br /><br /><em>By clicking \"Install now,\" you agree to our <a href=\"https://wordpress.com/tos/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_ctrl20\" target=\"_blank\">Terms of Service</a>.</em>', '{}', 'pending', 'woocommerce.com', '2020-10-23 01:57:01', NULL, 0, 'plain', '', 0, 'info'),
(8, 'wc-admin-wc-helper-connection', 'info', 'en_US', 'Connect to WooCommerce.com', 'Connect to get important product notifications and updates.', '{}', 'unactioned', 'woocommerce-admin', '2020-11-20 15:57:01', NULL, 0, 'plain', '', 0, 'info'),
(10, 'wc-admin-draw-attention', 'info', 'en_US', 'How to draw attention to your online store', 'To get you started, here are seven ways to boost your sales and avoid getting drowned out by similar, mass-produced products competing for the same buyers.', '{}', 'unactioned', 'woocommerce-admin', '2020-11-21 05:59:39', NULL, 0, 'plain', '', 0, 'info'),
(11, 'wc-admin-mobile-app', 'info', 'en_US', 'Install Woo mobile app', 'Install the WooCommerce mobile app to manage orders, receive sales notifications, and view key metrics — wherever you are.', '{}', 'unactioned', 'woocommerce-admin', '2020-11-28 07:06:04', NULL, 0, 'plain', '', 0, 'info'),
(12, 'wc-admin-onboarding-payments-reminder', 'info', 'en_US', 'Start accepting payments on your store!', 'Take payments with the provider that’s right for you - choose from 100+ payment gateways for WooCommerce.', '{}', 'unactioned', 'woocommerce-admin', '2020-11-28 07:06:04', NULL, 0, 'plain', '', 0, 'info'),
(13, 'wc-admin-personalize-store', 'info', 'en_US', 'Personalize your store\'s homepage', 'The homepage is one of the most important entry points in your store. When done right it can lead to higher conversions and engagement. Don\'t forget to personalize the homepage that we created for your store during the onboarding.', '{}', 'unactioned', 'woocommerce-admin', '2020-11-28 07:06:04', NULL, 0, 'plain', '', 0, 'info'),
(14, 'wc-admin-launch-checklist', 'info', 'en_US', 'Ready to launch your store?', 'To make sure you never get that sinking \"what did I forget\" feeling, we\'ve put together the essential pre-launch checklist.', '{}', 'unactioned', 'woocommerce-admin', '2020-11-28 07:06:04', NULL, 0, 'plain', '', 0, 'info'),
(15, 'wc-admin-need-some-inspiration', 'info', 'en_US', 'Do you need some inspiration?', 'Check some of our favorite customer stories from entrepreneurs, agencies, and developers in our global community.', '{}', 'unactioned', 'woocommerce-admin', '2020-11-28 07:06:04', NULL, 0, 'plain', '', 0, 'info'),
(16, 'wc-admin-store-notice-giving-feedback-2', 'info', 'en_US', 'Give feedback', 'Now that you’ve chosen us as a partner, our goal is to make sure we\'re providing the right tools to meet your needs. We\'re looking forward to having your feedback on the store setup experience so we can improve it in the future.', '{}', 'unactioned', 'woocommerce-admin', '2020-12-05 07:20:28', NULL, 0, 'plain', '', 0, 'info'),
(17, 'wc-admin-insight-first-sale', 'survey', 'en_US', 'Did you know?', 'A WooCommerce powered store needs on average 31 days to get the first sale. You\'re on the right track! Do you find this type of insight useful?', '{}', 'unactioned', 'woocommerce-admin', '2020-12-05 07:20:28', NULL, 0, 'plain', '', 0, 'info'),
(18, 'wc-admin-home-screen-feedback', 'info', 'en_US', 'Help us improve the WooCommerce Home screen', 'We\'d love your input to shape the future of the WooCommerce Home screen together. Feel free to share any feedback, ideas or suggestions that you have.', '{}', 'unactioned', 'woocommerce-admin', '2020-12-05 07:20:28', NULL, 0, 'plain', '', 0, 'info'),
(19, 'wc-admin-customize-store-with-blocks', 'info', 'en_US', 'Customize your online store with WooCommerce blocks', 'With our blocks, you can select and display products, categories, filters, and more virtually anywhere on your site — no need to use shortcodes or edit lines of code. Learn more about how to use each one of them.', '{}', 'unactioned', 'woocommerce-admin', '2020-12-05 07:20:29', NULL, 0, 'plain', '', 0, 'info'),
(21, 'wcpay-subscriptions-2020-12', 'marketing', 'en_US', 'Manage payments from your store\'s dashboard', 'Securely accept cards and manage transactions right from your dashboard with <a href=\"https://woocommerce.com/payments/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_ctrl20\" target=\"_blank\">WooCommerce Payments</a>! Zero setup fees or monthly fees. Just pay-as-you-go, starting at just 2.9% + $0.30 per transaction for U.S.-issued cards. <br /><br /><em>By clicking \"Install now,\" you agree to our <a href=\"https://wordpress.com/tos/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_ctrl20\" target=\"_blank\">Terms of Service</a>.</em>', '{}', 'pending', 'woocommerce.com', '2020-11-16 05:24:34', NULL, 0, 'plain', '', 0, 'info');

-- --------------------------------------------------------

--
-- Table structure for table `hk5_wc_admin_note_actions`
--

DROP TABLE IF EXISTS `hk5_wc_admin_note_actions`;
CREATE TABLE IF NOT EXISTS `hk5_wc_admin_note_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT 0,
  `actioned_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`action_id`),
  KEY `note_id` (`note_id`)
) ENGINE=MyISAM AUTO_INCREMENT=706 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hk5_wc_admin_note_actions`
--

INSERT INTO `hk5_wc_admin_note_actions` (`action_id`, `note_id`, `name`, `label`, `query`, `status`, `is_primary`, `actioned_text`) VALUES
(1, 1, 'yes-please', 'Yes please!', 'https://woocommerce.us8.list-manage.com/subscribe/post?u=2c1434dc56f9506bf3c3ecd21&amp;id=13860df971&amp;SIGNUPPAGE=plugin', 'actioned', 0, ''),
(2, 2, 'open-marketing-hub', 'Open marketing hub', 'http://localhost/shop-cms-wordpress/wp-admin/admin.php?page=wc-admin&path=/marketing', 'actioned', 0, ''),
(699, 3, 'set-up-concierge', 'Schedule free session', 'https://wordpress.com/me/concierge', 'actioned', 1, ''),
(700, 4, 'learn-more', 'Learn more', 'https://docs.woocommerce.com/document/woocommerce-shipping-and-tax/?utm_source=inbox', 'unactioned', 1, ''),
(701, 5, 'learn-more-ecomm-unique-shopping-experience', 'Learn more', 'https://docs.woocommerce.com/document/product-add-ons/?utm_source=inbox', 'actioned', 1, ''),
(702, 6, 'install-now', 'Install now', 'admin.php?page=wc-admin&action=setup-woocommerce-payments', 'actioned', 1, ''),
(703, 7, 'install-now', 'Install now', 'admin.php?page=wc-admin&action=setup-woocommerce-payments', 'actioned', 1, ''),
(8, 8, 'connect', 'Connect', '?page=wc-addons&section=helper', 'unactioned', 0, ''),
(16, 10, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/how-to-make-your-online-store-stand-out/?utm_source=inbox', 'actioned', 1, ''),
(32, 11, 'learn-more', 'Learn more', 'https://woocommerce.com/mobile/', 'actioned', 0, ''),
(33, 12, 'view-payment-gateways', 'Learn more', 'https://woocommerce.com/product-category/woocommerce-extensions/payment-gateways/', 'actioned', 1, ''),
(34, 13, 'personalize-homepage', 'Personalize homepage', 'http://localhost/shop-cms-wordpress/wp-admin/post.php?post=88&action=edit', 'actioned', 1, ''),
(35, 14, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/pre-launch-checklist-the-essentials/?utm_source=inbox', 'actioned', 0, ''),
(36, 15, 'need-some-inspiration', 'See success stories', 'https://woocommerce.com/success-stories/?utm_source=inbox', 'actioned', 1, ''),
(47, 16, 'share-feedback', 'Share feedback', 'https://automattic.survey.fm/new-onboarding-survey', 'actioned', 0, ''),
(48, 17, 'affirm-insight-first-sale', 'Yes', '', 'actioned', 0, 'Thanks for your feedback'),
(49, 17, 'deny-insight-first-sale', 'No', '', 'actioned', 0, 'Thanks for your feedback'),
(50, 18, 'home-screen-feedback-share-feedback', 'Share feedback', 'https://automattic.survey.fm/home-screen-survey', 'actioned', 0, ''),
(51, 19, 'customize-store-with-blocks', 'Learn more', 'https://woocommerce.com/posts/how-to-customize-your-online-store-with-woocommerce-blocks/?utm_source=inbox', 'actioned', 1, ''),
(704, 20, 'install-now', 'Install now', 'admin.php?page=wc-admin&action=setup-woocommerce-payments', 'actioned', 1, ''),
(705, 21, 'install-now', 'Install now', 'admin.php?page=wc-admin&action=setup-woocommerce-payments', 'actioned', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `hk5_wc_category_lookup`
--

DROP TABLE IF EXISTS `hk5_wc_category_lookup`;
CREATE TABLE IF NOT EXISTS `hk5_wc_category_lookup` (
  `category_tree_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`category_tree_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hk5_wc_category_lookup`
--

INSERT INTO `hk5_wc_category_lookup` (`category_tree_id`, `category_id`) VALUES
(35, 35),
(36, 36),
(36, 49),
(36, 50),
(36, 51),
(36, 52),
(38, 38),
(38, 39),
(38, 40),
(38, 41),
(38, 42),
(38, 43),
(39, 39),
(40, 40),
(41, 41),
(42, 42),
(43, 43),
(44, 44),
(44, 45),
(44, 46),
(44, 47),
(44, 48),
(45, 45),
(46, 46),
(47, 47),
(48, 48),
(49, 49),
(50, 50),
(51, 51),
(52, 52);

-- --------------------------------------------------------

--
-- Table structure for table `hk5_wc_customer_lookup`
--

DROP TABLE IF EXISTS `hk5_wc_customer_lookup`;
CREATE TABLE IF NOT EXISTS `hk5_wc_customer_lookup` (
  `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `postcode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hk5_wc_download_log`
--

DROP TABLE IF EXISTS `hk5_wc_download_log`;
CREATE TABLE IF NOT EXISTS `hk5_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`download_log_id`),
  KEY `permission_id` (`permission_id`),
  KEY `timestamp` (`timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hk5_wc_order_coupon_lookup`
--

DROP TABLE IF EXISTS `hk5_wc_order_coupon_lookup`;
CREATE TABLE IF NOT EXISTS `hk5_wc_order_coupon_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`order_id`,`coupon_id`),
  KEY `coupon_id` (`coupon_id`),
  KEY `date_created` (`date_created`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hk5_wc_order_product_lookup`
--

DROP TABLE IF EXISTS `hk5_wc_order_product_lookup`;
CREATE TABLE IF NOT EXISTS `hk5_wc_order_product_lookup` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variation_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_qty` int(11) NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT 0,
  `product_gross_revenue` double NOT NULL DEFAULT 0,
  `coupon_amount` double NOT NULL DEFAULT 0,
  `tax_amount` double NOT NULL DEFAULT 0,
  `shipping_amount` double NOT NULL DEFAULT 0,
  `shipping_tax_amount` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  KEY `customer_id` (`customer_id`),
  KEY `date_created` (`date_created`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hk5_wc_order_stats`
--

DROP TABLE IF EXISTS `hk5_wc_order_stats`;
CREATE TABLE IF NOT EXISTS `hk5_wc_order_stats` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int(11) NOT NULL DEFAULT 0,
  `total_sales` double NOT NULL DEFAULT 0,
  `tax_total` double NOT NULL DEFAULT 0,
  `shipping_total` double NOT NULL DEFAULT 0,
  `net_total` double NOT NULL DEFAULT 0,
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `date_created` (`date_created`),
  KEY `customer_id` (`customer_id`),
  KEY `status` (`status`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hk5_wc_order_tax_lookup`
--

DROP TABLE IF EXISTS `hk5_wc_order_tax_lookup`;
CREATE TABLE IF NOT EXISTS `hk5_wc_order_tax_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT 0,
  `order_tax` double NOT NULL DEFAULT 0,
  `total_tax` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`order_id`,`tax_rate_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `date_created` (`date_created`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hk5_wc_product_meta_lookup`
--

DROP TABLE IF EXISTS `hk5_wc_product_meta_lookup`;
CREATE TABLE IF NOT EXISTS `hk5_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT 0,
  `downloadable` tinyint(1) DEFAULT 0,
  `min_price` decimal(19,4) DEFAULT NULL,
  `max_price` decimal(19,4) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT 0,
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT 0,
  `average_rating` decimal(3,2) DEFAULT 0.00,
  `total_sales` bigint(20) DEFAULT 0,
  `tax_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'taxable',
  `tax_class` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`product_id`),
  KEY `virtual` (`virtual`),
  KEY `downloadable` (`downloadable`),
  KEY `stock_status` (`stock_status`),
  KEY `stock_quantity` (`stock_quantity`),
  KEY `onsale` (`onsale`),
  KEY `min_max_price` (`min_price`,`max_price`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hk5_wc_product_meta_lookup`
--

INSERT INTO `hk5_wc_product_meta_lookup` (`product_id`, `sku`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`, `tax_status`, `tax_class`) VALUES
(86, '', 0, 0, '80000.0000', '80000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'shipping', ''),
(127, '', 0, 0, '170000.0000', '170000.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(133, '', 0, 0, '80000.0000', '80000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'shipping', ''),
(135, '', 0, 0, '100000.0000', '100000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(137, '', 0, 0, '35000.0000', '35000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(139, '', 0, 0, '25000.0000', '25000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(142, '', 0, 0, '90000.0000', '90000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(144, '', 0, 0, '30000.0000', '30000.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(147, '', 0, 0, '50000.0000', '50000.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(150, '', 0, 0, '140000.0000', '140000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(154, '', 0, 0, '130000.0000', '130000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(155, '', 0, 0, '130000.0000', '130000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(157, '', 0, 0, '55000.0000', '55000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(152, '', 0, 0, '14000.0000', '14000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(160, '', 0, 0, '50000.0000', '50000.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(162, '', 0, 0, '25000.0000', '25000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(164, '', 0, 0, '15000.0000', '15000.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(166, '', 0, 0, '25000.0000', '25000.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(168, '', 0, 0, '100000.0000', '100000.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(172, '', 0, 0, '75000.0000', '75000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(175, '', 0, 0, '600000.0000', '600000.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(178, '', 0, 0, '1350000.0000', '1350000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(181, '', 0, 0, '550000.0000', '550000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(183, '', 0, 0, '1900000.0000', '1900000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(185, '', 0, 0, '450000.0000', '450000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(193, '', 0, 0, '170000.0000', '170000.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(195, '', 0, 0, '200000.0000', '200000.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(197, '', 0, 0, '170000.0000', '170000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(199, '', 0, 0, '170000.0000', '170000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(201, '', 0, 0, '160000.0000', '160000.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(203, '', 0, 0, '250000.0000', '250000.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(205, '', 0, 0, '40000.0000', '40000.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(207, '', 0, 0, '35000.0000', '35000.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(209, '', 0, 0, '40000.0000', '40000.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(211, '', 0, 0, '30000.0000', '30000.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(213, '', 0, 0, '50000.0000', '50000.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(215, '', 0, 0, '75000.0000', '75000.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(217, '', 0, 0, '120000.0000', '120000.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(220, '', 0, 0, '70000.0000', '70000.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(222, '', 0, 0, '40000.0000', '40000.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(224, '', 0, 0, '240000.0000', '240000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(226, '', 0, 0, '300000.0000', '300000.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(228, '', 0, 0, '250000.0000', '250000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(230, '', 0, 0, '190000.0000', '190000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(233, '', 0, 0, '290000.0000', '290000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', '');

-- --------------------------------------------------------

--
-- Table structure for table `hk5_wc_reserved_stock`
--

DROP TABLE IF EXISTS `hk5_wc_reserved_stock`;
CREATE TABLE IF NOT EXISTS `hk5_wc_reserved_stock` (
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `stock_quantity` double NOT NULL DEFAULT 0,
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`order_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hk5_wc_tax_rate_classes`
--

DROP TABLE IF EXISTS `hk5_wc_tax_rate_classes`;
CREATE TABLE IF NOT EXISTS `hk5_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_class_id`),
  UNIQUE KEY `slug` (`slug`(191))
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hk5_wc_tax_rate_classes`
--

INSERT INTO `hk5_wc_tax_rate_classes` (`tax_rate_class_id`, `name`, `slug`) VALUES
(1, 'Reduced rate', 'reduced-rate'),
(2, 'Zero rate', 'zero-rate');

-- --------------------------------------------------------

--
-- Table structure for table `hk5_wc_webhooks`
--

DROP TABLE IF EXISTS `hk5_wc_webhooks`;
CREATE TABLE IF NOT EXISTS `hk5_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT 0,
  `pending_delivery` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`webhook_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hk5_woocommerce_api_keys`
--

DROP TABLE IF EXISTS `hk5_woocommerce_api_keys`;
CREATE TABLE IF NOT EXISTS `hk5_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL,
  PRIMARY KEY (`key_id`),
  KEY `consumer_key` (`consumer_key`),
  KEY `consumer_secret` (`consumer_secret`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hk5_woocommerce_attribute_taxonomies`
--

DROP TABLE IF EXISTS `hk5_woocommerce_attribute_taxonomies`;
CREATE TABLE IF NOT EXISTS `hk5_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`attribute_id`),
  KEY `attribute_name` (`attribute_name`(20))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hk5_woocommerce_downloadable_product_permissions`
--

DROP TABLE IF EXISTS `hk5_woocommerce_downloadable_product_permissions`;
CREATE TABLE IF NOT EXISTS `hk5_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`permission_id`),
  KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  KEY `order_id` (`order_id`),
  KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hk5_woocommerce_log`
--

DROP TABLE IF EXISTS `hk5_woocommerce_log`;
CREATE TABLE IF NOT EXISTS `hk5_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  KEY `level` (`level`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hk5_woocommerce_order_itemmeta`
--

DROP TABLE IF EXISTS `hk5_woocommerce_order_itemmeta`;
CREATE TABLE IF NOT EXISTS `hk5_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hk5_woocommerce_order_items`
--

DROP TABLE IF EXISTS `hk5_woocommerce_order_items`;
CREATE TABLE IF NOT EXISTS `hk5_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hk5_woocommerce_payment_tokenmeta`
--

DROP TABLE IF EXISTS `hk5_woocommerce_payment_tokenmeta`;
CREATE TABLE IF NOT EXISTS `hk5_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `payment_token_id` (`payment_token_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hk5_woocommerce_payment_tokens`
--

DROP TABLE IF EXISTS `hk5_woocommerce_payment_tokens`;
CREATE TABLE IF NOT EXISTS `hk5_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`token_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hk5_woocommerce_sessions`
--

DROP TABLE IF EXISTS `hk5_woocommerce_sessions`;
CREATE TABLE IF NOT EXISTS `hk5_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`session_id`),
  UNIQUE KEY `session_key` (`session_key`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hk5_woocommerce_sessions`
--

INSERT INTO `hk5_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(16, '8a5f3593ed964af82344f11e4a43ffd4', 'a:8:{s:4:\"cart\";s:416:\"a:1:{s:32:\"93db85ed909c13838ff95ccfa94cebd9\";a:11:{s:3:\"key\";s:32:\"93db85ed909c13838ff95ccfa94cebd9\";s:10:\"product_id\";i:86;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:80000;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:80000;s:8:\"line_tax\";i:0;}}\";s:11:\"cart_totals\";s:409:\"a:15:{s:8:\"subtotal\";s:7:\"80000.0\";s:12:\"subtotal_tax\";d:0;s:14:\"shipping_total\";s:3:\"0.0\";s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";s:7:\"80000.0\";s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:3:\"0.0\";s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:7:\"80000.0\";s:9:\"total_tax\";d:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:10:\"wc_notices\";N;s:8:\"customer\";s:687:\"a:26:{s:2:\"id\";s:1:\"0\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"VN\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"VN\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:0:\"\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1610528122),
(22, 'bcf204d1bba4fbe7342314b83fb56c62', 'a:8:{s:4:\"cart\";s:836:\"a:2:{s:32:\"cedebb6e872f539bef8c3f919874e9d7\";a:11:{s:3:\"key\";s:32:\"cedebb6e872f539bef8c3f919874e9d7\";s:10:\"product_id\";i:183;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:3;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:5700000;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:5700000;s:8:\"line_tax\";i:0;}s:32:\"8f85517967795eeef66c225f7883bdcb\";a:11:{s:3:\"key\";s:32:\"8f85517967795eeef66c225f7883bdcb\";s:10:\"product_id\";i:178;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:3;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:4050000;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:4050000;s:8:\"line_tax\";i:0;}}\";s:11:\"cart_totals\";s:415:\"a:15:{s:8:\"subtotal\";s:9:\"9750000.0\";s:12:\"subtotal_tax\";d:0;s:14:\"shipping_total\";s:3:\"0.0\";s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";s:9:\"9750000.0\";s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:3:\"0.0\";s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:9:\"9750000.0\";s:9:\"total_tax\";d:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:10:\"wc_notices\";N;s:8:\"customer\";s:687:\"a:26:{s:2:\"id\";s:1:\"0\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"VN\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"VN\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:0:\"\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1610590394),
(21, '1', 'a:9:{s:4:\"cart\";s:1662:\"a:4:{s:32:\"8f85517967795eeef66c225f7883bdcb\";a:11:{s:3:\"key\";s:32:\"8f85517967795eeef66c225f7883bdcb\";s:10:\"product_id\";i:178;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:1350000;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:1350000;s:8:\"line_tax\";i:0;}s:32:\"cedebb6e872f539bef8c3f919874e9d7\";a:11:{s:3:\"key\";s:32:\"cedebb6e872f539bef8c3f919874e9d7\";s:10:\"product_id\";i:183;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:1900000;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:1900000;s:8:\"line_tax\";i:0;}s:32:\"eecca5b6365d9607ee5a9d336962c534\";a:11:{s:3:\"key\";s:32:\"eecca5b6365d9607ee5a9d336962c534\";s:10:\"product_id\";i:185;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:450000;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:450000;s:8:\"line_tax\";i:0;}s:32:\"9fc3d7152ba9336a670e36d0ed79bc43\";a:11:{s:3:\"key\";s:32:\"9fc3d7152ba9336a670e36d0ed79bc43\";s:10:\"product_id\";i:133;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:5;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:400000;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:400000;s:8:\"line_tax\";i:0;}}\";s:11:\"cart_totals\";s:415:\"a:15:{s:8:\"subtotal\";s:9:\"4100000.0\";s:12:\"subtotal_tax\";d:0;s:14:\"shipping_total\";s:3:\"0.0\";s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";s:9:\"4100000.0\";s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:3:\"0.0\";s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:9:\"4100000.0\";s:9:\"total_tax\";d:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:837:\"a:2:{s:32:\"8f85517967795eeef66c225f7883bdcb\";a:11:{s:3:\"key\";s:32:\"8f85517967795eeef66c225f7883bdcb\";s:10:\"product_id\";i:178;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:2;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:2700000;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:2700000;s:8:\"line_tax\";i:0;}s:32:\"fc221309746013ac554571fbd180e1c8\";a:11:{s:3:\"key\";s:32:\"fc221309746013ac554571fbd180e1c8\";s:10:\"product_id\";i:181;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:17;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:9350000;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:9350000;s:8:\"line_tax\";i:0;}}\";s:10:\"wc_notices\";N;s:8:\"customer\";s:744:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2021-01-09T22:09:23+07:00\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"VN\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"VN\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:30:\"phuongtan12357nguyen@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";s:21:\"chosen_payment_method\";s:0:\"\";}', 1610590097),
(17, 'b82bb530cdb8db67eecd1b79e90c0398', 'a:8:{s:4:\"cart\";s:416:\"a:1:{s:32:\"93db85ed909c13838ff95ccfa94cebd9\";a:11:{s:3:\"key\";s:32:\"93db85ed909c13838ff95ccfa94cebd9\";s:10:\"product_id\";i:86;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:80000;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:80000;s:8:\"line_tax\";i:0;}}\";s:11:\"cart_totals\";s:409:\"a:15:{s:8:\"subtotal\";s:7:\"80000.0\";s:12:\"subtotal_tax\";d:0;s:14:\"shipping_total\";s:3:\"0.0\";s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";s:7:\"80000.0\";s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:3:\"0.0\";s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:7:\"80000.0\";s:9:\"total_tax\";d:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:10:\"wc_notices\";N;s:8:\"customer\";s:687:\"a:26:{s:2:\"id\";s:1:\"0\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"VN\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"VN\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:0:\"\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1610586371),
(18, '5c864973482d493a32797c6a39934dfd', 'a:8:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:416:\"a:1:{s:32:\"93db85ed909c13838ff95ccfa94cebd9\";a:11:{s:3:\"key\";s:32:\"93db85ed909c13838ff95ccfa94cebd9\";s:10:\"product_id\";i:86;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:80000;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:80000;s:8:\"line_tax\";i:0;}}\";s:10:\"wc_notices\";N;s:8:\"customer\";s:687:\"a:26:{s:2:\"id\";s:1:\"0\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"VN\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"VN\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:0:\"\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1610587446),
(19, '07aad8a66e79185ee98e4152b2dd56f3', 'a:1:{s:8:\"customer\";s:744:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2021-01-09T22:09:23+07:00\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"VN\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"VN\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:30:\"phuongtan12357nguyen@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1610527371);

-- --------------------------------------------------------

--
-- Table structure for table `hk5_woocommerce_shipping_zones`
--

DROP TABLE IF EXISTS `hk5_woocommerce_shipping_zones`;
CREATE TABLE IF NOT EXISTS `hk5_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hk5_woocommerce_shipping_zone_locations`
--

DROP TABLE IF EXISTS `hk5_woocommerce_shipping_zone_locations`;
CREATE TABLE IF NOT EXISTS `hk5_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `location_id` (`location_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hk5_woocommerce_shipping_zone_methods`
--

DROP TABLE IF EXISTS `hk5_woocommerce_shipping_zone_methods`;
CREATE TABLE IF NOT EXISTS `hk5_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`instance_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hk5_woocommerce_tax_rates`
--

DROP TABLE IF EXISTS `hk5_woocommerce_tax_rates`;
CREATE TABLE IF NOT EXISTS `hk5_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT 0,
  `tax_rate_shipping` int(1) NOT NULL DEFAULT 1,
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_id`),
  KEY `tax_rate_country` (`tax_rate_country`),
  KEY `tax_rate_state` (`tax_rate_state`(2)),
  KEY `tax_rate_class` (`tax_rate_class`(10)),
  KEY `tax_rate_priority` (`tax_rate_priority`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hk5_woocommerce_tax_rate_locations`
--

DROP TABLE IF EXISTS `hk5_woocommerce_tax_rate_locations`;
CREATE TABLE IF NOT EXISTS `hk5_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
