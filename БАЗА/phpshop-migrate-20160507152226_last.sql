# WordPress MySQL database migration
#
# Generated: Saturday 7. May 2016 15:22 UTC
# Hostname: localhost
# Database: `phpshop`
# --------------------------------------------------------

/*!40101 SET NAMES utf8mb4 */;

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
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


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
  `comment_author` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_comments`
#
INSERT INTO `wp_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Мистер WordPress', '', 'https://wordpress.org/', '', '2016-04-17 19:12:01', '2016-04-17 16:12:01', 'Привет! Это комментарий.\nЧтобы удалить его, авторизуйтесь и просмотрите комментарии к записи. Там будут ссылки для их изменения или удаления.', 0, '1', '', '', 0, 0) ;

#
# End of data contents of table `wp_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_duplicator_packages`
#

DROP TABLE IF EXISTS `wp_duplicator_packages`;


#
# Table structure of table `wp_duplicator_packages`
#

CREATE TABLE `wp_duplicator_packages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `hash` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `owner` varchar(60) NOT NULL,
  `package` mediumblob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hash` (`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_duplicator_packages`
#

#
# End of data contents of table `wp_duplicator_packages`
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
  `link_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


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
  `option_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=1599 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://shop.local', 'yes'),
(2, 'home', 'http://shop.local', 'yes'),
(3, 'blogname', 'Top Shop', 'yes'),
(4, 'blogdescription', 'Дипломная работа', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'popkaslonika@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:202:{s:14:"sitemap.xml.gz";s:60:"index.php?aiosp_sitemap_gzipped=1&aiosp_sitemap_path=root.gz";s:25:"sitemap_(.+)_(\\d+).xml.gz";s:74:"index.php?aiosp_sitemap_path=$matches[1].gz&aiosp_sitemap_page=$matches[2]";s:19:"sitemap_(.+).xml.gz";s:43:"index.php?aiosp_sitemap_path=$matches[1].gz";s:11:"sitemap.xml";s:33:"index.php?aiosp_sitemap_path=root";s:22:"sitemap_(.+)_(\\d+).xml";s:71:"index.php?aiosp_sitemap_path=$matches[1]&aiosp_sitemap_page=$matches[2]";s:16:"sitemap_(.+).xml";s:40:"index.php?aiosp_sitemap_path=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:25:"(.?.+?)/wc-api(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&wc-api=$matches[3]";s:28:"(.?.+?)/order-pay(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&order-pay=$matches[3]";s:33:"(.?.+?)/order-received(/(.*))?/?$";s:57:"index.php?pagename=$matches[1]&order-received=$matches[3]";s:29:"(.?.+?)/view-order(/(.*))?/?$";s:53:"index.php?pagename=$matches[1]&view-order=$matches[3]";s:31:"(.?.+?)/edit-account(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-account=$matches[3]";s:31:"(.?.+?)/edit-address(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-address=$matches[3]";s:32:"(.?.+?)/lost-password(/(.*))?/?$";s:56:"index.php?pagename=$matches[1]&lost-password=$matches[3]";s:34:"(.?.+?)/customer-logout(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&customer-logout=$matches[3]";s:37:"(.?.+?)/add-payment-method(/(.*))?/?$";s:61:"index.php?pagename=$matches[1]&add-payment-method=$matches[3]";s:31:".?.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:22:"^wc-api/v([1-3]{1})/?$";s:51:"index.php?wc-api-version=$matches[1]&wc-api-route=/";s:24:"^wc-api/v([1-3]{1})(.*)?";s:61:"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]";s:24:"^wc-auth/v([1]{1})/(.*)?";s:63:"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]";s:7:"shop/?$";s:27:"index.php?post_type=product";s:37:"shop/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:32:"shop/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:24:"shop/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:32:"category/(.+?)/wc-api(/(.*))?/?$";s:54:"index.php?category_name=$matches[1]&wc-api=$matches[3]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:29:"tag/([^/]+)/wc-api(/(.*))?/?$";s:44:"index.php?tag=$matches[1]&wc-api=$matches[3]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:55:"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:50:"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:31:"product-category/(.+?)/embed/?$";s:44:"index.php?product_cat=$matches[1]&embed=true";s:43:"product-category/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:25:"product-category/(.+?)/?$";s:33:"index.php?product_cat=$matches[1]";s:52:"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:47:"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:28:"product-tag/([^/]+)/embed/?$";s:44:"index.php?product_tag=$matches[1]&embed=true";s:40:"product-tag/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_tag=$matches[1]&paged=$matches[2]";s:22:"product-tag/([^/]+)/?$";s:33:"index.php?product_tag=$matches[1]";s:35:"product/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"product/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"product/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"product/([^/]+)/embed/?$";s:40:"index.php?product=$matches[1]&embed=true";s:28:"product/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:48:"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:43:"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:36:"product/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:43:"product/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:33:"product/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?product=$matches[1]&wc-api=$matches[3]";s:39:"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:50:"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:32:"product/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:24:"product/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"product/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"product/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:45:"product_variation/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"product_variation/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"product_variation/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"product_variation/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"product_variation/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:51:"product_variation/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"product_variation/([^/]+)/embed/?$";s:50:"index.php?product_variation=$matches[1]&embed=true";s:38:"product_variation/([^/]+)/trackback/?$";s:44:"index.php?product_variation=$matches[1]&tb=1";s:46:"product_variation/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?product_variation=$matches[1]&paged=$matches[2]";s:53:"product_variation/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?product_variation=$matches[1]&cpage=$matches[2]";s:43:"product_variation/([^/]+)/wc-api(/(.*))?/?$";s:58:"index.php?product_variation=$matches[1]&wc-api=$matches[3]";s:49:"product_variation/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"product_variation/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"product_variation/([^/]+)(?:/([0-9]+))?/?$";s:56:"index.php?product_variation=$matches[1]&page=$matches[2]";s:34:"product_variation/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"product_variation/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"product_variation/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"product_variation/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"product_variation/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"product_variation/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:45:"shop_order_refund/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"shop_order_refund/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"shop_order_refund/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"shop_order_refund/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"shop_order_refund/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:51:"shop_order_refund/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"shop_order_refund/([^/]+)/embed/?$";s:50:"index.php?shop_order_refund=$matches[1]&embed=true";s:38:"shop_order_refund/([^/]+)/trackback/?$";s:44:"index.php?shop_order_refund=$matches[1]&tb=1";s:46:"shop_order_refund/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?shop_order_refund=$matches[1]&paged=$matches[2]";s:53:"shop_order_refund/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?shop_order_refund=$matches[1]&cpage=$matches[2]";s:43:"shop_order_refund/([^/]+)/wc-api(/(.*))?/?$";s:58:"index.php?shop_order_refund=$matches[1]&wc-api=$matches[3]";s:49:"shop_order_refund/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"shop_order_refund/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"shop_order_refund/([^/]+)(?:/([0-9]+))?/?$";s:56:"index.php?shop_order_refund=$matches[1]&page=$matches[2]";s:34:"shop_order_refund/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"shop_order_refund/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"shop_order_refund/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"shop_order_refund/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"shop_order_refund/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"shop_order_refund/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=57&cpage=$matches[1]";s:17:"wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:20:"order-pay(/(.*))?/?$";s:32:"index.php?&order-pay=$matches[2]";s:25:"order-received(/(.*))?/?$";s:37:"index.php?&order-received=$matches[2]";s:21:"view-order(/(.*))?/?$";s:33:"index.php?&view-order=$matches[2]";s:23:"edit-account(/(.*))?/?$";s:35:"index.php?&edit-account=$matches[2]";s:23:"edit-address(/(.*))?/?$";s:35:"index.php?&edit-address=$matches[2]";s:24:"lost-password(/(.*))?/?$";s:36:"index.php?&lost-password=$matches[2]";s:26:"customer-logout(/(.*))?/?$";s:38:"index.php?&customer-logout=$matches[2]";s:29:"add-payment-method(/(.*))?/?$";s:41:"index.php?&add-payment-method=$matches[2]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:26:"comments/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:29:"search/(.+)/wc-api(/(.*))?/?$";s:42:"index.php?s=$matches[1]&wc-api=$matches[3]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:32:"author/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?author_name=$matches[1]&wc-api=$matches[3]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:54:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:41:"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:66:"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:28:"([0-9]{4})/wc-api(/(.*))?/?$";s:45:"index.php?year=$matches[1]&wc-api=$matches[3]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:25:"([^/]+)/wc-api(/(.*))?/?$";s:45:"index.php?name=$matches[1]&wc-api=$matches[3]";s:31:"[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:10:{i:0;s:43:"all-in-one-seo-pack/all_in_one_seo_pack.php";i:1;s:25:"duplicator/duplicator.php";i:2;s:43:"google-analytics-dashboard-for-wp/gadwp.php";i:3;s:19:"if-menu/if-menu.php";i:4;s:21:"jivochat/jivosite.php";i:5;s:25:"profile-builder/index.php";i:6;s:61:"woocommerce-checkout-manager/woocommerce-checkout-manager.php";i:7;s:27:"woocommerce/woocommerce.php";i:8;s:39:"woothemes-updater/woothemes-updater.php";i:9;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:73:"C:\\xampp\\htdocs\\hosts\\shoplocal\\shop/wp-content/themes/on-sale/header.php";i:2;s:72:"C:\\xampp\\htdocs\\hosts\\shoplocal\\shop/wp-content/themes/on-sale/index.php";i:3;s:72:"C:\\xampp\\htdocs\\hosts\\shoplocal\\shop/wp-content/themes/on-sale/style.css";i:4;s:84:"C:\\xampp\\htdocs\\hosts\\shoplocal\\shop/wp-content/themes/on-sale/template-homepage.php";i:5;s:83:"C:\\xampp\\htdocs\\hosts\\shoplocal\\shop/wp-content/themes/on-sale/sidebar-homepage.php";}', 'no'),
(40, 'template', 'storefront', 'yes'),
(41, 'stylesheet', 'on-sale', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '36686', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:43:"google-analytics-dashboard-for-wp/gadwp.php";a:2:{i:0;s:15:"GADWP_Uninstall";i:1;s:9:"uninstall";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '57', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '75', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '36686', 'yes'),
(92, 'wp_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:132:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;s:16:"aiosp_manage_seo";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:3:{s:4:"read";b:1;s:10:"edit_posts";b:0;s:12:"delete_posts";b:0;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop Manager";s:12:"capabilities";a:110:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_users";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:15:"unfiltered_html";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}}', 'yes'),
(93, 'WPLANG', 'ru_RU', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:3:{s:5:"title";s:33:"Последние новости";s:6:"number";i:3;s:9:"show_date";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:10:{s:19:"wp_inactive_widgets";a:0:{}s:16:"homepage-sidebar";a:2:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";}s:15:"product-sidebar";a:0:{}s:12:"post-sidebar";a:0:{}s:8:"header-1";a:0:{}s:8:"footer-1";a:0:{}s:8:"footer-2";a:0:{}s:8:"footer-3";a:0:{}s:8:"footer-4";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'cron', 'a:8:{i:1462635930;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1462635964;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1462637523;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1462637571;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1462640691;a:2:{s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1462676400;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1464868800;a:1:{s:25:"woocommerce_geoip_updater";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:7:"monthly";s:4:"args";a:0:{}s:8:"interval";i:2635200;}}}s:7:"version";i:2;}', 'yes'),
(124, 'can_compress_scripts', '1', 'yes'),
(129, 'recently_activated', 'a:2:{s:36:"google-sitemap-generator/sitemap.php";i:1462100085;s:36:"contact-form-7/wp-contact-form-7.php";i:1462100073;}', 'yes'),
(131, 'duplicator_settings', 'a:10:{s:7:"version";s:5:"1.1.6";s:18:"uninstall_settings";b:1;s:15:"uninstall_files";b:1;s:16:"uninstall_tables";b:1;s:13:"package_debug";b:0;s:17:"package_mysqldump";b:0;s:22:"package_mysqldump_path";s:0:"";s:24:"package_phpdump_qrylimit";s:3:"100";s:17:"package_zip_flush";b:0;s:20:"storage_htaccess_off";b:0;}', 'yes'),
(132, 'duplicator_version_plugin', '1.1.6', 'yes'),
(133, 'woocommerce_default_country', 'UA', 'yes'),
(134, 'woocommerce_allowed_countries', 'all', 'yes'),
(135, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(136, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(137, 'woocommerce_demo_store', 'no', 'yes'),
(138, 'woocommerce_demo_store_notice', 'This is a demo store for testing purposes &mdash; no orders shall be fulfilled.', 'no'),
(139, 'woocommerce_api_enabled', 'yes', 'yes'),
(140, 'woocommerce_currency', 'UAH', 'yes'),
(141, 'woocommerce_currency_pos', 'right', 'yes'),
(142, 'woocommerce_price_thousand_sep', ',', 'yes'),
(143, 'woocommerce_price_decimal_sep', '.', 'yes'),
(144, 'woocommerce_price_num_decimals', '2', 'yes'),
(145, 'woocommerce_weight_unit', 'kg', 'yes'),
(146, 'woocommerce_dimension_unit', 'cm', 'yes'),
(147, 'woocommerce_enable_review_rating', 'yes', 'no'),
(148, 'woocommerce_review_rating_required', 'yes', 'no'),
(149, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(150, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(151, 'woocommerce_shop_page_id', '7', 'yes'),
(152, 'woocommerce_shop_page_display', '', 'yes'),
(153, 'woocommerce_category_archive_display', '', 'yes'),
(154, 'woocommerce_default_catalog_orderby', 'menu_order', 'yes'),
(155, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(156, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(157, 'shop_catalog_image_size', 'a:3:{s:5:"width";s:3:"300";s:6:"height";s:3:"300";s:4:"crop";i:1;}', 'yes'),
(158, 'shop_single_image_size', 'a:3:{s:5:"width";s:3:"600";s:6:"height";s:3:"600";s:4:"crop";i:1;}', 'yes'),
(159, 'shop_thumbnail_image_size', 'a:3:{s:5:"width";s:3:"180";s:6:"height";s:3:"180";s:4:"crop";i:1;}', 'yes'),
(160, 'woocommerce_enable_lightbox', 'yes', 'yes'),
(161, 'woocommerce_manage_stock', 'yes', 'yes'),
(162, 'woocommerce_hold_stock_minutes', '60', 'no'),
(163, 'woocommerce_notify_low_stock', 'yes', 'no'),
(164, 'woocommerce_notify_no_stock', 'yes', 'no'),
(165, 'woocommerce_stock_email_recipient', 'popkaslonika@gmail.com', 'no'),
(166, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(167, 'woocommerce_notify_no_stock_amount', '0', 'no'),
(168, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(169, 'woocommerce_stock_format', '', 'yes'),
(170, 'woocommerce_file_download_method', 'force', 'no'),
(171, 'woocommerce_downloads_require_login', 'no', 'no'),
(172, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(173, 'woocommerce_calc_taxes', 'no', 'yes'),
(174, 'woocommerce_prices_include_tax', 'no', 'yes'),
(175, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(176, 'woocommerce_shipping_tax_class', 'title', 'yes'),
(177, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(178, 'woocommerce_tax_classes', 'Reduced Rate\r\nZero Rate', 'yes'),
(179, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(180, 'woocommerce_tax_display_cart', 'excl', 'no'),
(181, 'woocommerce_price_display_suffix', '', 'yes'),
(182, 'woocommerce_tax_total_display', 'itemized', 'no'),
(183, 'woocommerce_enable_coupons', 'no', 'no'),
(184, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(185, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(186, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(187, 'woocommerce_cart_page_id', '8', 'yes'),
(188, 'woocommerce_checkout_page_id', '9', 'yes'),
(189, 'woocommerce_terms_page_id', '', 'no'),
(190, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(191, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(192, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(193, 'woocommerce_calc_shipping', 'yes', 'yes'),
(194, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(195, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(196, 'woocommerce_shipping_method_format', '', 'no'),
(197, 'woocommerce_ship_to_destination', 'billing', 'no'),
(198, 'woocommerce_ship_to_countries', '', 'yes'),
(199, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(200, 'woocommerce_myaccount_page_id', '10', 'yes'),
(201, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(202, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(203, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(204, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(205, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(206, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(207, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(208, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(209, 'woocommerce_registration_generate_username', 'yes', 'no'),
(210, 'woocommerce_registration_generate_password', 'no', 'no'),
(211, 'woocommerce_email_from_name', 'Магазин одежды', 'no'),
(212, 'woocommerce_email_from_address', 'popkaslonika@gmail.com', 'no'),
(213, 'woocommerce_email_header_image', '', 'no'),
(214, 'woocommerce_email_footer_text', 'Магазин одежды - Powered by WooCommerce', 'no'),
(215, 'woocommerce_email_base_color', '#557da1', 'no'),
(216, 'woocommerce_email_background_color', '#f5f5f5', 'no'),
(217, 'woocommerce_email_body_background_color', '#fdfdfd', 'no'),
(218, 'woocommerce_email_text_color', '#505050', 'no'),
(225, 'woocommerce_language_pack_version', 'a:2:{i:0;s:6:"2.3.11";i:1;s:5:"ru_RU";}', 'yes'),
(226, 'woothemes-updater-version', '1.5.9', 'yes'),
(231, 'widget_woocommerce_widget_cart', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(232, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(233, 'widget_woocommerce_layered_nav', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(234, 'widget_woocommerce_price_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(235, 'widget_woocommerce_product_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(236, 'widget_woocommerce_product_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(237, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(238, 'widget_woocommerce_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(239, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(240, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(241, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(244, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(299, 'woothemes-updater-activated', 'a:0:{}', 'yes'),
(304, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1460916456;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(305, 'current_theme', 'ON SALE', 'yes'),
(306, 'theme_mods_on-sale', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:10;}s:16:"background_color";s:6:"ffffff";s:22:"onsale_slider_num_show";i:3;}', 'yes'),
(307, 'theme_switched', '', 'yes'),
(311, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(369, 'general_options', '', 'yes'),
(370, 'pricing_options', '', 'yes'),
(405, 'theme_mods_boutique', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1461429873;s:4:"data";a:9:{s:19:"wp_inactive_widgets";a:0:{}s:16:"homepage-sidebar";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:15:"product-sidebar";N;s:12:"post-sidebar";N;s:8:"header-1";N;s:8:"footer-1";N;s:8:"footer-2";N;s:8:"footer-3";N;s:8:"footer-4";N;}}}', 'yes'),
(406, 'theme_switched_via_customizer', '', 'yes'),
(415, 'theme_mods_storefront', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:10;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1461451292;s:4:"data";a:7:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:8:"header-1";N;s:8:"footer-1";N;s:8:"footer-2";N;s:8:"footer-3";N;s:8:"footer-4";N;}}}', 'yes'),
(422, 'woocommerce_flat_rate_settings', 'a:13:{s:7:"enabled";s:2:"no";s:5:"title";s:25:"Единая ставка";s:12:"availability";s:3:"all";s:9:"countries";s:0:"";s:10:"tax_status";s:7:"taxable";s:4:"cost";s:0:"";s:4:"type";s:5:"class";s:7:"options";b:0;s:7:"version";s:5:"2.4.0";s:11:"minimum_fee";s:0:"";s:3:"fee";s:0:"";s:14:"cost_per_order";s:0:"";s:13:"no_class_cost";s:0:"";}', 'yes'),
(423, 'woocommerce_international_delivery_settings', 'a:13:{s:7:"enabled";s:2:"no";s:5:"title";s:25:"Единая ставка";s:12:"availability";s:9:"including";s:9:"countries";s:0:"";s:10:"tax_status";s:7:"taxable";s:4:"cost";s:0:"";s:4:"type";s:5:"class";s:7:"options";b:0;s:7:"version";s:5:"2.4.0";s:11:"minimum_fee";s:0:"";s:3:"fee";s:0:"";s:14:"cost_per_order";s:0:"";s:13:"no_class_cost";s:0:"";}', 'yes'),
(430, 'woocommerce_paypal_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(431, 'woocommerce_cheque_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(432, 'woocommerce_cod_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(433, 'woocommerce_bacs_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(439, 'checkout_process_options', '', 'yes'),
(440, 'checkout_page_options', '', 'yes'),
(441, 'account_endpoint_options', '', 'yes'),
(442, 'checkout_endpoint_options', '', 'yes'),
(443, 'payment_gateways_options', '', 'yes'),
(444, 'woocommerce_gateway_order', 'a:4:{s:4:"bacs";i:0;s:6:"cheque";i:1;s:3:"cod";i:2;s:6:"paypal";i:3;}', 'yes'),
(450, 'woocommerce_db_version', '2.5.5', 'yes'),
(451, 'woocommerce_version', '2.5.5', 'yes'),
(452, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(457, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(471, 'woocommerce_permalinks', 'a:5:{s:13:"category_base";s:0:"";s:8:"tag_base";s:0:"";s:14:"attribute_base";s:0:"";s:12:"product_base";s:0:"";s:22:"use_verbose_page_rules";b:1;}', 'yes'),
(472, 'product_shipping_class_children', 'a:0:{}', 'yes'),
(623, 'wpcf7', 'a:2:{s:7:"version";s:5:"4.4.1";s:13:"bulk_validate";a:4:{s:9:"timestamp";i:1461530394;s:7:"version";s:5:"4.4.1";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(642, 'gadash_options', '{"ga_dash_clientid":"","ga_dash_clientsecret":"","ga_dash_access_front":["administrator"],"ga_dash_access_back":["administrator"],"ga_dash_tableid_jail":"120827195","ga_dash_style":"#20a303","switch_profile":0,"ga_dash_cachetime":3600,"ga_dash_tracking":1,"ga_dash_tracking_type":"universal","ga_dash_default_ua":"","ga_dash_anonim":0,"ga_dash_userapi":0,"ga_event_tracking":0,"ga_event_downloads":"zip|mp3*|mpe*g|pdf|docx*|pptx*|xlsx*|rar*","ga_track_exclude":[],"ga_target_geomap":"","ga_realtime_pages":10,"ga_dash_token":"{\\"access_token\\":\\"ya29..zgJ6q02sWLhG9F6u9wrUrWPJHw6nrcYJMoab5uoLxLC22pU_9vNLXjSUw-gzQPGbRQ\\",\\"token_type\\":\\"Bearer\\",\\"expires_in\\":3600,\\"refresh_token\\":\\"1\\\\\\/iRwv2g16V4kP502ZXNSV3HGd8Dqecjua0rZS_fTOI3A\\",\\"created\\":1461521372}","ga_dash_profile_list":[["All Web Site Data","120827195","UA-76847824-1","http:\\/\\/huhu.pe.hu\\/",10800,"Europe\\/Kiev",null]],"ga_enhanced_links":0,"ga_dash_remarketing":0,"ga_dash_network":0,"ga_dash_adsense":0,"ga_speed_samplerate":1,"ga_event_bouncerate":0,"ga_crossdomain_tracking":0,"ga_crossdomain_list":"","ga_author_dimindex":0,"ga_category_dimindex":0,"ga_tag_dimindex":0,"ga_user_dimindex":0,"ga_pubyear_dimindex":0,"ga_aff_tracking":0,"ga_event_affiliates":"\\/out\\/","automatic_updates_minorversion":"1","backend_item_reports":1,"frontend_item_reports":0,"dashboard_widget":1,"api_backoff":0,"ga_cookiedomain":"","ga_cookiename":"","ga_cookieexpires":"","ga_dash_excludesa":0,"ga_hash_tracking":0,"ga_dash_hidden":"Y"}', 'yes'),
(643, 'gadwp_version', '4.9.3.1', 'yes'),
(644, 'gadwp_got_updated', '1', 'yes'),
(645, 'widget_gadwp-frontwidget-report', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(660, 'aioseop_options', 'a:97:{s:12:"aiosp_donate";s:0:"";s:16:"aiosp_home_title";s:44:"Интернет магазин одежды";s:22:"aiosp_home_description";s:173:"У нас недорогие платья, блузы и блюки! Доставка по всей Украине! Большие размеры! Всё от 270 грн.!  ";s:20:"aiosp_togglekeywords";s:1:"1";s:19:"aiosp_home_keywords";s:0:"";s:26:"aiosp_use_static_home_info";s:1:"0";s:9:"aiosp_can";s:2:"on";s:30:"aiosp_no_paged_canonical_links";s:0:"";s:31:"aiosp_customize_canonical_links";s:0:"";s:22:"aiosp_can_set_protocol";s:4:"auto";s:20:"aiosp_rewrite_titles";s:1:"1";s:20:"aiosp_force_rewrites";s:1:"1";s:24:"aiosp_use_original_title";s:1:"0";s:16:"aiosp_cap_titles";s:2:"on";s:14:"aiosp_cap_cats";s:2:"on";s:28:"aiosp_home_page_title_format";s:12:"%page_title%";s:23:"aiosp_page_title_format";s:27:"%page_title% | %blog_title%";s:23:"aiosp_post_title_format";s:27:"%post_title% | %blog_title%";s:27:"aiosp_category_title_format";s:31:"%category_title% | %blog_title%";s:26:"aiosp_archive_title_format";s:30:"%archive_title% | %blog_title%";s:23:"aiosp_date_title_format";s:21:"%date% | %blog_title%";s:25:"aiosp_author_title_format";s:23:"%author% | %blog_title%";s:22:"aiosp_tag_title_format";s:20:"%tag% | %blog_title%";s:25:"aiosp_search_title_format";s:23:"%search% | %blog_title%";s:24:"aiosp_description_format";s:13:"%description%";s:22:"aiosp_404_title_format";s:33:"Nothing found for %request_words%";s:18:"aiosp_paged_format";s:14:" - Part %page%";s:17:"aiosp_enablecpost";s:2:"on";s:17:"aiosp_cpostactive";a:2:{i:0;s:4:"post";i:1;s:4:"page";}s:19:"aiosp_cpostadvanced";s:1:"0";s:18:"aiosp_cpostnoindex";s:0:"";s:19:"aiosp_cpostnofollow";s:0:"";s:16:"aiosp_cpostnoodp";s:0:"";s:17:"aiosp_cpostnoydir";s:0:"";s:17:"aiosp_cposttitles";s:0:"";s:21:"aiosp_posttypecolumns";a:2:{i:0;s:4:"post";i:1;s:4:"page";}s:15:"aiosp_admin_bar";s:2:"on";s:23:"aiosp_custom_menu_order";s:2:"on";s:19:"aiosp_google_verify";s:43:"zcL645fF52n7WbATVMCYs53rhX7QL7nKj4egSK3HB8U";s:17:"aiosp_bing_verify";s:0:"";s:22:"aiosp_pinterest_verify";s:0:"";s:22:"aiosp_google_publisher";s:0:"";s:28:"aiosp_google_disable_profile";s:0:"";s:29:"aiosp_google_sitelinks_search";s:0:"";s:26:"aiosp_google_set_site_name";s:0:"";s:30:"aiosp_google_specify_site_name";s:0:"";s:28:"aiosp_google_author_advanced";s:1:"0";s:28:"aiosp_google_author_location";a:1:{i:0;s:3:"all";}s:29:"aiosp_google_enable_publisher";s:2:"on";s:30:"aiosp_google_specify_publisher";s:0:"";s:25:"aiosp_google_analytics_id";s:13:"UA-76847824-1";s:32:"aiosp_ga_use_universal_analytics";s:0:"";s:25:"aiosp_ga_advanced_options";s:2:"on";s:15:"aiosp_ga_domain";s:10:"huhu.pe.hu";s:21:"aiosp_ga_multi_domain";s:0:"";s:21:"aiosp_ga_addl_domains";s:0:"";s:21:"aiosp_ga_anonymize_ip";s:0:"";s:28:"aiosp_ga_display_advertising";s:0:"";s:22:"aiosp_ga_exclude_users";s:0:"";s:29:"aiosp_ga_track_outbound_links";s:0:"";s:25:"aiosp_ga_link_attribution";s:0:"";s:27:"aiosp_ga_enhanced_ecommerce";s:0:"";s:20:"aiosp_use_categories";s:0:"";s:26:"aiosp_use_tags_as_keywords";s:2:"on";s:32:"aiosp_dynamic_postspage_keywords";s:2:"on";s:22:"aiosp_category_noindex";s:2:"on";s:26:"aiosp_archive_date_noindex";s:2:"on";s:28:"aiosp_archive_author_noindex";s:2:"on";s:18:"aiosp_tags_noindex";s:0:"";s:20:"aiosp_search_noindex";s:0:"";s:17:"aiosp_404_noindex";s:0:"";s:17:"aiosp_tax_noindex";s:0:"";s:23:"aiosp_paginated_noindex";s:0:"";s:24:"aiosp_paginated_nofollow";s:0:"";s:11:"aiosp_noodp";s:0:"";s:12:"aiosp_noydir";s:0:"";s:18:"aiosp_skip_excerpt";s:0:"";s:27:"aiosp_generate_descriptions";s:2:"on";s:20:"aiosp_run_shortcodes";s:0:"";s:33:"aiosp_hide_paginated_descriptions";s:0:"";s:32:"aiosp_dont_truncate_descriptions";s:0:"";s:19:"aiosp_schema_markup";s:2:"on";s:20:"aiosp_unprotect_meta";s:0:"";s:14:"aiosp_ex_pages";s:0:"";s:20:"aiosp_post_meta_tags";s:0:"";s:20:"aiosp_page_meta_tags";s:0:"";s:21:"aiosp_front_meta_tags";s:0:"";s:20:"aiosp_home_meta_tags";s:0:"";s:12:"aiosp_do_log";s:0:"";s:19:"last_active_version";s:7:"2.3.4.2";s:7:"modules";a:3:{s:29:"aiosp_feature_manager_options";a:7:{s:36:"aiosp_feature_manager_enable_sitemap";s:2:"on";s:38:"aiosp_feature_manager_enable_opengraph";s:0:"";s:35:"aiosp_feature_manager_enable_robots";s:2:"on";s:40:"aiosp_feature_manager_enable_file_editor";s:2:"on";s:46:"aiosp_feature_manager_enable_importer_exporter";s:0:"";s:39:"aiosp_feature_manager_enable_bad_robots";s:0:"";s:40:"aiosp_feature_manager_enable_performance";s:2:"on";}s:21:"aiosp_sitemap_options";a:49:{s:22:"aiosp_sitemap_filename";s:7:"sitemap";s:20:"aiosp_sitemap_google";s:0:"";s:18:"aiosp_sitemap_bing";s:0:"";s:24:"aiosp_sitemap_daily_cron";s:1:"0";s:21:"aiosp_sitemap_indexes";s:0:"";s:22:"aiosp_sitemap_paginate";s:0:"";s:23:"aiosp_sitemap_max_posts";s:5:"50000";s:23:"aiosp_sitemap_posttypes";a:5:{i:0;s:3:"all";i:1;s:4:"post";i:2;s:4:"page";i:3;s:10:"attachment";i:4;s:7:"product";}s:24:"aiosp_sitemap_taxonomies";a:7:{i:0;s:3:"all";i:1;s:8:"category";i:2;s:8:"post_tag";i:3;s:11:"post_format";i:4;s:11:"product_cat";i:5;s:11:"product_tag";i:6;s:22:"product_shipping_class";}s:21:"aiosp_sitemap_archive";s:0:"";s:20:"aiosp_sitemap_author";s:0:"";s:21:"aiosp_sitemap_gzipped";s:2:"on";s:20:"aiosp_sitemap_robots";s:2:"on";s:21:"aiosp_sitemap_rewrite";s:2:"on";s:21:"aiosp_sitemap_noindex";s:0:"";s:24:"aiosp_sitemap_addl_pages";a:0:{}s:29:"aiosp_sitemap_excl_categories";s:0:"";s:24:"aiosp_sitemap_excl_pages";s:0:"";s:27:"aiosp_sitemap_prio_homepage";s:2:"no";s:23:"aiosp_sitemap_prio_post";s:2:"no";s:31:"aiosp_sitemap_prio_post_product";s:2:"no";s:34:"aiosp_sitemap_prio_post_attachment";s:2:"no";s:28:"aiosp_sitemap_prio_post_page";s:2:"no";s:28:"aiosp_sitemap_prio_post_post";s:2:"no";s:29:"aiosp_sitemap_prio_taxonomies";s:2:"no";s:52:"aiosp_sitemap_prio_taxonomies_product_shipping_class";s:2:"no";s:41:"aiosp_sitemap_prio_taxonomies_product_tag";s:2:"no";s:41:"aiosp_sitemap_prio_taxonomies_product_cat";s:2:"no";s:41:"aiosp_sitemap_prio_taxonomies_post_format";s:2:"no";s:38:"aiosp_sitemap_prio_taxonomies_post_tag";s:2:"no";s:38:"aiosp_sitemap_prio_taxonomies_category";s:2:"no";s:26:"aiosp_sitemap_prio_archive";s:2:"no";s:25:"aiosp_sitemap_prio_author";s:2:"no";s:27:"aiosp_sitemap_freq_homepage";s:2:"no";s:23:"aiosp_sitemap_freq_post";s:2:"no";s:31:"aiosp_sitemap_freq_post_product";s:2:"no";s:34:"aiosp_sitemap_freq_post_attachment";s:2:"no";s:28:"aiosp_sitemap_freq_post_page";s:2:"no";s:28:"aiosp_sitemap_freq_post_post";s:2:"no";s:29:"aiosp_sitemap_freq_taxonomies";s:2:"no";s:52:"aiosp_sitemap_freq_taxonomies_product_shipping_class";s:2:"no";s:41:"aiosp_sitemap_freq_taxonomies_product_tag";s:2:"no";s:41:"aiosp_sitemap_freq_taxonomies_product_cat";s:2:"no";s:41:"aiosp_sitemap_freq_taxonomies_post_format";s:2:"no";s:38:"aiosp_sitemap_freq_taxonomies_post_tag";s:2:"no";s:38:"aiosp_sitemap_freq_taxonomies_category";s:2:"no";s:26:"aiosp_sitemap_freq_archive";s:2:"no";s:25:"aiosp_sitemap_freq_author";s:2:"no";s:19:"aiosp_sitemap_debug";s:757:"2016-05-04 01:34:32  0.30 MB memory used generating the dynamic root sitemap in 1.000 seconds, 26.74 MB total memory used.\n2016-05-01 10:58:10 Настройки карты сайта обновлены.\n2016-05-01 10:58:10 bing не был проинформирован об изменениях карты сайта.\n2016-05-01 10:58:10 google не был проинформирован об изменениях карты сайта.\n2016-05-01 10:57:44 Настройки карты сайта обновлены.\n2016-05-01 10:57:44 bing не был проинформирован об изменениях карты сайта.\n2016-05-01 10:57:44 google не был проинформирован об изменениях карты сайта.\n";}s:20:"aiosp_robots_options";a:0:{}}s:29:"aiosp_attachment_title_format";s:27:"%post_title% | %blog_title%";s:26:"aiosp_product_title_format";s:27:"%post_title% | %blog_title%";s:36:"aiosp_product_variation_title_format";s:27:"%post_title% | %blog_title%";s:29:"aiosp_shop_order_title_format";s:27:"%post_title% | %blog_title%";s:36:"aiosp_shop_order_refund_title_format";s:27:"%post_title% | %blog_title%";s:31:"aiosp_shop_webhook_title_format";s:27:"%post_title% | %blog_title%";}', 'yes'),
(684, 'sm_options', 'a:51:{s:18:"sm_b_prio_provider";s:41:"GoogleSitemapGeneratorPrioByCountProvider";s:9:"sm_b_ping";b:1;s:10:"sm_b_stats";b:0;s:12:"sm_b_pingmsn";b:1;s:12:"sm_b_autozip";b:1;s:11:"sm_b_memory";s:0:"";s:9:"sm_b_time";i:-1;s:18:"sm_b_style_default";b:1;s:10:"sm_b_style";s:0:"";s:12:"sm_b_baseurl";s:0:"";s:11:"sm_b_robots";b:1;s:9:"sm_b_html";b:1;s:12:"sm_b_exclude";a:0:{}s:17:"sm_b_exclude_cats";a:0:{}s:10:"sm_in_home";b:1;s:11:"sm_in_posts";b:1;s:15:"sm_in_posts_sub";b:0;s:11:"sm_in_pages";b:1;s:10:"sm_in_cats";b:0;s:10:"sm_in_arch";b:0;s:10:"sm_in_auth";b:0;s:10:"sm_in_tags";b:0;s:9:"sm_in_tax";a:0:{}s:17:"sm_in_customtypes";a:0:{}s:13:"sm_in_lastmod";b:1;s:10:"sm_cf_home";s:5:"daily";s:11:"sm_cf_posts";s:7:"monthly";s:11:"sm_cf_pages";s:6:"weekly";s:10:"sm_cf_cats";s:6:"weekly";s:10:"sm_cf_auth";s:6:"weekly";s:15:"sm_cf_arch_curr";s:5:"daily";s:14:"sm_cf_arch_old";s:6:"yearly";s:10:"sm_cf_tags";s:6:"weekly";s:10:"sm_pr_home";d:1;s:11:"sm_pr_posts";d:0.59999999999999998;s:15:"sm_pr_posts_min";d:0.20000000000000001;s:11:"sm_pr_pages";d:0.59999999999999998;s:10:"sm_pr_cats";d:0.29999999999999999;s:10:"sm_pr_arch";d:0.29999999999999999;s:10:"sm_pr_auth";d:0.29999999999999999;s:10:"sm_pr_tags";d:0.29999999999999999;s:12:"sm_i_donated";b:0;s:17:"sm_i_hide_donated";b:0;s:17:"sm_i_install_date";i:1461528639;s:14:"sm_i_hide_note";b:0;s:15:"sm_i_hide_works";b:0;s:16:"sm_i_hide_donors";b:0;s:9:"sm_i_hash";s:20:"d54bd70ee3992ecd62ef";s:13:"sm_i_lastping";i:1461528640;s:16:"sm_i_supportfeed";b:1;s:22:"sm_i_supportfeed_cache";i:1461528641;}', 'yes'),
(685, 'sm_status', 'O:28:"GoogleSitemapGeneratorStatus":4:{s:39:"\0GoogleSitemapGeneratorStatus\0startTime";d:1461528639.2822349;s:37:"\0GoogleSitemapGeneratorStatus\0endTime";d:1461528640.4212821;s:41:"\0GoogleSitemapGeneratorStatus\0pingResults";a:2:{s:6:"google";a:5:{s:9:"startTime";d:1461528639.3852379;s:7:"endTime";d:1461528639.823257;s:7:"success";b:1;s:3:"url";s:92:"http://www.google.com/webmasters/sitemaps/ping?sitemap=http%3A%2F%2Fshop.local%2Fsitemap.xml";s:4:"name";s:6:"Google";}s:4:"bing";a:5:{s:9:"startTime";d:1461528639.9292631;s:7:"endTime";d:1461528640.244276;s:7:"success";b:1;s:3:"url";s:85:"http://www.bing.com/webmaster/ping.aspx?siteMap=http%3A%2F%2Fshop.local%2Fsitemap.xml";s:4:"name";s:4:"Bing";}}s:38:"\0GoogleSitemapGeneratorStatus\0autoSave";b:1;}', 'no'),
(753, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:22:"popkaslonika@gmail.com";s:7:"version";s:5:"4.5.1";s:9:"timestamp";i:1461701027;}', 'yes'),
(838, 'jivosite_widget_id', 'YHXOtZevhf', 'yes'),
(920, 'widget_wppb-login-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(921, 'wppb_version', '2.3.5', 'yes'),
(922, 'wppb_manage_fields', 'a:9:{i:0;a:21:{s:2:"id";i:2;s:5:"field";s:18:"Default - Username";s:9:"meta-name";s:0:"";s:11:"field-title";s:8:"Username";s:11:"description";s:0:"";s:8:"required";s:3:"Yes";s:18:"overwrite-existing";s:2:"No";s:9:"row-count";s:1:"5";s:24:"allowed-image-extensions";s:2:".*";s:25:"allowed-upload-extensions";s:2:".*";s:11:"avatar-size";s:3:"100";s:11:"date-format";s:8:"mm/dd/yy";s:18:"terms-of-agreement";s:0:"";s:7:"options";s:0:"";s:6:"labels";s:0:"";s:10:"public-key";s:0:"";s:11:"private-key";s:0:"";s:13:"default-value";s:0:"";s:14:"default-option";s:0:"";s:15:"default-options";s:0:"";s:15:"default-content";s:0:"";}i:1;a:21:{s:2:"id";i:3;s:5:"field";s:20:"Default - First Name";s:9:"meta-name";s:10:"first_name";s:11:"field-title";s:10:"First Name";s:11:"description";s:0:"";s:8:"required";s:2:"No";s:18:"overwrite-existing";s:2:"No";s:9:"row-count";s:1:"5";s:24:"allowed-image-extensions";s:2:".*";s:25:"allowed-upload-extensions";s:2:".*";s:11:"avatar-size";s:3:"100";s:11:"date-format";s:8:"mm/dd/yy";s:18:"terms-of-agreement";s:0:"";s:7:"options";s:0:"";s:6:"labels";s:0:"";s:10:"public-key";s:0:"";s:11:"private-key";s:0:"";s:13:"default-value";s:0:"";s:14:"default-option";s:0:"";s:15:"default-options";s:0:"";s:15:"default-content";s:0:"";}i:2;a:21:{s:2:"id";i:4;s:5:"field";s:19:"Default - Last Name";s:9:"meta-name";s:9:"last_name";s:11:"field-title";s:9:"Last Name";s:11:"description";s:0:"";s:8:"required";s:2:"No";s:18:"overwrite-existing";s:2:"No";s:9:"row-count";s:1:"5";s:24:"allowed-image-extensions";s:2:".*";s:25:"allowed-upload-extensions";s:2:".*";s:11:"avatar-size";s:3:"100";s:11:"date-format";s:8:"mm/dd/yy";s:18:"terms-of-agreement";s:0:"";s:7:"options";s:0:"";s:6:"labels";s:0:"";s:10:"public-key";s:0:"";s:11:"private-key";s:0:"";s:13:"default-value";s:0:"";s:14:"default-option";s:0:"";s:15:"default-options";s:0:"";s:15:"default-content";s:0:"";}i:3;a:21:{s:2:"id";i:5;s:5:"field";s:18:"Default - Nickname";s:9:"meta-name";s:8:"nickname";s:11:"field-title";s:8:"Nickname";s:11:"description";s:0:"";s:8:"required";s:2:"No";s:18:"overwrite-existing";s:2:"No";s:9:"row-count";s:1:"5";s:24:"allowed-image-extensions";s:2:".*";s:25:"allowed-upload-extensions";s:2:".*";s:11:"avatar-size";s:3:"100";s:11:"date-format";s:8:"mm/dd/yy";s:18:"terms-of-agreement";s:0:"";s:7:"options";s:0:"";s:6:"labels";s:0:"";s:10:"public-key";s:0:"";s:11:"private-key";s:0:"";s:13:"default-value";s:0:"";s:14:"default-option";s:0:"";s:15:"default-options";s:0:"";s:15:"default-content";s:0:"";}i:4;a:21:{s:2:"id";i:6;s:5:"field";s:34:"Default - Display name publicly as";s:9:"meta-name";s:0:"";s:11:"field-title";s:24:"Display name publicly as";s:11:"description";s:0:"";s:8:"required";s:2:"No";s:18:"overwrite-existing";s:2:"No";s:9:"row-count";s:1:"5";s:24:"allowed-image-extensions";s:2:".*";s:25:"allowed-upload-extensions";s:2:".*";s:11:"avatar-size";s:3:"100";s:11:"date-format";s:8:"mm/dd/yy";s:18:"terms-of-agreement";s:0:"";s:7:"options";s:0:"";s:6:"labels";s:0:"";s:10:"public-key";s:0:"";s:11:"private-key";s:0:"";s:13:"default-value";s:0:"";s:14:"default-option";s:0:"";s:15:"default-options";s:0:"";s:15:"default-content";s:0:"";}i:5;a:21:{s:2:"id";i:7;s:5:"field";s:32:"Default - Contact Info (Heading)";s:9:"meta-name";s:0:"";s:11:"field-title";s:12:"Contact Info";s:11:"description";s:0:"";s:8:"required";s:2:"No";s:18:"overwrite-existing";s:2:"No";s:9:"row-count";s:1:"5";s:24:"allowed-image-extensions";s:2:".*";s:25:"allowed-upload-extensions";s:2:".*";s:11:"avatar-size";s:3:"100";s:11:"date-format";s:8:"mm/dd/yy";s:18:"terms-of-agreement";s:0:"";s:7:"options";s:0:"";s:6:"labels";s:0:"";s:10:"public-key";s:0:"";s:11:"private-key";s:0:"";s:13:"default-value";s:0:"";s:14:"default-option";s:0:"";s:15:"default-options";s:0:"";s:15:"default-content";s:0:"";}i:6;a:21:{s:2:"id";i:8;s:5:"field";s:16:"Default - E-mail";s:9:"meta-name";s:0:"";s:11:"field-title";s:6:"E-mail";s:11:"description";s:0:"";s:8:"required";s:3:"Yes";s:18:"overwrite-existing";s:2:"No";s:9:"row-count";s:1:"5";s:24:"allowed-image-extensions";s:2:".*";s:25:"allowed-upload-extensions";s:2:".*";s:11:"avatar-size";s:3:"100";s:11:"date-format";s:8:"mm/dd/yy";s:18:"terms-of-agreement";s:0:"";s:7:"options";s:0:"";s:6:"labels";s:0:"";s:10:"public-key";s:0:"";s:11:"private-key";s:0:"";s:13:"default-value";s:0:"";s:14:"default-option";s:0:"";s:15:"default-options";s:0:"";s:15:"default-content";s:0:"";}i:7;a:21:{s:2:"id";i:12;s:5:"field";s:18:"Default - Password";s:9:"meta-name";s:0:"";s:11:"field-title";s:8:"Password";s:11:"description";s:0:"";s:8:"required";s:3:"Yes";s:18:"overwrite-existing";s:2:"No";s:9:"row-count";s:1:"5";s:24:"allowed-image-extensions";s:2:".*";s:25:"allowed-upload-extensions";s:2:".*";s:11:"avatar-size";s:3:"100";s:11:"date-format";s:8:"mm/dd/yy";s:18:"terms-of-agreement";s:0:"";s:7:"options";s:0:"";s:6:"labels";s:0:"";s:10:"public-key";s:0:"";s:11:"private-key";s:0:"";s:13:"default-value";s:0:"";s:14:"default-option";s:0:"";s:15:"default-options";s:0:"";s:15:"default-content";s:0:"";}i:8;a:21:{s:2:"id";i:13;s:5:"field";s:25:"Default - Repeat Password";s:9:"meta-name";s:0:"";s:11:"field-title";s:15:"Repeat Password";s:11:"description";s:0:"";s:8:"required";s:3:"Yes";s:18:"overwrite-existing";s:2:"No";s:9:"row-count";s:1:"5";s:24:"allowed-image-extensions";s:2:".*";s:25:"allowed-upload-extensions";s:2:".*";s:11:"avatar-size";s:3:"100";s:11:"date-format";s:8:"mm/dd/yy";s:18:"terms-of-agreement";s:0:"";s:7:"options";s:0:"";s:6:"labels";s:0:"";s:10:"public-key";s:0:"";s:11:"private-key";s:0:"";s:13:"default-value";s:0:"";s:14:"default-option";s:0:"";s:15:"default-options";s:0:"";s:15:"default-content";s:0:"";}}', 'yes'),
(930, 'wppb_general_settings', 'a:6:{s:17:"extraFieldsLayout";s:7:"default";s:17:"emailConfirmation";s:2:"no";s:21:"activationLandingPage";s:0:"";s:9:"loginWith";s:13:"usernameemail";s:23:"minimum_password_length";s:1:"5";s:25:"minimum_password_strength";s:3:"bad";}', 'yes'),
(933, 'wppb_display_admin_settings', 'a:0:{}', 'yes'),
(1087, 'wooccm_update_notice', '0', 'yes'),
(1088, 'wccs_settings', 'a:1:{s:9:"checkness";a:7:{s:8:"position";s:17:"after_order_notes";s:25:"wooccm_notification_email";s:22:"popkaslonika@gmail.com";s:16:"payment_method_d";s:14:"Payment Method";s:16:"time_stamp_title";s:10:"Order Time";s:16:"payment_method_t";s:1:"1";s:17:"shipping_method_d";s:15:"Shipping Method";s:17:"shipping_method_t";s:1:"1";}}', 'yes'),
(1089, 'wccs_settings2', 'a:1:{s:16:"shipping_buttons";a:9:{i:0;a:6:{s:5:"label";s:7:"Country";s:3:"cow";s:7:"country";s:8:"checkbox";s:4:"true";s:5:"order";i:1;s:4:"type";s:10:"wooccmtext";s:8:"position";s:13:"form-row-wide";}i:1;a:6:{s:5:"label";s:10:"First Name";s:3:"cow";s:10:"first_name";s:8:"checkbox";s:4:"true";s:5:"order";i:2;s:4:"type";s:10:"wooccmtext";s:8:"position";s:14:"form-row-first";}i:2;a:7:{s:5:"label";s:9:"Last Name";s:3:"cow";s:9:"last_name";s:8:"checkbox";s:4:"true";s:5:"order";i:3;s:4:"type";s:10:"wooccmtext";s:8:"position";s:13:"form-row-last";s:9:"clear_row";b:1;}i:3;a:6:{s:5:"label";s:12:"Company Name";s:3:"cow";s:7:"company";s:8:"checkbox";s:4:"true";s:5:"order";i:4;s:4:"type";s:10:"wooccmtext";s:8:"position";s:13:"form-row-wide";}i:4;a:7:{s:5:"label";s:7:"Address";s:3:"cow";s:9:"address_1";s:8:"checkbox";s:4:"true";s:5:"order";i:5;s:4:"type";s:10:"wooccmtext";s:8:"position";s:13:"form-row-wide";s:11:"placeholder";s:14:"Street address";}i:5;a:7:{s:5:"label";s:0:"";s:3:"cow";s:9:"address_2";s:8:"checkbox";s:4:"true";s:5:"order";i:6;s:4:"type";s:10:"wooccmtext";s:8:"position";s:13:"form-row-wide";s:11:"placeholder";s:38:"Apartment, suite, unit etc. (optional)";}i:6;a:7:{s:5:"label";s:10:"Town/ City";s:3:"cow";s:4:"city";s:8:"checkbox";s:4:"true";s:5:"order";i:7;s:4:"type";s:10:"wooccmtext";s:8:"position";s:13:"form-row-wide";s:11:"placeholder";s:11:"Town / City";}i:7;a:6:{s:5:"label";s:5:"State";s:3:"cow";s:5:"state";s:8:"checkbox";s:4:"true";s:5:"order";i:8;s:4:"type";s:10:"wooccmtext";s:8:"position";s:14:"form-row-first";}i:8;a:8:{s:5:"label";s:3:"Zip";s:3:"cow";s:8:"postcode";s:8:"checkbox";s:4:"true";s:5:"order";i:9;s:4:"type";s:10:"wooccmtext";s:8:"position";s:13:"form-row-last";s:11:"placeholder";s:14:"Postcode / Zip";s:9:"clear_row";b:1;}}}', 'yes'),
(1090, 'wccs_settings3', 'a:1:{s:15:"billing_buttons";a:11:{i:0;a:35:{s:5:"order";s:1:"1";s:8:"single_p";s:0:"";s:9:"single_px";s:0:"";s:12:"single_p_cat";s:0:"";s:13:"single_px_cat";s:0:"";s:10:"start_hour";s:0:"";s:8:"end_hour";s:0:"";s:12:"interval_min";s:0:"";s:10:"manual_min";s:0:"";s:11:"format_date";s:0:"";s:10:"min_before";s:0:"";s:9:"max_after";s:0:"";s:9:"single_yy";s:0:"";s:9:"single_mm";s:0:"";s:9:"single_dd";s:0:"";s:13:"single_max_yy";s:0:"";s:13:"single_max_mm";s:0:"";s:13:"single_max_dd";s:0:"";s:8:"checkbox";s:4:"true";s:8:"position";s:13:"form-row-wide";s:8:"fee_name";s:0:"";s:16:"add_amount_field";s:0:"";s:5:"label";s:7:"Country";s:11:"placeholder";s:0:"";s:11:"chosen_valt";s:0:"";s:15:"conditional_tie";s:0:"";s:12:"colorpickerd";s:0:"";s:15:"colorpickertype";s:10:"farbtastic";s:12:"role_options";s:0:"";s:13:"role_options2";s:0:"";s:11:"extra_class";s:0:"";s:12:"force_title2";s:0:"";s:12:"option_array";s:0:"";s:4:"type";s:13:"wooccmcountry";s:3:"cow";s:7:"country";}i:1;a:35:{s:5:"order";s:1:"2";s:8:"single_p";s:0:"";s:9:"single_px";s:0:"";s:12:"single_p_cat";s:0:"";s:13:"single_px_cat";s:0:"";s:10:"start_hour";s:0:"";s:8:"end_hour";s:0:"";s:12:"interval_min";s:0:"";s:10:"manual_min";s:0:"";s:11:"format_date";s:0:"";s:10:"min_before";s:0:"";s:9:"max_after";s:0:"";s:9:"single_yy";s:0:"";s:9:"single_mm";s:0:"";s:9:"single_dd";s:0:"";s:13:"single_max_yy";s:0:"";s:13:"single_max_mm";s:0:"";s:13:"single_max_dd";s:0:"";s:8:"checkbox";s:4:"true";s:8:"position";s:14:"form-row-first";s:8:"fee_name";s:0:"";s:16:"add_amount_field";s:0:"";s:5:"label";s:10:"First Name";s:11:"placeholder";s:0:"";s:11:"chosen_valt";s:0:"";s:15:"conditional_tie";s:0:"";s:12:"colorpickerd";s:0:"";s:15:"colorpickertype";s:10:"farbtastic";s:12:"role_options";s:0:"";s:13:"role_options2";s:0:"";s:11:"extra_class";s:0:"";s:12:"force_title2";s:0:"";s:12:"option_array";s:0:"";s:4:"type";s:10:"wooccmtext";s:3:"cow";s:10:"first_name";}i:2;a:36:{s:5:"order";s:1:"3";s:8:"single_p";s:0:"";s:9:"single_px";s:0:"";s:12:"single_p_cat";s:0:"";s:13:"single_px_cat";s:0:"";s:10:"start_hour";s:0:"";s:8:"end_hour";s:0:"";s:12:"interval_min";s:0:"";s:10:"manual_min";s:0:"";s:11:"format_date";s:0:"";s:10:"min_before";s:0:"";s:9:"max_after";s:0:"";s:9:"single_yy";s:0:"";s:9:"single_mm";s:0:"";s:9:"single_dd";s:0:"";s:13:"single_max_yy";s:0:"";s:13:"single_max_mm";s:0:"";s:13:"single_max_dd";s:0:"";s:8:"checkbox";s:4:"true";s:8:"position";s:13:"form-row-last";s:9:"clear_row";s:4:"true";s:8:"fee_name";s:0:"";s:16:"add_amount_field";s:0:"";s:5:"label";s:9:"Last Name";s:11:"placeholder";s:0:"";s:11:"chosen_valt";s:0:"";s:15:"conditional_tie";s:0:"";s:12:"colorpickerd";s:0:"";s:15:"colorpickertype";s:10:"farbtastic";s:12:"role_options";s:0:"";s:13:"role_options2";s:0:"";s:11:"extra_class";s:0:"";s:12:"force_title2";s:0:"";s:12:"option_array";s:0:"";s:4:"type";s:10:"wooccmtext";s:3:"cow";s:9:"last_name";}i:3;a:36:{s:5:"order";s:1:"4";s:8:"single_p";s:0:"";s:9:"single_px";s:0:"";s:12:"single_p_cat";s:0:"";s:13:"single_px_cat";s:0:"";s:10:"start_hour";s:0:"";s:8:"end_hour";s:0:"";s:12:"interval_min";s:0:"";s:10:"manual_min";s:0:"";s:11:"format_date";s:0:"";s:10:"min_before";s:0:"";s:9:"max_after";s:0:"";s:9:"single_yy";s:0:"";s:9:"single_mm";s:0:"";s:9:"single_dd";s:0:"";s:13:"single_max_yy";s:0:"";s:13:"single_max_mm";s:0:"";s:13:"single_max_dd";s:0:"";s:8:"checkbox";s:4:"true";s:8:"position";s:13:"form-row-wide";s:8:"fee_name";s:0:"";s:16:"add_amount_field";s:0:"";s:5:"label";s:12:"Company Name";s:11:"placeholder";s:0:"";s:11:"chosen_valt";s:0:"";s:15:"conditional_tie";s:0:"";s:12:"colorpickerd";s:0:"";s:15:"colorpickertype";s:10:"farbtastic";s:12:"role_options";s:0:"";s:13:"role_options2";s:0:"";s:11:"extra_class";s:0:"";s:12:"force_title2";s:0:"";s:12:"option_array";s:0:"";s:4:"type";s:10:"wooccmtext";s:3:"cow";s:7:"company";s:8:"disabled";s:4:"true";}i:4;a:35:{s:5:"order";s:1:"5";s:8:"single_p";s:0:"";s:9:"single_px";s:0:"";s:12:"single_p_cat";s:0:"";s:13:"single_px_cat";s:0:"";s:10:"start_hour";s:0:"";s:8:"end_hour";s:0:"";s:12:"interval_min";s:0:"";s:10:"manual_min";s:0:"";s:11:"format_date";s:0:"";s:10:"min_before";s:0:"";s:9:"max_after";s:0:"";s:9:"single_yy";s:0:"";s:9:"single_mm";s:0:"";s:9:"single_dd";s:0:"";s:13:"single_max_yy";s:0:"";s:13:"single_max_mm";s:0:"";s:13:"single_max_dd";s:0:"";s:8:"checkbox";s:4:"true";s:8:"position";s:13:"form-row-wide";s:8:"fee_name";s:0:"";s:16:"add_amount_field";s:0:"";s:5:"label";s:7:"Address";s:11:"placeholder";s:14:"Street address";s:11:"chosen_valt";s:0:"";s:15:"conditional_tie";s:0:"";s:12:"colorpickerd";s:0:"";s:15:"colorpickertype";s:10:"farbtastic";s:12:"role_options";s:0:"";s:13:"role_options2";s:0:"";s:11:"extra_class";s:0:"";s:12:"force_title2";s:0:"";s:12:"option_array";s:0:"";s:4:"type";s:10:"wooccmtext";s:3:"cow";s:9:"address_1";}i:5;a:35:{s:5:"order";s:1:"6";s:8:"single_p";s:0:"";s:9:"single_px";s:0:"";s:12:"single_p_cat";s:0:"";s:13:"single_px_cat";s:0:"";s:10:"start_hour";s:0:"";s:8:"end_hour";s:0:"";s:12:"interval_min";s:0:"";s:10:"manual_min";s:0:"";s:11:"format_date";s:0:"";s:10:"min_before";s:0:"";s:9:"max_after";s:0:"";s:9:"single_yy";s:0:"";s:9:"single_mm";s:0:"";s:9:"single_dd";s:0:"";s:13:"single_max_yy";s:0:"";s:13:"single_max_mm";s:0:"";s:13:"single_max_dd";s:0:"";s:8:"checkbox";s:4:"true";s:8:"position";s:13:"form-row-wide";s:8:"fee_name";s:0:"";s:16:"add_amount_field";s:0:"";s:5:"label";s:0:"";s:11:"placeholder";s:38:"Apartment, suite, unit etc. (optional)";s:11:"chosen_valt";s:0:"";s:15:"conditional_tie";s:0:"";s:12:"colorpickerd";s:0:"";s:15:"colorpickertype";s:10:"farbtastic";s:12:"role_options";s:0:"";s:13:"role_options2";s:0:"";s:11:"extra_class";s:0:"";s:12:"force_title2";s:0:"";s:12:"option_array";s:0:"";s:4:"type";s:10:"wooccmtext";s:3:"cow";s:9:"address_2";}i:6;a:35:{s:5:"order";s:1:"7";s:8:"single_p";s:0:"";s:9:"single_px";s:0:"";s:12:"single_p_cat";s:0:"";s:13:"single_px_cat";s:0:"";s:10:"start_hour";s:0:"";s:8:"end_hour";s:0:"";s:12:"interval_min";s:0:"";s:10:"manual_min";s:0:"";s:11:"format_date";s:0:"";s:10:"min_before";s:0:"";s:9:"max_after";s:0:"";s:9:"single_yy";s:0:"";s:9:"single_mm";s:0:"";s:9:"single_dd";s:0:"";s:13:"single_max_yy";s:0:"";s:13:"single_max_mm";s:0:"";s:13:"single_max_dd";s:0:"";s:8:"checkbox";s:4:"true";s:8:"position";s:13:"form-row-wide";s:8:"fee_name";s:0:"";s:16:"add_amount_field";s:0:"";s:5:"label";s:10:"Town/ City";s:11:"placeholder";s:11:"Town / City";s:11:"chosen_valt";s:0:"";s:15:"conditional_tie";s:0:"";s:12:"colorpickerd";s:0:"";s:15:"colorpickertype";s:10:"farbtastic";s:12:"role_options";s:0:"";s:13:"role_options2";s:0:"";s:11:"extra_class";s:0:"";s:12:"force_title2";s:0:"";s:12:"option_array";s:0:"";s:4:"type";s:10:"wooccmtext";s:3:"cow";s:4:"city";}i:7;a:35:{s:5:"order";s:1:"8";s:8:"single_p";s:0:"";s:9:"single_px";s:0:"";s:12:"single_p_cat";s:0:"";s:13:"single_px_cat";s:0:"";s:10:"start_hour";s:0:"";s:8:"end_hour";s:0:"";s:12:"interval_min";s:0:"";s:10:"manual_min";s:0:"";s:11:"format_date";s:0:"";s:10:"min_before";s:0:"";s:9:"max_after";s:0:"";s:9:"single_yy";s:0:"";s:9:"single_mm";s:0:"";s:9:"single_dd";s:0:"";s:13:"single_max_yy";s:0:"";s:13:"single_max_mm";s:0:"";s:13:"single_max_dd";s:0:"";s:8:"checkbox";s:4:"true";s:8:"position";s:14:"form-row-first";s:8:"fee_name";s:0:"";s:16:"add_amount_field";s:0:"";s:5:"label";s:5:"State";s:11:"placeholder";s:0:"";s:11:"chosen_valt";s:0:"";s:15:"conditional_tie";s:0:"";s:12:"colorpickerd";s:0:"";s:15:"colorpickertype";s:10:"farbtastic";s:12:"role_options";s:0:"";s:13:"role_options2";s:0:"";s:11:"extra_class";s:0:"";s:12:"force_title2";s:0:"";s:12:"option_array";s:0:"";s:4:"type";s:11:"wooccmstate";s:3:"cow";s:5:"state";}i:8;a:36:{s:5:"order";s:1:"9";s:8:"single_p";s:0:"";s:9:"single_px";s:0:"";s:12:"single_p_cat";s:0:"";s:13:"single_px_cat";s:0:"";s:10:"start_hour";s:0:"";s:8:"end_hour";s:0:"";s:12:"interval_min";s:0:"";s:10:"manual_min";s:0:"";s:11:"format_date";s:0:"";s:10:"min_before";s:0:"";s:9:"max_after";s:0:"";s:9:"single_yy";s:0:"";s:9:"single_mm";s:0:"";s:9:"single_dd";s:0:"";s:13:"single_max_yy";s:0:"";s:13:"single_max_mm";s:0:"";s:13:"single_max_dd";s:0:"";s:8:"checkbox";s:4:"true";s:8:"position";s:13:"form-row-last";s:9:"clear_row";s:4:"true";s:8:"fee_name";s:0:"";s:16:"add_amount_field";s:0:"";s:5:"label";s:3:"Zip";s:11:"placeholder";s:14:"Postcode / Zip";s:11:"chosen_valt";s:0:"";s:15:"conditional_tie";s:0:"";s:12:"colorpickerd";s:0:"";s:15:"colorpickertype";s:10:"farbtastic";s:12:"role_options";s:0:"";s:13:"role_options2";s:0:"";s:11:"extra_class";s:0:"";s:12:"force_title2";s:0:"";s:12:"option_array";s:0:"";s:4:"type";s:10:"wooccmtext";s:3:"cow";s:8:"postcode";}i:9;a:35:{s:5:"order";s:2:"10";s:8:"single_p";s:0:"";s:9:"single_px";s:0:"";s:12:"single_p_cat";s:0:"";s:13:"single_px_cat";s:0:"";s:10:"start_hour";s:0:"";s:8:"end_hour";s:0:"";s:12:"interval_min";s:0:"";s:10:"manual_min";s:0:"";s:11:"format_date";s:0:"";s:10:"min_before";s:0:"";s:9:"max_after";s:0:"";s:9:"single_yy";s:0:"";s:9:"single_mm";s:0:"";s:9:"single_dd";s:0:"";s:13:"single_max_yy";s:0:"";s:13:"single_max_mm";s:0:"";s:13:"single_max_dd";s:0:"";s:8:"checkbox";s:4:"true";s:8:"position";s:14:"form-row-first";s:8:"fee_name";s:0:"";s:16:"add_amount_field";s:0:"";s:5:"label";s:13:"Email Address";s:11:"placeholder";s:0:"";s:11:"chosen_valt";s:0:"";s:15:"conditional_tie";s:0:"";s:12:"colorpickerd";s:0:"";s:15:"colorpickertype";s:10:"farbtastic";s:12:"role_options";s:0:"";s:13:"role_options2";s:0:"";s:11:"extra_class";s:0:"";s:12:"force_title2";s:0:"";s:12:"option_array";s:0:"";s:4:"type";s:10:"wooccmtext";s:3:"cow";s:5:"email";}i:10;a:36:{s:5:"order";s:2:"11";s:8:"single_p";s:0:"";s:9:"single_px";s:0:"";s:12:"single_p_cat";s:0:"";s:13:"single_px_cat";s:0:"";s:10:"start_hour";s:0:"";s:8:"end_hour";s:0:"";s:12:"interval_min";s:0:"";s:10:"manual_min";s:0:"";s:11:"format_date";s:0:"";s:10:"min_before";s:0:"";s:9:"max_after";s:0:"";s:9:"single_yy";s:0:"";s:9:"single_mm";s:0:"";s:9:"single_dd";s:0:"";s:13:"single_max_yy";s:0:"";s:13:"single_max_mm";s:0:"";s:13:"single_max_dd";s:0:"";s:8:"checkbox";s:4:"true";s:8:"position";s:13:"form-row-last";s:9:"clear_row";s:4:"true";s:8:"fee_name";s:0:"";s:16:"add_amount_field";s:0:"";s:5:"label";s:5:"Phone";s:11:"placeholder";s:0:"";s:11:"chosen_valt";s:0:"";s:15:"conditional_tie";s:0:"";s:12:"colorpickerd";s:0:"";s:15:"colorpickertype";s:10:"farbtastic";s:12:"role_options";s:0:"";s:13:"role_options2";s:0:"";s:11:"extra_class";s:0:"";s:12:"force_title2";s:0:"";s:12:"option_array";s:0:"";s:4:"type";s:10:"wooccmtext";s:3:"cow";s:5:"phone";}}}', 'yes'),
(1127, 'product_cat_children', 'a:0:{}', 'yes'),
(1197, 'woothemes_helper_dismiss_activation_notice', '1', 'yes'),
(1198, 'wooccm_beta_notice', '1', 'yes'),
(1210, 'gadwp_cache_qr2_2422732264', 'a:2:{s:5:"value";O:31:"Google_Service_Analytics_GaData":24:{s:17:"\0*\0collection_key";s:4:"rows";s:25:"\0*\0internal_gapi_mappings";a:0:{}s:20:"\0*\0columnHeadersType";s:44:"Google_Service_Analytics_GaDataColumnHeaders";s:24:"\0*\0columnHeadersDataType";s:5:"array";s:19:"containsSampledData";b:0;s:16:"\0*\0dataTableType";s:40:"Google_Service_Analytics_GaDataDataTable";s:20:"\0*\0dataTableDataType";s:0:"";s:2:"id";s:167:"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:120827195&dimensions=ga:date,ga:dayOfWeekName&metrics=ga:organicSearches&start-date=14daysAgo&end-date=yesterday";s:12:"itemsPerPage";i:1000;s:4:"kind";s:16:"analytics#gaData";s:8:"nextLink";N;s:12:"previousLink";N;s:18:"\0*\0profileInfoType";s:42:"Google_Service_Analytics_GaDataProfileInfo";s:22:"\0*\0profileInfoDataType";s:0:"";s:12:"\0*\0queryType";s:36:"Google_Service_Analytics_GaDataQuery";s:16:"\0*\0queryDataType";s:0:"";s:4:"rows";a:14:{i:0;a:3:{i:0;s:8:"20160420";i:1;s:9:"Wednesday";i:2;s:1:"0";}i:1;a:3:{i:0;s:8:"20160421";i:1;s:8:"Thursday";i:2;s:1:"0";}i:2;a:3:{i:0;s:8:"20160422";i:1;s:6:"Friday";i:2;s:1:"0";}i:3;a:3:{i:0;s:8:"20160423";i:1;s:8:"Saturday";i:2;s:1:"0";}i:4;a:3:{i:0;s:8:"20160424";i:1;s:6:"Sunday";i:2;s:1:"0";}i:5;a:3:{i:0;s:8:"20160425";i:1;s:6:"Monday";i:2;s:1:"0";}i:6;a:3:{i:0;s:8:"20160426";i:1;s:7:"Tuesday";i:2;s:1:"3";}i:7;a:3:{i:0;s:8:"20160427";i:1;s:9:"Wednesday";i:2;s:1:"1";}i:8;a:3:{i:0;s:8:"20160428";i:1;s:8:"Thursday";i:2;s:1:"0";}i:9;a:3:{i:0;s:8:"20160429";i:1;s:6:"Friday";i:2;s:1:"0";}i:10;a:3:{i:0;s:8:"20160430";i:1;s:8:"Saturday";i:2;s:1:"0";}i:11;a:3:{i:0;s:8:"20160501";i:1;s:6:"Sunday";i:2;s:1:"0";}i:12;a:3:{i:0;s:8:"20160502";i:1;s:6:"Monday";i:2;s:1:"0";}i:13;a:3:{i:0;s:8:"20160503";i:1;s:7:"Tuesday";i:2;s:1:"0";}}s:10:"sampleSize";N;s:11:"sampleSpace";N;s:8:"selfLink";s:167:"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:120827195&dimensions=ga:date,ga:dayOfWeekName&metrics=ga:organicSearches&start-date=14daysAgo&end-date=yesterday";s:12:"totalResults";i:14;s:19:"totalsForAllResults";a:1:{s:18:"ga:organicSearches";s:1:"4";}s:12:"\0*\0modelData";a:3:{s:5:"query";a:7:{s:10:"start-date";s:9:"14daysAgo";s:8:"end-date";s:9:"yesterday";s:3:"ids";s:12:"ga:120827195";s:10:"dimensions";s:24:"ga:date,ga:dayOfWeekName";s:7:"metrics";a:1:{i:0;s:18:"ga:organicSearches";}s:11:"start-index";i:1;s:11:"max-results";i:1000;}s:11:"profileInfo";a:6:{s:9:"profileId";s:9:"120827195";s:9:"accountId";s:8:"76847824";s:13:"webPropertyId";s:13:"UA-76847824-1";s:21:"internalWebPropertyId";s:9:"115581567";s:11:"profileName";s:17:"All Web Site Data";s:7:"tableId";s:12:"ga:120827195";}s:13:"columnHeaders";a:3:{i:0;a:3:{s:4:"name";s:7:"ga:date";s:10:"columnType";s:9:"DIMENSION";s:8:"dataType";s:6:"STRING";}i:1;a:3:{s:4:"name";s:16:"ga:dayOfWeekName";s:10:"columnType";s:9:"DIMENSION";s:8:"dataType";s:6:"STRING";}i:2;a:3:{s:4:"name";s:18:"ga:organicSearches";s:10:"columnType";s:6:"METRIC";s:8:"dataType";s:7:"INTEGER";}}}s:12:"\0*\0processed";a:0:{}}s:7:"expires";i:1462395600;}', 'yes'),
(1211, 'gadwp_cache_qr2_1882361478', 'a:2:{s:5:"value";O:31:"Google_Service_Analytics_GaData":24:{s:17:"\0*\0collection_key";s:4:"rows";s:25:"\0*\0internal_gapi_mappings";a:0:{}s:20:"\0*\0columnHeadersType";s:44:"Google_Service_Analytics_GaDataColumnHeaders";s:24:"\0*\0columnHeadersDataType";s:5:"array";s:19:"containsSampledData";b:0;s:16:"\0*\0dataTableType";s:40:"Google_Service_Analytics_GaDataDataTable";s:20:"\0*\0dataTableDataType";s:0:"";s:2:"id";s:161:"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:120827195&dimensions=ga:date,ga:dayOfWeekName&metrics=ga:pageviews&start-date=14daysAgo&end-date=yesterday";s:12:"itemsPerPage";i:1000;s:4:"kind";s:16:"analytics#gaData";s:8:"nextLink";N;s:12:"previousLink";N;s:18:"\0*\0profileInfoType";s:42:"Google_Service_Analytics_GaDataProfileInfo";s:22:"\0*\0profileInfoDataType";s:0:"";s:12:"\0*\0queryType";s:36:"Google_Service_Analytics_GaDataQuery";s:16:"\0*\0queryDataType";s:0:"";s:4:"rows";a:14:{i:0;a:3:{i:0;s:8:"20160420";i:1;s:9:"Wednesday";i:2;s:1:"0";}i:1;a:3:{i:0;s:8:"20160421";i:1;s:8:"Thursday";i:2;s:1:"0";}i:2;a:3:{i:0;s:8:"20160422";i:1;s:6:"Friday";i:2;s:1:"0";}i:3;a:3:{i:0;s:8:"20160423";i:1;s:8:"Saturday";i:2;s:1:"0";}i:4;a:3:{i:0;s:8:"20160424";i:1;s:6:"Sunday";i:2;s:1:"8";}i:5;a:3:{i:0;s:8:"20160425";i:1;s:6:"Monday";i:2;s:1:"2";}i:6;a:3:{i:0;s:8:"20160426";i:1;s:7:"Tuesday";i:2;s:2:"10";}i:7;a:3:{i:0;s:8:"20160427";i:1;s:9:"Wednesday";i:2;s:2:"87";}i:8;a:3:{i:0;s:8:"20160428";i:1;s:8:"Thursday";i:2;s:1:"5";}i:9;a:3:{i:0;s:8:"20160429";i:1;s:6:"Friday";i:2;s:1:"0";}i:10;a:3:{i:0;s:8:"20160430";i:1;s:8:"Saturday";i:2;s:1:"1";}i:11;a:3:{i:0;s:8:"20160501";i:1;s:6:"Sunday";i:2;s:3:"111";}i:12;a:3:{i:0;s:8:"20160502";i:1;s:6:"Monday";i:2;s:2:"27";}i:13;a:3:{i:0;s:8:"20160503";i:1;s:7:"Tuesday";i:2;s:2:"86";}}s:10:"sampleSize";N;s:11:"sampleSpace";N;s:8:"selfLink";s:161:"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:120827195&dimensions=ga:date,ga:dayOfWeekName&metrics=ga:pageviews&start-date=14daysAgo&end-date=yesterday";s:12:"totalResults";i:14;s:19:"totalsForAllResults";a:1:{s:12:"ga:pageviews";s:3:"337";}s:12:"\0*\0modelData";a:3:{s:5:"query";a:7:{s:10:"start-date";s:9:"14daysAgo";s:8:"end-date";s:9:"yesterday";s:3:"ids";s:12:"ga:120827195";s:10:"dimensions";s:24:"ga:date,ga:dayOfWeekName";s:7:"metrics";a:1:{i:0;s:12:"ga:pageviews";}s:11:"start-index";i:1;s:11:"max-results";i:1000;}s:11:"profileInfo";a:6:{s:9:"profileId";s:9:"120827195";s:9:"accountId";s:8:"76847824";s:13:"webPropertyId";s:13:"UA-76847824-1";s:21:"internalWebPropertyId";s:9:"115581567";s:11:"profileName";s:17:"All Web Site Data";s:7:"tableId";s:12:"ga:120827195";}s:13:"columnHeaders";a:3:{i:0;a:3:{s:4:"name";s:7:"ga:date";s:10:"columnType";s:9:"DIMENSION";s:8:"dataType";s:6:"STRING";}i:1;a:3:{s:4:"name";s:16:"ga:dayOfWeekName";s:10:"columnType";s:9:"DIMENSION";s:8:"dataType";s:6:"STRING";}i:2;a:3:{s:4:"name";s:12:"ga:pageviews";s:10:"columnType";s:6:"METRIC";s:8:"dataType";s:7:"INTEGER";}}}s:12:"\0*\0processed";a:0:{}}s:7:"expires";i:1462395600;}', 'yes'),
(1218, 'gadwp_cache_qr10_2924620294', 'a:2:{s:5:"value";O:31:"Google_Service_Analytics_GaData":24:{s:17:"\0*\0collection_key";s:4:"rows";s:25:"\0*\0internal_gapi_mappings";a:0:{}s:20:"\0*\0columnHeadersType";s:44:"Google_Service_Analytics_GaDataColumnHeaders";s:24:"\0*\0columnHeadersDataType";s:5:"array";s:19:"containsSampledData";b:0;s:16:"\0*\0dataTableType";s:40:"Google_Service_Analytics_GaDataDataTable";s:20:"\0*\0dataTableDataType";s:0:"";s:2:"id";s:194:"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:120827195&dimensions=ga:medium&metrics=ga:sessions&sort=-ga:sessions&filters=ga:medium!%3D(not+set)&start-date=14daysAgo&end-date=yesterday";s:12:"itemsPerPage";i:1000;s:4:"kind";s:16:"analytics#gaData";s:8:"nextLink";N;s:12:"previousLink";N;s:18:"\0*\0profileInfoType";s:42:"Google_Service_Analytics_GaDataProfileInfo";s:22:"\0*\0profileInfoDataType";s:0:"";s:12:"\0*\0queryType";s:36:"Google_Service_Analytics_GaDataQuery";s:16:"\0*\0queryDataType";s:0:"";s:4:"rows";a:3:{i:0;a:2:{i:0;s:6:"(none)";i:1;s:2:"33";}i:1;a:2:{i:0;s:7:"organic";i:1;s:1:"7";}i:2;a:2:{i:0;s:8:"referral";i:1;s:1:"4";}}s:10:"sampleSize";N;s:11:"sampleSpace";N;s:8:"selfLink";s:194:"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:120827195&dimensions=ga:medium&metrics=ga:sessions&sort=-ga:sessions&filters=ga:medium!%3D(not+set)&start-date=14daysAgo&end-date=yesterday";s:12:"totalResults";i:3;s:19:"totalsForAllResults";a:1:{s:11:"ga:sessions";s:2:"44";}s:12:"\0*\0modelData";a:3:{s:5:"query";a:9:{s:10:"start-date";s:9:"14daysAgo";s:8:"end-date";s:9:"yesterday";s:3:"ids";s:12:"ga:120827195";s:10:"dimensions";s:9:"ga:medium";s:7:"metrics";a:1:{i:0;s:11:"ga:sessions";}s:4:"sort";a:1:{i:0;s:12:"-ga:sessions";}s:7:"filters";s:20:"ga:medium!=(not set)";s:11:"start-index";i:1;s:11:"max-results";i:1000;}s:11:"profileInfo";a:6:{s:9:"profileId";s:9:"120827195";s:9:"accountId";s:8:"76847824";s:13:"webPropertyId";s:13:"UA-76847824-1";s:21:"internalWebPropertyId";s:9:"115581567";s:11:"profileName";s:17:"All Web Site Data";s:7:"tableId";s:12:"ga:120827195";}s:13:"columnHeaders";a:2:{i:0;a:3:{s:4:"name";s:9:"ga:medium";s:10:"columnType";s:9:"DIMENSION";s:8:"dataType";s:6:"STRING";}i:1;a:3:{s:4:"name";s:11:"ga:sessions";s:10:"columnType";s:6:"METRIC";s:8:"dataType";s:7:"INTEGER";}}}s:12:"\0*\0processed";a:0:{}}s:7:"expires";i:1462395600;}', 'yes'),
(1219, 'gadwp_cache_qr10_3810432252', 'a:2:{s:5:"value";O:31:"Google_Service_Analytics_GaData":24:{s:17:"\0*\0collection_key";s:4:"rows";s:25:"\0*\0internal_gapi_mappings";a:0:{}s:20:"\0*\0columnHeadersType";s:44:"Google_Service_Analytics_GaDataColumnHeaders";s:24:"\0*\0columnHeadersDataType";s:5:"array";s:19:"containsSampledData";b:0;s:16:"\0*\0dataTableType";s:40:"Google_Service_Analytics_GaDataDataTable";s:20:"\0*\0dataTableDataType";s:0:"";s:2:"id";s:204:"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:120827195&dimensions=ga:visitorType&metrics=ga:sessions&sort=-ga:sessions&filters=ga:visitorType!%3D(not+set)&start-date=14daysAgo&end-date=yesterday";s:12:"itemsPerPage";i:1000;s:4:"kind";s:16:"analytics#gaData";s:8:"nextLink";N;s:12:"previousLink";N;s:18:"\0*\0profileInfoType";s:42:"Google_Service_Analytics_GaDataProfileInfo";s:22:"\0*\0profileInfoDataType";s:0:"";s:12:"\0*\0queryType";s:36:"Google_Service_Analytics_GaDataQuery";s:16:"\0*\0queryDataType";s:0:"";s:4:"rows";a:2:{i:0;a:2:{i:0;s:17:"Returning Visitor";i:1;s:2:"26";}i:1;a:2:{i:0;s:11:"New Visitor";i:1;s:2:"18";}}s:10:"sampleSize";N;s:11:"sampleSpace";N;s:8:"selfLink";s:204:"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:120827195&dimensions=ga:visitorType&metrics=ga:sessions&sort=-ga:sessions&filters=ga:visitorType!%3D(not+set)&start-date=14daysAgo&end-date=yesterday";s:12:"totalResults";i:2;s:19:"totalsForAllResults";a:1:{s:11:"ga:sessions";s:2:"44";}s:12:"\0*\0modelData";a:3:{s:5:"query";a:9:{s:10:"start-date";s:9:"14daysAgo";s:8:"end-date";s:9:"yesterday";s:3:"ids";s:12:"ga:120827195";s:10:"dimensions";s:14:"ga:visitorType";s:7:"metrics";a:1:{i:0;s:11:"ga:sessions";}s:4:"sort";a:1:{i:0;s:12:"-ga:sessions";}s:7:"filters";s:25:"ga:visitorType!=(not set)";s:11:"start-index";i:1;s:11:"max-results";i:1000;}s:11:"profileInfo";a:6:{s:9:"profileId";s:9:"120827195";s:9:"accountId";s:8:"76847824";s:13:"webPropertyId";s:13:"UA-76847824-1";s:21:"internalWebPropertyId";s:9:"115581567";s:11:"profileName";s:17:"All Web Site Data";s:7:"tableId";s:12:"ga:120827195";}s:13:"columnHeaders";a:2:{i:0;a:3:{s:4:"name";s:14:"ga:visitorType";s:10:"columnType";s:9:"DIMENSION";s:8:"dataType";s:6:"STRING";}i:1;a:3:{s:4:"name";s:11:"ga:sessions";s:10:"columnType";s:6:"METRIC";s:8:"dataType";s:7:"INTEGER";}}}s:12:"\0*\0processed";a:0:{}}s:7:"expires";i:1462395600;}', 'yes'),
(1220, 'gadwp_cache_qr10_933957826', 'a:2:{s:5:"value";O:31:"Google_Service_Analytics_GaData":24:{s:17:"\0*\0collection_key";s:4:"rows";s:25:"\0*\0internal_gapi_mappings";a:0:{}s:20:"\0*\0columnHeadersType";s:44:"Google_Service_Analytics_GaDataColumnHeaders";s:24:"\0*\0columnHeadersDataType";s:5:"array";s:19:"containsSampledData";b:0;s:16:"\0*\0dataTableType";s:40:"Google_Service_Analytics_GaDataDataTable";s:20:"\0*\0dataTableDataType";s:0:"";s:2:"id";s:218:"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:120827195&dimensions=ga:source&metrics=ga:sessions&sort=-ga:sessions&filters=ga:medium%3D%3Dorganic;ga:keyword!%3D(not+set)&start-date=14daysAgo&end-date=yesterday";s:12:"itemsPerPage";i:1000;s:4:"kind";s:16:"analytics#gaData";s:8:"nextLink";N;s:12:"previousLink";N;s:18:"\0*\0profileInfoType";s:42:"Google_Service_Analytics_GaDataProfileInfo";s:22:"\0*\0profileInfoDataType";s:0:"";s:12:"\0*\0queryType";s:36:"Google_Service_Analytics_GaDataQuery";s:16:"\0*\0queryDataType";s:0:"";s:4:"rows";a:1:{i:0;a:2:{i:0;s:6:"google";i:1;s:1:"7";}}s:10:"sampleSize";N;s:11:"sampleSpace";N;s:8:"selfLink";s:218:"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:120827195&dimensions=ga:source&metrics=ga:sessions&sort=-ga:sessions&filters=ga:medium%3D%3Dorganic;ga:keyword!%3D(not+set)&start-date=14daysAgo&end-date=yesterday";s:12:"totalResults";i:1;s:19:"totalsForAllResults";a:1:{s:11:"ga:sessions";s:1:"7";}s:12:"\0*\0modelData";a:3:{s:5:"query";a:9:{s:10:"start-date";s:9:"14daysAgo";s:8:"end-date";s:9:"yesterday";s:3:"ids";s:12:"ga:120827195";s:10:"dimensions";s:9:"ga:source";s:7:"metrics";a:1:{i:0;s:11:"ga:sessions";}s:4:"sort";a:1:{i:0;s:12:"-ga:sessions";}s:7:"filters";s:40:"ga:medium==organic;ga:keyword!=(not set)";s:11:"start-index";i:1;s:11:"max-results";i:1000;}s:11:"profileInfo";a:6:{s:9:"profileId";s:9:"120827195";s:9:"accountId";s:8:"76847824";s:13:"webPropertyId";s:13:"UA-76847824-1";s:21:"internalWebPropertyId";s:9:"115581567";s:11:"profileName";s:17:"All Web Site Data";s:7:"tableId";s:12:"ga:120827195";}s:13:"columnHeaders";a:2:{i:0;a:3:{s:4:"name";s:9:"ga:source";s:10:"columnType";s:9:"DIMENSION";s:8:"dataType";s:6:"STRING";}i:1;a:3:{s:4:"name";s:11:"ga:sessions";s:10:"columnType";s:6:"METRIC";s:8:"dataType";s:7:"INTEGER";}}}s:12:"\0*\0processed";a:0:{}}s:7:"expires";i:1462395600;}', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1221, 'gadwp_cache_qr10_902962108', 'a:2:{s:5:"value";O:31:"Google_Service_Analytics_GaData":24:{s:17:"\0*\0collection_key";s:4:"rows";s:25:"\0*\0internal_gapi_mappings";a:0:{}s:20:"\0*\0columnHeadersType";s:44:"Google_Service_Analytics_GaDataColumnHeaders";s:24:"\0*\0columnHeadersDataType";s:5:"array";s:19:"containsSampledData";b:0;s:16:"\0*\0dataTableType";s:40:"Google_Service_Analytics_GaDataDataTable";s:20:"\0*\0dataTableDataType";s:0:"";s:2:"id";s:208:"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:120827195&dimensions=ga:socialNetwork&metrics=ga:sessions&sort=-ga:sessions&filters=ga:socialNetwork!%3D(not+set)&start-date=14daysAgo&end-date=yesterday";s:12:"itemsPerPage";i:1000;s:4:"kind";s:16:"analytics#gaData";s:8:"nextLink";N;s:12:"previousLink";N;s:18:"\0*\0profileInfoType";s:42:"Google_Service_Analytics_GaDataProfileInfo";s:22:"\0*\0profileInfoDataType";s:0:"";s:12:"\0*\0queryType";s:36:"Google_Service_Analytics_GaDataQuery";s:16:"\0*\0queryDataType";s:0:"";s:4:"rows";N;s:10:"sampleSize";N;s:11:"sampleSpace";N;s:8:"selfLink";s:208:"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:120827195&dimensions=ga:socialNetwork&metrics=ga:sessions&sort=-ga:sessions&filters=ga:socialNetwork!%3D(not+set)&start-date=14daysAgo&end-date=yesterday";s:12:"totalResults";i:0;s:19:"totalsForAllResults";a:1:{s:11:"ga:sessions";s:1:"0";}s:12:"\0*\0modelData";a:3:{s:5:"query";a:9:{s:10:"start-date";s:9:"14daysAgo";s:8:"end-date";s:9:"yesterday";s:3:"ids";s:12:"ga:120827195";s:10:"dimensions";s:16:"ga:socialNetwork";s:7:"metrics";a:1:{i:0;s:11:"ga:sessions";}s:4:"sort";a:1:{i:0;s:12:"-ga:sessions";}s:7:"filters";s:27:"ga:socialNetwork!=(not set)";s:11:"start-index";i:1;s:11:"max-results";i:1000;}s:11:"profileInfo";a:6:{s:9:"profileId";s:9:"120827195";s:9:"accountId";s:8:"76847824";s:13:"webPropertyId";s:13:"UA-76847824-1";s:21:"internalWebPropertyId";s:9:"115581567";s:11:"profileName";s:17:"All Web Site Data";s:7:"tableId";s:12:"ga:120827195";}s:13:"columnHeaders";a:2:{i:0;a:3:{s:4:"name";s:16:"ga:socialNetwork";s:10:"columnType";s:9:"DIMENSION";s:8:"dataType";s:6:"STRING";}i:1;a:3:{s:4:"name";s:11:"ga:sessions";s:10:"columnType";s:6:"METRIC";s:8:"dataType";s:7:"INTEGER";}}}s:12:"\0*\0processed";a:0:{}}s:7:"expires";i:1462395600;}', 'yes'),
(1223, 'gadwp_cache_qr8_64242525', 'a:2:{s:5:"value";O:31:"Google_Service_Analytics_GaData":24:{s:17:"\0*\0collection_key";s:4:"rows";s:25:"\0*\0internal_gapi_mappings";a:0:{}s:20:"\0*\0columnHeadersType";s:44:"Google_Service_Analytics_GaDataColumnHeaders";s:24:"\0*\0columnHeadersDataType";s:5:"array";s:19:"containsSampledData";b:0;s:16:"\0*\0dataTableType";s:40:"Google_Service_Analytics_GaDataDataTable";s:20:"\0*\0dataTableDataType";s:0:"";s:2:"id";s:171:"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:120827195&dimensions=ga:deviceCategory&metrics=ga:sessions&sort=-ga:sessions&start-date=14daysAgo&end-date=yesterday";s:12:"itemsPerPage";i:1000;s:4:"kind";s:16:"analytics#gaData";s:8:"nextLink";N;s:12:"previousLink";N;s:18:"\0*\0profileInfoType";s:42:"Google_Service_Analytics_GaDataProfileInfo";s:22:"\0*\0profileInfoDataType";s:0:"";s:12:"\0*\0queryType";s:36:"Google_Service_Analytics_GaDataQuery";s:16:"\0*\0queryDataType";s:0:"";s:4:"rows";a:2:{i:0;a:2:{i:0;s:7:"desktop";i:1;s:2:"39";}i:1;a:2:{i:0;s:6:"mobile";i:1;s:1:"5";}}s:10:"sampleSize";N;s:11:"sampleSpace";N;s:8:"selfLink";s:171:"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:120827195&dimensions=ga:deviceCategory&metrics=ga:sessions&sort=-ga:sessions&start-date=14daysAgo&end-date=yesterday";s:12:"totalResults";i:2;s:19:"totalsForAllResults";a:1:{s:11:"ga:sessions";s:2:"44";}s:12:"\0*\0modelData";a:3:{s:5:"query";a:8:{s:10:"start-date";s:9:"14daysAgo";s:8:"end-date";s:9:"yesterday";s:3:"ids";s:12:"ga:120827195";s:10:"dimensions";s:17:"ga:deviceCategory";s:7:"metrics";a:1:{i:0;s:11:"ga:sessions";}s:4:"sort";a:1:{i:0;s:12:"-ga:sessions";}s:11:"start-index";i:1;s:11:"max-results";i:1000;}s:11:"profileInfo";a:6:{s:9:"profileId";s:9:"120827195";s:9:"accountId";s:8:"76847824";s:13:"webPropertyId";s:13:"UA-76847824-1";s:21:"internalWebPropertyId";s:9:"115581567";s:11:"profileName";s:17:"All Web Site Data";s:7:"tableId";s:12:"ga:120827195";}s:13:"columnHeaders";a:2:{i:0;a:3:{s:4:"name";s:17:"ga:deviceCategory";s:10:"columnType";s:9:"DIMENSION";s:8:"dataType";s:6:"STRING";}i:1;a:3:{s:4:"name";s:11:"ga:sessions";s:10:"columnType";s:6:"METRIC";s:8:"dataType";s:7:"INTEGER";}}}s:12:"\0*\0processed";a:0:{}}s:7:"expires";i:1462395600;}', 'yes'),
(1224, 'gadwp_cache_qr10_1713220943', 'a:2:{s:5:"value";O:31:"Google_Service_Analytics_GaData":24:{s:17:"\0*\0collection_key";s:4:"rows";s:25:"\0*\0internal_gapi_mappings";a:0:{}s:20:"\0*\0columnHeadersType";s:44:"Google_Service_Analytics_GaDataColumnHeaders";s:24:"\0*\0columnHeadersDataType";s:5:"array";s:19:"containsSampledData";b:0;s:16:"\0*\0dataTableType";s:40:"Google_Service_Analytics_GaDataDataTable";s:20:"\0*\0dataTableDataType";s:0:"";s:2:"id";s:196:"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:120827195&dimensions=ga:browser&metrics=ga:sessions&sort=-ga:sessions&filters=ga:browser!%3D(not+set)&start-date=14daysAgo&end-date=yesterday";s:12:"itemsPerPage";i:1000;s:4:"kind";s:16:"analytics#gaData";s:8:"nextLink";N;s:12:"previousLink";N;s:18:"\0*\0profileInfoType";s:42:"Google_Service_Analytics_GaDataProfileInfo";s:22:"\0*\0profileInfoDataType";s:0:"";s:12:"\0*\0queryType";s:36:"Google_Service_Analytics_GaDataQuery";s:16:"\0*\0queryDataType";s:0:"";s:4:"rows";a:4:{i:0;a:2:{i:0;s:6:"Chrome";i:1;s:2:"38";}i:1;a:2:{i:0;s:6:"Safari";i:1;s:1:"3";}i:2;a:2:{i:0;s:15:"Safari (in-app)";i:1;s:1:"2";}i:3;a:2:{i:0;s:5:"Opera";i:1;s:1:"1";}}s:10:"sampleSize";N;s:11:"sampleSpace";N;s:8:"selfLink";s:196:"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:120827195&dimensions=ga:browser&metrics=ga:sessions&sort=-ga:sessions&filters=ga:browser!%3D(not+set)&start-date=14daysAgo&end-date=yesterday";s:12:"totalResults";i:4;s:19:"totalsForAllResults";a:1:{s:11:"ga:sessions";s:2:"44";}s:12:"\0*\0modelData";a:3:{s:5:"query";a:9:{s:10:"start-date";s:9:"14daysAgo";s:8:"end-date";s:9:"yesterday";s:3:"ids";s:12:"ga:120827195";s:10:"dimensions";s:10:"ga:browser";s:7:"metrics";a:1:{i:0;s:11:"ga:sessions";}s:4:"sort";a:1:{i:0;s:12:"-ga:sessions";}s:7:"filters";s:21:"ga:browser!=(not set)";s:11:"start-index";i:1;s:11:"max-results";i:1000;}s:11:"profileInfo";a:6:{s:9:"profileId";s:9:"120827195";s:9:"accountId";s:8:"76847824";s:13:"webPropertyId";s:13:"UA-76847824-1";s:21:"internalWebPropertyId";s:9:"115581567";s:11:"profileName";s:17:"All Web Site Data";s:7:"tableId";s:12:"ga:120827195";}s:13:"columnHeaders";a:2:{i:0;a:3:{s:4:"name";s:10:"ga:browser";s:10:"columnType";s:9:"DIMENSION";s:8:"dataType";s:6:"STRING";}i:1;a:3:{s:4:"name";s:11:"ga:sessions";s:10:"columnType";s:6:"METRIC";s:8:"dataType";s:7:"INTEGER";}}}s:12:"\0*\0processed";a:0:{}}s:7:"expires";i:1462395600;}', 'yes'),
(1225, 'gadwp_cache_qr10_1098233653', 'a:2:{s:5:"value";O:31:"Google_Service_Analytics_GaData":24:{s:17:"\0*\0collection_key";s:4:"rows";s:25:"\0*\0internal_gapi_mappings";a:0:{}s:20:"\0*\0columnHeadersType";s:44:"Google_Service_Analytics_GaDataColumnHeaders";s:24:"\0*\0columnHeadersDataType";s:5:"array";s:19:"containsSampledData";b:0;s:16:"\0*\0dataTableType";s:40:"Google_Service_Analytics_GaDataDataTable";s:20:"\0*\0dataTableDataType";s:0:"";s:2:"id";s:212:"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:120827195&dimensions=ga:operatingSystem&metrics=ga:sessions&sort=-ga:sessions&filters=ga:operatingSystem!%3D(not+set)&start-date=14daysAgo&end-date=yesterday";s:12:"itemsPerPage";i:1000;s:4:"kind";s:16:"analytics#gaData";s:8:"nextLink";N;s:12:"previousLink";N;s:18:"\0*\0profileInfoType";s:42:"Google_Service_Analytics_GaDataProfileInfo";s:22:"\0*\0profileInfoDataType";s:0:"";s:12:"\0*\0queryType";s:36:"Google_Service_Analytics_GaDataQuery";s:16:"\0*\0queryDataType";s:0:"";s:4:"rows";a:3:{i:0;a:2:{i:0;s:7:"Windows";i:1;s:2:"39";}i:1;a:2:{i:0;s:3:"iOS";i:1;s:1:"4";}i:2;a:2:{i:0;s:13:"Windows Phone";i:1;s:1:"1";}}s:10:"sampleSize";N;s:11:"sampleSpace";N;s:8:"selfLink";s:212:"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:120827195&dimensions=ga:operatingSystem&metrics=ga:sessions&sort=-ga:sessions&filters=ga:operatingSystem!%3D(not+set)&start-date=14daysAgo&end-date=yesterday";s:12:"totalResults";i:3;s:19:"totalsForAllResults";a:1:{s:11:"ga:sessions";s:2:"44";}s:12:"\0*\0modelData";a:3:{s:5:"query";a:9:{s:10:"start-date";s:9:"14daysAgo";s:8:"end-date";s:9:"yesterday";s:3:"ids";s:12:"ga:120827195";s:10:"dimensions";s:18:"ga:operatingSystem";s:7:"metrics";a:1:{i:0;s:11:"ga:sessions";}s:4:"sort";a:1:{i:0;s:12:"-ga:sessions";}s:7:"filters";s:29:"ga:operatingSystem!=(not set)";s:11:"start-index";i:1;s:11:"max-results";i:1000;}s:11:"profileInfo";a:6:{s:9:"profileId";s:9:"120827195";s:9:"accountId";s:8:"76847824";s:13:"webPropertyId";s:13:"UA-76847824-1";s:21:"internalWebPropertyId";s:9:"115581567";s:11:"profileName";s:17:"All Web Site Data";s:7:"tableId";s:12:"ga:120827195";}s:13:"columnHeaders";a:2:{i:0;a:3:{s:4:"name";s:18:"ga:operatingSystem";s:10:"columnType";s:9:"DIMENSION";s:8:"dataType";s:6:"STRING";}i:1;a:3:{s:4:"name";s:11:"ga:sessions";s:10:"columnType";s:6:"METRIC";s:8:"dataType";s:7:"INTEGER";}}}s:12:"\0*\0processed";a:0:{}}s:7:"expires";i:1462395600;}', 'yes'),
(1226, 'gadwp_cache_qr10_3719786931', 'a:2:{s:5:"value";O:31:"Google_Service_Analytics_GaData":24:{s:17:"\0*\0collection_key";s:4:"rows";s:25:"\0*\0internal_gapi_mappings";a:0:{}s:20:"\0*\0columnHeadersType";s:44:"Google_Service_Analytics_GaDataColumnHeaders";s:24:"\0*\0columnHeadersDataType";s:5:"array";s:19:"containsSampledData";b:0;s:16:"\0*\0dataTableType";s:40:"Google_Service_Analytics_GaDataDataTable";s:20:"\0*\0dataTableDataType";s:0:"";s:2:"id";s:214:"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:120827195&dimensions=ga:screenResolution&metrics=ga:sessions&sort=-ga:sessions&filters=ga:screenResolution!%3D(not+set)&start-date=14daysAgo&end-date=yesterday";s:12:"itemsPerPage";i:1000;s:4:"kind";s:16:"analytics#gaData";s:8:"nextLink";N;s:12:"previousLink";N;s:18:"\0*\0profileInfoType";s:42:"Google_Service_Analytics_GaDataProfileInfo";s:22:"\0*\0profileInfoDataType";s:0:"";s:12:"\0*\0queryType";s:36:"Google_Service_Analytics_GaDataQuery";s:16:"\0*\0queryDataType";s:0:"";s:4:"rows";a:4:{i:0;a:2:{i:0;s:8:"1366x768";i:1;s:2:"33";}i:1;a:2:{i:0;s:8:"1440x900";i:1;s:1:"6";}i:2;a:2:{i:0;s:9:"1280x1024";i:1;s:1:"4";}i:3;a:2:{i:0;s:7:"364x606";i:1;s:1:"1";}}s:10:"sampleSize";N;s:11:"sampleSpace";N;s:8:"selfLink";s:214:"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:120827195&dimensions=ga:screenResolution&metrics=ga:sessions&sort=-ga:sessions&filters=ga:screenResolution!%3D(not+set)&start-date=14daysAgo&end-date=yesterday";s:12:"totalResults";i:4;s:19:"totalsForAllResults";a:1:{s:11:"ga:sessions";s:2:"44";}s:12:"\0*\0modelData";a:3:{s:5:"query";a:9:{s:10:"start-date";s:9:"14daysAgo";s:8:"end-date";s:9:"yesterday";s:3:"ids";s:12:"ga:120827195";s:10:"dimensions";s:19:"ga:screenResolution";s:7:"metrics";a:1:{i:0;s:11:"ga:sessions";}s:4:"sort";a:1:{i:0;s:12:"-ga:sessions";}s:7:"filters";s:30:"ga:screenResolution!=(not set)";s:11:"start-index";i:1;s:11:"max-results";i:1000;}s:11:"profileInfo";a:6:{s:9:"profileId";s:9:"120827195";s:9:"accountId";s:8:"76847824";s:13:"webPropertyId";s:13:"UA-76847824-1";s:21:"internalWebPropertyId";s:9:"115581567";s:11:"profileName";s:17:"All Web Site Data";s:7:"tableId";s:12:"ga:120827195";}s:13:"columnHeaders";a:2:{i:0;a:3:{s:4:"name";s:19:"ga:screenResolution";s:10:"columnType";s:9:"DIMENSION";s:8:"dataType";s:6:"STRING";}i:1;a:3:{s:4:"name";s:11:"ga:sessions";s:10:"columnType";s:6:"METRIC";s:8:"dataType";s:7:"INTEGER";}}}s:12:"\0*\0processed";a:0:{}}s:7:"expires";i:1462395600;}', 'yes'),
(1227, 'gadwp_cache_qr10_4255368375', 'a:2:{s:5:"value";O:31:"Google_Service_Analytics_GaData":24:{s:17:"\0*\0collection_key";s:4:"rows";s:25:"\0*\0internal_gapi_mappings";a:0:{}s:20:"\0*\0columnHeadersType";s:44:"Google_Service_Analytics_GaDataColumnHeaders";s:24:"\0*\0columnHeadersDataType";s:5:"array";s:19:"containsSampledData";b:0;s:16:"\0*\0dataTableType";s:40:"Google_Service_Analytics_GaDataDataTable";s:20:"\0*\0dataTableDataType";s:0:"";s:2:"id";s:222:"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:120827195&dimensions=ga:mobileDeviceBranding&metrics=ga:sessions&sort=-ga:sessions&filters=ga:mobileDeviceBranding!%3D(not+set)&start-date=14daysAgo&end-date=yesterday";s:12:"itemsPerPage";i:1000;s:4:"kind";s:16:"analytics#gaData";s:8:"nextLink";N;s:12:"previousLink";N;s:18:"\0*\0profileInfoType";s:42:"Google_Service_Analytics_GaDataProfileInfo";s:22:"\0*\0profileInfoDataType";s:0:"";s:12:"\0*\0queryType";s:36:"Google_Service_Analytics_GaDataQuery";s:16:"\0*\0queryDataType";s:0:"";s:4:"rows";a:2:{i:0;a:2:{i:0;s:5:"Apple";i:1;s:1:"4";}i:1;a:2:{i:0;s:5:"Nokia";i:1;s:1:"1";}}s:10:"sampleSize";N;s:11:"sampleSpace";N;s:8:"selfLink";s:222:"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:120827195&dimensions=ga:mobileDeviceBranding&metrics=ga:sessions&sort=-ga:sessions&filters=ga:mobileDeviceBranding!%3D(not+set)&start-date=14daysAgo&end-date=yesterday";s:12:"totalResults";i:2;s:19:"totalsForAllResults";a:1:{s:11:"ga:sessions";s:1:"5";}s:12:"\0*\0modelData";a:3:{s:5:"query";a:9:{s:10:"start-date";s:9:"14daysAgo";s:8:"end-date";s:9:"yesterday";s:3:"ids";s:12:"ga:120827195";s:10:"dimensions";s:23:"ga:mobileDeviceBranding";s:7:"metrics";a:1:{i:0;s:11:"ga:sessions";}s:4:"sort";a:1:{i:0;s:12:"-ga:sessions";}s:7:"filters";s:34:"ga:mobileDeviceBranding!=(not set)";s:11:"start-index";i:1;s:11:"max-results";i:1000;}s:11:"profileInfo";a:6:{s:9:"profileId";s:9:"120827195";s:9:"accountId";s:8:"76847824";s:13:"webPropertyId";s:13:"UA-76847824-1";s:21:"internalWebPropertyId";s:9:"115581567";s:11:"profileName";s:17:"All Web Site Data";s:7:"tableId";s:12:"ga:120827195";}s:13:"columnHeaders";a:2:{i:0;a:3:{s:4:"name";s:23:"ga:mobileDeviceBranding";s:10:"columnType";s:9:"DIMENSION";s:8:"dataType";s:6:"STRING";}i:1;a:3:{s:4:"name";s:11:"ga:sessions";s:10:"columnType";s:6:"METRIC";s:8:"dataType";s:7:"INTEGER";}}}s:12:"\0*\0processed";a:0:{}}s:7:"expires";i:1462395600;}', 'yes'),
(1255, 'gadwp_cache_qr_realtimecache_2472696173', 'a:2:{s:5:"value";O:37:"Google_Service_Analytics_RealtimeData":16:{s:17:"\0*\0collection_key";s:4:"rows";s:25:"\0*\0internal_gapi_mappings";a:0:{}s:20:"\0*\0columnHeadersType";s:50:"Google_Service_Analytics_RealtimeDataColumnHeaders";s:24:"\0*\0columnHeadersDataType";s:5:"array";s:2:"id";s:180:"https://www.googleapis.com/analytics/v3/data/realtime?ids=ga:120827195&dimensions=rt:pagePath,rt:source,rt:keyword,rt:trafficType,rt:visitorType,rt:pageTitle&metrics=rt:activeUsers";s:4:"kind";s:22:"analytics#realtimeData";s:18:"\0*\0profileInfoType";s:48:"Google_Service_Analytics_RealtimeDataProfileInfo";s:22:"\0*\0profileInfoDataType";s:0:"";s:12:"\0*\0queryType";s:42:"Google_Service_Analytics_RealtimeDataQuery";s:16:"\0*\0queryDataType";s:0:"";s:4:"rows";N;s:8:"selfLink";s:180:"https://www.googleapis.com/analytics/v3/data/realtime?ids=ga:120827195&dimensions=rt:pagePath,rt:source,rt:keyword,rt:trafficType,rt:visitorType,rt:pageTitle&metrics=rt:activeUsers";s:12:"totalResults";i:0;s:19:"totalsForAllResults";a:1:{s:14:"rt:activeUsers";s:1:"0";}s:12:"\0*\0modelData";a:3:{s:5:"query";a:4:{s:3:"ids";s:12:"ga:120827195";s:10:"dimensions";s:75:"rt:pagePath,rt:source,rt:keyword,rt:trafficType,rt:visitorType,rt:pageTitle";s:7:"metrics";a:1:{i:0;s:14:"rt:activeUsers";}s:11:"max-results";i:1000;}s:11:"profileInfo";a:6:{s:9:"profileId";s:9:"120827195";s:9:"accountId";s:8:"76847824";s:13:"webPropertyId";s:13:"UA-76847824-1";s:21:"internalWebPropertyId";s:9:"115581567";s:11:"profileName";s:17:"All Web Site Data";s:7:"tableId";s:18:"realtime:120827195";}s:13:"columnHeaders";a:7:{i:0;a:3:{s:4:"name";s:11:"rt:pagePath";s:10:"columnType";s:9:"DIMENSION";s:8:"dataType";s:6:"STRING";}i:1;a:3:{s:4:"name";s:9:"rt:source";s:10:"columnType";s:9:"DIMENSION";s:8:"dataType";s:6:"STRING";}i:2;a:3:{s:4:"name";s:10:"rt:keyword";s:10:"columnType";s:9:"DIMENSION";s:8:"dataType";s:6:"STRING";}i:3;a:3:{s:4:"name";s:14:"rt:trafficType";s:10:"columnType";s:9:"DIMENSION";s:8:"dataType";s:6:"STRING";}i:4;a:3:{s:4:"name";s:14:"rt:visitorType";s:10:"columnType";s:9:"DIMENSION";s:8:"dataType";s:6:"STRING";}i:5;a:3:{s:4:"name";s:12:"rt:pageTitle";s:10:"columnType";s:9:"DIMENSION";s:8:"dataType";s:6:"STRING";}i:6;a:3:{s:4:"name";s:14:"rt:activeUsers";s:10:"columnType";s:6:"METRIC";s:8:"dataType";s:7:"INTEGER";}}}s:12:"\0*\0processed";a:0:{}}s:7:"expires";i:1462374821;}', 'yes'),
(1282, 'gadwp_cache_qr2_2992201382', 'a:2:{s:5:"value";O:31:"Google_Service_Analytics_GaData":24:{s:17:"\0*\0collection_key";s:4:"rows";s:25:"\0*\0internal_gapi_mappings";a:0:{}s:20:"\0*\0columnHeadersType";s:44:"Google_Service_Analytics_GaDataColumnHeaders";s:24:"\0*\0columnHeadersDataType";s:5:"array";s:19:"containsSampledData";b:0;s:16:"\0*\0dataTableType";s:40:"Google_Service_Analytics_GaDataDataTable";s:20:"\0*\0dataTableDataType";s:0:"";s:2:"id";s:160:"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:120827195&dimensions=ga:date,ga:dayOfWeekName&metrics=ga:sessions&start-date=14daysAgo&end-date=yesterday";s:12:"itemsPerPage";i:1000;s:4:"kind";s:16:"analytics#gaData";s:8:"nextLink";N;s:12:"previousLink";N;s:18:"\0*\0profileInfoType";s:42:"Google_Service_Analytics_GaDataProfileInfo";s:22:"\0*\0profileInfoDataType";s:0:"";s:12:"\0*\0queryType";s:36:"Google_Service_Analytics_GaDataQuery";s:16:"\0*\0queryDataType";s:0:"";s:4:"rows";a:14:{i:0;a:3:{i:0;s:8:"20160421";i:1;s:8:"Thursday";i:2;s:1:"0";}i:1;a:3:{i:0;s:8:"20160422";i:1;s:6:"Friday";i:2;s:1:"0";}i:2;a:3:{i:0;s:8:"20160423";i:1;s:8:"Saturday";i:2;s:1:"0";}i:3;a:3:{i:0;s:8:"20160424";i:1;s:6:"Sunday";i:2;s:1:"3";}i:4;a:3:{i:0;s:8:"20160425";i:1;s:6:"Monday";i:2;s:1:"2";}i:5;a:3:{i:0;s:8:"20160426";i:1;s:7:"Tuesday";i:2;s:1:"7";}i:6;a:3:{i:0;s:8:"20160427";i:1;s:9:"Wednesday";i:2;s:2:"14";}i:7;a:3:{i:0;s:8:"20160428";i:1;s:8:"Thursday";i:2;s:1:"1";}i:8;a:3:{i:0;s:8:"20160429";i:1;s:6:"Friday";i:2;s:1:"0";}i:9;a:3:{i:0;s:8:"20160430";i:1;s:8:"Saturday";i:2;s:1:"1";}i:10;a:3:{i:0;s:8:"20160501";i:1;s:6:"Sunday";i:2;s:1:"6";}i:11;a:3:{i:0;s:8:"20160502";i:1;s:6:"Monday";i:2;s:1:"5";}i:12;a:3:{i:0;s:8:"20160503";i:1;s:7:"Tuesday";i:2;s:1:"5";}i:13;a:3:{i:0;s:8:"20160504";i:1;s:9:"Wednesday";i:2;s:2:"43";}}s:10:"sampleSize";N;s:11:"sampleSpace";N;s:8:"selfLink";s:160:"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:120827195&dimensions=ga:date,ga:dayOfWeekName&metrics=ga:sessions&start-date=14daysAgo&end-date=yesterday";s:12:"totalResults";i:14;s:19:"totalsForAllResults";a:1:{s:11:"ga:sessions";s:2:"87";}s:12:"\0*\0modelData";a:3:{s:5:"query";a:7:{s:10:"start-date";s:9:"14daysAgo";s:8:"end-date";s:9:"yesterday";s:3:"ids";s:12:"ga:120827195";s:10:"dimensions";s:24:"ga:date,ga:dayOfWeekName";s:7:"metrics";a:1:{i:0;s:11:"ga:sessions";}s:11:"start-index";i:1;s:11:"max-results";i:1000;}s:11:"profileInfo";a:6:{s:9:"profileId";s:9:"120827195";s:9:"accountId";s:8:"76847824";s:13:"webPropertyId";s:13:"UA-76847824-1";s:21:"internalWebPropertyId";s:9:"115581567";s:11:"profileName";s:17:"All Web Site Data";s:7:"tableId";s:12:"ga:120827195";}s:13:"columnHeaders";a:3:{i:0;a:3:{s:4:"name";s:7:"ga:date";s:10:"columnType";s:9:"DIMENSION";s:8:"dataType";s:6:"STRING";}i:1;a:3:{s:4:"name";s:16:"ga:dayOfWeekName";s:10:"columnType";s:9:"DIMENSION";s:8:"dataType";s:6:"STRING";}i:2;a:3:{s:4:"name";s:11:"ga:sessions";s:10:"columnType";s:6:"METRIC";s:8:"dataType";s:7:"INTEGER";}}}s:12:"\0*\0processed";a:0:{}}s:7:"expires";i:1462482000;}', 'yes'),
(1286, 'gadwp_cache_qr3_162166044', 'a:2:{s:5:"value";O:31:"Google_Service_Analytics_GaData":24:{s:17:"\0*\0collection_key";s:4:"rows";s:25:"\0*\0internal_gapi_mappings";a:0:{}s:20:"\0*\0columnHeadersType";s:44:"Google_Service_Analytics_GaDataColumnHeaders";s:24:"\0*\0columnHeadersDataType";s:5:"array";s:19:"containsSampledData";b:0;s:16:"\0*\0dataTableType";s:40:"Google_Service_Analytics_GaDataDataTable";s:20:"\0*\0dataTableDataType";s:0:"";s:2:"id";s:202:"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:120827195&metrics=ga:sessions,ga:users,ga:pageviews,ga:BounceRate,ga:organicSearches,ga:pageviewsPerSession&start-date=14daysAgo&end-date=yesterday";s:12:"itemsPerPage";i:1000;s:4:"kind";s:16:"analytics#gaData";s:8:"nextLink";N;s:12:"previousLink";N;s:18:"\0*\0profileInfoType";s:42:"Google_Service_Analytics_GaDataProfileInfo";s:22:"\0*\0profileInfoDataType";s:0:"";s:12:"\0*\0queryType";s:36:"Google_Service_Analytics_GaDataQuery";s:16:"\0*\0queryDataType";s:0:"";s:4:"rows";a:1:{i:0;a:6:{i:0;s:2:"87";i:1;s:2:"50";i:2;s:3:"416";i:3;s:17:"59.77011494252874";i:4;s:1:"4";i:5;s:17:"4.781609195402299";}}s:10:"sampleSize";N;s:11:"sampleSpace";N;s:8:"selfLink";s:202:"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:120827195&metrics=ga:sessions,ga:users,ga:pageviews,ga:BounceRate,ga:organicSearches,ga:pageviewsPerSession&start-date=14daysAgo&end-date=yesterday";s:12:"totalResults";i:1;s:19:"totalsForAllResults";a:6:{s:11:"ga:sessions";s:2:"87";s:8:"ga:users";s:2:"50";s:12:"ga:pageviews";s:3:"416";s:13:"ga:BounceRate";s:17:"59.77011494252874";s:18:"ga:organicSearches";s:1:"4";s:22:"ga:pageviewsPerSession";s:17:"4.781609195402299";}s:12:"\0*\0modelData";a:3:{s:5:"query";a:6:{s:10:"start-date";s:9:"14daysAgo";s:8:"end-date";s:9:"yesterday";s:3:"ids";s:12:"ga:120827195";s:7:"metrics";a:6:{i:0;s:11:"ga:sessions";i:1;s:8:"ga:users";i:2;s:12:"ga:pageviews";i:3;s:13:"ga:BounceRate";i:4;s:18:"ga:organicSearches";i:5;s:22:"ga:pageviewsPerSession";}s:11:"start-index";i:1;s:11:"max-results";i:1000;}s:11:"profileInfo";a:6:{s:9:"profileId";s:9:"120827195";s:9:"accountId";s:8:"76847824";s:13:"webPropertyId";s:13:"UA-76847824-1";s:21:"internalWebPropertyId";s:9:"115581567";s:11:"profileName";s:17:"All Web Site Data";s:7:"tableId";s:12:"ga:120827195";}s:13:"columnHeaders";a:6:{i:0;a:3:{s:4:"name";s:11:"ga:sessions";s:10:"columnType";s:6:"METRIC";s:8:"dataType";s:7:"INTEGER";}i:1;a:3:{s:4:"name";s:8:"ga:users";s:10:"columnType";s:6:"METRIC";s:8:"dataType";s:7:"INTEGER";}i:2;a:3:{s:4:"name";s:12:"ga:pageviews";s:10:"columnType";s:6:"METRIC";s:8:"dataType";s:7:"INTEGER";}i:3;a:3:{s:4:"name";s:13:"ga:BounceRate";s:10:"columnType";s:6:"METRIC";s:8:"dataType";s:7:"PERCENT";}i:4;a:3:{s:4:"name";s:18:"ga:organicSearches";s:10:"columnType";s:6:"METRIC";s:8:"dataType";s:7:"INTEGER";}i:5;a:3:{s:4:"name";s:22:"ga:pageviewsPerSession";s:10:"columnType";s:6:"METRIC";s:8:"dataType";s:5:"FLOAT";}}}s:12:"\0*\0processed";a:0:{}}s:7:"expires";i:1462482000;}', 'yes'),
(1301, 'auth_key', 'ulSO}.`Klr4>${]4*>g1o~BQZzHh[*bl$@MEO(_-f?IU:Y&n#a<h$Xi,-OX}jm(c', 'yes'),
(1302, 'auth_salt', 'u*>3fkhW4uAhv2@jrb`.H2z<y&o( =<8iK/l#cm) >:AHYin*a|GL$[[g7wepuc:', 'yes'),
(1303, 'logged_in_key', 'R-mX2i_y33I70F*=Kw*n^0r>X+hW{}HO;~hD~6;weSZ$^wS0eU9Gs$UYZ9+z{9k%', 'yes'),
(1304, 'logged_in_salt', 'v<[NfkSUwK-?Fmi-NOE3 Gwe=DQb,j4<#2RGI0)GUK}. 8dxLHLII>TxSm}/Mxl+', 'yes'),
(1305, 'nonce_key', 'f2!N[z>xStw?gZLg&!q@=VFROl^s00,pB!|Q`YXrUF9(gd#9}*U:{;u)*FVeJ2d9', 'yes'),
(1306, 'nonce_salt', '+kF:@<#p8(K9R{g)D1eJ,NyFc;$E Uy8Ew{bA-2/%S$Hat~J-,vvY>?^7,/@;%jW', 'yes'),
(1324, 'gadwp_cache_qr2_2449417672', 'a:2:{s:5:"value";O:31:"Google_Service_Analytics_GaData":24:{s:17:"\0*\0collection_key";s:4:"rows";s:25:"\0*\0internal_gapi_mappings";a:0:{}s:20:"\0*\0columnHeadersType";s:44:"Google_Service_Analytics_GaDataColumnHeaders";s:24:"\0*\0columnHeadersDataType";s:5:"array";s:19:"containsSampledData";b:0;s:16:"\0*\0dataTableType";s:40:"Google_Service_Analytics_GaDataDataTable";s:20:"\0*\0dataTableDataType";s:0:"";s:2:"id";s:160:"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:120827195&dimensions=ga:date,ga:dayOfWeekName&metrics=ga:sessions&start-date=30daysAgo&end-date=yesterday";s:12:"itemsPerPage";i:1000;s:4:"kind";s:16:"analytics#gaData";s:8:"nextLink";N;s:12:"previousLink";N;s:18:"\0*\0profileInfoType";s:42:"Google_Service_Analytics_GaDataProfileInfo";s:22:"\0*\0profileInfoDataType";s:0:"";s:12:"\0*\0queryType";s:36:"Google_Service_Analytics_GaDataQuery";s:16:"\0*\0queryDataType";s:0:"";s:4:"rows";a:30:{i:0;a:3:{i:0;s:8:"20160405";i:1;s:7:"Tuesday";i:2;s:1:"0";}i:1;a:3:{i:0;s:8:"20160406";i:1;s:9:"Wednesday";i:2;s:1:"0";}i:2;a:3:{i:0;s:8:"20160407";i:1;s:8:"Thursday";i:2;s:1:"0";}i:3;a:3:{i:0;s:8:"20160408";i:1;s:6:"Friday";i:2;s:1:"0";}i:4;a:3:{i:0;s:8:"20160409";i:1;s:8:"Saturday";i:2;s:1:"0";}i:5;a:3:{i:0;s:8:"20160410";i:1;s:6:"Sunday";i:2;s:1:"0";}i:6;a:3:{i:0;s:8:"20160411";i:1;s:6:"Monday";i:2;s:1:"0";}i:7;a:3:{i:0;s:8:"20160412";i:1;s:7:"Tuesday";i:2;s:1:"0";}i:8;a:3:{i:0;s:8:"20160413";i:1;s:9:"Wednesday";i:2;s:1:"0";}i:9;a:3:{i:0;s:8:"20160414";i:1;s:8:"Thursday";i:2;s:1:"0";}i:10;a:3:{i:0;s:8:"20160415";i:1;s:6:"Friday";i:2;s:1:"0";}i:11;a:3:{i:0;s:8:"20160416";i:1;s:8:"Saturday";i:2;s:1:"0";}i:12;a:3:{i:0;s:8:"20160417";i:1;s:6:"Sunday";i:2;s:1:"0";}i:13;a:3:{i:0;s:8:"20160418";i:1;s:6:"Monday";i:2;s:1:"0";}i:14;a:3:{i:0;s:8:"20160419";i:1;s:7:"Tuesday";i:2;s:1:"0";}i:15;a:3:{i:0;s:8:"20160420";i:1;s:9:"Wednesday";i:2;s:1:"0";}i:16;a:3:{i:0;s:8:"20160421";i:1;s:8:"Thursday";i:2;s:1:"0";}i:17;a:3:{i:0;s:8:"20160422";i:1;s:6:"Friday";i:2;s:1:"0";}i:18;a:3:{i:0;s:8:"20160423";i:1;s:8:"Saturday";i:2;s:1:"0";}i:19;a:3:{i:0;s:8:"20160424";i:1;s:6:"Sunday";i:2;s:1:"3";}i:20;a:3:{i:0;s:8:"20160425";i:1;s:6:"Monday";i:2;s:1:"2";}i:21;a:3:{i:0;s:8:"20160426";i:1;s:7:"Tuesday";i:2;s:1:"7";}i:22;a:3:{i:0;s:8:"20160427";i:1;s:9:"Wednesday";i:2;s:2:"14";}i:23;a:3:{i:0;s:8:"20160428";i:1;s:8:"Thursday";i:2;s:1:"1";}i:24;a:3:{i:0;s:8:"20160429";i:1;s:6:"Friday";i:2;s:1:"0";}i:25;a:3:{i:0;s:8:"20160430";i:1;s:8:"Saturday";i:2;s:1:"1";}i:26;a:3:{i:0;s:8:"20160501";i:1;s:6:"Sunday";i:2;s:1:"6";}i:27;a:3:{i:0;s:8:"20160502";i:1;s:6:"Monday";i:2;s:1:"5";}i:28;a:3:{i:0;s:8:"20160503";i:1;s:7:"Tuesday";i:2;s:1:"5";}i:29;a:3:{i:0;s:8:"20160504";i:1;s:9:"Wednesday";i:2;s:2:"43";}}s:10:"sampleSize";N;s:11:"sampleSpace";N;s:8:"selfLink";s:160:"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:120827195&dimensions=ga:date,ga:dayOfWeekName&metrics=ga:sessions&start-date=30daysAgo&end-date=yesterday";s:12:"totalResults";i:30;s:19:"totalsForAllResults";a:1:{s:11:"ga:sessions";s:2:"87";}s:12:"\0*\0modelData";a:3:{s:5:"query";a:7:{s:10:"start-date";s:9:"30daysAgo";s:8:"end-date";s:9:"yesterday";s:3:"ids";s:12:"ga:120827195";s:10:"dimensions";s:24:"ga:date,ga:dayOfWeekName";s:7:"metrics";a:1:{i:0;s:11:"ga:sessions";}s:11:"start-index";i:1;s:11:"max-results";i:1000;}s:11:"profileInfo";a:6:{s:9:"profileId";s:9:"120827195";s:9:"accountId";s:8:"76847824";s:13:"webPropertyId";s:13:"UA-76847824-1";s:21:"internalWebPropertyId";s:9:"115581567";s:11:"profileName";s:17:"All Web Site Data";s:7:"tableId";s:12:"ga:120827195";}s:13:"columnHeaders";a:3:{i:0;a:3:{s:4:"name";s:7:"ga:date";s:10:"columnType";s:9:"DIMENSION";s:8:"dataType";s:6:"STRING";}i:1;a:3:{s:4:"name";s:16:"ga:dayOfWeekName";s:10:"columnType";s:9:"DIMENSION";s:8:"dataType";s:6:"STRING";}i:2;a:3:{s:4:"name";s:11:"ga:sessions";s:10:"columnType";s:6:"METRIC";s:8:"dataType";s:7:"INTEGER";}}}s:12:"\0*\0processed";a:0:{}}s:7:"expires";i:1462482000;}', 'yes'),
(1325, 'gadwp_cache_qr3_2736149344', 'a:2:{s:5:"value";O:31:"Google_Service_Analytics_GaData":24:{s:17:"\0*\0collection_key";s:4:"rows";s:25:"\0*\0internal_gapi_mappings";a:0:{}s:20:"\0*\0columnHeadersType";s:44:"Google_Service_Analytics_GaDataColumnHeaders";s:24:"\0*\0columnHeadersDataType";s:5:"array";s:19:"containsSampledData";b:0;s:16:"\0*\0dataTableType";s:40:"Google_Service_Analytics_GaDataDataTable";s:20:"\0*\0dataTableDataType";s:0:"";s:2:"id";s:202:"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:120827195&metrics=ga:sessions,ga:users,ga:pageviews,ga:BounceRate,ga:organicSearches,ga:pageviewsPerSession&start-date=30daysAgo&end-date=yesterday";s:12:"itemsPerPage";i:1000;s:4:"kind";s:16:"analytics#gaData";s:8:"nextLink";N;s:12:"previousLink";N;s:18:"\0*\0profileInfoType";s:42:"Google_Service_Analytics_GaDataProfileInfo";s:22:"\0*\0profileInfoDataType";s:0:"";s:12:"\0*\0queryType";s:36:"Google_Service_Analytics_GaDataQuery";s:16:"\0*\0queryDataType";s:0:"";s:4:"rows";a:1:{i:0;a:6:{i:0;s:2:"87";i:1;s:2:"50";i:2;s:3:"416";i:3;s:17:"59.77011494252874";i:4;s:1:"4";i:5;s:17:"4.781609195402299";}}s:10:"sampleSize";N;s:11:"sampleSpace";N;s:8:"selfLink";s:202:"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:120827195&metrics=ga:sessions,ga:users,ga:pageviews,ga:BounceRate,ga:organicSearches,ga:pageviewsPerSession&start-date=30daysAgo&end-date=yesterday";s:12:"totalResults";i:1;s:19:"totalsForAllResults";a:6:{s:11:"ga:sessions";s:2:"87";s:8:"ga:users";s:2:"50";s:12:"ga:pageviews";s:3:"416";s:13:"ga:BounceRate";s:17:"59.77011494252874";s:18:"ga:organicSearches";s:1:"4";s:22:"ga:pageviewsPerSession";s:17:"4.781609195402299";}s:12:"\0*\0modelData";a:3:{s:5:"query";a:6:{s:10:"start-date";s:9:"30daysAgo";s:8:"end-date";s:9:"yesterday";s:3:"ids";s:12:"ga:120827195";s:7:"metrics";a:6:{i:0;s:11:"ga:sessions";i:1;s:8:"ga:users";i:2;s:12:"ga:pageviews";i:3;s:13:"ga:BounceRate";i:4;s:18:"ga:organicSearches";i:5;s:22:"ga:pageviewsPerSession";}s:11:"start-index";i:1;s:11:"max-results";i:1000;}s:11:"profileInfo";a:6:{s:9:"profileId";s:9:"120827195";s:9:"accountId";s:8:"76847824";s:13:"webPropertyId";s:13:"UA-76847824-1";s:21:"internalWebPropertyId";s:9:"115581567";s:11:"profileName";s:17:"All Web Site Data";s:7:"tableId";s:12:"ga:120827195";}s:13:"columnHeaders";a:6:{i:0;a:3:{s:4:"name";s:11:"ga:sessions";s:10:"columnType";s:6:"METRIC";s:8:"dataType";s:7:"INTEGER";}i:1;a:3:{s:4:"name";s:8:"ga:users";s:10:"columnType";s:6:"METRIC";s:8:"dataType";s:7:"INTEGER";}i:2;a:3:{s:4:"name";s:12:"ga:pageviews";s:10:"columnType";s:6:"METRIC";s:8:"dataType";s:7:"INTEGER";}i:3;a:3:{s:4:"name";s:13:"ga:BounceRate";s:10:"columnType";s:6:"METRIC";s:8:"dataType";s:7:"PERCENT";}i:4;a:3:{s:4:"name";s:18:"ga:organicSearches";s:10:"columnType";s:6:"METRIC";s:8:"dataType";s:7:"INTEGER";}i:5;a:3:{s:4:"name";s:22:"ga:pageviewsPerSession";s:10:"columnType";s:6:"METRIC";s:8:"dataType";s:5:"FLOAT";}}}s:12:"\0*\0processed";a:0:{}}s:7:"expires";i:1462482000;}', 'yes'),
(1424, 'gadwp_cache_qr8_3913212644', 'a:2:{s:5:"value";O:31:"Google_Service_Analytics_GaData":24:{s:17:"\0*\0collection_key";s:4:"rows";s:25:"\0*\0internal_gapi_mappings";a:0:{}s:20:"\0*\0columnHeadersType";s:44:"Google_Service_Analytics_GaDataColumnHeaders";s:24:"\0*\0columnHeadersDataType";s:5:"array";s:19:"containsSampledData";b:0;s:16:"\0*\0dataTableType";s:40:"Google_Service_Analytics_GaDataDataTable";s:20:"\0*\0dataTableDataType";s:0:"";s:2:"id";s:172:"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:120827195&dimensions=ga:channelGrouping&metrics=ga:sessions&sort=-ga:sessions&start-date=14daysAgo&end-date=yesterday";s:12:"itemsPerPage";i:1000;s:4:"kind";s:16:"analytics#gaData";s:8:"nextLink";N;s:12:"previousLink";N;s:18:"\0*\0profileInfoType";s:42:"Google_Service_Analytics_GaDataProfileInfo";s:22:"\0*\0profileInfoDataType";s:0:"";s:12:"\0*\0queryType";s:36:"Google_Service_Analytics_GaDataQuery";s:16:"\0*\0queryDataType";s:0:"";s:4:"rows";a:3:{i:0;a:2:{i:0;s:6:"Direct";i:1;s:2:"69";}i:1;a:2:{i:0;s:8:"Referral";i:1;s:2:"11";}i:2;a:2:{i:0;s:14:"Organic Search";i:1;s:1:"7";}}s:10:"sampleSize";N;s:11:"sampleSpace";N;s:8:"selfLink";s:172:"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:120827195&dimensions=ga:channelGrouping&metrics=ga:sessions&sort=-ga:sessions&start-date=14daysAgo&end-date=yesterday";s:12:"totalResults";i:3;s:19:"totalsForAllResults";a:1:{s:11:"ga:sessions";s:2:"87";}s:12:"\0*\0modelData";a:3:{s:5:"query";a:8:{s:10:"start-date";s:9:"14daysAgo";s:8:"end-date";s:9:"yesterday";s:3:"ids";s:12:"ga:120827195";s:10:"dimensions";s:18:"ga:channelGrouping";s:7:"metrics";a:1:{i:0;s:11:"ga:sessions";}s:4:"sort";a:1:{i:0;s:12:"-ga:sessions";}s:11:"start-index";i:1;s:11:"max-results";i:1000;}s:11:"profileInfo";a:6:{s:9:"profileId";s:9:"120827195";s:9:"accountId";s:8:"76847824";s:13:"webPropertyId";s:13:"UA-76847824-1";s:21:"internalWebPropertyId";s:9:"115581567";s:11:"profileName";s:17:"All Web Site Data";s:7:"tableId";s:12:"ga:120827195";}s:13:"columnHeaders";a:2:{i:0;a:3:{s:4:"name";s:18:"ga:channelGrouping";s:10:"columnType";s:9:"DIMENSION";s:8:"dataType";s:6:"STRING";}i:1;a:3:{s:4:"name";s:11:"ga:sessions";s:10:"columnType";s:6:"METRIC";s:8:"dataType";s:7:"INTEGER";}}}s:12:"\0*\0processed";a:0:{}}s:7:"expires";i:1462482000;}', 'yes'),
(1425, 'gadwp_cache_qr5_162166044', 'a:2:{s:5:"value";O:31:"Google_Service_Analytics_GaData":24:{s:17:"\0*\0collection_key";s:4:"rows";s:25:"\0*\0internal_gapi_mappings";a:0:{}s:20:"\0*\0columnHeadersType";s:44:"Google_Service_Analytics_GaDataColumnHeaders";s:24:"\0*\0columnHeadersDataType";s:5:"array";s:19:"containsSampledData";b:0;s:16:"\0*\0dataTableType";s:40:"Google_Service_Analytics_GaDataDataTable";s:20:"\0*\0dataTableDataType";s:0:"";s:2:"id";s:195:"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:120827195&dimensions=ga:source&metrics=ga:sessions&sort=-ga:sessions&filters=ga:medium%3D%3Dreferral&start-date=14daysAgo&end-date=yesterday";s:12:"itemsPerPage";i:1000;s:4:"kind";s:16:"analytics#gaData";s:8:"nextLink";N;s:12:"previousLink";N;s:18:"\0*\0profileInfoType";s:42:"Google_Service_Analytics_GaDataProfileInfo";s:22:"\0*\0profileInfoDataType";s:0:"";s:12:"\0*\0queryType";s:36:"Google_Service_Analytics_GaDataQuery";s:16:"\0*\0queryDataType";s:0:"";s:4:"rows";a:3:{i:0;a:2:{i:0;s:21:"designer.jivosite.com";i:1;s:1:"7";}i:1;a:2:{i:0;s:45:"website-stealer-warning-alert.hdmoviecams.com";i:1;s:1:"3";}i:2;a:2:{i:0;s:13:"marketland.ml";i:1;s:1:"1";}}s:10:"sampleSize";N;s:11:"sampleSpace";N;s:8:"selfLink";s:195:"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:120827195&dimensions=ga:source&metrics=ga:sessions&sort=-ga:sessions&filters=ga:medium%3D%3Dreferral&start-date=14daysAgo&end-date=yesterday";s:12:"totalResults";i:3;s:19:"totalsForAllResults";a:1:{s:11:"ga:sessions";s:2:"11";}s:12:"\0*\0modelData";a:3:{s:5:"query";a:9:{s:10:"start-date";s:9:"14daysAgo";s:8:"end-date";s:9:"yesterday";s:3:"ids";s:12:"ga:120827195";s:10:"dimensions";s:9:"ga:source";s:7:"metrics";a:1:{i:0;s:11:"ga:sessions";}s:4:"sort";a:1:{i:0;s:12:"-ga:sessions";}s:7:"filters";s:19:"ga:medium==referral";s:11:"start-index";i:1;s:11:"max-results";i:1000;}s:11:"profileInfo";a:6:{s:9:"profileId";s:9:"120827195";s:9:"accountId";s:8:"76847824";s:13:"webPropertyId";s:13:"UA-76847824-1";s:21:"internalWebPropertyId";s:9:"115581567";s:11:"profileName";s:17:"All Web Site Data";s:7:"tableId";s:12:"ga:120827195";}s:13:"columnHeaders";a:2:{i:0;a:3:{s:4:"name";s:9:"ga:source";s:10:"columnType";s:9:"DIMENSION";s:8:"dataType";s:6:"STRING";}i:1;a:3:{s:4:"name";s:11:"ga:sessions";s:10:"columnType";s:6:"METRIC";s:8:"dataType";s:7:"INTEGER";}}}s:12:"\0*\0processed";a:0:{}}s:7:"expires";i:1462482000;}', 'yes'),
(1426, 'gadwp_cache_qr4_162166044', 'a:2:{s:5:"value";O:31:"Google_Service_Analytics_GaData":24:{s:17:"\0*\0collection_key";s:4:"rows";s:25:"\0*\0internal_gapi_mappings";a:0:{}s:20:"\0*\0columnHeadersType";s:44:"Google_Service_Analytics_GaDataColumnHeaders";s:24:"\0*\0columnHeadersDataType";s:5:"array";s:19:"containsSampledData";b:0;s:16:"\0*\0dataTableType";s:40:"Google_Service_Analytics_GaDataDataTable";s:20:"\0*\0dataTableDataType";s:0:"";s:2:"id";s:168:"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:120827195&dimensions=ga:pageTitle&metrics=ga:pageviews&sort=-ga:pageviews&start-date=14daysAgo&end-date=yesterday";s:12:"itemsPerPage";i:1000;s:4:"kind";s:16:"analytics#gaData";s:8:"nextLink";N;s:12:"previousLink";N;s:18:"\0*\0profileInfoType";s:42:"Google_Service_Analytics_GaDataProfileInfo";s:22:"\0*\0profileInfoDataType";s:0:"";s:12:"\0*\0queryType";s:36:"Google_Service_Analytics_GaDataQuery";s:16:"\0*\0queryDataType";s:0:"";s:4:"rows";a:35:{i:0;a:2:{i:0;s:61:"Магазин одежды | Дипломная работа";i:1;s:3:"153";}i:1;a:2:{i:0;s:44:"Корзина | Магазин одежды";i:1;s:2:"55";}i:2;a:2:{i:0;s:38:"Вход | Магазин одежды";i:1;s:2:"53";}i:3;a:2:{i:0;s:63:"Оформление заказа | Магазин одежды";i:1;s:2:"26";}i:4;a:2:{i:0;s:42:"Платья | Магазин одежды";i:1;s:2:"19";}i:5;a:2:{i:0;s:40:"Брюки | Магазин одежды";i:1;s:2:"15";}i:6;a:2:{i:0;s:42:"Top Shop | Дипломная работа";i:1;s:2:"10";}i:7;a:2:{i:0;s:51:"Мой аккаунт | Магазин одежды";i:1;s:1:"9";}i:8;a:2:{i:0;s:44:"Интернет магазин одежды";i:1;s:1:"8";}i:9;a:2:{i:0;s:44:"Товары — Магазин одежды";i:1;s:1:"8";}i:10;a:2:{i:0;s:9:"(not set)";i:1;s:1:"7";}i:11;a:2:{i:0;s:97:"Ваш сайт был ОБОСРАН!!!САНЯ ПРИВЕТ!! | Дипломная работа";i:1;s:1:"6";}i:12;a:2:{i:0;s:52:"Регистрация | Магазин одежды";i:1;s:1:"6";}i:13;a:2:{i:0;s:42:"коттон | Магазин одежды";i:1;s:1:"5";}i:14;a:2:{i:0;s:87:"Мой аккаунт | Ваш сайт был ОБОСРАН!!!САНЯ ПРИВЕТ!!";i:1;s:1:"4";}i:15;a:2:{i:0;s:36:"Lina — Магазин одежды";i:1;s:1:"3";}i:16;a:2:{i:0;s:30:"Nothing found for Product Lina";i:1;s:1:"3";}i:17;a:2:{i:0;s:40:"Блузы | Магазин одежды";i:1;s:1:"3";}i:18;a:2:{i:0;s:37:"Aliya — Магазин одежды";i:1;s:1:"2";}i:19;a:2:{i:0;s:30:"Nothing found for Product Mila";i:1;s:1:"2";}i:20;a:2:{i:0;s:37:"Orion — Магазин одежды";i:1;s:1:"2";}i:21;a:2:{i:0;s:44:"Главная | Магазин одежды";i:1;s:1:"2";}i:22;a:2:{i:0;s:59:"Пример страницы | Магазин одежды";i:1;s:1:"2";}i:23;a:2:{i:0;s:25:"Товары — Top Shop";i:1;s:1:"2";}i:24;a:2:{i:0;s:37:"Ariya — Магазин одежды";i:1;s:1:"1";}i:25;a:2:{i:0;s:36:"Mila — Магазин одежды";i:1;s:1:"1";}i:26;a:2:{i:0;s:39:"Nothing found for Cart Odnoklassniki Ru";i:1;s:1:"1";}i:27;a:2:{i:0;s:28:"Nothing found for Product 31";i:1;s:1:"1";}i:28;a:2:{i:0;s:61:"Изменить профиль | Магазин одежды";i:1;s:1:"1";}i:29;a:2:{i:0;s:71:"Магазин одежды — Ещё один сайт на WordPress";i:1;s:1:"1";}i:30;a:2:{i:0;s:32:"Мой аккаунт | Top Shop";i:1;s:1:"1";}i:31;a:2:{i:0;s:51:"Привет, мир! | Магазин одежды";i:1;s:1:"1";}i:32;a:2:{i:0;s:92:"Результаты поиска «пумпурумпум» — Магазин одежды";i:1;s:1:"1";}i:33;a:2:{i:0;s:82:"Результаты поиска «ропорп» — Магазин одежды";i:1;s:1:"1";}i:34;a:2:{i:0;s:52:"приталенное | Магазин одежды";i:1;s:1:"1";}}s:10:"sampleSize";N;s:11:"sampleSpace";N;s:8:"selfLink";s:168:"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:120827195&dimensions=ga:pageTitle&metrics=ga:pageviews&sort=-ga:pageviews&start-date=14daysAgo&end-date=yesterday";s:12:"totalResults";i:35;s:19:"totalsForAllResults";a:1:{s:12:"ga:pageviews";s:3:"416";}s:12:"\0*\0modelData";a:3:{s:5:"query";a:8:{s:10:"start-date";s:9:"14daysAgo";s:8:"end-date";s:9:"yesterday";s:3:"ids";s:12:"ga:120827195";s:10:"dimensions";s:12:"ga:pageTitle";s:7:"metrics";a:1:{i:0;s:12:"ga:pageviews";}s:4:"sort";a:1:{i:0;s:13:"-ga:pageviews";}s:11:"start-index";i:1;s:11:"max-results";i:1000;}s:11:"profileInfo";a:6:{s:9:"profileId";s:9:"120827195";s:9:"accountId";s:8:"76847824";s:13:"webPropertyId";s:13:"UA-76847824-1";s:21:"internalWebPropertyId";s:9:"115581567";s:11:"profileName";s:17:"All Web Site Data";s:7:"tableId";s:12:"ga:120827195";}s:13:"columnHeaders";a:2:{i:0;a:3:{s:4:"name";s:12:"ga:pageTitle";s:10:"columnType";s:9:"DIMENSION";s:8:"dataType";s:6:"STRING";}i:1;a:3:{s:4:"name";s:12:"ga:pageviews";s:10:"columnType";s:6:"METRIC";s:8:"dataType";s:7:"INTEGER";}}}s:12:"\0*\0processed";a:0:{}}s:7:"expires";i:1462482000;}', 'yes'),
(1427, 'gadwp_cache_qr6_162166044', 'a:2:{s:5:"value";O:31:"Google_Service_Analytics_GaData":24:{s:17:"\0*\0collection_key";s:4:"rows";s:25:"\0*\0internal_gapi_mappings";a:0:{}s:20:"\0*\0columnHeadersType";s:44:"Google_Service_Analytics_GaDataColumnHeaders";s:24:"\0*\0columnHeadersDataType";s:5:"array";s:19:"containsSampledData";b:0;s:16:"\0*\0dataTableType";s:40:"Google_Service_Analytics_GaDataDataTable";s:20:"\0*\0dataTableDataType";s:0:"";s:2:"id";s:196:"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:120827195&dimensions=ga:keyword&metrics=ga:sessions&sort=-ga:sessions&filters=ga:keyword!%3D(not+set)&start-date=14daysAgo&end-date=yesterday";s:12:"itemsPerPage";i:1000;s:4:"kind";s:16:"analytics#gaData";s:8:"nextLink";N;s:12:"previousLink";N;s:18:"\0*\0profileInfoType";s:42:"Google_Service_Analytics_GaDataProfileInfo";s:22:"\0*\0profileInfoDataType";s:0:"";s:12:"\0*\0queryType";s:36:"Google_Service_Analytics_GaDataQuery";s:16:"\0*\0queryDataType";s:0:"";s:4:"rows";a:2:{i:0;a:2:{i:0;s:14:"(not provided)";i:1;s:1:"4";}i:1;a:2:{i:0;s:52:"http://website-stealer-warning-alert.hdmoviecams.com";i:1;s:1:"3";}}s:10:"sampleSize";N;s:11:"sampleSpace";N;s:8:"selfLink";s:196:"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:120827195&dimensions=ga:keyword&metrics=ga:sessions&sort=-ga:sessions&filters=ga:keyword!%3D(not+set)&start-date=14daysAgo&end-date=yesterday";s:12:"totalResults";i:2;s:19:"totalsForAllResults";a:1:{s:11:"ga:sessions";s:1:"7";}s:12:"\0*\0modelData";a:3:{s:5:"query";a:9:{s:10:"start-date";s:9:"14daysAgo";s:8:"end-date";s:9:"yesterday";s:3:"ids";s:12:"ga:120827195";s:10:"dimensions";s:10:"ga:keyword";s:7:"metrics";a:1:{i:0;s:11:"ga:sessions";}s:4:"sort";a:1:{i:0;s:12:"-ga:sessions";}s:7:"filters";s:21:"ga:keyword!=(not set)";s:11:"start-index";i:1;s:11:"max-results";i:1000;}s:11:"profileInfo";a:6:{s:9:"profileId";s:9:"120827195";s:9:"accountId";s:8:"76847824";s:13:"webPropertyId";s:13:"UA-76847824-1";s:21:"internalWebPropertyId";s:9:"115581567";s:11:"profileName";s:17:"All Web Site Data";s:7:"tableId";s:12:"ga:120827195";}s:13:"columnHeaders";a:2:{i:0;a:3:{s:4:"name";s:10:"ga:keyword";s:10:"columnType";s:9:"DIMENSION";s:8:"dataType";s:6:"STRING";}i:1;a:3:{s:4:"name";s:11:"ga:sessions";s:10:"columnType";s:6:"METRIC";s:8:"dataType";s:7:"INTEGER";}}}s:12:"\0*\0processed";a:0:{}}s:7:"expires";i:1462482000;}', 'yes'),
(1451, 'gadwp_cache_qr7_162166044', 'a:2:{s:5:"value";O:31:"Google_Service_Analytics_GaData":24:{s:17:"\0*\0collection_key";s:4:"rows";s:25:"\0*\0internal_gapi_mappings";a:0:{}s:20:"\0*\0columnHeadersType";s:44:"Google_Service_Analytics_GaDataColumnHeaders";s:24:"\0*\0columnHeadersDataType";s:5:"array";s:19:"containsSampledData";b:0;s:16:"\0*\0dataTableType";s:40:"Google_Service_Analytics_GaDataDataTable";s:20:"\0*\0dataTableDataType";s:0:"";s:2:"id";s:164:"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:120827195&dimensions=ga:country&metrics=ga:sessions&sort=-ga:sessions&start-date=14daysAgo&end-date=yesterday";s:12:"itemsPerPage";i:1000;s:4:"kind";s:16:"analytics#gaData";s:8:"nextLink";N;s:12:"previousLink";N;s:18:"\0*\0profileInfoType";s:42:"Google_Service_Analytics_GaDataProfileInfo";s:22:"\0*\0profileInfoDataType";s:0:"";s:12:"\0*\0queryType";s:36:"Google_Service_Analytics_GaDataQuery";s:16:"\0*\0queryDataType";s:0:"";s:4:"rows";a:8:{i:0;a:2:{i:0;s:7:"Ukraine";i:1;s:2:"56";}i:1;a:2:{i:0;s:13:"United States";i:1;s:2:"15";}i:2;a:2:{i:0;s:7:"Germany";i:1;s:1:"8";}i:3;a:2:{i:0;s:9:"Indonesia";i:1;s:1:"7";}i:4;a:2:{i:0;s:6:"France";i:1;s:1:"2";}i:5;a:2:{i:0;s:11:"South Korea";i:1;s:1:"2";}i:6;a:2:{i:0;s:5:"Italy";i:1;s:1:"1";}i:7;a:2:{i:0;s:14:"United Kingdom";i:1;s:1:"1";}}s:10:"sampleSize";N;s:11:"sampleSpace";N;s:8:"selfLink";s:164:"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:120827195&dimensions=ga:country&metrics=ga:sessions&sort=-ga:sessions&start-date=14daysAgo&end-date=yesterday";s:12:"totalResults";i:8;s:19:"totalsForAllResults";a:1:{s:11:"ga:sessions";s:2:"92";}s:12:"\0*\0modelData";a:3:{s:5:"query";a:8:{s:10:"start-date";s:9:"14daysAgo";s:8:"end-date";s:9:"yesterday";s:3:"ids";s:12:"ga:120827195";s:10:"dimensions";s:10:"ga:country";s:7:"metrics";a:1:{i:0;s:11:"ga:sessions";}s:4:"sort";a:1:{i:0;s:12:"-ga:sessions";}s:11:"start-index";i:1;s:11:"max-results";i:1000;}s:11:"profileInfo";a:6:{s:9:"profileId";s:9:"120827195";s:9:"accountId";s:8:"76847824";s:13:"webPropertyId";s:13:"UA-76847824-1";s:21:"internalWebPropertyId";s:9:"115581567";s:11:"profileName";s:17:"All Web Site Data";s:7:"tableId";s:12:"ga:120827195";}s:13:"columnHeaders";a:2:{i:0;a:3:{s:4:"name";s:10:"ga:country";s:10:"columnType";s:9:"DIMENSION";s:8:"dataType";s:6:"STRING";}i:1;a:3:{s:4:"name";s:11:"ga:sessions";s:10:"columnType";s:6:"METRIC";s:8:"dataType";s:7:"INTEGER";}}}s:12:"\0*\0processed";a:0:{}}s:7:"expires";i:1462654800;}', 'yes') ;

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
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=704 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1462632609:1'),
(4, 5, '_wp_attached_file', '2016/04/IMG_0442-409x613.jpg'),
(5, 5, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:409;s:6:"height";i:613;s:4:"file";s:28:"2016/04/IMG_0442-409x613.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"IMG_0442-409x613-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"IMG_0442-409x613-200x300.jpg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"IMG_0442-409x613-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:28:"IMG_0442-409x613-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:28:"IMG_0442-409x613-409x600.jpg";s:5:"width";i:409;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:16:"onsale-thumb-400";a:4:{s:4:"file";s:28:"IMG_0442-409x613-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:17:"onsale-slider-600";a:4:{s:4:"file";s:28:"IMG_0442-409x613-409x600.jpg";s:5:"width";i:409;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"5";s:6:"credit";s:0:"";s:6:"camera";s:12:"Canon EOS 6D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1458247203";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"50";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:5:"0.008";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(6, 4, '_thumbnail_id', '5'),
(7, 5, '_wp_attachment_image_alt', 'бирюзовое платье'),
(8, 4, '_visibility', 'visible'),
(9, 4, '_stock_status', 'instock'),
(10, 4, 'total_sales', '0'),
(11, 4, '_downloadable', 'no'),
(12, 4, '_virtual', 'no'),
(13, 4, '_purchase_note', ''),
(14, 4, '_featured', 'no'),
(15, 4, '_weight', '0.7'),
(16, 4, '_length', '30'),
(17, 4, '_width', '20'),
(18, 4, '_height', '20'),
(19, 4, '_sku', '8214'),
(20, 4, '_product_attributes', 'a:0:{}'),
(21, 4, '_regular_price', '300'),
(22, 4, '_sale_price', '200'),
(23, 4, '_sale_price_dates_from', ''),
(24, 4, '_sale_price_dates_to', ''),
(25, 4, '_price', '200'),
(26, 4, '_sold_individually', ''),
(27, 4, '_manage_stock', 'yes'),
(28, 4, '_backorders', 'no'),
(29, 4, '_stock', '5.000000'),
(30, 4, '_upsell_ids', 'a:0:{}'),
(31, 4, '_crosssell_ids', 'a:0:{}'),
(32, 4, '_product_version', '2.5.5'),
(33, 4, '_product_image_gallery', ''),
(34, 4, '_wc_rating_count', 'a:0:{}'),
(35, 4, '_wc_review_count', '0'),
(36, 4, '_wc_average_rating', '0'),
(37, 12, '_menu_item_type', 'custom'),
(38, 12, '_menu_item_menu_item_parent', '0'),
(39, 12, '_menu_item_object_id', '12'),
(40, 12, '_menu_item_object', 'custom'),
(41, 12, '_menu_item_target', ''),
(42, 12, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(43, 12, '_menu_item_xfn', ''),
(44, 12, '_menu_item_url', 'http://shop.local/'),
(46, 13, '_menu_item_type', 'post_type'),
(47, 13, '_menu_item_menu_item_parent', '0'),
(48, 13, '_menu_item_object_id', '8'),
(49, 13, '_menu_item_object', 'page'),
(50, 13, '_menu_item_target', ''),
(51, 13, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(52, 13, '_menu_item_xfn', ''),
(53, 13, '_menu_item_url', ''),
(54, 13, '_menu_item_orphaned', '1461431338'),
(55, 14, '_menu_item_type', 'post_type'),
(56, 14, '_menu_item_menu_item_parent', '0'),
(57, 14, '_menu_item_object_id', '7'),
(58, 14, '_menu_item_object', 'page'),
(59, 14, '_menu_item_target', ''),
(60, 14, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(61, 14, '_menu_item_xfn', ''),
(62, 14, '_menu_item_url', ''),
(64, 15, '_menu_item_type', 'post_type'),
(65, 15, '_menu_item_menu_item_parent', '0'),
(66, 15, '_menu_item_object_id', '10'),
(67, 15, '_menu_item_object', 'page'),
(68, 15, '_menu_item_target', ''),
(69, 15, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(70, 15, '_menu_item_xfn', ''),
(71, 15, '_menu_item_url', ''),
(73, 16, '_menu_item_type', 'post_type'),
(74, 16, '_menu_item_menu_item_parent', '0'),
(75, 16, '_menu_item_object_id', '9'),
(76, 16, '_menu_item_object', 'page'),
(77, 16, '_menu_item_target', ''),
(78, 16, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(79, 16, '_menu_item_xfn', ''),
(80, 16, '_menu_item_url', ''),
(90, 18, '_edit_last', '1'),
(91, 18, '_edit_lock', '1462632502:1'),
(92, 19, '_wp_attached_file', '2016/04/IMG_1224-409x613.jpg'),
(93, 19, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:409;s:6:"height";i:613;s:4:"file";s:28:"2016/04/IMG_1224-409x613.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"IMG_1224-409x613-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"IMG_1224-409x613-200x300.jpg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"IMG_1224-409x613-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:28:"IMG_1224-409x613-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:28:"IMG_1224-409x613-409x600.jpg";s:5:"width";i:409;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:16:"onsale-thumb-400";a:4:{s:4:"file";s:28:"IMG_1224-409x613-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:17:"onsale-slider-600";a:4:{s:4:"file";s:28:"IMG_1224-409x613-409x600.jpg";s:5:"width";i:409;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"5.6";s:6:"credit";s:0:"";s:6:"camera";s:12:"Canon EOS 6D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1455125880";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"50";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:5:"0.008";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(94, 20, '_wp_attached_file', '2016/04/IMG_2027-409x613.jpg'),
(95, 20, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:409;s:6:"height";i:613;s:4:"file";s:28:"2016/04/IMG_2027-409x613.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"IMG_2027-409x613-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"IMG_2027-409x613-200x300.jpg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"IMG_2027-409x613-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:28:"IMG_2027-409x613-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:28:"IMG_2027-409x613-409x600.jpg";s:5:"width";i:409;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:16:"onsale-thumb-400";a:4:{s:4:"file";s:28:"IMG_2027-409x613-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:17:"onsale-slider-600";a:4:{s:4:"file";s:28:"IMG_2027-409x613-409x600.jpg";s:5:"width";i:409;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"3.5";s:6:"credit";s:0:"";s:6:"camera";s:12:"Canon EOS 6D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1431633058";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"85";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:5:"0.008";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(96, 21, '_wp_attached_file', '2016/04/IMG_2166-409x613.jpg'),
(97, 21, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:409;s:6:"height";i:613;s:4:"file";s:28:"2016/04/IMG_2166-409x613.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"IMG_2166-409x613-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"IMG_2166-409x613-200x300.jpg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"IMG_2166-409x613-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:28:"IMG_2166-409x613-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:28:"IMG_2166-409x613-409x600.jpg";s:5:"width";i:409;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:16:"onsale-thumb-400";a:4:{s:4:"file";s:28:"IMG_2166-409x613-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:17:"onsale-slider-600";a:4:{s:4:"file";s:28:"IMG_2166-409x613-409x600.jpg";s:5:"width";i:409;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"7.1";s:6:"credit";s:0:"";s:6:"camera";s:12:"Canon EOS 6D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1457033213";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"50";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:5:"0.008";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(98, 22, '_wp_attached_file', '2016/04/IMG_2674-409x613.jpg'),
(99, 22, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:409;s:6:"height";i:613;s:4:"file";s:28:"2016/04/IMG_2674-409x613.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"IMG_2674-409x613-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"IMG_2674-409x613-200x300.jpg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"IMG_2674-409x613-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:28:"IMG_2674-409x613-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:28:"IMG_2674-409x613-409x600.jpg";s:5:"width";i:409;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:16:"onsale-thumb-400";a:4:{s:4:"file";s:28:"IMG_2674-409x613-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:17:"onsale-slider-600";a:4:{s:4:"file";s:28:"IMG_2674-409x613-409x600.jpg";s:5:"width";i:409;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(100, 23, '_wp_attached_file', '2016/04/IMG_2702-409x613.jpg'),
(101, 23, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:409;s:6:"height";i:613;s:4:"file";s:28:"2016/04/IMG_2702-409x613.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"IMG_2702-409x613-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"IMG_2702-409x613-200x300.jpg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"IMG_2702-409x613-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:28:"IMG_2702-409x613-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:28:"IMG_2702-409x613-409x600.jpg";s:5:"width";i:409;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:16:"onsale-thumb-400";a:4:{s:4:"file";s:28:"IMG_2702-409x613-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:17:"onsale-slider-600";a:4:{s:4:"file";s:28:"IMG_2702-409x613-409x600.jpg";s:5:"width";i:409;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(102, 24, '_wp_attached_file', '2016/04/IMG_3169-409x613.jpg'),
(103, 24, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:409;s:6:"height";i:613;s:4:"file";s:28:"2016/04/IMG_3169-409x613.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"IMG_3169-409x613-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"IMG_3169-409x613-200x300.jpg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"IMG_3169-409x613-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:28:"IMG_3169-409x613-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:28:"IMG_3169-409x613-409x600.jpg";s:5:"width";i:409;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:16:"onsale-thumb-400";a:4:{s:4:"file";s:28:"IMG_3169-409x613-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:17:"onsale-slider-600";a:4:{s:4:"file";s:28:"IMG_3169-409x613-409x600.jpg";s:5:"width";i:409;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"5.6";s:6:"credit";s:0:"";s:6:"camera";s:12:"Canon EOS 6D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1409338788";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"50";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:4:"0.01";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(104, 25, '_wp_attached_file', '2016/04/IMG_3887-409x613.jpg'),
(105, 25, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:409;s:6:"height";i:613;s:4:"file";s:28:"2016/04/IMG_3887-409x613.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"IMG_3887-409x613-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"IMG_3887-409x613-200x300.jpg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"IMG_3887-409x613-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:28:"IMG_3887-409x613-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:28:"IMG_3887-409x613-409x600.jpg";s:5:"width";i:409;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:16:"onsale-thumb-400";a:4:{s:4:"file";s:28:"IMG_3887-409x613-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:17:"onsale-slider-600";a:4:{s:4:"file";s:28:"IMG_3887-409x613-409x600.jpg";s:5:"width";i:409;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"6.3";s:6:"credit";s:0:"";s:6:"camera";s:12:"Canon EOS 6D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1429813879";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"50";s:3:"iso";s:3:"250";s:13:"shutter_speed";s:5:"0.008";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(106, 26, '_wp_attached_file', '2016/04/IMG_4882-409x613.jpg'),
(107, 26, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:409;s:6:"height";i:613;s:4:"file";s:28:"2016/04/IMG_4882-409x613.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"IMG_4882-409x613-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"IMG_4882-409x613-200x300.jpg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"IMG_4882-409x613-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:28:"IMG_4882-409x613-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:28:"IMG_4882-409x613-409x600.jpg";s:5:"width";i:409;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:16:"onsale-thumb-400";a:4:{s:4:"file";s:28:"IMG_4882-409x613-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:17:"onsale-slider-600";a:4:{s:4:"file";s:28:"IMG_4882-409x613-409x600.jpg";s:5:"width";i:409;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"5";s:6:"credit";s:0:"";s:6:"camera";s:12:"Canon EOS 6D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1400182269";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"50";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:5:"0.008";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(108, 27, '_wp_attached_file', '2016/04/IMG_7958-409x613.jpg'),
(109, 27, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:409;s:6:"height";i:613;s:4:"file";s:28:"2016/04/IMG_7958-409x613.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"IMG_7958-409x613-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"IMG_7958-409x613-200x300.jpg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"IMG_7958-409x613-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:28:"IMG_7958-409x613-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:28:"IMG_7958-409x613-409x600.jpg";s:5:"width";i:409;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:16:"onsale-thumb-400";a:4:{s:4:"file";s:28:"IMG_7958-409x613-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:17:"onsale-slider-600";a:4:{s:4:"file";s:28:"IMG_7958-409x613-409x600.jpg";s:5:"width";i:409;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"5";s:6:"credit";s:0:"";s:6:"camera";s:12:"Canon EOS 6D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1397088000";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"50";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:5:"0.008";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(110, 28, '_wp_attached_file', '2016/04/IMG_8644-409x613.jpg'),
(111, 28, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:409;s:6:"height";i:613;s:4:"file";s:28:"2016/04/IMG_8644-409x613.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"IMG_8644-409x613-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"IMG_8644-409x613-200x300.jpg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"IMG_8644-409x613-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:28:"IMG_8644-409x613-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:28:"IMG_8644-409x613-409x600.jpg";s:5:"width";i:409;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:16:"onsale-thumb-400";a:4:{s:4:"file";s:28:"IMG_8644-409x613-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:17:"onsale-slider-600";a:4:{s:4:"file";s:28:"IMG_8644-409x613-409x600.jpg";s:5:"width";i:409;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"4.5";s:6:"credit";s:0:"";s:6:"camera";s:12:"Canon EOS 6D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1412278025";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"85";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:5:"0.008";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(112, 29, '_wp_attached_file', '2016/04/IMG_8965-409x613.jpg') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(113, 29, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:409;s:6:"height";i:613;s:4:"file";s:28:"2016/04/IMG_8965-409x613.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"IMG_8965-409x613-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"IMG_8965-409x613-200x300.jpg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"IMG_8965-409x613-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:28:"IMG_8965-409x613-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:28:"IMG_8965-409x613-409x600.jpg";s:5:"width";i:409;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:16:"onsale-thumb-400";a:4:{s:4:"file";s:28:"IMG_8965-409x613-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:17:"onsale-slider-600";a:4:{s:4:"file";s:28:"IMG_8965-409x613-409x600.jpg";s:5:"width";i:409;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(114, 30, '_wp_attached_file', '2016/04/IMG_8978-409x613.jpg'),
(115, 30, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:409;s:6:"height";i:613;s:4:"file";s:28:"2016/04/IMG_8978-409x613.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"IMG_8978-409x613-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"IMG_8978-409x613-200x300.jpg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"IMG_8978-409x613-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:28:"IMG_8978-409x613-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:28:"IMG_8978-409x613-409x600.jpg";s:5:"width";i:409;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:16:"onsale-thumb-400";a:4:{s:4:"file";s:28:"IMG_8978-409x613-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:17:"onsale-slider-600";a:4:{s:4:"file";s:28:"IMG_8978-409x613-409x600.jpg";s:5:"width";i:409;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(116, 19, '_wp_attachment_image_alt', 'клетчатое платье'),
(117, 18, '_thumbnail_id', '19'),
(118, 18, '_visibility', 'visible'),
(119, 18, '_stock_status', 'instock'),
(120, 18, 'total_sales', '0'),
(121, 18, '_downloadable', 'no'),
(122, 18, '_virtual', 'no'),
(123, 18, '_purchase_note', ''),
(124, 18, '_featured', 'no'),
(125, 18, '_weight', ''),
(126, 18, '_length', ''),
(127, 18, '_width', ''),
(128, 18, '_height', ''),
(129, 18, '_sku', '8837'),
(130, 18, '_product_attributes', 'a:0:{}'),
(131, 18, '_regular_price', '300'),
(132, 18, '_sale_price', ''),
(133, 18, '_sale_price_dates_from', ''),
(134, 18, '_sale_price_dates_to', ''),
(135, 18, '_price', '300'),
(136, 18, '_sold_individually', ''),
(137, 18, '_manage_stock', 'no'),
(138, 18, '_backorders', 'no'),
(139, 18, '_stock', ''),
(140, 18, '_upsell_ids', 'a:0:{}'),
(141, 18, '_crosssell_ids', 'a:0:{}'),
(142, 18, '_product_version', '2.5.5'),
(143, 18, '_product_image_gallery', ''),
(144, 18, '_wc_rating_count', 'a:0:{}'),
(145, 18, '_wc_average_rating', '0'),
(146, 18, '_wc_review_count', '0'),
(147, 31, '_thumbnail_id', '22'),
(148, 22, '_wp_attachment_image_alt', 'приталенное платье'),
(149, 31, '_edit_last', '1'),
(150, 31, '_edit_lock', '1462632353:1'),
(151, 31, '_visibility', 'visible'),
(152, 31, '_stock_status', 'instock'),
(153, 31, 'total_sales', '0'),
(154, 31, '_downloadable', 'no'),
(155, 31, '_virtual', 'no'),
(156, 31, '_purchase_note', ''),
(157, 31, '_featured', 'no'),
(158, 31, '_weight', '0.3'),
(159, 31, '_length', '80'),
(160, 31, '_width', ''),
(161, 31, '_height', ''),
(162, 31, '_sku', '3445'),
(163, 31, '_product_attributes', 'a:0:{}'),
(164, 31, '_regular_price', '250'),
(165, 31, '_sale_price', ''),
(166, 31, '_sale_price_dates_from', ''),
(167, 31, '_sale_price_dates_to', ''),
(168, 31, '_price', '250'),
(169, 31, '_sold_individually', ''),
(170, 31, '_manage_stock', 'no'),
(171, 31, '_backorders', 'no'),
(172, 31, '_stock', ''),
(173, 31, '_upsell_ids', 'a:0:{}'),
(174, 31, '_crosssell_ids', 'a:0:{}'),
(175, 31, '_product_version', '2.5.5'),
(176, 31, '_product_image_gallery', ''),
(177, 31, '_wc_rating_count', 'a:0:{}'),
(178, 31, '_wc_average_rating', '0'),
(179, 32, '_edit_last', '1'),
(180, 32, '_edit_lock', '1462632286:1'),
(181, 21, '_wp_attachment_image_alt', 'бордовое платье'),
(182, 32, '_thumbnail_id', '21'),
(183, 32, '_visibility', 'visible'),
(184, 32, '_stock_status', 'instock'),
(185, 32, 'total_sales', '0'),
(186, 32, '_downloadable', 'no'),
(187, 32, '_virtual', 'no'),
(188, 32, '_purchase_note', ''),
(189, 32, '_featured', 'no'),
(190, 32, '_weight', ''),
(191, 32, '_length', '90'),
(192, 32, '_width', ''),
(193, 32, '_height', ''),
(194, 32, '_sku', '3344'),
(195, 32, '_product_attributes', 'a:0:{}'),
(196, 32, '_regular_price', '300'),
(197, 32, '_sale_price', ''),
(198, 32, '_sale_price_dates_from', ''),
(199, 32, '_sale_price_dates_to', ''),
(200, 32, '_price', '300'),
(201, 32, '_sold_individually', ''),
(202, 32, '_manage_stock', 'no'),
(203, 32, '_backorders', 'no'),
(204, 32, '_stock', ''),
(205, 32, '_upsell_ids', 'a:0:{}'),
(206, 32, '_crosssell_ids', 'a:0:{}'),
(207, 32, '_product_version', '2.5.5'),
(208, 32, '_product_image_gallery', ''),
(209, 32, '_wc_rating_count', 'a:0:{}'),
(210, 32, '_wc_average_rating', '0'),
(211, 33, '_edit_last', '1'),
(212, 33, '_edit_lock', '1462632196:1') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(213, 34, '_wp_attached_file', '2016/04/IMG_0268-409x613.jpg'),
(214, 34, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:409;s:6:"height";i:613;s:4:"file";s:28:"2016/04/IMG_0268-409x613.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"IMG_0268-409x613-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"IMG_0268-409x613-200x300.jpg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"IMG_0268-409x613-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:28:"IMG_0268-409x613-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:28:"IMG_0268-409x613-409x600.jpg";s:5:"width";i:409;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:16:"onsale-thumb-400";a:4:{s:4:"file";s:28:"IMG_0268-409x613-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:17:"onsale-slider-600";a:4:{s:4:"file";s:28:"IMG_0268-409x613-409x600.jpg";s:5:"width";i:409;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"4.5";s:6:"credit";s:0:"";s:6:"camera";s:12:"Canon EOS 6D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1458244956";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"50";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:4:"0.01";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(215, 34, '_wp_attachment_image_alt', 'бирюзовое платье'),
(216, 33, '_thumbnail_id', '34'),
(217, 33, '_visibility', 'visible'),
(218, 33, '_stock_status', 'instock'),
(219, 33, 'total_sales', '0'),
(220, 33, '_downloadable', 'no'),
(221, 33, '_virtual', 'no'),
(222, 33, '_purchase_note', ''),
(223, 33, '_featured', 'no'),
(224, 33, '_weight', ''),
(225, 33, '_length', '90'),
(226, 33, '_width', ''),
(227, 33, '_height', ''),
(228, 33, '_sku', '4456'),
(229, 33, '_product_attributes', 'a:0:{}'),
(230, 33, '_regular_price', '310'),
(231, 33, '_sale_price', ''),
(232, 33, '_sale_price_dates_from', ''),
(233, 33, '_sale_price_dates_to', ''),
(234, 33, '_price', '310'),
(235, 33, '_sold_individually', ''),
(236, 33, '_manage_stock', 'no'),
(237, 33, '_backorders', 'no'),
(238, 33, '_stock', ''),
(239, 33, '_upsell_ids', 'a:0:{}'),
(240, 33, '_crosssell_ids', 'a:0:{}'),
(241, 33, '_product_version', '2.5.5'),
(242, 33, '_product_image_gallery', ''),
(243, 33, '_wc_rating_count', 'a:0:{}'),
(244, 33, '_wc_average_rating', '0'),
(245, 36, '_wp_attached_file', '2016/04/IMG_0340-409x613.jpg'),
(246, 36, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:409;s:6:"height";i:613;s:4:"file";s:28:"2016/04/IMG_0340-409x613.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"IMG_0340-409x613-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"IMG_0340-409x613-200x300.jpg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"IMG_0340-409x613-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:28:"IMG_0340-409x613-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:28:"IMG_0340-409x613-409x600.jpg";s:5:"width";i:409;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:16:"onsale-thumb-400";a:4:{s:4:"file";s:28:"IMG_0340-409x613-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:17:"onsale-slider-600";a:4:{s:4:"file";s:28:"IMG_0340-409x613-409x600.jpg";s:5:"width";i:409;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"5";s:6:"credit";s:0:"";s:6:"camera";s:12:"Canon EOS 6D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1458245652";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"50";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:4:"0.01";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(247, 35, '_thumbnail_id', '36'),
(248, 36, '_wp_attachment_image_alt', 'желтое приталенное платье'),
(249, 35, '_edit_last', '1'),
(250, 35, '_edit_lock', '1462632002:1'),
(251, 35, '_visibility', 'visible'),
(252, 35, '_stock_status', 'instock'),
(253, 35, 'total_sales', '0'),
(254, 35, '_downloadable', 'no'),
(255, 35, '_virtual', 'no'),
(256, 35, '_purchase_note', ''),
(257, 35, '_featured', 'no'),
(258, 35, '_weight', '0.6'),
(259, 35, '_length', '93'),
(260, 35, '_width', ''),
(261, 35, '_height', ''),
(262, 35, '_sku', '1123'),
(263, 35, '_product_attributes', 'a:0:{}'),
(264, 35, '_regular_price', '350'),
(265, 35, '_sale_price', ''),
(266, 35, '_sale_price_dates_from', ''),
(267, 35, '_sale_price_dates_to', ''),
(268, 35, '_price', '350'),
(269, 35, '_sold_individually', ''),
(270, 35, '_manage_stock', 'no'),
(271, 35, '_backorders', 'no'),
(272, 35, '_stock', ''),
(273, 35, '_upsell_ids', 'a:0:{}'),
(274, 35, '_crosssell_ids', 'a:0:{}'),
(275, 35, '_product_version', '2.5.5'),
(276, 35, '_product_image_gallery', ''),
(277, 35, '_wc_rating_count', 'a:0:{}'),
(278, 35, '_wc_average_rating', '0'),
(279, 37, '_edit_last', '1'),
(280, 37, '_edit_lock', '1462631875:1'),
(281, 38, '_wp_attached_file', '2016/04/IMG_3495.jpg'),
(282, 38, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1500;s:4:"file";s:20:"2016/04/IMG_3495.jpg";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"IMG_3495-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"IMG_3495-200x300.jpg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"IMG_3495-768x1152.jpg";s:5:"width";i:768;s:6:"height";i:1152;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"IMG_3495-683x1024.jpg";s:5:"width";i:683;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"IMG_3495-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"IMG_3495-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:20:"IMG_3495-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:16:"onsale-thumb-400";a:4:{s:4:"file";s:20:"IMG_3495-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:17:"onsale-slider-600";a:4:{s:4:"file";s:20:"IMG_3495-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"6.3";s:6:"credit";s:0:"";s:6:"camera";s:12:"Canon EOS 6D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1459689180";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"85";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:5:"0.008";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(283, 39, '_wp_attached_file', '2016/04/IMG_9760-1-409x613.jpg'),
(284, 39, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:409;s:6:"height";i:613;s:4:"file";s:30:"2016/04/IMG_9760-1-409x613.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"IMG_9760-1-409x613-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:30:"IMG_9760-1-409x613-200x300.jpg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:30:"IMG_9760-1-409x613-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:30:"IMG_9760-1-409x613-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:30:"IMG_9760-1-409x613-409x600.jpg";s:5:"width";i:409;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:16:"onsale-thumb-400";a:4:{s:4:"file";s:30:"IMG_9760-1-409x613-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:17:"onsale-slider-600";a:4:{s:4:"file";s:30:"IMG_9760-1-409x613-409x600.jpg";s:5:"width";i:409;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"6.3";s:6:"credit";s:0:"";s:6:"camera";s:12:"Canon EOS 6D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1460743138";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"50";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:4:"0.01";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(285, 39, '_wp_attachment_image_alt', 'лосины в крапинку'),
(286, 37, '_thumbnail_id', '39'),
(287, 37, '_visibility', 'visible'),
(288, 37, '_stock_status', 'instock'),
(289, 37, 'total_sales', '0'),
(290, 37, '_downloadable', 'no'),
(291, 37, '_virtual', 'no'),
(292, 37, '_purchase_note', ''),
(293, 37, '_featured', 'no'),
(294, 37, '_weight', ''),
(295, 37, '_length', ''),
(296, 37, '_width', ''),
(297, 37, '_height', ''),
(298, 37, '_sku', '1247'),
(299, 37, '_product_attributes', 'a:0:{}'),
(300, 37, '_regular_price', '160'),
(301, 37, '_sale_price', ''),
(302, 37, '_sale_price_dates_from', ''),
(303, 37, '_sale_price_dates_to', ''),
(304, 37, '_price', '160'),
(305, 37, '_sold_individually', ''),
(306, 37, '_manage_stock', 'no'),
(307, 37, '_backorders', 'no'),
(308, 37, '_stock', ''),
(309, 37, '_upsell_ids', 'a:0:{}'),
(310, 37, '_crosssell_ids', 'a:0:{}'),
(311, 37, '_product_version', '2.5.5'),
(312, 37, '_product_image_gallery', '') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(313, 37, '_wc_rating_count', 'a:0:{}'),
(314, 37, '_wc_average_rating', '0'),
(315, 40, '_edit_last', '1'),
(316, 40, '_edit_lock', '1462631985:1'),
(317, 40, '_thumbnail_id', '38'),
(318, 38, '_wp_attachment_image_alt', 'классические брюки'),
(319, 40, '_visibility', 'visible'),
(320, 40, '_stock_status', 'instock'),
(321, 40, 'total_sales', '0'),
(322, 40, '_downloadable', 'no'),
(323, 40, '_virtual', 'no'),
(324, 40, '_purchase_note', ''),
(325, 40, '_featured', 'no'),
(326, 40, '_weight', ''),
(327, 40, '_length', ''),
(328, 40, '_width', ''),
(329, 40, '_height', ''),
(330, 40, '_sku', '6627'),
(331, 40, '_product_attributes', 'a:0:{}'),
(332, 40, '_regular_price', '220'),
(333, 40, '_sale_price', ''),
(334, 40, '_sale_price_dates_from', ''),
(335, 40, '_sale_price_dates_to', ''),
(336, 40, '_price', '220'),
(337, 40, '_sold_individually', ''),
(338, 40, '_manage_stock', 'no'),
(339, 40, '_backorders', 'no'),
(340, 40, '_stock', ''),
(341, 40, '_upsell_ids', 'a:0:{}'),
(342, 40, '_crosssell_ids', 'a:0:{}'),
(343, 40, '_product_version', '2.5.5'),
(344, 40, '_product_image_gallery', ''),
(345, 40, '_wc_rating_count', 'a:0:{}'),
(346, 40, '_wc_average_rating', '0'),
(347, 42, '_edit_last', '1'),
(348, 42, '_edit_lock', '1462631783:1'),
(349, 42, '_visibility', 'visible'),
(350, 42, '_stock_status', 'instock'),
(351, 42, 'total_sales', '0'),
(352, 42, '_downloadable', 'no'),
(353, 42, '_virtual', 'no'),
(354, 42, '_purchase_note', ''),
(355, 42, '_featured', 'no'),
(356, 42, '_weight', ''),
(357, 42, '_length', ''),
(358, 42, '_width', ''),
(359, 42, '_height', ''),
(360, 42, '_sku', '9811'),
(361, 42, '_product_attributes', 'a:0:{}'),
(362, 42, '_regular_price', '170'),
(363, 42, '_sale_price', ''),
(364, 42, '_sale_price_dates_from', ''),
(365, 42, '_sale_price_dates_to', ''),
(366, 42, '_price', '170'),
(367, 42, '_sold_individually', ''),
(368, 42, '_manage_stock', 'no'),
(369, 42, '_backorders', 'no'),
(370, 42, '_stock', ''),
(371, 42, '_upsell_ids', 'a:0:{}'),
(372, 42, '_crosssell_ids', 'a:0:{}'),
(373, 42, '_product_version', '2.5.5'),
(374, 42, '_product_image_gallery', ''),
(375, 42, '_wc_rating_count', 'a:0:{}'),
(376, 42, '_wc_average_rating', '0'),
(377, 43, '_wp_attached_file', '2016/04/IMG_9909-409x613.jpg'),
(378, 43, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:409;s:6:"height";i:613;s:4:"file";s:28:"2016/04/IMG_9909-409x613.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"IMG_9909-409x613-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"IMG_9909-409x613-200x300.jpg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"IMG_9909-409x613-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:28:"IMG_9909-409x613-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:28:"IMG_9909-409x613-409x600.jpg";s:5:"width";i:409;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:16:"onsale-thumb-400";a:4:{s:4:"file";s:28:"IMG_9909-409x613-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:17:"onsale-slider-600";a:4:{s:4:"file";s:28:"IMG_9909-409x613-409x600.jpg";s:5:"width";i:409;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"6.3";s:6:"credit";s:0:"";s:6:"camera";s:12:"Canon EOS 6D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1460744990";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"85";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:4:"0.01";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(379, 42, '_thumbnail_id', '43'),
(380, 43, '_wp_attachment_image_alt', 'клетчатая футболка'),
(381, 37, '_wc_review_count', '0'),
(382, 44, '_menu_item_type', 'custom'),
(383, 44, '_menu_item_menu_item_parent', '14'),
(384, 44, '_menu_item_object_id', '44'),
(385, 44, '_menu_item_object', 'custom'),
(386, 44, '_menu_item_target', ''),
(387, 44, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(388, 44, '_menu_item_xfn', ''),
(389, 44, '_menu_item_url', 'http://shop.local/product-category/pants/'),
(391, 31, '_wc_review_count', '0'),
(392, 45, '_menu_item_type', 'custom'),
(393, 45, '_menu_item_menu_item_parent', '14'),
(394, 45, '_menu_item_object_id', '45'),
(395, 45, '_menu_item_object', 'custom'),
(396, 45, '_menu_item_target', ''),
(397, 45, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(398, 45, '_menu_item_xfn', ''),
(399, 45, '_menu_item_url', 'http://shop.local/product-category/dress/'),
(401, 42, '_wc_review_count', '0'),
(402, 46, '_menu_item_type', 'custom'),
(403, 46, '_menu_item_menu_item_parent', '14'),
(404, 46, '_menu_item_object_id', '46'),
(405, 46, '_menu_item_object', 'custom'),
(406, 46, '_menu_item_target', ''),
(407, 46, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(408, 46, '_menu_item_xfn', ''),
(409, 46, '_menu_item_url', 'http://shop.local/product-category/blouses/'),
(411, 47, '_form', '<p>Ваше имя (обязательно)<br />\n    [text* your-name] </p>\n\n<p>Ваш e-mail (обязательно)<br />\n    [email* your-email] </p>\n\n<p>Тема<br />\n    [text your-subject] </p>\n\n<p>Сообщение<br />\n    [textarea your-message] </p>\n\n<p>[submit "Отправить"]</p>'),
(412, 47, '_mail', 'a:8:{s:7:"subject";s:44:"Магазин одежды "[your-subject]"";s:6:"sender";s:34:"[your-name] <wordpress@shop.local>";s:4:"body";s:206:"От: [your-name] <[your-email]>\nТема: [your-subject]\n\nСообщение:\n[your-message]\n\n--\nЭто сообщение отправлено с сайта Магазин одежды (http://shop.local)";s:9:"recipient";s:22:"popkaslonika@gmail.com";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(413, 47, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:44:"Магазин одежды "[your-subject]"";s:6:"sender";s:50:"Магазин одежды <wordpress@shop.local>";s:4:"body";s:147:"Сообщение:\n[your-message]\n\n--\nЭто сообщение отправлено с сайта Магазин одежды (http://shop.local)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:32:"Reply-To: popkaslonika@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(414, 47, '_messages', 'a:8:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";}'),
(415, 47, '_additional_settings', NULL) ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(416, 47, '_locale', 'ru_RU'),
(417, 49, '_edit_last', '1'),
(418, 49, '_edit_lock', '1462471617:1'),
(419, 49, '_wp_page_template', 'page-enter.php'),
(420, 51, '_edit_last', '1'),
(421, 51, '_wp_page_template', 'page-register.php'),
(422, 51, '_edit_lock', '1462471668:1'),
(423, 53, '_edit_last', '1'),
(424, 53, '_wp_page_template', 'default'),
(425, 53, '_edit_lock', '1462116533:1'),
(426, 55, '_menu_item_type', 'post_type'),
(427, 55, '_menu_item_menu_item_parent', '0'),
(428, 55, '_menu_item_object_id', '49'),
(429, 55, '_menu_item_object', 'page'),
(430, 55, '_menu_item_target', ''),
(431, 55, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(432, 55, '_menu_item_xfn', ''),
(433, 55, '_menu_item_url', ''),
(435, 8, '_edit_lock', '1462126944:1'),
(438, 57, '_edit_lock', '1462374739:1'),
(439, 57, '_edit_last', '1'),
(440, 57, '_wp_page_template', 'template-homepage.php'),
(446, 61, '_wp_attached_file', '2016/05/tunic.jpg'),
(447, 61, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:155;s:6:"height";i:176;s:4:"file";s:17:"2016/05/tunic.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"tunic-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(448, 61, '_wp_attachment_image_alt', 'блузы'),
(449, 62, '_wp_attached_file', '2016/05/dress.jpg'),
(450, 62, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:164;s:6:"height";i:264;s:4:"file";s:17:"2016/05/dress.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"dress-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:17:"dress-164x180.jpg";s:5:"width";i:164;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(451, 62, '_wp_attachment_image_alt', 'платья'),
(454, 33, '_wc_review_count', '0'),
(455, 64, '_wp_attached_file', '2016/05/pants-1.jpg'),
(456, 64, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:346;s:4:"file";s:19:"2016/05/pants-1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"pants-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"pants-1-217x300.jpg";s:5:"width";i:217;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"pants-1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:19:"pants-1-250x300.jpg";s:5:"width";i:250;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(457, 64, '_wp_attachment_image_alt', 'брюки'),
(458, 65, '_wp_attached_file', '2016/05/dress-1.jpg'),
(459, 65, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:210;s:6:"height";i:285;s:4:"file";s:19:"2016/05/dress-1.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"dress-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"dress-1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(460, 65, '_wp_attachment_image_alt', 'платья'),
(461, 66, '_wp_attached_file', '2016/05/dress-2.jpg'),
(462, 66, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:197;s:6:"height";i:271;s:4:"file";s:19:"2016/05/dress-2.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"dress-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"dress-2-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(463, 66, '_wp_attachment_image_alt', 'платья'),
(464, 7, '_edit_lock', '1462315737:1'),
(465, 7, '_edit_last', '1'),
(466, 7, '_wp_page_template', 'default'),
(476, 7, '_aioseop_description', 'У нас недорогие платья, блузы и блюки! Доставка по всей Украине! Большие размеры! Всё от 270 грн.!  '),
(477, 7, '_aioseop_title', 'Интернет магазин одежды'),
(478, 68, '_wp_attached_file', '2016/05/1.png'),
(479, 68, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:13:"2016/05/1.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:13:"1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:13:"1-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:13:"1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:16:"onsale-thumb-400";a:4:{s:4:"file";s:13:"1-400x400.png";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(480, 68, '_wp_attachment_image_alt', 'плате'),
(481, 69, '_wp_attached_file', '2016/05/cropped-1.png'),
(482, 69, '_wp_attachment_context', 'site-icon'),
(483, 69, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:21:"2016/05/cropped-1.png";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"cropped-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:21:"cropped-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"cropped-1-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"cropped-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:16:"onsale-thumb-400";a:4:{s:4:"file";s:21:"cropped-1-400x400.png";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}s:13:"site_icon-270";a:4:{s:4:"file";s:21:"cropped-1-270x270.png";s:5:"width";i:270;s:6:"height";i:270;s:9:"mime-type";s:9:"image/png";}s:13:"site_icon-192";a:4:{s:4:"file";s:21:"cropped-1-192x192.png";s:5:"width";i:192;s:6:"height";i:192;s:9:"mime-type";s:9:"image/png";}s:13:"site_icon-180";a:4:{s:4:"file";s:21:"cropped-1-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"site_icon-32";a:4:{s:4:"file";s:19:"cropped-1-32x32.png";s:5:"width";i:32;s:6:"height";i:32;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(484, 70, '_wp_attached_file', '2016/05/5.jpg'),
(485, 70, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:626;s:6:"height";i:626;s:4:"file";s:13:"2016/05/5.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"5-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"5-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:13:"5-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:13:"5-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:13:"5-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:16:"onsale-thumb-400";a:4:{s:4:"file";s:13:"5-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:17:"onsale-slider-600";a:4:{s:4:"file";s:13:"5-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(486, 70, '_wp_attachment_image_alt', 'платье с поясом'),
(487, 71, '_wp_attached_file', '2016/05/cropped-5.jpg'),
(488, 71, '_wp_attachment_context', 'site-icon'),
(489, 71, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:21:"2016/05/cropped-5.jpg";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"cropped-5-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"cropped-5-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"cropped-5-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"cropped-5-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:16:"onsale-thumb-400";a:4:{s:4:"file";s:21:"cropped-5-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:13:"site_icon-270";a:4:{s:4:"file";s:21:"cropped-5-270x270.jpg";s:5:"width";i:270;s:6:"height";i:270;s:9:"mime-type";s:10:"image/jpeg";}s:13:"site_icon-192";a:4:{s:4:"file";s:21:"cropped-5-192x192.jpg";s:5:"width";i:192;s:6:"height";i:192;s:9:"mime-type";s:10:"image/jpeg";}s:13:"site_icon-180";a:4:{s:4:"file";s:21:"cropped-5-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"site_icon-32";a:4:{s:4:"file";s:19:"cropped-5-32x32.jpg";s:5:"width";i:32;s:6:"height";i:32;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(490, 72, '_wp_attached_file', '2016/05/3.jpg'),
(491, 72, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:626;s:6:"height";i:626;s:4:"file";s:13:"2016/05/3.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"3-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:13:"3-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:13:"3-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:13:"3-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:16:"onsale-thumb-400";a:4:{s:4:"file";s:13:"3-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:17:"onsale-slider-600";a:4:{s:4:"file";s:13:"3-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(492, 73, '_wp_attached_file', '2016/05/4.png'),
(493, 73, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:960;s:6:"height";i:960;s:4:"file";s:13:"2016/05/4.png";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"4-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:13:"4-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:13:"4-768x768.png";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:13:"4-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:13:"4-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:13:"4-600x600.png";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}s:16:"onsale-thumb-400";a:4:{s:4:"file";s:13:"4-400x400.png";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}s:17:"onsale-slider-600";a:4:{s:4:"file";s:13:"4-600x600.png";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(494, 74, '_wp_attached_file', '2016/05/6.png'),
(495, 74, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:300;s:4:"file";s:13:"2016/05/6.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"6-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:13:"6-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(496, 72, '_wp_attachment_image_alt', 'платье'),
(497, 73, '_wp_attachment_image_alt', 'девушка в платье'),
(498, 74, '_wp_attachment_image_alt', ''),
(499, 75, '_wp_attached_file', '2016/05/cropped-4.png'),
(500, 75, '_wp_attachment_context', 'site-icon'),
(501, 75, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:21:"2016/05/cropped-4.png";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"cropped-4-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:21:"cropped-4-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"cropped-4-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"cropped-4-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:16:"onsale-thumb-400";a:4:{s:4:"file";s:21:"cropped-4-400x400.png";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}s:13:"site_icon-270";a:4:{s:4:"file";s:21:"cropped-4-270x270.png";s:5:"width";i:270;s:6:"height";i:270;s:9:"mime-type";s:9:"image/png";}s:13:"site_icon-192";a:4:{s:4:"file";s:21:"cropped-4-192x192.png";s:5:"width";i:192;s:6:"height";i:192;s:9:"mime-type";s:9:"image/png";}s:13:"site_icon-180";a:4:{s:4:"file";s:21:"cropped-4-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"site_icon-32";a:4:{s:4:"file";s:19:"cropped-4-32x32.png";s:5:"width";i:32;s:6:"height";i:32;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(502, 10, '_edit_lock', '1462318434:1'),
(503, 10, '_edit_last', '1'),
(504, 10, '_wp_page_template', 'default'),
(509, 10, '_aioseop_noindex', 'on'),
(510, 10, '_aioseop_nofollow', 'on'),
(517, 12, 'if_menu_enable', '0'),
(518, 14, 'if_menu_enable', '0'),
(519, 45, 'if_menu_enable', '0'),
(520, 44, 'if_menu_enable', '0'),
(521, 46, 'if_menu_enable', '0'),
(522, 15, 'if_menu_enable', '1'),
(523, 16, 'if_menu_enable', '0'),
(524, 55, 'if_menu_enable', '1'),
(525, 55, 'if_menu_condition_type', 'hide'),
(526, 55, 'if_menu_condition', 'User is logged in'),
(527, 15, 'if_menu_condition_type', 'show'),
(528, 15, 'if_menu_condition', 'User is logged in'),
(529, 79, '_menu_item_type', 'custom'),
(530, 79, '_menu_item_menu_item_parent', '15'),
(531, 79, '_menu_item_object_id', '79'),
(532, 79, '_menu_item_object', 'custom'),
(533, 79, '_menu_item_target', ''),
(534, 79, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(535, 79, '_menu_item_xfn', ''),
(536, 79, '_menu_item_url', 'http://shop.local/wp-login.php?action=logout'),
(538, 79, 'if_menu_enable', '0'),
(541, 49, '_aioseop_noindex', 'on'),
(542, 49, '_aioseop_nofollow', 'on'),
(543, 80, '_edit_lock', '1462633166:1'),
(544, 80, '_edit_last', '1'),
(545, 81, '_wp_attached_file', '2016/05/IMG_1881-409x613.jpg'),
(546, 81, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:409;s:6:"height";i:613;s:4:"file";s:28:"2016/05/IMG_1881-409x613.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"IMG_1881-409x613-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"IMG_1881-409x613-200x300.jpg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"IMG_1881-409x613-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:28:"IMG_1881-409x613-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:28:"IMG_1881-409x613-409x600.jpg";s:5:"width";i:409;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:16:"onsale-thumb-400";a:4:{s:4:"file";s:28:"IMG_1881-409x613-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:17:"onsale-slider-600";a:4:{s:4:"file";s:28:"IMG_1881-409x613-409x600.jpg";s:5:"width";i:409;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"4";s:6:"credit";s:0:"";s:6:"camera";s:12:"Canon EOS 6D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1448613751";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"85";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:5:"0.008";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(547, 81, '_wp_attachment_image_alt', 'женские лосины') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(548, 80, '_thumbnail_id', '81'),
(549, 80, '_visibility', 'visible'),
(550, 80, '_stock_status', 'instock'),
(551, 80, 'total_sales', '0'),
(552, 80, '_downloadable', 'no'),
(553, 80, '_virtual', 'no'),
(554, 80, '_purchase_note', ''),
(555, 80, '_featured', 'no'),
(556, 80, '_weight', '300'),
(557, 80, '_length', ''),
(558, 80, '_width', ''),
(559, 80, '_height', ''),
(560, 80, '_sku', '1435'),
(561, 80, '_product_attributes', 'a:0:{}'),
(562, 80, '_regular_price', '250'),
(563, 80, '_sale_price', ''),
(564, 80, '_sale_price_dates_from', ''),
(565, 80, '_sale_price_dates_to', ''),
(566, 80, '_price', '250'),
(567, 80, '_sold_individually', ''),
(568, 80, '_manage_stock', 'no'),
(569, 80, '_backorders', 'no'),
(570, 80, '_stock', ''),
(571, 80, '_upsell_ids', 'a:0:{}'),
(572, 80, '_crosssell_ids', 'a:0:{}'),
(573, 80, '_product_version', '2.5.5'),
(574, 80, '_product_image_gallery', ''),
(575, 80, '_wc_rating_count', 'a:0:{}'),
(576, 80, '_wc_review_count', '0'),
(577, 80, '_wc_average_rating', '0'),
(578, 40, '_wc_review_count', '0'),
(579, 80, '_wp_old_slug', 'arima'),
(580, 30, '_wp_attachment_image_alt', 'платье в цветочек'),
(581, 29, '_wp_attachment_image_alt', 'платье в цветочек'),
(582, 28, '_wp_attachment_image_alt', 'приталенное платье'),
(583, 27, '_wp_attachment_image_alt', 'приталенное платье'),
(584, 26, '_wp_attachment_image_alt', 'приталенное платье'),
(585, 25, '_wp_attachment_image_alt', 'платье в цветочек'),
(586, 24, '_wp_attachment_image_alt', 'приталенное платье'),
(587, 23, '_wp_attachment_image_alt', 'платье в цветочек'),
(588, 20, '_wp_attachment_image_alt', 'платье с поясом'),
(589, 37, '_wp_old_slug', 'aliya'),
(590, 40, '_wp_old_slug', 'riza'),
(591, 42, '_wp_old_slug', 'dina'),
(592, 35, '_wp_old_slug', 'zena'),
(593, 35, '_wc_review_count', '0'),
(594, 33, '_wp_old_slug', 'orion'),
(595, 32, '_wp_old_slug', 'naya'),
(596, 31, '_wp_old_slug', '31'),
(597, 18, '_wp_old_slug', 'lina'),
(598, 4, '_wp_old_slug', 'mila'),
(599, 91, '_edit_lock', '1462634392:1'),
(600, 91, '_edit_last', '1'),
(601, 92, '_wp_attached_file', '2016/05/IMG_0361-409x613.jpg'),
(602, 92, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:409;s:6:"height";i:613;s:4:"file";s:28:"2016/05/IMG_0361-409x613.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"IMG_0361-409x613-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"IMG_0361-409x613-200x300.jpg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"IMG_0361-409x613-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:28:"IMG_0361-409x613-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:28:"IMG_0361-409x613-409x600.jpg";s:5:"width";i:409;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:16:"onsale-thumb-400";a:4:{s:4:"file";s:28:"IMG_0361-409x613-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:17:"onsale-slider-600";a:4:{s:4:"file";s:28:"IMG_0361-409x613-409x600.jpg";s:5:"width";i:409;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"4.5";s:6:"credit";s:0:"";s:6:"camera";s:12:"Canon EOS 6D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1458246135";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"50";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:4:"0.01";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(603, 92, '_wp_attachment_image_alt', 'красное приталенное платье'),
(604, 91, '_thumbnail_id', '92'),
(605, 91, '_visibility', 'visible'),
(606, 91, '_stock_status', 'instock'),
(607, 91, 'total_sales', '0'),
(608, 91, '_downloadable', 'no'),
(609, 91, '_virtual', 'no'),
(610, 91, '_purchase_note', ''),
(611, 91, '_featured', 'no'),
(612, 91, '_weight', '300'),
(613, 91, '_length', '93'),
(614, 91, '_width', ''),
(615, 91, '_height', ''),
(616, 91, '_sku', '0530'),
(617, 91, '_product_attributes', 'a:0:{}'),
(618, 91, '_regular_price', '280'),
(619, 91, '_sale_price', ''),
(620, 91, '_sale_price_dates_from', ''),
(621, 91, '_sale_price_dates_to', ''),
(622, 91, '_price', '280'),
(623, 91, '_sold_individually', ''),
(624, 91, '_manage_stock', 'no'),
(625, 91, '_backorders', 'no'),
(626, 91, '_stock', ''),
(627, 91, '_upsell_ids', 'a:0:{}'),
(628, 91, '_crosssell_ids', 'a:0:{}'),
(629, 91, '_product_version', '2.5.5'),
(630, 91, '_product_image_gallery', ''),
(631, 91, '_wc_rating_count', 'a:0:{}'),
(632, 91, '_wc_average_rating', '0'),
(633, 91, '_wc_review_count', '0'),
(634, 93, '_edit_lock', '1462633982:1'),
(635, 93, '_edit_last', '1'),
(636, 94, '_wp_attached_file', '2016/05/IMG_3357-409x613.jpg'),
(637, 94, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:409;s:6:"height";i:613;s:4:"file";s:28:"2016/05/IMG_3357-409x613.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"IMG_3357-409x613-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"IMG_3357-409x613-200x300.jpg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"IMG_3357-409x613-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:28:"IMG_3357-409x613-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:28:"IMG_3357-409x613-409x600.jpg";s:5:"width";i:409;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:16:"onsale-thumb-400";a:4:{s:4:"file";s:28:"IMG_3357-409x613-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:17:"onsale-slider-600";a:4:{s:4:"file";s:28:"IMG_3357-409x613-409x600.jpg";s:5:"width";i:409;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"6.3";s:6:"credit";s:0:"";s:6:"camera";s:12:"Canon EOS 6D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1459686783";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"85";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:5:"0.008";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(638, 94, '_wp_attachment_image_alt', 'блуза в чёрную крапинку'),
(639, 93, '_thumbnail_id', '94'),
(640, 93, '_visibility', 'visible'),
(641, 93, '_stock_status', 'instock'),
(642, 93, 'total_sales', '0'),
(643, 93, '_downloadable', 'no'),
(644, 93, '_virtual', 'no'),
(645, 93, '_purchase_note', ''),
(646, 93, '_featured', 'no'),
(647, 93, '_weight', '') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(648, 93, '_length', ''),
(649, 93, '_width', ''),
(650, 93, '_height', ''),
(651, 93, '_sku', '4566'),
(652, 93, '_product_attributes', 'a:0:{}'),
(653, 93, '_regular_price', '200'),
(654, 93, '_sale_price', ''),
(655, 93, '_sale_price_dates_from', ''),
(656, 93, '_sale_price_dates_to', ''),
(657, 93, '_price', '200'),
(658, 93, '_sold_individually', ''),
(659, 93, '_manage_stock', 'no'),
(660, 93, '_backorders', 'no'),
(661, 93, '_stock', ''),
(662, 93, '_upsell_ids', 'a:0:{}'),
(663, 93, '_crosssell_ids', 'a:0:{}'),
(664, 93, '_product_version', '2.5.5'),
(665, 93, '_product_image_gallery', ''),
(666, 93, '_wc_rating_count', 'a:0:{}'),
(667, 93, '_wc_average_rating', '0'),
(668, 93, '_wc_review_count', '0'),
(669, 95, '_edit_lock', '1462634306:1'),
(670, 95, '_edit_last', '1'),
(671, 96, '_wp_attached_file', '2016/05/IMG_9978-1-409x613.jpg'),
(672, 96, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:409;s:6:"height";i:613;s:4:"file";s:30:"2016/05/IMG_9978-1-409x613.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"IMG_9978-1-409x613-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:30:"IMG_9978-1-409x613-200x300.jpg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:30:"IMG_9978-1-409x613-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:30:"IMG_9978-1-409x613-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:30:"IMG_9978-1-409x613-409x600.jpg";s:5:"width";i:409;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:16:"onsale-thumb-400";a:4:{s:4:"file";s:30:"IMG_9978-1-409x613-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:17:"onsale-slider-600";a:4:{s:4:"file";s:30:"IMG_9978-1-409x613-409x600.jpg";s:5:"width";i:409;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"7.1";s:6:"credit";s:0:"";s:6:"camera";s:12:"Canon EOS 6D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1460746024";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"50";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:4:"0.01";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(673, 96, '_wp_attachment_image_alt', 'приталенное белое летнее платье'),
(674, 95, '_thumbnail_id', '96'),
(675, 95, '_visibility', 'visible'),
(676, 95, '_stock_status', 'instock'),
(677, 95, 'total_sales', '0'),
(678, 95, '_downloadable', 'no'),
(679, 95, '_virtual', 'no'),
(680, 95, '_purchase_note', ''),
(681, 95, '_featured', 'no'),
(682, 95, '_weight', ''),
(683, 95, '_length', ''),
(684, 95, '_width', ''),
(685, 95, '_height', ''),
(686, 95, '_sku', '2889'),
(687, 95, '_product_attributes', 'a:0:{}'),
(688, 95, '_regular_price', '290'),
(689, 95, '_sale_price', ''),
(690, 95, '_sale_price_dates_from', ''),
(691, 95, '_sale_price_dates_to', ''),
(692, 95, '_price', '290'),
(693, 95, '_sold_individually', ''),
(694, 95, '_manage_stock', 'no'),
(695, 95, '_backorders', 'no'),
(696, 95, '_stock', ''),
(697, 95, '_upsell_ids', 'a:0:{}'),
(698, 95, '_crosssell_ids', 'a:0:{}'),
(699, 95, '_product_version', '2.5.5'),
(700, 95, '_product_image_gallery', ''),
(701, 95, '_wc_rating_count', 'a:0:{}'),
(702, 95, '_wc_average_rating', '0'),
(703, 95, '_wc_review_count', '0') ;

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
  `post_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-04-17 19:12:01', '2016-04-17 16:12:01', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80', '', '', '2016-04-17 19:12:01', '2016-04-17 16:12:01', '', 0, 'http://shop.local/?p=1', 0, 'post', '', 1),
(2, 1, '2016-04-17 19:12:01', '2016-04-17 16:12:01', 'Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n\n<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n\n...или так:\n\n<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\n\nПерейдите <a href="http://shop.local/wp-admin/">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2016-04-17 19:12:01', '2016-04-17 16:12:01', '', 0, 'http://shop.local/?page_id=2', 0, 'page', '', 0),
(4, 1, '2016-04-23 19:26:30', '2016-04-23 16:26:30', 'Платье из вискозы нежного светло-бирюзового цвета. В комплект входит пояс.', 'Женское платье 8214', 'Платье из вискозы светло-бирюзового цвета, в комплекте пояс.', 'publish', 'open', 'closed', '', 'womens-dress-8214', '', '', '2016-05-07 17:52:16', '2016-05-07 14:52:16', '', 0, 'http://shop.local/?post_type=product&#038;p=4', 0, 'product', '', 0),
(5, 1, '2016-04-23 19:20:05', '2016-04-23 16:20:05', '', 'dress', '', 'inherit', 'open', 'closed', '', 'img_0442-409x613', '', '', '2016-05-07 17:32:44', '2016-05-07 14:32:44', '', 4, 'http://shop.local/wp-content/uploads/2016/04/IMG_0442-409x613.jpg', 0, 'attachment', 'image/jpeg', 0),
(6, 1, '2016-05-07 17:52:12', '2016-05-07 14:52:12', 'Платье из вискозы нежного светло-бирюзового цвета. В комплект входит пояс.', 'Женское платье 8214', 'Платье из вискозы светло-бирюзового цвета, в комплекте пояс.', 'inherit', 'closed', 'closed', '', '4-autosave-v1', '', '', '2016-05-07 17:52:12', '2016-05-07 14:52:12', '', 4, 'http://shop.local/2016/04/23/4-autosave-v1/', 0, 'revision', '', 0),
(7, 1, '2016-04-23 19:51:21', '2016-04-23 16:51:21', '', 'Магазин', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2016-05-04 00:25:43', '2016-05-03 21:25:43', '', 0, 'http://shop.local/shop/', 0, 'page', '', 0),
(8, 1, '2016-04-23 19:51:22', '2016-04-23 16:51:22', '[woocommerce_cart]', 'Корзина', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2016-04-23 19:51:22', '2016-04-23 16:51:22', '', 0, 'http://shop.local/cart/', 0, 'page', '', 0),
(9, 1, '2016-04-23 19:51:22', '2016-04-23 16:51:22', '[woocommerce_checkout]', 'Оформление заказа', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2016-04-23 19:51:22', '2016-04-23 16:51:22', '', 0, 'http://shop.local/checkout/', 0, 'page', '', 0),
(10, 1, '2016-04-23 19:51:22', '2016-04-23 16:51:22', '[woocommerce_my_account]', 'Мой аккаунт', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2016-05-04 02:33:15', '2016-05-03 23:33:15', '', 0, 'http://shop.local/my-account/', 0, 'page', '', 0),
(12, 1, '2016-04-23 20:09:39', '2016-04-23 17:09:39', '', 'Главная', '', 'publish', 'closed', 'closed', '', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f', '', '', '2016-05-05 20:47:13', '2016-05-05 17:47:13', '', 0, 'http://shop.local/?p=12', 1, 'nav_menu_item', '', 0),
(13, 1, '2016-04-23 20:08:58', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-04-23 20:08:58', '0000-00-00 00:00:00', '', 0, 'http://shop.local/?p=13', 1, 'nav_menu_item', '', 0),
(14, 1, '2016-04-23 20:09:39', '2016-04-23 17:09:39', ' ', '', '', 'publish', 'closed', 'closed', '', '14', '', '', '2016-05-05 20:47:13', '2016-05-05 17:47:13', '', 0, 'http://shop.local/?p=14', 2, 'nav_menu_item', '', 0),
(15, 1, '2016-04-23 20:09:40', '2016-04-23 17:09:40', ' ', '', '', 'publish', 'closed', 'closed', '', '15', '', '', '2016-05-05 20:47:14', '2016-05-05 17:47:14', '', 0, 'http://shop.local/?p=15', 8, 'nav_menu_item', '', 0),
(16, 1, '2016-04-23 20:09:40', '2016-04-23 17:09:40', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2016-05-05 20:47:13', '2016-05-05 17:47:13', '', 0, 'http://shop.local/?p=16', 6, 'nav_menu_item', '', 0),
(18, 1, '2016-04-24 19:20:22', '2016-04-24 16:20:22', 'Трикотажное клетчатое платье из вискозы. Воротник выполнен из эко-кожи и дополнен стильной брошью, рукав ¾, потайная молния на спинке, без подкладки.', 'Женское платье 8837', 'Модель приталенного фасона в красно-черную клетку.', 'publish', 'open', 'closed', '', 'womens-dress-8837', '', '', '2016-05-07 17:50:28', '2016-05-07 14:50:28', '', 0, 'http://shop.local/?post_type=product&#038;p=18', 0, 'product', '', 0),
(19, 1, '2016-04-24 19:02:20', '2016-04-24 16:02:20', '', 'dress', '', 'inherit', 'open', 'closed', '', 'img_1224-409x613', '', '', '2016-05-07 17:32:49', '2016-05-07 14:32:49', '', 18, 'http://shop.local/wp-content/uploads/2016/04/IMG_1224-409x613.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2016-04-24 19:02:22', '2016-04-24 16:02:22', '', 'dress', '', 'inherit', 'open', 'closed', '', 'img_2027-409x613', '', '', '2016-05-07 17:32:33', '2016-05-07 14:32:33', '', 18, 'http://shop.local/wp-content/uploads/2016/04/IMG_2027-409x613.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2016-04-24 19:02:24', '2016-04-24 16:02:24', '', 'dress', '', 'inherit', 'open', 'closed', '', 'img_2166-409x613', '', '', '2016-05-07 17:32:23', '2016-05-07 14:32:23', '', 18, 'http://shop.local/wp-content/uploads/2016/04/IMG_2166-409x613.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2016-04-24 19:02:26', '2016-04-24 16:02:26', '', 'dress', '', 'inherit', 'open', 'closed', '', 'img_2674-409x613', '', '', '2016-05-07 17:32:19', '2016-05-07 14:32:19', '', 18, 'http://shop.local/wp-content/uploads/2016/04/IMG_2674-409x613.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2016-04-24 19:02:28', '2016-04-24 16:02:28', '', 'dress', '', 'inherit', 'open', 'closed', '', 'img_2702-409x613', '', '', '2016-05-07 17:32:04', '2016-05-07 14:32:04', '', 18, 'http://shop.local/wp-content/uploads/2016/04/IMG_2702-409x613.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2016-04-24 19:02:30', '2016-04-24 16:02:30', '', 'dress', '', 'inherit', 'open', 'closed', '', 'img_3169-409x613', '', '', '2016-05-07 17:31:54', '2016-05-07 14:31:54', '', 18, 'http://shop.local/wp-content/uploads/2016/04/IMG_3169-409x613.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2016-04-24 19:02:32', '2016-04-24 16:02:32', '', 'dress', '', 'inherit', 'open', 'closed', '', 'img_3887-409x613', '', '', '2016-05-07 17:31:43', '2016-05-07 14:31:43', '', 18, 'http://shop.local/wp-content/uploads/2016/04/IMG_3887-409x613.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2016-04-24 19:02:34', '2016-04-24 16:02:34', '', 'dress', '', 'inherit', 'open', 'closed', '', 'img_4882-409x613', '', '', '2016-05-07 17:31:27', '2016-05-07 14:31:27', '', 18, 'http://shop.local/wp-content/uploads/2016/04/IMG_4882-409x613.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2016-04-24 19:02:36', '2016-04-24 16:02:36', '', 'dress', '', 'inherit', 'open', 'closed', '', 'img_7958-409x613', '', '', '2016-05-07 17:31:13', '2016-05-07 14:31:13', '', 18, 'http://shop.local/wp-content/uploads/2016/04/IMG_7958-409x613.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2016-04-24 19:02:39', '2016-04-24 16:02:39', '', 'dress', '', 'inherit', 'open', 'closed', '', 'img_8644-409x613', '', '', '2016-05-07 17:31:01', '2016-05-07 14:31:01', '', 18, 'http://shop.local/wp-content/uploads/2016/04/IMG_8644-409x613.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2016-04-24 19:02:41', '2016-04-24 16:02:41', '', 'dress', '', 'inherit', 'open', 'closed', '', 'img_8965-409x613', '', '', '2016-05-07 17:30:44', '2016-05-07 14:30:44', '', 18, 'http://shop.local/wp-content/uploads/2016/04/IMG_8965-409x613.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2016-04-24 19:02:43', '2016-04-24 16:02:43', '', 'dress', '', 'inherit', 'open', 'closed', '', 'img_8978-409x613', '', '', '2016-05-07 17:30:31', '2016-05-07 14:30:31', '', 18, 'http://shop.local/wp-content/uploads/2016/04/IMG_8978-409x613.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2016-04-24 19:32:37', '2016-04-24 16:32:37', 'Класическое платье на каждый день. Выполнено из мягкой ткани, в сочетании двух фактур : трикотаж и сетка 3-d.', 'Женское платье 3445', 'Класическое летнее платье на каждый день.', 'publish', 'open', 'closed', '', 'womens-dress-3445', '', '', '2016-05-07 17:48:08', '2016-05-07 14:48:08', '', 0, 'http://shop.local/?post_type=product&#038;p=31', 0, 'product', '', 0),
(32, 1, '2016-04-24 19:41:05', '2016-04-24 16:41:05', 'Очень красивое молодежное платье бордового цвета прямого кроя. Детали: талия с декоративным поясом, горловина обработана отложным воротником на стойке с  ожерельем.', 'Женское платье 3344', 'Очень красивое молодежное платье прямого кроя. Детали: талия с декоративным поясом, горловина обработана отложным воротником на стойке с  ожерельем.', 'publish', 'open', 'closed', '', 'womens-dress-3344', '', '', '2016-05-07 17:47:01', '2016-05-07 14:47:01', '', 0, 'http://shop.local/?post_type=product&#038;p=32', 0, 'product', '', 0),
(33, 1, '2016-04-24 19:46:08', '2016-04-24 16:46:08', 'Очень привлекательное вечернее платье из трикотажного жаккарда бирюзового цвета. Горловина с V-образным вырезом, короткий рукав, впереди пояс украшенный аппликацией с золотыми камушками.', 'Женское платье 4456', 'Вечернее платье из трикотажного жаккарда.', 'publish', 'open', 'closed', '', 'womens-dress-4456', '', '', '2016-05-07 17:45:30', '2016-05-07 14:45:30', '', 0, 'http://shop.local/?post_type=product&#038;p=33', 0, 'product', '', 0),
(34, 1, '2016-04-24 19:45:33', '2016-04-24 16:45:33', '', 'dress', '', 'inherit', 'open', 'closed', '', 'img_0268-409x613', '', '', '2016-05-07 17:30:03', '2016-05-07 14:30:03', '', 33, 'http://shop.local/wp-content/uploads/2016/04/IMG_0268-409x613.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2016-04-24 19:52:21', '2016-04-24 16:52:21', 'Элегантное классическое платье из трикотажной ткани с рельефной вставкой из эко-кожи на талии и на манжетах. Приталенный силуэт с оригинальным V-образным вырезом, спереди на талии вставка из эко-кожи с золотой фурнитурой, имитирующая тонкий пояс, рукав 7/8, потайная молния на спинке, без подкладки.', 'Женское платье 1123', 'Элегантное классическое платье из костюмной ткани с рельефной вставкой из эко-кожи на талии и на манжетах.', 'publish', 'open', 'closed', '', 'womens-dress-1123', '', '', '2016-05-07 17:42:16', '2016-05-07 14:42:16', '', 0, 'http://shop.local/?post_type=product&#038;p=35', 0, 'product', '', 0),
(36, 1, '2016-04-24 19:48:50', '2016-04-24 16:48:50', '', 'dress', '', 'inherit', 'open', 'closed', '', 'img_0340-409x613', '', '', '2016-05-07 17:30:13', '2016-05-07 14:30:13', '', 35, 'http://shop.local/wp-content/uploads/2016/04/IMG_0340-409x613.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2016-04-24 20:00:59', '2016-04-24 17:00:59', 'Очень удобная и  стильная модель лосин. Cредняя посадка, функциональные карманы сзади и имитация кармана спереди,декоративная нашивка на кармане,застежка на молнию.', 'Женские брюки 1247', 'Очень удобная и  стильная модель лосин голубого цвета в крапинку. Материал: джинс-коттон.', 'publish', 'open', 'closed', '', 'womens-pants-1247', '', '', '2016-05-07 17:40:09', '2016-05-07 14:40:09', '', 0, 'http://shop.local/?post_type=product&#038;p=37', 0, 'product', '', 0),
(38, 1, '2016-04-24 19:57:59', '2016-04-24 16:57:59', '', 'pants', '', 'inherit', 'open', 'closed', '', 'img_3495', '', '', '2016-05-07 17:28:57', '2016-05-07 14:28:57', '', 37, 'http://shop.local/wp-content/uploads/2016/04/IMG_3495.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2016-04-24 19:58:03', '2016-04-24 16:58:03', '', 'pants', '', 'inherit', 'open', 'closed', '', 'img_9760-1-409x613', '', '', '2016-05-07 17:28:46', '2016-05-07 14:28:46', '', 37, 'http://shop.local/wp-content/uploads/2016/04/IMG_9760-1-409x613.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2016-04-24 20:04:56', '2016-04-24 17:04:56', 'Классические брюки выполнены из ткани оригинального дизайна, синего цвета в крупный белый ромбик. Стандартная талия, зауженный крой, застежка на молнию, два функциональных боковых кармана и два задних прорезных кармана с листочкой, ремень в комплекте.', 'Женские брюки 6627', 'Классические брюки выполнены из ткани оригинального дизайна, синего цвета в крупный белый ромбик.', 'publish', 'open', 'closed', '', 'womens-pants-6627', '', '', '2016-05-07 17:39:40', '2016-05-07 14:39:40', '', 0, 'http://shop.local/?post_type=product&#038;p=40', 0, 'product', '', 0),
(42, 1, '2016-04-24 20:08:15', '2016-04-24 17:08:15', 'Материал: 100% хлопок, сатин. Модная молодежная футболка на каждый день. Круглый вырез, короткие рукава.', 'Женская футболка 9811', 'Модная молодежная футболка на каждый день из хлопка.', 'publish', 'open', 'closed', '', 'womens-shirt-9811', '', '', '2016-05-07 17:38:35', '2016-05-07 14:38:35', '', 0, 'http://shop.local/?post_type=product&#038;p=42', 0, 'product', '', 0),
(43, 1, '2016-04-24 20:09:32', '2016-04-24 17:09:32', '', 't-shirt', '', 'inherit', 'open', 'closed', '', 'img_9909-409x613', '', '', '2016-05-07 17:29:46', '2016-05-07 14:29:46', '', 42, 'http://shop.local/wp-content/uploads/2016/04/IMG_9909-409x613.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2016-04-24 20:19:21', '2016-04-24 17:19:21', '', 'Брюки', '', 'publish', 'closed', 'closed', '', '%d0%b1%d1%80%d1%8e%d0%ba%d0%b8', '', '', '2016-05-05 20:47:13', '2016-05-05 17:47:13', '', 0, 'http://shop.local/?p=44', 4, 'nav_menu_item', '', 0),
(45, 1, '2016-04-24 20:21:00', '2016-04-24 17:21:00', '', 'Платья', '', 'publish', 'closed', 'closed', '', '%d0%bf%d0%bb%d0%b0%d1%82%d1%8c%d1%8f', '', '', '2016-05-05 20:47:13', '2016-05-05 17:47:13', '', 0, 'http://shop.local/?p=45', 3, 'nav_menu_item', '', 0),
(46, 1, '2016-04-24 20:21:00', '2016-04-24 17:21:00', '', 'Блузы', '', 'publish', 'closed', 'closed', '', '%d0%b1%d0%bb%d1%83%d0%b7%d1%8b', '', '', '2016-05-05 20:47:13', '2016-05-05 17:47:13', '', 0, 'http://shop.local/?p=46', 5, 'nav_menu_item', '', 0),
(47, 1, '2016-04-24 20:39:53', '2016-04-24 17:39:53', '<p>Ваше имя (обязательно)<br />\n    [text* your-name] </p>\n\n<p>Ваш e-mail (обязательно)<br />\n    [email* your-email] </p>\n\n<p>Тема<br />\n    [text your-subject] </p>\n\n<p>Сообщение<br />\n    [textarea your-message] </p>\n\n<p>[submit "Отправить"]</p>\nМагазин одежды "[your-subject]"\n[your-name] <wordpress@shop.local>\nОт: [your-name] <[your-email]>\nТема: [your-subject]\n\nСообщение:\n[your-message]\n\n--\nЭто сообщение отправлено с сайта Магазин одежды (http://shop.local)\npopkaslonika@gmail.com\nReply-To: [your-email]\n\n0\n0\n\nМагазин одежды "[your-subject]"\nМагазин одежды <wordpress@shop.local>\nСообщение:\n[your-message]\n\n--\nЭто сообщение отправлено с сайта Магазин одежды (http://shop.local)\n[your-email]\nReply-To: popkaslonika@gmail.com\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Контактная форма 1', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d0%bd%d0%b0%d1%8f-%d1%84%d0%be%d1%80%d0%bc%d0%b0-1', '', '', '2016-04-24 20:39:53', '2016-04-24 17:39:53', '', 0, 'http://shop.local/?post_type=wpcf7_contact_form&p=47', 0, 'wpcf7_contact_form', '', 0),
(49, 1, '2016-05-01 18:27:29', '2016-05-01 15:27:29', '[wppb-login]', 'Вход', '', 'publish', 'closed', 'closed', '', '%d0%b2%d1%85%d0%be%d0%b4', '', '', '2016-05-05 21:06:13', '2016-05-05 18:06:13', '', 0, 'http://shop.local/?page_id=49', 0, 'page', '', 0),
(50, 1, '2016-05-01 18:27:29', '2016-05-01 15:27:29', '[wppb-login]', 'Вход', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2016-05-01 18:27:29', '2016-05-01 15:27:29', '', 49, 'http://shop.local/49-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2016-05-01 18:29:06', '2016-05-01 15:29:06', '[wppb-register]', 'Регистрация', '', 'publish', 'closed', 'closed', '', '%d1%80%d0%b5%d0%b3%d0%b8%d1%81%d1%82%d1%80%d0%b0%d1%86%d0%b8%d1%8f', '', '', '2016-05-05 21:10:03', '2016-05-05 18:10:03', '', 0, 'http://shop.local/?page_id=51', 0, 'page', '', 0),
(52, 1, '2016-05-01 18:29:06', '2016-05-01 15:29:06', '[wppb-register]', 'Регистрация', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2016-05-01 18:29:06', '2016-05-01 15:29:06', '', 51, 'http://shop.local/51-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2016-05-01 18:30:54', '2016-05-01 15:30:54', '[wppb-edit-profile]', 'Изменить профиль', '', 'publish', 'closed', 'closed', '', '%d0%b8%d0%b7%d0%bc%d0%b5%d0%bd%d0%b8%d1%82%d1%8c-%d0%bf%d1%80%d0%be%d1%84%d0%b8%d0%bb%d1%8c', '', '', '2016-05-01 18:30:54', '2016-05-01 15:30:54', '', 0, 'http://shop.local/?page_id=53', 0, 'page', '', 0),
(54, 1, '2016-05-01 18:30:54', '2016-05-01 15:30:54', '[wppb-edit-profile]', 'Изменить профиль', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2016-05-01 18:30:54', '2016-05-01 15:30:54', '', 53, 'http://shop.local/53-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2016-05-01 18:43:15', '2016-05-01 15:43:15', ' ', '', '', 'publish', 'closed', 'closed', '', '55', '', '', '2016-05-05 20:47:13', '2016-05-05 17:47:13', '', 0, 'http://shop.local/?p=55', 7, 'nav_menu_item', '', 0),
(57, 1, '2016-05-03 21:28:04', '2016-05-03 18:28:04', '', 'Главная', '', 'publish', 'closed', 'closed', '', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f', '', '', '2016-05-03 21:28:48', '2016-05-03 18:28:48', '', 0, 'http://shop.local/?page_id=57', 0, 'page', '', 0),
(58, 1, '2016-05-03 21:28:04', '2016-05-03 18:28:04', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2016-05-03 21:28:04', '2016-05-03 18:28:04', '', 57, 'http://shop.local/57-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2016-05-03 21:59:08', '2016-05-03 18:59:08', '', 'tunic', '', 'inherit', 'open', 'closed', '', 'tunic', '', '', '2016-05-03 21:59:24', '2016-05-03 18:59:24', '', 0, 'http://shop.local/wp-content/uploads/2016/05/tunic.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2016-05-03 21:59:39', '2016-05-03 18:59:39', '', 'dress', '', 'inherit', 'open', 'closed', '', 'dress', '', '', '2016-05-03 21:59:48', '2016-05-03 18:59:48', '', 0, 'http://shop.local/wp-content/uploads/2016/05/dress.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2016-05-03 22:27:44', '2016-05-03 19:27:44', '', 'pants', '', 'inherit', 'open', 'closed', '', 'pants-2', '', '', '2016-05-03 22:27:56', '2016-05-03 19:27:56', '', 0, 'http://shop.local/wp-content/uploads/2016/05/pants-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2016-05-03 22:30:06', '2016-05-03 19:30:06', '', 'dress', '', 'inherit', 'open', 'closed', '', 'dress-2', '', '', '2016-05-03 22:30:16', '2016-05-03 19:30:16', '', 0, 'http://shop.local/wp-content/uploads/2016/05/dress-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2016-05-03 22:31:15', '2016-05-03 19:31:15', '', 'dress', '', 'inherit', 'open', 'closed', '', 'dress-3', '', '', '2016-05-03 22:31:24', '2016-05-03 19:31:24', '', 0, 'http://shop.local/wp-content/uploads/2016/05/dress-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2016-05-04 00:05:51', '2016-05-03 21:05:51', '', 'Магазин', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2016-05-04 00:05:51', '2016-05-03 21:05:51', '', 7, 'http://shop.local/7-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2016-05-04 01:00:18', '2016-05-03 22:00:18', '', 'dress', '', 'inherit', 'open', 'closed', '', '1', '', '', '2016-05-04 01:00:38', '2016-05-03 22:00:38', '', 0, 'http://shop.local/wp-content/uploads/2016/05/1.png', 0, 'attachment', 'image/png', 0),
(69, 1, '2016-05-04 01:00:38', '2016-05-03 22:00:38', 'http://shop.local/wp-content/uploads/2016/05/cropped-1.png', 'cropped-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-1-png', '', '', '2016-05-04 01:00:38', '2016-05-03 22:00:38', '', 0, 'http://shop.local/wp-content/uploads/2016/05/cropped-1.png', 0, 'attachment', 'image/png', 0),
(70, 1, '2016-05-04 01:01:05', '2016-05-03 22:01:05', '', 'dress', '', 'inherit', 'open', 'closed', '', '5', '', '', '2016-05-04 01:01:25', '2016-05-03 22:01:25', '', 0, 'http://shop.local/wp-content/uploads/2016/05/5.jpg', 0, 'attachment', 'image/jpeg', 0),
(71, 1, '2016-05-04 01:01:32', '2016-05-03 22:01:32', 'http://shop.local/wp-content/uploads/2016/05/cropped-5.jpg', 'cropped-5.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-5-jpg', '', '', '2016-05-04 01:01:32', '2016-05-03 22:01:32', '', 0, 'http://shop.local/wp-content/uploads/2016/05/cropped-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2016-05-04 01:10:52', '2016-05-03 22:10:52', '', 'dress', '', 'inherit', 'open', 'closed', '', '3', '', '', '2016-05-04 01:11:24', '2016-05-03 22:11:24', '', 0, 'http://shop.local/wp-content/uploads/2016/05/3.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2016-05-04 01:10:54', '2016-05-03 22:10:54', '', 'girl in dress', '', 'inherit', 'open', 'closed', '', '4', '', '', '2016-05-04 01:11:47', '2016-05-03 22:11:47', '', 0, 'http://shop.local/wp-content/uploads/2016/05/4.png', 0, 'attachment', 'image/png', 0),
(74, 1, '2016-05-04 01:10:58', '2016-05-03 22:10:58', '', 'crystall', '', 'inherit', 'open', 'closed', '', '6', '', '', '2016-05-04 01:12:11', '2016-05-03 22:12:11', '', 0, 'http://shop.local/wp-content/uploads/2016/05/6.png', 0, 'attachment', 'image/png', 0),
(75, 1, '2016-05-04 01:12:47', '2016-05-03 22:12:47', 'http://shop.local/wp-content/uploads/2016/05/cropped-4.png', 'cropped-4.png', '', 'inherit', 'open', 'closed', '', 'cropped-4-png', '', '', '2016-05-04 01:12:47', '2016-05-03 22:12:47', '', 0, 'http://shop.local/wp-content/uploads/2016/05/cropped-4.png', 0, 'attachment', 'image/png', 0),
(76, 1, '2016-05-04 02:33:15', '2016-05-03 23:33:15', '[woocommerce_my_account]', 'Мой аккаунт', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2016-05-04 02:33:15', '2016-05-03 23:33:15', '', 10, 'http://shop.local/10-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2016-05-05 18:11:09', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-05-05 18:11:09', '0000-00-00 00:00:00', '', 0, 'http://shop.local/?p=77', 0, 'post', '', 0),
(79, 1, '2016-05-05 20:47:14', '2016-05-05 17:47:14', '', 'Выйти', '', 'publish', 'closed', 'closed', '', '%d0%b2%d1%8b%d0%b9%d1%82%d0%b8', '', '', '2016-05-05 20:47:14', '2016-05-05 17:47:14', '', 0, 'http://shop.local/?p=79', 9, 'nav_menu_item', '', 0),
(80, 1, '2016-05-07 17:01:27', '2016-05-07 14:01:27', 'Утеплённые женские лосины выполнены из эластичного трикотажного материала. Cредняя посадка, пояс на резинке, функциональные задние карманы, оригинальные боковые детали сделанные из эко-кожи.', 'Женские лосины 1435', 'Утеплённые женские лосины выполнены из эластичного трикотажного материала.', 'publish', 'open', 'closed', '', 'womens-tights-1435', '', '', '2016-05-07 18:01:40', '2016-05-07 15:01:40', '', 0, 'http://shop.local/?post_type=product&#038;p=80', 0, 'product', '', 0),
(81, 1, '2016-05-07 16:58:04', '2016-05-07 13:58:04', '', 'pants', '', 'inherit', 'open', 'closed', '', 'img_1881-409x613', '', '', '2016-05-07 16:59:19', '2016-05-07 13:59:19', '', 80, 'http://shop.local/wp-content/uploads/2016/05/IMG_1881-409x613.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2016-05-07 17:10:32', '2016-05-07 14:10:32', 'Утеплённые женские лосины выполнены из эластичного трикотажного материала. Cредняя посадка, пояс на резинке, функциональные задние карманы, оригинальные боковые детали сделанные из экокожи.', 'ЖЕНСКИЕ ЛОСИНЫ БАЙКА 1435', 'Утеплённые женские лосины выполнены из эластичного трикотажного материала.', 'inherit', 'closed', 'closed', '', '80-autosave-v1', '', '', '2016-05-07 17:10:32', '2016-05-07 14:10:32', '', 80, 'http://shop.local/80-autosave-v1/', 0, 'revision', '', 0),
(83, 1, '2016-05-07 17:28:12', '2016-05-07 14:28:12', 'Очень удобная и  стильная модель лосин. Cредняя посадка, функциональные карманы сзади и имитация кармана спереди,декоративная нашивка на кармане,застежка на молнию.', 'ЖЕНСКИЕ БРЮКИ 1247', 'Очень удобная и  стильная модель лосин голубого цвета в крапинку. Материал: джинс-коттон.', 'inherit', 'closed', 'closed', '', '37-autosave-v1', '', '', '2016-05-07 17:28:12', '2016-05-07 14:28:12', '', 37, 'http://shop.local/37-autosave-v1/', 0, 'revision', '', 0),
(84, 1, '2016-05-07 17:37:01', '2016-05-07 14:37:01', 'Материал: 100% хлопок, сатин. Модная молодежная футболка на каждый день. Круглый вырез, короткие рукава.', 'ЖЕНСКАЯ ФУТБОЛКА 9811', 'Модная молодежная футболка на каждый день из хлопка.', 'inherit', 'closed', 'closed', '', '42-autosave-v1', '', '', '2016-05-07 17:37:01', '2016-05-07 14:37:01', '', 42, 'http://shop.local/42-autosave-v1/', 0, 'revision', '', 0),
(85, 1, '2016-05-07 17:41:45', '2016-05-07 14:41:45', 'Элегантное классическое платье из трикотажной ткани с рельефной вставкой из эко-кожи на талии и на манжетах. Приталенный силуэт с оригинальным V-образным вырезом, спереди на талии вставка из эко-кожи с золотой фурнитурой, имитирующая тонкий пояс, рукав 7/8, потайная молния на спинке, без подкладки.', 'Женское платье 1123', 'Элегантное классическое платье из костюмной ткани с рельефной вставкой из эко-кожи на талии и на манжетах.', 'inherit', 'closed', 'closed', '', '35-autosave-v1', '', '', '2016-05-07 17:41:45', '2016-05-07 14:41:45', '', 35, 'http://shop.local/35-autosave-v1/', 0, 'revision', '', 0),
(86, 1, '2016-05-07 17:45:00', '2016-05-07 14:45:00', 'Очень привлекательное вечернее платье из трикотажного жаккарда бирюзового цвета. Горловина с V-образным вырезом, короткий рукав, впереди пояс украшенный аппликацией с золотыми камушками.', 'Женское платье 4456', 'Вечернее платье из трикотажного жаккарда.', 'inherit', 'closed', 'closed', '', '33-autosave-v1', '', '', '2016-05-07 17:45:00', '2016-05-07 14:45:00', '', 33, 'http://shop.local/33-autosave-v1/', 0, 'revision', '', 0),
(87, 1, '2016-05-07 17:45:40', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2016-05-07 17:45:40', '0000-00-00 00:00:00', '', 0, 'http://shop.local/?post_type=product&p=87', 0, 'product', '', 0),
(88, 1, '2016-05-07 17:48:17', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2016-05-07 17:48:17', '0000-00-00 00:00:00', '', 0, 'http://shop.local/?post_type=product&p=88', 0, 'product', '', 0),
(89, 1, '2016-05-07 17:49:53', '2016-05-07 14:49:53', 'Трикотажное клетчатое платье из вискозы. Воротник выполнен из эко-кожи и дополнен стильной брошью, рукав ¾, потайная молния на спинке, без подкладки.', 'Женское платье', 'Модель приталенного фасона в красно-черную клетку.', 'inherit', 'closed', 'closed', '', '18-autosave-v1', '', '', '2016-05-07 17:49:53', '2016-05-07 14:49:53', '', 18, 'http://shop.local/18-autosave-v1/', 0, 'revision', '', 0),
(90, 1, '2016-05-07 17:50:46', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2016-05-07 17:50:46', '0000-00-00 00:00:00', '', 0, 'http://shop.local/?post_type=product&p=90', 0, 'product', '', 0),
(91, 1, '2016-05-07 18:06:22', '2016-05-07 15:06:22', 'Приталенный силуэт с оригинальным V-образным вырезом, спереди на талии вставка из эко-кожи с золотой фурнитурой, имитирующая тонкий пояс, рукав 7/8, потайная молния на спинке, без подкладки. Материал: костюмная ткань.', 'Женское платье 0530', 'Элегантное классическое платье с рельефной вставкой из эко-кожи на талии и на манжетах.', 'publish', 'open', 'closed', '', 'womens-dress-0530', '', '', '2016-05-07 18:21:07', '2016-05-07 15:21:07', '', 0, 'http://shop.local/?post_type=product&#038;p=91', 0, 'product', '', 0),
(92, 1, '2016-05-07 18:05:45', '2016-05-07 15:05:45', '', 'dress', '', 'inherit', 'open', 'closed', '', 'img_0361-409x613', '', '', '2016-05-07 18:06:14', '2016-05-07 15:06:14', '', 91, 'http://shop.local/wp-content/uploads/2016/05/IMG_0361-409x613.jpg', 0, 'attachment', 'image/jpeg', 0),
(93, 1, '2016-05-07 18:13:42', '2016-05-07 15:13:42', 'Материал: сатин\r\n\r\nСтильная блуза прямого силуэта белого цвета  с синими пальмами.  Детали: спинка удлиненная, рукава 3/4, на груди серебренная брошь.', 'Женская блуза 4566', 'Стильная блуза прямого силуэта из сатина белого цвета  с синими пальмами.', 'publish', 'open', 'closed', '', 'womens-blouse-4566', '', '', '2016-05-07 18:13:42', '2016-05-07 15:13:42', '', 0, 'http://shop.local/?post_type=product&#038;p=93', 0, 'product', '', 0),
(94, 1, '2016-05-07 18:10:02', '2016-05-07 15:10:02', '', 'blouse', '', 'inherit', 'open', 'closed', '', 'img_3357-409x613', '', '', '2016-05-07 18:10:56', '2016-05-07 15:10:56', '', 93, 'http://shop.local/wp-content/uploads/2016/05/IMG_3357-409x613.jpg', 0, 'attachment', 'image/jpeg', 0),
(95, 1, '2016-05-07 18:19:14', '2016-05-07 15:19:14', 'Модное платье из жаккарда. Детали: приталенного кроя, кройма изделия обработана крылышками,на груди золотая брошь, потайная молния на спинке.', 'Женское платье 2889', 'Модное платье из жаккарда приталенного кроя.', 'publish', 'open', 'closed', '', 'womens-dress-2889', '', '', '2016-05-07 18:19:14', '2016-05-07 15:19:14', '', 0, 'http://shop.local/?post_type=product&#038;p=95', 0, 'product', '', 0),
(96, 1, '2016-05-07 18:18:42', '2016-05-07 15:18:42', '', 'dress', '', 'inherit', 'open', 'closed', '', 'img_9978-1-409x613', '', '', '2016-05-07 18:19:04', '2016-05-07 15:19:04', '', 95, 'http://shop.local/wp-content/uploads/2016/05/IMG_9978-1-409x613.jpg', 0, 'attachment', 'image/jpeg', 0) ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(4, 2, 0),
(4, 6, 0),
(4, 7, 0),
(4, 8, 0),
(4, 9, 0),
(4, 11, 0),
(12, 10, 0),
(14, 10, 0),
(15, 10, 0),
(16, 10, 0),
(18, 2, 0),
(18, 6, 0),
(18, 11, 0),
(18, 14, 0),
(18, 15, 0),
(18, 16, 0),
(18, 17, 0),
(18, 18, 0),
(31, 2, 0),
(31, 6, 0),
(31, 11, 0),
(31, 18, 0),
(31, 19, 0),
(32, 2, 0),
(32, 6, 0),
(32, 8, 0),
(32, 9, 0),
(32, 11, 0),
(32, 18, 0),
(32, 20, 0),
(33, 2, 0),
(33, 6, 0),
(33, 7, 0),
(33, 8, 0),
(33, 11, 0),
(33, 16, 0),
(33, 18, 0),
(35, 2, 0),
(35, 6, 0),
(35, 8, 0),
(35, 11, 0),
(35, 16, 0),
(35, 18, 0),
(37, 2, 0),
(37, 13, 0),
(37, 21, 0),
(37, 22, 0),
(37, 23, 0),
(37, 24, 0),
(37, 25, 0),
(40, 2, 0),
(40, 13, 0),
(40, 21, 0),
(40, 23, 0),
(40, 24, 0),
(40, 25, 0),
(40, 26, 0),
(42, 2, 0),
(42, 12, 0),
(42, 19, 0),
(42, 27, 0),
(42, 28, 0),
(44, 10, 0),
(45, 10, 0),
(46, 10, 0),
(55, 10, 0),
(79, 10, 0),
(80, 2, 0),
(80, 13, 0),
(80, 16, 0),
(80, 17, 0),
(80, 22, 0),
(80, 30, 0),
(91, 2, 0),
(91, 6, 0),
(91, 8, 0),
(91, 11, 0),
(91, 18, 0),
(91, 30, 0),
(91, 31, 0),
(93, 2, 0),
(93, 12, 0),
(93, 32, 0),
(93, 33, 0),
(95, 2, 0),
(95, 6, 0),
(95, 11, 0),
(95, 18, 0),
(95, 19, 0),
(95, 34, 0) ;

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
  `taxonomy` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 13),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_tag', '', 0, 8),
(7, 7, 'product_tag', '', 0, 2),
(8, 8, 'product_tag', '', 0, 5),
(9, 9, 'product_tag', '', 0, 2),
(10, 10, 'nav_menu', '', 0, 9),
(11, 11, 'product_cat', '', 0, 8),
(12, 12, 'product_cat', '', 0, 2),
(13, 13, 'product_cat', '', 0, 3),
(14, 14, 'product_tag', '', 0, 1),
(15, 15, 'product_tag', '', 0, 1),
(16, 16, 'product_tag', '', 0, 4),
(17, 17, 'product_tag', '', 0, 2),
(18, 18, 'product_tag', '', 0, 7),
(19, 19, 'product_tag', '', 0, 3),
(20, 20, 'product_tag', '', 0, 1),
(21, 21, 'product_tag', '', 0, 2),
(22, 22, 'product_tag', '', 0, 2),
(23, 23, 'product_tag', '', 0, 2),
(24, 24, 'product_tag', '', 0, 2),
(25, 25, 'product_tag', '', 0, 2),
(26, 26, 'product_tag', '', 0, 1),
(27, 27, 'product_tag', '', 0, 1),
(28, 28, 'product_tag', '', 0, 1),
(29, 29, 'product_tag', '', 0, 0),
(30, 30, 'product_tag', '', 0, 2),
(31, 31, 'product_tag', '', 0, 1),
(32, 32, 'product_tag', '', 0, 1),
(33, 33, 'product_tag', '', 0, 1),
(34, 34, 'product_tag', '', 0, 1) ;

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
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


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
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'платье', '%d0%bf%d0%bb%d0%b0%d1%82%d1%8c%d0%b5', 0),
(7, 'бирюзовое', '%d0%b1%d0%b8%d1%80%d1%8e%d0%b7%d0%be%d0%b2%d0%be%d0%b5', 0),
(8, 'пояс', '%d0%bf%d0%be%d1%8f%d1%81', 0),
(9, 'вискоза', '%d0%b2%d0%b8%d1%81%d0%ba%d0%be%d0%b7%d0%b0', 0),
(10, 'Main menu', 'main-menu', 0),
(11, 'Платья', 'dress', 0),
(12, 'Блузы', 'blouses', 0),
(13, 'Брюки', 'pants', 0),
(14, 'клетчатое', '%d0%ba%d0%bb%d0%b5%d1%82%d1%87%d0%b0%d1%82%d0%be%d0%b5', 0),
(15, 'клетка', '%d0%ba%d0%bb%d0%b5%d1%82%d0%ba%d0%b0', 0),
(16, 'трикотаж', '%d1%82%d1%80%d0%b8%d0%ba%d0%be%d1%82%d0%b0%d0%b6', 0),
(17, 'трикотажное', '%d1%82%d1%80%d0%b8%d0%ba%d0%be%d1%82%d0%b0%d0%b6%d0%bd%d0%be%d0%b5', 0),
(18, 'приталенное', '%d0%bf%d1%80%d0%b8%d1%82%d0%b0%d0%bb%d0%b5%d0%bd%d0%bd%d0%be%d0%b5', 0),
(19, 'летнее', '%d0%bb%d0%b5%d1%82%d0%bd%d0%b5%d0%b5', 0),
(20, 'бордовое', '%d0%b1%d0%be%d1%80%d0%b4%d0%be%d0%b2%d0%be%d0%b5', 0),
(21, 'брюки', '%d0%b1%d1%80%d1%8e%d0%ba%d0%b8', 0),
(22, 'лосины', '%d0%bb%d0%be%d1%81%d0%b8%d0%bd%d1%8b', 0),
(23, 'джинс', '%d0%b4%d0%b6%d0%b8%d0%bd%d1%81', 0),
(24, 'коттон', '%d0%ba%d0%be%d1%82%d1%82%d0%be%d0%bd', 0),
(25, 'джинс-коттон', '%d0%b4%d0%b6%d0%b8%d0%bd%d1%81-%d0%ba%d0%be%d1%82%d1%82%d0%be%d0%bd', 0),
(26, 'ремень', '%d1%80%d0%b5%d0%bc%d0%b5%d0%bd%d1%8c', 0),
(27, 'хлопок', '%d1%85%d0%bb%d0%be%d0%bf%d0%be%d0%ba', 0),
(28, 'футболка', '%d1%84%d1%83%d1%82%d0%b1%d0%be%d0%bb%d0%ba%d0%b0', 0),
(29, 'экокожа', '%d1%8d%d0%ba%d0%be%d0%ba%d0%be%d0%b6%d0%b0', 0),
(30, 'эко-кожа', '%d1%8d%d0%ba%d0%be-%d0%ba%d0%be%d0%b6%d0%b0', 0),
(31, 'классическое', '%d0%ba%d0%bb%d0%b0%d1%81%d1%81%d0%b8%d1%87%d0%b5%d1%81%d0%ba%d0%be%d0%b5', 0),
(32, 'сатин', '%d1%81%d0%b0%d1%82%d0%b8%d0%bd', 0),
(33, 'блуза', '%d0%b1%d0%bb%d1%83%d0%b7%d0%b0', 0),
(34, 'жаккард', '%d0%b6%d0%b0%d0%ba%d0%ba%d0%b0%d1%80%d0%b4', 0) ;

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
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'aioseop_menu_220,aioseop_welcome_220'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:5:{s:64:"aa94f1b5849f16aa6d53cfcf24b1225b8544cdf599cdb7e7fa54023b5261fbfa";a:4:{s:10:"expiration";i:1462633857;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:108:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36";s:5:"login";i:1462461057;}s:64:"a4cf3c7ba462e59e2b195db71f1f9860af7fc9a54478689f98a996500b302f24";a:4:{s:10:"expiration";i:1462633858;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:108:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36";s:5:"login";i:1462461058;}s:64:"c036df8d8be35f174730c46ae0b9a141beb3ed7d4ee0728f8dc7aaea37b452b2";a:4:{s:10:"expiration";i:1462644659;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36";s:5:"login";i:1462471859;}s:64:"70d2ac84836852674944b85f06bd75cc66da80268186f5f7fdacab1a1d76c547";a:4:{s:10:"expiration";i:1462646071;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:108:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36";s:5:"login";i:1462473271;}s:64:"f7bd155d208f7f142b32f32480f0f430385e09b18a8909915bd13744ca7dfd6c";a:4:{s:10:"expiration";i:1462801534;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:108:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36";s:5:"login";i:1462628734;}}'),
(15, 1, 'wp_user-settings', 'editor=tinymce&libraryContent=browse'),
(16, 1, 'wp_user-settings-time', '1462374877'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '77'),
(18, 1, 'manageedit-shop_ordercolumnshidden', 'a:1:{i:0;s:15:"billing_address";}'),
(19, 1, '_woocommerce_persistent_cart', 'a:1:{s:4:"cart";a:0:{}}'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:5:{i:0;s:30:"woocommerce_endpoints_nav_link";i:1;s:21:"add-post-type-product";i:2;s:12:"add-post_tag";i:3;s:15:"add-product_cat";i:4;s:15:"add-product_tag";}'),
(22, 1, 'nav_menu_recently_edited', '10'),
(23, 1, 'meta-box-order_dashboard', 'a:4:{s:6:"normal";s:117:"dashboard_right_now,dashboard_activity,gadwp-widget,woocommerce_dashboard_recent_reviews,woocommerce_dashboard_status";s:4:"side";s:39:"dashboard_quick_press,dashboard_primary";s:7:"column3";s:0:"";s:7:"column4";s:0:"";}'),
(24, 1, 'billing_first_name', ''),
(25, 1, 'billing_last_name', ''),
(26, 1, 'billing_company', ''),
(27, 1, 'billing_address_1', ''),
(28, 1, 'billing_address_2', ''),
(29, 1, 'billing_city', ''),
(30, 1, 'billing_postcode', ''),
(31, 1, 'billing_country', ''),
(32, 1, 'billing_state', ''),
(33, 1, 'billing_phone', ''),
(34, 1, 'billing_email', ''),
(35, 1, 'shipping_first_name', ''),
(36, 1, 'shipping_last_name', ''),
(37, 1, 'shipping_company', ''),
(38, 1, 'shipping_address_1', ''),
(39, 1, 'shipping_address_2', ''),
(40, 1, 'shipping_city', ''),
(41, 1, 'shipping_postcode', ''),
(42, 1, 'shipping_country', ''),
(43, 1, 'shipping_state', ''),
(44, 1, 'googleplus', ''),
(45, 1, 'wppb_pms_cross_promo_dismiss_notification', 'true'),
(46, 1, 'closedpostboxes_profile-builder_page_manage-fields', 'a:0:{}'),
(47, 1, 'metaboxhidden_profile-builder_page_manage-fields', 'a:0:{}'),
(48, 2, 'nickname', 'pshechko_pshechko'),
(49, 2, 'first_name', 'Dmirty'),
(50, 2, 'last_name', 'Duplyka'),
(51, 2, 'description', ''),
(52, 2, 'rich_editing', 'true'),
(53, 2, 'comment_shortcuts', 'false'),
(54, 2, 'admin_color', 'fresh'),
(55, 2, 'use_ssl', '0'),
(56, 2, 'show_admin_bar_front', 'true'),
(57, 2, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(58, 2, 'wp_user_level', '0'),
(60, 2, 'manageedit-shop_ordercolumnshidden', 'a:1:{i:0;s:15:"billing_address";}'),
(61, 2, '_woocommerce_persistent_cart', 'a:1:{s:4:"cart";a:1:{s:32:"d645920e395fedad7bbbed0eca3fe2e0";a:9:{s:10:"product_id";i:40;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:10:"line_total";d:220;s:8:"line_tax";i:0;s:13:"line_subtotal";i:220;s:17:"line_subtotal_tax";i:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}}}') ;

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
  `user_login` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$Bd9qsyZtq3ZqnXFCkUwritM7J1nFOP0', 'admin', 'popkaslonika@gmail.com', '', '2016-04-17 16:12:00', '', 0, 'admin'),
(2, 'pshechko', '$P$BHEroBVAllD9K3bjCalVBhFNxCmqxX1', 'pshechko', 'pshechko@outlook.com', '', '2016-05-01 19:09:47', '', 0, 'Dmirty Duplyka') ;

#
# End of data contents of table `wp_users`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_api_keys`
#

DROP TABLE IF EXISTS `wp_woocommerce_api_keys`;


#
# Table structure of table `wp_woocommerce_api_keys`
#

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `permissions` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8_unicode_ci,
  `truncated_key` char(7) COLLATE utf8_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL,
  PRIMARY KEY (`key_id`),
  KEY `consumer_key` (`consumer_key`),
  KEY `consumer_secret` (`consumer_secret`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_woocommerce_api_keys`
#

#
# End of data contents of table `wp_woocommerce_api_keys`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_attribute_taxonomies`
#

DROP TABLE IF EXISTS `wp_woocommerce_attribute_taxonomies`;


#
# Table structure of table `wp_woocommerce_attribute_taxonomies`
#

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `attribute_label` longtext COLLATE utf8_unicode_ci,
  `attribute_type` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `attribute_orderby` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`attribute_id`),
  KEY `attribute_name` (`attribute_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_woocommerce_attribute_taxonomies`
#

#
# End of data contents of table `wp_woocommerce_attribute_taxonomies`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_downloadable_product_permissions`
#

DROP TABLE IF EXISTS `wp_woocommerce_downloadable_product_permissions`;


#
# Table structure of table `wp_woocommerce_downloadable_product_permissions`
#

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `download_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`permission_id`),
  KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`,`download_id`),
  KEY `download_order_product` (`download_id`,`order_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_woocommerce_downloadable_product_permissions`
#

#
# End of data contents of table `wp_woocommerce_downloadable_product_permissions`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_order_itemmeta`
#

DROP TABLE IF EXISTS `wp_woocommerce_order_itemmeta`;


#
# Table structure of table `wp_woocommerce_order_itemmeta`
#

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_woocommerce_order_itemmeta`
#

#
# End of data contents of table `wp_woocommerce_order_itemmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_order_items`
#

DROP TABLE IF EXISTS `wp_woocommerce_order_items`;


#
# Table structure of table `wp_woocommerce_order_items`
#

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_item_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_woocommerce_order_items`
#

#
# End of data contents of table `wp_woocommerce_order_items`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_sessions`
#

DROP TABLE IF EXISTS `wp_woocommerce_sessions`;


#
# Table structure of table `wp_woocommerce_sessions`
#

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `session_key` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `session_expiry` bigint(20) NOT NULL,
  PRIMARY KEY (`session_key`),
  UNIQUE KEY `session_id` (`session_id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_woocommerce_sessions`
#
INSERT INTO `wp_woocommerce_sessions` ( `session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(95, '1', 'a:18:{s:4:"cart";s:6:"a:0:{}";s:15:"applied_coupons";s:6:"a:0:{}";s:23:"coupon_discount_amounts";s:6:"a:0:{}";s:27:"coupon_discount_tax_amounts";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";s:19:"cart_contents_total";i:0;s:5:"total";i:0;s:8:"subtotal";i:0;s:15:"subtotal_ex_tax";i:0;s:9:"tax_total";i:0;s:5:"taxes";s:6:"a:0:{}";s:14:"shipping_taxes";s:6:"a:0:{}";s:13:"discount_cart";i:0;s:17:"discount_cart_tax";i:0;s:14:"shipping_total";i:0;s:18:"shipping_tax_total";i:0;s:9:"fee_total";i:0;s:4:"fees";s:6:"a:0:{}";}', 1462646072) ;

#
# End of data contents of table `wp_woocommerce_sessions`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_tax_rate_locations`
#

DROP TABLE IF EXISTS `wp_woocommerce_tax_rate_locations`;


#
# Table structure of table `wp_woocommerce_tax_rate_locations`
#

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `location_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) NOT NULL,
  `location_type` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `location_type` (`location_type`),
  KEY `location_type_code` (`location_type`,`location_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_woocommerce_tax_rate_locations`
#

#
# End of data contents of table `wp_woocommerce_tax_rate_locations`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_tax_rates`
#

DROP TABLE IF EXISTS `wp_woocommerce_tax_rates`;


#
# Table structure of table `wp_woocommerce_tax_rates`
#

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tax_rate_country` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_id`),
  KEY `tax_rate_country` (`tax_rate_country`),
  KEY `tax_rate_state` (`tax_rate_state`),
  KEY `tax_rate_class` (`tax_rate_class`),
  KEY `tax_rate_priority` (`tax_rate_priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_woocommerce_tax_rates`
#

#
# End of data contents of table `wp_woocommerce_tax_rates`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_termmeta`
#

DROP TABLE IF EXISTS `wp_woocommerce_termmeta`;


#
# Table structure of table `wp_woocommerce_termmeta`
#

CREATE TABLE `wp_woocommerce_termmeta` (
  `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `woocommerce_term_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `woocommerce_term_id` (`woocommerce_term_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_woocommerce_termmeta`
#
INSERT INTO `wp_woocommerce_termmeta` ( `meta_id`, `woocommerce_term_id`, `meta_key`, `meta_value`) VALUES
(1, 6, 'product_count_product_tag', '8'),
(2, 7, 'product_count_product_tag', '2'),
(3, 8, 'product_count_product_tag', '5'),
(4, 9, 'product_count_product_tag', '2'),
(5, 11, 'order', '0'),
(6, 11, 'display_type', ''),
(7, 11, 'thumbnail_id', '66'),
(8, 12, 'order', '0'),
(9, 12, 'display_type', ''),
(10, 12, 'thumbnail_id', '61'),
(11, 13, 'order', '0'),
(12, 13, 'display_type', ''),
(13, 13, 'thumbnail_id', '64'),
(14, 11, 'product_count_product_cat', '8'),
(15, 14, 'product_count_product_tag', '1'),
(16, 15, 'product_count_product_tag', '1'),
(17, 16, 'product_count_product_tag', '4'),
(18, 17, 'product_count_product_tag', '2'),
(19, 18, 'product_count_product_tag', '7'),
(20, 19, 'product_count_product_tag', '3'),
(21, 20, 'product_count_product_tag', '1'),
(22, 13, 'product_count_product_cat', '3'),
(23, 21, 'product_count_product_tag', '2'),
(24, 22, 'product_count_product_tag', '2'),
(25, 23, 'product_count_product_tag', '2'),
(26, 24, 'product_count_product_tag', '2'),
(27, 25, 'product_count_product_tag', '2'),
(28, 26, 'product_count_product_tag', '1'),
(29, 12, 'product_count_product_cat', '2'),
(30, 27, 'product_count_product_tag', '1'),
(31, 28, 'product_count_product_tag', '1'),
(32, 29, 'product_count_product_tag', '0'),
(33, 30, 'product_count_product_tag', '2'),
(34, 31, 'product_count_product_tag', '1'),
(35, 32, 'product_count_product_tag', '1'),
(36, 33, 'product_count_product_tag', '1'),
(37, 34, 'product_count_product_tag', '1') ;

#
# End of data contents of table `wp_woocommerce_termmeta`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

