-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th10 20, 2020 lúc 02:25 PM
-- Phiên bản máy phục vụ: 10.4.10-MariaDB
-- Phiên bản PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shop-cms-wordpress`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hk5_commentmeta`
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
-- Cấu trúc bảng cho bảng `hk5_comments`
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
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hk5_links`
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
-- Cấu trúc bảng cho bảng `hk5_options`
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
) ENGINE=MyISAM AUTO_INCREMENT=432 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hk5_options`
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
(29, 'rewrite_rules', 'a:91:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:85:\"all-in-one-wp-migration-gdrive-extension/all-in-one-wp-migration-gdrive-extension.php\";i:1;s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";i:2;s:41:\"widget-css-classes/widget-css-classes.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:75:\"C:\\wamp64\\www\\shop-cms-wordpress/wp-content/themes/cookie-cms/functions.php\";i:1;s:71:\"C:\\wamp64\\www\\shop-cms-wordpress/wp-content/themes/cookie-cms/style.css\";i:2;s:72:\"C:\\wamp64\\www\\shop-cms-wordpress/wp-content/themes/cookie-cms/footer.php\";i:3;s:75:\"C:\\wamp64\\www\\shop-cms-wordpress/wp-content/themes/twentynineteen/style.css\";i:4;s:68:\"C:\\wamp64\\www\\shop-cms-wordpress/wp-content/themes/mytheme/style.css\";}', 'no'),
(40, 'template', 'cookie-cms', 'yes'),
(41, 'stylesheet', 'cookie-cms', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '48748', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
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
(82, 'page_on_front', '0', 'yes'),
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
(96, 'hk5_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(97, 'fresh_site', '0', 'yes'),
(98, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"main-sidebar\";a:0:{}s:16:\"footer-sidebar-1\";a:2:{i:0;s:13:\"media_image-2\";i:1;s:13:\"custom_html-2\";}s:16:\"footer-sidebar-2\";a:1:{i:0;s:12:\"categories-3\";}s:16:\"footer-sidebar-3\";a:1:{i:0;s:10:\"calendar-2\";}s:16:\"footer-sidebar-4\";a:1:{i:0;s:10:\"nav_menu-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(190, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(184, '_transient_health-check-site-status-result', '{\"good\":11,\"recommended\":9,\"critical\":0}', 'yes'),
(104, 'cron', 'a:8:{i:1605885708;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1605922271;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1605965001;a:1:{s:21:\"ai1wm_storage_cleanup\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1605965471;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1605965494;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1605965496;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1606483871;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:2:{i:2;a:1:{s:5:\"title\";s:8:\"Calendar\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:2:{i:2;a:16:{s:4:\"size\";s:4:\"full\";s:5:\"width\";i:172;s:6:\"height\";i:55;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:6:\"custom\";s:8:\"link_url\";s:0:\"\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";s:13:\"attachment_id\";i:51;s:3:\"url\";s:82:\"http://localhost/shop-cms-wordpress/wp-content/uploads/2020/11/logo-cms-header.png\";s:5:\"title\";s:0:\"\";s:7:\"classes\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:2:{i:2;a:3:{s:5:\"title\";s:24:\"Menu Website Cookie Shop\";s:8:\"nav_menu\";i:4;s:7:\"classes\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:380:\"<p>Shop Bánh Ngon - Siêu thị cung cấp dụng cụ và nguyên liệu làm bánh, các đồ dùng làm bánh.</p>\r\n<div class=\"footer-text\"><span><i class=\"icon icon-Pointer\"></i>Address : TDC, Vo Van Ngan, Thu Duc, HCM.</span><span><i class=\"icon icon-Phone\"></i>Phone : +(84) 123 456 789</span><span><i class=\"icon icon-Mail\"></i>Email : admin@cookietnt.com</span></div>\r\n\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:1:{s:22:\"uqkN6Nmf0TFZLKkKXWiOsC\";a:2:{s:10:\"hashed_key\";s:34:\"$P$B2A38dkWAkeSRZ75/.yZz8mcq9rYb4/\";s:10:\"created_at\";i:1605831601;}}', 'yes'),
(116, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:58:\"http://downloads.wordpress.org/release/wordpress-5.5.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:58:\"http://downloads.wordpress.org/release/wordpress-5.5.3.zip\";s:10:\"no_content\";s:69:\"http://downloads.wordpress.org/release/wordpress-5.5.3-no-content.zip\";s:11:\"new_bundled\";s:70:\"http://downloads.wordpress.org/release/wordpress-5.5.3-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.5.3\";s:7:\"version\";s:5:\"5.5.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1605879118;s:15:\"version_checked\";s:5:\"5.5.3\";s:12:\"translations\";a:0:{}}', 'no'),
(119, 'theme_mods_twentytwenty', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1605275799;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(167, 'ai1wm_updater', 'a:1:{s:40:\"all-in-one-wp-migration-gdrive-extension\";a:13:{s:4:\"name\";s:22:\"Google Drive Extension\";s:4:\"slug\";s:22:\"google-drive-extension\";s:8:\"homepage\";s:54:\"https://servmask.com/extensions/google-drive-extension\";s:13:\"download_link\";s:29:\"https://servmask.com/purchase\";s:7:\"version\";s:4:\"2.61\";s:6:\"author\";s:8:\"ServMask\";s:15:\"author_homepage\";s:20:\"https://servmask.com\";s:8:\"sections\";a:1:{s:11:\"description\";s:333:\"<ul class=\"description\"><li>Export and import to and from Google Drive</li><li>Lifetime license with lifetime updates</li><li>Use on any number of websites that you own</li><li>Backup scheduler with hourly, daily, and weekly options</li><li>Unlimited Extension included</li><li>WP CLI commands</li><li>Premium support</li></ul><br />\";}s:7:\"banners\";a:2:{s:3:\"low\";s:68:\"https://servmask.com/img/products/google-drive-extension-772x250.png\";s:4:\"high\";s:69:\"https://servmask.com/img/products/google-drive-extension-1544x500.png\";}s:5:\"icons\";a:3:{s:2:\"1x\";s:68:\"https://servmask.com/img/products/google-drive-extension-128x128.png\";s:2:\"2x\";s:68:\"https://servmask.com/img/products/google-drive-extension-256x256.png\";s:7:\"default\";s:68:\"https://servmask.com/img/products/google-drive-extension-256x256.png\";}s:6:\"rating\";i:99;s:11:\"num_ratings\";i:309;s:10:\"downloaded\";i:40188;}}', 'yes'),
(164, 'ai1wm_secret_key', 'PvmZ1wXucRA0', 'yes'),
(427, '_site_transient_timeout_theme_roots', '1605880903', 'no'),
(428, '_site_transient_theme_roots', 'a:4:{s:10:\"cookie-cms\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(430, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1605879132;s:7:\"checked\";a:4:{s:10:\"cookie-cms\";s:3:\"1.0\";s:14:\"twentynineteen\";s:3:\"1.7\";s:15:\"twentyseventeen\";s:0:\"\";s:12:\"twentytwenty\";s:3:\"1.5\";}s:8:\"response\";a:1:{s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.4.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:9:\"no_update\";a:2:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.7.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.5.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(143, 'finished_updating_comment_type', '1', 'yes'),
(128, 'can_compress_scripts', '1', 'no'),
(301, 'category_children', 'a:3:{i:5;a:5:{i:0;i:6;i:1;i:7;i:2;i:8;i:3;i:9;i:4;i:10;}i:11;a:4:{i:0;i:12;i:1;i:13;i:2;i:14;i:3;i:15;}i:16;a:4:{i:0;i:17;i:1;i:18;i:2;i:19;i:3;i:20;}}', 'yes'),
(159, 'recently_activated', 'a:0:{}', 'yes'),
(168, 'ai1wmge_gdrive_token', '1//0gzbgmWxaqw8cCgYIARAAGBASNwF-L9IrrvY4I98RJi88wU74mvYprr0tvo0hpBtENL1KydVqK8AMNEiUQx-KtsxRXTNEWTCctdM', 'yes'),
(169, 'ai1wmge_gdrive_access_token', 'ya29.A0AfH6SMAx2kbW-DzoluqQUu9J36T8lT8HgyeXD3qVB97kcll-4c1f8gibGUokD-nT20j3G8Dbxg9P_vAJm-Nm3cvIwPw_bQpvpiVulj5FwioGu0oUJFbbrQkVK0rbcXSM9HHB0ZbShHJAhrex6SZq8xJ-yK6O9dsCH6vgYIHQasg', 'yes'),
(170, 'ai1wmge_gdrive_access_token_expires_in', '1605276900', 'yes'),
(171, 'ai1wmge_gdrive_folder_id', '1yM5RT9lSR-lA9pDMfJwPNj4QXAW5_Pwo', 'yes'),
(410, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1605879132;s:7:\"checked\";a:3:{s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:4:\"7.30\";s:85:\"all-in-one-wp-migration-gdrive-extension/all-in-one-wp-migration-gdrive-extension.php\";s:4:\"2.58\";s:41:\"widget-css-classes/widget-css-classes.php\";s:7:\"1.5.4.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:37:\"w.org/plugins/all-in-one-wp-migration\";s:4:\"slug\";s:23:\"all-in-one-wp-migration\";s:6:\"plugin\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:11:\"new_version\";s:4:\"7.30\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/all-in-one-wp-migration/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.7.30.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=2416836\";s:2:\"1x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-128x128.png?rev=2416836\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.png?rev=2416836\";s:2:\"1x\";s:78:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-772x250.png?rev=2416836\";}s:11:\"banners_rtl\";a:0:{}}s:41:\"widget-css-classes/widget-css-classes.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/widget-css-classes\";s:4:\"slug\";s:18:\"widget-css-classes\";s:6:\"plugin\";s:41:\"widget-css-classes/widget-css-classes.php\";s:11:\"new_version\";s:7:\"1.5.4.1\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/widget-css-classes/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/widget-css-classes.1.5.4.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/widget-css-classes/assets/icon-256x256.jpg?rev=1130657\";s:2:\"1x\";s:71:\"https://ps.w.org/widget-css-classes/assets/icon-128x128.jpg?rev=1130657\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/widget-css-classes/assets/banner-1544x500.jpg?rev=1130650\";s:2:\"1x\";s:73:\"https://ps.w.org/widget-css-classes/assets/banner-772x250.jpg?rev=1130650\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(411, 'WCSSC_options', 'a:9:{s:7:\"show_id\";b:0;s:4:\"type\";i:1;s:15:\"defined_classes\";a:0:{}s:11:\"show_number\";b:1;s:13:\"show_location\";b:1;s:12:\"show_evenodd\";b:1;s:17:\"fix_widget_params\";b:0;s:13:\"filter_unique\";b:0;s:17:\"translate_classes\";b:0;}', 'yes'),
(412, 'WCSSC_db_version', '1.5.4', 'yes'),
(377, '_site_transient_timeout_php_check_7ddb89c02f1abf791c6717dc46cef1eb', '1606425731', 'no'),
(378, '_site_transient_php_check_7ddb89c02f1abf791c6717dc46cef1eb', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(174, 'WPLANG', '', 'yes'),
(175, 'new_admin_email', 'phuongtan12357nguyen@gmail.com', 'yes'),
(180, 'ai1wm_status', 'a:2:{s:4:\"type\";s:8:\"download\";s:7:\"message\";s:337:\"<a href=\"http://localhost/shop-cms-wordpress/wp-content/ai1wm-backups/localhost-shop-cms-wordpress-20201113-132835-jlzbop.wpress\" class=\"ai1wm-button-green ai1wm-emphasize ai1wm-button-download\" title=\"localhost\" download=\"localhost-shop-cms-wordpress-20201113-132835-jlzbop.wpress\"><span>Download localhost</span><em>Size: 5 MB</em></a>\";}', 'yes'),
(186, 'theme_mods_mytheme', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1605275794;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(188, 'current_theme', 'Web Shop TNT CMS TEAM', 'yes'),
(189, 'theme_switched', '', 'yes'),
(314, '_site_transient_timeout_browser_d53689c8b3b726be8965c0f3a0e161aa', '1606040033', 'no'),
(315, '_site_transient_browser_d53689c8b3b726be8965c0f3a0e161aa', 'a:10:{s:4:\"name\";s:7:\"unknown\";s:7:\"version\";s:0:\"\";s:8:\"platform\";s:0:\"\";s:10:\"update_url\";s:0:\"\";s:7:\"img_src\";s:0:\"\";s:11:\"img_src_ssl\";s:0:\"\";s:15:\"current_version\";s:0:\"\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(317, 'recovery_mode_email_last_sent', '1605831601', 'yes'),
(335, '_site_transient_timeout_browser_8d3fec2581d3961f3037851d5cc0039c', '1606277412', 'no'),
(336, '_site_transient_browser_8d3fec2581d3961f3037851d5cc0039c', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"86.0.4240.198\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(204, 'theme_mods_cookie-cms', 'a:9:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:9:\"main-menu\";i:4;}s:18:\"custom_css_post_id\";i:-1;s:16:\"background_color\";s:6:\"ffffff\";s:11:\"custom_logo\";i:51;s:16:\"header_textcolor\";s:5:\"blank\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1605820942;s:4:\"data\";a:6:{s:19:\"wp_inactive_widgets\";a:0:{}s:16:\"footer-sidebar-1\";a:2:{i:0;s:13:\"media_image-2\";i:1;s:13:\"custom_html-2\";}s:16:\"footer-sidebar-2\";a:1:{i:0;s:12:\"categories-3\";}s:16:\"footer-sidebar-3\";a:1:{i:0;s:10:\"calendar-2\";}s:16:\"footer-sidebar-4\";a:1:{i:0;s:10:\"nav_menu-2\";}s:12:\"main-sidebar\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}}}s:12:\"header_image\";s:82:\"http://localhost/shop-cms-wordpress/wp-content/uploads/2020/11/logo-cms-header.png\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:51;s:3:\"url\";s:82:\"http://localhost/shop-cms-wordpress/wp-content/uploads/2020/11/logo-cms-header.png\";s:13:\"thumbnail_url\";s:82:\"http://localhost/shop-cms-wordpress/wp-content/uploads/2020/11/logo-cms-header.png\";s:6:\"height\";i:55;s:5:\"width\";i:172;}}', 'yes'),
(195, 'theme_mods_twentynineteen', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:4;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1605820991;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:12:\"categories-3\";i:1;s:10:\"calendar-2\";i:2;s:10:\"nav_menu-2\";i:3;s:8:\"search-2\";i:4;s:14:\"recent-posts-2\";i:5;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:2:{i:0;s:13:\"media_image-2\";i:1;s:13:\"custom_html-2\";}}}}', 'yes');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hk5_postmeta`
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
) ENGINE=MyISAM AUTO_INCREMENT=357 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hk5_postmeta`
--

INSERT INTO `hk5_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(100, 29, '_wp_attached_file', '2020/11/cropped-logo-cms.png'),
(99, 28, '_wp_attachment_image_alt', 'logo-cms'),
(13, 6, '_wp_trash_meta_status', 'publish'),
(14, 6, '_wp_trash_meta_time', '1605275329'),
(28, 15, '_wp_attached_file', '2020/11/cropped-logoPJ.png'),
(29, 15, '_wp_attachment_context', 'site-icon'),
(30, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:26:\"2020/11/cropped-logoPJ.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"cropped-logoPJ-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"cropped-logoPJ-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:26:\"cropped-logoPJ-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:26:\"cropped-logoPJ-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:26:\"cropped-logoPJ-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:24:\"cropped-logoPJ-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(26, 14, '_wp_attached_file', '2020/11/logoPJ.png'),
(27, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:340;s:6:\"height\";i:338;s:4:\"file\";s:18:\"2020/11/logoPJ.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"logoPJ-300x298.png\";s:5:\"width\";i:300;s:6:\"height\";i:298;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"logoPJ-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(20, 11, '_edit_lock', '1605275493:1'),
(21, 12, '_wp_attached_file', '2020/11/cropped-logoCMS.png'),
(22, 12, '_wp_attachment_context', 'site-icon'),
(23, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:27:\"2020/11/cropped-logoCMS.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"cropped-logoCMS-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"cropped-logoCMS-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:27:\"cropped-logoCMS-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:27:\"cropped-logoCMS-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:27:\"cropped-logoCMS-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:25:\"cropped-logoCMS-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(24, 8, '_customize_restore_dismissed', '1'),
(31, 13, '_customize_restore_dismissed', '1'),
(32, 16, '_edit_lock', '1605277150:1'),
(33, 16, '_wp_trash_meta_status', 'publish'),
(34, 16, '_wp_trash_meta_time', '1605277159'),
(95, 26, '_edit_lock', '1605334831:1'),
(96, 27, '_edit_lock', '1605334855:1'),
(97, 28, '_wp_attached_file', '2020/11/logo-cms.png'),
(93, 25, '_wp_trash_meta_status', 'publish'),
(94, 25, '_wp_trash_meta_time', '1605324201'),
(98, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:974;s:6:\"height\";i:312;s:4:\"file\";s:20:\"2020/11/logo-cms.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"logo-cms-300x96.png\";s:5:\"width\";i:300;s:6:\"height\";i:96;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"logo-cms-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"logo-cms-768x246.png\";s:5:\"width\";i:768;s:6:\"height\";i:246;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(92, 24, '_wp_trash_meta_time', '1605324195'),
(91, 24, '_wp_trash_meta_status', 'publish'),
(90, 23, '_wp_trash_meta_time', '1605323385'),
(89, 23, '_wp_trash_meta_status', 'publish'),
(165, 39, '_menu_item_menu_item_parent', '38'),
(164, 39, '_menu_item_type', 'taxonomy'),
(240, 47, '_menu_item_target', ''),
(241, 47, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(162, 38, '_menu_item_url', ''),
(161, 38, '_menu_item_xfn', ''),
(160, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(159, 38, '_menu_item_target', ''),
(158, 38, '_menu_item_object', 'category'),
(157, 38, '_menu_item_object_id', '5'),
(156, 38, '_menu_item_menu_item_parent', '0'),
(155, 38, '_menu_item_type', 'taxonomy'),
(101, 29, '_wp_attachment_context', 'custom-logo'),
(102, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:974;s:6:\"height\";i:312;s:4:\"file\";s:28:\"2020/11/cropped-logo-cms.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"cropped-logo-cms-300x96.png\";s:5:\"width\";i:300;s:6:\"height\";i:96;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"cropped-logo-cms-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"cropped-logo-cms-768x246.png\";s:5:\"width\";i:768;s:6:\"height\";i:246;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(103, 30, '_edit_lock', '1605335995:1'),
(104, 31, '_wp_attached_file', '2020/11/cropped-logo-cms-1.png'),
(105, 31, '_wp_attachment_context', 'custom-logo'),
(106, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:974;s:6:\"height\";i:312;s:4:\"file\";s:30:\"2020/11/cropped-logo-cms-1.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"cropped-logo-cms-1-300x96.png\";s:5:\"width\";i:300;s:6:\"height\";i:96;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"cropped-logo-cms-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"cropped-logo-cms-1-768x246.png\";s:5:\"width\";i:768;s:6:\"height\";i:246;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(107, 30, '_customize_restore_dismissed', '1'),
(108, 32, '_wp_trash_meta_status', 'publish'),
(109, 32, '_wp_trash_meta_time', '1605336012'),
(257, 50, '_wp_trash_meta_time', '1605380585'),
(234, 46, '_menu_item_url', ''),
(233, 46, '_menu_item_xfn', ''),
(232, 46, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(231, 46, '_menu_item_target', ''),
(230, 46, '_menu_item_object', 'category'),
(229, 46, '_menu_item_object_id', '13'),
(228, 46, '_menu_item_menu_item_parent', '44'),
(227, 46, '_menu_item_type', 'taxonomy'),
(258, 51, '_wp_attached_file', '2020/11/logo-cms-header.png'),
(225, 45, '_menu_item_url', ''),
(224, 45, '_menu_item_xfn', ''),
(169, 39, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(223, 45, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(222, 45, '_menu_item_target', ''),
(221, 45, '_menu_item_object', 'category'),
(220, 45, '_menu_item_object_id', '12'),
(168, 39, '_menu_item_target', ''),
(219, 45, '_menu_item_menu_item_parent', '44'),
(218, 45, '_menu_item_type', 'taxonomy'),
(259, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:172;s:6:\"height\";i:55;s:4:\"file\";s:27:\"2020/11/logo-cms-header.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"logo-cms-header-150x55.png\";s:5:\"width\";i:150;s:6:\"height\";i:55;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(216, 44, '_menu_item_url', ''),
(215, 44, '_menu_item_xfn', ''),
(214, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(167, 39, '_menu_item_object', 'category'),
(213, 44, '_menu_item_target', ''),
(212, 44, '_menu_item_object', 'category'),
(211, 44, '_menu_item_object_id', '11'),
(210, 44, '_menu_item_menu_item_parent', '0'),
(209, 44, '_menu_item_type', 'taxonomy'),
(166, 39, '_menu_item_object_id', '9'),
(170, 39, '_menu_item_xfn', ''),
(171, 39, '_menu_item_url', ''),
(239, 47, '_menu_item_object', 'category'),
(173, 40, '_menu_item_type', 'taxonomy'),
(174, 40, '_menu_item_menu_item_parent', '38'),
(175, 40, '_menu_item_object_id', '7'),
(176, 40, '_menu_item_object', 'category'),
(177, 40, '_menu_item_target', ''),
(178, 40, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(179, 40, '_menu_item_xfn', ''),
(180, 40, '_menu_item_url', ''),
(238, 47, '_menu_item_object_id', '14'),
(182, 41, '_menu_item_type', 'taxonomy'),
(183, 41, '_menu_item_menu_item_parent', '38'),
(184, 41, '_menu_item_object_id', '8'),
(185, 41, '_menu_item_object', 'category'),
(186, 41, '_menu_item_target', ''),
(187, 41, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(188, 41, '_menu_item_xfn', ''),
(189, 41, '_menu_item_url', ''),
(237, 47, '_menu_item_menu_item_parent', '44'),
(191, 42, '_menu_item_type', 'taxonomy'),
(192, 42, '_menu_item_menu_item_parent', '38'),
(193, 42, '_menu_item_object_id', '6'),
(194, 42, '_menu_item_object', 'category'),
(195, 42, '_menu_item_target', ''),
(196, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(197, 42, '_menu_item_xfn', ''),
(198, 42, '_menu_item_url', ''),
(236, 47, '_menu_item_type', 'taxonomy'),
(200, 43, '_menu_item_type', 'taxonomy'),
(201, 43, '_menu_item_menu_item_parent', '38'),
(202, 43, '_menu_item_object_id', '10'),
(203, 43, '_menu_item_object', 'category'),
(204, 43, '_menu_item_target', ''),
(205, 43, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(206, 43, '_menu_item_xfn', ''),
(207, 43, '_menu_item_url', ''),
(256, 50, '_wp_trash_meta_status', 'publish'),
(242, 47, '_menu_item_xfn', ''),
(243, 47, '_menu_item_url', ''),
(255, 49, '_customize_restore_dismissed', '1'),
(245, 48, '_menu_item_type', 'taxonomy'),
(246, 48, '_menu_item_menu_item_parent', '44'),
(247, 48, '_menu_item_object_id', '15'),
(248, 48, '_menu_item_object', 'category'),
(249, 48, '_menu_item_target', ''),
(250, 48, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(251, 48, '_menu_item_xfn', ''),
(252, 48, '_menu_item_url', ''),
(254, 49, '_edit_lock', '1605380573:1'),
(260, 52, '_wp_trash_meta_status', 'publish'),
(261, 52, '_wp_trash_meta_time', '1605380876'),
(262, 53, '_wp_trash_meta_status', 'publish'),
(263, 53, '_wp_trash_meta_time', '1605381080'),
(264, 54, '_wp_trash_meta_status', 'publish'),
(265, 54, '_wp_trash_meta_time', '1605381091'),
(266, 55, '_wp_trash_meta_status', 'publish'),
(267, 55, '_wp_trash_meta_time', '1605381105'),
(268, 56, '_wp_trash_meta_status', 'publish'),
(269, 56, '_wp_trash_meta_time', '1605381442'),
(270, 57, '_wp_trash_meta_status', 'publish'),
(271, 57, '_wp_trash_meta_time', '1605381520'),
(272, 58, '_wp_attached_file', '2020/11/cropped-logo-cms-header.png'),
(273, 58, '_wp_attachment_context', 'custom-logo'),
(274, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:172;s:6:\"height\";i:42;s:4:\"file\";s:35:\"2020/11/cropped-logo-cms-header.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"cropped-logo-cms-header-150x42.png\";s:5:\"width\";i:150;s:6:\"height\";i:42;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(275, 59, '_edit_lock', '1605382364:1'),
(276, 59, '_wp_trash_meta_status', 'publish'),
(277, 59, '_wp_trash_meta_time', '1605382377'),
(278, 60, '_wp_attached_file', '2020/11/cropped-logo-cms-header-1.png'),
(279, 60, '_wp_attachment_context', 'custom-logo'),
(280, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:172;s:6:\"height\";i:38;s:4:\"file\";s:37:\"2020/11/cropped-logo-cms-header-1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"cropped-logo-cms-header-1-150x38.png\";s:5:\"width\";i:150;s:6:\"height\";i:38;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(281, 61, '_wp_trash_meta_status', 'publish'),
(282, 61, '_wp_trash_meta_time', '1605382533'),
(283, 62, '_wp_attached_file', '2020/11/cropped-logo-cms-header-1-1.png'),
(284, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:140;s:6:\"height\";i:31;s:4:\"file\";s:39:\"2020/11/cropped-logo-cms-header-1-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(285, 63, '_wp_trash_meta_status', 'publish'),
(286, 63, '_wp_trash_meta_time', '1605382603'),
(287, 64, '_wp_trash_meta_status', 'publish'),
(288, 64, '_wp_trash_meta_time', '1605382640'),
(289, 65, '_menu_item_type', 'taxonomy'),
(290, 65, '_menu_item_menu_item_parent', '0'),
(291, 65, '_menu_item_object_id', '16'),
(292, 65, '_menu_item_object', 'category'),
(293, 65, '_menu_item_target', ''),
(294, 65, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(295, 65, '_menu_item_xfn', ''),
(296, 65, '_menu_item_url', ''),
(342, 71, '_wp_desired_post_slug', ''),
(298, 66, '_menu_item_type', 'taxonomy'),
(299, 66, '_menu_item_menu_item_parent', '65'),
(300, 66, '_menu_item_object_id', '18'),
(301, 66, '_menu_item_object', 'category'),
(302, 66, '_menu_item_target', ''),
(303, 66, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(304, 66, '_menu_item_xfn', ''),
(305, 66, '_menu_item_url', ''),
(341, 71, '_wp_trash_meta_time', '1605428142'),
(307, 67, '_menu_item_type', 'taxonomy'),
(308, 67, '_menu_item_menu_item_parent', '65'),
(309, 67, '_menu_item_object_id', '19'),
(310, 67, '_menu_item_object', 'category'),
(311, 67, '_menu_item_target', ''),
(312, 67, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(313, 67, '_menu_item_xfn', ''),
(314, 67, '_menu_item_url', ''),
(340, 71, '_wp_trash_meta_status', 'draft'),
(316, 68, '_menu_item_type', 'taxonomy'),
(317, 68, '_menu_item_menu_item_parent', '65'),
(318, 68, '_menu_item_object_id', '20'),
(319, 68, '_menu_item_object', 'category'),
(320, 68, '_menu_item_target', ''),
(321, 68, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(322, 68, '_menu_item_xfn', ''),
(323, 68, '_menu_item_url', ''),
(335, 71, '_edit_lock', '1605428008:1'),
(325, 69, '_menu_item_type', 'taxonomy'),
(326, 69, '_menu_item_menu_item_parent', '65'),
(327, 69, '_menu_item_object_id', '17'),
(328, 69, '_menu_item_object', 'category'),
(329, 69, '_menu_item_target', ''),
(330, 69, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(331, 69, '_menu_item_xfn', ''),
(332, 69, '_menu_item_url', ''),
(334, 70, '_edit_lock', '1605427990:1'),
(343, 75, '_wp_trash_meta_status', 'publish'),
(344, 75, '_wp_trash_meta_time', '1605433210'),
(354, 78, '_wp_trash_meta_time', '1605446391'),
(353, 78, '_wp_trash_meta_status', 'publish'),
(347, 76, '_wp_trash_meta_status', 'publish'),
(348, 76, '_wp_trash_meta_time', '1605433236'),
(352, 77, '_wp_trash_meta_time', '1605436249'),
(351, 77, '_wp_trash_meta_status', 'publish'),
(355, 79, '_wp_trash_meta_status', 'publish'),
(356, 79, '_wp_trash_meta_time', '1605446399');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hk5_posts`
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
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hk5_posts`
--

INSERT INTO `hk5_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-11-12 13:31:11', '2020-11-12 13:31:11', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2020-11-12 13:31:11', '2020-11-12 13:31:11', '', 0, 'http://localhost/shop-cms-wordpress/?p=1', 0, 'post', '', 0),
(2, 1, '2020-11-12 13:31:11', '2020-11-12 13:31:11', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/shop-cms-wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2020-11-12 13:31:11', '2020-11-12 13:31:11', '', 0, 'http://localhost/shop-cms-wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-11-12 13:31:11', '2020-11-12 13:31:11', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/shop-cms-wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-11-12 13:31:11', '2020-11-12 13:31:11', '', 0, 'http://localhost/shop-cms-wordpress/?page_id=3', 0, 'page', '', 0),
(80, 1, '2020-11-20 04:22:11', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-11-20 04:22:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/shop-cms-wordpress/?p=80', 0, 'post', '', 0),
(6, 1, '2020-11-13 20:48:49', '2020-11-13 13:48:49', '{\n    \"nav_menu[-1108386103028623400]\": {\n        \"value\": {\n            \"name\": \"main-menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-13 13:48:49\"\n    },\n    \"nav_menu_item[-5115760499475149000]\": {\n        \"value\": {\n            \"object_id\": 1,\n            \"object\": \"category\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"taxonomy\",\n            \"title\": \"Uncategorized\",\n            \"url\": \"http://localhost/shop-cms-wordpress/category/uncategorized/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Uncategorized\",\n            \"nav_menu_term_id\": -1108386103028623400,\n            \"_invalid\": false,\n            \"type_label\": \"Category\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-13 13:48:49\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '75a5a3bf-2ed1-4389-b2f0-c2ee7b860b37', '', '', '2020-11-13 20:48:49', '2020-11-13 13:48:49', '', 0, 'http://localhost/shop-cms-wordpress/75a5a3bf-2ed1-4389-b2f0-c2ee7b860b37/', 0, 'customize_changeset', '', 0),
(8, 1, '2020-11-13 20:50:01', '0000-00-00 00:00:00', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-13 13:50:01\"\n    },\n    \"page_on_front\": {\n        \"value\": \"2\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-13 13:50:01\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'bbb61244-cfbc-4e7d-9c5f-5744a2afc054', '', '', '2020-11-13 20:50:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/shop-cms-wordpress/?p=8', 0, 'customize_changeset', '', 0),
(15, 1, '2020-11-13 21:17:58', '2020-11-13 14:17:58', 'http://localhost/shop-cms-wordpress/wp-content/uploads/2020/11/cropped-logoPJ.png', 'cropped-logoPJ.png', '', 'inherit', 'open', 'closed', '', 'cropped-logopj-png', '', '', '2020-11-13 21:17:58', '2020-11-13 14:17:58', '', 0, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2020/11/cropped-logoPJ.png', 0, 'attachment', 'image/png', 0),
(14, 1, '2020-11-13 21:17:49', '2020-11-13 14:17:49', '', 'logoPJ', '', 'inherit', 'open', 'closed', '', 'logopj', '', '', '2020-11-13 21:17:49', '2020-11-13 14:17:49', '', 0, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2020/11/logoPJ.png', 0, 'attachment', 'image/png', 0),
(11, 1, '2020-11-13 20:51:23', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-11-13 20:51:23', '0000-00-00 00:00:00', '', 0, 'http://localhost/shop-cms-wordpress/?p=11', 0, 'post', '', 0),
(12, 1, '2020-11-13 20:51:44', '2020-11-13 13:51:44', 'http://localhost/shop-cms-wordpress/wp-content/uploads/2020/11/cropped-logoCMS.png', 'cropped-logoCMS.png', '', 'inherit', 'open', 'closed', '', 'cropped-logocms-png', '', '', '2020-11-13 20:51:44', '2020-11-13 13:51:44', '', 0, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2020/11/cropped-logoCMS.png', 0, 'attachment', 'image/png', 0),
(13, 1, '2020-11-13 20:52:06', '0000-00-00 00:00:00', '{\n    \"site_icon\": {\n        \"value\": 12,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-13 13:52:06\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '97cd4469-5288-492f-8152-1018c97365a1', '', '', '2020-11-13 20:52:06', '0000-00-00 00:00:00', '', 0, 'http://localhost/shop-cms-wordpress/?p=13', 0, 'customize_changeset', '', 0),
(16, 1, '2020-11-13 21:19:19', '2020-11-13 14:19:19', '{\n    \"blogdescription\": {\n        \"value\": \"Website Cookie Shop TNT\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-13 14:18:58\"\n    },\n    \"site_icon\": {\n        \"value\": 15,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-13 14:18:58\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '620f2f92-bd5a-4078-8bd2-a93ca46c19fd', '', '', '2020-11-13 21:19:19', '2020-11-13 14:19:19', '', 0, 'http://localhost/shop-cms-wordpress/?p=16', 0, 'customize_changeset', '', 0),
(24, 1, '2020-11-14 10:23:15', '2020-11-14 03:23:15', '{\n    \"cookie-cms::background_color\": {\n        \"value\": \"#e8e8e8\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-14 03:23:15\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7d3c0124-c28f-441d-88a6-c8dc5cf269c9', '', '', '2020-11-14 10:23:15', '2020-11-14 03:23:15', '', 0, 'http://localhost/shop-cms-wordpress/7d3c0124-c28f-441d-88a6-c8dc5cf269c9/', 0, 'customize_changeset', '', 0),
(23, 1, '2020-11-14 10:09:44', '2020-11-14 03:09:44', '{\n    \"cookie-cms::background_color\": {\n        \"value\": \"#2aa800\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-14 03:09:44\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '390d30c2-e76f-42fc-9f88-14d4953e080b', '', '', '2020-11-14 10:09:44', '2020-11-14 03:09:44', '', 0, 'http://localhost/shop-cms-wordpress/390d30c2-e76f-42fc-9f88-14d4953e080b/', 0, 'customize_changeset', '', 0),
(39, 1, '2020-11-14 23:46:46', '2020-11-14 16:46:46', ' ', '', '', 'publish', 'closed', 'closed', '', '39', '', '', '2020-11-20 21:07:59', '2020-11-20 14:07:59', '', 5, 'http://localhost/shop-cms-wordpress/?p=39', 2, 'nav_menu_item', '', 0),
(38, 1, '2020-11-14 23:46:46', '2020-11-14 16:46:46', '', 'Danh mục làm bánh <i class=\"fa fa-angle-down\"></i></a>', '', 'publish', 'closed', 'closed', '', '38', '', '', '2020-11-20 21:07:59', '2020-11-20 14:07:59', '', 0, 'http://localhost/shop-cms-wordpress/?p=38', 1, 'nav_menu_item', '', 0),
(25, 1, '2020-11-14 10:23:21', '2020-11-14 03:23:21', '{\n    \"cookie-cms::background_color\": {\n        \"value\": \"#e8e8e8\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-14 03:23:21\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '60785e0f-8c16-4bba-82b0-89b90f78830e', '', '', '2020-11-14 10:23:21', '2020-11-14 03:23:21', '', 0, 'http://localhost/shop-cms-wordpress/60785e0f-8c16-4bba-82b0-89b90f78830e/', 0, 'customize_changeset', '', 0),
(26, 1, '2020-11-14 13:22:28', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-11-14 13:22:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/shop-cms-wordpress/?p=26', 0, 'post', '', 0),
(27, 1, '2020-11-14 13:23:18', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-11-14 13:23:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/shop-cms-wordpress/?p=27', 0, 'post', '', 0),
(28, 1, '2020-11-14 13:39:06', '2020-11-14 06:39:06', '', 'logo-cms', '', 'inherit', 'open', 'closed', '', 'logo-cms', '', '', '2020-11-14 13:39:13', '2020-11-14 06:39:13', '', 0, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2020/11/logo-cms.png', 0, 'attachment', 'image/png', 0),
(29, 1, '2020-11-14 13:39:48', '2020-11-14 06:39:48', 'http://localhost/shop-cms-wordpress/wp-content/uploads/2020/11/cropped-logo-cms.png', 'cropped-logo-cms.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-cms-png', '', '', '2020-11-14 13:39:48', '2020-11-14 06:39:48', '', 0, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2020/11/cropped-logo-cms.png', 0, 'attachment', 'image/png', 0),
(30, 1, '2020-11-14 13:39:55', '0000-00-00 00:00:00', '{\n    \"cookie-cms::custom_logo\": {\n        \"value\": 29,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-14 06:39:55\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '37701314-af50-45cf-9472-477206c1e9dc', '', '', '2020-11-14 13:39:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/shop-cms-wordpress/?p=30', 0, 'customize_changeset', '', 0),
(31, 1, '2020-11-14 13:40:09', '2020-11-14 06:40:09', 'http://localhost/shop-cms-wordpress/wp-content/uploads/2020/11/cropped-logo-cms-1.png', 'cropped-logo-cms-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-cms-1-png', '', '', '2020-11-14 13:40:09', '2020-11-14 06:40:09', '', 0, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2020/11/cropped-logo-cms-1.png', 0, 'attachment', 'image/png', 0),
(32, 1, '2020-11-14 13:40:12', '2020-11-14 06:40:12', '{\n    \"cookie-cms::custom_logo\": {\n        \"value\": 31,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-14 06:40:12\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9617b780-6421-4684-b756-f53c45b5040b', '', '', '2020-11-14 13:40:12', '2020-11-14 06:40:12', '', 0, 'http://localhost/shop-cms-wordpress/9617b780-6421-4684-b756-f53c45b5040b/', 0, 'customize_changeset', '', 0),
(48, 1, '2020-11-15 00:37:15', '2020-11-14 17:37:15', ' ', '', '', 'publish', 'closed', 'closed', '', '48', '', '', '2020-11-20 21:07:59', '2020-11-20 14:07:59', '', 11, 'http://localhost/shop-cms-wordpress/?p=48', 11, 'nav_menu_item', '', 0),
(47, 1, '2020-11-15 00:37:15', '2020-11-14 17:37:15', ' ', '', '', 'publish', 'closed', 'closed', '', '47', '', '', '2020-11-20 21:07:59', '2020-11-20 14:07:59', '', 11, 'http://localhost/shop-cms-wordpress/?p=47', 10, 'nav_menu_item', '', 0),
(46, 1, '2020-11-15 00:37:15', '2020-11-14 17:37:15', '', 'Bánh kem lạnh new zealand', '', 'publish', 'closed', 'closed', '', '46', '', '', '2020-11-20 21:07:59', '2020-11-20 14:07:59', '', 11, 'http://localhost/shop-cms-wordpress/?p=46', 9, 'nav_menu_item', '', 0),
(45, 1, '2020-11-15 00:37:15', '2020-11-14 17:37:15', ' ', '', '', 'publish', 'closed', 'closed', '', '45', '', '', '2020-11-20 21:07:59', '2020-11-20 14:07:59', '', 11, 'http://localhost/shop-cms-wordpress/?p=45', 8, 'nav_menu_item', '', 0),
(44, 1, '2020-11-15 00:37:15', '2020-11-14 17:37:15', '', 'Bánh Kem <i class=\"fa fa-angle-down\"></i></a>', '', 'publish', 'closed', 'closed', '', '44', '', '', '2020-11-20 21:07:59', '2020-11-20 14:07:59', '', 0, 'http://localhost/shop-cms-wordpress/?p=44', 7, 'nav_menu_item', '', 0),
(40, 1, '2020-11-14 23:46:46', '2020-11-14 16:46:46', ' ', '', '', 'publish', 'closed', 'closed', '', '40', '', '', '2020-11-20 21:07:59', '2020-11-20 14:07:59', '', 5, 'http://localhost/shop-cms-wordpress/?p=40', 3, 'nav_menu_item', '', 0),
(41, 1, '2020-11-14 23:46:47', '2020-11-14 16:46:47', ' ', '', '', 'publish', 'closed', 'closed', '', '41', '', '', '2020-11-20 21:07:59', '2020-11-20 14:07:59', '', 5, 'http://localhost/shop-cms-wordpress/?p=41', 4, 'nav_menu_item', '', 0),
(42, 1, '2020-11-14 23:46:47', '2020-11-14 16:46:47', ' ', '', '', 'publish', 'closed', 'closed', '', '42', '', '', '2020-11-20 21:07:59', '2020-11-20 14:07:59', '', 5, 'http://localhost/shop-cms-wordpress/?p=42', 5, 'nav_menu_item', '', 0),
(43, 1, '2020-11-14 23:46:47', '2020-11-14 16:46:47', ' ', '', '', 'publish', 'closed', 'closed', '', '43', '', '', '2020-11-20 21:07:59', '2020-11-20 14:07:59', '', 5, 'http://localhost/shop-cms-wordpress/?p=43', 6, 'nav_menu_item', '', 0),
(49, 1, '2020-11-15 02:02:53', '0000-00-00 00:00:00', '{\n    \"cookie-cms::header_textcolor\": {\n        \"value\": \"blank\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-14 19:02:53\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'c0a126de-e890-4fbf-9159-8d4b6249b8b9', '', '', '2020-11-15 02:02:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/shop-cms-wordpress/?p=49', 0, 'customize_changeset', '', 0),
(50, 1, '2020-11-15 02:03:05', '2020-11-14 19:03:05', '{\n    \"cookie-cms::header_textcolor\": {\n        \"value\": \"blank\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-14 19:03:05\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd6d90b61-c941-45be-8aea-718e8f0a5afb', '', '', '2020-11-15 02:03:05', '2020-11-14 19:03:05', '', 0, 'http://localhost/shop-cms-wordpress/d6d90b61-c941-45be-8aea-718e8f0a5afb/', 0, 'customize_changeset', '', 0),
(51, 1, '2020-11-15 02:07:46', '2020-11-14 19:07:46', '', 'logo-cms-header', '', 'inherit', 'open', 'closed', '', 'logo-cms-header', '', '', '2020-11-15 02:07:46', '2020-11-14 19:07:46', '', 0, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2020/11/logo-cms-header.png', 0, 'attachment', 'image/png', 0),
(52, 1, '2020-11-15 02:07:56', '2020-11-14 19:07:56', '{\n    \"cookie-cms::custom_logo\": {\n        \"value\": 51,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-14 19:07:56\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6affb525-dd60-48a1-9177-7d149f544127', '', '', '2020-11-15 02:07:56', '2020-11-14 19:07:56', '', 0, 'http://localhost/shop-cms-wordpress/6affb525-dd60-48a1-9177-7d149f544127/', 0, 'customize_changeset', '', 0),
(53, 1, '2020-11-15 02:11:20', '2020-11-14 19:11:20', '{\n    \"cookie-cms::custom_logo\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-14 19:11:20\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6e1542b7-9535-4702-8381-56a2071097a4', '', '', '2020-11-15 02:11:20', '2020-11-14 19:11:20', '', 0, 'http://localhost/shop-cms-wordpress/6e1542b7-9535-4702-8381-56a2071097a4/', 0, 'customize_changeset', '', 0),
(54, 1, '2020-11-15 02:11:31', '2020-11-14 19:11:31', '{\n    \"cookie-cms::header_textcolor\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-14 19:11:31\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'eafa6d94-e038-4b86-9022-5179ffd2af0a', '', '', '2020-11-15 02:11:31', '2020-11-14 19:11:31', '', 0, 'http://localhost/shop-cms-wordpress/eafa6d94-e038-4b86-9022-5179ffd2af0a/', 0, 'customize_changeset', '', 0),
(55, 1, '2020-11-15 02:11:45', '2020-11-14 19:11:45', '{\n    \"cookie-cms::custom_logo\": {\n        \"value\": 51,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-14 19:11:45\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c513f761-03f7-4687-915c-664fa91238ee', '', '', '2020-11-15 02:11:45', '2020-11-14 19:11:45', '', 0, 'http://localhost/shop-cms-wordpress/c513f761-03f7-4687-915c-664fa91238ee/', 0, 'customize_changeset', '', 0),
(56, 1, '2020-11-15 02:17:22', '2020-11-14 19:17:22', '{\n    \"cookie-cms::custom_logo\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-14 19:17:22\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '91e3b8ac-2ee2-42cd-814d-3b07e0db5a8f', '', '', '2020-11-15 02:17:22', '2020-11-14 19:17:22', '', 0, 'http://localhost/shop-cms-wordpress/91e3b8ac-2ee2-42cd-814d-3b07e0db5a8f/', 0, 'customize_changeset', '', 0),
(57, 1, '2020-11-15 02:18:40', '2020-11-14 19:18:40', '{\n    \"cookie-cms::custom_logo\": {\n        \"value\": 51,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-14 19:18:40\"\n    },\n    \"cookie-cms::header_textcolor\": {\n        \"value\": \"blank\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-14 19:18:40\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e6bc1680-51cb-4f87-a6a8-b16fd346d18e', '', '', '2020-11-15 02:18:40', '2020-11-14 19:18:40', '', 0, 'http://localhost/shop-cms-wordpress/e6bc1680-51cb-4f87-a6a8-b16fd346d18e/', 0, 'customize_changeset', '', 0),
(58, 1, '2020-11-15 02:32:40', '2020-11-14 19:32:40', 'http://localhost/shop-cms-wordpress/wp-content/uploads/2020/11/cropped-logo-cms-header.png', 'cropped-logo-cms-header.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-cms-header-png', '', '', '2020-11-15 02:32:40', '2020-11-14 19:32:40', '', 0, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2020/11/cropped-logo-cms-header.png', 0, 'attachment', 'image/png', 0),
(59, 1, '2020-11-15 02:32:57', '2020-11-14 19:32:57', '{\n    \"cookie-cms::custom_logo\": {\n        \"value\": 58,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-14 19:32:44\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'df8c0a48-dc2a-48ee-a1f6-f324165485b7', '', '', '2020-11-15 02:32:57', '2020-11-14 19:32:57', '', 0, 'http://localhost/shop-cms-wordpress/?p=59', 0, 'customize_changeset', '', 0),
(60, 1, '2020-11-15 02:35:30', '2020-11-14 19:35:30', 'http://localhost/shop-cms-wordpress/wp-content/uploads/2020/11/cropped-logo-cms-header-1.png', 'cropped-logo-cms-header-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-cms-header-1-png', '', '', '2020-11-15 02:35:30', '2020-11-14 19:35:30', '', 0, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2020/11/cropped-logo-cms-header-1.png', 0, 'attachment', 'image/png', 0),
(61, 1, '2020-11-15 02:35:33', '2020-11-14 19:35:33', '{\n    \"cookie-cms::custom_logo\": {\n        \"value\": 60,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-14 19:35:33\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'bb5bb77f-240b-486f-9d24-9bcff2adf0b9', '', '', '2020-11-15 02:35:33', '2020-11-14 19:35:33', '', 0, 'http://localhost/shop-cms-wordpress/bb5bb77f-240b-486f-9d24-9bcff2adf0b9/', 0, 'customize_changeset', '', 0),
(62, 1, '2020-11-15 02:36:38', '2020-11-14 19:36:38', '', 'cropped-logo-cms-header-1', '', 'inherit', 'open', 'closed', '', 'cropped-logo-cms-header-1', '', '', '2020-11-15 02:36:38', '2020-11-14 19:36:38', '', 0, 'http://localhost/shop-cms-wordpress/wp-content/uploads/2020/11/cropped-logo-cms-header-1-1.png', 0, 'attachment', 'image/png', 0),
(63, 1, '2020-11-15 02:36:43', '2020-11-14 19:36:43', '{\n    \"cookie-cms::custom_logo\": {\n        \"value\": 62,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-14 19:36:43\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0f12d2c6-5cff-4da2-8d18-23a8d34e9064', '', '', '2020-11-15 02:36:43', '2020-11-14 19:36:43', '', 0, 'http://localhost/shop-cms-wordpress/0f12d2c6-5cff-4da2-8d18-23a8d34e9064/', 0, 'customize_changeset', '', 0),
(64, 1, '2020-11-15 02:37:20', '2020-11-14 19:37:20', '{\n    \"cookie-cms::custom_logo\": {\n        \"value\": 51,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-14 19:37:20\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5149e72a-f158-4014-beff-49249460f685', '', '', '2020-11-15 02:37:20', '2020-11-14 19:37:20', '', 0, 'http://localhost/shop-cms-wordpress/5149e72a-f158-4014-beff-49249460f685/', 0, 'customize_changeset', '', 0),
(65, 1, '2020-11-15 02:40:01', '2020-11-14 19:40:01', '', 'Bánh tráng <i class=\"fa fa-angle-down\"></i></a>', '', 'publish', 'closed', 'closed', '', '65', '', '', '2020-11-20 21:07:59', '2020-11-20 14:07:59', '', 0, 'http://localhost/shop-cms-wordpress/?p=65', 12, 'nav_menu_item', '', 0),
(66, 1, '2020-11-15 02:40:01', '2020-11-14 19:40:01', ' ', '', '', 'publish', 'closed', 'closed', '', '66', '', '', '2020-11-20 21:07:59', '2020-11-20 14:07:59', '', 16, 'http://localhost/shop-cms-wordpress/?p=66', 13, 'nav_menu_item', '', 0),
(67, 1, '2020-11-15 02:40:01', '2020-11-14 19:40:01', ' ', '', '', 'publish', 'closed', 'closed', '', '67', '', '', '2020-11-20 21:07:59', '2020-11-20 14:07:59', '', 16, 'http://localhost/shop-cms-wordpress/?p=67', 14, 'nav_menu_item', '', 0),
(68, 1, '2020-11-15 02:40:01', '2020-11-14 19:40:01', ' ', '', '', 'publish', 'closed', 'closed', '', '68', '', '', '2020-11-20 21:07:59', '2020-11-20 14:07:59', '', 16, 'http://localhost/shop-cms-wordpress/?p=68', 15, 'nav_menu_item', '', 0),
(69, 1, '2020-11-15 02:40:01', '2020-11-14 19:40:01', ' ', '', '', 'publish', 'closed', 'closed', '', '69', '', '', '2020-11-20 21:07:59', '2020-11-20 14:07:59', '', 16, 'http://localhost/shop-cms-wordpress/?p=69', 16, 'nav_menu_item', '', 0),
(70, 1, '2020-11-15 15:14:53', '2020-11-15 08:14:53', '<!-- wp:paragraph -->\n<p><strong>Khuôn nướng bánh cupcake chống dính 12 ô (Đen)</strong><br>một trong những dụng cụ không thể thiếu khi làm bánh cupcake. Khuôn cupcake an toàn chịu nhiệt tốt dễ dàng sử dụng.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Kích thước: DàixRộngxCao:(35cmx26cmx3cm)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Đường kính lỗ: 6,5cm, đáy:4,5</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Chất liệu:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Trọng lượng: 504g</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Mách nhỏ:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>- Khuôn làm bánh muffin và cupcake là 01 dù đó là 2 loại bánh khác nhau.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>- Lưu ý kiểm tra kích thước của lò nướng trước khi mua khuôn nhé.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>- Sản phẩm có khả năng chịu nhiệt cao dùng trong lò nướng an toàn cho người sử dụng.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Hướng dẫn sử dụng:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>- Làm bánh cupcake xong các bạn bỏ vào khuôn đã có lót sẵn cup giấy rồi cho vào lò nướng sau đó chọn thời gian và nhiệt độ thích hợp. Thế là chúng ta đã có những chiếc bánh cupcake/muffin thơm ngon để chiêu đãi bạn bè và người thân.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Lưu ý khi sử dụng:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>- Khi mua về trước khi sử dụng phải được rửa sạch, hơ trên lửa nhỏ để khô khuôn bánh</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>- Bôi một lớp bơ, dầu mỡ lên mặt khuôn<br>- Đặt vào lò nướng, nướng ở nhiệt độ 150 độ C, trong vòng 5 phút</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>- Để nguội ở nhiệt độ bình thường sau đó lau khô bằng khăn mềm</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Việc làm này giúp cho khuôn của bạn đảm bảo độ chống dính tối đa.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Đặt hàng ngay để mang đến cho gia đình, bạn bè những chiếc bánh thơm ngon nóng hổi nào!</p>\n<!-- /wp:paragraph -->', 'Combo 3 Khuôn nướng bánh cupcake chống dính 12 ô to', '', 'publish', 'open', 'open', '', '70-2', '', '', '2020-11-15 15:15:26', '2020-11-15 08:15:26', '', 0, 'http://localhost/shop-cms-wordpress/?p=70', 0, 'post', '', 0),
(71, 1, '2020-11-15 15:15:42', '2020-11-15 08:15:42', '', 'Combo 3 Khuôn nướng bánh cupcake chống dính 12 ô to', '', 'trash', 'open', 'open', '', '__trashed', '', '', '2020-11-15 15:15:42', '2020-11-15 08:15:42', '', 0, 'http://localhost/shop-cms-wordpress/?p=71', 0, 'post', '', 0),
(72, 1, '2020-11-15 15:14:53', '2020-11-15 08:14:53', '<!-- wp:paragraph -->\n<p><strong>Khuôn nướng bánh cupcake chống dính 12 ô (Đen)</strong><br>một trong những dụng cụ không thể thiếu khi làm bánh cupcake. Khuôn cupcake an toàn chịu nhiệt tốt dễ dàng sử dụng.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Kích thước: DàixRộngxCao:(35cmx26cmx3cm)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Đường kính lỗ: 6,5cm, đáy:4,5</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Chất liệu:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Trọng lượng: 504g</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Mách nhỏ:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>- Khuôn làm bánh muffin và cupcake là 01 dù đó là 2 loại bánh khác nhau.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>- Lưu ý kiểm tra kích thước của lò nướng trước khi mua khuôn nhé.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>- Sản phẩm có khả năng chịu nhiệt cao dùng trong lò nướng an toàn cho người sử dụng.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Hướng dẫn sử dụng:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>- Làm bánh cupcake xong các bạn bỏ vào khuôn đã có lót sẵn cup giấy rồi cho vào lò nướng sau đó chọn thời gian và nhiệt độ thích hợp. Thế là chúng ta đã có những chiếc bánh cupcake/muffin thơm ngon để chiêu đãi bạn bè và người thân.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Lưu ý khi sử dụng:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>- Khi mua về trước khi sử dụng phải được rửa sạch, hơ trên lửa nhỏ để khô khuôn bánh</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>- Bôi một lớp bơ, dầu mỡ lên mặt khuôn<br>- Đặt vào lò nướng, nướng ở nhiệt độ 150 độ C, trong vòng 5 phút</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>- Để nguội ở nhiệt độ bình thường sau đó lau khô bằng khăn mềm</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Việc làm này giúp cho khuôn của bạn đảm bảo độ chống dính tối đa.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Đặt hàng ngay để mang đến cho gia đình, bạn bè những chiếc bánh thơm ngon nóng hổi nào!</p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2020-11-15 15:14:53', '2020-11-15 08:14:53', '', 70, 'http://localhost/shop-cms-wordpress/70-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2020-11-15 15:15:26', '2020-11-15 08:15:26', '<!-- wp:paragraph -->\n<p><strong>Khuôn nướng bánh cupcake chống dính 12 ô (Đen)</strong><br>một trong những dụng cụ không thể thiếu khi làm bánh cupcake. Khuôn cupcake an toàn chịu nhiệt tốt dễ dàng sử dụng.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Kích thước: DàixRộngxCao:(35cmx26cmx3cm)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Đường kính lỗ: 6,5cm, đáy:4,5</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Chất liệu:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Trọng lượng: 504g</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Mách nhỏ:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>- Khuôn làm bánh muffin và cupcake là 01 dù đó là 2 loại bánh khác nhau.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>- Lưu ý kiểm tra kích thước của lò nướng trước khi mua khuôn nhé.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>- Sản phẩm có khả năng chịu nhiệt cao dùng trong lò nướng an toàn cho người sử dụng.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Hướng dẫn sử dụng:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>- Làm bánh cupcake xong các bạn bỏ vào khuôn đã có lót sẵn cup giấy rồi cho vào lò nướng sau đó chọn thời gian và nhiệt độ thích hợp. Thế là chúng ta đã có những chiếc bánh cupcake/muffin thơm ngon để chiêu đãi bạn bè và người thân.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Lưu ý khi sử dụng:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>- Khi mua về trước khi sử dụng phải được rửa sạch, hơ trên lửa nhỏ để khô khuôn bánh</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>- Bôi một lớp bơ, dầu mỡ lên mặt khuôn<br>- Đặt vào lò nướng, nướng ở nhiệt độ 150 độ C, trong vòng 5 phút</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>- Để nguội ở nhiệt độ bình thường sau đó lau khô bằng khăn mềm</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Việc làm này giúp cho khuôn của bạn đảm bảo độ chống dính tối đa.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Đặt hàng ngay để mang đến cho gia đình, bạn bè những chiếc bánh thơm ngon nóng hổi nào!</p>\n<!-- /wp:paragraph -->', 'Combo 3 Khuôn nướng bánh cupcake chống dính 12 ô to', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2020-11-15 15:15:26', '2020-11-15 08:15:26', '', 70, 'http://localhost/shop-cms-wordpress/70-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2020-11-15 15:15:42', '2020-11-15 08:15:42', '', 'Combo 3 Khuôn nướng bánh cupcake chống dính 12 ô to', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2020-11-15 15:15:42', '2020-11-15 08:15:42', '', 71, 'http://localhost/shop-cms-wordpress/71-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2020-11-15 16:40:10', '2020-11-15 09:40:10', '{\n    \"cookie-cms::header_image\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-15 09:40:10\"\n    },\n    \"cookie-cms::header_image_data\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-15 09:40:10\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9ce9b8a1-9aec-4e55-a122-7f3d2624379b', '', '', '2020-11-15 16:40:10', '2020-11-15 09:40:10', '', 0, 'http://localhost/shop-cms-wordpress/9ce9b8a1-9aec-4e55-a122-7f3d2624379b/', 0, 'customize_changeset', '', 0),
(76, 1, '2020-11-15 16:40:36', '2020-11-15 09:40:36', '{\n    \"cookie-cms::header_image\": {\n        \"value\": \"http://localhost/shop-cms-wordpress/wp-content/uploads/2020/11/logo-cms-header.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-15 09:40:36\"\n    },\n    \"cookie-cms::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/shop-cms-wordpress/wp-content/uploads/2020/11/logo-cms-header.png\",\n            \"thumbnail_url\": \"http://localhost/shop-cms-wordpress/wp-content/uploads/2020/11/logo-cms-header.png\",\n            \"timestamp\": 1605433232064,\n            \"attachment_id\": 51,\n            \"width\": 172,\n            \"height\": 55\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-15 09:40:36\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd069cc78-7a42-4886-87bf-86324bf7c29b', '', '', '2020-11-15 16:40:36', '2020-11-15 09:40:36', '', 0, 'http://localhost/shop-cms-wordpress/d069cc78-7a42-4886-87bf-86324bf7c29b/', 0, 'customize_changeset', '', 0),
(77, 1, '2020-11-15 17:30:49', '2020-11-15 10:30:49', '{\n    \"cookie-cms::background_color\": {\n        \"value\": \"#ffffff\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-15 10:30:49\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c686e739-8868-4564-8ad4-72d774b5361c', '', '', '2020-11-15 17:30:49', '2020-11-15 10:30:49', '', 0, 'http://localhost/shop-cms-wordpress/c686e739-8868-4564-8ad4-72d774b5361c/', 0, 'customize_changeset', '', 0),
(78, 1, '2020-11-15 20:19:51', '2020-11-15 13:19:51', '{\n    \"cookie-cms::custom_logo\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-15 13:19:51\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '39258ecb-95ba-4fe7-8fd0-f2ec93c31344', '', '', '2020-11-15 20:19:51', '2020-11-15 13:19:51', '', 0, 'http://localhost/shop-cms-wordpress/39258ecb-95ba-4fe7-8fd0-f2ec93c31344/', 0, 'customize_changeset', '', 0),
(79, 1, '2020-11-15 20:19:59', '2020-11-15 13:19:59', '{\n    \"cookie-cms::custom_logo\": {\n        \"value\": 51,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-15 13:19:59\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c033c674-a495-495c-bcaf-3a7e99e88cd1', '', '', '2020-11-15 20:19:59', '2020-11-15 13:19:59', '', 0, 'http://localhost/shop-cms-wordpress/c033c674-a495-495c-bcaf-3a7e99e88cd1/', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hk5_termmeta`
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hk5_terms`
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
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hk5_terms`
--

INSERT INTO `hk5_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(4, 'Header menu', 'header-menu', 0),
(5, 'Danh mục làm bánh', 'danh-muc-lam-banh', 0),
(6, 'Nguyên liệu làm bánh', 'nguyen-lieu-lam-banh', 0),
(7, 'Dụng cụ làm bánh', 'dung-cu-lam-banh', 0),
(8, 'Khay khuôn làm bánh', 'khay-khuon-lam-banh', 0),
(9, 'Combo Đồ Làm Bánh', 'combo-do-lam-banh', 0),
(10, 'Túi, Khay, hộp đựng bánh', 'tui-khay-hop-dung-banh', 0),
(11, 'Bánh Kem', 'banh-kem', 0),
(12, 'Bánh kem bơ trong', 'banh-kem-bo-trong', 0),
(13, 'BÁNH KEM NEW ZEALAND', 'banh-kem-lanh-new-zealand', 0),
(14, 'BÁNH KEM SỮA TƯƠI', 'banh-kem-sua-tuoi', 0),
(15, 'BÁNH SỰ KIỆN, TIỆC TEABREA', 'banh-su-kien-tiec-teabrea', 0),
(16, 'Bánh tráng', 'banh-trang', 0),
(17, 'Bánh tráng trộn', 'banh-trang-tron', 0),
(18, 'Bánh tráng bịch', 'banh-trang-bich', 0),
(19, 'Bánh tráng cuốn', 'banh-trang-cuon', 0),
(20, 'Bánh tráng Tây Ninh', 'banh-trang-tay-ninh', 0),
(21, 'Làm Bánh', 'lam-banh', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hk5_term_relationships`
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
-- Đang đổ dữ liệu cho bảng `hk5_term_relationships`
--

INSERT INTO `hk5_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(44, 4, 0),
(45, 4, 0),
(46, 4, 0),
(47, 4, 0),
(48, 4, 0),
(39, 4, 0),
(38, 4, 0),
(40, 4, 0),
(41, 4, 0),
(42, 4, 0),
(43, 4, 0),
(65, 4, 0),
(66, 4, 0),
(67, 4, 0),
(68, 4, 0),
(69, 4, 0),
(71, 1, 0),
(70, 21, 0),
(70, 8, 0),
(70, 5, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hk5_term_taxonomy`
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
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hk5_term_taxonomy`
--

INSERT INTO `hk5_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(4, 4, 'nav_menu', '', 0, 16),
(5, 5, 'category', '', 0, 1),
(6, 6, 'category', '', 5, 0),
(7, 7, 'category', '', 5, 0),
(8, 8, 'category', '', 5, 1),
(9, 9, 'category', '', 5, 0),
(10, 10, 'category', '', 5, 0),
(11, 11, 'category', '', 0, 0),
(12, 12, 'category', '', 11, 0),
(13, 13, 'category', '', 11, 0),
(14, 14, 'category', '', 11, 0),
(15, 15, 'category', '', 11, 0),
(16, 16, 'category', '', 0, 0),
(17, 17, 'category', '', 16, 0),
(18, 18, 'category', '', 16, 0),
(19, 19, 'category', '', 16, 0),
(20, 20, 'category', '', 16, 0),
(21, 21, 'post_tag', '', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hk5_usermeta`
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
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hk5_usermeta`
--

INSERT INTO `hk5_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
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
(20, 1, 'session_tokens', 'a:3:{s:64:\"8170fd5737029a24bf75efcd157a3d8ede3303aa6a5e564a1d6da18332295da1\";a:4:{s:10:\"expiration\";i:1605845410;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36\";s:5:\"login\";i:1605672610;}s:64:\"e5d7197dd4d3d388d0a1f84b8fd674986bbc24ef18d56828fa58511773c304c1\";a:4:{s:10:\"expiration\";i:1605942634;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36\";s:5:\"login\";i:1605769834;}s:64:\"ea37c74f3d1518b6ce7a3518b9276609e37f7ea3a8f959553e70f435ac611d70\";a:4:{s:10:\"expiration\";i:1607030530;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36\";s:5:\"login\";i:1605820930;}}'),
(17, 1, 'hk5_user-settings', 'libraryContent=browse&editor=tinymce&posts_list_mode=list&mfold=o&advImgDetails=show'),
(18, 1, 'hk5_user-settings-time', '1605427901'),
(19, 1, 'hk5_dashboard_quick_press_last_post_id', '80'),
(21, 1, 'community-events-location', 'a:4:{s:11:\"description\";s:11:\"Ho Chi Minh\";s:8:\"latitude\";s:10:\"10.8230200\";s:9:\"longitude\";s:11:\"106.6296500\";s:7:\"country\";s:2:\"VN\";}'),
(22, 1, 'nav_menu_recently_edited', '4'),
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
(39, 2, 'default_password_nag', '1'),
(40, 1, 'meta-box-order_dashboard', 'a:4:{s:6:\"normal\";s:41:\"dashboard_site_health,dashboard_right_now\";s:4:\"side\";s:21:\"dashboard_quick_press\";s:7:\"column3\";s:17:\"dashboard_primary\";s:7:\"column4\";s:18:\"dashboard_activity\";}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hk5_users`
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
-- Đang đổ dữ liệu cho bảng `hk5_users`
--

INSERT INTO `hk5_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BtPHUVhxrmLx3RmVgzn/MCR05NncWk0', 'admin', 'phuongtan12357nguyen@gmail.com', 'http://localhost/shop-cms-wordpress', '2020-11-12 13:31:11', '', 0, 'admin'),
(2, 'enasd', '$P$BMuDKE5kFn1jRHL69IVzLjbOiF5pe2/', 'enasd', 'phuongtan12357@gmail.com', '', '2020-11-15 07:24:02', '1605425043:$P$Bief1MABD9Pi42PPy/0RzDicqV99YW/', 0, 'enasd');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
