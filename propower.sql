-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 11, 2022 at 02:05 AM
-- Server version: 5.6.51-cll-lve
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `propower`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2022-05-14 15:39:45', '2022-05-14 15:39:45', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://pinkwebsolutionz.com/dev/iisre', 'yes'),
(2, 'home', 'http://pinkwebsolutionz.com/dev/iisre', 'yes'),
(3, 'blogname', 'IISRE', 'yes'),
(4, 'blogdescription', 'Institute for Interdisciplinary Sustainability Research and Education', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'pinkwebsolutionz@gmail.com', 'yes'),
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
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:225:{s:9:\"slider/?$\";s:26:\"index.php?post_type=slider\";s:39:\"slider/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=slider&feed=$matches[1]\";s:34:\"slider/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=slider&feed=$matches[1]\";s:26:\"slider/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=slider&paged=$matches[1]\";s:7:\"team/?$\";s:24:\"index.php?post_type=team\";s:37:\"team/feed/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=team&feed=$matches[1]\";s:32:\"team/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=team&feed=$matches[1]\";s:24:\"team/page/([0-9]{1,})/?$\";s:42:\"index.php?post_type=team&paged=$matches[1]\";s:10:\"service/?$\";s:27:\"index.php?post_type=service\";s:40:\"service/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=service&feed=$matches[1]\";s:35:\"service/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=service&feed=$matches[1]\";s:27:\"service/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=service&paged=$matches[1]\";s:11:\"research/?$\";s:28:\"index.php?post_type=research\";s:41:\"research/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=research&feed=$matches[1]\";s:36:\"research/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=research&feed=$matches[1]\";s:28:\"research/page/([0-9]{1,})/?$\";s:46:\"index.php?post_type=research&paged=$matches[1]\";s:10:\"gallery/?$\";s:27:\"index.php?post_type=gallery\";s:40:\"gallery/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=gallery&feed=$matches[1]\";s:35:\"gallery/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=gallery&feed=$matches[1]\";s:27:\"gallery/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=gallery&paged=$matches[1]\";s:7:\"news/?$\";s:24:\"index.php?post_type=news\";s:37:\"news/feed/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=news&feed=$matches[1]\";s:32:\"news/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=news&feed=$matches[1]\";s:24:\"news/page/([0-9]{1,})/?$\";s:42:\"index.php?post_type=news&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:34:\"slider/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"slider/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"slider/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"slider/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"slider/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"slider/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"slider/([^/]+)/embed/?$\";s:39:\"index.php?slider=$matches[1]&embed=true\";s:27:\"slider/([^/]+)/trackback/?$\";s:33:\"index.php?slider=$matches[1]&tb=1\";s:47:\"slider/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?slider=$matches[1]&feed=$matches[2]\";s:42:\"slider/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?slider=$matches[1]&feed=$matches[2]\";s:35:\"slider/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?slider=$matches[1]&paged=$matches[2]\";s:42:\"slider/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?slider=$matches[1]&cpage=$matches[2]\";s:31:\"slider/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?slider=$matches[1]&page=$matches[2]\";s:23:\"slider/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"slider/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"slider/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"slider/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"slider/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"slider/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"team/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"team/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"team/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"team/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"team/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"team/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"team/([^/]+)/embed/?$\";s:37:\"index.php?team=$matches[1]&embed=true\";s:25:\"team/([^/]+)/trackback/?$\";s:31:\"index.php?team=$matches[1]&tb=1\";s:45:\"team/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?team=$matches[1]&feed=$matches[2]\";s:40:\"team/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?team=$matches[1]&feed=$matches[2]\";s:33:\"team/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?team=$matches[1]&paged=$matches[2]\";s:40:\"team/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?team=$matches[1]&cpage=$matches[2]\";s:29:\"team/([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?team=$matches[1]&page=$matches[2]\";s:21:\"team/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:31:\"team/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:51:\"team/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"team/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"team/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:27:\"team/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"service/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"service/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"service/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"service/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"service/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"service/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"service/([^/]+)/embed/?$\";s:40:\"index.php?service=$matches[1]&embed=true\";s:28:\"service/([^/]+)/trackback/?$\";s:34:\"index.php?service=$matches[1]&tb=1\";s:48:\"service/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?service=$matches[1]&feed=$matches[2]\";s:43:\"service/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?service=$matches[1]&feed=$matches[2]\";s:36:\"service/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?service=$matches[1]&paged=$matches[2]\";s:43:\"service/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?service=$matches[1]&cpage=$matches[2]\";s:32:\"service/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?service=$matches[1]&page=$matches[2]\";s:24:\"service/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"service/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"service/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"service/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"service/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"service/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"research/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"research/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"research/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"research/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"research/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"research/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"research/([^/]+)/embed/?$\";s:41:\"index.php?research=$matches[1]&embed=true\";s:29:\"research/([^/]+)/trackback/?$\";s:35:\"index.php?research=$matches[1]&tb=1\";s:49:\"research/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?research=$matches[1]&feed=$matches[2]\";s:44:\"research/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?research=$matches[1]&feed=$matches[2]\";s:37:\"research/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?research=$matches[1]&paged=$matches[2]\";s:44:\"research/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?research=$matches[1]&cpage=$matches[2]\";s:33:\"research/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?research=$matches[1]&page=$matches[2]\";s:25:\"research/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"research/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"research/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"research/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"research/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"research/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"gallery/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"gallery/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"gallery/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"gallery/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"gallery/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"gallery/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"gallery/([^/]+)/embed/?$\";s:40:\"index.php?gallery=$matches[1]&embed=true\";s:28:\"gallery/([^/]+)/trackback/?$\";s:34:\"index.php?gallery=$matches[1]&tb=1\";s:48:\"gallery/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?gallery=$matches[1]&feed=$matches[2]\";s:43:\"gallery/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?gallery=$matches[1]&feed=$matches[2]\";s:36:\"gallery/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?gallery=$matches[1]&paged=$matches[2]\";s:43:\"gallery/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?gallery=$matches[1]&cpage=$matches[2]\";s:32:\"gallery/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?gallery=$matches[1]&page=$matches[2]\";s:24:\"gallery/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"gallery/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"gallery/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"gallery/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"gallery/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"gallery/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"news/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"news/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"news/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"news/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"news/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"news/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"news/([^/]+)/embed/?$\";s:37:\"index.php?news=$matches[1]&embed=true\";s:25:\"news/([^/]+)/trackback/?$\";s:31:\"index.php?news=$matches[1]&tb=1\";s:45:\"news/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?news=$matches[1]&feed=$matches[2]\";s:40:\"news/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?news=$matches[1]&feed=$matches[2]\";s:33:\"news/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?news=$matches[1]&paged=$matches[2]\";s:40:\"news/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?news=$matches[1]&cpage=$matches[2]\";s:29:\"news/([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?news=$matches[1]&page=$matches[2]\";s:21:\"news/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:31:\"news/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:51:\"news/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"news/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"news/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:27:\"news/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=71&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:78:\"/home/priyanka0900/public_html/dev/iisre/wp-content/themes/iisre/community.php\";i:2;s:73:\"/home/priyanka0900/public_html/dev/iisre/wp-content/themes/iisre/blog.php\";i:3;s:74:\"/home/priyanka0900/public_html/dev/iisre/wp-content/themes/iisre/style.css\";i:4;s:75:\"/home/priyanka0900/public_html/dev/iisre/wp-content/themes/iisre/header.php\";i:5;s:79:\"/home/priyanka0900/public_html/dev/iisre/wp-content/themes/iisre/news-event.php\";}', 'no'),
(40, 'template', 'iisre', 'yes'),
(41, 'stylesheet', 'iisre', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '71', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:19:\"primary-widget-area\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:21:\"secondary-widget-area\";a:0:{}s:24:\"first-footer-widget-area\";a:0:{}s:25:\"second-footer-widget-area\";a:0:{}s:24:\"third-footer-widget-area\";a:0:{}s:25:\"fourth-footer-widget-area\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'cron', 'a:5:{i:1654249191;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1654270791;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1654270827;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1654270840;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(112, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1652542959;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(122, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1654246287;s:7:\"checked\";a:1:{s:5:\"iisre\";s:0:\"\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(127, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:11:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.0.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.0.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-6.0-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.0-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"6.0\";s:7:\"version\";s:3:\"6.0\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.0.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.0.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-6.0-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.0-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"6.0\";s:7:\"version\";s:3:\"6.0\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.9.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.9.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.9.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.9.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.9.3\";s:7:\"version\";s:5:\"5.9.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.9.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.9.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.9.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.9.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.9.2\";s:7:\"version\";s:5:\"5.9.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:4;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.8.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.8.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.8.4\";s:7:\"version\";s:5:\"5.8.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:5;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.6.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.7.6-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.7.6-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.7.6\";s:7:\"version\";s:5:\"5.7.6\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:6;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.6.8.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.6.8.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.6.8-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.6.8-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.6.8\";s:7:\"version\";s:5:\"5.6.8\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:7;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.9.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.9.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.9-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.9-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.5.9\";s:7:\"version\";s:5:\"5.5.9\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:8;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/wordpress-5.4.10.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/wordpress-5.4.10.zip\";s:10:\"no_content\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.10-no-content.zip\";s:11:\"new_bundled\";s:72:\"https://downloads.wordpress.org/release/wordpress-5.4.10-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:6:\"5.4.10\";s:7:\"version\";s:6:\"5.4.10\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:9;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/wordpress-5.3.12.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/wordpress-5.3.12.zip\";s:10:\"no_content\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.12-no-content.zip\";s:11:\"new_bundled\";s:72:\"https://downloads.wordpress.org/release/wordpress-5.3.12-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:6:\"5.3.12\";s:7:\"version\";s:6:\"5.3.12\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:10;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/wordpress-5.2.15.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/wordpress-5.2.15.zip\";s:10:\"no_content\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.15-no-content.zip\";s:11:\"new_bundled\";s:72:\"https://downloads.wordpress.org/release/wordpress-5.2.15-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:6:\"5.2.15\";s:7:\"version\";s:6:\"5.2.15\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1654246285;s:15:\"version_checked\";s:6:\"5.1.13\";s:12:\"translations\";a:0:{}}', 'no'),
(128, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:26:\"pinkwebsolutionz@gmail.com\";s:7:\"version\";s:6:\"5.1.13\";s:9:\"timestamp\";i:1652542853;}', 'no'),
(130, 'can_compress_scripts', '1', 'no'),
(131, 'current_theme', 'IISRE', 'yes'),
(132, 'theme_mods_iisre', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(133, 'theme_switched', '', 'yes'),
(139, 'twitter_url', '#', 'yes'),
(140, 'facebook_url', '#', 'yes'),
(141, 'instragram_url', '#', 'yes'),
(142, 'homeourapproch', 'Our sustainability research is based on inclusive collaborative approach, which allows us to determine, understand and create sustainable solutions to the cumulative effect from social activities and biophysical processes. We tend to adopt a holistic approach to address disconnect between land use, water, and the complex human-environmental interface.', 'yes'),
(143, 'homewhoweare', 'We are a vibrant team of senior and junior scientists, sociologists, cartographers, engineers, consultants, academicians and researchers. Our works are recognized by [name of the institutions] and many of our representatives are associated to highly ranked organizations such as University of Kent, Freie Universitat Berlin, University of Calcutta [add more] to name a few.', 'yes'),
(144, 'homewhyus', '<li style=\"font-weight: bold;\">Our internationally recognized unique approach is based on a combined effort of advanced Geospatial Technology and Participatory Data Generation and Processing. </li>\r\n                                       <li style=\"font-weight: bold;\">We create new knowledge and sustainable solutions through our integrated and interdisciplinary methods, i.e. through ecosystem modelling and sustainable land use. </li>\r\n                                       <li style=\"font-weight: bold;\">A holistic and bottom - up approach that enables community mobilization in crucial areas. </li>\r\n                                       <li style=\"font-weight: bold;\">Stakeholder engagement, prioritizing local knowledge base and provide marginalized population an opportunity to actively participate. </li>', 'yes'),
(145, 'homeremotesensing', 'We explore a wide range of issues related to Sustainability such as climate change, water security, land use, resource utilization, food and energy, conservation, urban and rural communities, transport, social responsibilities of business and so on. We specialise in collaborative, participatory and action-oriented research that brings different stakeholders together to create a lasting change.', 'yes'),
(146, 'email', 'info@iisre.co.in', 'yes'),
(147, 'phone', '+91 00000 00000', 'yes'),
(148, 'hour', 'Mon-Fri: 8am – 7pm', 'yes'),
(149, 'address', 'Brooklyn, New York, USA', 'yes'),
(150, 'footerabout', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'yes'),
(183, 'homeourvision', '<p style=\"text-transform: uppercase;\">How can we meet the growing demand for electricity while protecting our climate & make planet a better place?</p>\r\n                                    <ul class=\"list-unstyled advantages-list\">\r\n                                       <li style=\"text-transform: uppercase;\">To undertake world-leading interdisciplinary research and education.</li>\r\n                                       <li style=\"text-transform: uppercase;\">To create new research and knowledge about sustainability issues covering a wide range of biophysical and social dimensions of water-environmental-social security and justice.</li>\r\n                                       <li style=\"text-transform: uppercase;\">To be part of ensuring that societies can enjoy a water-secured sustainable future for all through collaborative knowledge driven practices and research. </li>\r\n                                       <li style=\"text-transform: uppercase;\">To ensure minimal wastage of water and other natural resources and look for cost reducing solutions for different players. </li>\r\n                                    </ul>', 'yes'),
(184, 'homeourmision', '<p style=\"text-transform: uppercase;\">How can we meet the growing demand for electricity while protecting our climate & make planet a better place?</p>\r\n                                    <ul class=\"list-unstyled advantages-list\">\r\n                                       <li style=\"text-transform: uppercase;\">To create a platform for interdisciplinary collaboration by integrating areas ranging from engineering to environment and social sciences.</li>\r\n                                       <li style=\"text-transform: uppercase;\">To recognize the societal dimensions of water security, human impacts on the environment, and the linkages and feedbacks between atmosphere, land and water systems. </li>\r\n                                       <li style=\"text-transform: uppercase;\">To integrate different types of expertise and knowledge by integrating not only scientific knowledge, but also experiential and practical experiences coming out of local communities.</li>\r\n                                       <li style=\"text-transform: uppercase;\">To address and help create stronger and more sustainable local, regional, and global water security agendas.</li>\r\n                                       <li style=\"text-transform: uppercase;\">To Grow partnerships with key stakeholders to translate science into policy</li>\r\n                                       <li style=\"text-transform: uppercase;\">To transfer our unique interdisciplinary methods</li>\r\n                                       <li style=\"text-transform: uppercase;\">To local/regional/national governments and authorities. Including: Remote Sensing and Geo-information (Geospatial) Technology and its application to Government Departments and various users through Pilot Projects/ Operational Projects.</li>\r\n                                    </ul>', 'yes'),
(297, '_site_transient_timeout_browser_181a49098f4bf3687c78095355347d26', '1654455672', 'no'),
(298, '_site_transient_browser_181a49098f4bf3687c78095355347d26', 'a:10:{s:4:\"name\";s:5:\"Opera\";s:7:\"version\";s:12:\"86.0.4363.64\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:22:\"https://www.opera.com/\";s:7:\"img_src\";s:42:\"http://s.w.org/images/browsers/opera.png?1\";s:11:\"img_src_ssl\";s:43:\"https://s.w.org/images/browsers/opera.png?1\";s:15:\"current_version\";s:5:\"12.18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(334, 'category_children', 'a:0:{}', 'yes'),
(370, '_site_transient_timeout_theme_roots', '1654248086', 'no'),
(371, '_site_transient_theme_roots', 'a:1:{s:5:\"iisre\";s:7:\"/themes\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(372, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1654246288;s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:5:\"4.1.1\";s:9:\"hello.php\";s:5:\"1.7.1\";}s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.2.4\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.2.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";s:6:\"tested\";s:3:\"6.0\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:9:\"hello.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";s:6:\"tested\";s:5:\"5.8.4\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wp_trash_meta_status', 'publish'),
(4, 5, '_wp_trash_meta_time', '1652608270'),
(5, 6, '_edit_last', '1'),
(6, 6, '_edit_lock', '1652625704:1'),
(7, 7, '_edit_last', '1'),
(8, 7, '_edit_lock', '1652625696:1'),
(9, 8, '_edit_last', '1'),
(10, 8, '_edit_lock', '1652688489:1'),
(11, 12, '_wp_attached_file', '2022/05/slider1.png'),
(12, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2052;s:6:\"height\";i:1364;s:4:\"file\";s:19:\"2022/05/slider1.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slider1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"slider1-300x199.png\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"slider1-768x511.png\";s:5:\"width\";i:768;s:6:\"height\";i:511;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"slider1-1024x681.png\";s:5:\"width\";i:1024;s:6:\"height\";i:681;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:19:\"slider1-940x198.png\";s:5:\"width\";i:940;s:6:\"height\";i:198;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(13, 6, '_thumbnail_id', '12'),
(14, 13, '_wp_attached_file', '2022/05/slider2.png'),
(15, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2040;s:6:\"height\";i:1360;s:4:\"file\";s:19:\"2022/05/slider2.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slider2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"slider2-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"slider2-768x512.png\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"slider2-1024x683.png\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:19:\"slider2-940x198.png\";s:5:\"width\";i:940;s:6:\"height\";i:198;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(16, 14, '_wp_attached_file', '2022/05/slider3.png'),
(17, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:1360;s:4:\"file\";s:19:\"2022/05/slider3.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slider3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"slider3-300x199.png\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"slider3-768x510.png\";s:5:\"width\";i:768;s:6:\"height\";i:510;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"slider3-1024x680.png\";s:5:\"width\";i:1024;s:6:\"height\";i:680;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:19:\"slider3-940x198.png\";s:5:\"width\";i:940;s:6:\"height\";i:198;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(18, 7, '_thumbnail_id', '13'),
(19, 8, '_thumbnail_id', '14'),
(20, 15, '_edit_last', '1'),
(21, 15, '_edit_lock', '1652625984:1'),
(22, 16, '_edit_last', '1'),
(23, 16, '_edit_lock', '1652625982:1'),
(24, 17, '_edit_last', '1'),
(25, 17, '_edit_lock', '1652625975:1'),
(26, 18, '_edit_last', '1'),
(27, 18, '_edit_lock', '1652625978:1'),
(28, 19, '_wp_attached_file', '2022/05/user.jpg'),
(29, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:432;s:6:\"height\";i:443;s:4:\"file\";s:16:\"2022/05/user.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"user-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"user-293x300.jpg\";s:5:\"width\";i:293;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:16:\"user-432x198.jpg\";s:5:\"width\";i:432;s:6:\"height\";i:198;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(30, 15, '_thumbnail_id', '19'),
(31, 16, '_thumbnail_id', '19'),
(32, 17, '_thumbnail_id', '19'),
(33, 18, '_thumbnail_id', '19'),
(34, 24, '_edit_last', '1'),
(35, 24, '_edit_lock', '1652626769:1'),
(36, 25, '_edit_last', '1'),
(37, 25, '_edit_lock', '1652948998:1'),
(38, 26, '_edit_last', '1'),
(39, 26, '_edit_lock', '1652626773:1'),
(40, 31, '_edit_last', '1'),
(41, 31, '_edit_lock', '1652633522:1'),
(42, 30, '_edit_last', '1'),
(43, 30, '_edit_lock', '1652633519:1'),
(44, 32, '_edit_last', '1'),
(45, 32, '_edit_lock', '1652633519:1'),
(46, 35, '_edit_last', '1'),
(47, 35, '_edit_lock', '1653851566:1'),
(48, 38, '_wp_attached_file', '2022/05/research2.jpg'),
(49, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:352;s:6:\"height\";i:288;s:4:\"file\";s:21:\"2022/05/research2.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"research2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"research2-300x245.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:245;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:21:\"research2-352x198.jpg\";s:5:\"width\";i:352;s:6:\"height\";i:198;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(50, 39, '_wp_attached_file', '2022/05/research3.jpg'),
(51, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:349;s:6:\"height\";i:285;s:4:\"file\";s:21:\"2022/05/research3.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"research3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"research3-300x245.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:245;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:21:\"research3-349x198.jpg\";s:5:\"width\";i:349;s:6:\"height\";i:198;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(52, 40, '_wp_attached_file', '2022/05/research4.jpg'),
(53, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:351;s:6:\"height\";i:286;s:4:\"file\";s:21:\"2022/05/research4.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"research4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"research4-300x244.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:244;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:21:\"research4-351x198.jpg\";s:5:\"width\";i:351;s:6:\"height\";i:198;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(54, 41, '_wp_attached_file', '2022/05/research1.jpg'),
(55, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:351;s:6:\"height\";i:285;s:4:\"file\";s:21:\"2022/05/research1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"research1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"research1-300x244.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:244;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:21:\"research1-351x198.jpg\";s:5:\"width\";i:351;s:6:\"height\";i:198;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(56, 31, '_thumbnail_id', '38'),
(57, 30, '_thumbnail_id', '39'),
(58, 32, '_thumbnail_id', '40'),
(59, 35, '_thumbnail_id', '41'),
(60, 42, '_edit_last', '1'),
(61, 42, '_edit_lock', '1652944956:1'),
(62, 43, '_edit_last', '1'),
(63, 43, '_edit_lock', '1652944956:1'),
(64, 47, '_wp_attached_file', '2022/05/gallery1.jpg'),
(65, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:350;s:6:\"height\";i:351;s:4:\"file\";s:20:\"2022/05/gallery1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"gallery1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"gallery1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:20:\"gallery1-350x198.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:198;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(66, 48, '_wp_attached_file', '2022/05/gallery2.jpg'),
(67, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:346;s:6:\"height\";i:350;s:4:\"file\";s:20:\"2022/05/gallery2.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"gallery2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"gallery2-297x300.jpg\";s:5:\"width\";i:297;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:20:\"gallery2-346x198.jpg\";s:5:\"width\";i:346;s:6:\"height\";i:198;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(68, 49, '_wp_attached_file', '2022/05/gallery3.jpg'),
(69, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:350;s:6:\"height\";i:350;s:4:\"file\";s:20:\"2022/05/gallery3.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"gallery3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"gallery3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:20:\"gallery3-350x198.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:198;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(70, 50, '_wp_attached_file', '2022/05/gallery4.jpg'),
(71, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:350;s:6:\"height\";i:348;s:4:\"file\";s:20:\"2022/05/gallery4.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"gallery4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"gallery4-300x298.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:298;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:20:\"gallery4-350x198.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:198;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(72, 51, '_wp_attached_file', '2022/05/gallery5.jpg'),
(73, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:350;s:6:\"height\";i:351;s:4:\"file\";s:20:\"2022/05/gallery5.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"gallery5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"gallery5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:20:\"gallery5-350x198.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:198;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(74, 52, '_wp_attached_file', '2022/05/gallery6.jpg'),
(75, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:350;s:6:\"height\";i:352;s:4:\"file\";s:20:\"2022/05/gallery6.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"gallery6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"gallery6-298x300.jpg\";s:5:\"width\";i:298;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:20:\"gallery6-350x198.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:198;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(76, 53, '_wp_attached_file', '2022/05/gallery7.jpg'),
(77, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:352;s:6:\"height\";i:350;s:4:\"file\";s:20:\"2022/05/gallery7.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"gallery7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"gallery7-300x298.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:298;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:20:\"gallery7-352x198.jpg\";s:5:\"width\";i:352;s:6:\"height\";i:198;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(78, 42, '_thumbnail_id', '47'),
(79, 43, '_thumbnail_id', '48'),
(80, 44, '_edit_last', '1'),
(81, 44, '_edit_lock', '1652944957:1'),
(82, 44, '_thumbnail_id', '49'),
(83, 45, '_edit_last', '1'),
(84, 45, '_edit_lock', '1652944960:1'),
(85, 46, '_edit_last', '1'),
(86, 46, '_edit_lock', '1652944961:1'),
(87, 45, '_thumbnail_id', '50'),
(88, 46, '_thumbnail_id', '51'),
(89, 59, '_edit_last', '1'),
(90, 59, '_edit_lock', '1652944964:1'),
(91, 59, '_thumbnail_id', '52'),
(92, 60, '_edit_last', '1'),
(93, 60, '_edit_lock', '1652945324:1'),
(94, 60, '_thumbnail_id', '53'),
(95, 64, '_edit_last', '1'),
(96, 64, '_edit_lock', '1653204947:1'),
(97, 65, '_edit_last', '1'),
(98, 65, '_edit_lock', '1653204932:1'),
(99, 63, '_edit_last', '1'),
(100, 63, '_edit_lock', '1653204917:1'),
(101, 63, '_thumbnail_id', '38'),
(102, 64, '_thumbnail_id', '39'),
(103, 65, '_thumbnail_id', '41'),
(104, 71, '_edit_lock', '1652636103:1'),
(105, 3, '_wp_trash_meta_status', 'draft'),
(106, 3, '_wp_trash_meta_time', '1652634725'),
(107, 3, '_wp_desired_post_slug', 'privacy-policy'),
(108, 2, '_wp_trash_meta_status', 'publish'),
(109, 2, '_wp_trash_meta_time', '1652634726'),
(110, 2, '_wp_desired_post_slug', 'sample-page'),
(111, 75, '_wp_trash_meta_status', 'publish'),
(112, 75, '_wp_trash_meta_time', '1652634787'),
(113, 71, '_wp_page_template', 'index.php'),
(114, 76, '_edit_lock', '1653859050:1'),
(115, 77, '_edit_lock', '1653859044:1'),
(116, 78, '_edit_lock', '1653859038:1'),
(117, 1, '_wp_trash_meta_status', 'publish'),
(118, 1, '_wp_trash_meta_time', '1652695649'),
(119, 1, '_wp_desired_post_slug', 'hello-world'),
(120, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(121, 83, '_edit_lock', '1652861540:1'),
(122, 84, '_edit_lock', '1652862959:1'),
(123, 85, '_edit_lock', '1652862437:1'),
(124, 86, '_edit_lock', '1652945669:1'),
(125, 91, '_edit_lock', '1652862435:1'),
(126, 92, '_edit_lock', '1652862637:1'),
(127, 93, '_edit_lock', '1652949530:1'),
(128, 94, '_edit_lock', '1652950812:1'),
(129, 95, '_edit_lock', '1652954457:1'),
(130, 101, '_edit_lock', '1653851395:1'),
(131, 102, '_edit_lock', '1652862972:1'),
(132, 103, '_edit_lock', '1652954191:1'),
(133, 104, '_edit_lock', '1652863836:1'),
(134, 109, '_edit_lock', '1652857179:1'),
(135, 110, '_edit_lock', '1652857164:1'),
(136, 113, '_edit_lock', '1652857307:1'),
(137, 86, '_wp_page_template', 'what-we-do.php'),
(138, 84, '_edit_last', '1'),
(139, 84, '_wp_page_template', 'our-mission.php'),
(140, 83, '_wp_page_template', 'who-we-are.php'),
(141, 85, '_wp_page_template', 'our-vision.php'),
(142, 91, '_wp_page_template', 'why-us.php'),
(143, 92, '_wp_page_template', 'our-approach.php'),
(144, 102, '_wp_page_template', 'data-bank.php'),
(145, 104, '_wp_page_template', 'contact.php'),
(146, 125, '_edit_last', '1'),
(147, 125, '_edit_lock', '1652948998:1'),
(148, 93, '_wp_page_template', 'leadership.php'),
(149, 94, '_wp_page_template', 'gallery.php'),
(150, 103, '_wp_page_template', 'blog.php'),
(153, 78, '_thumbnail_id', '48'),
(156, 77, '_thumbnail_id', '51'),
(159, 76, '_thumbnail_id', '52'),
(160, 95, '_wp_page_template', 'news-event.php'),
(161, 101, '_wp_page_template', 'research.php'),
(162, 63, '_wp_old_slug', 'energy-department-research-will-help-eagles-coexist-with-wind-energy-deployment-3'),
(163, 65, '_wp_old_slug', 'energy-department-research-will-help-eagles-coexist-with-wind-energy-deployment-2'),
(164, 64, '_wp_old_slug', 'energy-department-research-will-help-eagles-coexist-with-wind-energy-deployment'),
(165, 136, '_edit_lock', '1653857898:1'),
(166, 136, '_wp_page_template', 'community.php'),
(167, 138, '_edit_last', '1'),
(168, 138, '_edit_lock', '1653856942:1'),
(169, 139, '_edit_last', '1'),
(170, 139, '_edit_lock', '1653856941:1'),
(171, 140, '_edit_last', '1'),
(172, 140, '_edit_lock', '1653859597:1'),
(175, 139, '_wp_old_slug', 'community'),
(176, 140, '_wp_old_slug', 'community2'),
(177, 138, '_thumbnail_id', '40'),
(178, 139, '_thumbnail_id', '41'),
(179, 140, '_thumbnail_id', '38'),
(180, 136, '_edit_last', '1'),
(181, 139, '_wp_old_slug', 'community2-2'),
(182, 154, '_edit_lock', '1653856937:1'),
(183, 155, '_edit_lock', '1653856962:1'),
(184, 160, '_edit_last', '1'),
(185, 160, '_edit_lock', '1653858132:1'),
(186, 161, '_edit_last', '1'),
(187, 161, '_edit_lock', '1653858132:1'),
(188, 162, '_edit_last', '1'),
(189, 162, '_edit_lock', '1653858133:1'),
(190, 160, '_thumbnail_id', '39'),
(191, 161, '_thumbnail_id', '40'),
(192, 162, '_thumbnail_id', '38'),
(193, 169, '_edit_last', '1'),
(194, 169, '_edit_lock', '1653858842:1'),
(195, 169, '_wp_old_slug', 'community1'),
(196, 169, '_wp_old_slug', 'com'),
(197, 78, '_edit_last', '1'),
(200, 77, '_edit_last', '1'),
(203, 76, '_edit_last', '1'),
(206, 174, '_edit_lock', '1653859731:1'),
(207, 175, '_edit_lock', '1653859725:1'),
(208, 176, '_edit_lock', '1653859744:1'),
(229, 174, '_thumbnail_id', '50'),
(232, 175, '_thumbnail_id', '40'),
(235, 176, '_thumbnail_id', '39');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2022-05-14 15:39:45', '2022-05-14 15:39:45', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2022-05-16 10:07:29', '2022-05-16 10:07:29', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/?p=1', 0, 'post', '', 1),
(2, 1, '2022-05-14 15:39:45', '2022-05-14 15:39:45', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://pinkwebsolutionz.com/dev/iisre/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2022-05-15 17:12:06', '2022-05-15 17:12:06', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/?page_id=2', 0, 'page', '', 0),
(3, 1, '2022-05-14 15:39:45', '2022-05-14 15:39:45', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://pinkwebsolutionz.com/dev/iisre.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2022-05-15 17:12:05', '2022-05-15 17:12:05', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/?page_id=3', 0, 'page', '', 0),
(5, 1, '2022-05-15 09:51:10', '2022-05-15 09:51:10', '{\n    \"blogdescription\": {\n        \"value\": \"Institute for Interdisciplinary Sustainability Research and Education\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-15 09:51:10\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'caf032ae-9735-4f10-9be8-504748b7bad8', '', '', '2022-05-15 09:51:10', '2022-05-15 09:51:10', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/caf032ae-9735-4f10-9be8-504748b7bad8/', 0, 'customize_changeset', '', 0),
(6, 1, '2022-05-15 13:19:44', '2022-05-15 13:19:44', '<div class=\"col-12 col-lg-7\">\r\n                              <div class=\"slide-content\">\r\n                                 <h1 class=\"slide-headline\">Energize society using sustainable &amp; reliable energy</h1>\r\n                                 <p class=\"slide-desc\"> such as climate change, water security, land use, resource utilization, food and energy, conservation, urban and rural communities, transport, social responsibilities of business and so on.</p>\r\n                                 <div class=\"slide-action\"> \r\n                                    <a class=\"btn btn--primary\" href=\"#\"> <span>our services</span><i class=\"energia-arrow-right\"></i></a>\r\n                                 </div>\r\n                              </div>\r\n                           </div>\r\n                           <div class=\"col-12 col-lg-3 offset-lg-2 d-flex\">\r\n                              <div class=\"slider-panel-holder\">\r\n                                 <div class=\"slider-panel\">\r\n                                    <i class=\"panel-icon flaticon-028-greenhouse\"></i>\r\n                                    <h5 class=\"panel-title\">our mission</h5>\r\n                                    <p class=\"panel-desc\">Utilizing latest processes solutions, and decades of work experience.</p>\r\n                                    <a href=\"#\"><i class=\"energia-arrow-right\"> </i></a>\r\n                                 </div>\r\n                              </div>\r\n                           </div>', 'slider1', '', 'publish', 'closed', 'closed', '', 'slider1', '', '', '2022-05-15 14:41:03', '2022-05-15 14:41:03', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/?post_type=slider&#038;p=6', 0, 'slider', '', 0),
(7, 1, '2022-05-15 13:19:54', '2022-05-15 13:19:54', '<div class=\"col-12 col-lg-7\">\r\n                              <div class=\"slide-content\">\r\n                                 <h1 class=\"slide-headline\">Our sustainability research is based on inclusive collaborative approach</h1>\r\n                                 <p class=\"slide-desc\">Our sustainability research is based on inclusive collaborative approach, which allows us to determine, understand and create sustainable solutions to the cumulative effect from social activities and biophysical processes. We tend to adopt a holistic approach to address disconnect between land use, water, and the complex human-environmental interface.</p>\r\n                                 <div class=\"slide-action\">\r\n                                    <a class=\"btn btn--primary\" href=\"#\"> <span>our services</span><i class=\"energia-arrow-right\"></i></a>\r\n                                 </div>\r\n                              </div>\r\n                           </div>\r\n                           <div class=\"col-12 col-lg-3 offset-lg-2 d-flex\">\r\n                              <div class=\"slider-panel-holder\">\r\n                                 <div class=\"slider-panel\">\r\n                                    <i class=\"panel-icon flaticon-019-electric-tower\"></i>\r\n                                    <h5 class=\"panel-title\">our vision</h5>\r\n                                    <p class=\"panel-desc\">Growing demand of electricity while protecting our climate.</p>\r\n                                    <a href=\"#\"><i class=\"energia-arrow-right\"> </i></a>\r\n                                 </div>\r\n                              </div>\r\n                           </div>', 'Slider2', '', 'publish', 'closed', 'closed', '', 'slider2', '', '', '2022-05-15 14:41:56', '2022-05-15 14:41:56', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/?post_type=slider&#038;p=7', 0, 'slider', '', 0),
(8, 1, '2022-05-15 13:20:14', '2022-05-15 13:20:14', '<div class=\"col-12 col-lg-7\">\r\n                              <div class=\"slide-content\">\r\n                                 <h1 class=\"slide-headline\">Our sustainability research is based on inclusive collaborative approach</h1>\r\n                                 <p class=\"slide-desc\">Our sustainability research is based on inclusive collaborative approach, which allows us to determine, understand and create sustainable solutions to the cumulative effect from social activities and biophysical processes. We tend to adopt a holistic approach to address disconnect between land use, water, and the complex human-environmental interface.</p>\r\n                                 <div class=\"slide-action\">\r\n                                    <a class=\"btn btn--primary\" href=\"#\"> <span>our services</span><i class=\"energia-arrow-right\"></i></a>\r\n                                 </div>\r\n                              </div>\r\n                           </div>\r\n                           <div class=\"col-12 col-lg-3 offset-lg-2 d-flex\">\r\n                              <div class=\"slider-panel-holder\">\r\n                                 <div class=\"slider-panel\">\r\n                                    <i class=\"panel-icon flaticon-019-electric-tower\"></i>\r\n                                    <h5 class=\"panel-title\">our vision</h5>\r\n                                    <p class=\"panel-desc\">Growing demand of electricity while protecting our climate.</p>\r\n                                    <a href=\"#\"><i class=\"energia-arrow-right\"> </i></a>\r\n                                 </div>\r\n                              </div>\r\n                           </div>', 'Slider3', '', 'publish', 'closed', 'closed', '', 'slider3', '', '', '2022-05-15 14:43:54', '2022-05-15 14:43:54', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/?post_type=slider&#038;p=8', 0, 'slider', '', 0),
(9, 1, '2022-05-15 13:19:44', '2022-05-15 13:19:44', '<div class=\"col-12 col-lg-7\">\r\n                              <div class=\"slide-content\">\r\n                                 <h1 class=\"slide-headline\">Energize society using sustainable &amp; reliable energy</h1>\r\n                                 <p class=\"slide-desc\"> such as climate change, water security, land use, resource utilization, food and energy, conservation, urban and rural communities, transport, social responsibilities of business and so on.</p>\r\n                                 <div class=\"slide-action\"> \r\n                                    <a class=\"btn btn--primary\" href=\"#\"> <span>our services</span><i class=\"energia-arrow-right\"></i></a>\r\n                                 </div>\r\n                              </div>\r\n                           </div>\r\n                           <div class=\"col-12 col-lg-3 offset-lg-2 d-flex\">\r\n                              <div class=\"slider-panel-holder\">\r\n                                 <div class=\"slider-panel\">\r\n                                    <i class=\"panel-icon flaticon-028-greenhouse\"></i>\r\n                                    <h5 class=\"panel-title\">our mission</h5>\r\n                                    <p class=\"panel-desc\">Utilizing latest processes solutions, and decades of work experience.</p>\r\n                                    <a href=\"#\"><i class=\"energia-arrow-right\"> </i></a>\r\n                                 </div>\r\n                              </div>\r\n                           </div>', 'slider1', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2022-05-15 13:19:44', '2022-05-15 13:19:44', '', 6, 'http://pinkwebsolutionz.com/dev/iisre/6-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2022-05-15 13:19:54', '2022-05-15 13:19:54', '<div class=\"col-12 col-lg-7\">\r\n                              <div class=\"slide-content\">\r\n                                 <h1 class=\"slide-headline\">Our sustainability research is based on inclusive collaborative approach</h1>\r\n                                 <p class=\"slide-desc\">Our sustainability research is based on inclusive collaborative approach, which allows us to determine, understand and create sustainable solutions to the cumulative effect from social activities and biophysical processes. We tend to adopt a holistic approach to address disconnect between land use, water, and the complex human-environmental interface.</p>\r\n                                 <div class=\"slide-action\">\r\n                                    <a class=\"btn btn--primary\" href=\"#\"> <span>our services</span><i class=\"energia-arrow-right\"></i></a>\r\n                                 </div>\r\n                              </div>\r\n                           </div>\r\n                           <div class=\"col-12 col-lg-3 offset-lg-2 d-flex\">\r\n                              <div class=\"slider-panel-holder\">\r\n                                 <div class=\"slider-panel\">\r\n                                    <i class=\"panel-icon flaticon-019-electric-tower\"></i>\r\n                                    <h5 class=\"panel-title\">our vision</h5>\r\n                                    <p class=\"panel-desc\">Growing demand of electricity while protecting our climate.</p>\r\n                                    <a href=\"#\"><i class=\"energia-arrow-right\"> </i></a>\r\n                                 </div>\r\n                              </div>\r\n                           </div>', 'Slider2', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2022-05-15 13:19:54', '2022-05-15 13:19:54', '', 7, 'http://pinkwebsolutionz.com/dev/iisre/7-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2022-05-15 13:20:14', '2022-05-15 13:20:14', '<div class=\"col-12 col-lg-7\">\r\n                              <div class=\"slide-content\">\r\n                                 <h1 class=\"slide-headline\">Our sustainability research is based on inclusive collaborative approach</h1>\r\n                                 <p class=\"slide-desc\">Our sustainability research is based on inclusive collaborative approach, which allows us to determine, understand and create sustainable solutions to the cumulative effect from social activities and biophysical processes. We tend to adopt a holistic approach to address disconnect between land use, water, and the complex human-environmental interface.</p>\r\n                                 <div class=\"slide-action\">\r\n                                    <a class=\"btn btn--primary\" href=\"#\"> <span>our services</span><i class=\"energia-arrow-right\"></i></a>\r\n                                 </div>\r\n                              </div>\r\n                           </div>\r\n                           <div class=\"col-12 col-lg-3 offset-lg-2 d-flex\">\r\n                              <div class=\"slider-panel-holder\">\r\n                                 <div class=\"slider-panel\">\r\n                                    <i class=\"panel-icon flaticon-019-electric-tower\"></i>\r\n                                    <h5 class=\"panel-title\">our vision</h5>\r\n                                    <p class=\"panel-desc\">Growing demand of electricity while protecting our climate.</p>\r\n                                    <a href=\"#\"><i class=\"energia-arrow-right\"> </i></a>\r\n                                 </div>\r\n                              </div>\r\n                           </div>', 'Slider3', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-05-15 13:20:14', '2022-05-15 13:20:14', '', 8, 'http://pinkwebsolutionz.com/dev/iisre/8-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2022-05-15 14:30:56', '2022-05-15 14:30:56', '', 'slider1', '', 'inherit', 'open', 'closed', '', 'slider1-2', '', '', '2022-05-15 14:30:56', '2022-05-15 14:30:56', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/wp-content/uploads/2022/05/slider1.png', 0, 'attachment', 'image/png', 0),
(13, 1, '2022-05-15 14:39:56', '2022-05-15 14:39:56', '', 'slider2', '', 'inherit', 'open', 'closed', '', 'slider2-2', '', '', '2022-05-15 14:39:56', '2022-05-15 14:39:56', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/wp-content/uploads/2022/05/slider2.png', 0, 'attachment', 'image/png', 0),
(14, 1, '2022-05-15 14:40:56', '2022-05-15 14:40:56', '', 'slider3', '', 'inherit', 'open', 'closed', '', 'slider3-2', '', '', '2022-05-15 14:40:56', '2022-05-15 14:40:56', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/wp-content/uploads/2022/05/slider3.png', 0, 'attachment', 'image/png', 0),
(15, 1, '2022-05-15 14:46:38', '2022-05-15 14:46:38', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Mr. Anil Pandey', '', 'publish', 'closed', 'closed', '', 'mr-anil-pandey', '', '', '2022-05-15 14:46:38', '2022-05-15 14:46:38', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/?post_type=team&#038;p=15', 0, 'team', '', 0),
(16, 1, '2022-05-15 14:46:58', '2022-05-15 14:46:58', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Mr. Anil Pandey', '', 'publish', 'closed', 'closed', '', 'mr-anil-pandey-2', '', '', '2022-05-15 14:46:58', '2022-05-15 14:46:58', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/?post_type=team&#038;p=16', 0, 'team', '', 0),
(17, 1, '2022-05-15 14:47:09', '2022-05-15 14:47:09', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Mr. Anil Pandey', '', 'publish', 'closed', 'closed', '', 'mr-anil-pandey-3', '', '', '2022-05-15 14:47:09', '2022-05-15 14:47:09', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/?post_type=team&#038;p=17', 0, 'team', '', 0),
(18, 1, '2022-05-15 14:47:19', '2022-05-15 14:47:19', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Mr. Anil Pandey', '', 'publish', 'closed', 'closed', '', 'mr-anil-pandey-4', '', '', '2022-05-15 14:47:19', '2022-05-15 14:47:19', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/?post_type=team&#038;p=18', 0, 'team', '', 0),
(19, 1, '2022-05-15 14:46:25', '2022-05-15 14:46:25', '', 'user', '', 'inherit', 'open', 'closed', '', 'user', '', '', '2022-05-15 14:46:25', '2022-05-15 14:46:25', '', 15, 'http://pinkwebsolutionz.com/dev/iisre/wp-content/uploads/2022/05/user.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2022-05-15 14:46:38', '2022-05-15 14:46:38', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Mr. Anil Pandey', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2022-05-15 14:46:38', '2022-05-15 14:46:38', '', 15, 'http://pinkwebsolutionz.com/dev/iisre/15-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2022-05-15 14:46:58', '2022-05-15 14:46:58', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Mr. Anil Pandey', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2022-05-15 14:46:58', '2022-05-15 14:46:58', '', 16, 'http://pinkwebsolutionz.com/dev/iisre/16-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2022-05-15 14:47:09', '2022-05-15 14:47:09', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Mr. Anil Pandey', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2022-05-15 14:47:09', '2022-05-15 14:47:09', '', 17, 'http://pinkwebsolutionz.com/dev/iisre/17-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2022-05-15 14:47:19', '2022-05-15 14:47:19', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Mr. Anil Pandey', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2022-05-15 14:47:19', '2022-05-15 14:47:19', '', 18, 'http://pinkwebsolutionz.com/dev/iisre/18-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2022-05-15 14:52:07', '2022-05-15 14:52:07', '<p> The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.</p>\r\n                           <ul class=\"list-unstyled advantages-list\">\r\n                              <li> The point of using Lorem Ipsum</li> \r\n                              <li> The point of using Lorem Ipsum</li> \r\n                           </ul>', 'Academic research', '', 'publish', 'closed', 'closed', '', 'academic-research', '', '', '2022-05-15 14:52:07', '2022-05-15 14:52:07', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/?post_type=service&#038;p=24', 0, 'service', '', 0),
(25, 1, '2022-05-15 14:52:16', '2022-05-15 14:52:16', '<p> The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.</p>\r\n                           <ul class=\"list-unstyled advantages-list\">\r\n                              <li> The point of using Lorem Ipsum</li> \r\n                              <li> The point of using Lorem Ipsum</li> \r\n                           </ul>', 'Teaching and education', '', 'publish', 'closed', 'closed', '', 'teaching-and-education', '', '', '2022-05-15 14:52:16', '2022-05-15 14:52:16', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/?post_type=service&#038;p=25', 0, 'service', '', 0),
(26, 1, '2022-05-15 14:52:25', '2022-05-15 14:52:25', '<p> The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.</p>\r\n                           <ul class=\"list-unstyled advantages-list\">\r\n                              <li> The point of using Lorem Ipsum</li> \r\n                              <li> The point of using Lorem Ipsum</li> \r\n                           </ul>', 'Consultancy', '', 'publish', 'closed', 'closed', '', 'consultancy', '', '', '2022-05-15 14:52:25', '2022-05-15 14:52:25', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/?post_type=service&#038;p=26', 0, 'service', '', 0),
(27, 1, '2022-05-15 14:52:07', '2022-05-15 14:52:07', '<p> The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.</p>\r\n                           <ul class=\"list-unstyled advantages-list\">\r\n                              <li> The point of using Lorem Ipsum</li> \r\n                              <li> The point of using Lorem Ipsum</li> \r\n                           </ul>', 'Academic research', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2022-05-15 14:52:07', '2022-05-15 14:52:07', '', 24, 'http://pinkwebsolutionz.com/dev/iisre/24-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2022-05-15 14:52:16', '2022-05-15 14:52:16', '<p> The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.</p>\r\n                           <ul class=\"list-unstyled advantages-list\">\r\n                              <li> The point of using Lorem Ipsum</li> \r\n                              <li> The point of using Lorem Ipsum</li> \r\n                           </ul>', 'Teaching and education', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2022-05-15 14:52:16', '2022-05-15 14:52:16', '', 25, 'http://pinkwebsolutionz.com/dev/iisre/25-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2022-05-15 14:52:25', '2022-05-15 14:52:25', '<p> The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.</p>\r\n                           <ul class=\"list-unstyled advantages-list\">\r\n                              <li> The point of using Lorem Ipsum</li> \r\n                              <li> The point of using Lorem Ipsum</li> \r\n                           </ul>', 'Consultancy', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2022-05-15 14:52:25', '2022-05-15 14:52:25', '', 26, 'http://pinkwebsolutionz.com/dev/iisre/26-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2022-05-15 15:05:05', '2022-05-15 15:05:05', 'Mukherjee, S., Sikdar, P.K., Pal, S. and Schütt, B. 2021. Assessment of Environmental Water Security of an Asian Deltaic Megacity and its Peri‐urban Wetland Areas. Sustainability 13, 2772. https://doi.org/10.3390/su13052772.', 'Assessment of Environmental Water Security of an Asian Deltaic Megacity and its Peri‐urban Wetland Areas', '', 'publish', 'closed', 'closed', '', 'assessment-of-environmental-water-security-of-an-asian-deltaic-megacity-and-its-peri%e2%80%90urban-wetland-areas-2', '', '', '2022-05-15 16:04:36', '2022-05-15 16:04:36', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/?post_type=research&#038;p=30', 0, 'research', '', 0),
(31, 1, '2022-05-15 15:04:49', '2022-05-15 15:04:49', 'Mukherjee, S., Sikdar, P.K., Pal, S. and Schütt, B. 2021. Assessment of Environmental Water Security of an Asian Deltaic Megacity and its Peri‐urban Wetland Areas. Sustainability 13, 2772. https://doi.org/10.3390/su13052772.', 'Assessment of Environmental Water Security of an Asian Deltaic Megacity and its Peri‐urban Wetland Areas', '', 'publish', 'closed', 'closed', '', 'assessment-of-environmental-water-security-of-an-asian-deltaic-megacity-and-its-peri%e2%80%90urban-wetland-areas', '', '', '2022-05-15 16:04:15', '2022-05-15 16:04:15', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/?post_type=research&#038;p=31', 0, 'research', '', 0),
(32, 1, '2022-05-15 15:05:21', '2022-05-15 15:05:21', 'Mukherjee, S., Sikdar, P.K., Pal, S. and Schütt, B. 2021. Assessment of Environmental Water Security of an Asian Deltaic Megacity and its Peri‐urban Wetland Areas. Sustainability 13, 2772. https://doi.org/10.3390/su13052772.', 'Assessment of Environmental Water Security of an Asian Deltaic Megacity and its Peri‐urban Wetland Areas', '', 'publish', 'closed', 'closed', '', 'assessment-of-environmental-water-security-of-an-asian-deltaic-megacity-and-its-peri%e2%80%90urban-wetland-areas-3', '', '', '2022-05-15 16:04:50', '2022-05-15 16:04:50', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/?post_type=research&#038;p=32', 0, 'research', '', 0),
(33, 1, '2022-05-15 15:04:49', '2022-05-15 15:04:49', 'Mukherjee, S., Sikdar, P.K., Pal, S. and Schütt, B. 2021. Assessment of Environmental Water Security of an Asian Deltaic Megacity and its Peri‐urban Wetland Areas. Sustainability 13, 2772. https://doi.org/10.3390/su13052772.', 'Assessment of Environmental Water Security of an Asian Deltaic Megacity and its Peri‐urban Wetland Areas', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2022-05-15 15:04:49', '2022-05-15 15:04:49', '', 31, 'http://pinkwebsolutionz.com/dev/iisre/31-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2022-05-15 15:05:05', '2022-05-15 15:05:05', 'Mukherjee, S., Sikdar, P.K., Pal, S. and Schütt, B. 2021. Assessment of Environmental Water Security of an Asian Deltaic Megacity and its Peri‐urban Wetland Areas. Sustainability 13, 2772. https://doi.org/10.3390/su13052772.', 'Assessment of Environmental Water Security of an Asian Deltaic Megacity and its Peri‐urban Wetland Areas', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2022-05-15 15:05:05', '2022-05-15 15:05:05', '', 30, 'http://pinkwebsolutionz.com/dev/iisre/30-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2022-05-15 15:05:35', '2022-05-15 15:05:35', 'Mukherjee, S., Sikdar, P.K., Pal, S. and Schütt, B. 2021. Assessment of Environmental Water Security of an Asian Deltaic Megacity and its Peri‐urban Wetland Areas. Sustainability 13, 2772. https://doi.org/10.3390/su13052772.', 'Assessment of Environmental Water Security of an Asian Deltaic Megacity and its Peri‐urban Wetland Areas', '', 'publish', 'closed', 'closed', '', 'assessment-of-environmental-water-security-of-an-asian-deltaic-megacity-and-its-peri%e2%80%90urban-wetland-areas-4', '', '', '2022-05-15 16:54:23', '2022-05-15 16:54:23', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/?post_type=research&#038;p=35', 0, 'research', '', 0),
(36, 1, '2022-05-15 15:05:21', '2022-05-15 15:05:21', 'Mukherjee, S., Sikdar, P.K., Pal, S. and Schütt, B. 2021. Assessment of Environmental Water Security of an Asian Deltaic Megacity and its Peri‐urban Wetland Areas. Sustainability 13, 2772. https://doi.org/10.3390/su13052772.', 'Assessment of Environmental Water Security of an Asian Deltaic Megacity and its Peri‐urban Wetland Areas', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2022-05-15 15:05:21', '2022-05-15 15:05:21', '', 32, 'http://pinkwebsolutionz.com/dev/iisre/32-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2022-05-15 15:05:35', '2022-05-15 15:05:35', 'Mukherjee, S., Sikdar, P.K., Pal, S. and Schütt, B. 2021. Assessment of Environmental Water Security of an Asian Deltaic Megacity and its Peri‐urban Wetland Areas. Sustainability 13, 2772. https://doi.org/10.3390/su13052772.', 'Assessment of Environmental Water Security of an Asian Deltaic Megacity and its Peri‐urban Wetland Areas', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2022-05-15 15:05:35', '2022-05-15 15:05:35', '', 35, 'http://pinkwebsolutionz.com/dev/iisre/35-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2022-05-15 15:05:59', '2022-05-15 15:05:59', '', 'research2', '', 'inherit', 'open', 'closed', '', 'research2', '', '', '2022-05-15 15:05:59', '2022-05-15 15:05:59', '', 31, 'http://pinkwebsolutionz.com/dev/iisre/wp-content/uploads/2022/05/research2.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2022-05-15 15:06:05', '2022-05-15 15:06:05', '', 'research3', '', 'inherit', 'open', 'closed', '', 'research3', '', '', '2022-05-15 15:06:05', '2022-05-15 15:06:05', '', 31, 'http://pinkwebsolutionz.com/dev/iisre/wp-content/uploads/2022/05/research3.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2022-05-15 15:06:10', '2022-05-15 15:06:10', '', 'research4', '', 'inherit', 'open', 'closed', '', 'research4', '', '', '2022-05-15 15:06:10', '2022-05-15 15:06:10', '', 31, 'http://pinkwebsolutionz.com/dev/iisre/wp-content/uploads/2022/05/research4.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2022-05-15 15:06:14', '2022-05-15 15:06:14', '', 'research1', '', 'inherit', 'open', 'closed', '', 'research1', '', '', '2022-05-15 15:06:14', '2022-05-15 15:06:14', '', 31, 'http://pinkwebsolutionz.com/dev/iisre/wp-content/uploads/2022/05/research1.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2022-05-15 16:56:21', '2022-05-15 16:56:21', '', 'gallery1', '', 'publish', 'closed', 'closed', '', 'gallery1', '', '', '2022-05-15 16:56:21', '2022-05-15 16:56:21', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/?post_type=gallery&#038;p=42', 0, 'gallery', '', 0),
(43, 1, '2022-05-15 16:56:34', '2022-05-15 16:56:34', '', 'gallery2', '', 'publish', 'closed', 'closed', '', 'gallery2', '', '', '2022-05-15 16:56:34', '2022-05-15 16:56:34', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/?post_type=gallery&#038;p=43', 0, 'gallery', '', 0),
(44, 1, '2022-05-15 16:56:48', '2022-05-15 16:56:48', '', 'gallery3', '', 'publish', 'closed', 'closed', '', 'gallery3', '', '', '2022-05-15 16:56:48', '2022-05-15 16:56:48', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/?post_type=gallery&#038;p=44', 0, 'gallery', '', 0),
(45, 1, '2022-05-15 16:57:13', '2022-05-15 16:57:13', '', 'gallery4', '', 'publish', 'closed', 'closed', '', 'gallery4', '', '', '2022-05-15 16:57:13', '2022-05-15 16:57:13', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/?post_type=gallery&#038;p=45', 0, 'gallery', '', 0),
(46, 1, '2022-05-15 16:57:26', '2022-05-15 16:57:26', '', 'gallery5', '', 'publish', 'closed', 'closed', '', 'gallery5', '', '', '2022-05-15 16:57:26', '2022-05-15 16:57:26', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/?post_type=gallery&#038;p=46', 0, 'gallery', '', 0),
(47, 1, '2022-05-15 16:55:31', '2022-05-15 16:55:31', '', 'gallery1', '', 'inherit', 'open', 'closed', '', 'gallery1', '', '', '2022-05-15 16:55:31', '2022-05-15 16:55:31', '', 42, 'http://pinkwebsolutionz.com/dev/iisre/wp-content/uploads/2022/05/gallery1.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2022-05-15 16:55:46', '2022-05-15 16:55:46', '', 'gallery2', '', 'inherit', 'open', 'closed', '', 'gallery2', '', '', '2022-05-15 16:55:46', '2022-05-15 16:55:46', '', 42, 'http://pinkwebsolutionz.com/dev/iisre/wp-content/uploads/2022/05/gallery2.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2022-05-15 16:55:51', '2022-05-15 16:55:51', '', 'gallery3', '', 'inherit', 'open', 'closed', '', 'gallery3', '', '', '2022-05-15 16:55:51', '2022-05-15 16:55:51', '', 42, 'http://pinkwebsolutionz.com/dev/iisre/wp-content/uploads/2022/05/gallery3.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2022-05-15 16:55:54', '2022-05-15 16:55:54', '', 'gallery4', '', 'inherit', 'open', 'closed', '', 'gallery4', '', '', '2022-05-15 16:55:54', '2022-05-15 16:55:54', '', 42, 'http://pinkwebsolutionz.com/dev/iisre/wp-content/uploads/2022/05/gallery4.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2022-05-15 16:55:58', '2022-05-15 16:55:58', '', 'gallery5', '', 'inherit', 'open', 'closed', '', 'gallery5', '', '', '2022-05-15 16:55:58', '2022-05-15 16:55:58', '', 42, 'http://pinkwebsolutionz.com/dev/iisre/wp-content/uploads/2022/05/gallery5.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2022-05-15 16:56:03', '2022-05-15 16:56:03', '', 'gallery6', '', 'inherit', 'open', 'closed', '', 'gallery6', '', '', '2022-05-15 16:56:03', '2022-05-15 16:56:03', '', 42, 'http://pinkwebsolutionz.com/dev/iisre/wp-content/uploads/2022/05/gallery6.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2022-05-15 16:56:07', '2022-05-15 16:56:07', '', 'gallery7', '', 'inherit', 'open', 'closed', '', 'gallery7', '', '', '2022-05-15 16:56:07', '2022-05-15 16:56:07', '', 42, 'http://pinkwebsolutionz.com/dev/iisre/wp-content/uploads/2022/05/gallery7.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2022-05-15 16:56:21', '2022-05-15 16:56:21', '', 'gallery1', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2022-05-15 16:56:21', '2022-05-15 16:56:21', '', 42, 'http://pinkwebsolutionz.com/dev/iisre/42-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2022-05-15 16:56:34', '2022-05-15 16:56:34', '', 'gallery2', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2022-05-15 16:56:34', '2022-05-15 16:56:34', '', 43, 'http://pinkwebsolutionz.com/dev/iisre/43-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2022-05-15 16:56:48', '2022-05-15 16:56:48', '', 'gallery3', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2022-05-15 16:56:48', '2022-05-15 16:56:48', '', 44, 'http://pinkwebsolutionz.com/dev/iisre/44-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2022-05-15 16:57:13', '2022-05-15 16:57:13', '', 'gallery4', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2022-05-15 16:57:13', '2022-05-15 16:57:13', '', 45, 'http://pinkwebsolutionz.com/dev/iisre/45-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2022-05-15 16:57:26', '2022-05-15 16:57:26', '', 'gallery5', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2022-05-15 16:57:26', '2022-05-15 16:57:26', '', 46, 'http://pinkwebsolutionz.com/dev/iisre/46-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2022-05-15 16:57:55', '2022-05-15 16:57:55', '', 'gallery6', '', 'publish', 'closed', 'closed', '', 'gallery6', '', '', '2022-05-15 16:58:07', '2022-05-15 16:58:07', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/?post_type=gallery&#038;p=59', 0, 'gallery', '', 0),
(60, 1, '2022-05-15 16:58:08', '2022-05-15 16:58:08', '', 'gallery7', '', 'publish', 'closed', 'closed', '', 'gallery7', '', '', '2022-05-15 16:58:08', '2022-05-15 16:58:08', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/?post_type=gallery&#038;p=60', 0, 'gallery', '', 0),
(61, 1, '2022-05-15 16:57:55', '2022-05-15 16:57:55', '', 'gallery6', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2022-05-15 16:57:55', '2022-05-15 16:57:55', '', 59, 'http://pinkwebsolutionz.com/dev/iisre/59-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2022-05-15 16:58:08', '2022-05-15 16:58:08', '', 'gallery7', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2022-05-15 16:58:08', '2022-05-15 16:58:08', '', 60, 'http://pinkwebsolutionz.com/dev/iisre/60-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2022-05-15 17:10:07', '2022-05-15 17:10:07', 'Commercialization of ready-to-deploy renewable energy technologies Professional project development as a strategy to access leverage and manage', 'News and Event demo 1', '', 'publish', 'closed', 'closed', '', 'news-and-event-demo-1', '', '', '2022-05-22 07:35:16', '2022-05-22 07:35:16', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/?post_type=news&#038;p=63', 0, 'news', '', 0),
(64, 1, '2022-05-15 17:09:51', '2022-05-15 17:09:51', 'Commercialization of ready-to-deploy renewable energy technologies Professional project development as a strategy to access leverage and manage', 'News and Event demo 3', '', 'publish', 'closed', 'closed', '', 'news-and-event-demo-3', '', '', '2022-05-22 07:35:46', '2022-05-22 07:35:46', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/?post_type=news&#038;p=64', 0, 'news', '', 0),
(65, 1, '2022-05-15 17:09:54', '2022-05-15 17:09:54', 'Commercialization of ready-to-deploy renewable energy technologies Professional project development as a strategy to access leverage and manage', 'News and Event demo 2', '', 'publish', 'closed', 'closed', '', 'news-and-event-demo-2', '', '', '2022-05-22 07:35:31', '2022-05-22 07:35:31', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/?post_type=news&#038;p=65', 0, 'news', '', 0),
(66, 1, '2022-05-15 17:09:51', '2022-05-15 17:09:51', '', 'Energy Department Research Will Help Eagles Coexist With Wind Energy Deployment', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2022-05-15 17:09:51', '2022-05-15 17:09:51', '', 64, 'http://pinkwebsolutionz.com/dev/iisre/64-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2022-05-15 17:09:54', '2022-05-15 17:09:54', '', 'Energy Department Research Will Help Eagles Coexist With Wind Energy Deployment', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2022-05-15 17:09:54', '2022-05-15 17:09:54', '', 65, 'http://pinkwebsolutionz.com/dev/iisre/65-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2022-05-15 17:10:07', '2022-05-15 17:10:07', 'Commercialization of ready-to-deploy renewable energy technologies Professional project development as a strategy to access leverage and manage', 'Energy Department Research Will Help Eagles Coexist With Wind Energy Deployment', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2022-05-15 17:10:07', '2022-05-15 17:10:07', '', 63, 'http://pinkwebsolutionz.com/dev/iisre/63-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2022-05-15 17:10:10', '2022-05-15 17:10:10', 'Commercialization of ready-to-deploy renewable energy technologies Professional project development as a strategy to access leverage and manage', 'Energy Department Research Will Help Eagles Coexist With Wind Energy Deployment', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2022-05-15 17:10:10', '2022-05-15 17:10:10', '', 64, 'http://pinkwebsolutionz.com/dev/iisre/64-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2022-05-15 17:10:12', '2022-05-15 17:10:12', 'Commercialization of ready-to-deploy renewable energy technologies Professional project development as a strategy to access leverage and manage', 'Energy Department Research Will Help Eagles Coexist With Wind Energy Deployment', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2022-05-15 17:10:12', '2022-05-15 17:10:12', '', 65, 'http://pinkwebsolutionz.com/dev/iisre/65-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2022-05-15 17:12:19', '2022-05-15 17:12:19', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2022-05-15 17:16:17', '2022-05-15 17:16:17', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/?page_id=71', 0, 'page', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(72, 1, '2022-05-15 17:12:05', '2022-05-15 17:12:05', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://pinkwebsolutionz.com/dev/iisre.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2022-05-15 17:12:05', '2022-05-15 17:12:05', '', 3, 'http://pinkwebsolutionz.com/dev/iisre/3-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2022-05-15 17:12:06', '2022-05-15 17:12:06', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://pinkwebsolutionz.com/dev/iisre/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2022-05-15 17:12:06', '2022-05-15 17:12:06', '', 2, 'http://pinkwebsolutionz.com/dev/iisre/2-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2022-05-15 17:12:19', '2022-05-15 17:12:19', '', 'Home', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2022-05-15 17:12:19', '2022-05-15 17:12:19', '', 71, 'http://pinkwebsolutionz.com/dev/iisre/71-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2022-05-15 17:13:06', '2022-05-15 17:13:06', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-15 17:13:06\"\n    },\n    \"page_on_front\": {\n        \"value\": \"71\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-15 17:13:06\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ca5b5aaf-c9e2-4640-842a-ab76ef13f460', '', '', '2022-05-15 17:13:06', '2022-05-15 17:13:06', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/ca5b5aaf-c9e2-4640-842a-ab76ef13f460/', 0, 'customize_changeset', '', 0),
(76, 1, '2022-05-15 18:55:31', '2022-05-15 18:55:31', 'All of these factors are important consider when permitting your solar system, and can help streamline your process. Take time to consider these.', 'Energy Department Research Will Help Eagles Coexist With Wind Energy Deployment', '', 'publish', 'open', 'open', '', 'energy-department-research-will-help-eagles-coexist-with-wind-energy-deployment', '', '', '2022-05-29 21:17:30', '2022-05-29 21:17:30', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/?p=76', 0, 'post', '', 0),
(77, 1, '2022-05-15 18:55:35', '2022-05-15 18:55:35', 'All of these factors are important consider when permitting your solar system, and can help streamline your process. Take time to consider these.', 'Energy Department Research Will Help Eagles Coexist With Wind Energy Deployment', '', 'publish', 'open', 'open', '', 'energy-department-research-will-help-eagles-coexist-with-wind-energy-deployment-2', '', '', '2022-05-29 21:17:24', '2022-05-29 21:17:24', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/?p=77', 0, 'post', '', 0),
(78, 1, '2022-05-15 18:55:47', '2022-05-15 18:55:47', 'All of these factors are important consider when permitting your solar system, and can help streamline your process. Take time to consider these.', 'Energy Department Research Will Help Eagles Coexist With Wind Energy Deployment', '', 'publish', 'open', 'open', '', 'energy-department-research-will-help-eagles-coexist-with-wind-energy-deployment-3', '', '', '2022-05-29 21:17:18', '2022-05-29 21:17:18', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/?p=78', 0, 'post', '', 0),
(79, 1, '2022-05-15 18:55:31', '2022-05-15 18:55:31', 'All of these factors are important consider when permitting your solar system, and can help streamline your process. Take time to consider these.', 'Energy Department Research Will Help Eagles Coexist With Wind Energy Deployment', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2022-05-15 18:55:31', '2022-05-15 18:55:31', '', 76, 'http://pinkwebsolutionz.com/dev/iisre/76-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2022-05-15 18:55:35', '2022-05-15 18:55:35', 'All of these factors are important consider when permitting your solar system, and can help streamline your process. Take time to consider these.', 'Energy Department Research Will Help Eagles Coexist With Wind Energy Deployment', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2022-05-15 18:55:35', '2022-05-15 18:55:35', '', 77, 'http://pinkwebsolutionz.com/dev/iisre/77-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2022-05-15 18:55:47', '2022-05-15 18:55:47', 'All of these factors are important consider when permitting your solar system, and can help streamline your process. Take time to consider these.', 'Energy Department Research Will Help Eagles Coexist With Wind Energy Deployment', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2022-05-15 18:55:47', '2022-05-15 18:55:47', '', 78, 'http://pinkwebsolutionz.com/dev/iisre/78-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2022-05-16 10:07:29', '2022-05-16 10:07:29', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2022-05-16 10:07:29', '2022-05-16 10:07:29', '', 1, 'http://pinkwebsolutionz.com/dev/iisre/1-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2022-05-18 05:37:31', '2022-05-18 05:37:31', '<div class=\"heading heading-1\">\n<h2 class=\"heading-title\">We Are Pioneers In The World Of Solar &amp; Renewable Energy!</h2>\n</div>\n<div class=\"about-block\">\n<div class=\"row\">\n<div class=\"col-12 col-lg-12\">\n<div class=\"block-left\">\n\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\n\n</div>\n</div>\n</div>\n</div>', 'Who We Are', '', 'publish', 'closed', 'closed', '', 'who-we-are', '', '', '2022-05-18 08:12:31', '2022-05-18 08:12:31', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/?page_id=83', 0, 'page', '', 0),
(84, 1, '2022-05-18 05:37:45', '2022-05-18 05:37:45', '<div class=\"heading heading-1\">\n<h2 class=\"heading-title\">We Are Pioneers In The World Of Solar &amp; Renewable Energy!</h2>\n</div>\n<div class=\"about-block\">\n<div class=\"row\">\n<div class=\"col-12 col-lg-12\">\n<div class=\"block-left\">\n\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\n\n</div>\n</div>\n</div>\n</div>', 'Our Mission', '', 'publish', 'closed', 'closed', '', 'our-mission', '', '', '2022-05-18 08:12:35', '2022-05-18 08:12:35', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/?page_id=84', 0, 'page', '', 0),
(85, 1, '2022-05-18 05:38:02', '2022-05-18 05:38:02', '<div class=\"heading heading-1\">\n<h2 class=\"heading-title\">We Are Pioneers In The World Of Solar &amp; Renewable Energy!</h2>\n</div>\n<div class=\"about-block\">\n<div class=\"row\">\n<div class=\"col-12 col-lg-12\">\n<div class=\"block-left\">\n\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\n\n</div>\n</div>\n</div>\n</div>', 'Our Vision', '', 'publish', 'closed', 'closed', '', 'our-vision', '', '', '2022-05-18 08:23:08', '2022-05-18 08:23:08', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/?page_id=85', 0, 'page', '', 0),
(86, 1, '2022-05-18 05:38:27', '2022-05-18 05:38:27', '', 'What We do', '', 'publish', 'closed', 'closed', '', 'what-we-do', '', '', '2022-05-19 07:31:56', '2022-05-19 07:31:56', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/?page_id=86', 0, 'page', '', 0),
(87, 1, '2022-05-18 05:37:31', '2022-05-18 05:37:31', '', 'Who We Are', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2022-05-18 05:37:31', '2022-05-18 05:37:31', '', 83, 'http://pinkwebsolutionz.com/dev/iisre/83-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2022-05-18 05:37:45', '2022-05-18 05:37:45', '', 'Our Mision', '', 'inherit', 'closed', 'closed', '', '84-revision-v1', '', '', '2022-05-18 05:37:45', '2022-05-18 05:37:45', '', 84, 'http://pinkwebsolutionz.com/dev/iisre/84-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2022-05-18 05:38:02', '2022-05-18 05:38:02', '', 'Our Vision', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2022-05-18 05:38:02', '2022-05-18 05:38:02', '', 85, 'http://pinkwebsolutionz.com/dev/iisre/85-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2022-05-18 05:38:27', '2022-05-18 05:38:27', '', 'What We do', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2022-05-18 05:38:27', '2022-05-18 05:38:27', '', 86, 'http://pinkwebsolutionz.com/dev/iisre/86-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2022-05-18 05:38:52', '2022-05-18 05:38:52', '<div class=\"heading heading-1\">\n<h2 class=\"heading-title\">We Are Pioneers In The World Of Solar &amp; Renewable Energy!</h2>\n</div>\n<div class=\"about-block\">\n<div class=\"row\">\n<div class=\"col-12 col-lg-12\">\n<div class=\"block-left\">\n\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\n\n</div>\n</div>\n</div>\n</div>', 'Why Us', '', 'publish', 'closed', 'closed', '', 'why-us', '', '', '2022-05-18 08:25:13', '2022-05-18 08:25:13', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/?page_id=91', 0, 'page', '', 0),
(92, 1, '2022-05-18 05:39:28', '2022-05-18 05:39:28', '<div class=\"heading heading-1\">\n<h2 class=\"heading-title\">We Are Pioneers In The World Of Solar &amp; Renewable Energy!</h2>\n</div>\n<div class=\"about-block\">\n<div class=\"row\">\n<div class=\"col-12 col-lg-12\">\n<div class=\"block-left\">\n\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\n\n</div>\n</div>\n</div>\n</div>', 'Our Approach', '', 'publish', 'closed', 'closed', '', 'our-approach', '', '', '2022-05-18 08:27:45', '2022-05-18 08:27:45', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/?page_id=92', 0, 'page', '', 0),
(93, 1, '2022-05-18 05:40:30', '2022-05-18 05:40:30', '', 'Leadership Team', '', 'publish', 'closed', 'closed', '', 'leadership-team', '', '', '2022-05-19 08:32:32', '2022-05-19 08:32:32', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/?page_id=93', 0, 'page', '', 0),
(94, 1, '2022-05-18 05:40:49', '2022-05-18 05:40:49', '', 'Galleries', '', 'publish', 'closed', 'closed', '', 'galleries', '', '', '2022-05-19 08:51:07', '2022-05-19 08:51:07', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/?page_id=94', 0, 'page', '', 0),
(95, 1, '2022-05-18 05:41:10', '2022-05-18 05:41:10', '', 'News and Events', '', 'publish', 'closed', 'closed', '', 'news-and-events', '', '', '2022-05-19 10:00:06', '2022-05-19 10:00:06', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/?page_id=95', 0, 'page', '', 0),
(96, 1, '2022-05-18 05:38:52', '2022-05-18 05:38:52', '', 'Why Us', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2022-05-18 05:38:52', '2022-05-18 05:38:52', '', 91, 'http://pinkwebsolutionz.com/dev/iisre/91-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2022-05-18 05:39:28', '2022-05-18 05:39:28', '', 'Our Approach', '', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2022-05-18 05:39:28', '2022-05-18 05:39:28', '', 92, 'http://pinkwebsolutionz.com/dev/iisre/92-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2022-05-18 05:40:30', '2022-05-18 05:40:30', '', 'Leadership Team', '', 'inherit', 'closed', 'closed', '', '93-revision-v1', '', '', '2022-05-18 05:40:30', '2022-05-18 05:40:30', '', 93, 'http://pinkwebsolutionz.com/dev/iisre/93-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2022-05-18 05:40:49', '2022-05-18 05:40:49', '', 'Gallery', '', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2022-05-18 05:40:49', '2022-05-18 05:40:49', '', 94, 'http://pinkwebsolutionz.com/dev/iisre/94-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2022-05-18 05:41:10', '2022-05-18 05:41:10', '', 'News and Events', '', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2022-05-18 05:41:10', '2022-05-18 05:41:10', '', 95, 'http://pinkwebsolutionz.com/dev/iisre/95-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2022-05-18 05:43:06', '2022-05-18 05:43:06', '', 'Research & Publications', '', 'publish', 'closed', 'closed', '', 'research-publications', '', '', '2022-05-19 10:05:48', '2022-05-19 10:05:48', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/?page_id=101', 0, 'page', '', 0),
(102, 1, '2022-05-18 05:43:22', '2022-05-18 05:43:22', '<div class=\"heading heading-1\">\n<h2 class=\"heading-title\">We Are Pioneers In The World Of Solar &amp; Renewable Energy!</h2>\n</div>\n<div class=\"about-block\">\n<div class=\"row\">\n<div class=\"col-12 col-lg-12\">\n<div class=\"block-left\">\n\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\n\n</div>\n</div>\n</div>\n</div>', 'Data Bank', '', 'publish', 'closed', 'closed', '', 'data-bank', '', '', '2022-05-18 08:33:17', '2022-05-18 08:33:17', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/?page_id=102', 0, 'page', '', 0),
(103, 1, '2022-05-18 05:43:30', '2022-05-18 05:43:30', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2022-05-19 09:07:10', '2022-05-19 09:07:10', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/?page_id=103', 0, 'page', '', 0),
(104, 1, '2022-05-18 05:43:55', '2022-05-18 05:43:55', 'As a world wide distributor of solar supplies we endeavor provide fast and knowledgeable service, we can get all the materials you need by sea or air.', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2022-05-18 08:39:40', '2022-05-18 08:39:40', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/?page_id=104', 0, 'page', '', 0),
(105, 1, '2022-05-18 05:43:06', '2022-05-18 05:43:06', '', 'Research & Publications', '', 'inherit', 'closed', 'closed', '', '101-revision-v1', '', '', '2022-05-18 05:43:06', '2022-05-18 05:43:06', '', 101, 'http://pinkwebsolutionz.com/dev/iisre/101-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2022-05-18 05:43:22', '2022-05-18 05:43:22', '', 'Data Bank', '', 'inherit', 'closed', 'closed', '', '102-revision-v1', '', '', '2022-05-18 05:43:22', '2022-05-18 05:43:22', '', 102, 'http://pinkwebsolutionz.com/dev/iisre/102-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2022-05-18 05:43:30', '2022-05-18 05:43:30', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2022-05-18 05:43:30', '2022-05-18 05:43:30', '', 103, 'http://pinkwebsolutionz.com/dev/iisre/103-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2022-05-18 05:43:55', '2022-05-18 05:43:55', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '104-revision-v1', '', '', '2022-05-18 05:43:55', '2022-05-18 05:43:55', '', 104, 'http://pinkwebsolutionz.com/dev/iisre/104-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2022-05-18 06:57:34', '2022-05-18 06:57:34', '', 'Privacy Policy', '', 'publish', 'closed', 'closed', '', 'privacy-policy', '', '', '2022-05-18 06:57:34', '2022-05-18 06:57:34', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/?page_id=109', 0, 'page', '', 0),
(110, 1, '2022-05-18 06:57:37', '2022-05-18 06:57:37', '', 'Terms And Conditions', '', 'publish', 'closed', 'closed', '', 'terms-and-conditions', '', '', '2022-05-18 06:57:37', '2022-05-18 06:57:37', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/?page_id=110', 0, 'page', '', 0),
(111, 1, '2022-05-18 06:57:34', '2022-05-18 06:57:34', '', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '109-revision-v1', '', '', '2022-05-18 06:57:34', '2022-05-18 06:57:34', '', 109, 'http://pinkwebsolutionz.com/dev/iisre/109-revision-v1/', 0, 'revision', '', 0),
(112, 1, '2022-05-18 06:57:37', '2022-05-18 06:57:37', '', 'Terms And Conditions', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2022-05-18 06:57:37', '2022-05-18 06:57:37', '', 110, 'http://pinkwebsolutionz.com/dev/iisre/110-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2022-05-18 07:00:54', '2022-05-18 07:00:54', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2022-05-18 07:00:54', '2022-05-18 07:00:54', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/?page_id=113', 0, 'page', '', 0),
(114, 1, '2022-05-18 07:00:54', '2022-05-18 07:00:54', '', 'About', '', 'inherit', 'closed', 'closed', '', '113-revision-v1', '', '', '2022-05-18 07:00:54', '2022-05-18 07:00:54', '', 113, 'http://pinkwebsolutionz.com/dev/iisre/113-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2022-05-18 08:02:45', '2022-05-18 08:02:45', '<div class=\"heading heading-1\">\n<h2 class=\"heading-title\">We Are Pioneers In The World Of Solar &amp; Renewable Energy!</h2>\n</div>\n<div class=\"about-block\">\n<div class=\"row\">\n<div class=\"col-12 col-lg-12\">\n<div class=\"block-left\">\n\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\n\n</div>\n</div>\n</div>\n</div>', 'What We do', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2022-05-18 08:02:45', '2022-05-18 08:02:45', '', 86, 'http://pinkwebsolutionz.com/dev/iisre/86-revision-v1/', 0, 'revision', '', 0),
(116, 1, '2022-05-18 08:08:49', '2022-05-18 08:08:49', '', 'Our Mission', '', 'inherit', 'closed', 'closed', '', '84-revision-v1', '', '', '2022-05-18 08:08:49', '2022-05-18 08:08:49', '', 84, 'http://pinkwebsolutionz.com/dev/iisre/84-revision-v1/', 0, 'revision', '', 0),
(117, 1, '2022-05-18 08:11:02', '2022-05-18 08:11:02', '<div class=\"heading heading-1\">\n<h2 class=\"heading-title\">We Are Pioneers In The World Of Solar &amp; Renewable Energy!</h2>\n</div>\n<div class=\"about-block\">\n<div class=\"row\">\n<div class=\"col-12 col-lg-12\">\n<div class=\"block-left\">\n\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\n\n</div>\n</div>\n</div>\n</div>', 'Who We Are', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2022-05-18 08:11:02', '2022-05-18 08:11:02', '', 83, 'http://pinkwebsolutionz.com/dev/iisre/83-revision-v1/', 0, 'revision', '', 0),
(118, 1, '2022-05-18 08:11:06', '2022-05-18 08:11:06', '<div class=\"heading heading-1\">\n<h2 class=\"heading-title\">We Are Pioneers In The World Of Solar &amp; Renewable Energy!</h2>\n</div>\n<div class=\"about-block\">\n<div class=\"row\">\n<div class=\"col-12 col-lg-12\">\n<div class=\"block-left\">\n\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\n\n</div>\n</div>\n</div>\n</div>', 'Our Mission', '', 'inherit', 'closed', 'closed', '', '84-revision-v1', '', '', '2022-05-18 08:11:06', '2022-05-18 08:11:06', '', 84, 'http://pinkwebsolutionz.com/dev/iisre/84-revision-v1/', 0, 'revision', '', 0),
(119, 1, '2022-05-18 08:11:42', '2022-05-18 08:11:42', '', 'What We do', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2022-05-18 08:11:42', '2022-05-18 08:11:42', '', 86, 'http://pinkwebsolutionz.com/dev/iisre/86-revision-v1/', 0, 'revision', '', 0),
(120, 1, '2022-05-18 08:14:21', '2022-05-18 08:14:21', '<div class=\"heading heading-1\">\n<h2 class=\"heading-title\">We Are Pioneers In The World Of Solar &amp; Renewable Energy!</h2>\n</div>\n<div class=\"about-block\">\n<div class=\"row\">\n<div class=\"col-12 col-lg-12\">\n<div class=\"block-left\">\n\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\n\n</div>\n</div>\n</div>\n</div>', 'Our Vision', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2022-05-18 08:14:21', '2022-05-18 08:14:21', '', 85, 'http://pinkwebsolutionz.com/dev/iisre/85-revision-v1/', 0, 'revision', '', 0),
(121, 1, '2022-05-18 08:25:13', '2022-05-18 08:25:13', '<div class=\"heading heading-1\">\n<h2 class=\"heading-title\">We Are Pioneers In The World Of Solar &amp; Renewable Energy!</h2>\n</div>\n<div class=\"about-block\">\n<div class=\"row\">\n<div class=\"col-12 col-lg-12\">\n<div class=\"block-left\">\n\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\n\n</div>\n</div>\n</div>\n</div>', 'Why Us', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2022-05-18 08:25:13', '2022-05-18 08:25:13', '', 91, 'http://pinkwebsolutionz.com/dev/iisre/91-revision-v1/', 0, 'revision', '', 0),
(122, 1, '2022-05-18 08:27:45', '2022-05-18 08:27:45', '<div class=\"heading heading-1\">\n<h2 class=\"heading-title\">We Are Pioneers In The World Of Solar &amp; Renewable Energy!</h2>\n</div>\n<div class=\"about-block\">\n<div class=\"row\">\n<div class=\"col-12 col-lg-12\">\n<div class=\"block-left\">\n\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\n\n</div>\n</div>\n</div>\n</div>', 'Our Approach', '', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2022-05-18 08:27:45', '2022-05-18 08:27:45', '', 92, 'http://pinkwebsolutionz.com/dev/iisre/92-revision-v1/', 0, 'revision', '', 0),
(123, 1, '2022-05-18 08:31:20', '2022-05-18 08:31:20', '<div class=\"heading heading-1\">\n<h2 class=\"heading-title\">We Are Pioneers In The World Of Solar &amp; Renewable Energy!</h2>\n</div>\n<div class=\"about-block\">\n<div class=\"row\">\n<div class=\"col-12 col-lg-12\">\n<div class=\"block-left\">\n\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\nThe increase in extreme weather events and rising sea levels are unmistakable signs of climate change. Roughly 850 million people still live without access to electricity, which is the foundation of sustainable development.\n\n</div>\n</div>\n</div>\n</div>', 'Data Bank', '', 'inherit', 'closed', 'closed', '', '102-revision-v1', '', '', '2022-05-18 08:31:20', '2022-05-18 08:31:20', '', 102, 'http://pinkwebsolutionz.com/dev/iisre/102-revision-v1/', 0, 'revision', '', 0),
(124, 1, '2022-05-18 08:39:40', '2022-05-18 08:39:40', 'As a world wide distributor of solar supplies we endeavor provide fast and knowledgeable service, we can get all the materials you need by sea or air.', 'Contact', '', 'inherit', 'closed', 'closed', '', '104-revision-v1', '', '', '2022-05-18 08:39:40', '2022-05-18 08:39:40', '', 104, 'http://pinkwebsolutionz.com/dev/iisre/104-revision-v1/', 0, 'revision', '', 0),
(125, 1, '2022-05-19 07:35:10', '2022-05-19 07:35:10', '<p> The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.</p>\r\n                           <ul class=\"list-unstyled advantages-list\">\r\n                              <li> The point of using Lorem Ipsum</li> \r\n                              <li> The point of using Lorem Ipsum</li> \r\n                           </ul>', 'Teaching and education', '', 'publish', 'closed', 'closed', '', 'teaching-and-education-2', '', '', '2022-05-19 07:35:10', '2022-05-19 07:35:10', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/?post_type=service&#038;p=125', 0, 'service', '', 0),
(126, 1, '2022-05-19 07:35:10', '2022-05-19 07:35:10', '<p> The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.</p>\r\n                           <ul class=\"list-unstyled advantages-list\">\r\n                              <li> The point of using Lorem Ipsum</li> \r\n                              <li> The point of using Lorem Ipsum</li> \r\n                           </ul>', 'Teaching and education', '', 'inherit', 'closed', 'closed', '', '125-revision-v1', '', '', '2022-05-19 07:35:10', '2022-05-19 07:35:10', '', 125, 'http://pinkwebsolutionz.com/dev/iisre/125-revision-v1/', 0, 'revision', '', 0),
(127, 1, '2022-05-19 08:50:45', '2022-05-19 08:50:45', '', 'Galleries', '', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2022-05-19 08:50:45', '2022-05-19 08:50:45', '', 94, 'http://pinkwebsolutionz.com/dev/iisre/94-revision-v1/', 0, 'revision', '', 0),
(133, 1, '2022-05-22 07:35:16', '2022-05-22 07:35:16', 'Commercialization of ready-to-deploy renewable energy technologies Professional project development as a strategy to access leverage and manage', 'News and Event demo 1', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2022-05-22 07:35:16', '2022-05-22 07:35:16', '', 63, 'http://pinkwebsolutionz.com/dev/iisre/63-revision-v1/', 0, 'revision', '', 0),
(134, 1, '2022-05-22 07:35:31', '2022-05-22 07:35:31', 'Commercialization of ready-to-deploy renewable energy technologies Professional project development as a strategy to access leverage and manage', 'News and Event demo 2', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2022-05-22 07:35:31', '2022-05-22 07:35:31', '', 65, 'http://pinkwebsolutionz.com/dev/iisre/65-revision-v1/', 0, 'revision', '', 0),
(135, 1, '2022-05-22 07:35:46', '2022-05-22 07:35:46', 'Commercialization of ready-to-deploy renewable energy technologies Professional project development as a strategy to access leverage and manage', 'News and Event demo 3', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2022-05-22 07:35:46', '2022-05-22 07:35:46', '', 64, 'http://pinkwebsolutionz.com/dev/iisre/64-revision-v1/', 0, 'revision', '', 0),
(136, 1, '2022-05-29 19:03:49', '2022-05-29 19:03:49', '', 'Community', '', 'publish', 'closed', 'closed', '', 'community', '', '', '2022-05-29 20:58:18', '2022-05-29 20:58:18', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/?page_id=136', 0, 'page', '', 0),
(137, 1, '2022-05-29 19:03:49', '2022-05-29 19:03:49', '', 'community', '', 'inherit', 'closed', 'closed', '', '136-revision-v1', '', '', '2022-05-29 19:03:49', '2022-05-29 19:03:49', '', 136, 'http://pinkwebsolutionz.com/dev/iisre/136-revision-v1/', 0, 'revision', '', 0),
(138, 1, '2022-05-29 19:10:53', '2022-05-29 19:10:53', 'Batteries are the most expensive part of a solar system. Between appropriately-size battery bank and a battery-based inverter like the Outback Radian.', 'Community1', '', 'publish', 'closed', 'closed', '', 'community1', '', '', '2022-05-29 19:15:18', '2022-05-29 19:15:18', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/?post_type=community&#038;p=138', 0, 'community', '', 0),
(139, 1, '2022-05-29 19:10:50', '2022-05-29 19:10:50', 'Batteries are the most expensive part of a solar system. Between appropriately-size battery bank and a battery-based inverter like the Outback Radian.', 'Community2', '', 'publish', 'closed', 'closed', '', 'community2', '', '', '2022-05-29 19:18:02', '2022-05-29 19:18:02', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/?post_type=community&#038;p=139', 0, 'community', '', 0),
(140, 1, '2022-05-29 19:10:55', '2022-05-29 19:10:55', 'Batteries are the most expensive part of a solar system. Between appropriately-size battery bank and a battery-based inverter like the Outback Radian.', 'Community3', '', 'publish', 'closed', 'closed', '', 'community3', '', '', '2022-05-29 19:15:01', '2022-05-29 19:15:01', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/?post_type=community&#038;p=140', 0, 'community', '', 0),
(141, 1, '2022-05-29 19:10:50', '2022-05-29 19:10:50', '', 'Community2', '', 'inherit', 'closed', 'closed', '', '139-revision-v1', '', '', '2022-05-29 19:10:50', '2022-05-29 19:10:50', '', 139, 'http://pinkwebsolutionz.com/dev/iisre/139-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(142, 1, '2022-05-29 19:10:53', '2022-05-29 19:10:53', '', 'Community1', '', 'inherit', 'closed', 'closed', '', '138-revision-v1', '', '', '2022-05-29 19:10:53', '2022-05-29 19:10:53', '', 138, 'http://pinkwebsolutionz.com/dev/iisre/138-revision-v1/', 0, 'revision', '', 0),
(143, 1, '2022-05-29 19:10:55', '2022-05-29 19:10:55', '', 'Community3', '', 'inherit', 'closed', 'closed', '', '140-revision-v1', '', '', '2022-05-29 19:10:55', '2022-05-29 19:10:55', '', 140, 'http://pinkwebsolutionz.com/dev/iisre/140-revision-v1/', 0, 'revision', '', 0),
(144, 1, '2022-05-29 19:11:45', '2022-05-29 19:11:45', '', 'Community', '', 'inherit', 'closed', 'closed', '', '139-revision-v1', '', '', '2022-05-29 19:11:45', '2022-05-29 19:11:45', '', 139, 'http://pinkwebsolutionz.com/dev/iisre/139-revision-v1/', 0, 'revision', '', 0),
(145, 1, '2022-05-29 19:11:55', '2022-05-29 19:11:55', '', 'Community2', '', 'inherit', 'closed', 'closed', '', '140-revision-v1', '', '', '2022-05-29 19:11:55', '2022-05-29 19:11:55', '', 140, 'http://pinkwebsolutionz.com/dev/iisre/140-revision-v1/', 0, 'revision', '', 0),
(146, 1, '2022-05-29 19:12:10', '2022-05-29 19:12:10', 'Mukherjee, S., Sikdar, P.K., Pal, S. and Schütt, B. 2021. Assessment of Environmental Water Security of an Asian Deltaic Megacity and its Peri‐urban Wetland Areas. Sustainability 13, 2772. https://doi.org/10.3390/su13052772.', 'Community1', '', 'inherit', 'closed', 'closed', '', '138-revision-v1', '', '', '2022-05-29 19:12:10', '2022-05-29 19:12:10', '', 138, 'http://pinkwebsolutionz.com/dev/iisre/138-revision-v1/', 0, 'revision', '', 0),
(147, 1, '2022-05-29 19:12:13', '2022-05-29 19:12:13', 'Mukherjee, S., Sikdar, P.K., Pal, S. and Schütt, B. 2021. Assessment of Environmental Water Security of an Asian Deltaic Megacity and its Peri‐urban Wetland Areas. Sustainability 13, 2772. https://doi.org/10.3390/su13052772.', 'Community2', '', 'inherit', 'closed', 'closed', '', '139-revision-v1', '', '', '2022-05-29 19:12:13', '2022-05-29 19:12:13', '', 139, 'http://pinkwebsolutionz.com/dev/iisre/139-revision-v1/', 0, 'revision', '', 0),
(148, 1, '2022-05-29 19:12:16', '2022-05-29 19:12:16', 'Mukherjee, S., Sikdar, P.K., Pal, S. and Schütt, B. 2021. Assessment of Environmental Water Security of an Asian Deltaic Megacity and its Peri‐urban Wetland Areas. Sustainability 13, 2772. https://doi.org/10.3390/su13052772.', 'Community3', '', 'inherit', 'closed', 'closed', '', '140-revision-v1', '', '', '2022-05-29 19:12:16', '2022-05-29 19:12:16', '', 140, 'http://pinkwebsolutionz.com/dev/iisre/140-revision-v1/', 0, 'revision', '', 0),
(149, 1, '2022-05-29 19:15:01', '2022-05-29 19:15:01', 'Batteries are the most expensive part of a solar system. Between appropriately-size battery bank and a battery-based inverter like the Outback Radian.', 'Community3', '', 'inherit', 'closed', 'closed', '', '140-revision-v1', '', '', '2022-05-29 19:15:01', '2022-05-29 19:15:01', '', 140, 'http://pinkwebsolutionz.com/dev/iisre/140-revision-v1/', 0, 'revision', '', 0),
(150, 1, '2022-05-29 19:15:04', '2022-05-29 19:15:04', 'Batteries are the most expensive part of a solar system. Between appropriately-size battery bank and a battery-based inverter like the Outback Radian.', 'Community2', '', 'inherit', 'closed', 'closed', '', '139-revision-v1', '', '', '2022-05-29 19:15:04', '2022-05-29 19:15:04', '', 139, 'http://pinkwebsolutionz.com/dev/iisre/139-revision-v1/', 0, 'revision', '', 0),
(151, 1, '2022-05-29 19:15:18', '2022-05-29 19:15:18', 'Batteries are the most expensive part of a solar system. Between appropriately-size battery bank and a battery-based inverter like the Outback Radian.', 'Community1', '', 'inherit', 'closed', 'closed', '', '138-revision-v1', '', '', '2022-05-29 19:15:18', '2022-05-29 19:15:18', '', 138, 'http://pinkwebsolutionz.com/dev/iisre/138-revision-v1/', 0, 'revision', '', 0),
(152, 1, '2022-05-29 19:15:50', '2022-05-29 19:15:50', '', 'communities', '', 'inherit', 'closed', 'closed', '', '136-revision-v1', '', '', '2022-05-29 19:15:50', '2022-05-29 19:15:50', '', 136, 'http://pinkwebsolutionz.com/dev/iisre/136-revision-v1/', 0, 'revision', '', 0),
(153, 1, '2022-05-29 20:36:54', '2022-05-29 20:36:54', '', 'community', '', 'inherit', 'closed', 'closed', '', '136-revision-v1', '', '', '2022-05-29 20:36:54', '2022-05-29 20:36:54', '', 136, 'http://pinkwebsolutionz.com/dev/iisre/136-revision-v1/', 0, 'revision', '', 0),
(154, 1, '2022-05-29 20:42:16', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-05-29 20:42:16', '0000-00-00 00:00:00', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/?page_id=154', 0, 'page', '', 0),
(155, 1, '2022-05-29 20:42:42', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-05-29 20:42:42', '0000-00-00 00:00:00', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/?page_id=155', 0, 'page', '', 0),
(156, 1, '2022-05-29 20:45:45', '2022-05-29 20:45:45', '', 'communities', '', 'inherit', 'closed', 'closed', '', '136-revision-v1', '', '', '2022-05-29 20:45:45', '2022-05-29 20:45:45', '', 136, 'http://pinkwebsolutionz.com/dev/iisre/136-revision-v1/', 0, 'revision', '', 0),
(157, 1, '2022-05-29 20:46:27', '2022-05-29 20:46:27', '', 'Communities', '', 'inherit', 'closed', 'closed', '', '136-revision-v1', '', '', '2022-05-29 20:46:27', '2022-05-29 20:46:27', '', 136, 'http://pinkwebsolutionz.com/dev/iisre/136-revision-v1/', 0, 'revision', '', 0),
(158, 1, '2022-05-29 20:51:40', '2022-05-29 20:51:40', 'Batteries are the most expensive part of a solar system. Between appropriately-size battery bank and a battery-based inverter like the Outback Radian.', 'Community3', '', 'inherit', 'closed', 'closed', '', '140-autosave-v1', '', '', '2022-05-29 20:51:40', '2022-05-29 20:51:40', '', 140, 'http://pinkwebsolutionz.com/dev/iisre/140-autosave-v1/', 0, 'revision', '', 0),
(159, 1, '2022-05-29 20:58:18', '2022-05-29 20:58:18', '', 'Community', '', 'inherit', 'closed', 'closed', '', '136-revision-v1', '', '', '2022-05-29 20:58:18', '2022-05-29 20:58:18', '', 136, 'http://pinkwebsolutionz.com/dev/iisre/136-revision-v1/', 0, 'revision', '', 0),
(160, 1, '2022-05-29 21:00:02', '2022-05-29 21:00:02', 'Batteries are the most expensive part of a solar system. Between appropriately-size battery bank and a battery-based inverter like the Outback Radian.', 'Community1', '', 'publish', 'closed', 'closed', '', 'community1', '', '', '2022-05-29 21:00:59', '2022-05-29 21:00:59', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/?post_type=communities&#038;p=160', 0, 'communities', '', 0),
(161, 1, '2022-05-29 21:00:12', '2022-05-29 21:00:12', 'Batteries are the most expensive part of a solar system. Between appropriately-size battery bank and a battery-based inverter like the Outback Radian.', 'Community2', '', 'publish', 'closed', 'closed', '', 'community2', '', '', '2022-05-29 21:01:05', '2022-05-29 21:01:05', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/?post_type=communities&#038;p=161', 0, 'communities', '', 0),
(162, 1, '2022-05-29 21:00:23', '2022-05-29 21:00:23', 'Batteries are the most expensive part of a solar system. Between appropriately-size battery bank and a battery-based inverter like the Outback Radian.', 'Community3', '', 'publish', 'closed', 'closed', '', 'community3', '', '', '2022-05-29 21:01:14', '2022-05-29 21:01:14', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/?post_type=communities&#038;p=162', 0, 'communities', '', 0),
(163, 1, '2022-05-29 21:00:02', '2022-05-29 21:00:02', '', 'Community1', '', 'inherit', 'closed', 'closed', '', '160-revision-v1', '', '', '2022-05-29 21:00:02', '2022-05-29 21:00:02', '', 160, 'http://pinkwebsolutionz.com/dev/iisre/160-revision-v1/', 0, 'revision', '', 0),
(164, 1, '2022-05-29 21:00:12', '2022-05-29 21:00:12', '', 'Community2', '', 'inherit', 'closed', 'closed', '', '161-revision-v1', '', '', '2022-05-29 21:00:12', '2022-05-29 21:00:12', '', 161, 'http://pinkwebsolutionz.com/dev/iisre/161-revision-v1/', 0, 'revision', '', 0),
(165, 1, '2022-05-29 21:00:23', '2022-05-29 21:00:23', '', 'Community3', '', 'inherit', 'closed', 'closed', '', '162-revision-v1', '', '', '2022-05-29 21:00:23', '2022-05-29 21:00:23', '', 162, 'http://pinkwebsolutionz.com/dev/iisre/162-revision-v1/', 0, 'revision', '', 0),
(166, 1, '2022-05-29 21:00:35', '2022-05-29 21:00:35', 'Batteries are the most expensive part of a solar system. Between appropriately-size battery bank and a battery-based inverter like the Outback Radian.', 'Community1', '', 'inherit', 'closed', 'closed', '', '160-revision-v1', '', '', '2022-05-29 21:00:35', '2022-05-29 21:00:35', '', 160, 'http://pinkwebsolutionz.com/dev/iisre/160-revision-v1/', 0, 'revision', '', 0),
(167, 1, '2022-05-29 21:00:40', '2022-05-29 21:00:40', 'Batteries are the most expensive part of a solar system. Between appropriately-size battery bank and a battery-based inverter like the Outback Radian.', 'Community2', '', 'inherit', 'closed', 'closed', '', '161-revision-v1', '', '', '2022-05-29 21:00:40', '2022-05-29 21:00:40', '', 161, 'http://pinkwebsolutionz.com/dev/iisre/161-revision-v1/', 0, 'revision', '', 0),
(168, 1, '2022-05-29 21:00:45', '2022-05-29 21:00:45', 'Batteries are the most expensive part of a solar system. Between appropriately-size battery bank and a battery-based inverter like the Outback Radian.', 'Community3', '', 'inherit', 'closed', 'closed', '', '162-revision-v1', '', '', '2022-05-29 21:00:45', '2022-05-29 21:00:45', '', 162, 'http://pinkwebsolutionz.com/dev/iisre/162-revision-v1/', 0, 'revision', '', 0),
(169, 1, '2022-05-29 21:13:54', '2022-05-29 21:13:54', '', 'Title', '', 'publish', 'closed', 'closed', '', 'title', '', '', '2022-05-29 21:14:33', '2022-05-29 21:14:33', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/?post_type=com&#038;p=169', 0, 'com', '', 0),
(170, 1, '2022-05-29 21:13:54', '2022-05-29 21:13:54', '', 'Community1', '', 'inherit', 'closed', 'closed', '', '169-revision-v1', '', '', '2022-05-29 21:13:54', '2022-05-29 21:13:54', '', 169, 'http://pinkwebsolutionz.com/dev/iisre/169-revision-v1/', 0, 'revision', '', 0),
(171, 1, '2022-05-29 21:14:15', '2022-05-29 21:14:15', '', 'Com', '', 'inherit', 'closed', 'closed', '', '169-revision-v1', '', '', '2022-05-29 21:14:15', '2022-05-29 21:14:15', '', 169, 'http://pinkwebsolutionz.com/dev/iisre/169-revision-v1/', 0, 'revision', '', 0),
(172, 1, '2022-05-29 21:14:33', '2022-05-29 21:14:33', '', 'Title', '', 'inherit', 'closed', 'closed', '', '169-revision-v1', '', '', '2022-05-29 21:14:33', '2022-05-29 21:14:33', '', 169, 'http://pinkwebsolutionz.com/dev/iisre/169-revision-v1/', 0, 'revision', '', 0),
(173, 1, '2022-05-29 21:16:36', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-05-29 21:16:36', '0000-00-00 00:00:00', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/?p=173', 0, 'post', '', 0),
(174, 1, '2022-05-29 21:17:55', '2022-05-29 21:17:55', '<!-- wp:paragraph -->\n<p>Batteries are the most expensive part of a solar system. Between appropriately-size battery bank and a battery-based inverter like the Outback Radian.</p>\n<!-- /wp:paragraph -->', 'Community1', '', 'publish', 'open', 'open', '', 'community1', '', '', '2022-05-29 21:19:53', '2022-05-29 21:19:53', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/?p=174', 0, 'post', '', 0),
(175, 1, '2022-05-29 21:17:58', '2022-05-29 21:17:58', '<!-- wp:paragraph -->\n<p>Batteries are the most expensive part of a solar system. Between appropriately-size battery bank and a battery-based inverter like the Outback Radian.</p>\n<!-- /wp:paragraph -->', 'Community2', '', 'publish', 'open', 'open', '', 'community2', '', '', '2022-05-29 21:20:05', '2022-05-29 21:20:05', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/?p=175', 0, 'post', '', 0),
(176, 1, '2022-05-29 21:18:01', '2022-05-29 21:18:01', '<!-- wp:paragraph -->\n<p>Batteries are the most expensive part of a solar system. Between appropriately-size battery bank and a battery-based inverter like the Outback Radian.</p>\n<!-- /wp:paragraph -->', 'Community3', '', 'publish', 'open', 'open', '', 'community3', '', '', '2022-05-29 21:20:17', '2022-05-29 21:20:17', '', 0, 'http://pinkwebsolutionz.com/dev/iisre/?p=176', 0, 'post', '', 0),
(177, 1, '2022-05-29 21:17:55', '2022-05-29 21:17:55', '', 'Community1', '', 'inherit', 'closed', 'closed', '', '174-revision-v1', '', '', '2022-05-29 21:17:55', '2022-05-29 21:17:55', '', 174, 'http://pinkwebsolutionz.com/dev/iisre/174-revision-v1/', 0, 'revision', '', 0),
(178, 1, '2022-05-29 21:17:58', '2022-05-29 21:17:58', '', 'Community2', '', 'inherit', 'closed', 'closed', '', '175-revision-v1', '', '', '2022-05-29 21:17:58', '2022-05-29 21:17:58', '', 175, 'http://pinkwebsolutionz.com/dev/iisre/175-revision-v1/', 0, 'revision', '', 0),
(179, 1, '2022-05-29 21:18:01', '2022-05-29 21:18:01', '', 'Community3', '', 'inherit', 'closed', 'closed', '', '176-revision-v1', '', '', '2022-05-29 21:18:01', '2022-05-29 21:18:01', '', 176, 'http://pinkwebsolutionz.com/dev/iisre/176-revision-v1/', 0, 'revision', '', 0),
(180, 1, '2022-05-29 21:18:39', '2022-05-29 21:18:39', '<!-- wp:paragraph -->\n<p>Batteries are the most expensive part of a solar system. Between appropriately-size battery bank and a battery-based inverter like the Outback Radian.</p>\n<!-- /wp:paragraph -->', 'Community1', '', 'inherit', 'closed', 'closed', '', '174-revision-v1', '', '', '2022-05-29 21:18:39', '2022-05-29 21:18:39', '', 174, 'http://pinkwebsolutionz.com/dev/iisre/174-revision-v1/', 0, 'revision', '', 0),
(181, 1, '2022-05-29 21:18:55', '2022-05-29 21:18:55', '<!-- wp:paragraph -->\n<p>Batteries are the most expensive part of a solar system. Between appropriately-size battery bank and a battery-based inverter like the Outback Radian.</p>\n<!-- /wp:paragraph -->', 'Community2', '', 'inherit', 'closed', 'closed', '', '175-revision-v1', '', '', '2022-05-29 21:18:55', '2022-05-29 21:18:55', '', 175, 'http://pinkwebsolutionz.com/dev/iisre/175-revision-v1/', 0, 'revision', '', 0),
(182, 1, '2022-05-29 21:18:58', '2022-05-29 21:18:58', '<!-- wp:paragraph -->\n<p>Batteries are the most expensive part of a solar system. Between appropriately-size battery bank and a battery-based inverter like the Outback Radian.</p>\n<!-- /wp:paragraph -->', 'Community3', '', 'inherit', 'closed', 'closed', '', '176-revision-v1', '', '', '2022-05-29 21:18:58', '2022-05-29 21:18:58', '', 176, 'http://pinkwebsolutionz.com/dev/iisre/176-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'community', 'community', 0),
(3, 'blog', 'blog', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(76, 3, 0),
(77, 3, 0),
(78, 3, 0),
(174, 2, 0),
(175, 2, 0),
(176, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', '', 0, 3),
(3, 3, 'category', '', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"1fbacf7b507c8f32fe0aa4b94fe8e01ae3e9d440cb8fde90dd17b7172c7a6b44\";a:4:{s:10:\"expiration\";i:1654023670;s:2:\"ip\";s:14:\"103.75.161.220\";s:2:\"ua\";s:133:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36 OPR/86.0.4363.64\";s:5:\"login\";i:1653850870;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '173'),
(18, 1, 'wp_user-settings', 'editor=html&libraryContent=browse'),
(19, 1, 'wp_user-settings-time', '1652625087'),
(20, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:12:\"103.75.161.0\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B3I00Mj0hw9JsMvkSrSxKCLznPuJHQ/', 'admin', 'pinkwebsolutionz@gmail.com', '', '2022-05-14 15:39:45', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=373;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=236;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
