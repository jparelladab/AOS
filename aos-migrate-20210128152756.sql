# WordPress MySQL database migration
#
# Generated: Thursday 28. January 2021 15:27 UTC
# Hostname: localhost:3308
# Database: `aos`
# URL: //localhost:81/AOS
# Path: C:\\MAMP\\htdocs\\AOS
# Tables: wp_commentmeta, wp_comments, wp_links, wp_options, wp_postmeta, wp_posts, wp_term_relationships, wp_term_taxonomy, wp_termmeta, wp_terms, wp_usermeta, wp_users
# Table Prefix: wp_
# Post Types: revision, acf-field, acf-field-group, attachment, customize_changeset, gears, nav_menu_item, page, post, projects
# Protocol: http
# Multisite: false
# Subsite Export: false
# --------------------------------------------------------

/*!40101 SET NAMES utf8 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wp_commentmeta`
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Table structure of table `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_commentmeta`
#

#
# End of data contents of table `wp_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_comments`
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Table structure of table `wp_comments`
#

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_comments`
#
INSERT INTO `wp_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un comentarista del WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-01-26 12:09:34', '2021-01-26 10:09:34', 'Hola, això és un comentari.\nPer començar a moderar, editar i suprimir comentaris, visiteu la pantalla dels comentaris al tauler.\nEls avatars dels comentaris vénen des del <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', 'comment', 0, 0) ;

#
# End of data contents of table `wp_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_links`
#

DROP TABLE IF EXISTS `wp_links`;


#
# Table structure of table `wp_links`
#

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_links`
#

#
# End of data contents of table `wp_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_options`
#

DROP TABLE IF EXISTS `wp_options`;


#
# Table structure of table `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:81/AOS', 'yes'),
(2, 'home', 'http://localhost:81/AOS', 'yes'),
(3, 'blogname', 'AOS', 'yes'),
(4, 'blogdescription', 'Un altre lloc gestionat amb el WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'joan.parellada@maneko.es', 'yes'),
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
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'G:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y G:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:171:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:17:"^wp-sitemap\\.xml$";s:23:"index.php?sitemap=index";s:17:"^wp-sitemap\\.xsl$";s:36:"index.php?sitemap-stylesheet=sitemap";s:23:"^wp-sitemap-index\\.xsl$";s:34:"index.php?sitemap-stylesheet=index";s:48:"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$";s:75:"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]";s:34:"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$";s:47:"index.php?sitemap=$matches[1]&paged=$matches[2]";s:8:"gears/?$";s:25:"index.php?post_type=gears";s:38:"gears/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?post_type=gears&feed=$matches[1]";s:33:"gears/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?post_type=gears&feed=$matches[1]";s:25:"gears/page/([0-9]{1,})/?$";s:43:"index.php?post_type=gears&paged=$matches[1]";s:11:"projects/?$";s:28:"index.php?post_type=projects";s:41:"projects/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?post_type=projects&feed=$matches[1]";s:36:"projects/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?post_type=projects&feed=$matches[1]";s:28:"projects/page/([0-9]{1,})/?$";s:46:"index.php?post_type=projects&paged=$matches[1]";s:14:"custom_type/?$";s:31:"index.php?post_type=custom_type";s:44:"custom_type/feed/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=custom_type&feed=$matches[1]";s:39:"custom_type/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=custom_type&feed=$matches[1]";s:31:"custom_type/page/([0-9]{1,})/?$";s:49:"index.php?post_type=custom_type&paged=$matches[1]";s:52:"custom-slug/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?custom_cat=$matches[1]&feed=$matches[2]";s:47:"custom-slug/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?custom_cat=$matches[1]&feed=$matches[2]";s:28:"custom-slug/([^/]+)/embed/?$";s:43:"index.php?custom_cat=$matches[1]&embed=true";s:40:"custom-slug/([^/]+)/page/?([0-9]{1,})/?$";s:50:"index.php?custom_cat=$matches[1]&paged=$matches[2]";s:22:"custom-slug/([^/]+)/?$";s:32:"index.php?custom_cat=$matches[1]";s:51:"custom_tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?custom_tag=$matches[1]&feed=$matches[2]";s:46:"custom_tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?custom_tag=$matches[1]&feed=$matches[2]";s:27:"custom_tag/([^/]+)/embed/?$";s:43:"index.php?custom_tag=$matches[1]&embed=true";s:39:"custom_tag/([^/]+)/page/?([0-9]{1,})/?$";s:50:"index.php?custom_tag=$matches[1]&paged=$matches[2]";s:21:"custom_tag/([^/]+)/?$";s:32:"index.php?custom_tag=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:33:"gears/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:43:"gears/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:63:"gears/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"gears/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"gears/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:39:"gears/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:22:"gears/([^/]+)/embed/?$";s:38:"index.php?gears=$matches[1]&embed=true";s:26:"gears/([^/]+)/trackback/?$";s:32:"index.php?gears=$matches[1]&tb=1";s:46:"gears/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?gears=$matches[1]&feed=$matches[2]";s:41:"gears/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?gears=$matches[1]&feed=$matches[2]";s:34:"gears/([^/]+)/page/?([0-9]{1,})/?$";s:45:"index.php?gears=$matches[1]&paged=$matches[2]";s:41:"gears/([^/]+)/comment-page-([0-9]{1,})/?$";s:45:"index.php?gears=$matches[1]&cpage=$matches[2]";s:30:"gears/([^/]+)(?:/([0-9]+))?/?$";s:44:"index.php?gears=$matches[1]&page=$matches[2]";s:22:"gears/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:32:"gears/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:52:"gears/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:47:"gears/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:47:"gears/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:28:"gears/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:36:"projects/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"projects/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"projects/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"projects/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"projects/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:42:"projects/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:25:"projects/([^/]+)/embed/?$";s:41:"index.php?projects=$matches[1]&embed=true";s:29:"projects/([^/]+)/trackback/?$";s:35:"index.php?projects=$matches[1]&tb=1";s:49:"projects/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?projects=$matches[1]&feed=$matches[2]";s:44:"projects/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?projects=$matches[1]&feed=$matches[2]";s:37:"projects/([^/]+)/page/?([0-9]{1,})/?$";s:48:"index.php?projects=$matches[1]&paged=$matches[2]";s:44:"projects/([^/]+)/comment-page-([0-9]{1,})/?$";s:48:"index.php?projects=$matches[1]&cpage=$matches[2]";s:33:"projects/([^/]+)(?:/([0-9]+))?/?$";s:47:"index.php?projects=$matches[1]&page=$matches[2]";s:25:"projects/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:35:"projects/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:55:"projects/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"projects/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"projects/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:31:"projects/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:39:"custom_type/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:49:"custom_type/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:69:"custom_type/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"custom_type/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"custom_type/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:45:"custom_type/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:28:"custom_type/([^/]+)/embed/?$";s:44:"index.php?custom_type=$matches[1]&embed=true";s:32:"custom_type/([^/]+)/trackback/?$";s:38:"index.php?custom_type=$matches[1]&tb=1";s:52:"custom_type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?custom_type=$matches[1]&feed=$matches[2]";s:47:"custom_type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?custom_type=$matches[1]&feed=$matches[2]";s:40:"custom_type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?custom_type=$matches[1]&paged=$matches[2]";s:47:"custom_type/([^/]+)/comment-page-([0-9]{1,})/?$";s:51:"index.php?custom_type=$matches[1]&cpage=$matches[2]";s:36:"custom_type/([^/]+)(?:/([0-9]+))?/?$";s:50:"index.php?custom_type=$matches[1]&page=$matches[2]";s:28:"custom_type/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:38:"custom_type/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:58:"custom_type/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"custom_type/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"custom_type/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:34:"custom_type/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=44&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:34:"advanced-custom-fields-pro/acf.php";i:1;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '2', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'AOS', 'yes'),
(41, 'stylesheet', 'AOS', 'yes'),
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
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '44', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1627207773', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'initial_db_version', '49752', 'yes'),
(99, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(100, 'fresh_site', '0', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'WPLANG', 'ca', 'yes'),
(102, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:3:{i:0;s:10:"archives-2";i:1;s:12:"categories-2";i:2;s:6:"meta-2";}s:8:"sidebar1";a:3:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";}s:13:"array_version";i:3;}', 'yes'),
(108, 'cron', 'a:7:{i:1611850175;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1611871775;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1611914974;a:1:{s:32:"recovery_mode_clean_expired_keys";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1611915535;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1611915565;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1612346974;a:1:{s:30:"wp_site_health_scheduled_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}s:7:"version";i:2;}', 'yes'),
(109, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(113, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(114, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(115, 'nonce_key', ';KNasWz[&3Hr~XUd-+}r#f*Gh0q&Lvi5DpbH8&v}W[5v{k1zHiXbv!rY3bLrBA6Z', 'no'),
(116, 'nonce_salt', '!Bx+t]alrgbc%X8w2eV>|MXS6rn{FT]>SV^~Z?u?St@0)8#W.ol6;E8GGY2qUvXa', 'no'),
(117, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(118, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(119, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(121, 'recovery_keys', 'a:0:{}', 'yes'),
(129, 'auth_key', '~q=j*$J@JH,N9hBq-vyv6hLeYI01dL>:s=qz`I;SU7b8)k>AD1ffa6A%E}aQF`yN', 'no'),
(130, 'auth_salt', 'CN[&XJ;g~ j/]u_7fyyL=WZv0:R#mETJ},E_vg1~)Ek~3Nb)+>rZt~AC-D}aS{:&', 'no'),
(131, 'logged_in_key', 'i/^x;CnMO|+A }3mM*#L._0OR&Q :jhy3=%<0QDZ5q*5]Mtcc%6C6BnW1=,d|W:>', 'no'),
(132, 'logged_in_salt', 'awJ9B|68 Y<2UtP]W}:=r$p;g/le~^/zxwL)AkgH&:IdV}[04?k&VlIltlbn$zYW', 'no'),
(140, 'can_compress_scripts', '0', 'no'),
(155, 'finished_updating_comment_type', '1', 'yes'),
(156, 'recently_activated', 'a:0:{}', 'yes'),
(158, 'acf_version', '5.9.1', 'yes'),
(160, 'theme_mods_twentytwentyone', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1611657085;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";}s:9:"sidebar-2";a:3:{i:0;s:10:"archives-2";i:1;s:12:"categories-2";i:2;s:6:"meta-2";}}}}', 'yes'),
(161, 'current_theme', 'Bones (Rename Me!)', 'yes'),
(162, 'theme_mods_AOS', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;}', 'yes'),
(163, 'theme_switched', '', 'yes'),
(167, 'category_children', 'a:0:{}', 'yes'),
(179, 'wpmdb_usage', 'a:2:{s:6:"action";s:8:"savefile";s:4:"time";i:1611847676;}', 'no'),
(208, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes') ;

#
# End of data contents of table `wp_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_postmeta`
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Table structure of table `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1611844164:1'),
(4, 7, '_edit_last', '1'),
(5, 7, '_edit_lock', '1611657044:1'),
(6, 9, '_edit_last', '1'),
(7, 9, '_edit_lock', '1611657058:1'),
(8, 10, '_edit_last', '1'),
(9, 10, '_edit_lock', '1611657069:1'),
(10, 11, '_edit_last', '1'),
(11, 11, '_edit_lock', '1611657077:1'),
(12, 12, '_edit_last', '1'),
(13, 12, '_edit_lock', '1611657084:1'),
(14, 13, '_edit_last', '1'),
(15, 13, '_edit_lock', '1611657091:1'),
(16, 14, '_edit_last', '1'),
(17, 14, '_edit_lock', '1611660545:1'),
(18, 15, '_edit_last', '1'),
(19, 15, '_edit_lock', '1611657105:1'),
(20, 16, '_edit_last', '1'),
(21, 16, '_edit_lock', '1611657148:1'),
(22, 17, '_edit_lock', '1611657249:1'),
(23, 19, '_edit_lock', '1611844152:1'),
(24, 2, '_wp_trash_meta_status', 'publish'),
(25, 2, '_wp_trash_meta_time', '1611657416'),
(26, 2, '_wp_desired_post_slug', 'pagina-exemple'),
(27, 3, '_edit_lock', '1611657285:1'),
(28, 22, '_edit_last', '1'),
(29, 22, '_edit_lock', '1611657311:1'),
(30, 23, '_edit_last', '1'),
(31, 23, '_edit_lock', '1611657326:1'),
(32, 24, '_edit_last', '1'),
(33, 24, '_edit_lock', '1611657336:1'),
(34, 25, '_edit_last', '1'),
(35, 25, '_edit_lock', '1611657341:1'),
(36, 26, '_edit_last', '1'),
(37, 26, '_edit_lock', '1611657352:1'),
(38, 27, '_edit_last', '1'),
(39, 27, '_edit_lock', '1611657365:1'),
(40, 28, '_edit_last', '1'),
(41, 28, '_edit_lock', '1611657450:1'),
(42, 29, '_edit_last', '1'),
(43, 29, '_edit_lock', '1611830207:1'),
(44, 30, '_edit_last', '1'),
(45, 30, '_edit_lock', '1611657465:1'),
(46, 31, '_edit_last', '1'),
(47, 31, '_edit_lock', '1611657471:1'),
(48, 32, '_edit_last', '1'),
(49, 32, '_edit_lock', '1611657478:1'),
(50, 33, '_edit_last', '1'),
(51, 33, '_edit_lock', '1611847524:1'),
(52, 34, '_edit_last', '1'),
(53, 34, '_edit_lock', '1611837077:1'),
(54, 35, '_edit_last', '1'),
(55, 35, '_edit_lock', '1611844147:1'),
(56, 43, '_customize_restore_dismissed', '1'),
(57, 44, '_edit_lock', '1611835114:1'),
(58, 46, '_wp_trash_meta_status', 'publish'),
(59, 46, '_wp_trash_meta_time', '1611829340'),
(60, 47, '_wp_attached_file', '2021/01/blanche.jpg'),
(61, 47, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:280;s:6:"height";i:158;s:4:"file";s:19:"2021/01/blanche.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"blanche-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:15:"bones-thumb-600";a:4:{s:4:"file";s:19:"blanche-280x150.jpg";s:5:"width";i:280;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:15:"bones-thumb-300";a:4:{s:4:"file";s:19:"blanche-280x100.jpg";s:5:"width";i:280;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:19:"blanche-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(62, 48, '_wp_attached_file', '2021/01/fcb.jpg'),
(63, 48, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:662;s:4:"file";s:15:"2021/01/fcb.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:15:"fcb-300x199.jpg";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:15:"fcb-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:15:"fcb-768x508.jpg";s:5:"width";i:768;s:6:"height";i:508;s:9:"mime-type";s:10:"image/jpeg";}s:15:"bones-thumb-600";a:4:{s:4:"file";s:15:"fcb-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:15:"bones-thumb-300";a:4:{s:4:"file";s:15:"fcb-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:15:"fcb-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(64, 49, '_wp_attached_file', '2021/01/me-pelea.jpg'),
(65, 49, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:996;s:6:"height";i:679;s:4:"file";s:20:"2021/01/me-pelea.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:20:"me-pelea-300x205.jpg";s:5:"width";i:300;s:6:"height";i:205;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:20:"me-pelea-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"me-pelea-768x524.jpg";s:5:"width";i:768;s:6:"height";i:524;s:9:"mime-type";s:10:"image/jpeg";}s:15:"bones-thumb-600";a:4:{s:4:"file";s:20:"me-pelea-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:15:"bones-thumb-300";a:4:{s:4:"file";s:20:"me-pelea-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:20:"me-pelea-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(66, 50, '_wp_attached_file', '2021/01/nit-i-ida.jpg'),
(67, 50, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:320;s:6:"height";i:180;s:4:"file";s:21:"2021/01/nit-i-ida.jpg";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:21:"nit-i-ida-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:21:"nit-i-ida-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:15:"bones-thumb-600";a:4:{s:4:"file";s:21:"nit-i-ida-320x150.jpg";s:5:"width";i:320;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:15:"bones-thumb-300";a:4:{s:4:"file";s:21:"nit-i-ida-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:21:"nit-i-ida-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(68, 51, '_wp_attached_file', '2021/01/puma.png'),
(69, 51, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1582;s:6:"height";i:1080;s:4:"file";s:16:"2021/01/puma.png";s:5:"sizes";a:8:{s:6:"medium";a:4:{s:4:"file";s:16:"puma-300x205.png";s:5:"width";i:300;s:6:"height";i:205;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:17:"puma-1024x699.png";s:5:"width";i:1024;s:6:"height";i:699;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:16:"puma-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:16:"puma-768x524.png";s:5:"width";i:768;s:6:"height";i:524;s:9:"mime-type";s:9:"image/png";}s:9:"1536x1536";a:4:{s:4:"file";s:18:"puma-1536x1049.png";s:5:"width";i:1536;s:6:"height";i:1049;s:9:"mime-type";s:9:"image/png";}s:15:"bones-thumb-600";a:4:{s:4:"file";s:16:"puma-600x150.png";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:15:"bones-thumb-300";a:4:{s:4:"file";s:16:"puma-300x100.png";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:16:"puma-125x125.png";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(70, 52, '_wp_attached_file', '2021/01/summertime.png'),
(71, 52, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:260;s:6:"height";i:146;s:4:"file";s:22:"2021/01/summertime.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"summertime-150x146.png";s:5:"width";i:150;s:6:"height";i:146;s:9:"mime-type";s:9:"image/png";}s:15:"bones-thumb-300";a:4:{s:4:"file";s:22:"summertime-260x100.png";s:5:"width";i:260;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:22:"summertime-125x125.png";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(72, 53, '_wp_attached_file', '2021/01/tangana.jpg'),
(73, 53, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1150;s:6:"height";i:762;s:4:"file";s:19:"2021/01/tangana.jpg";s:5:"sizes";a:7:{s:6:"medium";a:4:{s:4:"file";s:19:"tangana-300x199.jpg";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:20:"tangana-1024x679.jpg";s:5:"width";i:1024;s:6:"height";i:679;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:19:"tangana-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"tangana-768x509.jpg";s:5:"width";i:768;s:6:"height";i:509;s:9:"mime-type";s:10:"image/jpeg";}s:15:"bones-thumb-600";a:4:{s:4:"file";s:19:"tangana-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:15:"bones-thumb-300";a:4:{s:4:"file";s:19:"tangana-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:19:"tangana-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(74, 54, '_edit_last', '1'),
(75, 54, '_edit_lock', '1611833017:1'),
(76, 44, '_edit_last', '1'),
(77, 44, 'images_0_image', '53'),
(78, 44, '_images_0_image', 'field_6012948ebb701'),
(79, 44, 'images_1_image', '52'),
(80, 44, '_images_1_image', 'field_6012948ebb701'),
(81, 44, 'images_2_image', '51'),
(82, 44, '_images_2_image', 'field_6012948ebb701'),
(83, 44, 'images_3_image', '50'),
(84, 44, '_images_3_image', 'field_6012948ebb701'),
(85, 44, 'images_4_image', '49'),
(86, 44, '_images_4_image', 'field_6012948ebb701'),
(87, 44, 'images_5_image', '48'),
(88, 44, '_images_5_image', 'field_6012948ebb701'),
(89, 44, 'images_6_image', '47'),
(90, 44, '_images_6_image', 'field_6012948ebb701'),
(91, 44, 'images', '8'),
(92, 44, '_images', 'field_6012945cbb700'),
(93, 57, 'images_0_image', '53'),
(94, 57, '_images_0_image', 'field_6012948ebb701'),
(95, 57, 'images_1_image', '52'),
(96, 57, '_images_1_image', 'field_6012948ebb701'),
(97, 57, 'images_2_image', '51'),
(98, 57, '_images_2_image', 'field_6012948ebb701'),
(99, 57, 'images_3_image', '50'),
(100, 57, '_images_3_image', 'field_6012948ebb701') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(101, 57, 'images_4_image', '49'),
(102, 57, '_images_4_image', 'field_6012948ebb701'),
(103, 57, 'images_5_image', '48'),
(104, 57, '_images_5_image', 'field_6012948ebb701'),
(105, 57, 'images_6_image', '47'),
(106, 57, '_images_6_image', 'field_6012948ebb701'),
(107, 57, 'images', '7'),
(108, 57, '_images', 'field_6012945cbb700'),
(109, 59, '_wp_attached_file', '2021/01/ocean.jpg'),
(110, 59, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:450;s:4:"file";s:17:"2021/01/ocean.jpg";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:17:"ocean-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:17:"ocean-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:15:"bones-thumb-600";a:4:{s:4:"file";s:17:"ocean-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:15:"bones-thumb-300";a:4:{s:4:"file";s:17:"ocean-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:17:"ocean-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"3.5";s:6:"credit";s:0:"";s:6:"camera";s:20:"Canon PowerShot S400";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1126868175";s:9:"copyright";s:0:"";s:12:"focal_length";s:6:"12.875";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:5:"0.004";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(111, 44, 'images_0_text', 'C. Tangana — Bien Duro'),
(112, 44, '_images_0_text', 'field_60129f2a80114'),
(113, 44, 'images_1_text', 'Keef Palas - SS18 Summertime'),
(114, 44, '_images_1_text', 'field_60129f2a80114'),
(115, 44, 'images_2_text', 'The Uprising of Afrojuice 195  x PUMA'),
(116, 44, '_images_2_text', 'field_60129f2a80114'),
(117, 44, 'images_3_text', 'Nit i dia'),
(118, 44, '_images_3_text', 'field_60129f2a80114'),
(119, 44, 'images_4_text', 'Me Pelea — Dellafuente'),
(120, 44, '_images_4_text', 'field_60129f2a80114'),
(121, 44, 'images_5_text', 'Nike x FC Barcelona'),
(122, 44, '_images_5_text', 'field_60129f2a80114'),
(123, 44, 'images_6_text', 'Wrong Turn — Blanche'),
(124, 44, '_images_6_text', 'field_60129f2a80114'),
(125, 44, 'images_7_image', '59'),
(126, 44, '_images_7_image', 'field_6012948ebb701'),
(127, 44, 'images_7_text', 'Nike Air Max'),
(128, 44, '_images_7_text', 'field_60129f2a80114'),
(129, 60, 'images_0_image', '53'),
(130, 60, '_images_0_image', 'field_6012948ebb701'),
(131, 60, 'images_1_image', '52'),
(132, 60, '_images_1_image', 'field_6012948ebb701'),
(133, 60, 'images_2_image', '51'),
(134, 60, '_images_2_image', 'field_6012948ebb701'),
(135, 60, 'images_3_image', '50'),
(136, 60, '_images_3_image', 'field_6012948ebb701'),
(137, 60, 'images_4_image', '49'),
(138, 60, '_images_4_image', 'field_6012948ebb701'),
(139, 60, 'images_5_image', '48'),
(140, 60, '_images_5_image', 'field_6012948ebb701'),
(141, 60, 'images_6_image', '47'),
(142, 60, '_images_6_image', 'field_6012948ebb701'),
(143, 60, 'images', '8'),
(144, 60, '_images', 'field_6012945cbb700'),
(145, 60, 'images_0_text', 'C. Tangana — Bien Duro'),
(146, 60, '_images_0_text', 'field_60129f2a80114'),
(147, 60, 'images_1_text', 'Keef Palas - SS18 Summertime'),
(148, 60, '_images_1_text', 'field_60129f2a80114'),
(149, 60, 'images_2_text', 'The Uprising of Afrojuice 195  x PUMA'),
(150, 60, '_images_2_text', 'field_60129f2a80114'),
(151, 60, 'images_3_text', 'Nit i dia'),
(152, 60, '_images_3_text', 'field_60129f2a80114'),
(153, 60, 'images_4_text', 'Me Pelea — Dellafuente'),
(154, 60, '_images_4_text', 'field_60129f2a80114'),
(155, 60, 'images_5_text', 'Nike x FC Barcelona'),
(156, 60, '_images_5_text', 'field_60129f2a80114'),
(157, 60, 'images_6_text', 'Wrong Turn — Blanche'),
(158, 60, '_images_6_text', 'field_60129f2a80114'),
(159, 60, 'images_7_image', '59'),
(160, 60, '_images_7_image', 'field_6012948ebb701'),
(161, 60, 'images_7_text', 'Nike Air Max'),
(162, 60, '_images_7_text', 'field_60129f2a80114'),
(163, 61, '_edit_last', '1'),
(164, 61, '_edit_lock', '1611844118:1'),
(165, 65, '_edit_last', '1'),
(166, 65, '_edit_lock', '1611836391:1'),
(167, 75, '_menu_item_type', 'post_type'),
(168, 75, '_menu_item_menu_item_parent', '0'),
(169, 75, '_menu_item_object_id', '17'),
(170, 75, '_menu_item_object', 'page'),
(171, 75, '_menu_item_target', ''),
(172, 75, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(173, 75, '_menu_item_xfn', ''),
(174, 75, '_menu_item_url', ''),
(176, 76, '_menu_item_type', 'post_type_archive'),
(177, 76, '_menu_item_menu_item_parent', '0'),
(178, 76, '_menu_item_object_id', '-39'),
(179, 76, '_menu_item_object', 'projects'),
(180, 76, '_menu_item_target', ''),
(181, 76, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(182, 76, '_menu_item_xfn', ''),
(183, 76, '_menu_item_url', ''),
(185, 77, '_menu_item_type', 'post_type_archive'),
(186, 77, '_menu_item_menu_item_parent', '0'),
(187, 77, '_menu_item_object_id', '-16'),
(188, 77, '_menu_item_object', 'gears'),
(189, 77, '_menu_item_target', ''),
(190, 77, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(191, 77, '_menu_item_xfn', ''),
(192, 77, '_menu_item_url', ''),
(194, 5, '_wp_trash_meta_status', 'publish'),
(195, 5, '_wp_trash_meta_time', '1611844316'),
(196, 5, '_wp_desired_post_slug', 'my-gear'),
(197, 19, '_wp_trash_meta_status', 'publish'),
(198, 19, '_wp_trash_meta_time', '1611844316'),
(199, 19, '_wp_desired_post_slug', 'work') ;

#
# End of data contents of table `wp_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_posts`
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Table structure of table `wp_posts`
#

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-01-26 12:09:34', '2021-01-26 10:09:34', '<!-- wp:paragraph -->\n<p>Benvinguts al WordPress. Aquest és la primera entrada. Editeu-la o suprimiu-la, i aleshores comenceu a escriure!</p>\n<!-- /wp:paragraph -->', 'Hola, món!', '', 'publish', 'open', 'open', '', 'hola-mon', '', '', '2021-01-26 12:09:34', '2021-01-26 10:09:34', '', 0, 'http://localhost:81/AOS/?p=1', 0, 'post', '', 1),
(2, 1, '2021-01-26 12:09:34', '2021-01-26 10:09:34', '<!-- wp:paragraph -->\n<p>Aquest és una pàgina d\'exemple. És diferent d\'una entrada del blog perquè es mantindrà en un lloc i apareixerà a la navegació del lloc (a la majoria de temes). Molta gent comença amb la pàgina «Quant a», que els presenta als potencials visitants del lloc web. Podria dir alguna cosa així:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Hola! Sóc un missatger amb bicicleta de dia, aspirant a actor de nit i aquesta és la meva web. Visc a Los Angeles, tinc un gran gos de nom Pep i m\'agrada la pinya colada. (I em pillarà la pluja.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... o alguna cosa així:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>La companyia Aparells XYZ es va crear el 1971, i ha estat proporcionant aparells de qualitat al públic des de llavors. Ubicada a Gotham City, XYZ dóna treball a més de 2.000 persones i fa tota mena d\'accions meravelloses per a la comunitat de Gotham.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Com a usuari nou del WordPress, hauríeu d\'anar al <a href="http://localhost:81/AOS/wp-admin/">tauler</a> per suprimir aquesta pàgina i crear pàgines noves de contingut. Divertiu-vos!</p>\n<!-- /wp:paragraph -->', 'Pàgina d\'exemple', '', 'trash', 'closed', 'open', '', 'pagina-exemple__trashed', '', '', '2021-01-26 12:36:56', '2021-01-26 10:36:56', '', 0, 'http://localhost:81/AOS/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-01-26 12:09:34', '2021-01-26 10:09:34', '<!-- wp:heading --><h2>Qui som</h2><!-- /wp:heading --><!-- wp:paragraph --><p>La nostra adreça web és: http://localhost:81/AOS.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quines dades personals recollim i per què</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Comentaris</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Quan els visitants deixen comentaris a la web, recollim les dades que es mostren al formulari de contacte, així com l\'adreça IP del visitant i la cadena de l\'agent de l\'usuari del navegador per ajudar a la detecció de missatges brossa.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Una cadena anonimitzada creada a partir del correu electrònic (també anomenat un hash) pot proporcionar-se al servei Gravatar per veure si l\'esteu usant. La política de privadesa del servei Gravatar està disponible aquí: https://automattic.com/privacy/. Una vegada aprovat el comentari, la imatge del vostre perfil és visible al públic al context del comentari.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Mèdia</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si pugeu imatges al lloc web, heu d\'evitar pujar imatges que incloguin dades de geolocalització (EXIF GPS) incrustades. Els visitants del lloc web poden descarregar i extreure qualsevol informació de les imatges de la web.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Formularis de contacte</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Galetes</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si deixeu un comentari en la pàgina web, podeu optar per desar el nom, l\'adreça de correu electrònic i la pàgina web en les galetes. Això és per la vostra comoditat perquè no hàgeu d\'emplenar les dades de nou quan feu un altre comentari. Aquestes galetes duraran un any.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si teniu un compte i inicieu sessió en aquesta pàgina web, es definirà una galeta temporal per determinar si el navegador accepta galetes. Aquesta galeta no conté dades personals i es descartarà quan tanqueu el navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Quan inicieu sessió, també es configuraran diverses galetes per desar la informació d\'inici de sessió i les opcions de visualització de la pantalla. Les galeres d\'inici de sessió duren dos dies, i les galetes de les opcions de pantalla duren un any. Si seleccioneu &quot;Recordeu-me&quot;, l\'inici de sessió persistirà durant dues setmanes. Si finalitzeu la sessió, les galetes d\'inici de sessió seran suprimides.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si editeu o publiqueu un article, una galeta addicional es desarà al navegador. Aquesta galeta no inclou dades personals i simplement indica l\'identificador de l\'entrada que acabeu d\'editar. Expira després d\'1 dia.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Contingut incrustat d\'altres llocs web</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Els articles en aquesta pàgina web inclou contingut incrustat (per exemple, vídeos, imatges, articles, etc.). El contingut incrustat des d\'altres pàgines web es comporta exactament de la mateixa manera com si el visitant estigués visitant l\'altra pàgina web.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Aquestes pàgines web poden recollir dades sobre vós, fer servir galetes, incrustar seguiment addicional de terceres parts, i monitorar la interacció amb el contingut incrustat, incloent-hi la traça de la interacció amb el contingut incrustat si teniu un compte i heu iniciat sessió en aquesta pàgina web.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Analítiques</h3><!-- /wp:heading --><!-- wp:heading --><h2>Amb qui compartim les vostres dades</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si sol·liciteu un reinici de contrasenya, l\'adreça UP s\'inclourà en el correu electrònic de reinicialització.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quant de temps retenim les dades</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si deixeu un comentari, el comentari i les seves dades meta es retenen indefinidament. Això és per poder reconèixer i aprovar automàticament qualsevol comentari de seguiment en lloc de mantenir-los en la cua de moderació.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Per als usuaris que es registren en la web (si hi ha), també emmagatzemem la informació personal que proporcionen al seu perfil d\'usuari. Tots els usuaris poden veure, editar o suprimir la seva informació personal en qualsevol moment (excepte que no poden canviar el seu nom d\'usuari). Els administradors de la pàgina web poden també editar aquesta informació. </p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quins drets teniu sobre les vostres dades</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si teniu un compte en aquest lloc web o hi heu deixat comentaris, podeu demanar que us enviem un fitxer d\'exportació de les vostres dades personals, incloent-hi totes les dades que ens hàgeu proporcionat. També podeu demanar que esborrem qualsevol dada personal vostra que tinguem. Això no inclou les dades que estiguem obligats a conservar amb propòsits administratius, legals o de seguretat.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>On enviem les vostres dades</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Els comentaris dels visitants han de ser comprovats mitjançant un servei de detecció de brossa automatitzat.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Informació de contacte</h2><!-- /wp:heading --><!-- wp:heading --><h2>Informació addicional</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Com protegim les vostres dades</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Quins procediments d\'incompliment de dades tenim en el lloc</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>De quins tercers rebem dades</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Quina presa de decisions automatitzada i/o perfil fem amb les dades de l\'usuari</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Requisits de divulgació reglamentària de la indústria</h3><!-- /wp:heading -->', 'Política de privadesa ', '', 'draft', 'closed', 'open', '', 'política-de-privadesa', '', '', '2021-01-26 12:09:34', '2021-01-26 10:09:34', '', 0, 'http://localhost:81/AOS/?page_id=3', 0, 'page', '', 0),
(4, 1, '2021-01-26 12:09:40', '0000-00-00 00:00:00', '', 'Esborrany automàtic', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-01-26 12:09:40', '0000-00-00 00:00:00', '', 0, 'http://localhost:81/AOS/?p=4', 0, 'post', '', 0),
(5, 1, '2021-01-26 12:19:32', '2021-01-26 10:19:32', '', 'My Gear', '', 'trash', 'closed', 'closed', '', 'my-gear__trashed', '', '', '2021-01-28 16:31:56', '2021-01-28 14:31:56', '', 0, 'http://localhost:81/AOS/?page_id=5', 0, 'page', '', 0),
(6, 1, '2021-01-26 12:19:32', '2021-01-26 10:19:32', '', 'My Gear', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2021-01-26 12:19:32', '2021-01-26 10:19:32', '', 5, 'http://localhost:81/AOS/2021/01/26/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2021-01-26 12:33:01', '2021-01-26 10:33:01', '', 'Pressure', '', 'publish', 'closed', 'closed', '', 'pressure', '', '', '2021-01-26 12:42:57', '2021-01-26 10:42:57', '', 0, 'http://localhost:81/AOS/?post_type=projects&#038;p=7', 0, 'projects', '', 0),
(8, 1, '2021-01-26 12:33:08', '0000-00-00 00:00:00', '', 'Esborrany automàtic', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-01-26 12:33:08', '0000-00-00 00:00:00', '', 0, 'http://localhost:81/AOS/?post_type=projects&p=8', 0, 'projects', '', 0),
(9, 1, '2021-01-26 12:33:20', '2021-01-26 10:33:20', '', 'The Uprising of Afrojuice 195 x PUMA', '', 'publish', 'closed', 'closed', '', 'the-uprising-of-afrojuice-195-x-puma', '', '', '2021-01-26 12:42:57', '2021-01-26 10:42:57', '', 0, 'http://localhost:81/AOS/?post_type=projects&#038;p=9', 0, 'projects', '', 0),
(10, 1, '2021-01-26 12:33:29', '2021-01-26 10:33:29', '', 'Mahou Cinco Estrellas', '', 'publish', 'closed', 'closed', '', 'mahou-cinco-estrellas', '', '', '2021-01-26 12:42:57', '2021-01-26 10:42:57', '', 0, 'http://localhost:81/AOS/?post_type=projects&#038;p=10', 0, 'projects', '', 0),
(11, 1, '2021-01-26 12:33:37', '2021-01-26 10:33:37', '', 'MANGO – Committed Collection', '', 'publish', 'closed', 'closed', '', 'mango-committed-collection', '', '', '2021-01-26 12:42:57', '2021-01-26 10:42:57', '', 0, 'http://localhost:81/AOS/?post_type=projects&#038;p=11', 0, 'projects', '', 0),
(12, 1, '2021-01-26 12:33:44', '2021-01-26 10:33:44', '', 'Nike x FC Barcelona', '', 'publish', 'closed', 'closed', '', 'nike-x-fc-barcelona', '', '', '2021-01-26 12:42:57', '2021-01-26 10:42:57', '', 0, 'http://localhost:81/AOS/?post_type=projects&#038;p=12', 0, 'projects', '', 0),
(13, 1, '2021-01-26 12:33:51', '2021-01-26 10:33:51', '', 'Landscape Biennial Barcelona', '', 'publish', 'closed', 'closed', '', 'landscape-biennial-barcelona', '', '', '2021-01-26 12:42:57', '2021-01-26 10:42:57', '', 0, 'http://localhost:81/AOS/?post_type=projects&#038;p=13', 0, 'projects', '', 0),
(14, 1, '2021-01-26 12:33:58', '2021-01-26 10:33:58', '', 'Nike Air Max', '', 'publish', 'closed', 'closed', '', 'nike-air-max', '', '', '2021-01-26 12:42:57', '2021-01-26 10:42:57', '', 0, 'http://localhost:81/AOS/?post_type=projects&#038;p=14', 0, 'projects', '', 0),
(15, 1, '2021-01-26 12:34:05', '2021-01-26 10:34:05', '', 'Keef Palas — SS18 Summertime', '', 'publish', 'closed', 'closed', '', 'keef-palas-ss18-summertime', '', '', '2021-01-26 12:42:57', '2021-01-26 10:42:57', '', 0, 'http://localhost:81/AOS/?post_type=projects&#038;p=15', 0, 'projects', '', 0),
(16, 1, '2021-01-26 12:34:13', '2021-01-26 10:34:13', '', 'Opium', '', 'publish', 'closed', 'closed', '', 'opium', '', '', '2021-01-26 12:42:57', '2021-01-26 10:42:57', '', 0, 'http://localhost:81/AOS/?post_type=projects&#038;p=16', 0, 'projects', '', 0),
(17, 1, '2021-01-26 12:36:32', '2021-01-26 10:36:32', '', 'Info', '', 'publish', 'closed', 'closed', '', 'info', '', '', '2021-01-26 12:36:32', '2021-01-26 10:36:32', '', 0, 'http://localhost:81/AOS/?page_id=17', 0, 'page', '', 0),
(18, 1, '2021-01-26 12:36:32', '2021-01-26 10:36:32', '', 'Info', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2021-01-26 12:36:32', '2021-01-26 10:36:32', '', 17, 'http://localhost:81/AOS/2021/01/26/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2021-01-26 12:36:47', '2021-01-26 10:36:47', '', 'Work', '', 'trash', 'closed', 'closed', '', 'work__trashed', '', '', '2021-01-28 16:31:56', '2021-01-28 14:31:56', '', 0, 'http://localhost:81/AOS/?page_id=19', 0, 'page', '', 0),
(20, 1, '2021-01-26 12:36:47', '2021-01-26 10:36:47', '', 'Work', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2021-01-26 12:36:47', '2021-01-26 10:36:47', '', 19, 'http://localhost:81/AOS/2021/01/26/19-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2021-01-26 12:36:56', '2021-01-26 10:36:56', '<!-- wp:paragraph -->\n<p>Aquest és una pàgina d\'exemple. És diferent d\'una entrada del blog perquè es mantindrà en un lloc i apareixerà a la navegació del lloc (a la majoria de temes). Molta gent comença amb la pàgina «Quant a», que els presenta als potencials visitants del lloc web. Podria dir alguna cosa així:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Hola! Sóc un missatger amb bicicleta de dia, aspirant a actor de nit i aquesta és la meva web. Visc a Los Angeles, tinc un gran gos de nom Pep i m\'agrada la pinya colada. (I em pillarà la pluja.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... o alguna cosa així:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>La companyia Aparells XYZ es va crear el 1971, i ha estat proporcionant aparells de qualitat al públic des de llavors. Ubicada a Gotham City, XYZ dóna treball a més de 2.000 persones i fa tota mena d\'accions meravelloses per a la comunitat de Gotham.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Com a usuari nou del WordPress, hauríeu d\'anar al <a href="http://localhost:81/AOS/wp-admin/">tauler</a> per suprimir aquesta pàgina i crear pàgines noves de contingut. Divertiu-vos!</p>\n<!-- /wp:paragraph -->', 'Pàgina d\'exemple', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-01-26 12:36:56', '2021-01-26 10:36:56', '', 2, 'http://localhost:81/AOS/2021/01/26/2-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2021-01-26 12:37:32', '2021-01-26 10:37:32', '', 'MK-V Nexus (ultrapost)', '', 'publish', 'closed', 'closed', '', 'mk-v-nexus-ultrapost', '', '', '2021-01-26 12:37:32', '2021-01-26 10:37:32', '', 0, 'http://localhost:81/AOS/?post_type=gears&#038;p=22', 0, 'gears', '', 0),
(23, 1, '2021-01-26 12:37:42', '2021-01-26 10:37:42', '', 'xARM (17kg-30kg)', '', 'publish', 'closed', 'closed', '', 'xarm-17kg-30kg', '', '', '2021-01-26 12:37:42', '2021-01-26 10:37:42', '', 0, 'http://localhost:81/AOS/?post_type=gears&#038;p=23', 0, 'gears', '', 0),
(24, 1, '2021-01-26 12:37:53', '2021-01-26 10:37:53', '', 'GPI PRO Vest', '', 'publish', 'closed', 'closed', '', 'gpi-pro-vest', '', '', '2021-01-26 12:37:53', '2021-01-26 10:37:53', '', 0, 'http://localhost:81/AOS/?post_type=gears&#038;p=24', 0, 'gears', '', 0),
(25, 1, '2021-01-26 12:38:04', '2021-01-26 10:38:04', '', 'Teradek BOLT 500', '', 'publish', 'closed', 'closed', '', 'teradek-bolt-500', '', '', '2021-01-26 12:38:04', '2021-01-26 10:38:04', '', 0, 'http://localhost:81/AOS/?post_type=gears&#038;p=25', 0, 'gears', '', 0),
(26, 1, '2021-01-26 12:38:12', '2021-01-26 10:38:12', '', 'RT Motion', '', 'publish', 'closed', 'closed', '', 'rt-motion', '', '', '2021-01-26 12:38:12', '2021-01-26 10:38:12', '', 0, 'http://localhost:81/AOS/?post_type=gears&#038;p=26', 0, 'gears', '', 0),
(27, 1, '2021-01-26 12:38:18', '2021-01-26 10:38:18', '', 'Hard Mount, Wind Killer', '', 'publish', 'closed', 'closed', '', 'hard-mount-wind-killer', '', '', '2021-01-26 12:38:18', '2021-01-26 10:38:18', '', 0, 'http://localhost:81/AOS/?post_type=gears&#038;p=27', 0, 'gears', '', 0),
(28, 1, '2021-01-26 12:39:46', '2021-01-26 10:39:46', '', 'Bien Duro — C. Tangana', '', 'publish', 'closed', 'closed', '', 'bien-duro-c-tangana', '', '', '2021-01-26 12:41:31', '2021-01-26 10:41:31', '', 0, 'http://localhost:81/AOS/?post_type=projects&#038;p=28', 0, 'projects', '', 0),
(29, 1, '2021-01-26 12:39:58', '2021-01-26 10:39:58', '', 'Me Pelea — Dellafuente', '', 'publish', 'closed', 'closed', '', 'me-pelea-dellafuente', '', '', '2021-01-26 12:41:31', '2021-01-26 10:41:31', '', 0, 'http://localhost:81/AOS/?post_type=projects&#038;p=29', 0, 'projects', '', 0),
(30, 1, '2021-01-26 12:40:06', '2021-01-26 10:40:06', '', 'Wrong Turn — Blanche', '', 'publish', 'closed', 'closed', '', 'wrong-turn-blanche', '', '', '2021-01-26 12:41:31', '2021-01-26 10:41:31', '', 0, 'http://localhost:81/AOS/?post_type=projects&#038;p=30', 0, 'projects', '', 0),
(31, 1, '2021-01-26 12:40:12', '2021-01-26 10:40:12', '', 'Lungs — Shy Luv', '', 'publish', 'closed', 'closed', '', 'lungs-shy-luv', '', '', '2021-01-26 12:41:31', '2021-01-26 10:41:31', '', 0, 'http://localhost:81/AOS/?post_type=projects&#038;p=31', 0, 'projects', '', 0),
(32, 1, '2021-01-26 12:40:18', '2021-01-26 10:40:18', '', 'Demonia', '', 'publish', 'closed', 'closed', '', 'demonia', '', '', '2021-01-26 12:41:31', '2021-01-26 10:41:31', '', 0, 'http://localhost:81/AOS/?post_type=projects&#038;p=32', 0, 'projects', '', 0),
(33, 1, '2021-01-26 12:40:25', '2021-01-26 10:40:25', '', 'Vamps — Töfel Santana', '', 'publish', 'closed', 'closed', '', 'vamps-tofel-santana', '', '', '2021-01-26 12:41:31', '2021-01-26 10:41:31', '', 0, 'http://localhost:81/AOS/?post_type=projects&#038;p=33', 0, 'projects', '', 0),
(34, 1, '2021-01-26 12:40:32', '2021-01-26 10:40:32', '', 'MNKYBSNSS', '', 'publish', 'closed', 'closed', '', 'mnkybsnss', '', '', '2021-01-26 12:41:03', '2021-01-26 10:41:03', '', 0, 'http://localhost:81/AOS/?post_type=projects&#038;p=34', 0, 'projects', '', 0),
(35, 1, '2021-01-26 13:11:13', '2021-01-26 11:11:13', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:8:"projects";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Project', 'project', 'publish', 'closed', 'closed', '', 'group_600ff75ee1e5a', '', '', '2021-01-26 13:12:31', '2021-01-26 11:12:31', '', 0, 'http://localhost:81/AOS/?post_type=acf-field-group&#038;p=35', 0, 'acf-field-group', '', 0),
(36, 1, '2021-01-26 13:11:13', '2021-01-26 11:11:13', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:6:"medium";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'banner_image', 'banner_image', 'publish', 'closed', 'closed', '', 'field_600ff76e22b49', '', '', '2021-01-26 13:12:31', '2021-01-26 11:12:31', '', 35, 'http://localhost:81/AOS/?post_type=acf-field&#038;p=36', 0, 'acf-field', '', 0),
(37, 1, '2021-01-26 13:11:13', '2021-01-26 11:11:13', 'a:10:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"collapsed";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:0:"";}', 'team', 'team', 'publish', 'closed', 'closed', '', 'field_600ff82c22b4a', '', '', '2021-01-26 13:11:13', '2021-01-26 11:11:13', '', 35, 'http://localhost:81/AOS/?post_type=acf-field&p=37', 1, 'acf-field', '', 0),
(38, 1, '2021-01-26 13:11:13', '2021-01-26 11:11:13', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'name', 'name', 'publish', 'closed', 'closed', '', 'field_600ff85e22b4b', '', '', '2021-01-26 13:11:13', '2021-01-26 11:11:13', '', 37, 'http://localhost:81/AOS/?post_type=acf-field&p=38', 0, 'acf-field', '', 0),
(39, 1, '2021-01-26 13:11:13', '2021-01-26 11:11:13', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'role', 'role', 'publish', 'closed', 'closed', '', 'field_600ff88022b4c', '', '', '2021-01-26 13:11:13', '2021-01-26 11:11:13', '', 37, 'http://localhost:81/AOS/?post_type=acf-field&p=39', 1, 'acf-field', '', 0),
(40, 1, '2021-01-26 13:11:13', '2021-01-26 11:11:13', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'place_date', 'place_date', 'publish', 'closed', 'closed', '', 'field_600ff8a422b4d', '', '', '2021-01-26 13:11:13', '2021-01-26 11:11:13', '', 35, 'http://localhost:81/AOS/?post_type=acf-field&p=40', 2, 'acf-field', '', 0),
(41, 1, '2021-01-26 13:12:19', '2021-01-26 11:12:19', 'a:10:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"collapsed";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:0:"";}', 'images', 'images', 'publish', 'closed', 'closed', '', 'field_600ff8e295854', '', '', '2021-01-26 13:12:19', '2021-01-26 11:12:19', '', 35, 'http://localhost:81/AOS/?post_type=acf-field&p=41', 3, 'acf-field', '', 0),
(42, 1, '2021-01-26 13:12:19', '2021-01-26 11:12:19', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:6:"medium";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'image', 'image', 'publish', 'closed', 'closed', '', 'field_600ff8fe95855', '', '', '2021-01-26 13:12:19', '2021-01-26 11:12:19', '', 41, 'http://localhost:81/AOS/?post_type=acf-field&p=42', 0, 'acf-field', '', 0),
(43, 1, '2021-01-26 13:38:28', '0000-00-00 00:00:00', '{"show_on_front":{"value":"page","type":"option","user_id":1,"date_modified_gmt":"2021-01-26 11:38:28"}}', '', '', 'auto-draft', 'closed', 'closed', '', 'e0c6a42d-d629-4357-9307-927deaeaf5d4', '', '', '2021-01-26 13:38:28', '0000-00-00 00:00:00', '', 0, 'http://localhost:81/AOS/?p=43', 0, 'customize_changeset', '', 0),
(44, 1, '2021-01-28 12:22:09', '2021-01-28 10:22:09', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2021-01-28 13:29:36', '2021-01-28 11:29:36', '', 0, 'http://localhost:81/AOS/?page_id=44', 0, 'page', '', 0),
(45, 1, '2021-01-28 12:22:09', '2021-01-28 10:22:09', '', 'Home', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2021-01-28 12:22:09', '2021-01-28 10:22:09', '', 44, 'http://localhost:81/AOS/2021/01/28/44-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2021-01-28 12:22:20', '2021-01-28 10:22:20', '{"show_on_front":{"value":"page","type":"option","user_id":1,"date_modified_gmt":"2021-01-28 10:22:20"},"page_on_front":{"value":"44","type":"option","user_id":1,"date_modified_gmt":"2021-01-28 10:22:20"}}', '', '', 'trash', 'closed', 'closed', '', 'b1478148-fd51-42cd-9c5a-9384e3a332f4', '', '', '2021-01-28 12:22:20', '2021-01-28 10:22:20', '', 0, 'http://localhost:81/AOS/2021/01/28/b1478148-fd51-42cd-9c5a-9384e3a332f4/', 0, 'customize_changeset', '', 0),
(47, 1, '2021-01-28 12:35:13', '2021-01-28 10:35:13', '', 'blanche', '', 'inherit', 'open', 'closed', '', 'blanche', '', '', '2021-01-28 12:42:31', '2021-01-28 10:42:31', '', 44, 'http://localhost:81/AOS/wp-content/uploads/2021/01/blanche.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2021-01-28 12:35:17', '2021-01-28 10:35:17', '', 'fcb', '', 'inherit', 'open', 'closed', '', 'fcb', '', '', '2021-01-28 12:42:31', '2021-01-28 10:42:31', '', 44, 'http://localhost:81/AOS/wp-content/uploads/2021/01/fcb.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2021-01-28 12:35:17', '2021-01-28 10:35:17', '', 'me-pelea', '', 'inherit', 'open', 'closed', '', 'me-pelea', '', '', '2021-01-28 12:42:31', '2021-01-28 10:42:31', '', 44, 'http://localhost:81/AOS/wp-content/uploads/2021/01/me-pelea.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2021-01-28 12:35:17', '2021-01-28 10:35:17', '', 'nit-i-ida', '', 'inherit', 'open', 'closed', '', 'nit-i-ida', '', '', '2021-01-28 12:42:31', '2021-01-28 10:42:31', '', 44, 'http://localhost:81/AOS/wp-content/uploads/2021/01/nit-i-ida.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2021-01-28 12:35:18', '2021-01-28 10:35:18', '', 'puma', '', 'inherit', 'open', 'closed', '', 'puma', '', '', '2021-01-28 12:42:31', '2021-01-28 10:42:31', '', 44, 'http://localhost:81/AOS/wp-content/uploads/2021/01/puma.png', 0, 'attachment', 'image/png', 0),
(52, 1, '2021-01-28 12:35:25', '2021-01-28 10:35:25', '', 'summertime', '', 'inherit', 'open', 'closed', '', 'summertime', '', '', '2021-01-28 12:42:31', '2021-01-28 10:42:31', '', 44, 'http://localhost:81/AOS/wp-content/uploads/2021/01/summertime.png', 0, 'attachment', 'image/png', 0),
(53, 1, '2021-01-28 12:35:25', '2021-01-28 10:35:25', '', 'tangana', '', 'inherit', 'open', 'closed', '', 'tangana', '', '', '2021-01-28 12:42:31', '2021-01-28 10:42:31', '', 44, 'http://localhost:81/AOS/wp-content/uploads/2021/01/tangana.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2021-01-28 12:41:19', '2021-01-28 10:41:19', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"44";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Home', 'home', 'publish', 'closed', 'closed', '', 'group_6012945625c4f', '', '', '2021-01-28 13:25:54', '2021-01-28 11:25:54', '', 0, 'http://localhost:81/AOS/?post_type=acf-field-group&#038;p=54', 0, 'acf-field-group', '', 0),
(55, 1, '2021-01-28 12:41:19', '2021-01-28 10:41:19', 'a:10:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"collapsed";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:0:"";}', 'images', 'images', 'publish', 'closed', 'closed', '', 'field_6012945cbb700', '', '', '2021-01-28 12:41:19', '2021-01-28 10:41:19', '', 54, 'http://localhost:81/AOS/?post_type=acf-field&p=55', 0, 'acf-field', '', 0),
(56, 1, '2021-01-28 12:41:19', '2021-01-28 10:41:19', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:6:"medium";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'image', 'image', 'publish', 'closed', 'closed', '', 'field_6012948ebb701', '', '', '2021-01-28 12:41:19', '2021-01-28 10:41:19', '', 55, 'http://localhost:81/AOS/?post_type=acf-field&p=56', 0, 'acf-field', '', 0),
(57, 1, '2021-01-28 12:42:31', '2021-01-28 10:42:31', '', 'Home', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2021-01-28 12:42:31', '2021-01-28 10:42:31', '', 44, 'http://localhost:81/AOS/2021/01/28/44-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2021-01-28 13:25:54', '2021-01-28 11:25:54', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'text', 'text', 'publish', 'closed', 'closed', '', 'field_60129f2a80114', '', '', '2021-01-28 13:25:54', '2021-01-28 11:25:54', '', 55, 'http://localhost:81/AOS/?post_type=acf-field&p=58', 1, 'acf-field', '', 0),
(59, 1, '2021-01-28 13:29:19', '2021-01-28 11:29:19', '', 'ocean', '', 'inherit', 'open', 'closed', '', 'ocean', '', '', '2021-01-28 13:29:19', '2021-01-28 11:29:19', '', 44, 'http://localhost:81/AOS/wp-content/uploads/2021/01/ocean.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2021-01-28 13:29:36', '2021-01-28 11:29:36', '', 'Home', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2021-01-28 13:29:36', '2021-01-28 11:29:36', '', 44, 'http://localhost:81/AOS/2021/01/28/44-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2021-01-28 14:15:28', '2021-01-28 12:15:28', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:5:"gears";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'My Gear', 'my-gear', 'publish', 'closed', 'closed', '', 'group_6012aa91823e8', '', '', '2021-01-28 16:30:57', '2021-01-28 14:30:57', '', 0, 'http://localhost:81/AOS/?post_type=acf-field-group&#038;p=61', 0, 'acf-field-group', '', 0),
(62, 1, '2021-01-28 14:15:28', '2021-01-28 12:15:28', 'a:10:{s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:9:"new_lines";s:0:"";}', 'text', 'text', 'publish', 'closed', 'closed', '', 'field_6012aa98fb603', '', '', '2021-01-28 14:15:28', '2021-01-28 12:15:28', '', 61, 'http://localhost:81/AOS/?post_type=acf-field&p=62', 0, 'acf-field', '', 0),
(63, 1, '2021-01-28 14:15:28', '2021-01-28 12:15:28', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:6:"medium";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'image', 'image', 'publish', 'closed', 'closed', '', 'field_6012aaa7fb604', '', '', '2021-01-28 14:15:28', '2021-01-28 12:15:28', '', 61, 'http://localhost:81/AOS/?post_type=acf-field&p=63', 1, 'acf-field', '', 0),
(64, 1, '2021-01-28 14:15:28', '2021-01-28 12:15:28', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'equipment', 'equipment', 'publish', 'closed', 'closed', '', 'field_6012aad6fb605', '', '', '2021-01-28 14:15:28', '2021-01-28 12:15:28', '', 61, 'http://localhost:81/AOS/?post_type=acf-field&p=64', 2, 'acf-field', '', 0),
(65, 1, '2021-01-28 14:19:38', '2021-01-28 12:19:38', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"17";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Info', 'info', 'publish', 'closed', 'closed', '', 'group_6012ab25b1a2c', '', '', '2021-01-28 14:19:38', '2021-01-28 12:19:38', '', 0, 'http://localhost:81/AOS/?post_type=acf-field-group&#038;p=65', 0, 'acf-field-group', '', 0),
(66, 1, '2021-01-28 14:19:38', '2021-01-28 12:19:38', 'a:10:{s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:9:"new_lines";s:0:"";}', 'main-text', 'main-text', 'publish', 'closed', 'closed', '', 'field_6012ab2cce187', '', '', '2021-01-28 14:19:38', '2021-01-28 12:19:38', '', 65, 'http://localhost:81/AOS/?post_type=acf-field&p=66', 0, 'acf-field', '', 0),
(67, 1, '2021-01-28 14:19:38', '2021-01-28 12:19:38', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'name', 'name', 'publish', 'closed', 'closed', '', 'field_6012ab52ce188', '', '', '2021-01-28 14:19:38', '2021-01-28 12:19:38', '', 65, 'http://localhost:81/AOS/?post_type=acf-field&p=67', 1, 'acf-field', '', 0),
(68, 1, '2021-01-28 14:19:38', '2021-01-28 12:19:38', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'lets-do-this', 'text', 'publish', 'closed', 'closed', '', 'field_6012ab59ce189', '', '', '2021-01-28 14:19:38', '2021-01-28 12:19:38', '', 65, 'http://localhost:81/AOS/?post_type=acf-field&p=68', 2, 'acf-field', '', 0),
(69, 1, '2021-01-28 14:19:38', '2021-01-28 12:19:38', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'no-spamming', 'no-spamming', 'publish', 'closed', 'closed', '', 'field_6012ab8ece18a', '', '', '2021-01-28 14:19:38', '2021-01-28 12:19:38', '', 65, 'http://localhost:81/AOS/?post_type=acf-field&p=69', 3, 'acf-field', '', 0),
(70, 1, '2021-01-28 14:19:38', '2021-01-28 12:19:38', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'email', 'email', 'publish', 'closed', 'closed', '', 'field_6012ab96ce18b', '', '', '2021-01-28 14:19:38', '2021-01-28 12:19:38', '', 65, 'http://localhost:81/AOS/?post_type=acf-field&p=70', 4, 'acf-field', '', 0),
(71, 1, '2021-01-28 14:19:38', '2021-01-28 12:19:38', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'email-sub', 'email-sub', 'publish', 'closed', 'closed', '', 'field_6012ababce18c', '', '', '2021-01-28 14:19:38', '2021-01-28 12:19:38', '', 65, 'http://localhost:81/AOS/?post_type=acf-field&p=71', 5, 'acf-field', '', 0),
(72, 1, '2021-01-28 14:19:38', '2021-01-28 12:19:38', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'phone', 'phone', 'publish', 'closed', 'closed', '', 'field_6012abbdce18d', '', '', '2021-01-28 14:19:38', '2021-01-28 12:19:38', '', 65, 'http://localhost:81/AOS/?post_type=acf-field&p=72', 6, 'acf-field', '', 0),
(73, 1, '2021-01-28 14:19:38', '2021-01-28 12:19:38', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'phone-sub', 'phone-sub', 'publish', 'closed', 'closed', '', 'field_6012abc7ce18e', '', '', '2021-01-28 14:19:38', '2021-01-28 12:19:38', '', 65, 'http://localhost:81/AOS/?post_type=acf-field&p=73', 7, 'acf-field', '', 0),
(74, 1, '2021-01-28 16:25:29', '0000-00-00 00:00:00', '', 'Esborrany automàtic', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-01-28 16:25:29', '0000-00-00 00:00:00', '', 0, 'http://localhost:81/AOS/?post_type=gears&p=74', 0, 'gears', '', 0),
(75, 1, '2021-01-28 16:28:15', '2021-01-28 14:28:15', ' ', '', '', 'publish', 'closed', 'closed', '', '75', '', '', '2021-01-28 16:28:15', '2021-01-28 14:28:15', '', 0, 'http://localhost:81/AOS/?p=75', 1, 'nav_menu_item', '', 0),
(76, 1, '2021-01-28 16:28:15', '2021-01-28 14:28:15', '', 'Work', '', 'publish', 'closed', 'closed', '', 'work', '', '', '2021-01-28 16:28:15', '2021-01-28 14:28:15', '', 0, 'http://localhost:81/AOS/?p=76', 2, 'nav_menu_item', '', 0),
(77, 1, '2021-01-28 16:28:15', '2021-01-28 14:28:15', '', 'My Gear', '', 'publish', 'closed', 'closed', '', 'my-gear', '', '', '2021-01-28 16:28:15', '2021-01-28 14:28:15', '', 0, 'http://localhost:81/AOS/?p=77', 3, 'nav_menu_item', '', 0) ;

#
# End of data contents of table `wp_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_relationships`
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Table structure of table `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(7, 2, 0),
(7, 3, 0),
(9, 2, 0),
(9, 3, 0),
(10, 2, 0),
(10, 3, 0),
(11, 2, 0),
(11, 3, 0),
(12, 2, 0),
(13, 2, 0),
(14, 2, 0),
(15, 2, 0),
(16, 2, 0),
(28, 4, 0),
(29, 4, 0),
(30, 4, 0),
(31, 4, 0),
(32, 4, 0),
(33, 4, 0),
(34, 4, 0),
(75, 5, 0),
(76, 5, 0),
(77, 5, 0) ;

#
# End of data contents of table `wp_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Table structure of table `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'category', '', 0, 9),
(3, 3, 'category', '', 0, 4),
(4, 4, 'category', '', 0, 7),
(5, 5, 'nav_menu', '', 0, 3) ;

#
# End of data contents of table `wp_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_termmeta`
#

DROP TABLE IF EXISTS `wp_termmeta`;


#
# Table structure of table `wp_termmeta`
#

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_termmeta`
#

#
# End of data contents of table `wp_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_terms`
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Table structure of table `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'General', 'general', 0),
(2, 'Commercial', 'commercial', 0),
(3, 'Fiction', 'fiction', 0),
(4, 'Videoclip', 'videoclip', 0),
(5, 'Main Menu', 'main-menu', 0) ;

#
# End of data contents of table `wp_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_usermeta`
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Table structure of table `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:"5d364b29f2e45a7709ace2359051305d54ff17f3b1530d88e4039dedc5cffac7";a:4:{s:10:"expiration";i:1612002039;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.104 Safari/537.36";s:5:"login";i:1611829239;}s:64:"ca859d94a51383bbcabb81d97ec385d334ddcbd4691b41b1fa2982af9feefff7";a:4:{s:10:"expiration";i:1612002831;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.104 Safari/537.36";s:5:"login";i:1611830031;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
(19, 1, 'closedpostboxes_acf-field-group', 'a:0:{}'),
(20, 1, 'metaboxhidden_acf-field-group', 'a:1:{i:0;s:7:"slugdiv";}'),
(21, 1, 'wp_user-settings', 'libraryContent=browse'),
(22, 1, 'wp_user-settings-time', '1611830546'),
(23, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(24, 1, 'metaboxhidden_nav-menus', 'a:5:{i:0;s:25:"add-post-type-custom_type";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";i:3;s:14:"add-custom_cat";i:4;s:14:"add-custom_tag";}'),
(25, 1, 'nav_menu_recently_edited', '5'),
(26, 1, 'closedpostboxes_nav-menus', 'a:0:{}') ;

#
# End of data contents of table `wp_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_users`
#

DROP TABLE IF EXISTS `wp_users`;


#
# Table structure of table `wp_users`
#

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BJha4RlljEVhHws61NYHF3czwPTqoR0', 'admin', 'joan.parellada@maneko.es', 'http://localhost:81/AOS', '2021-01-26 10:09:34', '', 0, 'admin') ;

#
# End of data contents of table `wp_users`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

